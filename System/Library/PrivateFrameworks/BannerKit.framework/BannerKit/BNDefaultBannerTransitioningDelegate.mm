@interface BNDefaultBannerTransitioningDelegate
- (BNDefaultBannerTransitioningDelegate)init;
- (Class)_bannerTransitionAnimatorClassForAnimationStyle:(int64_t)style;
- (id)_sizeTransitionAnimationSettingsForViewController:(id)controller;
- (id)animationControllerForDismissedController:(id)controller userInfo:(id)info;
- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController userInfo:(id)info;
- (id)animationControllerForResizingController:(id)controller userInfo:(id)info;
- (id)animationControllerMorphFromPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController userInfo:(id)info stateChange:(BOOL)change;
- (id)sizeTransitionAnimationSettingsForPresentable:(id)presentable;
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

- (id)animationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController userInfo:(id)info
{
  infoCopy = info;
  v8 = [infoCopy objectForKey:@"BNBannerTransitionAnimationStyle"];
  if (v8)
  {
    v9 = [infoCopy objectForKey:@"BNBannerTransitionAnimationStyle"];
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v11 = [objc_alloc(-[BNDefaultBannerTransitioningDelegate _bannerTransitionAnimatorClassForAnimationStyle:](self _bannerTransitionAnimatorClassForAnimationStyle:{integerValue)), "initForPresenting:", 1}];

  return v11;
}

- (id)animationControllerForDismissedController:(id)controller userInfo:(id)info
{
  infoCopy = info;
  v6 = [infoCopy objectForKey:@"BNBannerTransitionAnimationStyle"];
  if (v6)
  {
    v7 = [infoCopy objectForKey:@"BNBannerTransitionAnimationStyle"];
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v9 = [objc_alloc(-[BNDefaultBannerTransitioningDelegate _bannerTransitionAnimatorClassForAnimationStyle:](self _bannerTransitionAnimatorClassForAnimationStyle:{integerValue)), "initForPresenting:", 0}];

  return v9;
}

- (id)animationControllerForResizingController:(id)controller userInfo:(id)info
{
  controllerCopy = controller;
  v6 = [BNBannerAnimator alloc];
  v7 = [(BNDefaultBannerTransitioningDelegate *)self _sizeTransitionAnimationSettingsForViewController:controllerCopy];

  v8 = [(BNBannerAnimator *)v6 initWithAnimationSettings:v7];

  return v8;
}

- (id)animationControllerMorphFromPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController userInfo:(id)info stateChange:(BOOL)change
{
  v7 = [[BNBannerMorphTransitionAnimator alloc] initForStateChange:change];

  return v7;
}

- (id)sizeTransitionAnimationSettingsForPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (objc_opt_respondsToSelector())
  {
    viewController = [presentableCopy viewController];
    v6 = [(BNDefaultBannerTransitioningDelegate *)self _sizeTransitionAnimationSettingsForViewController:viewController];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_sizeTransitionAnimationSettingsForViewController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (!self->_resizeAnimationCustomizationPermitted || ([controllerCopy bannerSizeTransitionAnimationSettings], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
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

- (Class)_bannerTransitionAnimatorClassForAnimationStyle:(int64_t)style
{
  v3 = objc_opt_class();

  return v3;
}

@end