@interface AVKitGlassInteractionAnimating
- (AVKitGlassInteractionAnimating)initWithInteractionAnimation:(id)a3;
@end

@implementation AVKitGlassInteractionAnimating

- (AVKitGlassInteractionAnimating)initWithInteractionAnimation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVKitGlassInteractionAnimating;
  v6 = [(AVKitGlassInteractionAnimating *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedAnimator, a3);
  }

  return v7;
}

@end