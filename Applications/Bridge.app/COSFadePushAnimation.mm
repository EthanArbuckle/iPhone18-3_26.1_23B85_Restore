@interface COSFadePushAnimation
- (void)animateTransition:(id)transition;
@end

@implementation COSFadePushAnimation

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v4 = [transitionCopy viewForKey:UITransitionContextFromViewKey];
  v5 = [transitionCopy viewForKey:UITransitionContextToViewKey];
  containerView = [transitionCopy containerView];
  [v4 setAlpha:1.0];
  [v5 setAlpha:0.0];
  [containerView bounds];
  [v5 setFrame:?];
  [containerView addSubview:v5];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007ED3C;
  v13[3] = &unk_100268358;
  v14 = v4;
  v15 = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10007ED80;
  v10[3] = &unk_100269F28;
  v11 = v14;
  v12 = transitionCopy;
  v7 = transitionCopy;
  v8 = v14;
  v9 = v5;
  [UIView animateWithDuration:v13 animations:v10 completion:0.5];
}

@end