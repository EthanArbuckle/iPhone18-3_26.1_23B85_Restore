@interface BKCrossFadeZoomTransition
+ (id)transition;
- (BKCrossFadeZoomTransition)init;
- (CGPoint)fadeControlPoint1;
- (CGPoint)fadeControlPoint2;
- (CGPoint)zoomControlPoint1;
- (CGPoint)zoomControlPoint2;
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation BKCrossFadeZoomTransition

+ (id)transition
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (BKCrossFadeZoomTransition)init
{
  v3.receiver = self;
  v3.super_class = BKCrossFadeZoomTransition;
  result = [(BKCrossFadeZoomTransition *)&v3 init];
  if (result)
  {
    *&result->_zoomControlPoint1.y = xmmword_10080B590;
    result->_zoomControlPoint2.y = 1.0;
    *&result->_fadeDuration = xmmword_10080B5A0;
    *&result->_zoomFactor = xmmword_10080B5B0;
    *&result->_fadeControlPoint1.y = xmmword_10080B5C0;
    *&result->_fadeControlPoint2.y = xmmword_10080B5D0;
  }

  return result;
}

- (double)transitionDuration:(id)a3
{
  [(BKCrossFadeZoomTransition *)self zoomDuration];
  v5 = v4;
  [(BKCrossFadeZoomTransition *)self fadeDuration];
  if (v5 >= result)
  {
    return v5;
  }

  return result;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 containerView];
  v43 = [v4 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v6 = [v4 viewControllerForKey:UITransitionContextToViewControllerKey];
  v7 = [v43 view];
  v8 = [v6 view];
  [v5 insertSubview:v8 belowSubview:v7];
  v9 = [v5 window];
  [v9 setUserInteractionEnabled:0];

  [v7 frame];
  [v8 setFrame:?];
  [v7 alpha];
  v11 = v10;
  v12 = *&CGAffineTransformIdentity.c;
  v54[0] = *&CGAffineTransformIdentity.a;
  v54[1] = v12;
  v54[2] = *&CGAffineTransformIdentity.tx;
  [v7 setTransform:v54];
  v13 = objc_alloc_init(BCViewPropertyAnimatorCounter);
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100187BEC;
  v49[3] = &unk_100A075D8;
  v50 = v5;
  v14 = v7;
  v53 = v11;
  v51 = v14;
  v52 = v4;
  v15 = v4;
  v16 = v5;
  [v13 setAnimationDidEnd:v49];
  v17 = [UIViewPropertyAnimator alloc];
  [(BKCrossFadeZoomTransition *)self zoomDuration];
  v19 = v18;
  [(BKCrossFadeZoomTransition *)self zoomControlPoint1];
  v21 = v20;
  v23 = v22;
  [(BKCrossFadeZoomTransition *)self zoomControlPoint2];
  v25 = v24;
  v27 = v26;
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100187C74;
  v46[3] = &unk_100A03440;
  v28 = v14;
  v47 = v28;
  v48 = self;
  v29 = [v17 initWithDuration:v46 controlPoint1:v19 controlPoint2:v21 animations:{v23, v25, v27}];
  [v13 animate:v29];
  v30 = [UIViewPropertyAnimator alloc];
  [(BKCrossFadeZoomTransition *)self fadeDuration];
  v32 = v31;
  [(BKCrossFadeZoomTransition *)self fadeControlPoint1];
  v34 = v33;
  v36 = v35;
  [(BKCrossFadeZoomTransition *)self fadeControlPoint2];
  v38 = v37;
  v40 = v39;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100187CE4;
  v44[3] = &unk_100A033C8;
  v45 = v28;
  v41 = v28;
  v42 = [v30 initWithDuration:v44 controlPoint1:v32 controlPoint2:v34 animations:{v36, v38, v40}];
  [v13 animate:v42];
}

- (CGPoint)fadeControlPoint1
{
  x = self->_fadeControlPoint1.x;
  y = self->_fadeControlPoint1.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)fadeControlPoint2
{
  x = self->_fadeControlPoint2.x;
  y = self->_fadeControlPoint2.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)zoomControlPoint1
{
  x = self->_zoomControlPoint1.x;
  y = self->_zoomControlPoint1.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)zoomControlPoint2
{
  x = self->_zoomControlPoint2.x;
  y = self->_zoomControlPoint2.y;
  result.y = y;
  result.x = x;
  return result;
}

@end