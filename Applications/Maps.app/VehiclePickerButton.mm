@interface VehiclePickerButton
- (UIEdgeInsets)colorViewInsets;
- (UIImageView)colorView;
- (UIView)highlightView;
- (VehiclePickerButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setActive:(BOOL)a3;
- (void)setColorViewInsets:(UIEdgeInsets)a3;
- (void)setNeedsOutlineStroke:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)traitCollectionDidChange:(id)a3
{
  v16.receiver = self;
  v16.super_class = VehiclePickerButton;
  v4 = a3;
  [(VehiclePickerButton *)&v16 traitCollectionDidChange:v4];
  v5 = [(VehiclePickerButton *)self traitCollection:v16.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    if ([(VehiclePickerButton *)self needsOutlineStroke])
    {
      v8 = +[UIColor systemGray3Color];
      v9 = [v8 CGColor];
      v10 = [(VehiclePickerButton *)self colorView];
      v11 = [v10 layer];
      [v11 setBorderColor:v9];
    }

    v12 = +[UIColor systemGray3Color];
    v13 = [v12 CGColor];
    v14 = [(VehiclePickerButton *)self highlightView];
    v15 = [v14 layer];
    [v15 setBorderColor:v13];
  }
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = VehiclePickerButton;
  [(VehiclePickerButton *)&v27 layoutSubviews];
  v3 = [(VehiclePickerButton *)self colorView];
  [v3 frame];
  Width = CGRectGetWidth(v28);
  v5 = [(VehiclePickerButton *)self colorView];
  [v5 frame];
  Height = CGRectGetHeight(v29);
  v7 = [(VehiclePickerButton *)self colorView];
  [v7 frame];
  if (Width >= Height)
  {
    v12 = CGRectGetHeight(*&v8);
  }

  else
  {
    v12 = CGRectGetWidth(*&v8);
  }

  v13 = v12 * 0.5;
  v14 = [(VehiclePickerButton *)self colorView];
  [v14 _setCornerRadius:v13];

  v15 = [(VehiclePickerButton *)self highlightView];
  [v15 frame];
  v16 = CGRectGetWidth(v30);
  v17 = [(VehiclePickerButton *)self highlightView];
  [v17 frame];
  v18 = CGRectGetHeight(v31);
  v19 = [(VehiclePickerButton *)self highlightView];
  [v19 frame];
  if (v16 < v18)
  {
    v24 = CGRectGetWidth(*&v20);
  }

  else
  {
    v24 = CGRectGetHeight(*&v20);
  }

  v25 = v24 * 0.5;
  v26 = [(VehiclePickerButton *)self highlightView];
  [v26 _setCornerRadius:v25];
}

- (void)setNeedsOutlineStroke:(BOOL)a3
{
  if (self->_needsOutlineStroke != a3)
  {
    v4 = a3;
    self->_needsOutlineStroke = a3;
    v6 = [(VehiclePickerButton *)self colorView];
    v7 = [v6 layer];
    v8 = v7;
    if (v4)
    {
      [v7 setBorderWidth:1.0];

      v9 = +[UIColor systemGray3Color];
      v10 = [v9 CGColor];
      v11 = [(VehiclePickerButton *)self colorView];
      v12 = [v11 layer];
      [v12 setBorderColor:v10];
    }

    else
    {
      [v7 setBorderWidth:0.0];

      v9 = [(VehiclePickerButton *)self colorView];
      v11 = [v9 layer];
      [v11 setBorderColor:0];
    }

    [(VehiclePickerButton *)self setNeedsDisplay];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v4 = a3;
    self->_active = a3;
    v6 = [(VehiclePickerButton *)self highlightView];
    [v6 setHidden:!v4];

    [(VehiclePickerButton *)self setNeedsLayout];
  }
}

- (void)setColorViewInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_colorViewInsets.top, v3), vceqq_f64(*&self->_colorViewInsets.bottom, v4))), 0xFuLL))) & 1) == 0)
  {
    self->_colorViewInsets = a3;
    top = a3.top;
    bottom = a3.bottom;
    left = a3.left;
    right = a3.right;
    v6 = [(VehiclePickerButton *)self leadingConstraint];
    [v6 setConstant:left];

    v7 = [(VehiclePickerButton *)self trailingConstraint];
    [v7 setConstant:-right];

    v8 = [(VehiclePickerButton *)self topConstraint];
    [v8 setConstant:top];

    v9 = [(VehiclePickerButton *)self bottomConstraint];
    [v9 setConstant:-bottom];

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
    v6 = [(UIView *)self->_highlightView layer];
    [v6 setBorderWidth:3.0];

    v7 = +[UIColor systemGray3Color];
    v8 = [v7 CGColor];
    v9 = [(UIView *)self->_highlightView layer];
    [v9 setBorderColor:v8];

    highlightView = self->_highlightView;
  }

  return highlightView;
}

- (VehiclePickerButton)initWithFrame:(CGRect)a3
{
  v45.receiver = self;
  v45.super_class = VehiclePickerButton;
  v3 = [(VehiclePickerButton *)&v45 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(VehiclePickerButton *)v3 highlightView];
    [(VehiclePickerButton *)v4 addSubview:v5];

    v6 = [(VehiclePickerButton *)v4 colorView];
    [(VehiclePickerButton *)v4 addSubview:v6];

    v7 = [(VehiclePickerButton *)v4 colorView];
    v8 = [v7 leadingAnchor];
    v9 = [(VehiclePickerButton *)v4 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    leadingConstraint = v4->_leadingConstraint;
    v4->_leadingConstraint = v10;

    v12 = [(VehiclePickerButton *)v4 colorView];
    v13 = [v12 trailingAnchor];
    v14 = [(VehiclePickerButton *)v4 trailingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    trailingConstraint = v4->_trailingConstraint;
    v4->_trailingConstraint = v15;

    v17 = [(VehiclePickerButton *)v4 colorView];
    v18 = [v17 topAnchor];
    v19 = [(VehiclePickerButton *)v4 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    topConstraint = v4->_topConstraint;
    v4->_topConstraint = v20;

    v22 = [(VehiclePickerButton *)v4 colorView];
    v23 = [v22 bottomAnchor];
    v24 = [(VehiclePickerButton *)v4 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    bottomConstraint = v4->_bottomConstraint;
    v4->_bottomConstraint = v25;

    v46[0] = v4->_leadingConstraint;
    v46[1] = v4->_trailingConstraint;
    v46[2] = v4->_topConstraint;
    v46[3] = v4->_bottomConstraint;
    v44 = [(VehiclePickerButton *)v4 highlightView];
    v43 = [v44 leadingAnchor];
    v42 = [(VehiclePickerButton *)v4 leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v46[4] = v41;
    v40 = [(VehiclePickerButton *)v4 highlightView];
    v39 = [v40 trailingAnchor];
    v38 = [(VehiclePickerButton *)v4 trailingAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v46[5] = v37;
    v27 = [(VehiclePickerButton *)v4 highlightView];
    v28 = [v27 topAnchor];
    v29 = [(VehiclePickerButton *)v4 topAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v46[6] = v30;
    v31 = [(VehiclePickerButton *)v4 highlightView];
    v32 = [v31 bottomAnchor];
    v33 = [(VehiclePickerButton *)v4 bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];
    v46[7] = v34;
    v35 = [NSArray arrayWithObjects:v46 count:8];
    [NSLayoutConstraint activateConstraints:v35];
  }

  return v4;
}

@end