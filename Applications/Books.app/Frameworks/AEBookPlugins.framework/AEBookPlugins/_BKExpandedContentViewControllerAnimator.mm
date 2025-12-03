@interface _BKExpandedContentViewControllerAnimator
- (CGRect)sourceRect;
- (void)animateTransition:(id)transition;
@end

@implementation _BKExpandedContentViewControllerAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [transitionCopy viewControllerForKey:UITransitionContextToViewControllerKey];
  containerView = [transitionCopy containerView];
  view = [v5 view];
  v9 = [view snapshotViewAfterScreenUpdates:0];

  [containerView bounds];
  UIRectGetCenter();
  [v9 setCenter:?];
  [v9 setUserInteractionEnabled:0];
  [containerView addSubview:v9];
  [transitionCopy finalFrameForViewController:v6];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  view2 = [v6 view];
  [view2 setFrame:{v11, v13, v15, v17}];
  [view2 setAlpha:0.0];
  _UIScaleTransformForAspectFitOfSizeInTargetSize();
  v36[0] = v36[3];
  v36[1] = v36[4];
  v36[2] = v36[5];
  [view2 setTransform:v36];
  UIRectGetCenter();
  [view2 setCenter:?];
  [containerView addSubview:view2];
  view3 = [v5 view];
  [view3 setUserInteractionEnabled:0];

  [(_BKExpandedContentViewControllerAnimator *)self transitionDuration:transitionCopy];
  v21 = v20;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_6F228;
  v30[3] = &unk_1E47E8;
  v31 = view2;
  v32 = v11;
  v33 = v13;
  v34 = v15;
  v35 = v17;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_6F294;
  v26[3] = &unk_1E4810;
  v27 = v5;
  v28 = v9;
  v29 = transitionCopy;
  v22 = transitionCopy;
  v23 = v9;
  v24 = v5;
  v25 = view2;
  [UIView animateWithDuration:262145 delay:v30 options:v26 animations:v21 completion:0.0];
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end