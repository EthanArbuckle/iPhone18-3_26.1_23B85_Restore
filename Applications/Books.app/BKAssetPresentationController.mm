@interface BKAssetPresentationController
- (BKAssetPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
@end

@implementation BKAssetPresentationController

- (BKAssetPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v6.receiver = self;
  v6.super_class = BKAssetPresentationController;
  v4 = [(BKAssetPresentationController *)&v6 initWithPresentedViewController:controller presentingViewController:viewController];
  if (v4)
  {
    v4->_useUIPFluidOpenTransition = +[BKUIPFeatures useUIPFluidBookOpenTransition];
  }

  return v4;
}

- (void)presentationTransitionWillBegin
{
  if ([(BKAssetPresentationController *)self useUIPFluidOpenTransition])
  {
    v3 = +[AETestDriver shared];
    [v3 postEvent:kBETestDriverOpenAnimationZoomStart sender:self];
  }

  v5.receiver = self;
  v5.super_class = BKAssetPresentationController;
  [(BKAssetPresentationController *)&v5 presentationTransitionWillBegin];
  assetPresenter = [(BKAssetPresentationController *)self assetPresenter];
  [assetPresenter setStateShouldOpen:1];
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  if ([(BKAssetPresentationController *)self useUIPFluidOpenTransition])
  {
    v5 = +[AETestDriver shared];
    [v5 postEvent:kBETestDriverOpenAnimationZoomEnd sender:self];

    v6 = +[AETestDriver shared];
    [v6 postEvent:kBETestDriverOpenAnimationRevealStart sender:self];
  }

  assetPresenter = [(BKAssetPresentationController *)self assetPresenter];
  [assetPresenter setStateShouldClose:endCopy ^ 1];

  v9.receiver = self;
  v9.super_class = BKAssetPresentationController;
  [(BKAssetPresentationController *)&v9 presentationTransitionDidEnd:endCopy];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100072764;
  v8[3] = &unk_100A033C8;
  v8[4] = self;
  [UIApp _performBlockAfterCATransactionCommits:v8];
}

- (void)dismissalTransitionWillBegin
{
  if ([(BKAssetPresentationController *)self useUIPFluidOpenTransition])
  {
    v3 = +[AETestDriver shared];
    [v3 postEvent:kBETestDriverOpenAnimationSetupEnd sender:self];

    v4 = +[AETestDriver shared];
    [v4 postEvent:kBETestDriverOpenAnimationRevealStart sender:self];

    v5 = +[AETestDriver shared];
    [v5 postEvent:kBETestDriverOpenAnimationRevealEnd sender:self];

    v6 = +[AETestDriver shared];
    [v6 postEvent:kBETestDriverOpenAnimationZoomStart sender:self];
  }

  v10.receiver = self;
  v10.super_class = BKAssetPresentationController;
  [(BKAssetPresentationController *)&v10 dismissalTransitionWillBegin];
  useUIPFluidOpenTransition = [(BKAssetPresentationController *)self useUIPFluidOpenTransition];
  assetPresenter = [(BKAssetPresentationController *)self assetPresenter];
  v9 = assetPresenter;
  if (useUIPFluidOpenTransition)
  {
    [assetPresenter assetPresenterDismissalTransitionWillBegin];
  }

  else
  {
    [assetPresenter assetPresenterPrepareForDismissal];
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  if ([(BKAssetPresentationController *)self useUIPFluidOpenTransition])
  {
    v5 = +[AETestDriver shared];
    [v5 postEvent:kBETestDriverOpenAnimationZoomEnd sender:self];

    if (endCopy)
    {
      assetPresenter = [(BKAssetPresentationController *)self assetPresenter];
      [assetPresenter assetPresenterPrepareForDismissal];
    }
  }

  v9.receiver = self;
  v9.super_class = BKAssetPresentationController;
  [(BKAssetPresentationController *)&v9 dismissalTransitionDidEnd:endCopy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100072A4C;
  v7[3] = &unk_100A044C8;
  v7[4] = self;
  v8 = endCopy;
  [UIApp _performBlockAfterCATransactionCommits:v7];
}

@end