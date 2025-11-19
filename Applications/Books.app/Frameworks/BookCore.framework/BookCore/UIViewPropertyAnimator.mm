@interface UIViewPropertyAnimator
+ (id)bc_swiftUIDefault;
@end

@implementation UIViewPropertyAnimator

+ (id)bc_swiftUIDefault
{
  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 dampingRatio:0.5 animations:1.0];

  return v2;
}

@end