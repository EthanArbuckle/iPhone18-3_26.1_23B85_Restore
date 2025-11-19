@interface AXPIFingerView
+ (id)layerClass;
- (AXPIFingerAppearanceDelegate)appearanceDelegate;
- (AXPIFingerView)initWithFrame:(CGRect)a3;
- (AXPIFingerView)initWithFrame:(CGRect)a3 appearanceDelegate:(id)a4;
- (BOOL)isSelected;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)_iconScaleForForce:(double)a3;
- (id)_createProgressLayerWithDuration:(double)a3 inRect:(CGRect)a4;
- (id)backdropLayer;
- (void)_setPathForCurrentShape;
- (void)animateCircularProgressWithDuration:(double)a3 completion:(id)a4;
- (void)animateToTapWithDuration:(double)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)cancelExisingCircularProgressAnimation;
- (void)dealloc;
- (void)setForce:(double)a3;
- (void)setPressed:(BOOL)a3 animated:(BOOL)a4;
- (void)setSelected:(BOOL)a3;
- (void)setShape:(unint64_t)a3;
@end

@implementation AXPIFingerView

- (id)backdropLayer
{
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v3 = 0;
  }

  else
  {
    v3 = [(AXPIFingerView *)self layer];
  }

  return v3;
}

+ (id)layerClass
{
  UIAccessibilityIsInvertColorsEnabled();
  v2 = objc_opt_self();

  return v2;
}

- (AXPIFingerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [AXPIFingerView alloc];
  v9 = AXPIDefaultAppearanceForDevice();
  v10 = [(AXPIFingerView *)v8 initWithFrame:v9 appearanceDelegate:x, y, width, height];

  return v10;
}

- (AXPIFingerView)initWithFrame:(CGRect)a3 appearanceDelegate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v55.receiver = self;
  v55.super_class = AXPIFingerView;
  v10 = [(AXPIFingerView *)&v55 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [MEMORY[0x277D75348] clearColor];
    [(AXPIFingerView *)v10 setBackgroundColor:v11];

    [(AXPIFingerView *)v10 setClipsToBounds:0];
    [(AXPIFingerView *)v10 setAppearanceDelegate:v9];
    v12 = [[AXPIFingerLayer alloc] initWithAppearanceDelegate:v9];
    v13 = [(AXPIFingerView *)v10 layer];
    [v13 addSublayer:v12];

    [(AXPIFingerView *)v10 setCursorLayer:v12];
    v14 = [(AXPIFingerView *)v10 appearanceDelegate];
    v15 = [v14 showFingerOutlines];

    if (v15)
    {
      v16 = [MEMORY[0x277CD9F90] layer];
      v17 = [(AXPIFingerView *)v10 appearanceDelegate];
      v18 = [v17 strokeOutlineColor];
      [v16 setStrokeColor:{objc_msgSend(v18, "CGColor")}];

      v19 = [MEMORY[0x277D75348] clearColor];
      [v16 setFillColor:{objc_msgSend(v19, "CGColor")}];

      v20 = [(AXPIFingerView *)v10 appearanceDelegate];
      [v20 strokeOutlineWidth];
      v22 = v21;
      v23 = [(AXPIFingerView *)v10 appearanceDelegate];
      [v23 strokeWidth];
      [v16 setLineWidth:v24 + v22 * 2.0];

      v25 = [(AXPIFingerView *)v10 layer];
      [v25 addSublayer:v16];

      [(AXPIFingerView *)v10 setOuterStrokeTrackLayer:v16];
      v26 = [MEMORY[0x277CD9F90] layer];

      v27 = [(AXPIFingerView *)v10 appearanceDelegate];
      v28 = [v27 deselectedStrokeColor];
      [v26 setStrokeColor:{objc_msgSend(v28, "CGColor")}];

      v29 = [MEMORY[0x277D75348] clearColor];
      [v26 setFillColor:{objc_msgSend(v29, "CGColor")}];

      v30 = [(AXPIFingerView *)v10 appearanceDelegate];
      [v30 strokeWidth];
      [v26 setLineWidth:?];

      v31 = [(AXPIFingerView *)v10 layer];
      [v31 addSublayer:v26];

      [(AXPIFingerView *)v10 setOuterStrokeLayer:v26];
    }

    v32 = [(AXPIFingerView *)v10 appearanceDelegate];
    v33 = [v32 showInnerCircle];

    if (v33)
    {
      v34 = [(AXPIFingerView *)v10 appearanceDelegate];
      [v34 fingerInnerCircleInnerRadius];
      v36 = v35;
      v37 = [(AXPIFingerView *)v10 appearanceDelegate];
      [v37 innerCircleStrokeWidth];
      v39 = v38 + v36 * 2.0;

      v40 = [(AXPIFingerView *)v10 appearanceDelegate];
      [v40 fingerInnerCircleInnerRadius];
      v42 = v41;
      v43 = [(AXPIFingerView *)v10 appearanceDelegate];
      [v43 innerCircleStrokeWidth];
      v45 = v44 + v42 * 2.0;

      v46 = [MEMORY[0x277CD9F90] layer];
      v47 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x + (width - v39) * 0.5, y + (height - v45) * 0.5, v39, v45}];
      [v46 setPath:{objc_msgSend(v47, "CGPath")}];

      v48 = [(AXPIFingerView *)v10 appearanceDelegate];
      v49 = [v48 strokeOutlineColor];
      [v46 setStrokeColor:{objc_msgSend(v49, "CGColor")}];

      v50 = [(AXPIFingerView *)v10 appearanceDelegate];
      v51 = [v50 deselectedStrokeColor];
      [v46 setFillColor:{objc_msgSend(v51, "CGColor")}];

      v52 = [(AXPIFingerView *)v10 appearanceDelegate];
      [v52 innerCircleStrokeWidth];
      [v46 setLineWidth:?];

      [v46 setLineJoin:*MEMORY[0x277CDA7A0]];
      v53 = [(AXPIFingerView *)v10 layer];
      [v53 addSublayer:v46];

      [(AXPIFingerView *)v10 setInnerStrokeLayer:v46];
    }

    [(AXPIFingerView *)v10 _setPathForCurrentShape];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [(AXPIFingerView *)self outerStrokeTrackLayer];
  [v3 removeAllAnimations];

  v4 = [(AXPIFingerView *)self outerStrokeLayer];
  [v4 removeAllAnimations];

  v5 = [(AXPIFingerView *)self innerStrokeLayer];
  [v5 removeAllAnimations];

  v6 = [(AXPIFingerView *)self outerStrokeTrackLayer];
  [v6 removeFromSuperlayer];

  v7 = [(AXPIFingerView *)self outerStrokeLayer];
  [v7 removeFromSuperlayer];

  v8 = [(AXPIFingerView *)self innerStrokeLayer];
  [v8 removeFromSuperlayer];

  v9.receiver = self;
  v9.super_class = AXPIFingerView;
  [(AXPIFingerView *)&v9 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(AXPIFingerView *)self appearanceDelegate:a3.width];
  [v3 fingerWidth];
  v5 = v4;

  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = [(AXPIFingerView *)self cursorLayer];
  [v6 outerFrame];
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

- (void)setSelected:(BOOL)a3
{
  if ([(AXPIFingerView *)self isSelected]!= a3)
  {
    v5 = [(AXPIFingerView *)self appearanceDelegate];
    v6 = v5;
    if (a3)
    {
      [v5 selectedStrokeColor];
    }

    else
    {
      [v5 deselectedStrokeColor];
    }
    v7 = ;
    v8 = [v7 CGColor];

    v9 = [(AXPIFingerView *)self outerStrokeLayer];
    [v9 setStrokeColor:v8];
  }
}

- (BOOL)isSelected
{
  v2 = [(AXPIFingerView *)self cursorLayer];
  v3 = [v2 isSelected];

  return v3;
}

- (void)setPressed:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_pressed != a3)
  {
    v5 = a4;
    self->_pressed = a3;
    [MEMORY[0x277CD9FF0] begin];
    if (a3)
    {
      v8 = 0.1;
      if (!v5)
      {
        v8 = 0.0;
      }

      [MEMORY[0x277CD9FF0] setAnimationDuration:v8];
      v9 = [(AXPIFingerView *)self cursorLayer];
      [v9 setPressed:1];

      [MEMORY[0x277CD9FF0] commit];
      v10 = [(AXPIFingerView *)self appearanceDelegate];
      v11 = [v10 selectedStrokeColor];
    }

    else
    {
      v12 = 0.16;
      if (!v5)
      {
        v12 = 0.0;
      }

      [MEMORY[0x277CD9FF0] setAnimationDuration:v12];
      v13 = [(AXPIFingerView *)self cursorLayer];
      [v13 setPressed:0];

      [MEMORY[0x277CD9FF0] commit];
      v10 = [(AXPIFingerView *)self appearanceDelegate];
      v11 = [v10 deselectedStrokeColor];
    }

    v14 = v11;
    v15 = [v11 CGColor];

    v16 = [(AXPIFingerView *)self outerStrokeLayer];
    [v16 setStrokeColor:v15];

    v17 = [(AXPIFingerView *)self innerStrokeLayer];
    [v17 setFillColor:v15];
  }
}

- (void)setShape:(unint64_t)a3
{
  if (self->_shape != a3)
  {
    self->_shape = a3;
    [(AXPIFingerView *)self _setPathForCurrentShape];
  }
}

- (void)animateCircularProgressWithDuration:(double)a3 completion:(id)a4
{
  v6 = a4;
  [(AXPIFingerView *)self cancelExisingCircularProgressAnimation];
  [(AXPIFingerView *)self setLastProgressCompletionBlock:v6];

  v7 = [(AXPIFingerView *)self cursorLayer];
  [v7 outerFrame];
  v13 = [(AXPIFingerView *)self _createProgressLayerWithDuration:a3 inRect:v8, v9, v10, v11];

  v12 = [(AXPIFingerView *)self layer];
  [v12 addSublayer:v13];

  [(AXPIFingerView *)self setProgressLayer:v13];
}

- (void)cancelExisingCircularProgressAnimation
{
  v3 = [(AXPIFingerView *)self progressLayer];
  [v3 removeFromSuperlayer];

  [(AXPIFingerView *)self setProgressLayer:0];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v4 = a4;
  v6 = [(AXPIFingerView *)self lastProgressCompletionBlock];

  if (v6)
  {
    v7 = [(AXPIFingerView *)self lastProgressCompletionBlock];
    v7[2](v7, v4);

    [(AXPIFingerView *)self setLastProgressCompletionBlock:0];
  }
}

- (void)_setPathForCurrentShape
{
  v3 = [(AXPIFingerView *)self cursorLayer];
  [v3 outerFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  y = v7;
  width = v9;
  height = v11;
  x = v5;
  if (!self->_shape)
  {
    v16 = [(AXPIFingerView *)self appearanceDelegate];
    v17 = [v16 showFingerOutlines];

    y = v7;
    width = v9;
    height = v11;
    x = v5;
    if ((v17 & 1) == 0)
    {
      v18 = [(AXPIFingerView *)self appearanceDelegate];
      [v18 strokeWidth];
      v20 = v19;

      v44.origin.x = v5;
      v44.origin.y = v7;
      v44.size.width = v9;
      v44.size.height = v11;
      v45 = CGRectInset(v44, v20 * 0.5, v20 * 0.5);
      x = v45.origin.x;
      y = v45.origin.y;
      width = v45.size.width;
      height = v45.size.height;
    }
  }

  v21 = [(AXPIFingerView *)self cursorLayer];
  v22 = [MEMORY[0x277D75208] bezierPathForFingerShape:self->_shape inRect:0 curveOnly:{x, y, width, height}];
  [v21 setPath:{objc_msgSend(v22, "CGPath")}];

  v23 = [(AXPIFingerView *)self outerStrokeTrackLayer];
  v24 = [MEMORY[0x277D75208] bezierPathForFingerShape:self->_shape inRect:1 curveOnly:{v5, v7, v9, v11}];
  [v23 setPath:{objc_msgSend(v24, "CGPath")}];

  v25 = [(AXPIFingerView *)self outerStrokeLayer];
  v26 = [MEMORY[0x277D75208] bezierPathForFingerShape:self->_shape inRect:1 curveOnly:{v5, v7, v9, v11}];
  [v25 setPath:{objc_msgSend(v26, "CGPath")}];

  if (self->_shape)
  {
    v28 = *MEMORY[0x277CBF3A0];
    v27 = *(MEMORY[0x277CBF3A0] + 8);
    v29 = *(MEMORY[0x277CBF3A0] + 16);
    v30 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v31 = [(AXPIFingerView *)self appearanceDelegate];
    [v31 fingerInnerCircleInnerRadius];
    v33 = v32;
    v34 = [(AXPIFingerView *)self appearanceDelegate];
    [v34 innerCircleStrokeWidth];
    v29 = v35 + v33 * 2.0;

    v36 = [(AXPIFingerView *)self appearanceDelegate];
    [v36 fingerInnerCircleInnerRadius];
    v38 = v37;
    v39 = [(AXPIFingerView *)self appearanceDelegate];
    [v39 innerCircleStrokeWidth];
    v30 = v40 + v38 * 2.0;

    v28 = v5 + (v9 - v29) * 0.5;
    v27 = v7 + (v11 - v30) * 0.5;
  }

  v42 = [(AXPIFingerView *)self innerStrokeLayer];
  v41 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v28, v27, v29, v30}];
  [v42 setPath:{objc_msgSend(v41, "CGPath")}];
}

- (id)_createProgressLayerWithDuration:(double)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = objc_alloc_init(MEMORY[0x277CD9F90]);
  v11 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  [v10 setPosition:{*MEMORY[0x277CBF348], v12}];
  v13 = *MEMORY[0x277CDA780];
  [v10 setLineCap:*MEMORY[0x277CDA780]];
  v14 = [MEMORY[0x277D75208] bezierPathForFingerShape:self->_shape inRect:1 curveOnly:{x, y, width, height}];
  [v10 setPath:{objc_msgSend(v14, "CGPath")}];
  [MEMORY[0x277CD9FF0] begin];
  v15 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeEnd"];
  [v15 setDuration:a3 + -0.100000001];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [v15 setFromValue:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v15 setToValue:v17];

  [v15 setDelegate:self];
  [v10 addAnimation:v15 forKey:@"drawCircleAnimation"];
  [MEMORY[0x277CD9FF0] commit];
  v18 = [(AXPIFingerView *)self isPressed];
  v19 = [(AXPIFingerView *)self appearanceDelegate];
  v20 = v19;
  if (v18)
  {
    [v19 pressedCircularProgressFillColor];
  }

  else
  {
    [v19 circularProgressFillColor];
  }
  v21 = ;
  [v10 setStrokeColor:{objc_msgSend(v21, "CGColor")}];

  v22 = [MEMORY[0x277D75348] clearColor];
  [v10 setFillColor:{objc_msgSend(v22, "CGColor")}];

  v23 = [(AXPIFingerView *)self appearanceDelegate];
  [v23 strokeWidth];
  [v10 setLineWidth:?];

  [v10 setName:@"holdDurationProgressTrack"];
  v24 = [(AXPIFingerView *)self window];
  v25 = [v24 screen];
  [v25 scale];
  [v10 setContentsScale:?];

  v26 = [(AXPIFingerView *)self appearanceDelegate];
  LOBYTE(v25) = [v26 showFingerOutlines];

  if (v25)
  {
    v27 = v10;
  }

  else
  {
    v27 = objc_alloc_init(MEMORY[0x277CD9F90]);
    [v27 setPosition:{v11, v12}];
    [v27 setLineCap:v13];
    [v27 setPath:{objc_msgSend(v14, "CGPath")}];
    v28 = [MEMORY[0x277D75348] clearColor];
    [v27 setFillColor:{objc_msgSend(v28, "CGColor")}];

    v29 = [(AXPIFingerView *)self appearanceDelegate];
    [v29 strokeWidth];
    [v27 setLineWidth:v30 + 4.0];

    [v27 setName:@"holdDurationBaseProgressTrack"];
    v31 = [(AXPIFingerView *)self window];
    v32 = [v31 screen];
    [v32 scale];
    [v27 setContentsScale:?];

    [v27 addAnimation:v15 forKey:@"drawCircleAnimation"];
    v33 = [(AXPIFingerView *)self appearanceDelegate];
    v34 = [v33 pressedCircularProgressFillColor];
    v35 = [v34 CGColor];

    if ([(AXPIFingerView *)self isPressed])
    {
      [v27 setStrokeColor:v35];
    }

    else
    {
      v36 = [MEMORY[0x277D75348] blackColor];
      [v27 setStrokeColor:{objc_msgSend(v36, "CGColor")}];
    }

    [v27 addSublayer:v10];
  }

  return v27;
}

- (void)animateToTapWithDuration:(double)a3
{
  v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeColor"];
  v5 = [(AXPIFingerView *)self appearanceDelegate];
  v6 = [v5 selectedStrokeColor];
  [v8 setToValue:{objc_msgSend(v6, "CGColor")}];

  [v8 setDuration:a3];
  [v8 setRemovedOnCompletion:1];
  v7 = [(AXPIFingerView *)self outerStrokeLayer];
  [v7 addAnimation:v8 forKey:@"AXPIFingerView-SetSelected"];
}

- (double)_iconScaleForForce:(double)a3
{
  v3 = a3 * 0.001 + 1.0;
  if (v3 > 1.5)
  {
    v3 = 1.5;
  }

  if (a3 <= 100.0)
  {
    return 1.0;
  }

  else
  {
    return v3;
  }
}

- (void)setForce:(double)a3
{
  if (self->_force != a3)
  {
    v10 = v3;
    v11 = v4;
    self->_force = a3;
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *&v9.a = *MEMORY[0x277CBF2C0];
    *&v9.c = v6;
    *&v9.tx = *(MEMORY[0x277CBF2C0] + 32);
    [(AXPIFingerView *)self _iconScaleForForce:?];
    if (v7 > 1.0)
    {
      CGAffineTransformMakeScale(&v9, v7, v7);
    }

    v8 = v9;
    [(AXPIFingerView *)self setTransform:&v8];
  }
}

- (AXPIFingerAppearanceDelegate)appearanceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appearanceDelegate);

  return WeakRetained;
}

@end