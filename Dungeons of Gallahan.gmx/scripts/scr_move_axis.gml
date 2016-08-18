///scr_move_axis(xaxis,yaxis,threshold,magnitude,spd)

var xaxis = argument0;
var yaxis = argument1;
var threshold = argument2;
var magnitude = point_distance(0,0,xaxis,yaxis);
var spd = argument3;

if(magnitude >= threshold) {
    if(!place_meeting(x+xaxis*spd, y+yaxis*spd+2, obj_solid)) {
        x += xaxis*spd;
        y += yaxis*spd;
    } else if(!place_meeting(x+xaxis*spd+2, y, obj_solid)) {
        x += xaxis*spd;
    } else if(!place_meeting(x,y+yaxis*spd+2, obj_solid)) {
        y += yaxis*spd;
    }
}
