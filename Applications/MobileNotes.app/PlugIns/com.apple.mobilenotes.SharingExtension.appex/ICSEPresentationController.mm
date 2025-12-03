@interface ICSEPresentationController
- (BOOL)isLandscape;
- (CGRect)adjustFrame:(CGRect)frame forKeyboardFrame:(CGRect)keyboardFrame topLayoutGuideHeight:(double)height;
- (CGRect)frameOfPresentedViewInContainerView;
- (CGRect)frameOfPresentedViewInContainerView:(id)view withKeyboardFrame:(CGRect)frame topLayoutGuideLength:(double)length;
- (CGRect)idealFrameForMainViewControllerWithoutKeyboardForContainerView:(id)view topLayoutGuideHeight:(double)height;
- (CGSize)maxSize;
- (ICSEPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (ICSERootViewController)rootViewController;
- (double)horizontalMargin;
- (double)keyboardMargin;
- (double)verticalMargin;
- (void)containerViewWillLayoutSubviews;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionWillBegin;
@end

@implementation ICSEPresentationController

- (CGRect)frameOfPresentedViewInContainerView:(id)view withKeyboardFrame:(CGRect)frame topLayoutGuideLength:(double)length
{
  [(ICSEPresentationController *)self idealFrameForMainViewControllerWithoutKeyboardForContainerView:view topLayoutGuideHeight:length];
  [ICSEPresentationController adjustFrame:"adjustFrame:forKeyboardFrame:topLayoutGuideHeight:" forKeyboardFrame:*&length topLayoutGuideHeight:?];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)adjustFrame:(CGRect)frame forKeyboardFrame:(CGRect)keyboardFrame topLayoutGuideHeight:(double)height
{
  height = keyboardFrame.size.height;
  width = keyboardFrame.size.width;
  y = keyboardFrame.origin.y;
  x = keyboardFrame.origin.x;
  v9 = frame.size.height;
  v10 = frame.size.width;
  v11 = frame.origin.y;
  v12 = frame.origin.x;
  if (![(ICSEPresentationController *)self isShowingSearchResults])
  {
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    if (!CGRectIsNull(v25))
    {
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      if (!CGRectIsEmpty(v26))
      {
        v27.origin.x = v12;
        v27.origin.y = v11;
        v27.size.width = v10;
        v27.size.height = v9;
        MaxY = CGRectGetMaxY(v27);
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        MinY = CGRectGetMinY(v28);
        [(ICSEPresentationController *)self keyboardMargin];
        if (MaxY > MinY - v15)
        {
          TSDClipRectToMinY();
          v12 = v16;
          v11 = v17;
          v10 = v18;
          v9 = v19;
        }
      }
    }
  }

  v20 = v12;
  v21 = v11;
  v22 = v10;
  v23 = v9;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)idealFrameForMainViewControllerWithoutKeyboardForContainerView:(id)view topLayoutGuideHeight:(double)height
{
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(ICSEPresentationController *)self horizontalMargin];
  v14 = v13;
  [(ICSEPresentationController *)self verticalMargin];
  v16 = v15;
  v17 = +[UIDevice ic_isiPad];
  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  v27 = CGRectInset(v26, v14, v16);
  [(ICSEPresentationController *)self maxSize:v27.origin.x];
  TSDSizeWithMaxSize();
  if (![(ICSEPresentationController *)self isShowingSearchResults]&& ICAccessibilityAccessibilityLargerTextSizesEnabled() && (([(ICSEPresentationController *)self isPortrait]| v17) & 1) != 0)
  {
    rootViewController = [(ICSEPresentationController *)self rootViewController];
    traitCollection = [rootViewController traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    ICAccessibilityLinearInterpolatedValueForAccessibilityContentSizeCategory();
  }

  [(ICSEPresentationController *)self isPortrait];
  [(ICSEPresentationController *)self isPortrait];
  TSDCenterOfRect();
  TSDRectWithCenterAndSize();

  TSDClipRectToMinY();
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (CGSize)maxSize
{
  v3 = +[UIDevice ic_isiPad];
  v4 = 10000.0;
  v5 = 10000.0;
  if (v3)
  {
    v6 = [(ICSEPresentationController *)self isShowingSearchResults:10000.0];
    v5 = 686.0;
    if (!v6)
    {
      v5 = 250.0;
    }

    v4 = 536.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (double)horizontalMargin
{
  isPortrait = [(ICSEPresentationController *)self isPortrait];
  v3 = +[UIDevice ic_isiPad];
  result = 65.0;
  if ((v3 | isPortrait))
  {
    return 8.0;
  }

  return result;
}

- (double)verticalMargin
{
  isPortrait = [(ICSEPresentationController *)self isPortrait];
  v3 = +[UIDevice ic_isiPad];
  result = 28.0;
  if ((v3 | isPortrait))
  {
    return 8.0;
  }

  return result;
}

- (double)keyboardMargin
{
  isPortrait = [(ICSEPresentationController *)self isPortrait];
  result = 8.0;
  if (isPortrait)
  {
    return 28.0;
  }

  return result;
}

- (BOOL)isLandscape
{
  containerView = [(ICSEPresentationController *)self containerView];
  [containerView bounds];
  v4 = v3;
  v6 = v5;

  return v6 < v4;
}

- (ICSEPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v10.receiver = self;
  v10.super_class = ICSEPresentationController;
  v4 = [(ICSEPresentationController *)&v10 initWithPresentedViewController:controller presentingViewController:viewController];
  if (v4)
  {
    v5 = objc_alloc_init(UIView);
    [(ICSEPresentationController *)v4 setDimmingView:v5];

    v6 = +[UIColor blackColor];
    v7 = [v6 colorWithAlphaComponent:0.4];
    dimmingView = [(ICSEPresentationController *)v4 dimmingView];
    [dimmingView setBackgroundColor:v7];
  }

  return v4;
}

- (CGRect)frameOfPresentedViewInContainerView
{
  rootViewController = [(ICSEPresentationController *)self rootViewController];
  ic_safeAreaLayoutGuide = [rootViewController ic_safeAreaLayoutGuide];
  [ic_safeAreaLayoutGuide layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  containerView = [(ICSEPresentationController *)self containerView];
  rootViewController2 = [(ICSEPresentationController *)self rootViewController];
  [rootViewController2 keyboardFrame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v35.origin.x = v6;
  v35.origin.y = v8;
  v35.size.width = v10;
  v35.size.height = v12;
  [(ICSEPresentationController *)self frameOfPresentedViewInContainerView:containerView withKeyboardFrame:v16 topLayoutGuideLength:v18, v20, v22, CGRectGetMinY(v35)];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (void)presentationTransitionWillBegin
{
  v9.receiver = self;
  v9.super_class = ICSEPresentationController;
  [(ICSEPresentationController *)&v9 presentationTransitionWillBegin];
  containerView = [(ICSEPresentationController *)self containerView];
  dimmingView = [(ICSEPresentationController *)self dimmingView];
  [containerView addSubview:dimmingView];

  dimmingView2 = [(ICSEPresentationController *)self dimmingView];
  [dimmingView2 setAlpha:0.0];

  presentedViewController = [(ICSEPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002E914;
  v8[3] = &unk_1000F3048;
  v8[4] = self;
  [transitionCoordinator animateAlongsideTransition:v8 completion:0];
}

- (void)containerViewWillLayoutSubviews
{
  containerView = [(ICSEPresentationController *)self containerView];
  [containerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  dimmingView = [(ICSEPresentationController *)self dimmingView];
  [dimmingView setFrame:{v5, v7, v9, v11}];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002EA44;
  v13[3] = &unk_1000F2390;
  v13[4] = self;
  [UIView animateWithDuration:v13 animations:0.0];
}

- (void)dismissalTransitionWillBegin
{
  v6.receiver = self;
  v6.super_class = ICSEPresentationController;
  [(ICSEPresentationController *)&v6 dismissalTransitionWillBegin];
  presentedViewController = [(ICSEPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002EB90;
  v5[3] = &unk_1000F3048;
  v5[4] = self;
  [transitionCoordinator animateAlongsideTransition:v5 completion:0];
}

- (ICSERootViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

@end