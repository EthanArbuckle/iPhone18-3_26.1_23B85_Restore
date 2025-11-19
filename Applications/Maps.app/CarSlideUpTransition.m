@interface CarSlideUpTransition
- (double)transitionDuration:(id)a3;
- (void)_animateTransitionForPop:(id)a3;
- (void)_animateTransitionForPush:(id)a3;
- (void)_bringNavigationBarToFront:(id)a3;
- (void)_sendNavigationBarToBack:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation CarSlideUpTransition

- (void)_animateTransitionForPop:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v7 = [v6 view];
  [v5 addSubview:v7];
  v8 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v9 = [v8 view];
  [v5 addSubview:v9];
  [v4 finalFrameForViewController:v6];
  [v7 setFrame:?];
  [v7 setAlpha:0.0];
  [v9 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v5 bounds];
  Height = CGRectGetHeight(v31);
  [(CarSlideUpTransition *)self transitionDuration:v4];
  v18 = v17;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100E22014;
  v24[3] = &unk_101655C38;
  v25 = v7;
  v26 = v9;
  v27 = v11;
  v28 = Height;
  v29 = v13;
  v30 = v15;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100E2205C;
  v22[3] = &unk_101661570;
  v22[4] = self;
  v23 = v4;
  v19 = v4;
  v20 = v9;
  v21 = v7;
  [UIView animateWithDuration:0x20000 delay:v24 options:v22 animations:v18 completion:0.0];
}

- (void)_animateTransitionForPush:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v6 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v7 = [v6 view];
  [v5 addSubview:v7];
  v8 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v9 = [v8 view];
  [v5 addSubview:v9];
  [v4 finalFrameForViewController:v8];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v5 bounds];
  [v9 setFrame:{v11, CGRectGetHeight(v34), v15, v17}];
  [(CarSlideUpTransition *)self transitionDuration:v4];
  v19 = v18;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100E222DC;
  v27[3] = &unk_101655C38;
  v28 = v7;
  v29 = v9;
  v30 = v11;
  v31 = v13;
  v32 = v15;
  v33 = v17;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100E22324;
  v23[3] = &unk_10165EB30;
  v24 = v28;
  v25 = self;
  v26 = v4;
  v20 = v4;
  v21 = v28;
  v22 = v9;
  [UIView animateWithDuration:0x20000 delay:v27 options:v23 animations:v19 completion:0.0];
}

- (void)_bringNavigationBarToFront:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationBar);

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained(&self->_navigationBar);
    v5 = [v7 superview];
    v6 = objc_loadWeakRetained(&self->_navigationBar);
    [v5 bringSubviewToFront:v6];
  }
}

- (void)_sendNavigationBarToBack:(id)a3
{
  v4 = [a3 containerView];
  v5 = [v4 superview];
  if (v5)
  {
    v6 = v5;
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
      v8 = [v6 subviews];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = objc_storeWeak(&self->_navigationBar, v13);
              v15 = [v13 superview];
              v16 = objc_loadWeakRetained(&self->_navigationBar);
              [v15 sendSubviewToBack:v16];

              goto LABEL_14;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      v17 = [v6 superview];

      v6 = v17;
    }

    while (v17);
  }
}

- (void)animateTransition:(id)a3
{
  v6 = a3;
  [(CarSlideUpTransition *)self _sendNavigationBarToBack:?];
  v4 = [(CarSlideUpTransition *)self operation];
  if (v4 == 1)
  {
    [(CarSlideUpTransition *)self _animateTransitionForPush:v6];
  }

  else
  {
    v5 = v6;
    if (v4 != 2)
    {
      goto LABEL_6;
    }

    [(CarSlideUpTransition *)self _animateTransitionForPop:v6];
  }

  v5 = v6;
LABEL_6:
}

- (double)transitionDuration:(id)a3
{
  v3 = [(CarSlideUpTransition *)self operation];
  result = 0.3;
  if (v3 != 1)
  {
    result = 0.0;
  }

  if (v3 == 2)
  {
    return 0.2;
  }

  return result;
}

@end