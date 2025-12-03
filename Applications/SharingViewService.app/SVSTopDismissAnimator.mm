@interface SVSTopDismissAnimator
- (void)animateTransition:(id)transition;
@end

@implementation SVSTopDismissAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  [(SVSTopDismissAnimator *)self transitionDuration:transitionCopy];
  v6 = v5;
  [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10012509C;
  v13 = v12[3] = &unk_100195AC0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100125118;
  v9[3] = &unk_1001957F8;
  v10 = v13;
  v11 = transitionCopy;
  v7 = transitionCopy;
  v8 = v13;
  [UIView animateWithDuration:v12 animations:v9 completion:v6];
}

@end