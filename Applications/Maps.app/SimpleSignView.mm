@interface SimpleSignView
- (GuidanceManeuverView)maneuverView;
- (SimpleSignView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)maneuverViewEdgeInsets;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setManeuverViewEdgeInsets:(UIEdgeInsets)insets;
- (void)setShieldImage:(id)image;
- (void)setStyle:(id)style;
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

- (void)setShieldImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_shieldView image];

  v5 = imageCopy;
  if (image != imageCopy)
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

    [(UIImageView *)shieldView setImage:imageCopy];
    maneuverView = [(SimpleSignView *)self maneuverView];
    [maneuverView setHidden:imageCopy != 0];

    [(UIImageView *)self->_shieldView sizeToFit];
    [(SimpleSignView *)self setNeedsLayout];
    v5 = imageCopy;
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if (sub_10000FA08(self) == 5 && self->_highlighted != highlightedCopy)
  {
    self->_highlighted = highlightedCopy;

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

- (void)setManeuverViewEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  self->_maneuverViewEdgeInsets = insets;
  [(SimpleSignView *)self bounds];
  v9 = v8 + left;
  v11 = v10 + top;
  v13 = v12 - (left + right);
  v15 = v14 - (top + bottom);
  maneuverView = [(SimpleSignView *)self maneuverView];
  [maneuverView setFrame:{v9, v11, v13, v15}];
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
    style = [(SimpleSignView *)self style];

    if (style)
    {
      style2 = [(SimpleSignView *)self style];
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

      style3 = [(SimpleSignView *)self style];
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
    style = +[UIColor systemWhiteColor];
    p_maneuverView = &self->_maneuverView;
    [(GuidanceManeuverView *)self->_maneuverView setArrowColor:style];
  }

  else
  {
    style = [(SimpleSignView *)self style];
    foregroundColor = [style foregroundColor];
    p_maneuverView = &self->_maneuverView;
    [(GuidanceManeuverView *)self->_maneuverView setArrowColor:foregroundColor];
  }

  if ([(SimpleSignView *)self isHighlighted])
  {
    style2 = +[UIColor systemWhiteColor];
    [style2 colorWithAlphaComponent:0.800000012];
  }

  else
  {
    style2 = [(SimpleSignView *)self style];
    [style2 accentColor];
  }
  v7 = ;
  [(GuidanceManeuverView *)*p_maneuverView setAccentColor:v7];

  style3 = [(SimpleSignView *)self style];

  if (style3)
  {
    style4 = [(SimpleSignView *)self style];
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

    style5 = [(SimpleSignView *)self style];
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

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (self->_style != styleCopy)
  {
    v7 = styleCopy;
    objc_storeStrong(&self->_style, style);
    squareSignImage = [(SignStyle *)v7 squareSignImage];
    [(UIImageView *)self->_backgroundView setImage:squareSignImage];

    [(SimpleSignView *)self updateStyleForTheme];
    styleCopy = v7;
  }
}

- (SimpleSignView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = SimpleSignView;
  v3 = [(SimpleSignView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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