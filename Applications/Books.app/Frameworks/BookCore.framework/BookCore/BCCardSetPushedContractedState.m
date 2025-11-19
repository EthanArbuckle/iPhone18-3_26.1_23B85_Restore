@interface BCCardSetPushedContractedState
- (void)cardViewController:(id)a3 contentScrollViewDidChange:(id)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 scrollToTopAnimated:(BOOL)a4 cardData:(id)a5;
- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5;
- (void)willStopBeingCurrentStateCardViewController:(id)a3 newState:(id)a4 cardDate:(id)a5;
@end

@implementation BCCardSetPushedContractedState

- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 contentContainerView];
  [v11 setClipsToBounds:1];

  v12 = +[BCCardSetState contractedState];

  if (v12 == v9)
  {
    y = CGPointZero.y;
    v14 = [v8 scrollView];
    [v14 setContentOffset:{CGPointZero.x, y}];

    v15 = [v8 cardView];
    v23 = *&CGAffineTransformIdentity.c;
    v29 = *&CGAffineTransformIdentity.a;
    v24 = v29;
    v30 = v23;
    v31 = *&CGAffineTransformIdentity.tx;
    v22 = v31;
    [v15 setTransform:&v29];

    v16 = [v8 cardNavigationController];
    v17 = [v16 view];
    v29 = v24;
    v30 = v23;
    v31 = v22;
    [v17 setTransform:&v29];

    v18 = [v8 cardNavigationController];
    v19 = [v18 view];
    v20 = v19;
    if (v19)
    {
      [v19 transform];
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
    }

    v21 = [v8 auxiliaryNavigationBarView];
    v29 = v26;
    v30 = v27;
    v31 = v28;
    [v21 setTransform:&v29];
  }

  [v10 _updateScrollViewContentInset];
  v25.receiver = self;
  v25.super_class = BCCardSetPushedContractedState;
  [(BCCardSetContractedState *)&v25 didBecomeCurrentStateCardViewController:v8 previousState:v9 cardData:v10];
}

- (void)cardViewController:(id)a3 contentScrollViewDidChange:(id)a4 cardData:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(BCCardSetContractedState *)self cardViewController:v10 cardScrollViewOffsetForContentScrollView:v9 cardData:v8];
  v12 = v11;
  v13 = [v10 scrollView];
  [v13 contentOffset];
  v15 = v14;

  v16 = [v10 scrollView];
  [v16 setContentOffset:{v15, v12}];

  [(BCCardSetContractedState *)self cardViewController:v10 repositionOffsetsWithContentScrollView:v9 cardData:v8];
  v18 = [v8 configuration];

  LODWORD(v8) = [v18 cardsCanExpand];
  v17 = [v10 scrollView];

  [v17 setShowsVerticalScrollIndicator:v8 ^ 1];
}

- (void)willStopBeingCurrentStateCardViewController:(id)a3 newState:(id)a4 cardDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  if (([v10 transitioning] & 1) == 0)
  {
    v11 = [v8 contentScrollView];
    [(BCCardSetContractedState *)self cardViewController:v8 repositionOffsetsWithContentScrollView:v11 cardData:v9];
  }

  [(BCCardSetPushedContractedState *)self setPopping:1];
  [v9 _updateScrollViewContentInset];
  [(BCCardSetPushedContractedState *)self setPopping:0];
  v12.receiver = self;
  v12.super_class = BCCardSetPushedContractedState;
  [(BCCardSetState *)&v12 willStopBeingCurrentStateCardViewController:v8 newState:v10 cardDate:v9];
}

- (void)cardViewController:(id)a3 scrollToTopAnimated:(BOOL)a4 cardData:(id)a5
{
  v5 = a4;
  v7 = [a3 scrollView];
  [(BCCardSetState *)self _scrollScrollViewToTopForCardViewController:v7 animated:v5];
}

@end