@interface VehiclePickerButton
- (UIEdgeInsets)colorViewInsets;
- (UIImageView)colorView;
- (UIView)highlightView;
- (VehiclePickerButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setActive:(BOOL)active;
- (void)setColorViewInsets:(UIEdgeInsets)insets;
- (void)setNeedsOutlineStroke:(BOOL)stroke;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation VehiclePickerButton

- (UIEdgeInsets)colorViewInsets
{
  top = self->_colorViewInsets.top;
  left = self->_colorViewInsets.left;
  bottom = self->_colorViewInsets.bottom;
  right = self->_colorViewInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v16.receiver = self;
  v16.super_class = VehiclePickerButton;
  changeCopy = change;
  [(VehiclePickerButton *)&v16 traitCollectionDidChange:changeCopy];
  v5 = [(VehiclePickerButton *)self traitCollection:v16.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    if ([(VehiclePickerButton *)self needsOutlineStroke])
    {
      v8 = +[UIColor systemGray3Color];
      cGColor = [v8 CGColor];
      colorView = [(VehiclePickerButton *)self colorView];
      layer = [colorView layer];
      [layer setBorderColor:cGColor];
    }

    v12 = +[UIColor systemGray3Color];
    cGColor2 = [v12 CGColor];
    highlightView = [(VehiclePickerButton *)self highlightView];
    layer2 = [highlightView layer];
    [layer2 setBorderColor:cGColor2];
  }
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = VehiclePickerButton;
  [(VehiclePickerButton *)&v27 layoutSubviews];
  colorView = [(VehiclePickerButton *)self colorView];
  [colorView frame];
  Width = CGRectGetWidth(v28);
  colorView2 = [(VehiclePickerButton *)self colorView];
  [colorView2 frame];
  Height = CGRectGetHeight(v29);
  colorView3 = [(VehiclePickerButton *)self colorView];
  [colorView3 frame];
  if (Width >= Height)
  {
    v12 = CGRectGetHeight(*&v8);
  }

  else
  {
    v12 = CGRectGetWidth(*&v8);
  }

  v13 = v12 * 0.5;
  colorView4 = [(VehiclePickerButton *)self colorView];
  [colorView4 _setCornerRadius:v13];

  highlightView = [(VehiclePickerButton *)self highlightView];
  [highlightView frame];
  v16 = CGRectGetWidth(v30);
  highlightView2 = [(VehiclePickerButton *)self highlightView];
  [highlightView2 frame];
  v18 = CGRectGetHeight(v31);
  highlightView3 = [(VehiclePickerButton *)self highlightView];
  [highlightView3 frame];
  if (v16 < v18)
  {
    v24 = CGRectGetWidth(*&v20);
  }

  else
  {
    v24 = CGRectGetHeight(*&v20);
  }

  v25 = v24 * 0.5;
  highlightView4 = [(VehiclePickerButton *)self highlightView];
  [highlightView4 _setCornerRadius:v25];
}

- (void)setNeedsOutlineStroke:(BOOL)stroke
{
  if (self->_needsOutlineStroke != stroke)
  {
    strokeCopy = stroke;
    self->_needsOutlineStroke = stroke;
    colorView = [(VehiclePickerButton *)self colorView];
    layer = [colorView layer];
    v8 = layer;
    if (strokeCopy)
    {
      [layer setBorderWidth:1.0];

      colorView3 = +[UIColor systemGray3Color];
      cGColor = [colorView3 CGColor];
      colorView2 = [(VehiclePickerButton *)self colorView];
      layer2 = [colorView2 layer];
      [layer2 setBorderColor:cGColor];
    }

    else
    {
      [layer setBorderWidth:0.0];

      colorView3 = [(VehiclePickerButton *)self colorView];
      colorView2 = [colorView3 layer];
      [colorView2 setBorderColor:0];
    }

    [(VehiclePickerButton *)self setNeedsDisplay];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    highlightView = [(VehiclePickerButton *)self highlightView];
    [highlightView setHidden:!activeCopy];

    [(VehiclePickerButton *)self setNeedsLayout];
  }
}

- (void)setColorViewInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_colorViewInsets.top, v3), vceqq_f64(*&self->_colorViewInsets.bottom, v4))), 0xFuLL))) & 1) == 0)
  {
    self->_colorViewInsets = insets;
    top = insets.top;
    bottom = insets.bottom;
    left = insets.left;
    right = insets.right;
    leadingConstraint = [(VehiclePickerButton *)self leadingConstraint];
    [leadingConstraint setConstant:left];

    trailingConstraint = [(VehiclePickerButton *)self trailingConstraint];
    [trailingConstraint setConstant:-right];

    topConstraint = [(VehiclePickerButton *)self topConstraint];
    [topConstraint setConstant:top];

    bottomConstraint = [(VehiclePickerButton *)self bottomConstraint];
    [bottomConstraint setConstant:-bottom];

    [(VehiclePickerButton *)self setNeedsLayout];
  }
}

- (UIImageView)colorView
{
  colorView = self->_colorView;
  if (!colorView)
  {
    v4 = objc_opt_new();
    v5 = self->_colorView;
    self->_colorView = v4;

    [(UIImageView *)self->_colorView setUserInteractionEnabled:0];
    [(UIImageView *)self->_colorView setTranslatesAutoresizingMaskIntoConstraints:0];
    colorView = self->_colorView;
  }

  return colorView;
}

- (UIView)highlightView
{
  highlightView = self->_highlightView;
  if (!highlightView)
  {
    v4 = objc_opt_new();
    v5 = self->_highlightView;
    self->_highlightView = v4;

    [(UIView *)self->_highlightView setUserInteractionEnabled:0];
    [(UIView *)self->_highlightView setHidden:1];
    [(UIView *)self->_highlightView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIView *)self->_highlightView layer];
    [layer setBorderWidth:3.0];

    v7 = +[UIColor systemGray3Color];
    cGColor = [v7 CGColor];
    layer2 = [(UIView *)self->_highlightView layer];
    [layer2 setBorderColor:cGColor];

    highlightView = self->_highlightView;
  }

  return highlightView;
}

- (VehiclePickerButton)initWithFrame:(CGRect)frame
{
  v45.receiver = self;
  v45.super_class = VehiclePickerButton;
  v3 = [(VehiclePickerButton *)&v45 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    highlightView = [(VehiclePickerButton *)v3 highlightView];
    [(VehiclePickerButton *)v4 addSubview:highlightView];

    colorView = [(VehiclePickerButton *)v4 colorView];
    [(VehiclePickerButton *)v4 addSubview:colorView];

    colorView2 = [(VehiclePickerButton *)v4 colorView];
    leadingAnchor = [colorView2 leadingAnchor];
    leadingAnchor2 = [(VehiclePickerButton *)v4 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    leadingConstraint = v4->_leadingConstraint;
    v4->_leadingConstraint = v10;

    colorView3 = [(VehiclePickerButton *)v4 colorView];
    trailingAnchor = [colorView3 trailingAnchor];
    trailingAnchor2 = [(VehiclePickerButton *)v4 trailingAnchor];
    v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    trailingConstraint = v4->_trailingConstraint;
    v4->_trailingConstraint = v15;

    colorView4 = [(VehiclePickerButton *)v4 colorView];
    topAnchor = [colorView4 topAnchor];
    topAnchor2 = [(VehiclePickerButton *)v4 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    topConstraint = v4->_topConstraint;
    v4->_topConstraint = v20;

    colorView5 = [(VehiclePickerButton *)v4 colorView];
    bottomAnchor = [colorView5 bottomAnchor];
    bottomAnchor2 = [(VehiclePickerButton *)v4 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    bottomConstraint = v4->_bottomConstraint;
    v4->_bottomConstraint = v25;

    v46[0] = v4->_leadingConstraint;
    v46[1] = v4->_trailingConstraint;
    v46[2] = v4->_topConstraint;
    v46[3] = v4->_bottomConstraint;
    highlightView2 = [(VehiclePickerButton *)v4 highlightView];
    leadingAnchor3 = [highlightView2 leadingAnchor];
    leadingAnchor4 = [(VehiclePickerButton *)v4 leadingAnchor];
    v41 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v46[4] = v41;
    highlightView3 = [(VehiclePickerButton *)v4 highlightView];
    trailingAnchor3 = [highlightView3 trailingAnchor];
    trailingAnchor4 = [(VehiclePickerButton *)v4 trailingAnchor];
    v37 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v46[5] = v37;
    highlightView4 = [(VehiclePickerButton *)v4 highlightView];
    topAnchor3 = [highlightView4 topAnchor];
    topAnchor4 = [(VehiclePickerButton *)v4 topAnchor];
    v30 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v46[6] = v30;
    highlightView5 = [(VehiclePickerButton *)v4 highlightView];
    bottomAnchor3 = [highlightView5 bottomAnchor];
    bottomAnchor4 = [(VehiclePickerButton *)v4 bottomAnchor];
    v34 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v46[7] = v34;
    v35 = [NSArray arrayWithObjects:v46 count:8];
    [NSLayoutConstraint activateConstraints:v35];
  }

  return v4;
}

@end