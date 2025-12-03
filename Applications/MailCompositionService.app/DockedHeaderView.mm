@interface DockedHeaderView
- (DockedHeaderView)initWithFrame:(CGRect)frame;
- (id)backgroundColor;
- (void)_createPrimaryViews;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setCornerRadius:(double)radius;
- (void)setTitle:(id)title;
@end

@implementation DockedHeaderView

- (DockedHeaderView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = DockedHeaderView;
  v3 = [(DockedHeaderView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DockedHeaderView *)v3 setOpaque:0];
    v5 = +[UIColor clearColor];
    [(DockedHeaderView *)v4 setBackgroundColor:v5];

    layer = [(DockedHeaderView *)v4 layer];
    [layer setAllowsGroupOpacity:1];

    [(DockedHeaderView *)v4 _createPrimaryViews];
  }

  return v4;
}

- (void)_createPrimaryViews
{
  v3 = [UIView alloc];
  [(DockedHeaderView *)self bounds];
  v20 = [v3 initWithFrame:?];
  [(DockedHeaderView *)self setBackgroundView:?];

  backgroundView = [(DockedHeaderView *)self backgroundView];
  [backgroundView setAutoresizingMask:18];

  backgroundView2 = [(DockedHeaderView *)self backgroundView];
  layer = [backgroundView2 layer];
  [layer setMaskedCorners:3];

  backgroundView3 = [(DockedHeaderView *)self backgroundView];
  [backgroundView3 setUserInteractionEnabled:0];

  backgroundView4 = [(DockedHeaderView *)self backgroundView];
  layer2 = [backgroundView4 layer];
  [layer2 setAllowsGroupOpacity:1];

  backgroundView5 = [(DockedHeaderView *)self backgroundView];
  [(DockedHeaderView *)self addSubview:?];

  v6 = [UIView alloc];
  [(DockedHeaderView *)self bounds];
  v26 = [v6 initWithFrame:?];
  [(DockedHeaderView *)self setContentView:?];

  contentView = [(DockedHeaderView *)self contentView];
  layer3 = [contentView layer];
  [layer3 setAllowsGroupOpacity:1];

  contentView2 = [(DockedHeaderView *)self contentView];
  [(DockedHeaderView *)self addSubview:?];

  contentView3 = [(DockedHeaderView *)self contentView];
  [contentView3 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  if (MUISolariumFeatureEnabled())
  {
    +[SheetMetrics cornerRadius];
    v15 = v15 - v16;
  }

  v30 = [[UILabel alloc] initWithFrame:{v9, v11, v13, v15}];
  [(DockedHeaderView *)self setTitleLabel:?];

  v31 = [UIFont boldSystemFontOfSize:17.0];
  titleLabel = [(DockedHeaderView *)self titleLabel];
  [titleLabel setFont:v31];

  titleLabel2 = [(DockedHeaderView *)self titleLabel];
  [titleLabel2 setTextAlignment:1];

  titleLabel3 = [(DockedHeaderView *)self titleLabel];
  [titleLabel3 setAutoresizingMask:18];

  titleLabel4 = [(DockedHeaderView *)self titleLabel];
  layer4 = [titleLabel4 layer];
  [layer4 setAllowsGroupOpacity:1];

  contentView4 = [(DockedHeaderView *)self contentView];
  titleLabel5 = [(DockedHeaderView *)self titleLabel];
  [contentView4 addSubview:titleLabel5];
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    backgroundView = [(DockedHeaderView *)self backgroundView];
    [backgroundView _setContinuousCornerRadius:radius];

    backgroundView2 = [(DockedHeaderView *)self backgroundView];
    [backgroundView2 setClipsToBounds:1];
  }
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = DockedHeaderView;
  [(DockedHeaderView *)&v15 layoutSubviews];
  [(DockedHeaderView *)self safeAreaInsets];
  v4 = v3;
  [(DockedHeaderView *)self bounds];
  v6 = v5;
  v8 = v7;
  [(DockedHeaderView *)self layoutMargins];
  v10 = v6 + v9;
  v12 = v8 - (v9 + v11);
  [(DockedHeaderView *)self bounds];
  v13 = CGRectGetHeight(v16) - v4;
  contentView = [(DockedHeaderView *)self contentView];
  [contentView setFrame:{v10, 0.0, v12, v13}];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    titleLabel = [(DockedHeaderView *)self titleLabel];
    [titleLabel setText:titleCopy];
  }
}

- (id)backgroundColor
{
  backgroundView = [(DockedHeaderView *)self backgroundView];
  backgroundColor = [backgroundView backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundView = [(DockedHeaderView *)self backgroundView];
  [backgroundView setBackgroundColor:colorCopy];
}

@end