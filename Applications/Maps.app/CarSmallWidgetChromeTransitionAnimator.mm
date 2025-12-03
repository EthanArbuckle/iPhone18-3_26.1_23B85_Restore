@interface CarSmallWidgetChromeTransitionAnimator
- (CarSmallWidgetChromeTransitionAnimator)initWithOperation:(int64_t)operation;
- (void)_animateOperation:(int64_t)operation withTransitionContext:(id)context;
- (void)animateTransition:(id)transition;
@end

@implementation CarSmallWidgetChromeTransitionAnimator

- (void)_animateOperation:(int64_t)operation withTransitionContext:(id)context
{
  contextCopy = context;
  v7 = [contextCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v8 = [contextCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  if (operation == 1)
  {
    containerView = [contextCopy containerView];
    view = [v8 view];
    [containerView addSubview:view];
  }

  else
  {
    containerView = [contextCopy containerView];
    view = [v8 view];
    if (v7)
    {
      view2 = [v7 view];
      [containerView insertSubview:view belowSubview:view2];
    }

    else
    {
      [containerView insertSubview:view atIndex:0];
    }
  }

  view3 = [v8 view];
  [view3 setAlpha:0.0];

  [(CarSmallWidgetChromeTransitionAnimator *)self transitionDuration:contextCopy];
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
  v19 = contextCopy;
  v20 = v22;
  v15 = v22;
  v16 = contextCopy;
  v17 = v8;
  [UIView animateWithDuration:0x20000 delay:v21 options:v18 animations:v14 completion:0.0];
}

- (void)animateTransition:(id)transition
{
  if ((self->_operation - 1) <= 1)
  {
    [CarSmallWidgetChromeTransitionAnimator _animateOperation:"_animateOperation:withTransitionContext:" withTransitionContext:?];
  }
}

- (CarSmallWidgetChromeTransitionAnimator)initWithOperation:(int64_t)operation
{
  v5.receiver = self;
  v5.super_class = CarSmallWidgetChromeTransitionAnimator;
  result = [(CarSmallWidgetChromeTransitionAnimator *)&v5 init];
  if (result)
  {
    result->_operation = operation;
  }

  return result;
}

@end