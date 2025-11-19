@interface SimpleSignView
- (GuidanceManeuverView)maneuverView;
- (SimpleSignView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)maneuverViewEdgeInsets;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setManeuverViewEdgeInsets:(UIEdgeInsets)a3;
- (void)setShieldImage:(id)a3;
- (void)setStyle:(id)a3;
- (void)updateStyleForTheme;
@end

@implementation SimpleSignView

- (UIEdgeInsets)maneuverViewEdgeInsets
{
  top = self->_maneuverViewEdgeInsets.top;
  left = self->_maneuverViewEdgeInsets.left;
  bottom = self->_maneuverViewEdgeInsets.bottom;
  right = self->_maneuverViewEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setShieldImage:(id)a3
{
  v11 = a3;
  v4 = [(UIImageView *)self->_shieldView image];

  v5 = v11;
  if (v4 != v11)
  {
    shieldView = self->_shieldView;
    if (!shieldView)
    {
      v7 = [UIImageView alloc];
      [(SimpleSignView *)self bounds];
      v8 = [v7 initWithFrame:?];
      v9 = self->_shieldView;
      self->_shieldView = v8;

      [(SimpleSignView *)self addSubview:self->_shieldView];
      shieldView = self->_shieldView;
    }

    [(UIImageView *)shieldView setImage:v11];
    v10 = [(SimpleSignView *)self maneuverView];
    [v10 setHidden:v11 != 0];

    [(UIImageView *)self->_shieldView sizeToFit];
    [(SimpleSignView *)self setNeedsLayout];
    v5 = v11;
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if (sub_10000FA08(self) == 5 && self->_highlighted != v3)
  {
    self->_highlighted = v3;

    [(SimpleSignView *)self updateStyleForTheme];
  }
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = SimpleSignView;
  [(SimpleSignView *)&v10 layoutSubviews];
  [(UIImageView *)self->_shieldView bounds];
  v4 = v3;
  v6 = v5;
  [(SimpleSignView *)self bounds];
  CGRectGetMidX(v11);
  UIRoundToViewScale();
  v8 = v7;
  [(SimpleSignView *)self bounds];
  CGRectGetMidY(v12);
  UIRoundToViewScale();
  [(UIImageView *)self->_shieldView setFrame:v8, v9, v4, v6];
}

- (void)setManeuverViewEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  self->_maneuverViewEdgeInsets = a3;
  [(SimpleSignView *)self bounds];
  v9 = v8 + left;
  v11 = v10 + top;
  v13 = v12 - (left + right);
  v15 = v14 - (top + bottom);
  v16 = [(SimpleSignView *)self maneuverView];
  [v16 setFrame:{v9, v11, v13, v15}];
}

- (GuidanceManeuverView)maneuverView
{
  maneuverView = self->_maneuverView;
  if (!maneuverView)
  {
    v4 = [GuidanceManeuverView alloc];
    [(SimpleSignView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(SimpleSignView *)self maneuverViewEdgeInsets];
    v17 = [(GuidanceManeuverView *)v4 initWithFrame:0 textureProvider:v16 + v6, v13 + v8, v10 - (v16 + v14), v12 - (v13 + v15)];
    v18 = self->_maneuverView;
    self->_maneuverView = v17;

    [(GuidanceManeuverView *)self->_maneuverView setAutoresizingMask:18];
    v19 = [(SimpleSignView *)self style];

    if (v19)
    {
      v20 = [(SimpleSignView *)self style];
      v21 = objc_opt_class();
      if (v21)
      {
        [v21 arrowMetricsForStyle:0];
      }

      else
      {
        memset(__src, 0, sizeof(__src));
      }

      v22 = self->_maneuverView;
      memcpy(__dst, __src, sizeof(__dst));
      [(GuidanceManeuverView *)v22 setArrowMetrics:__dst];

      v23 = [(SimpleSignView *)self style];
      v24 = objc_opt_class();
      if (v24)
      {
        [v24 junctionArrowMetricsForStyle:0];
      }

      else
      {
        memset(v27, 0, sizeof(v27));
      }

      v25 = self->_maneuverView;
      memcpy(__dst, v27, sizeof(__dst));
      [(GuidanceManeuverView *)v25 setJunctionArrowMetrics:__dst];
    }

    [(SimpleSignView *)self addSubview:self->_maneuverView, v27[0], v27[1], v27[2], v27[3], v27[4], v27[5], v27[6], v27[7], v27[8], v27[9], v27[10], v27[11], v27[12], v27[13], v27[14], v27[15], v27[16], v27[17], v27[18], v27[19], v27[20], v27[21], v27[22], v27[23], v27[24], v27[25], v27[26], v27[27], v27[28], v27[29]];
    maneuverView = self->_maneuverView;
  }

  return maneuverView;
}

- (void)updateStyleForTheme
{
  if ([(SimpleSignView *)self isHighlighted])
  {
    v3 = +[UIColor systemWhiteColor];
    p_maneuverView = &self->_maneuverView;
    [(GuidanceManeuverView *)self->_maneuverView setArrowColor:v3];
  }

  else
  {
    v3 = [(SimpleSignView *)self style];
    v5 = [v3 foregroundColor];
    p_maneuverView = &self->_maneuverView;
    [(GuidanceManeuverView *)self->_maneuverView setArrowColor:v5];
  }

  if ([(SimpleSignView *)self isHighlighted])
  {
    v6 = +[UIColor systemWhiteColor];
    [v6 colorWithAlphaComponent:0.800000012];
  }

  else
  {
    v6 = [(SimpleSignView *)self style];
    [v6 accentColor];
  }
  v7 = ;
  [(GuidanceManeuverView *)*p_maneuverView setAccentColor:v7];

  v8 = [(SimpleSignView *)self style];

  if (v8)
  {
    v9 = [(SimpleSignView *)self style];
    v10 = objc_opt_class();
    if (v10)
    {
      [v10 arrowMetricsForStyle:0];
    }

    else
    {
      memset(v21, 0, sizeof(v21));
    }

    v13 = *p_maneuverView;
    memcpy(__dst, v21, sizeof(__dst));
    [(GuidanceManeuverView *)v13 setArrowMetrics:__dst];

    v14 = [(SimpleSignView *)self style];
    v15 = objc_opt_class();
    if (v15)
    {
      [v15 junctionArrowMetricsForStyle:0];
    }

    else
    {
      memset(v19, 0, sizeof(v19));
    }

    v16 = *p_maneuverView;
    memcpy(__dst, v19, sizeof(__dst));
    [(GuidanceManeuverView *)v16 setJunctionArrowMetrics:__dst];
  }

  else
  {
    MKDefaultGuidanceManeuverMetrics();
    v11 = *p_maneuverView;
    memcpy(__dst, __src, sizeof(__dst));
    [(GuidanceManeuverView *)v11 setArrowMetrics:__dst];
    MKDefaultJunctionManeuverMetrics();
    v12 = *p_maneuverView;
    memcpy(__dst, v17, sizeof(__dst));
    [(GuidanceManeuverView *)v12 setJunctionArrowMetrics:__dst];
  }
}

- (void)setStyle:(id)a3
{
  v5 = a3;
  if (self->_style != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_style, a3);
    v6 = [(SignStyle *)v7 squareSignImage];
    [(UIImageView *)self->_backgroundView setImage:v6];

    [(SimpleSignView *)self updateStyleForTheme];
    v5 = v7;
  }
}

- (SimpleSignView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = SimpleSignView;
  v3 = [(SimpleSignView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(SimpleSignView *)v3 setAccessibilityIdentifier:v5];

    v6 = [UIImageView alloc];
    [(SimpleSignView *)v3 bounds];
    v7 = [v6 initWithFrame:?];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v7;

    [(UIImageView *)v3->_backgroundView setAutoresizingMask:18];
    [(SimpleSignView *)v3 addSubview:v3->_backgroundView];
  }

  return v3;
}

@end