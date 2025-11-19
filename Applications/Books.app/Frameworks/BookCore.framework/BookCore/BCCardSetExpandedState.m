@interface BCCardSetExpandedState
- (double)_extraGripperOffsetForViewController:(id)a3;
- (double)cardViewController:(id)a3 cardScrollViewOffsetForContentScrollView:(id)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 accessibilityWantsToScrollToOffset:(CGPoint)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewDidScroll:(id)a5 contentScrollView:(id)a6;
- (void)cardViewController:(id)a3 contentScrollViewDidChange:(id)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 scrollToTopAnimated:(BOOL)a4 cardData:(id)a5;
- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5;
@end

@implementation BCCardSetExpandedState

- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5
{
  v11.receiver = self;
  v11.super_class = BCCardSetExpandedState;
  v8 = a5;
  v9 = a3;
  [(BCCardSetState *)&v11 didBecomeCurrentStateCardViewController:v9 previousState:a4 cardData:v8];
  v10 = [v9 contentScrollView];
  [(BCCardSetExpandedState *)self cardViewController:v9 contentScrollViewDidChange:v10 cardData:v8];
}

- (void)cardViewController:(id)a3 contentScrollViewDidChange:(id)a4 cardData:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v8 contentScrollView];
  v10 = [v8 scrollView];
  [(BCCardSetState *)self updateCardViewController:v8 contentScrollView:v9 basedOnCardScrollView:v10 cardData:v7];

  v11 = [v8 scrollView];

  [v11 setShowsVerticalScrollIndicator:1];
}

- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewDidScroll:(id)a5 contentScrollView:(id)a6
{
  v22 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [(BCCardSetState *)self yInScrollView:v11 cardViewController:v22];
  [(BCCardSetState *)self yInScreenFromYInScrollView:v22 cardViewController:v10 cardData:?];
  v14 = v13;
  v15 = [v22 contentScrollView];
  [(BCCardSetState *)self updateCardViewController:v22 contentScrollView:v15 basedOnCardScrollView:v11 cardData:v10];

  v16 = [v10 configuration];
  [v16 cardExpandedTopOffset];
  if (v14 > v17)
  {
    v18 = [v22 cardNavigationController];
    v19 = [v18 viewControllers];
    v20 = [v19 count];

    if (v20 != &dword_0 + 1)
    {
      goto LABEL_5;
    }

    v21 = +[BCCardSetState contractingState];
    [v10 setCurrentState:v21];

    v16 = [v10 currentState];
    [v16 cardViewController:v22 cardData:v10 scrollViewDidScroll:v11 contentScrollView:v12];
  }

LABEL_5:
}

- (double)cardViewController:(id)a3 cardScrollViewOffsetForContentScrollView:(id)a4 cardData:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [a5 configuration];
  [v9 cardExpandedTopOffset];
  v11 = v10;

  [v7 contentOffset];
  v13 = v12;
  [v7 contentInset];
  v15 = v14;

  v16 = v13 + v15;
  if (v16 >= -v11)
  {
    v17 = [v8 cardSetViewController];

    [v17 scaledContractedOffset];
    v19 = v16 + v20;
  }

  else
  {
    v17 = [v8 scrollView];

    [v17 contentOffset];
    v19 = v18;
  }

  return v19;
}

- (void)cardViewController:(id)a3 scrollToTopAnimated:(BOOL)a4 cardData:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = +[BCCardSetState contractingState];
  [v7 setCurrentState:v9];

  objc_initWeak(&location, v7);
  v10 = [v7 scrollView];
  [v10 setScrollEnabled:0];

  v11 = [v7 animator];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_152004;
  v22[3] = &unk_2CE420;
  objc_copyWeak(&v23, &location);
  v24 = v6;
  [v11 addAnimations:v22];

  v12 = [v7 animator];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_152070;
  v20 = &unk_2CE448;
  objc_copyWeak(&v21, &location);
  [v12 addCompletion:&v17];

  [v7 animator];
  if (v6)
    v13 = {;
    [v13 startAnimation];
  }

  else
    v14 = {;
    [v14 pauseAnimation];

    v15 = [v7 animator];
    [v15 setFractionComplete:1.0];

    v16 = [v7 animator];
    [v16 stopAnimation:0];

    v13 = [v7 animator];
    [v13 finishAnimationAtPosition:0];
  }

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)cardViewController:(id)a3 accessibilityWantsToScrollToOffset:(CGPoint)a4 cardData:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  v11 = [v9 contentScrollView];
  [v11 adjustedContentInset];
  v13 = y + v12;

  v14 = [v9 cardSetViewController];
  [v14 scaledContractedOffset];
  v16 = v15 - v13;

  [(BCCardSetState *)self yInScreenFromYInScrollView:v9 cardViewController:v10 cardData:v16];
  v18 = v17;
  v19 = [v9 configuration];
  [v19 cardExpandedTopOffset];
  v21 = v20;

  if (v18 <= v21)
  {
    v24.receiver = self;
    v24.super_class = BCCardSetExpandedState;
    [(BCCardSetState *)&v24 cardViewController:v9 accessibilityWantsToScrollToOffset:v10 cardData:x, y];
  }

  else
  {
    v22 = CGPointZero.y;
    v23 = [v9 scrollView];
    [v23 setContentOffset:{CGPointZero.x, v22}];

    [(BCCardSetExpandedState *)self cardViewController:v9 scrollToTopAnimated:1 cardData:v9];
  }
}

- (double)_extraGripperOffsetForViewController:(id)a3
{
  v3 = [a3 view];
  v4 = [v3 window];
  v5 = [v4 windowScene];

  v6 = [v5 statusBarManager];
  [v6 statusBarHeight];
  v8 = v7;

  return v8;
}

@end