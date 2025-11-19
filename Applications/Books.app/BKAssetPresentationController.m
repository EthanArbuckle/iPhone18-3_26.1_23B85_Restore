@interface BKAssetPresentationController
- (BKAssetPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation BKAssetPresentationController

- (BKAssetPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v6.receiver = self;
  v6.super_class = BKAssetPresentationController;
  v4 = [(BKAssetPresentationController *)&v6 initWithPresentedViewController:a3 presentingViewController:a4];
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
  v4 = [(BKAssetPresentationController *)self assetPresenter];
  [v4 setStateShouldOpen:1];
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  if ([(BKAssetPresentationController *)self useUIPFluidOpenTransition])
  {
    v5 = +[AETestDriver shared];
    [v5 postEvent:kBETestDriverOpenAnimationZoomEnd sender:self];

    v6 = +[AETestDriver shared];
    [v6 postEvent:kBETestDriverOpenAnimationRevealStart sender:self];
  }

  v7 = [(BKAssetPresentationController *)self assetPresenter];
  [v7 setStateShouldClose:v3 ^ 1];

  v9.receiver = self;
  v9.super_class = BKAssetPresentationController;
  [(BKAssetPresentationController *)&v9 presentationTransitionDidEnd:v3];
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
  v7 = [(BKAssetPresentationController *)self useUIPFluidOpenTransition];
  v8 = [(BKAssetPresentationController *)self assetPresenter];
  v9 = v8;
  if (v7)
  {
    [v8 assetPresenterDismissalTransitionWillBegin];
  }

  else
  {
    [v8 assetPresenterPrepareForDismissal];
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  if ([(BKAssetPresentationController *)self useUIPFluidOpenTransition])
  {
    v5 = +[AETestDriver shared];
    [v5 postEvent:kBETestDriverOpenAnimationZoomEnd sender:self];

    if (v3)
    {
      v6 = [(BKAssetPresentationController *)self assetPresenter];
      [v6 assetPresenterPrepareForDismissal];
    }
  }

  v9.receiver = self;
  v9.super_class = BKAssetPresentationController;
  [(BKAssetPresentationController *)&v9 dismissalTransitionDidEnd:v3];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100072A4C;
  v7[3] = &unk_100A044C8;
  v7[4] = self;
  v8 = v3;
  [UIApp _performBlockAfterCATransactionCommits:v7];
}

@end