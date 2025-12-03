@interface GCControllerThumbstickInputView
- (GCControllerThumbstickInputView)init;
- (GCControllerThumbstickInputView)initWithCoder:(id)coder;
- (uint64_t)valueChangedHandler;
- (void)encodeWithCoder:(id)coder;
- (void)initButtons;
- (void)processTouch:(id)touch;
- (void)setThumbstickPos:(CGPoint)pos center:(CGPoint)center;
- (void)setValueChangedHandler:(void *)handler;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation GCControllerThumbstickInputView

- (GCControllerThumbstickInputView)init
{
  v5.receiver = self;
  v5.super_class = GCControllerThumbstickInputView;
  v2 = [(GCControllerThumbstickInputView *)&v5 initWithFrame:0.0, 0.0, 150.0, 150.0];
  v3 = v2;
  if (v2)
  {
    [(GCControllerThumbstickInputView *)v2 initButtons];
    [(GCControllerThumbstickInputView *)v3 setUserInteractionEnabled:1];
  }

  return v3;
}

- (GCControllerThumbstickInputView)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GCControllerThumbstickInputView;
  v5 = [(GCControllerThumbstickInputView *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"background"];
    background = v5->_background;
    v5->_background = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"touchTarget"];
    touchTarget = v5->_touchTarget;
    v5->_touchTarget = v8;

    [(GCControllerThumbstickInputView *)v5 setUserInteractionEnabled:1];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GCControllerThumbstickInputView;
  coderCopy = coder;
  [(GCControllerThumbstickInputView *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_background forKey:{@"background", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_touchTarget forKey:@"touchTarget"];
}

- (void)processTouch:(id)touch
{
  [touch locationInView:self->_background];
  v5 = v4;
  v7 = v6;
  background = self->_background;
  [(UIVisualEffectView *)background center];
  v10 = v9;
  v12 = v11;
  superview = [(UIVisualEffectView *)self->_background superview];
  [(UIVisualEffectView *)background convertPoint:superview fromView:v10, v12];
  v15 = v14;
  v17 = v16;

  if ([(UIVisualEffectView *)self->_touchTarget isHidden])
  {
    p_touchPrevPos = &self->_touchPrevPos;
    valueChangedHandler = self->_valueChangedHandler;
    if (valueChangedHandler)
    {
      v18.n128_f64[0] = (v5 - p_touchPrevPos->x) / 50.0;
      v18.n128_f32[0] = v18.n128_f64[0];
      v18.n128_f32[0] = v18.n128_f32[0] + v18.n128_f32[0];
      v19.n128_f64[0] = (v7 - self->_touchPrevPos.y) / -50.0;
      v19.n128_f32[0] = v19.n128_f64[0];
      v19.n128_f32[0] = v19.n128_f32[0] + v19.n128_f32[0];
      if (sqrtf((v19.n128_f32[0] * v19.n128_f32[0]) + (v18.n128_f32[0] * v18.n128_f32[0])) < 0.1)
      {
        v19.n128_f32[0] = 0.0;
        v18.n128_f32[0] = 0.0;
      }

      valueChangedHandler[2](v18, v19);
    }

    p_touchPrevPos->x = v5;
    self->_touchPrevPos.y = v7;
  }

  else
  {
    v22 = v15 + v5 - self->_touchStartPos.x;
    v23 = v17 + v7 - self->_touchStartPos.y;
    v24 = v22 - v15;
    v25 = v23 - v17;
    v26 = v25 * v25 + v24 * v24;
    v27 = sqrtf(v26);
    if (v27 > 50.0)
    {
      v28 = (50.0 / v27);
      v29 = v24 * v28;
      v30 = v25 * v28;
      v22 = v15 + v29;
      v23 = v17 + v30;
    }

    [(GCControllerThumbstickInputView *)self setThumbstickPos:v22 center:v23, v15, v17];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  if ([beganCopy count] == &dword_0 + 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentTouch);

    if (!WeakRetained)
    {
      anyObject = [beganCopy anyObject];
      objc_storeWeak(&self->_currentTouch, anyObject);
      [anyObject locationInView:self->_background];
      self->_touchStartPos.x = v7;
      self->_touchStartPos.y = v8;
      self->_touchPrevPos = self->_touchStartPos;
      self->_prevThumbstickMagnitude = 0.0;
      v9 = +[GCControllerViewFeedback sharedInstance];
      [v9 buttonDown];

      [(GCControllerThumbstickInputView *)self processTouch:anyObject];
    }
  }
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  movedCopy = moved;
  v5 = [movedCopy count] == &dword_0 + 1;
  v6 = movedCopy;
  if (v5)
  {
    anyObject = [movedCopy anyObject];
    WeakRetained = objc_loadWeakRetained(&self->_currentTouch);

    if (WeakRetained == anyObject)
    {
      [(GCControllerThumbstickInputView *)self processTouch:anyObject];
    }

    v6 = movedCopy;
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  v5 = [endedCopy count] == &dword_0 + 1;
  v6 = endedCopy;
  if (v5)
  {
    anyObject = [endedCopy anyObject];
    WeakRetained = objc_loadWeakRetained(&self->_currentTouch);

    if (WeakRetained == anyObject)
    {
      objc_storeWeak(&self->_currentTouch, 0);
      v9 = +[GCControllerViewFeedback sharedInstance];
      [v9 buttonUp];

      background = self->_background;
      [(UIVisualEffectView *)background center];
      v12 = v11;
      v14 = v13;
      superview = [(UIVisualEffectView *)self->_background superview];
      [(UIVisualEffectView *)background convertPoint:superview fromView:v12, v14];
      v17 = v16;
      v19 = v18;

      [(GCControllerThumbstickInputView *)self setThumbstickPos:v17 center:v19, v17, v19];
    }

    v6 = endedCopy;
  }
}

- (void)setThumbstickPos:(CGPoint)pos center:(CGPoint)center
{
  y = center.y;
  x = center.x;
  v6 = pos.y;
  v7 = pos.x;
  [(UIVisualEffectView *)self->_touchTarget setCenter:?];
  v10 = (v7 - x) / 50.0;
  v13.n128_f64[0] = (v6 - y) / -50.0;
  v11 = v13.n128_f64[0];
  v12 = sqrtf((v11 * v11) + (v10 * v10));
  v13.n128_u32[0] = LODWORD(self->_prevThumbstickMagnitude);
  if (v13.n128_f32[0] < 0.99 && v12 >= 0.99)
  {
    v14 = +[GCControllerViewFeedback sharedInstance];
    [v14 thumbstickLimit];

    v13.n128_u32[0] = LODWORD(self->_prevThumbstickMagnitude);
  }

  if (v13.n128_f32[0] >= 0.1 && v12 < 0.1)
  {
    v15 = +[GCControllerViewFeedback sharedInstance];
    [v15 thumbstickLimit];
  }

  v9.n128_u64[0] = 0;
  if (v12 >= 0.1)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0.0;
  }

  self->_prevThumbstickMagnitude = v16;
  valueChangedHandler = self->_valueChangedHandler;
  if (valueChangedHandler)
  {
    if (v12 >= 0.1)
    {
      v13.n128_f32[0] = v10;
    }

    else
    {
      v13.n128_f32[0] = 0.0;
    }

    if (v12 >= 0.1)
    {
      v9.n128_f32[0] = v11;
    }

    v18 = *(valueChangedHandler + 2);

    v18(v13, v9);
  }
}

- (void)initButtons
{
  v3 = GCVirtualControllerBlurEffectView();
  background = self->_background;
  self->_background = v3;

  [(GCControllerThumbstickInputView *)self frame];
  [(UIVisualEffectView *)self->_background setFrame:?];
  [(UIVisualEffectView *)self->_background frame];
  v6 = v5 * 0.5;
  layer = [(UIVisualEffectView *)self->_background layer];
  [layer setCornerRadius:v6];

  layer2 = [(UIVisualEffectView *)self->_background layer];
  [layer2 setMasksToBounds:1];

  [(GCControllerThumbstickInputView *)self addSubview:self->_background];
  [(GCControllerThumbstickInputView *)self frame];
  v10 = v9;
  [(GCControllerThumbstickInputView *)self frame];
  v12 = v11;
  v13 = GCVirtualControllerSaturationVibrancyEffectView();
  touchTarget = self->_touchTarget;
  self->_touchTarget = v13;

  [(UIVisualEffectView *)self->_touchTarget setFrame:v10, v12, 50.0, 50.0];
  v15 = self->_background;
  [(UIVisualEffectView *)v15 center];
  v17 = v16;
  v19 = v18;
  superview = [(UIVisualEffectView *)self->_background superview];
  [(UIVisualEffectView *)v15 convertPoint:superview fromView:v17, v19];
  [(UIVisualEffectView *)self->_touchTarget setCenter:?];

  layer3 = [(UIVisualEffectView *)self->_touchTarget layer];
  [layer3 setMasksToBounds:1];

  [(UIVisualEffectView *)self->_touchTarget setHidden:0];
  v29 = [[UIView alloc] initWithFrame:{v10, v12, 50.0, 50.0}];
  v22 = GCVirtualControllerVibrancyOverlayBackgroundColor();
  [v29 setBackgroundColor:v22];

  [(UIVisualEffectView *)self->_touchTarget frame];
  v24 = v23 * 0.5;
  layer4 = [v29 layer];
  [layer4 setCornerRadius:v24];

  layer5 = [v29 layer];
  [layer5 setMasksToBounds:1];

  contentView = [(UIVisualEffectView *)self->_touchTarget contentView];
  [contentView addSubview:v29];

  contentView2 = [(UIVisualEffectView *)self->_background contentView];
  [contentView2 addSubview:self->_touchTarget];
}

- (uint64_t)valueChangedHandler
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (void)setValueChangedHandler:(void *)handler
{
  if (handler)
  {
    objc_setProperty_nonatomic_copy(handler, newValue, newValue, 72);
  }
}

@end