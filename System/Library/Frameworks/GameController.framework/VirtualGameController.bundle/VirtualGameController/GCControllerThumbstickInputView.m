@interface GCControllerThumbstickInputView
- (GCControllerThumbstickInputView)init;
- (GCControllerThumbstickInputView)initWithCoder:(id)a3;
- (uint64_t)valueChangedHandler;
- (void)encodeWithCoder:(id)a3;
- (void)initButtons;
- (void)processTouch:(id)a3;
- (void)setThumbstickPos:(CGPoint)a3 center:(CGPoint)a4;
- (void)setValueChangedHandler:(void *)a1;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
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

- (GCControllerThumbstickInputView)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GCControllerThumbstickInputView;
  v5 = [(GCControllerThumbstickInputView *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"background"];
    background = v5->_background;
    v5->_background = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"touchTarget"];
    touchTarget = v5->_touchTarget;
    v5->_touchTarget = v8;

    [(GCControllerThumbstickInputView *)v5 setUserInteractionEnabled:1];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GCControllerThumbstickInputView;
  v4 = a3;
  [(GCControllerThumbstickInputView *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_background forKey:{@"background", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_touchTarget forKey:@"touchTarget"];
}

- (void)processTouch:(id)a3
{
  [a3 locationInView:self->_background];
  v5 = v4;
  v7 = v6;
  background = self->_background;
  [(UIVisualEffectView *)background center];
  v10 = v9;
  v12 = v11;
  v13 = [(UIVisualEffectView *)self->_background superview];
  [(UIVisualEffectView *)background convertPoint:v13 fromView:v10, v12];
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

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v10 = a3;
  if ([v10 count] == &dword_0 + 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentTouch);

    if (!WeakRetained)
    {
      v6 = [v10 anyObject];
      objc_storeWeak(&self->_currentTouch, v6);
      [v6 locationInView:self->_background];
      self->_touchStartPos.x = v7;
      self->_touchStartPos.y = v8;
      self->_touchPrevPos = self->_touchStartPos;
      self->_prevThumbstickMagnitude = 0.0;
      v9 = +[GCControllerViewFeedback sharedInstance];
      [v9 buttonDown];

      [(GCControllerThumbstickInputView *)self processTouch:v6];
    }
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v9 = a3;
  v5 = [v9 count] == &dword_0 + 1;
  v6 = v9;
  if (v5)
  {
    v7 = [v9 anyObject];
    WeakRetained = objc_loadWeakRetained(&self->_currentTouch);

    if (WeakRetained == v7)
    {
      [(GCControllerThumbstickInputView *)self processTouch:v7];
    }

    v6 = v9;
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v20 = a3;
  v5 = [v20 count] == &dword_0 + 1;
  v6 = v20;
  if (v5)
  {
    v7 = [v20 anyObject];
    WeakRetained = objc_loadWeakRetained(&self->_currentTouch);

    if (WeakRetained == v7)
    {
      objc_storeWeak(&self->_currentTouch, 0);
      v9 = +[GCControllerViewFeedback sharedInstance];
      [v9 buttonUp];

      background = self->_background;
      [(UIVisualEffectView *)background center];
      v12 = v11;
      v14 = v13;
      v15 = [(UIVisualEffectView *)self->_background superview];
      [(UIVisualEffectView *)background convertPoint:v15 fromView:v12, v14];
      v17 = v16;
      v19 = v18;

      [(GCControllerThumbstickInputView *)self setThumbstickPos:v17 center:v19, v17, v19];
    }

    v6 = v20;
  }
}

- (void)setThumbstickPos:(CGPoint)a3 center:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
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
  v7 = [(UIVisualEffectView *)self->_background layer];
  [v7 setCornerRadius:v6];

  v8 = [(UIVisualEffectView *)self->_background layer];
  [v8 setMasksToBounds:1];

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
  v20 = [(UIVisualEffectView *)self->_background superview];
  [(UIVisualEffectView *)v15 convertPoint:v20 fromView:v17, v19];
  [(UIVisualEffectView *)self->_touchTarget setCenter:?];

  v21 = [(UIVisualEffectView *)self->_touchTarget layer];
  [v21 setMasksToBounds:1];

  [(UIVisualEffectView *)self->_touchTarget setHidden:0];
  v29 = [[UIView alloc] initWithFrame:{v10, v12, 50.0, 50.0}];
  v22 = GCVirtualControllerVibrancyOverlayBackgroundColor();
  [v29 setBackgroundColor:v22];

  [(UIVisualEffectView *)self->_touchTarget frame];
  v24 = v23 * 0.5;
  v25 = [v29 layer];
  [v25 setCornerRadius:v24];

  v26 = [v29 layer];
  [v26 setMasksToBounds:1];

  v27 = [(UIVisualEffectView *)self->_touchTarget contentView];
  [v27 addSubview:v29];

  v28 = [(UIVisualEffectView *)self->_background contentView];
  [v28 addSubview:self->_touchTarget];
}

- (uint64_t)valueChangedHandler
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (void)setValueChangedHandler:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 72);
  }
}

@end