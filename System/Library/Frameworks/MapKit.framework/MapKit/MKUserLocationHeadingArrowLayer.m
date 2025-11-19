@interface MKUserLocationHeadingArrowLayer
- (CGPath)_pathWhenVisible:(BOOL)a3;
- (CGPoint)_positionWhenVisible:(BOOL)a3;
- (MKUserLocationHeadingArrowLayer)initWithUserLocationView:(id)a3;
- (_MKPuckAnnotationView)userLocationView;
- (double)_baseRadiusWhenVisible:(BOOL)a3;
- (double)_tipRadiusWhenVisible:(BOOL)a3;
- (id)_animationToSetVisible:(BOOL)a3;
- (id)_bezierPathWithBaseRadius:(double)a3 tipRadius:(double)a4 baseHalfAngle:(double)a5;
- (void)animateToSetVisible:(BOOL)a3 completion:(id)a4;
- (void)updateHeading:(double)a3;
- (void)updateHeadingAccuracy:(double)a3 previousAccuracy:(double)a4;
- (void)updateTintColor:(id)a3;
@end

@implementation MKUserLocationHeadingArrowLayer

- (_MKPuckAnnotationView)userLocationView
{
  WeakRetained = objc_loadWeakRetained(&self->_userLocationView);

  return WeakRetained;
}

- (double)_tipRadiusWhenVisible:(BOOL)a3
{
  if (a3)
  {
    return self->_tipRadius;
  }

  [(MKUserLocationHeadingArrowLayer *)self _baseRadiusWhenVisible:?];
  return result;
}

- (double)_baseRadiusWhenVisible:(BOOL)a3
{
  if (a3)
  {
    return self->_baseRadius;
  }

  +[_MKPuckAnnotationView innerDiameter];
  WeakRetained = objc_loadWeakRetained(&self->_userLocationView);
  UIRoundToViewScale();
  v7 = v6;

  return v7;
}

- (CGPoint)_positionWhenVisible:(BOOL)a3
{
  v4 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  if (!a3)
  {
    baseRadius = self->_baseRadius;
    [(MKUserLocationHeadingArrowLayer *)self _baseRadiusWhenVisible:0];
    v8 = baseRadius - v7;
    v9 = __sincos_stret(self->_headingRadians);
    v4 = v4 - v8 * v9.__sinval;
    v3 = v3 + v8 * v9.__cosval;
  }

  v10 = v4;
  v11 = v3;
  result.y = v11;
  result.x = v10;
  return result;
}

- (id)_bezierPathWithBaseRadius:(double)a3 tipRadius:(double)a4 baseHalfAngle:(double)a5
{
  [(MKUserLocationHeadingArrowLayer *)self bounds];
  MidX = CGRectGetMidX(v14);
  [(MKUserLocationHeadingArrowLayer *)self bounds];
  MidY = CGRectGetMidY(v15);
  v11 = [MEMORY[0x1E69DC728] bezierPath];
  [v11 addArcWithCenter:1 radius:MidX startAngle:MidY endAngle:a3 clockwise:{4.71238898 - a5, a5 + 4.71238898}];
  [v11 addLineToPoint:{MidX, MidY - a4}];
  [v11 closePath];

  return v11;
}

- (CGPath)_pathWhenVisible:(BOOL)a3
{
  v3 = a3;
  [(MKUserLocationHeadingArrowLayer *)self _baseRadiusWhenVisible:?];
  v6 = v5;
  [(MKUserLocationHeadingArrowLayer *)self _tipRadiusWhenVisible:v3];
  v8 = [(MKUserLocationHeadingArrowLayer *)self _bezierPathWithBaseRadius:v6 tipRadius:v7 baseHalfAngle:self->_baseHalfAngle];
  v9 = [v8 CGPath];

  return v9;
}

- (id)_animationToSetVisible:(BOOL)a3
{
  v3 = a3;
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"path"];
  [v5 setFromValue:{-[MKUserLocationHeadingArrowLayer _pathWhenVisible:](self, "_pathWhenVisible:", v3 ^ 1)}];
  [v5 setToValue:{-[MKUserLocationHeadingArrowLayer _pathWhenVisible:](self, "_pathWhenVisible:", v3)}];
  [v5 setDamping:2.0];
  [v5 setDuration:0.300000012];
  v6 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position"];
  v7 = MEMORY[0x1E696B098];
  [(MKUserLocationHeadingArrowLayer *)self _positionWhenVisible:v3 ^ 1];
  v8 = [v7 valueWithCGPoint:?];
  [v6 setFromValue:v8];

  v9 = MEMORY[0x1E696B098];
  [(MKUserLocationHeadingArrowLayer *)self _positionWhenVisible:v3];
  v10 = [v9 valueWithCGPoint:?];
  [v6 setToValue:v10];

  [v6 setDuration:0.300000012];
  v11 = [MEMORY[0x1E6979308] animation];
  v14[0] = v5;
  v14[1] = v6;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v11 setAnimations:v12];

  [v11 setDuration:0.300000012];

  return v11;
}

- (void)animateToSetVisible:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = [(MKUserLocationHeadingArrowLayer *)self _animationToSetVisible:v4];
  if (v6)
  {
    [(CALayer *)self _mapkit_removeAnimationImmediatelyForKey:@"headingHideAnimation"];
    [(CALayer *)self _mapkit_removeAnimationImmediatelyForKey:@"headingShowAnimation"];
    [(MKUserLocationHeadingArrowLayer *)self _positionWhenVisible:v4];
    [(MKUserLocationHeadingArrowLayer *)self setPosition:?];
    [(MKUserLocationHeadingArrowLayer *)self setPath:[(MKUserLocationHeadingArrowLayer *)self _pathWhenVisible:v4]];
    if (v4)
    {
      v7 = @"headingShowAnimation";
    }

    else
    {
      v7 = @"headingHideAnimation";
    }

    [(CALayer *)self _mapkit_addAnimation:v6 forKey:v7 completion:v8];
  }
}

- (void)updateTintColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];

  [(MKUserLocationHeadingArrowLayer *)self setFillColor:v6];
}

- (void)updateHeadingAccuracy:(double)a3 previousAccuracy:(double)a4
{
  v5 = [(MKUserLocationHeadingArrowLayer *)self _shouldBeVisibleForAccuracy:a3, a4];
  if (v5 == [(MKUserLocationHeadingArrowLayer *)self isHidden])
  {
    [(MKUserLocationHeadingArrowLayer *)self setHidden:0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __74__MKUserLocationHeadingArrowLayer_updateHeadingAccuracy_previousAccuracy___block_invoke;
    v6[3] = &unk_1E76CCF40;
    v6[4] = self;
    v7 = v5;
    [(MKUserLocationHeadingArrowLayer *)self animateToSetVisible:v5 completion:v6];
  }
}

uint64_t __74__MKUserLocationHeadingArrowLayer_updateHeadingAccuracy_previousAccuracy___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) setHidden:(*(result + 40) & 1) == 0];
  }

  return result;
}

- (void)updateHeading:(double)a3
{
  v4 = a3 * 0.0174532925;
  [(MKUserLocationHeadingArrowLayer *)self setHeadingRadians:a3 * 0.0174532925];
  memset(&v6, 0, sizeof(v6));
  CATransform3DMakeRotation(&v6, v4, 0.0, 0.0, 1.0);
  v5 = v6;
  [(MKUserLocationHeadingArrowLayer *)self setTransform:&v5];
}

- (MKUserLocationHeadingArrowLayer)initWithUserLocationView:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MKUserLocationHeadingArrowLayer;
  v5 = [(MKUserLocationHeadingArrowLayer *)&v12 init];
  if (v5)
  {
    GEOConfigGetDouble();
    v5->_maxUncertaintyAngleToShowArrow = v6;
    [objc_opt_class() innerDiameter];
    v8 = v7 * 0.5 + 1.0;
    v5->_baseRadius = v8;
    v5->_tipRadius = v8 + 5.0;
    v5->_baseHalfAngle = asin(9.0 / (v5->_baseRadius + v5->_baseRadius));
    [(MKUserLocationHeadingArrowLayer *)v5 setBounds:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), v5->_tipRadius + v5->_tipRadius, v5->_tipRadius + v5->_tipRadius];
    objc_storeWeak(&v5->_userLocationView, v4);
    [(MKUserLocationHeadingArrowLayer *)v5 setName:@"heading"];
    [(MKUserLocationHeadingArrowLayer *)v5 setAnchorPoint:0.5, 0.5];
    [(MKUserLocationHeadingArrowLayer *)v5 setZPosition:100.0];
    [(MKUserLocationHeadingArrowLayer *)v5 _positionWhenVisible:1];
    [(MKUserLocationHeadingArrowLayer *)v5 setPosition:?];
    [(MKUserLocationHeadingArrowLayer *)v5 setPath:[(MKUserLocationHeadingArrowLayer *)v5 _pathWhenVisible:1]];
    v9 = [v4 tintColor];
    [(MKUserLocationHeadingArrowLayer *)v5 updateTintColor:v9];

    [v4 heading];
    [(MKUserLocationHeadingArrowLayer *)v5 updateHeading:?];
    v10 = v5;
  }

  return v5;
}

@end