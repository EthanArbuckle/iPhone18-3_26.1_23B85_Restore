@interface BNDefaultBannerTransitioningDelegate
- (BNDefaultBannerTransitioningDelegate)init;
- (Class)_bannerTransitionAnimatorClassForAnimationStyle:(int64_t)a3;
- (id)_sizeTransitionAnimationSettingsForViewController:(id)a3;
- (id)animationControllerForDismissedController:(id)a3 userInfo:(id)a4;
- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5 userInfo:(id)a6;
- (id)animationControllerForResizingController:(id)a3 userInfo:(id)a4;
- (id)animationControllerMorphFromPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5 userInfo:(id)a6 stateChange:(BOOL)a7;
- (id)sizeTransitionAnimationSettingsForPresentable:(id)a3;
@end

@implementation BNDefaultBannerTransitioningDelegate

- (BNDefaultBannerTransitioningDelegate)init
{
  v3.receiver = self;
  v3.super_class = BNDefaultBannerTransitioningDelegate;
  result = [(BNDefaultBannerTransitioningDelegate *)&v3 init];
  if (result)
  {
    result->_resizeAnimationCustomizationPermitted = 1;
  }

  return result;
}

- (id)animationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5 userInfo:(id)a6
{
  v7 = a6;
  v8 = [v7 objectForKey:@"BNBannerTransitionAnimationStyle"];
  if (v8)
  {
    v9 = [v7 objectForKey:@"BNBannerTransitionAnimationStyle"];
    v10 = [v9 integerValue];
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_alloc(-[BNDefaultBannerTransitioningDelegate _bannerTransitionAnimatorClassForAnimationStyle:](self _bannerTransitionAnimatorClassForAnimationStyle:{v10)), "initForPresenting:", 1}];

  return v11;
}

- (id)animationControllerForDismissedController:(id)a3 userInfo:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKey:@"BNBannerTransitionAnimationStyle"];
  if (v6)
  {
    v7 = [v5 objectForKey:@"BNBannerTransitionAnimationStyle"];
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_alloc(-[BNDefaultBannerTransitioningDelegate _bannerTransitionAnimatorClassForAnimationStyle:](self _bannerTransitionAnimatorClassForAnimationStyle:{v8)), "initForPresenting:", 0}];

  return v9;
}

- (id)animationControllerForResizingController:(id)a3 userInfo:(id)a4
{
  v5 = a3;
  v6 = [BNBannerAnimator alloc];
  v7 = [(BNDefaultBannerTransitioningDelegate *)self _sizeTransitionAnimationSettingsForViewController:v5];

  v8 = [(BNBannerAnimator *)v6 initWithAnimationSettings:v7];

  return v8;
}

- (id)animationControllerMorphFromPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5 userInfo:(id)a6 stateChange:(BOOL)a7
{
  v7 = [[BNBannerMorphTransitionAnimator alloc] initForStateChange:a7];

  return v7;
}

- (id)sizeTransitionAnimationSettingsForPresentable:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 viewController];
    v6 = [(BNDefaultBannerTransitioningDelegate *)self _sizeTransitionAnimationSettingsForViewController:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_sizeTransitionAnimationSettingsForViewController:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_resizeAnimationCustomizationPermitted || ([v4 bannerSizeTransitionAnimationSettings], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v5 isHostedContent])
    {
      v6 = +[BNBannerAnimator defaultResizeAnimationSettings];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (Class)_bannerTransitionAnimatorClassForAnimationStyle:(int64_t)a3
{
  v3 = objc_opt_class();

  return v3;
}

@end