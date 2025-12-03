@interface CarSlideUpTransition
- (double)transitionDuration:(id)duration;
- (void)_animateTransitionForPop:(id)pop;
- (void)_animateTransitionForPush:(id)push;
- (void)_bringNavigationBarToFront:(id)front;
- (void)_sendNavigationBarToBack:(id)back;
- (void)animateTransition:(id)transition;
@end

@implementation CarSlideUpTransition

- (void)_animateTransitionForPop:(id)pop
{
  popCopy = pop;
  containerView = [popCopy containerView];
  v6 = [popCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  view = [v6 view];
  [containerView addSubview:view];
  v8 = [popCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  view2 = [v8 view];
  [containerView addSubview:view2];
  [popCopy finalFrameForViewController:v6];
  [view setFrame:?];
  [view setAlpha:0.0];
  [view2 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [containerView bounds];
  Height = CGRectGetHeight(v31);
  [(CarSlideUpTransition *)self transitionDuration:popCopy];
  v18 = v17;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100E22014;
  v24[3] = &unk_101655C38;
  v25 = view;
  v26 = view2;
  v27 = v11;
  v28 = Height;
  v29 = v13;
  v30 = v15;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100E2205C;
  v22[3] = &unk_101661570;
  v22[4] = self;
  v23 = popCopy;
  v19 = popCopy;
  v20 = view2;
  v21 = view;
  [UIView animateWithDuration:0x20000 delay:v24 options:v22 animations:v18 completion:0.0];
}

- (void)_animateTransitionForPush:(id)push
{
  pushCopy = push;
  containerView = [pushCopy containerView];
  v6 = [pushCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  view = [v6 view];
  [containerView addSubview:view];
  v8 = [pushCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  view2 = [v8 view];
  [containerView addSubview:view2];
  [pushCopy finalFrameForViewController:v8];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [containerView bounds];
  [view2 setFrame:{v11, CGRectGetHeight(v34), v15, v17}];
  [(CarSlideUpTransition *)self transitionDuration:pushCopy];
  v19 = v18;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100E222DC;
  v27[3] = &unk_101655C38;
  v28 = view;
  v29 = view2;
  v30 = v11;
  v31 = v13;
  v32 = v15;
  v33 = v17;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100E22324;
  v23[3] = &unk_10165EB30;
  v24 = v28;
  selfCopy = self;
  v26 = pushCopy;
  v20 = pushCopy;
  v21 = v28;
  v22 = view2;
  [UIView animateWithDuration:0x20000 delay:v27 options:v23 animations:v19 completion:0.0];
}

- (void)_bringNavigationBarToFront:(id)front
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_navigationBar);
    superview = [v7 superview];
    v6 = objc_loadWeakRetained(&self->_navigationBar);
    [superview bringSubviewToFront:v6];
  }
}

- (void)_sendNavigationBarToBack:(id)back
{
  containerView = [back containerView];
  superview = [containerView superview];
  if (superview)
  {
    v6 = superview;
    do
    {
      WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

      if (WeakRetained)
      {
        break;
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      subviews = [v6 subviews];
      v9 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(subviews);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = objc_storeWeak(&self->_navigationBar, v13);
              superview2 = [v13 superview];
              v16 = objc_loadWeakRetained(&self->_navigationBar);
              [superview2 sendSubviewToBack:v16];

              goto LABEL_14;
            }
          }

          v10 = [subviews countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      superview3 = [v6 superview];

      v6 = superview3;
    }

    while (superview3);
  }
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  [(CarSlideUpTransition *)self _sendNavigationBarToBack:?];
  operation = [(CarSlideUpTransition *)self operation];
  if (operation == 1)
  {
    [(CarSlideUpTransition *)self _animateTransitionForPush:transitionCopy];
  }

  else
  {
    v5 = transitionCopy;
    if (operation != 2)
    {
      goto LABEL_6;
    }

    [(CarSlideUpTransition *)self _animateTransitionForPop:transitionCopy];
  }

  v5 = transitionCopy;
LABEL_6:
}

- (double)transitionDuration:(id)duration
{
  operation = [(CarSlideUpTransition *)self operation];
  result = 0.3;
  if (operation != 1)
  {
    result = 0.0;
  }

  if (operation == 2)
  {
    return 0.2;
  }

  return result;
}

@end