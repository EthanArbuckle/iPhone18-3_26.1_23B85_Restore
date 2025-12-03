@interface CADisplayLink
+ (id)rc_displayLinkWithWeakTarget:(id)target selector:(SEL)selector;
+ (id)rc_displayWithFramesPerSecond:(int64_t)second handlerBlock:(id)block;
@end

@implementation CADisplayLink

+ (id)rc_displayLinkWithWeakTarget:(id)target selector:(SEL)selector
{
  v5 = [[RCWeakDisplayLinkTargetProxy alloc] initWithTarget:target selector:selector];

  return [self displayLinkWithTarget:v5 selector:"displayLinkFired:"];
}

+ (id)rc_displayWithFramesPerSecond:(int64_t)second handlerBlock:(id)block
{
  v5 = [CADisplayLink displayLinkWithTarget:[[RCDisplayLinkBlockTargetProxy alloc] initWithHandlerBlock:block] selector:"displayLinkFired:"];
  [(CADisplayLink *)v5 setPreferredFramesPerSecond:second];
  return v5;
}

@end