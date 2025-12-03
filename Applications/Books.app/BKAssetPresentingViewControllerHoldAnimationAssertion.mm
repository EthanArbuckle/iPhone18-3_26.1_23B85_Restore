@interface BKAssetPresentingViewControllerHoldAnimationAssertion
- (BKAssetPresentingViewControllerHoldAnimationAssertion)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKAssetPresentingViewControllerHoldAnimationAssertion

- (BKAssetPresentingViewControllerHoldAnimationAssertion)init
{
  v5.receiver = self;
  v5.super_class = BKAssetPresentingViewControllerHoldAnimationAssertion;
  v2 = [(BKAssetPresentingViewControllerHoldAnimationAssertion *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(BKAssetPresentingViewControllerHoldAnimationAssertion *)v2 setFuture:v3];
  }

  return v2;
}

- (void)dealloc
{
  [(BKAssetPresentingViewControllerHoldAnimationAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = BKAssetPresentingViewControllerHoldAnimationAssertion;
  [(BKAssetPresentingViewControllerHoldAnimationAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  future = [(BKAssetPresentingViewControllerHoldAnimationAssertion *)self future];
  [future set:&__kCFBooleanTrue error:0];
}

@end