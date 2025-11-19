@interface NTKCFaceContainerView
+ (CGSize)faceSizeForSize:(CGSize)a3 style:(int64_t)a4;
+ (CGSize)sizeForFaceSize:(CGSize)a3 style:(int64_t)a4;
+ (double)_insetPaddingForStyle:(int64_t)a3;
- (CGAffineTransform)_transformForFaceView;
- (CGSize)faceSize;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NTKCFaceContainerView)initWithFaceSize:(CGSize)a3 style:(int64_t)a4;
- (double)_outlineLineWidth;
- (void)_updateOutlineColor;
- (void)layoutSubviews;
- (void)setActive:(BOOL)a3;
- (void)setFaceSize:(CGSize)a3;
- (void)setFaceView:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation NTKCFaceContainerView

- (NTKCFaceContainerView)initWithFaceSize:(CGSize)a3 style:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  [objc_opt_class() sizeForFaceSize:a4 style:{a3.width, a3.height}];
  v30.receiver = self;
  v30.super_class = NTKCFaceContainerView;
  v10 = [(NTKCFaceContainerView *)&v30 initWithFrame:0.0, 0.0, v8, v9];
  v11 = v10;
  if (v10)
  {
    [(NTKCFaceContainerView *)v10 setStyle:a4];
    v11->_faceSize.width = width;
    v11->_faceSize.height = height;
    v12 = objc_opt_new();
    [(NTKCFaceContainerView *)v11 setBackgroundView:v12];

    v13 = +[UIColor blackColor];
    [(UIView *)v11->_backgroundView setBackgroundColor:v13];

    [(NTKCFaceContainerView *)v11 addSubview:v11->_backgroundView];
    v14 = [[UIView alloc] initWithFrame:{0.0, 0.0, v11->_faceSize.width, v11->_faceSize.height}];
    [(NTKCFaceContainerView *)v11 setFaceContainer:v14];

    [(NTKCFaceContainerView *)v11 addSubview:v11->_faceContainer];
    [(NTKCFaceContainerView *)v11 _outlineLineWidth];
    v16 = v15;
    v17 = +[CAShapeLayer layer];
    [(NTKCFaceContainerView *)v11 setOutline:v17];

    v31 = @"strokeColor";
    v18 = +[NSNull null];
    v32 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [(CAShapeLayer *)v11->_outline setActions:v19];

    v20 = +[UIColor clearColor];
    -[CAShapeLayer setFillColor:](v11->_outline, "setFillColor:", [v20 CGColor]);

    [(CAShapeLayer *)v11->_outline setLineWidth:v16];
    v21 = [(NTKCFaceContainerView *)v11 layer];
    [v21 addSublayer:v11->_outline];

    [(NTKCFaceContainerView *)v11 _updateOutlineColor];
    v22 = objc_opt_new();
    [(NTKCFaceContainerView *)v11 setHighlightView:v22];

    v23 = +[UIColor labelColor];
    v24 = [v23 colorWithAlphaComponent:0.23];
    [(UIView *)v11->_highlightView setBackgroundColor:v24];

    [(UIView *)v11->_highlightView setAlpha:0.0];
    [(NTKCFaceContainerView *)v11 addSubview:v11->_highlightView];
    [(NTKCFaceContainerView *)v11 setUserInteractionEnabled:0];
    LODWORD(v25) = 1148846080;
    [(NTKCFaceContainerView *)v11 setContentCompressionResistancePriority:0 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [(NTKCFaceContainerView *)v11 setContentCompressionResistancePriority:1 forAxis:v26];
    LODWORD(v27) = 1148846080;
    [(NTKCFaceContainerView *)v11 setContentHuggingPriority:0 forAxis:v27];
    LODWORD(v28) = 1148846080;
    [(NTKCFaceContainerView *)v11 setContentHuggingPriority:1 forAxis:v28];
  }

  return v11;
}

- (void)setFaceView:(id)a3
{
  v5 = a3;
  v6 = [(UIView *)self->_faceView superview];
  v7 = [v6 isEqual:self->_faceContainer];

  if (v7)
  {
    [(UIView *)self->_faceView removeFromSuperview];
    faceView = self->_faceView;
    v9 = *&CGAffineTransformIdentity.c;
    v14 = *&CGAffineTransformIdentity.a;
    v15 = v9;
    v16 = *&CGAffineTransformIdentity.tx;
    [(UIView *)faceView setTransform:&v14];
  }

  objc_storeStrong(&self->_faceView, a3);
  if (self->_faceView)
  {
    [(NTKCFaceContainerView *)self _transformForFaceView];
    v10 = self->_faceView;
    v14 = v11;
    v15 = v12;
    v16 = v13;
    [(UIView *)v10 setTransform:&v14];
    [(UIView *)self->_faceContainer addSubview:self->_faceView];
    [(NTKCFaceContainerView *)self setNeedsLayout];
  }
}

- (void)setFaceSize:(CGSize)a3
{
  if (a3.width != self->_faceSize.width || a3.height != self->_faceSize.height)
  {
    v9 = v3;
    v10 = v4;
    self->_faceSize = a3;
    [(UIView *)self->_faceContainer setBounds:0.0, 0.0];
    [(NTKCFaceContainerView *)self _transformForFaceView];
    faceView = self->_faceView;
    v8[0] = v8[3];
    v8[1] = v8[4];
    v8[2] = v8[5];
    [(UIView *)faceView setTransform:v8];
    [(NTKCFaceContainerView *)self sizeToFit];
  }
}

- (CGAffineTransform)_transformForFaceView
{
  result = [(NTKCFaceContainerView *)self style];
  if (result == (&dword_0 + 3))
  {
    v6 = *&CGAffineTransformIdentity.c;
    *&retstr->a = *&CGAffineTransformIdentity.a;
    *&retstr->c = v6;
    *&retstr->tx = *&CGAffineTransformIdentity.tx;
  }

  else
  {
    [(UIView *)self->_faceView bounds];
    v8 = v7;
    rect = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [(UIView *)self->_faceContainer bounds];
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
    rect_8 = CGRectGetWidth(v27);
    v28.origin.x = v8;
    v28.origin.y = v10;
    v28.size.width = v12;
    v28.size.height = v14;
    v19 = CGRectGetWidth(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v20 = CGRectGetHeight(v29);
    v30.origin.x = rect;
    v30.origin.y = v10;
    v30.size.width = v12;
    v30.size.height = v14;
    v21 = CGRectGetHeight(v30);
    v22 = 1.0;
    if (rect_8 != 0.0 && v19 != 0.0 && v20 != 0.0 && v21 != 0.0)
    {
      v22 = rect_8 / v19;
      v23 = v20 / v21;
      if (rect_8 / v19 >= v23)
      {
        v22 = v23;
      }
    }

    return CGAffineTransformMakeScale(retstr, v22, v22);
  }

  return result;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    v6 = NTKCOutlineColor();
    v5 = v6;
    -[CAShapeLayer setStrokeColor:](self->_outline, "setStrokeColor:", [v6 CGColor]);
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = NTKCFaceContainerView;
  [(NTKCFaceContainerView *)&v8 setHighlighted:?];
  v5 = 0.2;
  v6[1] = 3221225472;
  v6[0] = _NSConcreteStackBlock;
  v6[2] = sub_EDBC;
  v6[3] = &unk_20D88;
  if (v3)
  {
    v5 = 0.0;
  }

  v6[4] = self;
  v7 = v3;
  [UIView animateWithDuration:327684 delay:v6 options:0 animations:v5 completion:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = objc_opt_class();
  style = self->_style;
  width = self->_faceSize.width;
  height = self->_faceSize.height;

  [v4 sizeForFaceSize:style style:{width, height}];
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(NTKCFaceContainerView *)self sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  [(NTKCFaceContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_25D4(v44);
  v11 = v45;
  height = self->_faceSize.height;
  v13 = +[CLKDevice currentDevice];
  [v13 screenBounds];
  v14 = v11 * (height / CGRectGetHeight(v47));

  v15 = +[CLKDevice currentDevice];
  [v15 screenBounds];
  v39 = v11 / CGRectGetHeight(v48);

  [(NTKCFaceContainerView *)self _outlineLineWidth];
  v17 = v16 * 0.5;
  v18 = v4;
  v49.origin.x = v4;
  v42 = v6;
  v49.origin.y = v6;
  v43 = v8;
  v49.size.width = v8;
  v49.size.height = v10;
  v50 = CGRectInset(v49, v17, v17);
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  v22 = v50.size.height;
  v23 = +[CLKDevice currentDevice];
  v24 = [v23 deviceCategory];

  v40 = v14;
  if ((v24 - 3) >= 4)
  {
    if (v24 == &dword_0 + 2)
    {
      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = v22;
      v11 = v39 * CGRectGetHeight(v52) * 1.25;
    }
  }

  else
  {
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = v22;
    v11 = v14 + (CGRectGetHeight(v51) - self->_faceSize.height) * 0.5;
  }

  [(UIView *)self->_backgroundView setFrame:x, y, width, v22];
  [(UIView *)self->_backgroundView _setContinuousCornerRadius:v11];
  v41 = v11;
  [(NTKCFaceContainerView *)self _setContinuousCornerRadius:v11];
  [(CAShapeLayer *)self->_outline frame];
  v56.origin.x = v18;
  v56.origin.y = v42;
  v25 = v10;
  v26 = v43;
  v56.size.width = v43;
  v56.size.height = v10;
  if (!CGRectEqualToRect(v53, v56))
  {
    v27 = [UIBezierPath bezierPathWithRoundedRect:x cornerRadius:y, width, v22, v41];
    [(CAShapeLayer *)self->_outline setFrame:v18, v42, v43, v10];
    -[CAShapeLayer setPath:](self->_outline, "setPath:", [v27 CGPath]);
  }

  [(UIView *)self->_faceContainer frame];
  UIRectCenteredIntegralRectScale();
  [(UIView *)self->_faceContainer setFrame:0];
  if ([(NTKCFaceContainerView *)self style]== &dword_0 + 3)
  {
    [(UIView *)self->_faceContainer bounds];
    v29 = v28;
    [(UIView *)self->_faceContainer bounds];
    faceView = self->_faceView;
    v31 = 0.0;
    v32 = 0.0;
    v33 = v29;
  }

  else
  {
    [(UIView *)self->_faceView frame];
    [(UIView *)self->_faceContainer bounds];
    v38 = 0;
    v25 = v10;
    v26 = v43;
    UIRectCenteredIntegralRectScale();
    faceView = self->_faceView;
  }

  [(UIView *)faceView setFrame:v31, v32, v33, v38];
  [(UIView *)self->_highlightView setFrame:v18, v42, v26, v25];
  v34 = +[CLKDevice currentDevice];
  v35 = [v34 deviceCategory];

  if ((v35 - 3) >= 4)
  {
    v36 = v41;
    if (v35 == &dword_0 + 2)
    {
      [(UIView *)self->_highlightView frame];
      v36 = v39 * CGRectGetHeight(v55) * 1.25;
    }
  }

  else
  {
    [(UIView *)self->_highlightView frame];
    v36 = v40 + (CGRectGetHeight(v54) - self->_faceSize.height) * 0.5;
  }

  highlightView = self->_highlightView;

  [(UIView *)highlightView _setContinuousCornerRadius:v36];
}

- (double)_outlineLineWidth
{
  style = self->_style;
  result = 0.0;
  if (style > 1)
  {
    if (style == 2)
    {
      sub_25D4(v4);
      return v5;
    }

    if (style != 3)
    {
      return result;
    }

LABEL_7:
    sub_25D4(v6);
    return v7;
  }

  if (!style)
  {
    sub_25D4(v8);
    return v9;
  }

  if (style == 1)
  {
    goto LABEL_7;
  }

  return result;
}

- (void)_updateOutlineColor
{
  v4 = NTKCOutlineColor();
  v3 = v4;
  -[CAShapeLayer setStrokeColor:](self->_outline, "setStrokeColor:", [v4 CGColor]);
}

+ (CGSize)sizeForFaceSize:(CGSize)a3 style:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  [a1 _insetPaddingForStyle:a4];
  v7 = -v6;
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = width;
  v11.size.height = height;
  v12 = CGRectInset(v11, v7, v7);
  v8 = v12.size.width;
  v9 = v12.size.height;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (CGSize)faceSizeForSize:(CGSize)a3 style:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  [a1 _insetPaddingForStyle:a4];
  v7 = v6;
  v11.origin.x = 0.0;
  v11.origin.y = 0.0;
  v11.size.width = width;
  v11.size.height = height;
  v12 = CGRectInset(v11, v7, v7);
  v8 = v12.size.width;
  v9 = v12.size.height;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (double)_insetPaddingForStyle:(int64_t)a3
{
  v3 = 0uLL;
  if (a3 <= 1)
  {
    if (!a3)
    {
      sub_25D4(v8);
      v3 = v9;
      return vaddvq_f64(v3);
    }

    if (a3 != 1)
    {
      return vaddvq_f64(v3);
    }

    goto LABEL_7;
  }

  if (a3 == 2)
  {
    sub_25D4(v5);
    v3 = v5[0];
    return vaddvq_f64(v3);
  }

  if (a3 == 3)
  {
LABEL_7:
    sub_25D4(v6);
    v3 = v7;
  }

  return vaddvq_f64(v3);
}

- (CGSize)faceSize
{
  width = self->_faceSize.width;
  height = self->_faceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end