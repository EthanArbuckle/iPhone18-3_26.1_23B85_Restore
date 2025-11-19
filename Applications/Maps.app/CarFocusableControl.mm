@interface CarFocusableControl
- ($1AB5FA073B851C12C2339EC22442E995)metrics;
- (BOOL)canBecomeFocused;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CarFocusableControl)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)focusLayerInsets;
- (UIEdgeInsets)touchInsets;
- (UIView)contentView;
- (id)_adjustedColor:(id)a3 forState:(unint64_t)a4;
- (void)_selectButtonPressed:(id)a3;
- (void)addSubview:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFocusLayerInsets:(UIEdgeInsets)a3;
- (void)setFocusableControlStyle:(unint64_t)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMetrics:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation CarFocusableControl

- (UIEdgeInsets)touchInsets
{
  top = self->_touchInsets.top;
  left = self->_touchInsets.left;
  bottom = self->_touchInsets.bottom;
  right = self->_touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)layoutSubviews
{
  v52.receiver = self;
  v52.super_class = CarFocusableControl;
  [(CarFocusableControl *)&v52 layoutSubviews];
  v3 = [(CarFocusableControl *)self isFocused];
  if (v3)
  {
    v4 = [(CarFocusableControl *)self focusedTintColor];
    v5 = [(CarFocusableControl *)self _adjustedColor:v4 forState:[(CarFocusableControl *)self state]];
    [(CarFocusableControl *)self setTintColor:v5];

    v6 = [(CarFocusableControl *)self focusableControlStyle];
    if (!v6)
    {
      v7 = [(CarFocusableControl *)self focusedBackgroundColor];
LABEL_14:
      v17 = v7;
      [(CarFocusableControl *)self setBackgroundColor:v7];

      return;
    }
  }

  else
  {
    v8 = [(CarFocusableControl *)self unfocusedTintColor];
    v9 = [(CarFocusableControl *)self _adjustedColor:v8 forState:[(CarFocusableControl *)self state]];
    [(CarFocusableControl *)self setTintColor:v9];

    v6 = [(CarFocusableControl *)self focusableControlStyle];
    if (!v6)
    {
      v7 = [(CarFocusableControl *)self unfocusedBackgroundColor];
      goto LABEL_14;
    }
  }

  v10 = v6;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (!self->_focusShapeLayer)
  {
    v11 = +[CAShapeLayer layer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = v11;

    [(CAShapeLayer *)self->_focusShapeLayer setNeedsDisplayOnBoundsChange:1];
    v13 = [(CarFocusableControl *)self layer];
    [v13 insertSublayer:self->_focusShapeLayer atIndex:0];
  }

  if (v10 - 2 >= 2)
  {
    if (v10 == 1)
    {
      [(CAShapeLayer *)self->_focusShapeLayer setBorderWidth:self->_metrics.selectedBorderWidth];
      [(CAShapeLayer *)self->_focusShapeLayer setBorderColor:[(UIColor *)self->_focusedBackgroundColor CGColor]];
      if (v3)
      {
        [(CAShapeLayer *)self->_focusShapeLayer setBackgroundColor:[(UIColor *)self->_focusedBackgroundColor CGColor]];
        [(CAShapeLayer *)self->_focusShapeLayer setCornerRadius:self->_metrics.focusCornerRadius];
        v15 = 0;
        v16 = self->_focusShapeLayer;
      }

      else
      {
        v18 = +[UIColor clearColor];
        -[CAShapeLayer setBackgroundColor:](self->_focusShapeLayer, "setBackgroundColor:", [v18 CGColor]);

        [(CAShapeLayer *)self->_focusShapeLayer setCornerRadius:self->_metrics.selectedCornerRadius];
        v16 = self->_focusShapeLayer;
        v15 = [(CarFocusableControl *)self isSelected]^ 1;
      }

      [(CAShapeLayer *)v16 setHidden:v15];
    }
  }

  else
  {
    if (v3)
    {
      v14 = [(CarFocusableControl *)self focusedBackgroundColor];
    }

    else
    {
      if ([(CarFocusableControl *)self isSelected])
      {
        +[UIColor labelColor];
      }

      else
      {
        [(CarFocusableControl *)self unfocusedBackgroundColor];
      }
      v14 = ;
    }

    v19 = v14;
    if (v10 == 2)
    {
      -[CAShapeLayer setBorderColor:](self->_focusShapeLayer, "setBorderColor:", [v14 CGColor]);
      v20 = +[UIColor clearColor];
      -[CAShapeLayer setBackgroundColor:](self->_focusShapeLayer, "setBackgroundColor:", [v20 CGColor]);

      v21 = [(CarFocusableControl *)self layer];
      [v21 addSublayer:self->_focusShapeLayer];
    }

    else
    {
      v22 = +[UIColor clearColor];
      -[CAShapeLayer setBorderColor:](self->_focusShapeLayer, "setBorderColor:", [v22 CGColor]);

      -[CAShapeLayer setBackgroundColor:](self->_focusShapeLayer, "setBackgroundColor:", [v19 CGColor]);
    }
  }

  [(CarFocusableControl *)self focusLayerInsets];
  v50 = v24;
  v51 = v23;
  v48 = v26;
  v49 = v25;
  [(CarFocusableControl *)self bounds];
  v28 = v48;
  v27 = v49;
  v30 = v50;
  v29 = v51;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39.f64[0] = v51;
  v39.f64[1] = v50;
  v40.f64[0] = v49;
  v40.f64[1] = v48;
  if (vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&UIEdgeInsetsZero.top, v39), vceqq_f64(*&UIEdgeInsetsZero.bottom, v40))), 0xFuLL))))
  {
    UIRoundToViewScale();
    v29 = -v41;
    v30 = -5.5;
    v27 = -v41;
    v28 = -5.5;
  }

  v42 = v30 + v32;
  v43 = v29 + v34;
  v44 = v36 - (v30 + v28);
  v45 = v38 - (v29 + v27);
  [(CAShapeLayer *)self->_focusShapeLayer setFrame:v42, v29 + v34, v44, v45];
  if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v53.origin.x = v42;
    v53.origin.y = v43;
    v53.size.width = v44;
    v53.size.height = v45;
    Width = CGRectGetWidth(v53);
    v54.origin.x = v42;
    v54.origin.y = v43;
    v54.size.width = v44;
    v54.size.height = v45;
    if (Width >= CGRectGetHeight(v54))
    {
      v56.origin.x = v42;
      v56.origin.y = v43;
      v56.size.width = v44;
      v56.size.height = v45;
      Height = CGRectGetHeight(v56);
    }

    else
    {
      v55.origin.x = v42;
      v55.origin.y = v43;
      v55.size.width = v44;
      v55.size.height = v45;
      Height = CGRectGetWidth(v55);
    }

    [(CAShapeLayer *)self->_focusShapeLayer setCornerRadius:Height * 0.5];
  }

  +[CATransaction commit];
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = CarFocusableControl;
  v3 = [(CarFocusableControl *)&v5 canBecomeFocused];
  if (v3)
  {
    v3 = [(CarFocusableControl *)self isEnabled];
    if (v3)
    {
      LOBYTE(v3) = [(CarFocusableControl *)self isHidden]^ 1;
    }
  }

  return v3;
}

- (UIEdgeInsets)focusLayerInsets
{
  top = self->_focusLayerInsets.top;
  left = self->_focusLayerInsets.left;
  bottom = self->_focusLayerInsets.bottom;
  right = self->_focusLayerInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)metrics
{
  selectedBorderWidth = self->_metrics.selectedBorderWidth;
  selectedCornerRadius = self->_metrics.selectedCornerRadius;
  focusCornerRadius = self->_metrics.focusCornerRadius;
  result.var2 = focusCornerRadius;
  result.var1 = selectedCornerRadius;
  result.var0 = selectedBorderWidth;
  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarFocusableControl *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = CarFocusableControl;
  [(CarFocusableControl *)&v6 setHighlighted:v3];
  if (v5 != [(CarFocusableControl *)self isHighlighted])
  {
    [(CarFocusableControl *)self setNeedsLayout];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = CarFocusableControl;
  v6 = a3;
  [(CarFocusableControl *)&v8 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];

  [(CarFocusableControl *)self focusDidChange:v7 == self];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(CarFocusableControl *)self isEnabled];
  v6.receiver = self;
  v6.super_class = CarFocusableControl;
  [(CarFocusableControl *)&v6 setEnabled:v3];
  if (v5 != [(CarFocusableControl *)self isEnabled])
  {
    [(CarFocusableControl *)self setNeedsFocusUpdate];
    [(CarFocusableControl *)self setNeedsLayout];
  }
}

- (id)_adjustedColor:(id)a3 forState:(unint64_t)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v10 = 0.0;
    v11 = 0.0;
    [v5 getWhite:&v11 alpha:&v10];
    v7 = [UIColor colorWithWhite:v11 alpha:v10 * 0.349999994];
  }

  else if ((v4 & 2) != 0)
  {
    v7 = [v5 colorWithAlphaComponent:0.200000003];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (void)willMoveToSuperview:(id)a3
{
  v5.receiver = self;
  v5.super_class = CarFocusableControl;
  [(CarFocusableControl *)&v5 willMoveToSuperview:a3];
  [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
  focusShapeLayer = self->_focusShapeLayer;
  self->_focusShapeLayer = 0;
}

- (void)_selectButtonPressed:(id)a3
{
  v9 = a3;
  v4 = [(CarFocusableControl *)self isEnabled];
  v5 = v9;
  if (v4)
  {
    v6 = [v9 state];
    if (v6 == 3)
    {
      [(CarFocusableControl *)self setHighlighted:0];
      [(CarFocusableControl *)self sendActionsForControlEvents:64];
    }

    else
    {
      if (v6 == 1)
      {
        v7 = self;
        v8 = 1;
      }

      else
      {
        v7 = self;
        v8 = 0;
      }

      [(CarFocusableControl *)v7 setHighlighted:v8];
    }

    v5 = v9;
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(CarFocusableControl *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CarFocusableControl *)self touchInsets];
  v16 = v15 + v10;
  v19 = v12 - (v17 + v18);
  v21 = v14 - (v15 + v20);
  v22 = v17 + v8;
  v23 = v16;
  v24 = v19;
  v25 = x;
  v26 = y;

  return CGRectContainsPoint(*&v22, *&v25);
}

- (void)setFocusLayerInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_focusLayerInsets.top), vceqq_f64(v4, *&self->_focusLayerInsets.bottom))), 0xFuLL))) & 1) == 0)
  {
    self->_focusLayerInsets = a3;
    [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = 0;

    [(CarFocusableControl *)self setNeedsLayout];
  }
}

- (void)setMetrics:(id)a3
{
  if (a3.var0 != self->_metrics.selectedBorderWidth || a3.var1 != self->_metrics.selectedCornerRadius || a3.var2 != self->_metrics.focusCornerRadius)
  {
    self->_metrics = a3;
    [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = 0;

    [(CarFocusableControl *)self setNeedsLayout];
  }
}

- (void)setFocusableControlStyle:(unint64_t)a3
{
  if (self->_focusableControlStyle != a3)
  {
    self->_focusableControlStyle = a3;
    [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = 0;

    [(CarFocusableControl *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = CarFocusableControl;
  v4 = a3;
  [(CarFocusableControl *)&v9 traitCollectionDidChange:v4];
  v5 = [(CarFocusableControl *)self traitCollection:v9.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = 0;

    [(CarFocusableControl *)self setNeedsLayout];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (self->_focusShapeLayer)
  {
    [(CarFocusableControl *)self bounds];
    if (width != v9 || height != v8)
    {
      [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
      focusShapeLayer = self->_focusShapeLayer;
      self->_focusShapeLayer = 0;
    }
  }

  v12.receiver = self;
  v12.super_class = CarFocusableControl;
  [(CarFocusableControl *)&v12 setBounds:x, y, width, height];
}

- (void)addSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = CarFocusableControl;
  v3 = a3;
  [(CarFocusableControl *)&v4 addSubview:v3];
  [v3 setUserInteractionEnabled:{0, v4.receiver, v4.super_class}];
}

- (UIView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = [UIView alloc];
    [(CarFocusableControl *)self frame];
    v5 = [v4 initWithFrame:?];
    v6 = self->_contentView;
    self->_contentView = v5;

    [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarFocusableControl *)self addSubview:self->_contentView];
    LODWORD(v7) = 1148846080;
    v8 = [(UIView *)self->_contentView _maps_constraintsEqualToEdgesOfView:self priority:v7];
    v9 = [v8 allConstraints];
    [NSLayoutConstraint activateConstraints:v9];

    contentView = self->_contentView;
  }

  return contentView;
}

- (CarFocusableControl)initWithFrame:(CGRect)a3
{
  v21.receiver = self;
  v21.super_class = CarFocusableControl;
  v3 = [(CarFocusableControl *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    *(v3 + 4) = 3;
    __asm { FMOV            V0.2D, #4.0 }

    *(v3 + 8) = _Q0;
    *(v3 + 9) = _Q0;
    *(v3 + 72) = xmmword_101216118;
    *(v3 + 11) = 0x4000000000000000;
    v10 = [[UILongPressGestureRecognizer alloc] initWithTarget:v3 action:"_selectButtonPressed:"];
    selectButtonRecognizer = v4->_selectButtonRecognizer;
    v4->_selectButtonRecognizer = v10;

    [(UILongPressGestureRecognizer *)v4->_selectButtonRecognizer setMinimumPressDuration:0.0];
    [(UILongPressGestureRecognizer *)v4->_selectButtonRecognizer setAllowedPressTypes:&off_1016ECF98];
    [(CarFocusableControl *)v4 addGestureRecognizer:v4->_selectButtonRecognizer];
    v12 = +[UIColor _carSystemFocusLabelColor];
    focusedTintColor = v4->_focusedTintColor;
    v4->_focusedTintColor = v12;

    v14 = +[UIColor labelColor];
    unfocusedTintColor = v4->_unfocusedTintColor;
    v4->_unfocusedTintColor = v14;

    v16 = +[UIColor _carSystemFocusColor];
    focusedBackgroundColor = v4->_focusedBackgroundColor;
    v4->_focusedBackgroundColor = v16;

    v18 = +[UIColor clearColor];
    unfocusedBackgroundColor = v4->_unfocusedBackgroundColor;
    v4->_unfocusedBackgroundColor = v18;
  }

  return v4;
}

@end