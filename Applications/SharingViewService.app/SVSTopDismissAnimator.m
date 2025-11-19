@interface SVSTopDismissAnimator
- (void)animateTransition:(id)a3;
@end

@implementation SVSTopDismissAnimator

- (void)animateTransition:(id)a3
{
  v4 = a3;
  [(SVSTopDismissAnimator *)self transitionDuration:v4];
  v6 = v5;
  [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10012509C;
  v13 = v12[3] = &unk_100195AC0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100125118;
  v9[3] = &unk_1001957F8;
  v10 = v13;
  v11 = v4;
  v7 = v4;
  v8 = v13;
  [UIView animateWithDuration:v12 animations:v9 completion:v6];
}

@end