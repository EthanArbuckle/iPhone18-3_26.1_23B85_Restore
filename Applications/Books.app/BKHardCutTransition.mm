@interface BKHardCutTransition
+ (id)transition;
- (void)animateTransition:(id)transition;
@end

@implementation BKHardCutTransition

+ (id)transition
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v4 = [transitionCopy viewForKey:UITransitionContextFromViewKey];
  v5 = [transitionCopy viewForKey:UITransitionContextToViewKey];
  containerView = [transitionCopy containerView];
  [v5 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v4 frame];
  v27.origin.x = v15;
  v27.origin.y = v16;
  v27.size.width = v17;
  v27.size.height = v18;
  v26.origin.x = v8;
  v26.origin.y = v10;
  v26.size.width = v12;
  v26.size.height = v14;
  if (!CGRectEqualToRect(v26, v27))
  {
    v19 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
    v20 = objc_alloc_init(IMViewControllerNullAnimationTransitionCoordinator);
    [v20 setContainerView:containerView];
    [v4 frame];
    [v19 viewWillTransitionToSize:v20 withTransitionCoordinator:{v21, v22}];
    [v4 frame];
    [v5 setFrame:?];
    [v20 _runAlongsideAnimations];
    [v20 _runAlongsideCompletionsAfterCommit];
  }

  [containerView insertSubview:v5 belowSubview:v4];
  [v4 removeFromSuperview];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001168A0;
  block[3] = &unk_100A033C8;
  v25 = transitionCopy;
  v23 = transitionCopy;
  dispatch_async(&_dispatch_main_q, block);
}

@end