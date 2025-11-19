@interface BCCardSetTransitioningState
- (double)_extraGripperOffsetForViewController:(id)a3;
- (int64_t)contractedPosition;
- (int64_t)expandedPosition;
- (void)_resetInteractiveAnimationWithScrollView:(id)a3 cardData:(id)a4;
- (void)cardViewController:(id)a3 animationCompletedAtPosition:(int64_t)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewDidScroll:(id)a5 contentScrollView:(id)a6;
- (void)cardViewController:(id)a3 contentScrollViewDidChange:(id)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 willDismissWithCardData:(id)a4;
- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5;
- (void)setFractionComplete:(double)a3 cardData:(id)a4;
@end

@implementation BCCardSetTransitioningState

- (void)setFractionComplete:(double)a3 cardData:(id)a4
{
  v4 = a4;
  v5 = [NSString stringWithFormat:@"must override %s", "[BCCardSetTransitioningState setFractionComplete:cardData:]"];
  v6 = [NSException exceptionWithName:@"abstract base class" reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5
{
  v11.receiver = self;
  v11.super_class = BCCardSetTransitioningState;
  v8 = a5;
  v9 = a3;
  [(BCCardSetState *)&v11 didBecomeCurrentStateCardViewController:v9 previousState:a4 cardData:v8];
  v10 = [v9 contentScrollView];
  [(BCCardSetTransitioningState *)self cardViewController:v9 contentScrollViewDidChange:v10 cardData:v8];
}

- (void)cardViewController:(id)a3 contentScrollViewDidChange:(id)a4 cardData:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [v8 contentScrollView];
  v10 = [v8 scrollView];
  [(BCCardSetState *)self updateCardViewController:v8 contentScrollView:v9 basedOnCardScrollView:v10 cardData:v7];

  v11 = [v8 scrollView];

  [v11 setShowsVerticalScrollIndicator:0];
}

- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewDidScroll:(id)a5 contentScrollView:(id)a6
{
  v35 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 animator];

  if (v13)
  {
    [(BCCardSetState *)self yInScrollView:v11 cardViewController:v35];
    [(BCCardSetState *)self yInScreenFromYInScrollView:v35 cardViewController:v10 cardData:?];
    v15 = v14;
    [(BCCardSetState *)self updateCardViewController:v35 contentScrollView:v12 basedOnCardScrollView:v11 cardData:v10];
    [v10 distanceToExpand];
    v17 = v16;
    v18 = +[UIScreen mainScreen];
    [v18 scale];
    v20 = v19;

    v21 = [v10 configuration];
    [v21 cardExpandedTopOffset];
    if (v15 < v22)
    {

LABEL_5:
      [(BCCardSetTransitioningState *)self setFractionComplete:v10 cardData:1.0];
      v25 = [v10 animator];
      [v25 stopAnimation:0];

      v26 = [v10 animator];
      v27 = [(BCCardSetTransitioningState *)self expandedPosition];
LABEL_6:
      [v26 finishAnimationAtPosition:v27];

      goto LABEL_7;
    }

    v23 = vabdd_f64(v15, v22);
    v24 = 1.0 / v20;

    if (v23 < v24)
    {
      goto LABEL_5;
    }

    v28 = [v10 configuration];
    [v28 cardUnexpandedTopOffset];
    if (v15 > v29)
    {

LABEL_13:
      [(BCCardSetTransitioningState *)self setFractionComplete:v10 cardData:0.0];
      v31 = [v10 animator];
      [v31 stopAnimation:0];

      v26 = [v10 animator];
      v27 = [(BCCardSetTransitioningState *)self contractedPosition];
      goto LABEL_6;
    }

    v30 = vabdd_f64(v15, v29);

    if (v30 < v24)
    {
      goto LABEL_13;
    }

    v32 = [v10 configuration];
    [v32 cardUnexpandedTopOffset];
    v34 = v33 - v15;

    [(BCCardSetTransitioningState *)self setFractionComplete:v10 cardData:v34 / v17];
  }

LABEL_7:
}

- (void)cardViewController:(id)a3 animationCompletedAtPosition:(int64_t)a4 cardData:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(BCCardSetTransitioningState *)self expandedPosition];
  v11 = [v9 cardNavigationController];

  v12 = [v11 viewControllers];
  v13 = [v12 count];

  if (v10 == a4)
  {
    if (v13 > 1)
    {
      +[BCCardSetState pushedState];
    }

    else
    {
      +[BCCardSetState expandedState];
    }
  }

  else if (v13 > 1)
  {
    +[BCCardSetState pushedContractedState];
  }

  else
  {
    +[BCCardSetState contractedState];
  }
  v14 = ;
  v15 = v14;
  [v8 setCurrentState:v14];

  v16 = [v8 cardSetData];

  [v16 animationCompletedExpanded:v10 == a4];
}

- (int64_t)expandedPosition
{
  v2 = [NSString stringWithFormat:@"must override %s", "[BCCardSetTransitioningState expandedPosition]"];
  v3 = [NSException exceptionWithName:@"abstract base class" reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (int64_t)contractedPosition
{
  v2 = [NSString stringWithFormat:@"must override %s", "[BCCardSetTransitioningState contractedPosition]"];
  v3 = [NSException exceptionWithName:@"abstract base class" reason:v2 userInfo:0];
  v4 = v3;

  objc_exception_throw(v3);
}

- (void)_resetInteractiveAnimationWithScrollView:(id)a3 cardData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 animator];
  [v8 pauseAnimation];

  v16 = v6;
  [v16 contentOffset];
  v10 = v9;
  [v16 adjustedContentInset];
  v12 = v10 + v11;

  [v7 distanceToExpand];
  v14 = v12 / v13;
  [v7 setRawCurrentCardOffset:0.0];
  [(BCCardSetTransitioningState *)self setFractionComplete:v7 cardData:v14];
  v15 = [v7 animator];

  [v15 setReversed:0];
}

- (void)cardViewController:(id)a3 willDismissWithCardData:(id)a4
{
  v7.receiver = self;
  v7.super_class = BCCardSetTransitioningState;
  v5 = a4;
  [(BCCardSetState *)&v7 cardViewController:a3 willDismissWithCardData:v5];
  v6 = [v5 animator];

  [v6 stopAnimation:1];
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