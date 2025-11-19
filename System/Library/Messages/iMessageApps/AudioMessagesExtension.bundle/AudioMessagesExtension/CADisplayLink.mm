@interface CADisplayLink
+ (id)rc_displayLinkWithWeakTarget:(id)a3 selector:(SEL)a4;
+ (id)rc_displayWithFramesPerSecond:(int64_t)a3 handlerBlock:(id)a4;
@end

@implementation CADisplayLink

+ (id)rc_displayLinkWithWeakTarget:(id)a3 selector:(SEL)a4
{
  v5 = [[RCWeakDisplayLinkTargetProxy alloc] initWithTarget:a3 selector:a4];

  return [a1 displayLinkWithTarget:v5 selector:"displayLinkFired:"];
}

+ (id)rc_displayWithFramesPerSecond:(int64_t)a3 handlerBlock:(id)a4
{
  v5 = [CADisplayLink displayLinkWithTarget:[[RCDisplayLinkBlockTargetProxy alloc] initWithHandlerBlock:a4] selector:"displayLinkFired:"];
  [(CADisplayLink *)v5 setPreferredFramesPerSecond:a3];
  return v5;
}

@end