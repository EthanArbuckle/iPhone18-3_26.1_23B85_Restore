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
- (id)springAnimationForKeyPath:(id)a3 stiffness:(double)a4 damping:(double)a5 from:(CGPoint)a6 to:(CGPoint)a7;
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)autoSlideFromPages:(id)a3 toPages:(id)a4 inContainer:(id)a5 isForwardAnimation:(BOOL)a6 isRTL:(BOOL)a7 isZoomedToSpread:(BOOL)a8 completion:(id)a9;
- (void)beginManualAnimationAtLocation:(CGPoint)a3;
- (void)cancelManualAnimation;
- (void)finishManualAnimation;
- (void)initiateManualAnimationFromPages:(id)a3 toPages:(id)a4 inContainer:(id)a5 isForwardAnimation:(BOOL)a6 isRTL:(BOOL)a7 isZoomedToSpread:(BOOL)a8;
- (void)setupSlideAnimationFromPages:(id)a3 toPages:(id)a4 inContainer:(id)a5 isForwardAnimation:(BOOL)a6 isRTL:(BOOL)a7 isZoomedToSpread:(BOOL)a8;
- (void)updateManualAnimationToLocation:(CGPoint)a3;
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

- (void)setupSlideAnimationFromPages:(id)a3 toPages:(id)a4 inContainer:(id)a5 isForwardAnimation:(BOOL)a6 isRTL:(BOOL)a7 isZoomedToSpread:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  [(BKPageAnimation *)self setState:0];
  v84 = v9;
  [(BKPageAnimation *)self setIsGoingToNextPage:v10 ^ v9];
  v17 = v14;
  [v16 setClipsToBounds:1];
  v18 = [v15 firstObject];
  v19 = [v15 lastObject];
  v81 = v19;
  v82 = v18;
  if (v8)
  {
    v20 = v19;
    [v18 frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v20 frame];
    [v18 setFrame:?];
    [v20 setFrame:{v22, v24, v26, v28}];
    v80 = v17;
  }

  else
  {
    [v16 bounds];
    [v18 setFrame:?];
    if ([v15 count])
    {
      if ([(BKPageAnimation *)self isGoingToNextPage]&& v9)
      {
        v29 = [v15 lastObject];
      }

      else
      {
        v29 = [v15 firstObject];
      }

      v30 = v29;
      v31 = [NSArray arrayWithObject:v29];

      v15 = v31;
    }

    if ([(BKPageAnimation *)self isGoingToNextPage]&& v9)
    {
      v32 = [v17 firstObject];
    }

    else
    {
      v32 = [v17 lastObject];
    }

    v33 = v32;
    [v16 bounds];
    [v33 setFrame:?];
    v80 = [NSArray arrayWithObject:v33];
  }

  if ([(BKPageAnimation *)self isGoingToNextPage])
  {
    v34 = v17;
  }

  else
  {
    v34 = v15;
  }

  v35 = v34;
  v83 = v17;
  if ([(BKPageAnimation *)self isGoingToNextPage])
  {
    v36 = v15;
  }

  else
  {
    v36 = v17;
  }

  v37 = v36;
  v38 = [UIView alloc];
  [v16 bounds];
  v39 = [v38 initWithFrame:?];
  v40 = +[UIColor blackColor];
  v41 = [v40 CGColor];
  v42 = [v39 layer];
  [v42 setShadowColor:v41];

  [v39 bounds];
  v43 = [UIBezierPath bezierPathWithRect:?];
  v44 = [v43 CGPath];
  v45 = [v39 layer];
  [v45 setShadowPath:v44];

  v46 = [v39 layer];
  [v46 setShadowRadius:50.0];

  height = CGSizeZero.height;
  v48 = [v39 layer];
  [v48 setShadowOffset:{CGSizeZero.width, height}];

  v49 = [v39 layer];
  LODWORD(v50) = 1060320051;
  [v49 setShadowOpacity:v50];

  v51 = [UIView alloc];
  [v16 bounds];
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

  [v16 addSubview:v52];
  [v16 addSubview:v39];
  objc_storeStrong(&self->_topPagesView, v39);
  objc_storeStrong(&self->_bottomPagesView, v52);
  v63 = [UIView alloc];
  [v16 bounds];
  v64 = [v63 initWithFrame:?];
  scrimView = self->_scrimView;
  self->_scrimView = v64;

  v66 = +[UIColor blackColor];
  [(UIView *)self->_scrimView setBackgroundColor:v66];

  v67 = [(UIView *)self->_scrimView layer];
  LODWORD(v68) = 1050253722;
  [v67 setOpacity:v68];

  [v52 addSubview:self->_scrimView];
  p_topViewToCenter = &self->_topViewToCenter;
  if (v84)
  {
    [v16 bounds];
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
    [v16 bounds];
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

- (id)springAnimationForKeyPath:(id)a3 stiffness:(double)a4 damping:(double)a5 from:(CGPoint)a6 to:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  v9 = a6.y;
  v10 = a6.x;
  v14 = [CASpringAnimation animationWithKeyPath:a3];
  [v14 setDelegate:self];
  [v14 setMass:1.0];
  [v14 setStiffness:a4];
  [v14 setDamping:a5];
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

- (void)autoSlideFromPages:(id)a3 toPages:(id)a4 inContainer:(id)a5 isForwardAnimation:(BOOL)a6 isRTL:(BOOL)a7 isZoomedToSpread:(BOOL)a8 completion:(id)a9
{
  [(BKPageSlide *)self setupSlideAnimationFromPages:a3 toPages:a4 inContainer:a5 isForwardAnimation:a6 isRTL:a7 isZoomedToSpread:a8];
  v10 = [(BKPageAnimation *)self pageAnimationDelegate];
  [v10 pageAnimationWillBegin:self];

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

  v17 = [(BKPageSlide *)self topPagesView];
  v18 = [v17 layer];
  [v18 addAnimation:v22 forKey:@"kPageSlideAnimationNameTopPages"];

  v19 = [(BKPageSlide *)self bottomPagesView];
  v20 = [v19 layer];
  [v20 addAnimation:v11 forKey:@"kPageSlideAnimationNameBottomPages"];

  v21 = [(UIView *)self->_scrimView layer];
  [v21 addAnimation:v12 forKey:@"kPageSlideAnimationNameScrimView"];

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

- (void)initiateManualAnimationFromPages:(id)a3 toPages:(id)a4 inContainer:(id)a5 isForwardAnimation:(BOOL)a6 isRTL:(BOOL)a7 isZoomedToSpread:(BOOL)a8
{
  [(BKPageSlide *)self setupSlideAnimationFromPages:a3 toPages:a4 inContainer:a5 isForwardAnimation:a6 isRTL:a7 isZoomedToSpread:a8];
  [(BKPageAnimation *)self setIsInteractive:1];
  if ([(BKPageAnimation *)self isGoingToNextPage])
  {
    [(BKPageSlide *)self topViewFromCenter];
    v10 = v9;
    v12 = v11;
    v13 = [(BKPageSlide *)self topPagesView];
    [v13 setCenter:{v10, v12}];

    [(BKPageSlide *)self bottomViewFromCenter];
  }

  else
  {
    [(BKPageSlide *)self topViewToCenter];
    v17 = v16;
    v19 = v18;
    v20 = [(BKPageSlide *)self topPagesView];
    [v20 setCenter:{v17, v19}];

    [(BKPageSlide *)self bottomViewToCenter];
  }

  v21 = v14;
  v22 = v15;
  v23 = [(BKPageSlide *)self bottomPagesView];
  [v23 setCenter:{v21, v22}];
}

- (void)beginManualAnimationAtLocation:(CGPoint)a3
{
  [(BKPageSlide *)self setManualCurlStartPosition:a3.x, a3.y];
  [(BKPageSlide *)self setManualCurlCurrentTime:CFAbsoluteTimeGetCurrent()];
  v4 = [(BKPageAnimation *)self pageAnimationDelegate];
  [v4 pageAnimationWillBegin:self];
}

- (void)updateManualAnimationToLocation:(CGPoint)a3
{
  x = a3.x;
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
    v13 = [(BKPageSlide *)self topPagesView];
    [v13 setCenter:{v12, v10}];

    [(BKPageSlide *)self contextualBottomViewToCenter];
    v15 = v14;
    [(BKPageSlide *)self contextualBottomViewFromCenter];
    v17 = v16;
    v19 = v18 - (v18 - v15) * v6;
    v20 = [(BKPageSlide *)self bottomPagesView];
    [v20 setCenter:{v19, v17}];

    v21 = [(BKPageAnimation *)self isGoingToNextPage];
    v22 = 1.0 - v6;
    if (!v21)
    {
      v22 = v6;
    }

    v23 = v22 * 0.300000012;
    v25 = [(UIView *)self->_scrimView layer];
    *&v24 = v23;
    [v25 setOpacity:v24];
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

- (void)animationDidStart:(id)a3
{
  [(BKPageAnimation *)self setState:1];
  v4 = [(BKPageSlide *)self ongoingAnimationCount]+ 1;

  [(BKPageSlide *)self setOngoingAnimationCount:v4];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(BKPageSlide *)self setOngoingAnimationCount:[(BKPageSlide *)self ongoingAnimationCount]- 1];
  if (![(BKPageSlide *)self ongoingAnimationCount])
  {
    if (v4)
    {
      v7 = 2;
    }

    else
    {
      v7 = 4;
    }

    [(BKPageAnimation *)self setState:v7];
    [(BKPageAnimation *)self setFinished:1];
    v8 = [(BKPageAnimation *)self pageAnimationDelegate];
    [v8 pageAnimation:self didFinish:1];

    v9 = [(BKPageSlide *)self completionBlock];
    v10 = v9;
    if (v9)
    {
      (*(v9 + 16))(v9);
    }

    [(BKPageSlide *)self setCompletionBlock:0];

    [(BKPageSlide *)self _cleanup];
  }

  v11 = [(UIView *)self->_scrimView layer];
  v12 = [v11 animationForKey:@"kPageSlideAnimationNameScrimView"];

  if (v12 == v6)
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