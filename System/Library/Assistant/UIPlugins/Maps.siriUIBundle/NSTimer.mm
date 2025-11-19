@interface NSTimer
+ (id)_maps_scheduledTimerWithFireDate:(id)a3 block:(id)a4;
@end

@implementation NSTimer

+ (id)_maps_scheduledTimerWithFireDate:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = [a1 scheduledTimerWithTimeInterval:0 repeats:a4 block:1.79769313e308];
  [v7 setFireDate:v6];

  return v7;
}

@end