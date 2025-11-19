@interface CarSmallWidgetChromeTransitionAnimator
- (CarSmallWidgetChromeTransitionAnimator)initWithOperation:(int64_t)a3;
- (void)_animateOperation:(int64_t)a3 withTransitionContext:(id)a4;
- (void)animateTransition:(id)a3;
@end

@implementation CarSmallWidgetChromeTransitionAnimator

- (void)_animateOperation:(int64_t)a3 withTransitionContext:(id)a4
{
  v6 = a4;
  v7 = [v6 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v8 = [v6 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (a3 == 1)
  {
    v9 = [v6 containerView];
    v10 = [v8 view];
    [v9 addSubview:v10];
  }

  else
  {
    v9 = [v6 containerView];
    v10 = [v8 view];
    if (v7)
    {
      v11 = [v7 view];
      [v9 insertSubview:v10 belowSubview:v11];
    }

    else
    {
      [v9 insertSubview:v10 atIndex:0];
    }
  }

  v12 = [v8 view];
  [v12 setAlpha:0.0];

  [(CarSmallWidgetChromeTransitionAnimator *)self transitionDuration:v6];
  v14 = v13;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1008EC528;
  v21[3] = &unk_101661A90;
  v22 = v7;
  v23 = v8;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1008EC598;
  v18[3] = &unk_101661570;
  v19 = v6;
  v20 = v22;
  v15 = v22;
  v16 = v6;
  v17 = v8;
  [UIView animateWithDuration:0x20000 delay:v21 options:v18 animations:v14 completion:0.0];
}

- (void)animateTransition:(id)a3
{
  if ((self->_operation - 1) <= 1)
  {
    [CarSmallWidgetChromeTransitionAnimator _animateOperation:"_animateOperation:withTransitionContext:" withTransitionContext:?];
  }
}

- (CarSmallWidgetChromeTransitionAnimator)initWithOperation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CarSmallWidgetChromeTransitionAnimator;
  result = [(CarSmallWidgetChromeTransitionAnimator *)&v5 init];
  if (result)
  {
    result->_operation = a3;
  }

  return result;
}

@end