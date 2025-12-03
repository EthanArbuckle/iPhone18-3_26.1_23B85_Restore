@interface CarFocusableControl
- ($1AB5FA073B851C12C2339EC22442E995)metrics;
- (BOOL)canBecomeFocused;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CarFocusableControl)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)focusLayerInsets;
- (UIEdgeInsets)touchInsets;
- (UIView)contentView;
- (id)_adjustedColor:(id)color forState:(unint64_t)state;
- (void)_selectButtonPressed:(id)pressed;
- (void)addSubview:(id)subview;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setEnabled:(BOOL)enabled;
- (void)setFocusLayerInsets:(UIEdgeInsets)insets;
- (void)setFocusableControlStyle:(unint64_t)style;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMetrics:(id)metrics;
- (void)traitCollectionDidChange:(id)change;
- (void)willMoveToSuperview:(id)superview;
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
  isFocused = [(CarFocusableControl *)self isFocused];
  if (isFocused)
  {
    focusedTintColor = [(CarFocusableControl *)self focusedTintColor];
    v5 = [(CarFocusableControl *)self _adjustedColor:focusedTintColor forState:[(CarFocusableControl *)self state]];
    [(CarFocusableControl *)self setTintColor:v5];

    focusableControlStyle = [(CarFocusableControl *)self focusableControlStyle];
    if (!focusableControlStyle)
    {
      focusedBackgroundColor = [(CarFocusableControl *)self focusedBackgroundColor];
LABEL_14:
      v17 = focusedBackgroundColor;
      [(CarFocusableControl *)self setBackgroundColor:focusedBackgroundColor];

      return;
    }
  }

  else
  {
    unfocusedTintColor = [(CarFocusableControl *)self unfocusedTintColor];
    v9 = [(CarFocusableControl *)self _adjustedColor:unfocusedTintColor forState:[(CarFocusableControl *)self state]];
    [(CarFocusableControl *)self setTintColor:v9];

    focusableControlStyle = [(CarFocusableControl *)self focusableControlStyle];
    if (!focusableControlStyle)
    {
      focusedBackgroundColor = [(CarFocusableControl *)self unfocusedBackgroundColor];
      goto LABEL_14;
    }
  }

  v10 = focusableControlStyle;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  if (!self->_focusShapeLayer)
  {
    v11 = +[CAShapeLayer layer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = v11;

    [(CAShapeLayer *)self->_focusShapeLayer setNeedsDisplayOnBoundsChange:1];
    layer = [(CarFocusableControl *)self layer];
    [layer insertSublayer:self->_focusShapeLayer atIndex:0];
  }

  if (v10 - 2 >= 2)
  {
    if (v10 == 1)
    {
      [(CAShapeLayer *)self->_focusShapeLayer setBorderWidth:self->_metrics.selectedBorderWidth];
      [(CAShapeLayer *)self->_focusShapeLayer setBorderColor:[(UIColor *)self->_focusedBackgroundColor CGColor]];
      if (isFocused)
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
    if (isFocused)
    {
      focusedBackgroundColor2 = [(CarFocusableControl *)self focusedBackgroundColor];
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
      focusedBackgroundColor2 = ;
    }

    v19 = focusedBackgroundColor2;
    if (v10 == 2)
    {
      -[CAShapeLayer setBorderColor:](self->_focusShapeLayer, "setBorderColor:", [focusedBackgroundColor2 CGColor]);
      v20 = +[UIColor clearColor];
      -[CAShapeLayer setBackgroundColor:](self->_focusShapeLayer, "setBackgroundColor:", [v20 CGColor]);

      layer2 = [(CarFocusableControl *)self layer];
      [layer2 addSublayer:self->_focusShapeLayer];
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
  canBecomeFocused = [(CarFocusableControl *)&v5 canBecomeFocused];
  if (canBecomeFocused)
  {
    canBecomeFocused = [(CarFocusableControl *)self isEnabled];
    if (canBecomeFocused)
    {
      LOBYTE(canBecomeFocused) = [(CarFocusableControl *)self isHidden]^ 1;
    }
  }

  return canBecomeFocused;
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

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(CarFocusableControl *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = CarFocusableControl;
  [(CarFocusableControl *)&v6 setHighlighted:highlightedCopy];
  if (isHighlighted != [(CarFocusableControl *)self isHighlighted])
  {
    [(CarFocusableControl *)self setNeedsLayout];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = CarFocusableControl;
  contextCopy = context;
  [(CarFocusableControl *)&v8 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];

  [(CarFocusableControl *)self focusDidChange:nextFocusedItem == self];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  isEnabled = [(CarFocusableControl *)self isEnabled];
  v6.receiver = self;
  v6.super_class = CarFocusableControl;
  [(CarFocusableControl *)&v6 setEnabled:enabledCopy];
  if (isEnabled != [(CarFocusableControl *)self isEnabled])
  {
    [(CarFocusableControl *)self setNeedsFocusUpdate];
    [(CarFocusableControl *)self setNeedsLayout];
  }
}

- (id)_adjustedColor:(id)color forState:(unint64_t)state
{
  stateCopy = state;
  colorCopy = color;
  v6 = colorCopy;
  if (stateCopy)
  {
    v10 = 0.0;
    v11 = 0.0;
    [colorCopy getWhite:&v11 alpha:&v10];
    v7 = [UIColor colorWithWhite:v11 alpha:v10 * 0.349999994];
  }

  else if ((stateCopy & 2) != 0)
  {
    v7 = [colorCopy colorWithAlphaComponent:0.200000003];
  }

  else
  {
    v7 = colorCopy;
  }

  v8 = v7;

  return v8;
}

- (void)willMoveToSuperview:(id)superview
{
  v5.receiver = self;
  v5.super_class = CarFocusableControl;
  [(CarFocusableControl *)&v5 willMoveToSuperview:superview];
  [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
  focusShapeLayer = self->_focusShapeLayer;
  self->_focusShapeLayer = 0;
}

- (void)_selectButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  isEnabled = [(CarFocusableControl *)self isEnabled];
  v5 = pressedCopy;
  if (isEnabled)
  {
    state = [pressedCopy state];
    if (state == 3)
    {
      [(CarFocusableControl *)self setHighlighted:0];
      [(CarFocusableControl *)self sendActionsForControlEvents:64];
    }

    else
    {
      if (state == 1)
      {
        selfCopy2 = self;
        v8 = 1;
      }

      else
      {
        selfCopy2 = self;
        v8 = 0;
      }

      [(CarFocusableControl *)selfCopy2 setHighlighted:v8];
    }

    v5 = pressedCopy;
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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

- (void)setFocusLayerInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_focusLayerInsets.top), vceqq_f64(v4, *&self->_focusLayerInsets.bottom))), 0xFuLL))) & 1) == 0)
  {
    self->_focusLayerInsets = insets;
    [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = 0;

    [(CarFocusableControl *)self setNeedsLayout];
  }
}

- (void)setMetrics:(id)metrics
{
  if (metrics.var0 != self->_metrics.selectedBorderWidth || metrics.var1 != self->_metrics.selectedCornerRadius || metrics.var2 != self->_metrics.focusCornerRadius)
  {
    self->_metrics = metrics;
    [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = 0;

    [(CarFocusableControl *)self setNeedsLayout];
  }
}

- (void)setFocusableControlStyle:(unint64_t)style
{
  if (self->_focusableControlStyle != style)
  {
    self->_focusableControlStyle = style;
    [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = 0;

    [(CarFocusableControl *)self setNeedsLayout];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = CarFocusableControl;
  changeCopy = change;
  [(CarFocusableControl *)&v9 traitCollectionDidChange:changeCopy];
  v5 = [(CarFocusableControl *)self traitCollection:v9.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(CAShapeLayer *)self->_focusShapeLayer removeFromSuperlayer];
    focusShapeLayer = self->_focusShapeLayer;
    self->_focusShapeLayer = 0;

    [(CarFocusableControl *)self setNeedsLayout];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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

- (void)addSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = CarFocusableControl;
  subviewCopy = subview;
  [(CarFocusableControl *)&v4 addSubview:subviewCopy];
  [subviewCopy setUserInteractionEnabled:{0, v4.receiver, v4.super_class}];
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
    allConstraints = [v8 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];

    contentView = self->_contentView;
  }

  return contentView;
}

- (CarFocusableControl)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = CarFocusableControl;
  v3 = [(CarFocusableControl *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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