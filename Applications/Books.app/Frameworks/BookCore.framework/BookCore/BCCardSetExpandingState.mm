@interface BCCardSetExpandingState
- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewWillBeginDragging:(id)a5 contentScrollView:(id)a6;
- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5;
- (void)setFractionComplete:(double)a3 cardData:(id)a4;
@end

@implementation BCCardSetExpandingState

- (void)setFractionComplete:(double)a3 cardData:(id)a4
{
  v5 = [a4 animator];
  [v5 setFractionComplete:a3];
}

- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5
{
  v9.receiver = self;
  v9.super_class = BCCardSetExpandingState;
  v7 = a5;
  [(BCCardSetTransitioningState *)&v9 didBecomeCurrentStateCardViewController:a3 previousState:a4 cardData:v7];
  v8 = [v7 cardSetData];

  [v8 goExpandedInteractive:1];
}

- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewWillBeginDragging:(id)a5 contentScrollView:(id)a6
{
  v21 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [v21 animator];

  if (v11)
  {
    [(BCCardSetTransitioningState *)self _resetInteractiveAnimationWithScrollView:v9 cardData:v21];
    v20 = [v10 delegate];
    [v20 scrollViewWillBeginDragging:v10];
  }

  else
  {
    sub_1EBB70(v12, v13, v14, v15, v16, v17, v18, v19);
  }
}

@end