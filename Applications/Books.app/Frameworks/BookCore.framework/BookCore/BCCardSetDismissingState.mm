@interface BCCardSetDismissingState
- (void)_finishAnimationWithScrollView:(id)a3 cardViewController:(id)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewDidEndDecelerating:(id)a5 contentScrollView:(id)a6;
- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewDidEndDragging:(id)a5 willDecelerate:(BOOL)a6 contentScrollView:(id)a7;
- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewDidScroll:(id)a5 contentScrollView:(id)a6;
- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewWillBeginDragging:(id)a5 contentScrollView:(id)a6;
- (void)cardViewController:(id)a3 contentScrollViewDidChange:(id)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 dismissPan:(id)a4 cardData:(id)a5;
- (void)cardViewController:(id)a3 willDismissWithCardData:(id)a4;
- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5;
@end

@implementation BCCardSetDismissingState

- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5
{
  v11.receiver = self;
  v11.super_class = BCCardSetDismissingState;
  v8 = a5;
  v9 = a3;
  [(BCCardSetState *)&v11 didBecomeCurrentStateCardViewController:v9 previousState:a4 cardData:v8];
  v10 = [v9 contentScrollView];
  [(BCCardSetDismissingState *)self cardViewController:v9 contentScrollViewDidChange:v10 cardData:v8];
}

- (void)cardViewController:(id)a3 contentScrollViewDidChange:(id)a4 cardData:(id)a5
{
  v5 = [a3 scrollView];
  [v5 setShowsVerticalScrollIndicator:0];
}

- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewWillBeginDragging:(id)a5 contentScrollView:(id)a6
{
  v7 = a6;
  v8 = a4;
  objc_opt_class();
  v9 = [v8 animator];
  v10 = BUDynamicCast();
  [v10 pauseDismissCancellationAndReset];
  [v8 setRawCurrentCardOffset:?];

  v11 = [v7 delegate];
  [v11 scrollViewWillBeginDragging:v7];
}

- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewDidScroll:(id)a5 contentScrollView:(id)a6
{
  v28 = a3;
  v9 = a4;
  v10 = a5;
  [v10 contentOffset];
  v12 = v11;
  [v10 adjustedContentInset];
  v14 = v12 + v13;
  [v9 rawCurrentCardOffset];
  [v9 setRawCurrentCardOffset:v15 - v14];
  [v9 rawCurrentCardOffset];
  if (v16 <= 0.0)
  {
    [v9 setRawCurrentCardOffset:0.0];
    [v9 rawCurrentCardOffset];
    v22 = v23;
    v24 = [v9 animator];
    [v24 setFractionComplete:0.0];

    v25 = [v9 animator];
    [v25 stopAnimation:0];

    v26 = [v9 animator];
    [v26 finishAnimationAtPosition:1];

    [v9 setAnimator:0];
    if ([v28 itemPushedOnCard])
    {
      +[BCCardSetState pushedContractedState];
    }

    else
    {
      +[BCCardSetState contractedState];
    }
    v20 = ;
    [v9 setCurrentState:v20];
  }

  else
  {
    v17 = [v9 animator];

    if (!v17)
    {
      v18 = [v9 cardSetData];
      v19 = [v18 animatorForInteractiveDismiss];
      [v9 setAnimator:v19];
    }

    objc_opt_class();
    v20 = [v9 animator];
    v21 = BUDynamicCast();
    [v9 rawCurrentCardOffset];
    [v21 updateDismissFractionCompleteWithCardOffset:?];

    v22 = 0.0;
  }

  [v10 adjustedContentInset];
  [(BCCardSetState *)self adjustScrollView:v10 newContentOffset:v9 cardData:-v22 - v27];
}

- (void)_finishAnimationWithScrollView:(id)a3 cardViewController:(id)a4 cardData:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v9 scrollViewVerticalVelocityWhenDraggingEnded];
  v11 = v10 * -1000.0;
  objc_opt_class();
  v12 = [v9 animator];
  v13 = BUDynamicCast();

  v14 = 0.0;
  [v9 setScrollViewVerticalVelocityWhenDraggingEnded:0.0];
  if (v11 < 0.0 || v11 < 3000.0 && ([v9 rawCurrentCardOffset], v17 = v16, objc_msgSend(v9, "cardSetData"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "cutoffToDismissScrollView:", v7), v20 = v19, v18, v17 <= v20))
  {
    [v9 rawCurrentCardOffset];
    if (fabs(v15) >= 2.22044605e-16)
    {
      v14 = -v11 / v15;
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1534A0;
    v22[3] = &unk_2C8200;
    v23 = v9;
    v24 = v8;
    [v13 animateDismissCancellationWithVelocity:v22 completion:v14];
  }

  else
  {
    [v13 stopAnimation:1];
    [v9 setAnimator:0];
    [v9 setRawCurrentCardOffset:0.0];
    v21 = [v9 cardSetData];
    [v21 _didCommitDismissWithVelocity:v13 interactiveAnimator:v11];
  }
}

- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewDidEndDragging:(id)a5 willDecelerate:(BOOL)a6 contentScrollView:(id)a7
{
  v14 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 animator];

  if (v13 && !a6)
  {
    [(BCCardSetDismissingState *)self _finishAnimationWithScrollView:v12 cardViewController:v14 cardData:v11];
  }
}

- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewDidEndDecelerating:(id)a5 contentScrollView:(id)a6
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 animator];

  if (v11)
  {
    [(BCCardSetDismissingState *)self _finishAnimationWithScrollView:v10 cardViewController:v12 cardData:v9];
  }
}

- (void)cardViewController:(id)a3 willDismissWithCardData:(id)a4
{
  v8.receiver = self;
  v8.super_class = BCCardSetDismissingState;
  v5 = a4;
  [(BCCardSetState *)&v8 cardViewController:a3 willDismissWithCardData:v5];
  objc_opt_class();
  v6 = [v5 animator];

  v7 = BUDynamicCast();

  [v7 stopAnimation:1];
}

- (void)cardViewController:(id)a3 dismissPan:(id)a4 cardData:(id)a5
{
  v21 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 state];
  if ((v10 - 3) >= 3)
  {
    if (v10 != &dword_0 + 2)
    {
      goto LABEL_8;
    }

    v15 = [v21 cardView];
    [v8 translationInView:v15];
    [v9 setRawCurrentCardOffset:v16];

    v17 = [v9 animator];

    if (!v17)
    {
      v18 = [v9 cardSetData];
      v19 = [v18 animatorForInteractiveDismiss];
      [v9 setAnimator:v19];
    }

    objc_opt_class();
    v14 = [v9 animator];
    v20 = BUDynamicCast();
    [v9 rawCurrentCardOffset];
    [v20 updateDismissFractionCompleteWithCardOffset:?];
  }

  else
  {
    v11 = [v21 scrollView];
    [v11 setScrollEnabled:1];

    v12 = [v21 cardView];
    [v8 velocityInView:v12];
    [v9 setScrollViewVerticalVelocityWhenDraggingEnded:v13 / -1000.0];

    v14 = [v21 scrollView];
    [(BCCardSetDismissingState *)self _finishAnimationWithScrollView:v14 cardViewController:v21 cardData:v9];
  }

LABEL_8:
}

@end