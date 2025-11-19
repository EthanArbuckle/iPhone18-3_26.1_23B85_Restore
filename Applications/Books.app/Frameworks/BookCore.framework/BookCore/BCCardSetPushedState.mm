@interface BCCardSetPushedState
- (void)cardViewController:(id)a3 contentScrollViewDidChange:(id)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 scrollToTopAnimated:(BOOL)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 updateContentSize:(CGSize)a4;
- (void)cardViewControllerUpdateCardSize:(id)a3;
- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5;
- (void)willStopBeingCurrentStateCardViewController:(id)a3 newState:(id)a4 cardDate:(id)a5;
@end

@implementation BCCardSetPushedState

- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5
{
  v8 = a3;
  v41.receiver = self;
  v41.super_class = BCCardSetPushedState;
  v9 = a5;
  [(BCCardSetState *)&v41 didBecomeCurrentStateCardViewController:v8 previousState:a4 cardData:v9];
  v10 = [v8 cardNavigationController];
  v11 = [v10 view];
  v33 = *&CGAffineTransformIdentity.c;
  v34 = *&CGAffineTransformIdentity.a;
  v38 = *&CGAffineTransformIdentity.a;
  v39 = v33;
  v32 = *&CGAffineTransformIdentity.tx;
  v40 = v32;
  [v11 setTransform:&v38];

  v12 = [v8 cardNavigationController];
  v13 = [v12 view];
  v14 = v13;
  if (v13)
  {
    [v13 transform];
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
  }

  v15 = [v8 auxiliaryNavigationBarView];
  v38 = v35;
  v39 = v36;
  v40 = v37;
  [v15 setTransform:&v38];

  v16 = [v8 cardView];
  v38 = v34;
  v39 = v33;
  v40 = v32;
  [v16 setTransform:&v38];

  v17 = [v8 contentScrollView];
  [(BCCardSetPushedState *)self cardViewController:v8 contentScrollViewDidChange:v17 cardData:v9];

  y = CGPointZero.y;
  v19 = [v8 scrollView];
  [v19 setContentOffset:{CGPointZero.x, y}];

  v20 = [v8 scrollView];
  [v20 setShowsVerticalScrollIndicator:0];

  v21 = [v8 scrollView];
  [v21 setScrollEnabled:0];

  v22 = [v8 view];
  [v22 bounds];
  CGRectMakeWithSize();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = [v8 cardView];
  [v31 setFrame:{v24, v26, v28, v30}];
}

- (void)willStopBeingCurrentStateCardViewController:(id)a3 newState:(id)a4 cardDate:(id)a5
{
  v13 = a3;
  v8 = a5;
  v9 = a4;
  [(BCCardSetPushedState *)self setPopping:1];
  [v8 _updateCardFrames];
  [v8 _updateScrollViewContentInset];

  v10 = [v13 scrollView];
  [v10 setScrollEnabled:1];

  LODWORD(v10) = [v9 transitioning];
  if (v10)
  {
    v11 = [v13 contentScrollView];
    [v11 setScrollEnabled:0];

    v12 = [v13 contentScrollView];
    [v12 setShowsVerticalScrollIndicator:0];
  }

  [(BCCardSetPushedState *)self setPopping:0];
}

- (void)cardViewController:(id)a3 contentScrollViewDidChange:(id)a4 cardData:(id)a5
{
  v5 = a4;
  [v5 setShowsVerticalScrollIndicator:1];
  [v5 setScrollEnabled:1];
}

- (void)cardViewController:(id)a3 updateContentSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  [(BCCardSetState *)self _adjustedContentSizeForCardViewController:v7 contentSize:0 includeDistanceToExpand:width, height];
  v9 = v8;
  v11 = v10;
  v12 = [v7 scrollView];

  [v12 setContentSize:{v9, v11}];
}

- (void)cardViewControllerUpdateCardSize:(id)a3
{
  v5 = a3;
  if ([(BCCardSetPushedState *)self popping])
  {
    [(BCCardSetState *)self updateCardSize:v5 addExtra:1];
  }

  else
  {
    v4 = [v5 configuration];
    -[BCCardSetState updateCardSize:addExtra:](self, "updateCardSize:addExtra:", v5, [v4 cardsCanExpand] ^ 1);
  }
}

- (void)cardViewController:(id)a3 scrollToTopAnimated:(BOOL)a4 cardData:(id)a5
{
  v5 = a4;
  v7 = [a3 contentScrollView];
  [(BCCardSetState *)self _scrollScrollViewToTopForCardViewController:v7 animated:v5];
}

@end