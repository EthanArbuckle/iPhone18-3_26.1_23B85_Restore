@interface GCControllerButtonInputView
- (GCControllerButtonInputView)initWithCoder:(id)a3;
- (GCControllerButtonInputView)initWithFrame:(CGRect)a3;
- (GCControllerButtonInputView)initWithText:(id)a3;
- (uint64_t)valueChangedHandler;
- (void)encodeWithCoder:(id)a3;
- (void)initUI;
- (void)setCustomImage:(id)a3;
- (void)setText;
- (void)setValueChangedHandler:(void *)a1;
- (void)setupActions;
- (void)triggerButtonWithValue:(float)a3;
@end

@implementation GCControllerButtonInputView

- (GCControllerButtonInputView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = GCControllerButtonInputView;
  v7 = [(GCControllerButtonInputView *)&v10 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(GCControllerButtonInputView *)v7 initUI];
    [(GCControllerButtonInputView *)v8 setupActions];
    v8->_innerFrame.origin.x = x;
    v8->_innerFrame.origin.y = y;
    v8->_innerFrame.size.width = width;
    v8->_innerFrame.size.height = height;
  }

  return v8;
}

- (GCControllerButtonInputView)initWithText:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GCControllerButtonInputView;
  v6 = [(GCControllerButtonInputView *)&v9 initWithFrame:0.0, 0.0, 60.0, 60.0];
  v7 = v6;
  if (v6)
  {
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
    *(v6 + 24) = vdupq_n_s64(0x4049000000000000uLL);
    [v6 initUI];
    objc_storeStrong(&v7->_text, a3);
    [(GCControllerButtonInputView *)v7 setText];
    [(GCControllerButtonInputView *)v7 setupActions];
  }

  return v7;
}

- (GCControllerButtonInputView)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = GCControllerButtonInputView;
  v5 = [(GCControllerButtonInputView *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"background"];
    background = v5->_background;
    v5->_background = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"saturationVibrancyEffectView"];
    saturationVibrancyEffectView = v5->_saturationVibrancyEffectView;
    v5->_saturationVibrancyEffectView = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"additiveVibrancyEffectView"];
    additiveVibrancyEffectView = v5->_additiveVibrancyEffectView;
    v5->_additiveVibrancyEffectView = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"button"];
    button = v5->_button;
    v5->_button = v12;

    [(GCControllerButtonInputView *)v5 setupActions];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GCControllerButtonInputView;
  v4 = a3;
  [(GCControllerButtonInputView *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_background forKey:{@"background", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_saturationVibrancyEffectView forKey:@"saturationVibrancyEffectView"];
  [v4 encodeObject:self->_additiveVibrancyEffectView forKey:@"additiveVibrancyEffectView"];
  [v4 encodeObject:self->_button forKey:@"button"];
}

- (void)initUI
{
  v3 = +[UIColor clearColor];
  [(GCControllerButtonInputView *)self setBackgroundColor:v3];

  [(GCControllerButtonInputView *)self frame];
  v5 = v4 * 0.5;
  [(GCControllerButtonInputView *)self frame];
  v7 = v6 * 0.5;
  v8 = [UIButton buttonWithType:0];
  button = self->_button;
  self->_button = v8;

  [(UIButton *)self->_button setFrame:self->_innerFrame.origin.x, self->_innerFrame.origin.y, self->_innerFrame.size.width, self->_innerFrame.size.height];
  [(UIButton *)self->_button setCenter:v5, v7];
  [(GCControllerButtonInputView *)self addSubview:self->_button];
  v10 = GCVirtualControllerBlurEffectView();
  background = self->_background;
  self->_background = v10;

  [(UIVisualEffectView *)self->_background setTranslatesAutoresizingMaskIntoConstraints:0];
  [(GCControllerButtonInputView *)self frame];
  [(UIVisualEffectView *)self->_background setFrame:?];
  [(UIVisualEffectView *)self->_background frame];
  v13 = v12 * 0.5;
  v14 = [(UIVisualEffectView *)self->_background layer];
  [v14 setCornerRadius:v13];

  v15 = [(UIVisualEffectView *)self->_background layer];
  [v15 setMasksToBounds:1];

  [(UIVisualEffectView *)self->_background setUserInteractionEnabled:0];
  [(GCControllerButtonInputView *)self addSubview:self->_background];
  v16 = GCVirtualControllerSaturationVibrancyEffectView();
  saturationVibrancyEffectView = self->_saturationVibrancyEffectView;
  self->_saturationVibrancyEffectView = v16;

  [(UIVisualEffectView *)self->_saturationVibrancyEffectView setFrame:self->_innerFrame.origin.x, self->_innerFrame.origin.y, self->_innerFrame.size.width, self->_innerFrame.size.height];
  [(UIVisualEffectView *)self->_saturationVibrancyEffectView setCenter:v5, v7];
  [(UIVisualEffectView *)self->_saturationVibrancyEffectView setUserInteractionEnabled:0];
  v18 = [(UIVisualEffectView *)self->_saturationVibrancyEffectView layer];
  [v18 setMasksToBounds:1];

  [(UIVisualEffectView *)self->_saturationVibrancyEffectView frame];
  v20 = v19 * 0.5;
  v21 = [(UIVisualEffectView *)self->_saturationVibrancyEffectView contentView];
  v22 = [v21 layer];
  [v22 setCornerRadius:v20];

  LODWORD(v20) = GCVirtualControllerVibrancyOverlayOpacity();
  v23 = [(UIVisualEffectView *)self->_saturationVibrancyEffectView contentView];
  v24 = [v23 layer];
  LODWORD(v25) = LODWORD(v20);
  [v24 setOpacity:v25];

  v26 = [(UIVisualEffectView *)self->_saturationVibrancyEffectView contentView];
  v27 = [v26 layer];
  [v27 setMasksToBounds:1];

  v28 = GCVirtualControllerAdditiveVibrancyEffectView();
  additiveVibrancyEffectView = self->_additiveVibrancyEffectView;
  self->_additiveVibrancyEffectView = v28;

  [(UIVisualEffectView *)self->_additiveVibrancyEffectView setFrame:self->_innerFrame.origin.x, self->_innerFrame.origin.y, self->_innerFrame.size.width, self->_innerFrame.size.height];
  [(UIVisualEffectView *)self->_additiveVibrancyEffectView setCenter:v5, v7];
  [(UIVisualEffectView *)self->_additiveVibrancyEffectView setUserInteractionEnabled:0];
  v30 = [(UIVisualEffectView *)self->_additiveVibrancyEffectView layer];
  [v30 setMasksToBounds:1];

  [(UIVisualEffectView *)self->_additiveVibrancyEffectView setHidden:1];
  [(UIVisualEffectView *)self->_additiveVibrancyEffectView frame];
  v32 = v31 * 0.5;
  v33 = [(UIVisualEffectView *)self->_additiveVibrancyEffectView contentView];
  v34 = [v33 layer];
  [v34 setCornerRadius:v32];

  LODWORD(v32) = GCVirtualControllerVibrancyOverlayOpacity();
  v35 = [(UIVisualEffectView *)self->_additiveVibrancyEffectView contentView];
  v36 = [v35 layer];
  LODWORD(v37) = LODWORD(v32);
  [v36 setOpacity:v37];

  v38 = [(UIVisualEffectView *)self->_additiveVibrancyEffectView contentView];
  v39 = [v38 layer];
  [v39 setMasksToBounds:1];

  v40 = [(UIVisualEffectView *)self->_background contentView];
  [v40 addSubview:self->_saturationVibrancyEffectView];

  v41 = [(UIVisualEffectView *)self->_background contentView];
  [v41 addSubview:self->_additiveVibrancyEffectView];
}

- (void)setupActions
{
  button = self->_button;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __43__GCControllerButtonInputView_setupActions__block_invoke;
  v8[3] = &unk_106B8;
  v8[4] = self;
  v4 = [UIAction actionWithHandler:v8];
  [(UIButton *)button addAction:v4 forControlEvents:1];

  v5 = self->_button;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __43__GCControllerButtonInputView_setupActions__block_invoke_2;
  v7[3] = &unk_106B8;
  v7[4] = self;
  v6 = [UIAction actionWithHandler:v7];
  [(UIButton *)v5 addAction:v6 forControlEvents:192];
}

id __43__GCControllerButtonInputView_setupActions__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setHidden:0];
  [*(*(a1 + 32) + 48) setHidden:1];
  v2 = +[GCControllerViewFeedback sharedInstance];
  [v2 buttonDown];

  v3 = *(a1 + 32);
  LODWORD(v4) = 1.0;

  return [v3 triggerButtonWithValue:v4];
}

id __43__GCControllerButtonInputView_setupActions__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 56) setHidden:1];
  [*(*(a1 + 32) + 48) setHidden:0];
  v2 = +[GCControllerViewFeedback sharedInstance];
  [v2 buttonUp];

  v3 = *(a1 + 32);

  return [v3 triggerButtonWithValue:0.0];
}

- (void)triggerButtonWithValue:(float)a3
{
  if (self)
  {
    v4 = self->_valueChangedHandler;
    if (v4)
    {
      v5 = v4;
      (*(v4 + 2))(a3);
    }
  }
}

- (void)setText
{
  v3 = [UIFont systemFontOfSize:32.0 weight:UIFontWeightMedium];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  v6 = [UIFont fontWithDescriptor:v5 size:32.0];
  v21 = NSFontAttributeName;
  v22 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  UIGraphicsBeginImageContextWithOptions(self->_innerFrame.size, 0, 0.0);
  [(NSString *)self->_text sizeWithAttributes:v7];
  v9.f64[1] = v8;
  __asm { FMOV            V1.2D, #0.5 }

  [(NSString *)self->_text drawAtPoint:v7 withAttributes:vaddq_f64(self->_innerFrame.origin, vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(vsubq_f64(self->_innerFrame.size, v9), _Q1))))];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  AlphaMaskImage = GCVirtualControllerCreateAlphaMaskImage(v15, 1);
  v17 = [(UIVisualEffectView *)self->_saturationVibrancyEffectView contentView];
  v18 = [v17 layer];
  [v18 setContents:AlphaMaskImage];

  v19 = [(UIVisualEffectView *)self->_additiveVibrancyEffectView contentView];
  v20 = [v19 layer];
  [v20 setContents:AlphaMaskImage];

  CGImageRelease(AlphaMaskImage);
}

- (void)setCustomImage:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(GCControllerButtonInputView *)self customImage];
    v7 = [v6 isEqual:v5];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_customImage, a3);
      v8 = [_GCControllerShapeView alloc];
      [(UIButton *)self->_button frame];
      v9 = [(_GCControllerShapeView *)v8 initWithFrame:?];
      memset(&v56, 0, sizeof(v56));
      width = self->_innerFrame.size.width;
      [v5 bounds];
      v11 = -self->_innerFrame.size.height;
      v13 = width / v12;
      [v5 bounds];
      CGAffineTransformMakeScale(&v56, v13, v11 / v14);
      memset(&v55, 0, sizeof(v55));
      CGAffineTransformMakeTranslation(&v55, self->_innerFrame.size.width * 0.5, self->_innerFrame.size.height * 0.5);
      t1 = v56;
      memset(&v54, 0, sizeof(v54));
      v52 = v55;
      CGAffineTransformConcat(&v54, &t1, &v52);
      t1 = v54;
      [v5 applyTransform:&t1];
      v15 = [v5 CGPath];
      v16 = [(_GCControllerShapeView *)v9 shapeLayer];
      [v16 setPath:v15];

      v17 = [v5 usesEvenOddFillRule];
      v18 = &kCAFillRuleEvenOdd;
      if (!v17)
      {
        v18 = &kCAFillRuleNonZero;
      }

      v19 = *v18;
      v20 = [(_GCControllerShapeView *)v9 shapeLayer];
      [v20 setFillRule:v19];

      [v5 lineWidth];
      v22 = v21;
      v23 = [(_GCControllerShapeView *)v9 shapeLayer];
      [v23 setLineWidth:v22];

      if ([v5 lineCapStyle])
      {
        v24 = [v5 lineCapStyle];
        v25 = &kCALineCapRound;
        if (v24 != 1)
        {
          v25 = &kCALineCapSquare;
        }
      }

      else
      {
        v25 = &kCALineCapButt;
      }

      v27 = *v25;
      v28 = [(_GCControllerShapeView *)v9 shapeLayer];
      [v28 setLineCap:v27];

      if ([v5 lineJoinStyle])
      {
        v29 = [v5 lineJoinStyle];
        v30 = &kCALineJoinRound;
        if (v29 != 1)
        {
          v30 = &kCALineJoinBevel;
        }
      }

      else
      {
        v30 = &kCALineJoinMiter;
      }

      v31 = *v30;
      v32 = [(_GCControllerShapeView *)v9 shapeLayer];
      [v32 setLineJoin:v31];

      [v5 miterLimit];
      v34 = v33;
      v35 = [(_GCControllerShapeView *)v9 shapeLayer];
      [v35 setMiterLimit:v34];

      t1.a = 0.0;
      v52.a = 0.0;
      [v5 getLineDash:0 count:&t1 phase:&v52];
      if (*&t1.a)
      {
        v36 = malloc_type_malloc(8 * *&t1.a, 0x100004000313F17uLL);
        [v5 getLineDash:v36 count:0 phase:0];
        v37 = [NSMutableArray alloc];
        v38 = [v37 initWithCapacity:*&t1.a];
        if (*&t1.a >= 1)
        {
          v39 = 0;
          do
          {
            v40 = [NSNumber numberWithDouble:v36[v39]];
            [v38 addObject:v40];

            ++v39;
          }

          while (*&t1.a > v39);
        }

        free(v36);
        a = v52.a;
        v42 = [(_GCControllerShapeView *)v9 shapeLayer];
        [v42 setLineDashPhase:a];

        v43 = [v38 copy];
        v44 = [(_GCControllerShapeView *)v9 shapeLayer];
        [v44 setLineDashPattern:v43];
      }

      UIGraphicsBeginImageContextWithOptions(self->_innerFrame.size, 0, 0.0);
      v45 = [(_GCControllerShapeView *)v9 shapeLayer];
      [v45 renderInContext:UIGraphicsGetCurrentContext()];

      v46 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      AlphaMaskImage = GCVirtualControllerCreateAlphaMaskImage(v46, 0);
      v48 = [(UIVisualEffectView *)self->_saturationVibrancyEffectView contentView];
      v49 = [v48 layer];
      [v49 setContents:AlphaMaskImage];

      v50 = [(UIVisualEffectView *)self->_additiveVibrancyEffectView contentView];
      v51 = [v50 layer];
      [v51 setContents:AlphaMaskImage];

      CGImageRelease(AlphaMaskImage);
    }
  }

  else
  {
    customImage = self->_customImage;
    if (customImage)
    {
      self->_customImage = 0;

      [(GCControllerButtonInputView *)self setText];
    }
  }
}

- (uint64_t)valueChangedHandler
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (void)setValueChangedHandler:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 88);
  }
}

@end