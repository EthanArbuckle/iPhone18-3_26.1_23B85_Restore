@interface BKCrossFadeTransition
+ (id)transition;
+ (id)transitionWithDuration:(double)duration;
- (BKCrossFadeTransition)init;
- (void)animateTransition:(id)transition;
@end

@implementation BKCrossFadeTransition

+ (id)transition
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)transitionWithDuration:(double)duration
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setDuration:duration];

  return v4;
}

- (BKCrossFadeTransition)init
{
  v3.receiver = self;
  v3.super_class = BKCrossFadeTransition;
  result = [(BKCrossFadeTransition *)&v3 init];
  if (result)
  {
    result->_duration = 0.25;
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  containerView = [transitionCopy containerView];
  v6 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  view = [v6 view];
  view2 = [v7 view];
  window = [containerView window];
  [window setUserInteractionEnabled:0];

  [containerView addSubview:view2];
  [view frame];
  [view2 setFrame:?];
  +[CATransaction begin];
  v11 = +[CATransition animation];
  [v11 setType:kCATransitionFade];
  [(BKCrossFadeTransition *)self transitionDuration:transitionCopy];
  [v11 setDuration:?];
  layer = [containerView layer];
  [layer addAnimation:v11 forKey:@"fade"];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [view setHidden:1];
  [view2 setHidden:0];
  [view2 setAlpha:1.0];
  +[CATransaction commit];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AF80C;
  v16[3] = &unk_100A03A30;
  v17 = containerView;
  v18 = view;
  v19 = transitionCopy;
  v13 = transitionCopy;
  v14 = view;
  v15 = containerView;
  [CATransaction setCompletionBlock:v16];
  +[CATransaction commit];
}

@end