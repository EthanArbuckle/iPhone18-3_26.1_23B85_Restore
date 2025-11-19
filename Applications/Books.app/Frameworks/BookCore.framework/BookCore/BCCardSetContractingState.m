@interface BCCardSetContractingState
- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewWillBeginDragging:(id)a5 contentScrollView:(id)a6;
- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5;
- (void)setFractionComplete:(double)a3 cardData:(id)a4;
@end

@implementation BCCardSetContractingState

- (void)didBecomeCurrentStateCardViewController:(id)a3 previousState:(id)a4 cardData:(id)a5
{
  v9.receiver = self;
  v9.super_class = BCCardSetContractingState;
  v7 = a5;
  [(BCCardSetTransitioningState *)&v9 didBecomeCurrentStateCardViewController:a3 previousState:a4 cardData:v7];
  v8 = [v7 cardSetData];

  [v8 goContractedInteractive:1];
}

- (void)setFractionComplete:(double)a3 cardData:(id)a4
{
  v4 = fmax(1.0 - a3, 0.0);
  v5 = [a4 animator];
  [v5 setFractionComplete:v4];
}

- (void)cardViewController:(id)a3 cardData:(id)a4 scrollViewWillBeginDragging:(id)a5 contentScrollView:(id)a6
{
  v25 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [a3 cardNavigationController];
  v13 = [v12 viewControllers];
  v14 = [v13 count];

  if (v14 <= 1)
  {
    v15 = [v25 animator];

    if (v15)
    {
      [(BCCardSetTransitioningState *)self _resetInteractiveAnimationWithScrollView:v10 cardData:v25];
      v24 = [v11 delegate];
      [v24 scrollViewWillBeginDragging:v11];
    }

    else
    {
      sub_1EBBAC(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }
}

@end