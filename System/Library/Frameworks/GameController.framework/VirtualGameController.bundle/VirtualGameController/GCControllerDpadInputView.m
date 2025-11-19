@interface GCControllerDpadInputView
- (GCControllerDpadInputView)initWithCoder:(id)a3;
- (GCControllerDpadInputView)initWithFrame:(CGRect)a3;
- (id)createDpadButton:(CGPoint)a3 backingMask:(id)a4 fillMask:(id)a5;
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

@implementation GCControllerDpadInputView

- (GCControllerDpadInputView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = GCControllerDpadInputView;
  v3 = [(GCControllerDpadInputView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(GCControllerDpadInputView *)v3 initButtons];
    [(GCControllerDpadInputView *)v4 setUserInteractionEnabled:1];
  }

  return v4;
}

- (GCControllerDpadInputView)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = GCControllerDpadInputView;
  v5 = [(GCControllerDpadInputView *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_touchArea"];
    touchArea = v5->_touchArea;
    v5->_touchArea = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_up"];
    up = v5->_up;
    v5->_up = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_down"];
    down = v5->_down;
    v5->_down = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_left"];
    left = v5->_left;
    v5->_left = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_right"];
    right = v5->_right;
    v5->_right = v14;

    [(GCControllerDpadInputView *)v5 setUserInteractionEnabled:1];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GCControllerDpadInputView;
  v4 = a3;
  [(GCControllerDpadInputView *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_touchArea forKey:{@"_touchArea", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_up forKey:@"_up"];
  [v4 encodeObject:self->_down forKey:@"_down"];
  [v4 encodeObject:self->_left forKey:@"_left"];
  [v4 encodeObject:self->_right forKey:@"_right"];
}

- (id)createDpadButton:(CGPoint)a3 backingMask:(id)a4 fillMask:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = a5;
  v9 = a4;
  v10 = GCVirtualControllerBlurEffectView();
  v11 = [[UIImageView alloc] initWithImage:v9];
  [v10 setMaskView:v11];

  [v9 size];
  v13 = v12;
  [v9 size];
  v15 = v14;

  [v10 setFrame:{x, y, v13, v15}];
  v16 = GCVirtualControllerSaturationVibrancyEffectView();
  [v10 frame];
  v18 = v17;
  [v10 frame];
  [v16 setFrame:{0.0, 0.0, v18}];
  [v16 setTag:1];
  v19 = [UIView alloc];
  [v10 frame];
  v20 = [v19 initWithFrame:?];
  v21 = GCVirtualControllerVibrancyOverlayBackgroundColor();
  [v20 setBackgroundColor:v21];

  v22 = [[UIImageView alloc] initWithImage:v8];
  [v20 setMaskView:v22];

  [v10 frame];
  v24 = v23 * 0.5;
  [v10 frame];
  [v20 setCenter:{v24, v25 * 0.5}];
  v26 = [v16 contentView];
  [v26 addSubview:v20];

  v27 = GCVirtualControllerAdditiveVibrancyEffectView();
  [v10 frame];
  v29 = v28;
  [v10 frame];
  [v27 setFrame:{0.0, 0.0, v29}];
  [v27 setHidden:1];
  [v27 setTag:2];
  v30 = [UIView alloc];
  [v10 frame];
  v31 = [v30 initWithFrame:?];
  v32 = GCVirtualControllerVibrancyOverlayBackgroundColor();
  [v31 setBackgroundColor:v32];

  v33 = [[UIImageView alloc] initWithImage:v8];
  [v31 setMaskView:v33];

  [v10 frame];
  v35 = v34 * 0.5;
  [v10 frame];
  [v31 setCenter:{v35, v36 * 0.5}];
  v37 = [v27 contentView];
  [v37 addSubview:v31];

  v38 = [v10 contentView];
  [v38 addSubview:v16];

  v39 = [v10 contentView];
  [v39 addSubview:v27];

  return v10;
}

- (void)initButtons
{
  v57 = VirtualControllerBundle();
  v3 = [UIImage imageNamed:@"dpad_backing_mask" inBundle:v57 withConfiguration:0];
  v4 = [v3 CGImage];
  [v3 scale];
  v5 = [UIImage imageWithCGImage:v4 scale:1 orientation:?];
  v6 = [v3 CGImage];
  [v3 scale];
  v7 = [UIImage imageWithCGImage:v6 scale:2 orientation:?];
  v8 = [v3 CGImage];
  [v3 scale];
  v9 = [UIImage imageWithCGImage:v8 scale:3 orientation:?];
  v10 = [UIImage imageNamed:@"dpad_fill_mask" inBundle:v57 withConfiguration:0];
  v11 = [v10 CGImage];
  [v10 scale];
  v12 = [UIImage imageWithCGImage:v11 scale:1 orientation:?];
  v13 = [v10 CGImage];
  [v10 scale];
  v14 = [UIImage imageWithCGImage:v13 scale:2 orientation:?];
  v15 = [v10 CGImage];
  [v10 scale];
  v16 = [UIImage imageWithCGImage:v15 scale:3 orientation:?];
  [v3 size];
  v18 = v17 + 11.0 + v17 + 11.0;
  [(GCControllerDpadInputView *)self frame];
  v19 = v18;
  v21 = (v20 - v19) * 0.5;
  [(GCControllerDpadInputView *)self frame];
  v23 = [[UIView alloc] initWithFrame:{v21, (v22 - v19) * 0.5, v19, v19}];
  touchArea = self->_touchArea;
  self->_touchArea = v23;

  [(UIView *)self->_touchArea setHidden:1];
  [(GCControllerDpadInputView *)self addSubview:self->_touchArea];
  [(GCControllerDpadInputView *)self frame];
  v26 = v25;
  [v3 size];
  v28 = v27 * -0.5 + v26 * 0.5;
  [(GCControllerDpadInputView *)self frame];
  v30 = v29;
  [v3 size];
  v32 = [(GCControllerDpadInputView *)self createDpadButton:v3 backingMask:v10 fillMask:v28, -11.0 - (v31 - v30 * 0.5)];
  up = self->_up;
  self->_up = v32;

  [(GCControllerDpadInputView *)self addSubview:self->_up];
  [(GCControllerDpadInputView *)self frame];
  v35 = v34;
  [v5 size];
  v37 = v36 * -0.5 + v35 * 0.5;
  [(GCControllerDpadInputView *)self frame];
  v39 = [(GCControllerDpadInputView *)self createDpadButton:v5 backingMask:v12 fillMask:v37, v38 * 0.5 + 11.0];
  down = self->_down;
  self->_down = v39;

  [(GCControllerDpadInputView *)self addSubview:self->_down];
  [(GCControllerDpadInputView *)self frame];
  v42 = v41;
  [v7 size];
  v44 = -11.0 - (v43 - v42 * 0.5);
  [(GCControllerDpadInputView *)self frame];
  v46 = v45;
  [v7 size];
  v48 = [(GCControllerDpadInputView *)self createDpadButton:v7 backingMask:v14 fillMask:v44, v47 * -0.5 + v46 * 0.5];
  left = self->_left;
  self->_left = v48;

  [(GCControllerDpadInputView *)self addSubview:self->_left];
  [(GCControllerDpadInputView *)self frame];
  v51 = v50 * 0.5 + 11.0;
  [(GCControllerDpadInputView *)self frame];
  v53 = v52;
  [v7 size];
  v55 = [(GCControllerDpadInputView *)self createDpadButton:v9 backingMask:v16 fillMask:v51, v54 * -0.5 + v53 * 0.5];
  right = self->_right;
  self->_right = v55;

  [(GCControllerDpadInputView *)self addSubview:self->_right];
}

- (void)processTouch:(id)a3
{
  [a3 locationInView:self->_touchArea];
  v5 = v4;
  v7 = v6;
  touchArea = self->_touchArea;
  [(UIView *)touchArea center];
  v10 = v9;
  v12 = v11;
  v13 = [(UIView *)self->_touchArea superview];
  [(UIView *)touchArea convertPoint:v13 fromView:v10, v12];
  v37 = v14;
  v16 = v15;

  [(UIView *)self->_touchArea frame];
  v18 = v17 / 3.0;
  [(UIView *)self->_touchArea frame];
  v20 = v19 / 3.0;
  [(UIView *)self->_touchArea frame];
  v22 = v21;
  [(UIView *)self->_touchArea frame];
  v24 = v23;
  [(UIView *)self->_touchArea frame];
  v26 = v25 - v18;
  [(UIView *)self->_touchArea frame];
  v28 = v27 - v20;
  if (v5 >= v22)
  {
    v29 = v5;
  }

  else
  {
    v29 = v22;
  }

  if (v7 >= v24)
  {
    v30 = v7;
  }

  else
  {
    v30 = v24;
  }

  if (v29 > v26)
  {
    v29 = v26;
  }

  if (v30 <= v28)
  {
    v28 = v30;
  }

  v31 = v29;
  v32 = v18;
  v33 = (floorf(v31 / v32) * v32);
  v34 = v28;
  v35 = v20;
  v36 = (floorf(v34 / v35) * v35);

  [(GCControllerDpadInputView *)self setThumbstickPos:v33 + v18 * 0.5 center:v36 + v20 * 0.5, v37, v16];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v8 = a3;
  if ([v8 count] == &dword_0 + 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentTouch);

    if (!WeakRetained)
    {
      v6 = [v8 anyObject];
      objc_storeWeak(&self->_currentTouch, v6);
      v7 = +[GCControllerViewFeedback sharedInstance];
      [v7 buttonDown];

      [(GCControllerDpadInputView *)self processTouch:v6];
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
      [(GCControllerDpadInputView *)self processTouch:v7];
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

      touchArea = self->_touchArea;
      [(UIView *)touchArea center];
      v12 = v11;
      v14 = v13;
      v15 = [(UIView *)self->_touchArea superview];
      [(UIView *)touchArea convertPoint:v15 fromView:v12, v14];
      v17 = v16;
      v19 = v18;

      [(GCControllerDpadInputView *)self setThumbstickPos:v17 center:v19, v17, v19];
    }

    v6 = v20;
  }
}

- (void)setThumbstickPos:(CGPoint)a3 center:(CGPoint)a4
{
  y = a4.y;
  v5 = a3.y;
  v26 = a3.x - a4.x;
  [(UIView *)self->_touchArea frame];
  v24 = v7;
  [(UIView *)self->_touchArea frame];
  v8.f64[0] = v24;
  v8.f64[1] = v9;
  __asm { FMOV            V0.2D, #3.0 }

  v15 = vdivq_f64(v8, _Q0);
  v8.f64[0] = v26;
  v8.f64[1] = -(v5 - y);
  v16 = vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(v8, v15)));
  __asm { FMOV            V1.2D, #0.5 }

  v18 = vrndmq_f64(vaddq_f64(v16, _Q1));
  *&v18.f64[0] = vcvt_f32_f64(v18);
  v27 = v18;
  v19 = HIDWORD(v18.f64[0]);
  [(GCControllerDpadInputView *)self setHighlight:self->_up highlight:*(v18.f64 + 1) > 0.0];
  v20 = vcltz_f32(v27.n128_u64[0]);
  v25 = v20.i8[0];
  [(GCControllerDpadInputView *)self setHighlight:self->_down highlight:v20.i8[4] & 1];
  [(GCControllerDpadInputView *)self setHighlight:self->_left highlight:v25 & 1];
  [(GCControllerDpadInputView *)self setHighlight:self->_right highlight:v27.n128_f32[0] > 0.0, v27.n128_f64[0]];
  valueChangedHandler = self->_valueChangedHandler;
  if (valueChangedHandler)
  {
    v23 = *(valueChangedHandler + 2);
    v21.n128_u32[0] = v19;

    v23(v27, v21);
  }
}

- (uint64_t)valueChangedHandler
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (void)setValueChangedHandler:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 56);
  }
}

@end