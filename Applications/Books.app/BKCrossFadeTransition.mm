@interface BKCrossFadeTransition
+ (id)transition;
+ (id)transitionWithDuration:(double)a3;
- (BKCrossFadeTransition)init;
- (void)animateTransition:(id)a3;
@end

@implementation BKCrossFadeTransition

+ (id)transition
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)transitionWithDuration:(double)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setDuration:a3];

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

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v8 = [v6 view];
  v9 = [v7 view];
  v10 = [v5 window];
  [v10 setUserInteractionEnabled:0];

  [v5 addSubview:v9];
  [v8 frame];
  [v9 setFrame:?];
  +[CATransaction begin];
  v11 = +[CATransition animation];
  [v11 setType:kCATransitionFade];
  [(BKCrossFadeTransition *)self transitionDuration:v4];
  [v11 setDuration:?];
  v12 = [v5 layer];
  [v12 addAnimation:v11 forKey:@"fade"];

  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [v8 setHidden:1];
  [v9 setHidden:0];
  [v9 setAlpha:1.0];
  +[CATransaction commit];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000AF80C;
  v16[3] = &unk_100A03A30;
  v17 = v5;
  v18 = v8;
  v19 = v4;
  v13 = v4;
  v14 = v8;
  v15 = v5;
  [CATransaction setCompletionBlock:v16];
  +[CATransaction commit];
}

@end