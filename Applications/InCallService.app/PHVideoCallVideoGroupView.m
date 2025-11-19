@interface PHVideoCallVideoGroupView
- (CGPoint)centerPointForCurrentVideoGroupCorner;
- (CGPoint)transformedCenter;
- (CGRect)cornerLocationsRect;
- (PHVideoCallVideoGroupView)initWithFrame:(CGRect)a3;
- (PHVideoCallVideoGroupViewDelegate)delegate;
- (double)_gridViewRubberBandValueForValue:(double)result target:(double)a4 timeInterval:(double)a5 velocity:(double *)a6;
- (void)addPanningGestureRecognizer;
- (void)cancelThrowAnimation;
- (void)dealloc;
- (void)finishedThrowAnimation;
- (void)handlePanDetected:(id)a3;
- (void)handlePanGestureFinished:(id)a3;
- (void)refreshPositionInCorner;
- (void)setCorner:(int64_t)a3;
- (void)setCornerLocationsRect:(CGRect)a3;
- (void)setTransformForNewCenter:(CGPoint)a3;
- (void)startThrowAnimation;
- (void)updateThrowAnimation:(id)a3;
@end

@implementation PHVideoCallVideoGroupView

- (PHVideoCallVideoGroupView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = PHVideoCallVideoGroupView;
  v3 = [(PHVideoCallVideoGroupView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = CGPointZero;
    *(v3 + 1) = CGPointZero;
    *(v3 + 2) = v5;
    v6 = v3 + 48;
    v7 = +[UIScreen mainScreen];
    [v7 _referenceBounds];
    *v6 = v8;
    v4->_cornerLocationsRect.origin.y = v9;
    v4->_cornerLocationsRect.size.width = v10;
    v4->_cornerLocationsRect.size.height = v11;

    v4->_corner = CNFGetAppIntegerForKey();
  }

  return v4;
}

- (void)dealloc
{
  CNFSetAppIntegerForKey();
  [(CADisplayLink *)self->_displayLink invalidate];
  v3.receiver = self;
  v3.super_class = PHVideoCallVideoGroupView;
  [(PHVideoCallVideoGroupView *)&v3 dealloc];
}

- (CGPoint)transformedCenter
{
  [(PHVideoCallVideoGroupView *)self center];
  v4 = v3;
  [(PHVideoCallVideoGroupView *)self transform];
  [(PHVideoCallVideoGroupView *)self center];
  v6 = v5;
  [(PHVideoCallVideoGroupView *)self transform];
  v7 = v6 + v9;
  v8 = v4 + v10;
  result.y = v7;
  result.x = v8;
  return result;
}

- (void)setTransformForNewCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PHVideoCallVideoGroupView *)self transform];
  v6 = v13[24];
  [(PHVideoCallVideoGroupView *)self transform];
  v7 = v13[19];
  [(PHVideoCallVideoGroupView *)self transform];
  v8 = v13[14];
  [(PHVideoCallVideoGroupView *)self transform];
  v9 = v13[9];
  [(PHVideoCallVideoGroupView *)self center];
  v11 = x - v10;
  [(PHVideoCallVideoGroupView *)self center];
  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v9;
  *&v13[4] = v11;
  *&v13[5] = y - v12;
  [(PHVideoCallVideoGroupView *)self setTransform:v13];
}

- (void)setCornerLocationsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_cornerLocationsRect = &self->_cornerLocationsRect;
  if (!CGRectEqualToRect(a3, self->_cornerLocationsRect))
  {
    p_cornerLocationsRect->origin.x = x;
    p_cornerLocationsRect->origin.y = y;
    p_cornerLocationsRect->size.width = width;
    p_cornerLocationsRect->size.height = height;
    [(PHVideoCallVideoGroupView *)self centerPointForCurrentVideoGroupCorner];
    self->_target.x = v9;
    self->_target.y = v10;
  }
}

- (void)setCorner:(int64_t)a3
{
  self->_corner = a3;
  p_target = &self->_target;
  [(PHVideoCallVideoGroupView *)self centerPointForCurrentVideoGroupCorner];
  p_target->x = v6;
  p_target->y = v7;
  v8 = [(PHVideoCallVideoGroupView *)self delegate];
  [v8 videoGroupView:self didUpdateCorner:a3];
}

- (CGPoint)centerPointForCurrentVideoGroupCorner
{
  [(PHVideoCallVideoGroupView *)self cornerLocationsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PHVideoCallVideoGroupView *)self frame];
  v12 = v11 * 0.5;
  [(PHVideoCallVideoGroupView *)self frame];
  v14 = v13 * 0.5;
  corner = self->_corner;
  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  if (corner == 3)
  {
    v20 = v12 + CGRectGetMinX(*&v16);
    goto LABEL_7;
  }

  if (corner == 2)
  {
    v20 = CGRectGetMaxX(*&v16) - v12;
LABEL_7:
    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    v21 = CGRectGetMaxY(v24) - v14;
    goto LABEL_10;
  }

  if (corner)
  {
    v20 = CGRectGetMaxX(*&v16) - v12;
  }

  else
  {
    v20 = v12 + CGRectGetMinX(*&v16);
  }

  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  v21 = v14 + CGRectGetMinY(v25);
LABEL_10:
  v22 = v20;
  result.y = v21;
  result.x = v22;
  return result;
}

- (void)refreshPositionInCorner
{
  if (!self->_displayLink)
  {
    [(PHVideoCallVideoGroupView *)self centerPointForCurrentVideoGroupCorner];

    [(PHVideoCallVideoGroupView *)self setCenter:?];
  }
}

- (void)addPanningGestureRecognizer
{
  v3 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:"handlePanDetected:"];
  panGestureRecognizer = self->_panGestureRecognizer;
  self->_panGestureRecognizer = v3;

  [(PHVideoCallVideoGroupView *)self addGestureRecognizer:self->_panGestureRecognizer];
  v5 = self->_panGestureRecognizer;

  [(UIPanGestureRecognizer *)v5 setDelegate:self];
}

- (void)handlePanGestureFinished:(id)a3
{
  v4 = a3;
  v5 = [(PHVideoCallVideoGroupView *)self superview];
  [v4 velocityInView:v5];
  v22 = v7;
  v23 = v6;

  [(PHVideoCallVideoGroupView *)self center];
  v9 = v8;
  [(PHVideoCallVideoGroupView *)self transform];
  v10 = v9 + v25 + v23 * 0.300000012;
  [(PHVideoCallVideoGroupView *)self center];
  v12 = v11;
  [(PHVideoCallVideoGroupView *)self transform];
  v13.f64[0] = v23;
  v14 = v12 + v24 + *&v22 * 0.300000012;
  *&v13.f64[1] = v22;
  self->_velocity = vdivq_f64(v13, vdupq_n_s64(0x408F400000000000uLL));
  v15 = +[UIScreen mainScreen];
  [v15 _referenceBounds];
  v17 = v16;
  v19 = v18;

  v20 = 3;
  if (v10 >= v17 * 0.5)
  {
    v20 = 2;
  }

  if (v14 >= v19 * 0.5)
  {
    v21 = v20;
  }

  else
  {
    v21 = v10 >= v17 * 0.5;
  }

  [(PHVideoCallVideoGroupView *)self setCorner:v21, v22];
  [(PHVideoCallVideoGroupView *)self startThrowAnimation];
}

- (void)handlePanDetected:(id)a3
{
  v4 = a3;
  v5 = [v4 state];
  if ((v5 - 3) >= 3)
  {
    if (v5 == 1)
    {
      [(PHVideoCallVideoGroupView *)self finishedThrowAnimation];
      v9 = [(PHVideoCallVideoGroupView *)self superview];
      [v4 setTranslation:v9 inView:{CGPointZero.x, CGPointZero.y}];

      v10 = [(PHVideoCallVideoGroupView *)self delegate];
      [v10 videoGroupViewDidStartDrag:self];
    }

    else
    {
      v11 = [(PHVideoCallVideoGroupView *)self superview];
      [v4 translationInView:v11];
      v13 = v12;
      v15 = v14;

      [(PHVideoCallVideoGroupView *)self transform];
      [(PHVideoCallVideoGroupView *)self transform];
      [(PHVideoCallVideoGroupView *)self transform];
      [(PHVideoCallVideoGroupView *)self transform];
      v20 = v19;
      v21 = v18;
      v22 = v17;
      v23 = v16;
      v24 = v13;
      v25 = v15;
      [(PHVideoCallVideoGroupView *)self setTransform:&v20];
    }
  }

  else
  {
    [(PHVideoCallVideoGroupView *)self transformedCenter];
    [(PHVideoCallVideoGroupView *)self setCenter:?];
    [(PHVideoCallVideoGroupView *)self transform];
    v6 = v29;
    [(PHVideoCallVideoGroupView *)self transform];
    v7 = v28;
    [(PHVideoCallVideoGroupView *)self transform];
    v8 = v27;
    [(PHVideoCallVideoGroupView *)self transform];
    v20 = v6;
    v21 = v7;
    v22 = v8;
    v23 = v26;
    v24 = 0;
    v25 = 0;
    [(PHVideoCallVideoGroupView *)self setTransform:&v20];
    [(PHVideoCallVideoGroupView *)self handlePanGestureFinished:v4];
  }
}

- (double)_gridViewRubberBandValueForValue:(double)result target:(double)a4 timeInterval:(double)a5 velocity:(double *)a6
{
  v6 = a5;
  v7 = *a6;
  if (v6 >= 1)
  {
    do
    {
      v7 = (v7 + (a4 - result) * 0.000140000004) * 0.980000019;
      result = result + v7;
      --v6;
    }

    while (v6);
  }

  *a6 = v7;
  return result;
}

- (void)startThrowAnimation
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
  }

  v4 = [CADisplayLink displayLinkWithTarget:self selector:"updateThrowAnimation:"];
  v5 = self->_displayLink;
  self->_displayLink = v4;

  v6 = self->_displayLink;
  v7 = +[NSRunLoop mainRunLoop];
  [(CADisplayLink *)v6 addToRunLoop:v7 forMode:NSRunLoopCommonModes];
}

- (void)updateThrowAnimation:(id)a3
{
  v18 = a3;
  if (!self->_startedThrowAnimation)
  {
    [v18 timestamp];
    qword_1003B0C98 = v4;
    self->_startedThrowAnimation = 1;
  }

  [(PHVideoCallVideoGroupView *)self transformedCenter];
  v6 = v5;
  v8 = v7;
  p_target = &self->_target;
  UIDistanceBetweenPoints();
  if (v10 > 1.0 || fabs(self->_velocity.y) >= 0.00999999978 || fabs(self->_velocity.x) >= 0.00999999978)
  {
    [v18 timestamp];
    v13 = *&v12;
    v14 = (v12 - *&qword_1003B0C98) * 1000.0;
    [(PHVideoCallVideoGroupView *)self _gridViewRubberBandValueForValue:&self->_velocity target:v6 timeInterval:p_target->x velocity:v14];
    v16 = v15;
    [(PHVideoCallVideoGroupView *)self _gridViewRubberBandValueForValue:&self->_velocity.y target:v8 timeInterval:self->_target.y velocity:v14];
    [(PHVideoCallVideoGroupView *)self setTransformForNewCenter:v16, v17];
    v11 = v18;
    qword_1003B0C98 = v13;
  }

  else
  {
    [(PHVideoCallVideoGroupView *)self setTransformForNewCenter:p_target->x, self->_target.y];
    [(PHVideoCallVideoGroupView *)self finishedThrowAnimation];
    v11 = v18;
  }
}

- (void)finishedThrowAnimation
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    [(CADisplayLink *)displayLink invalidate];
    v4 = self->_displayLink;
    self->_displayLink = 0;
  }

  self->_startedThrowAnimation = 0;
  [(PHVideoCallVideoGroupView *)self transformedCenter];
  [(PHVideoCallVideoGroupView *)self setCenter:?];
  [(PHVideoCallVideoGroupView *)self transform];
  v5 = v8[24];
  [(PHVideoCallVideoGroupView *)self transform];
  v6 = v8[19];
  [(PHVideoCallVideoGroupView *)self transform];
  v7 = v8[14];
  [(PHVideoCallVideoGroupView *)self transform];
  v8[0] = v5;
  v8[1] = v6;
  v8[2] = v7;
  v8[3] = v8[9];
  v8[4] = 0;
  v8[5] = 0;
  [(PHVideoCallVideoGroupView *)self setTransform:v8];
  CNFSetAppIntegerForKey();
}

- (void)cancelThrowAnimation
{
  [(PHVideoCallVideoGroupView *)self removeGestureRecognizer:self->_panGestureRecognizer];
  if (self->_displayLink)
  {
    [(PHVideoCallVideoGroupView *)self setTransformForNewCenter:self->_target.x, self->_target.y];

    [(PHVideoCallVideoGroupView *)self finishedThrowAnimation];
  }
}

- (CGRect)cornerLocationsRect
{
  x = self->_cornerLocationsRect.origin.x;
  y = self->_cornerLocationsRect.origin.y;
  width = self->_cornerLocationsRect.size.width;
  height = self->_cornerLocationsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PHVideoCallVideoGroupViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end