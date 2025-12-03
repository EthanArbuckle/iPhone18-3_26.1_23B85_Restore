@interface AXPIFingerView
+ (id)layerClass;
- (AXPIFingerAppearanceDelegate)appearanceDelegate;
- (AXPIFingerView)initWithFrame:(CGRect)frame;
- (AXPIFingerView)initWithFrame:(CGRect)frame appearanceDelegate:(id)delegate;
- (BOOL)isSelected;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_iconScaleForForce:(double)force;
- (id)_createProgressLayerWithDuration:(double)duration inRect:(CGRect)rect;
- (id)backdropLayer;
- (void)_setPathForCurrentShape;
- (void)animateCircularProgressWithDuration:(double)duration completion:(id)completion;
- (void)animateToTapWithDuration:(double)duration;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)cancelExisingCircularProgressAnimation;
- (void)dealloc;
- (void)setForce:(double)force;
- (void)setPressed:(BOOL)pressed animated:(BOOL)animated;
- (void)setSelected:(BOOL)selected;
- (void)setShape:(unint64_t)shape;
@end

@implementation AXPIFingerView

- (id)backdropLayer
{
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    layer = 0;
  }

  else
  {
    layer = [(AXPIFingerView *)self layer];
  }

  return layer;
}

+ (id)layerClass
{
  UIAccessibilityIsInvertColorsEnabled();
  v2 = objc_opt_self();

  return v2;
}

- (AXPIFingerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [AXPIFingerView alloc];
  v9 = AXPIDefaultAppearanceForDevice();
  height = [(AXPIFingerView *)v8 initWithFrame:v9 appearanceDelegate:x, y, width, height];

  return height;
}

- (AXPIFingerView)initWithFrame:(CGRect)frame appearanceDelegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  v55.receiver = self;
  v55.super_class = AXPIFingerView;
  height = [(AXPIFingerView *)&v55 initWithFrame:x, y, width, height];
  if (height)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(AXPIFingerView *)height setBackgroundColor:clearColor];

    [(AXPIFingerView *)height setClipsToBounds:0];
    [(AXPIFingerView *)height setAppearanceDelegate:delegateCopy];
    v12 = [[AXPIFingerLayer alloc] initWithAppearanceDelegate:delegateCopy];
    layer = [(AXPIFingerView *)height layer];
    [layer addSublayer:v12];

    [(AXPIFingerView *)height setCursorLayer:v12];
    appearanceDelegate = [(AXPIFingerView *)height appearanceDelegate];
    showFingerOutlines = [appearanceDelegate showFingerOutlines];

    if (showFingerOutlines)
    {
      layer2 = [MEMORY[0x277CD9F90] layer];
      appearanceDelegate2 = [(AXPIFingerView *)height appearanceDelegate];
      strokeOutlineColor = [appearanceDelegate2 strokeOutlineColor];
      [layer2 setStrokeColor:{objc_msgSend(strokeOutlineColor, "CGColor")}];

      clearColor2 = [MEMORY[0x277D75348] clearColor];
      [layer2 setFillColor:{objc_msgSend(clearColor2, "CGColor")}];

      appearanceDelegate3 = [(AXPIFingerView *)height appearanceDelegate];
      [appearanceDelegate3 strokeOutlineWidth];
      v22 = v21;
      appearanceDelegate4 = [(AXPIFingerView *)height appearanceDelegate];
      [appearanceDelegate4 strokeWidth];
      [layer2 setLineWidth:v24 + v22 * 2.0];

      layer3 = [(AXPIFingerView *)height layer];
      [layer3 addSublayer:layer2];

      [(AXPIFingerView *)height setOuterStrokeTrackLayer:layer2];
      layer4 = [MEMORY[0x277CD9F90] layer];

      appearanceDelegate5 = [(AXPIFingerView *)height appearanceDelegate];
      deselectedStrokeColor = [appearanceDelegate5 deselectedStrokeColor];
      [layer4 setStrokeColor:{objc_msgSend(deselectedStrokeColor, "CGColor")}];

      clearColor3 = [MEMORY[0x277D75348] clearColor];
      [layer4 setFillColor:{objc_msgSend(clearColor3, "CGColor")}];

      appearanceDelegate6 = [(AXPIFingerView *)height appearanceDelegate];
      [appearanceDelegate6 strokeWidth];
      [layer4 setLineWidth:?];

      layer5 = [(AXPIFingerView *)height layer];
      [layer5 addSublayer:layer4];

      [(AXPIFingerView *)height setOuterStrokeLayer:layer4];
    }

    appearanceDelegate7 = [(AXPIFingerView *)height appearanceDelegate];
    showInnerCircle = [appearanceDelegate7 showInnerCircle];

    if (showInnerCircle)
    {
      appearanceDelegate8 = [(AXPIFingerView *)height appearanceDelegate];
      [appearanceDelegate8 fingerInnerCircleInnerRadius];
      v36 = v35;
      appearanceDelegate9 = [(AXPIFingerView *)height appearanceDelegate];
      [appearanceDelegate9 innerCircleStrokeWidth];
      v39 = v38 + v36 * 2.0;

      appearanceDelegate10 = [(AXPIFingerView *)height appearanceDelegate];
      [appearanceDelegate10 fingerInnerCircleInnerRadius];
      v42 = v41;
      appearanceDelegate11 = [(AXPIFingerView *)height appearanceDelegate];
      [appearanceDelegate11 innerCircleStrokeWidth];
      v45 = v44 + v42 * 2.0;

      layer6 = [MEMORY[0x277CD9F90] layer];
      v47 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x + (width - v39) * 0.5, y + (height - v45) * 0.5, v39, v45}];
      [layer6 setPath:{objc_msgSend(v47, "CGPath")}];

      appearanceDelegate12 = [(AXPIFingerView *)height appearanceDelegate];
      strokeOutlineColor2 = [appearanceDelegate12 strokeOutlineColor];
      [layer6 setStrokeColor:{objc_msgSend(strokeOutlineColor2, "CGColor")}];

      appearanceDelegate13 = [(AXPIFingerView *)height appearanceDelegate];
      deselectedStrokeColor2 = [appearanceDelegate13 deselectedStrokeColor];
      [layer6 setFillColor:{objc_msgSend(deselectedStrokeColor2, "CGColor")}];

      appearanceDelegate14 = [(AXPIFingerView *)height appearanceDelegate];
      [appearanceDelegate14 innerCircleStrokeWidth];
      [layer6 setLineWidth:?];

      [layer6 setLineJoin:*MEMORY[0x277CDA7A0]];
      layer7 = [(AXPIFingerView *)height layer];
      [layer7 addSublayer:layer6];

      [(AXPIFingerView *)height setInnerStrokeLayer:layer6];
    }

    [(AXPIFingerView *)height _setPathForCurrentShape];
  }

  return height;
}

- (void)dealloc
{
  outerStrokeTrackLayer = [(AXPIFingerView *)self outerStrokeTrackLayer];
  [outerStrokeTrackLayer removeAllAnimations];

  outerStrokeLayer = [(AXPIFingerView *)self outerStrokeLayer];
  [outerStrokeLayer removeAllAnimations];

  innerStrokeLayer = [(AXPIFingerView *)self innerStrokeLayer];
  [innerStrokeLayer removeAllAnimations];

  outerStrokeTrackLayer2 = [(AXPIFingerView *)self outerStrokeTrackLayer];
  [outerStrokeTrackLayer2 removeFromSuperlayer];

  outerStrokeLayer2 = [(AXPIFingerView *)self outerStrokeLayer];
  [outerStrokeLayer2 removeFromSuperlayer];

  innerStrokeLayer2 = [(AXPIFingerView *)self innerStrokeLayer];
  [innerStrokeLayer2 removeFromSuperlayer];

  v9.receiver = self;
  v9.super_class = AXPIFingerView;
  [(AXPIFingerView *)&v9 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(AXPIFingerView *)self appearanceDelegate:fits.width];
  [v3 fingerWidth];
  v5 = v4;

  v6 = v5;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  cursorLayer = [(AXPIFingerView *)self cursorLayer];
  [cursorLayer outerFrame];
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

- (void)setSelected:(BOOL)selected
{
  if ([(AXPIFingerView *)self isSelected]!= selected)
  {
    appearanceDelegate = [(AXPIFingerView *)self appearanceDelegate];
    v6 = appearanceDelegate;
    if (selected)
    {
      [appearanceDelegate selectedStrokeColor];
    }

    else
    {
      [appearanceDelegate deselectedStrokeColor];
    }
    v7 = ;
    cGColor = [v7 CGColor];

    outerStrokeLayer = [(AXPIFingerView *)self outerStrokeLayer];
    [outerStrokeLayer setStrokeColor:cGColor];
  }
}

- (BOOL)isSelected
{
  cursorLayer = [(AXPIFingerView *)self cursorLayer];
  isSelected = [cursorLayer isSelected];

  return isSelected;
}

- (void)setPressed:(BOOL)pressed animated:(BOOL)animated
{
  if (self->_pressed != pressed)
  {
    animatedCopy = animated;
    self->_pressed = pressed;
    [MEMORY[0x277CD9FF0] begin];
    if (pressed)
    {
      v8 = 0.1;
      if (!animatedCopy)
      {
        v8 = 0.0;
      }

      [MEMORY[0x277CD9FF0] setAnimationDuration:v8];
      cursorLayer = [(AXPIFingerView *)self cursorLayer];
      [cursorLayer setPressed:1];

      [MEMORY[0x277CD9FF0] commit];
      appearanceDelegate = [(AXPIFingerView *)self appearanceDelegate];
      selectedStrokeColor = [appearanceDelegate selectedStrokeColor];
    }

    else
    {
      v12 = 0.16;
      if (!animatedCopy)
      {
        v12 = 0.0;
      }

      [MEMORY[0x277CD9FF0] setAnimationDuration:v12];
      cursorLayer2 = [(AXPIFingerView *)self cursorLayer];
      [cursorLayer2 setPressed:0];

      [MEMORY[0x277CD9FF0] commit];
      appearanceDelegate = [(AXPIFingerView *)self appearanceDelegate];
      selectedStrokeColor = [appearanceDelegate deselectedStrokeColor];
    }

    v14 = selectedStrokeColor;
    cGColor = [selectedStrokeColor CGColor];

    outerStrokeLayer = [(AXPIFingerView *)self outerStrokeLayer];
    [outerStrokeLayer setStrokeColor:cGColor];

    innerStrokeLayer = [(AXPIFingerView *)self innerStrokeLayer];
    [innerStrokeLayer setFillColor:cGColor];
  }
}

- (void)setShape:(unint64_t)shape
{
  if (self->_shape != shape)
  {
    self->_shape = shape;
    [(AXPIFingerView *)self _setPathForCurrentShape];
  }
}

- (void)animateCircularProgressWithDuration:(double)duration completion:(id)completion
{
  completionCopy = completion;
  [(AXPIFingerView *)self cancelExisingCircularProgressAnimation];
  [(AXPIFingerView *)self setLastProgressCompletionBlock:completionCopy];

  cursorLayer = [(AXPIFingerView *)self cursorLayer];
  [cursorLayer outerFrame];
  v13 = [(AXPIFingerView *)self _createProgressLayerWithDuration:duration inRect:v8, v9, v10, v11];

  layer = [(AXPIFingerView *)self layer];
  [layer addSublayer:v13];

  [(AXPIFingerView *)self setProgressLayer:v13];
}

- (void)cancelExisingCircularProgressAnimation
{
  progressLayer = [(AXPIFingerView *)self progressLayer];
  [progressLayer removeFromSuperlayer];

  [(AXPIFingerView *)self setProgressLayer:0];
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  finishedCopy = finished;
  lastProgressCompletionBlock = [(AXPIFingerView *)self lastProgressCompletionBlock];

  if (lastProgressCompletionBlock)
  {
    lastProgressCompletionBlock2 = [(AXPIFingerView *)self lastProgressCompletionBlock];
    lastProgressCompletionBlock2[2](lastProgressCompletionBlock2, finishedCopy);

    [(AXPIFingerView *)self setLastProgressCompletionBlock:0];
  }
}

- (void)_setPathForCurrentShape
{
  cursorLayer = [(AXPIFingerView *)self cursorLayer];
  [cursorLayer outerFrame];
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
    appearanceDelegate = [(AXPIFingerView *)self appearanceDelegate];
    showFingerOutlines = [appearanceDelegate showFingerOutlines];

    y = v7;
    width = v9;
    height = v11;
    x = v5;
    if ((showFingerOutlines & 1) == 0)
    {
      appearanceDelegate2 = [(AXPIFingerView *)self appearanceDelegate];
      [appearanceDelegate2 strokeWidth];
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

  cursorLayer2 = [(AXPIFingerView *)self cursorLayer];
  v22 = [MEMORY[0x277D75208] bezierPathForFingerShape:self->_shape inRect:0 curveOnly:{x, y, width, height}];
  [cursorLayer2 setPath:{objc_msgSend(v22, "CGPath")}];

  outerStrokeTrackLayer = [(AXPIFingerView *)self outerStrokeTrackLayer];
  v24 = [MEMORY[0x277D75208] bezierPathForFingerShape:self->_shape inRect:1 curveOnly:{v5, v7, v9, v11}];
  [outerStrokeTrackLayer setPath:{objc_msgSend(v24, "CGPath")}];

  outerStrokeLayer = [(AXPIFingerView *)self outerStrokeLayer];
  v26 = [MEMORY[0x277D75208] bezierPathForFingerShape:self->_shape inRect:1 curveOnly:{v5, v7, v9, v11}];
  [outerStrokeLayer setPath:{objc_msgSend(v26, "CGPath")}];

  if (self->_shape)
  {
    v28 = *MEMORY[0x277CBF3A0];
    v27 = *(MEMORY[0x277CBF3A0] + 8);
    v29 = *(MEMORY[0x277CBF3A0] + 16);
    v30 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    appearanceDelegate3 = [(AXPIFingerView *)self appearanceDelegate];
    [appearanceDelegate3 fingerInnerCircleInnerRadius];
    v33 = v32;
    appearanceDelegate4 = [(AXPIFingerView *)self appearanceDelegate];
    [appearanceDelegate4 innerCircleStrokeWidth];
    v29 = v35 + v33 * 2.0;

    appearanceDelegate5 = [(AXPIFingerView *)self appearanceDelegate];
    [appearanceDelegate5 fingerInnerCircleInnerRadius];
    v38 = v37;
    appearanceDelegate6 = [(AXPIFingerView *)self appearanceDelegate];
    [appearanceDelegate6 innerCircleStrokeWidth];
    v30 = v40 + v38 * 2.0;

    v28 = v5 + (v9 - v29) * 0.5;
    v27 = v7 + (v11 - v30) * 0.5;
  }

  innerStrokeLayer = [(AXPIFingerView *)self innerStrokeLayer];
  v41 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v28, v27, v29, v30}];
  [innerStrokeLayer setPath:{objc_msgSend(v41, "CGPath")}];
}

- (id)_createProgressLayerWithDuration:(double)duration inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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
  [v15 setDuration:duration + -0.100000001];
  v16 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [v15 setFromValue:v16];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v15 setToValue:v17];

  [v15 setDelegate:self];
  [v10 addAnimation:v15 forKey:@"drawCircleAnimation"];
  [MEMORY[0x277CD9FF0] commit];
  isPressed = [(AXPIFingerView *)self isPressed];
  appearanceDelegate = [(AXPIFingerView *)self appearanceDelegate];
  v20 = appearanceDelegate;
  if (isPressed)
  {
    [appearanceDelegate pressedCircularProgressFillColor];
  }

  else
  {
    [appearanceDelegate circularProgressFillColor];
  }
  v21 = ;
  [v10 setStrokeColor:{objc_msgSend(v21, "CGColor")}];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v10 setFillColor:{objc_msgSend(clearColor, "CGColor")}];

  appearanceDelegate2 = [(AXPIFingerView *)self appearanceDelegate];
  [appearanceDelegate2 strokeWidth];
  [v10 setLineWidth:?];

  [v10 setName:@"holdDurationProgressTrack"];
  window = [(AXPIFingerView *)self window];
  screen = [window screen];
  [screen scale];
  [v10 setContentsScale:?];

  appearanceDelegate3 = [(AXPIFingerView *)self appearanceDelegate];
  LOBYTE(screen) = [appearanceDelegate3 showFingerOutlines];

  if (screen)
  {
    v27 = v10;
  }

  else
  {
    v27 = objc_alloc_init(MEMORY[0x277CD9F90]);
    [v27 setPosition:{v11, v12}];
    [v27 setLineCap:v13];
    [v27 setPath:{objc_msgSend(v14, "CGPath")}];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v27 setFillColor:{objc_msgSend(clearColor2, "CGColor")}];

    appearanceDelegate4 = [(AXPIFingerView *)self appearanceDelegate];
    [appearanceDelegate4 strokeWidth];
    [v27 setLineWidth:v30 + 4.0];

    [v27 setName:@"holdDurationBaseProgressTrack"];
    window2 = [(AXPIFingerView *)self window];
    screen2 = [window2 screen];
    [screen2 scale];
    [v27 setContentsScale:?];

    [v27 addAnimation:v15 forKey:@"drawCircleAnimation"];
    appearanceDelegate5 = [(AXPIFingerView *)self appearanceDelegate];
    pressedCircularProgressFillColor = [appearanceDelegate5 pressedCircularProgressFillColor];
    cGColor = [pressedCircularProgressFillColor CGColor];

    if ([(AXPIFingerView *)self isPressed])
    {
      [v27 setStrokeColor:cGColor];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [v27 setStrokeColor:{objc_msgSend(blackColor, "CGColor")}];
    }

    [v27 addSublayer:v10];
  }

  return v27;
}

- (void)animateToTapWithDuration:(double)duration
{
  v8 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"strokeColor"];
  appearanceDelegate = [(AXPIFingerView *)self appearanceDelegate];
  selectedStrokeColor = [appearanceDelegate selectedStrokeColor];
  [v8 setToValue:{objc_msgSend(selectedStrokeColor, "CGColor")}];

  [v8 setDuration:duration];
  [v8 setRemovedOnCompletion:1];
  outerStrokeLayer = [(AXPIFingerView *)self outerStrokeLayer];
  [outerStrokeLayer addAnimation:v8 forKey:@"AXPIFingerView-SetSelected"];
}

- (double)_iconScaleForForce:(double)force
{
  v3 = force * 0.001 + 1.0;
  if (v3 > 1.5)
  {
    v3 = 1.5;
  }

  if (force <= 100.0)
  {
    return 1.0;
  }

  else
  {
    return v3;
  }
}

- (void)setForce:(double)force
{
  if (self->_force != force)
  {
    v10 = v3;
    v11 = v4;
    self->_force = force;
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