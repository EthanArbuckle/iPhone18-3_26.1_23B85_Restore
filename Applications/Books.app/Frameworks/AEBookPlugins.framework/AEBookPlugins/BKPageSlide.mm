@interface BKPageSlide
- (BKPageSlide)init;
- (CGPoint)bottomViewFromCenter;
- (CGPoint)bottomViewToCenter;
- (CGPoint)contextualBottomViewFromCenter;
- (CGPoint)contextualBottomViewToCenter;
- (CGPoint)contextualTopViewFromCenter;
- (CGPoint)contextualTopViewToCenter;
- (CGPoint)manualCurlStartPosition;
- (CGPoint)topViewFromCenter;
- (CGPoint)topViewToCenter;
- (id)springAnimationForKeyPath:(id)path stiffness:(double)stiffness damping:(double)damping from:(CGPoint)from to:(CGPoint)to;
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)autoSlideFromPages:(id)pages toPages:(id)toPages inContainer:(id)container isForwardAnimation:(BOOL)animation isRTL:(BOOL)l isZoomedToSpread:(BOOL)spread completion:(id)completion;
- (void)beginManualAnimationAtLocation:(CGPoint)location;
- (void)cancelManualAnimation;
- (void)finishManualAnimation;
- (void)initiateManualAnimationFromPages:(id)pages toPages:(id)toPages inContainer:(id)container isForwardAnimation:(BOOL)animation isRTL:(BOOL)l isZoomedToSpread:(BOOL)spread;
- (void)setupSlideAnimationFromPages:(id)pages toPages:(id)toPages inContainer:(id)container isForwardAnimation:(BOOL)animation isRTL:(BOOL)l isZoomedToSpread:(BOOL)spread;
- (void)updateManualAnimationToLocation:(CGPoint)location;
@end

@implementation BKPageSlide

- (BKPageSlide)init
{
  v3.receiver = self;
  v3.super_class = BKPageSlide;
  result = [(BKPageSlide *)&v3 init];
  if (result)
  {
    result->_ongoingAnimationCount = 0;
  }

  return result;
}

- (void)setupSlideAnimationFromPages:(id)pages toPages:(id)toPages inContainer:(id)container isForwardAnimation:(BOOL)animation isRTL:(BOOL)l isZoomedToSpread:(BOOL)spread
{
  spreadCopy = spread;
  lCopy = l;
  animationCopy = animation;
  pagesCopy = pages;
  toPagesCopy = toPages;
  containerCopy = container;
  [(BKPageAnimation *)self setState:0];
  v84 = lCopy;
  [(BKPageAnimation *)self setIsGoingToNextPage:animationCopy ^ lCopy];
  v17 = pagesCopy;
  [containerCopy setClipsToBounds:1];
  firstObject = [toPagesCopy firstObject];
  lastObject = [toPagesCopy lastObject];
  v81 = lastObject;
  v82 = firstObject;
  if (spreadCopy)
  {
    v20 = lastObject;
    [firstObject frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v20 frame];
    [firstObject setFrame:?];
    [v20 setFrame:{v22, v24, v26, v28}];
    v80 = v17;
  }

  else
  {
    [containerCopy bounds];
    [firstObject setFrame:?];
    if ([toPagesCopy count])
    {
      if ([(BKPageAnimation *)self isGoingToNextPage]&& lCopy)
      {
        lastObject2 = [toPagesCopy lastObject];
      }

      else
      {
        lastObject2 = [toPagesCopy firstObject];
      }

      v30 = lastObject2;
      v31 = [NSArray arrayWithObject:lastObject2];

      toPagesCopy = v31;
    }

    if ([(BKPageAnimation *)self isGoingToNextPage]&& lCopy)
    {
      firstObject2 = [v17 firstObject];
    }

    else
    {
      firstObject2 = [v17 lastObject];
    }

    v33 = firstObject2;
    [containerCopy bounds];
    [v33 setFrame:?];
    v80 = [NSArray arrayWithObject:v33];
  }

  if ([(BKPageAnimation *)self isGoingToNextPage])
  {
    v34 = v17;
  }

  else
  {
    v34 = toPagesCopy;
  }

  v35 = v34;
  v83 = v17;
  if ([(BKPageAnimation *)self isGoingToNextPage])
  {
    v36 = toPagesCopy;
  }

  else
  {
    v36 = v17;
  }

  v37 = v36;
  v38 = [UIView alloc];
  [containerCopy bounds];
  v39 = [v38 initWithFrame:?];
  v40 = +[UIColor blackColor];
  cGColor = [v40 CGColor];
  layer = [v39 layer];
  [layer setShadowColor:cGColor];

  [v39 bounds];
  v43 = [UIBezierPath bezierPathWithRect:?];
  cGPath = [v43 CGPath];
  layer2 = [v39 layer];
  [layer2 setShadowPath:cGPath];

  layer3 = [v39 layer];
  [layer3 setShadowRadius:50.0];

  height = CGSizeZero.height;
  layer4 = [v39 layer];
  [layer4 setShadowOffset:{CGSizeZero.width, height}];

  layer5 = [v39 layer];
  LODWORD(v50) = 1060320051;
  [layer5 setShadowOpacity:v50];

  v51 = [UIView alloc];
  [containerCopy bounds];
  v52 = [v51 initWithFrame:?];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v53 = v35;
  v54 = [v53 countByEnumeratingWithState:&v89 objects:v94 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v90;
    do
    {
      for (i = 0; i != v55; i = i + 1)
      {
        if (*v90 != v56)
        {
          objc_enumerationMutation(v53);
        }

        [v39 addSubview:*(*(&v89 + 1) + 8 * i)];
      }

      v55 = [v53 countByEnumeratingWithState:&v89 objects:v94 count:16];
    }

    while (v55);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v58 = v37;
  v59 = [v58 countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v86;
    do
    {
      for (j = 0; j != v60; j = j + 1)
      {
        if (*v86 != v61)
        {
          objc_enumerationMutation(v58);
        }

        [v52 addSubview:*(*(&v85 + 1) + 8 * j)];
      }

      v60 = [v58 countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v60);
  }

  [containerCopy addSubview:v52];
  [containerCopy addSubview:v39];
  objc_storeStrong(&self->_topPagesView, v39);
  objc_storeStrong(&self->_bottomPagesView, v52);
  v63 = [UIView alloc];
  [containerCopy bounds];
  v64 = [v63 initWithFrame:?];
  scrimView = self->_scrimView;
  self->_scrimView = v64;

  v66 = +[UIColor blackColor];
  [(UIView *)self->_scrimView setBackgroundColor:v66];

  layer6 = [(UIView *)self->_scrimView layer];
  LODWORD(v68) = 1050253722;
  [layer6 setOpacity:v68];

  [v52 addSubview:self->_scrimView];
  p_topViewToCenter = &self->_topViewToCenter;
  if (v84)
  {
    [containerCopy bounds];
    Width = CGRectGetWidth(v95);
    [v39 bounds];
    v71 = Width + CGRectGetWidth(v96) * 0.5 + 50.0;
  }

  else
  {
    [v39 center];
    v71 = -50.0 - v72;
  }

  [v39 center];
  p_topViewToCenter->x = v71;
  self->_topViewToCenter.y = v73;
  [v39 center];
  self->_topViewFromCenter.x = v74;
  self->_topViewFromCenter.y = v75;
  if ([(BKPageAnimation *)self isGoingToNextPage])
  {
    [v39 setCenter:{p_topViewToCenter->x, self->_topViewToCenter.y}];
  }

  [v52 bounds];
  v76 = CGRectGetWidth(v97) * 0.25;
  [v52 center];
  self->_bottomViewToCenter.x = v77;
  self->_bottomViewToCenter.y = v78;
  if (!v84)
  {
    [containerCopy bounds];
    v76 = CGRectGetWidth(v98) - v76;
  }

  [v39 center];
  self->_bottomViewFromCenter.x = v76;
  self->_bottomViewFromCenter.y = v79;
  if ([(BKPageAnimation *)self isGoingToNextPage])
  {
    [v52 setCenter:{self->_bottomViewToCenter.x, self->_bottomViewToCenter.y}];
  }
}

- (id)springAnimationForKeyPath:(id)path stiffness:(double)stiffness damping:(double)damping from:(CGPoint)from to:(CGPoint)to
{
  y = to.y;
  x = to.x;
  v9 = from.y;
  v10 = from.x;
  v14 = [CASpringAnimation animationWithKeyPath:path];
  [v14 setDelegate:self];
  [v14 setMass:1.0];
  [v14 setStiffness:stiffness];
  [v14 setDamping:damping];
  [v14 setInitialVelocity:0.0];
  [v14 setRemovedOnCompletion:0];
  [v14 settlingDuration];
  [v14 setDuration:?];
  v15 = [NSValue valueWithPoint:v10, v9];
  [v14 setFromValue:v15];

  v16 = [NSValue valueWithPoint:x, y];
  [v14 setToValue:v16];

  if (![(BKPageAnimation *)self isGoingToNextPage])
  {
    [v14 ae_reverseValues];
  }

  return v14;
}

- (void)autoSlideFromPages:(id)pages toPages:(id)toPages inContainer:(id)container isForwardAnimation:(BOOL)animation isRTL:(BOOL)l isZoomedToSpread:(BOOL)spread completion:(id)completion
{
  [(BKPageSlide *)self setupSlideAnimationFromPages:pages toPages:toPages inContainer:container isForwardAnimation:animation isRTL:l isZoomedToSpread:spread];
  pageAnimationDelegate = [(BKPageAnimation *)self pageAnimationDelegate];
  [pageAnimationDelegate pageAnimationWillBegin:self];

  +[CATransaction begin];
  v22 = [(BKPageSlide *)self springAnimationForKeyPath:@"position" stiffness:250.0 damping:35.0 from:self->_topViewFromCenter.x to:self->_topViewFromCenter.y, self->_topViewToCenter.x, self->_topViewToCenter.y];
  v11 = [(BKPageSlide *)self springAnimationForKeyPath:@"position" stiffness:350.0 damping:50.0 from:self->_bottomViewFromCenter.x to:self->_bottomViewFromCenter.y, self->_bottomViewToCenter.x, self->_bottomViewToCenter.y];
  v12 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v12 setDelegate:self];
  [v12 setToValue:&off_1F1890];
  [v12 setFromValue:&off_1F18A0];
  [v11 settlingDuration];
  [v12 setDuration:?];
  [v12 setRemovedOnCompletion:0];
  [v12 setFillMode:kCAFillModeForwards];
  LODWORD(v13) = 1051260355;
  LODWORD(v14) = 1059816735;
  LODWORD(v15) = 1.0;
  v16 = [CAMediaTimingFunction functionWithControlPoints:v13];
  [v12 setTimingFunction:v16];

  if (![(BKPageAnimation *)self isGoingToNextPage])
  {
    [v12 ae_reverseValues];
  }

  topPagesView = [(BKPageSlide *)self topPagesView];
  layer = [topPagesView layer];
  [layer addAnimation:v22 forKey:@"kPageSlideAnimationNameTopPages"];

  bottomPagesView = [(BKPageSlide *)self bottomPagesView];
  layer2 = [bottomPagesView layer];
  [layer2 addAnimation:v11 forKey:@"kPageSlideAnimationNameBottomPages"];

  layer3 = [(UIView *)self->_scrimView layer];
  [layer3 addAnimation:v12 forKey:@"kPageSlideAnimationNameScrimView"];

  +[CATransaction commit];
}

- (CGPoint)contextualTopViewFromCenter
{
  if ([(BKPageAnimation *)self isGoingToNextPage])
  {

    [(BKPageSlide *)self topViewFromCenter];
  }

  else
  {

    [(BKPageSlide *)self topViewToCenter];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)contextualTopViewToCenter
{
  if ([(BKPageAnimation *)self isGoingToNextPage])
  {

    [(BKPageSlide *)self topViewToCenter];
  }

  else
  {

    [(BKPageSlide *)self topViewFromCenter];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)contextualBottomViewFromCenter
{
  if ([(BKPageAnimation *)self isGoingToNextPage])
  {

    [(BKPageSlide *)self bottomViewFromCenter];
  }

  else
  {

    [(BKPageSlide *)self bottomViewToCenter];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)contextualBottomViewToCenter
{
  if ([(BKPageAnimation *)self isGoingToNextPage])
  {

    [(BKPageSlide *)self bottomViewToCenter];
  }

  else
  {

    [(BKPageSlide *)self bottomViewFromCenter];
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)initiateManualAnimationFromPages:(id)pages toPages:(id)toPages inContainer:(id)container isForwardAnimation:(BOOL)animation isRTL:(BOOL)l isZoomedToSpread:(BOOL)spread
{
  [(BKPageSlide *)self setupSlideAnimationFromPages:pages toPages:toPages inContainer:container isForwardAnimation:animation isRTL:l isZoomedToSpread:spread];
  [(BKPageAnimation *)self setIsInteractive:1];
  if ([(BKPageAnimation *)self isGoingToNextPage])
  {
    [(BKPageSlide *)self topViewFromCenter];
    v10 = v9;
    v12 = v11;
    topPagesView = [(BKPageSlide *)self topPagesView];
    [topPagesView setCenter:{v10, v12}];

    [(BKPageSlide *)self bottomViewFromCenter];
  }

  else
  {
    [(BKPageSlide *)self topViewToCenter];
    v17 = v16;
    v19 = v18;
    topPagesView2 = [(BKPageSlide *)self topPagesView];
    [topPagesView2 setCenter:{v17, v19}];

    [(BKPageSlide *)self bottomViewToCenter];
  }

  v21 = v14;
  v22 = v15;
  bottomPagesView = [(BKPageSlide *)self bottomPagesView];
  [bottomPagesView setCenter:{v21, v22}];
}

- (void)beginManualAnimationAtLocation:(CGPoint)location
{
  [(BKPageSlide *)self setManualCurlStartPosition:location.x, location.y];
  [(BKPageSlide *)self setManualCurlCurrentTime:CFAbsoluteTimeGetCurrent()];
  pageAnimationDelegate = [(BKPageAnimation *)self pageAnimationDelegate];
  [pageAnimationDelegate pageAnimationWillBegin:self];
}

- (void)updateManualAnimationToLocation:(CGPoint)location
{
  x = location.x;
  self->_manualCurlCurrentTime = CFAbsoluteTimeGetCurrent();
  [(UIView *)self->_topPagesView bounds];
  v5 = CGRectGetWidth(v27) * 0.5;
  if (v5 != 0.0)
  {
    v6 = fmax(fmin(vabdd_f64(x, self->_manualCurlStartPosition.x) / v5, 1.0), 0.0);
    [(BKPageSlide *)self contextualTopViewToCenter];
    v8 = v7;
    [(BKPageSlide *)self contextualTopViewFromCenter];
    v10 = v9;
    v12 = v11 - (v11 - v8) * v6;
    topPagesView = [(BKPageSlide *)self topPagesView];
    [topPagesView setCenter:{v12, v10}];

    [(BKPageSlide *)self contextualBottomViewToCenter];
    v15 = v14;
    [(BKPageSlide *)self contextualBottomViewFromCenter];
    v17 = v16;
    v19 = v18 - (v18 - v15) * v6;
    bottomPagesView = [(BKPageSlide *)self bottomPagesView];
    [bottomPagesView setCenter:{v19, v17}];

    isGoingToNextPage = [(BKPageAnimation *)self isGoingToNextPage];
    v22 = 1.0 - v6;
    if (!isGoingToNextPage)
    {
      v22 = v6;
    }

    v23 = v22 * 0.300000012;
    layer = [(UIView *)self->_scrimView layer];
    *&v24 = v23;
    [layer setOpacity:v24];
  }
}

- (void)finishManualAnimation
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_BAA34;
  v3[3] = &unk_1E2BD0;
  v3[4] = self;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_BAB18;
  v2[3] = &unk_1E2C20;
  v2[4] = self;
  [UIView animateWithDuration:v3 animations:v2 completion:0.300000012];
}

- (void)cancelManualAnimation
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_BAC48;
  v3[3] = &unk_1E2BD0;
  v3[4] = self;
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_BAD2C;
  v2[3] = &unk_1E2C20;
  v2[4] = self;
  [UIView animateWithDuration:v3 animations:v2 completion:0.300000012];
}

- (void)animationDidStart:(id)start
{
  [(BKPageAnimation *)self setState:1];
  v4 = [(BKPageSlide *)self ongoingAnimationCount]+ 1;

  [(BKPageSlide *)self setOngoingAnimationCount:v4];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  stopCopy = stop;
  [(BKPageSlide *)self setOngoingAnimationCount:[(BKPageSlide *)self ongoingAnimationCount]- 1];
  if (![(BKPageSlide *)self ongoingAnimationCount])
  {
    if (finishedCopy)
    {
      v7 = 2;
    }

    else
    {
      v7 = 4;
    }

    [(BKPageAnimation *)self setState:v7];
    [(BKPageAnimation *)self setFinished:1];
    pageAnimationDelegate = [(BKPageAnimation *)self pageAnimationDelegate];
    [pageAnimationDelegate pageAnimation:self didFinish:1];

    completionBlock = [(BKPageSlide *)self completionBlock];
    v10 = completionBlock;
    if (completionBlock)
    {
      (*(completionBlock + 16))(completionBlock);
    }

    [(BKPageSlide *)self setCompletionBlock:0];

    [(BKPageSlide *)self _cleanup];
  }

  layer = [(UIView *)self->_scrimView layer];
  v12 = [layer animationForKey:@"kPageSlideAnimationNameScrimView"];

  if (v12 == stopCopy)
  {
    [(UIView *)self->_scrimView removeFromSuperview];
    scrimView = self->_scrimView;
    self->_scrimView = 0;
  }
}

- (CGPoint)bottomViewToCenter
{
  x = self->_bottomViewToCenter.x;
  y = self->_bottomViewToCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)bottomViewFromCenter
{
  x = self->_bottomViewFromCenter.x;
  y = self->_bottomViewFromCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)topViewToCenter
{
  x = self->_topViewToCenter.x;
  y = self->_topViewToCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)topViewFromCenter
{
  x = self->_topViewFromCenter.x;
  y = self->_topViewFromCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)manualCurlStartPosition
{
  x = self->_manualCurlStartPosition.x;
  y = self->_manualCurlStartPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

@end