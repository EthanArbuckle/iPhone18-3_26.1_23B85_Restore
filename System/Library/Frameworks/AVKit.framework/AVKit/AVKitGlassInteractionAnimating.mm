@interface AVKitGlassInteractionAnimating
- (AVKitGlassInteractionAnimating)initWithInteractionAnimation:(id)animation;
@end

@implementation AVKitGlassInteractionAnimating

- (AVKitGlassInteractionAnimating)initWithInteractionAnimation:(id)animation
{
  animationCopy = animation;
  v9.receiver = self;
  v9.super_class = AVKitGlassInteractionAnimating;
  v6 = [(AVKitGlassInteractionAnimating *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedAnimator, animation);
  }

  return v7;
}

@end