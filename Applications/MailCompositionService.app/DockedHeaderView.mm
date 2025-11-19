@interface DockedHeaderView
- (DockedHeaderView)initWithFrame:(CGRect)a3;
- (id)backgroundColor;
- (void)_createPrimaryViews;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setTitle:(id)a3;
@end

@implementation DockedHeaderView

- (DockedHeaderView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = DockedHeaderView;
  v3 = [(DockedHeaderView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DockedHeaderView *)v3 setOpaque:0];
    v5 = +[UIColor clearColor];
    [(DockedHeaderView *)v4 setBackgroundColor:v5];

    v6 = [(DockedHeaderView *)v4 layer];
    [v6 setAllowsGroupOpacity:1];

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

  v21 = [(DockedHeaderView *)self backgroundView];
  [v21 setAutoresizingMask:18];

  v22 = [(DockedHeaderView *)self backgroundView];
  v4 = [v22 layer];
  [v4 setMaskedCorners:3];

  v23 = [(DockedHeaderView *)self backgroundView];
  [v23 setUserInteractionEnabled:0];

  v24 = [(DockedHeaderView *)self backgroundView];
  v5 = [v24 layer];
  [v5 setAllowsGroupOpacity:1];

  v25 = [(DockedHeaderView *)self backgroundView];
  [(DockedHeaderView *)self addSubview:?];

  v6 = [UIView alloc];
  [(DockedHeaderView *)self bounds];
  v26 = [v6 initWithFrame:?];
  [(DockedHeaderView *)self setContentView:?];

  v27 = [(DockedHeaderView *)self contentView];
  v7 = [v27 layer];
  [v7 setAllowsGroupOpacity:1];

  v28 = [(DockedHeaderView *)self contentView];
  [(DockedHeaderView *)self addSubview:?];

  v29 = [(DockedHeaderView *)self contentView];
  [v29 bounds];
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
  v17 = [(DockedHeaderView *)self titleLabel];
  [v17 setFont:v31];

  v32 = [(DockedHeaderView *)self titleLabel];
  [v32 setTextAlignment:1];

  v33 = [(DockedHeaderView *)self titleLabel];
  [v33 setAutoresizingMask:18];

  v34 = [(DockedHeaderView *)self titleLabel];
  v18 = [v34 layer];
  [v18 setAllowsGroupOpacity:1];

  v35 = [(DockedHeaderView *)self contentView];
  v19 = [(DockedHeaderView *)self titleLabel];
  [v35 addSubview:v19];
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    v5 = [(DockedHeaderView *)self backgroundView];
    [v5 _setContinuousCornerRadius:a3];

    v6 = [(DockedHeaderView *)self backgroundView];
    [v6 setClipsToBounds:1];
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
  v14 = [(DockedHeaderView *)self contentView];
  [v14 setFrame:{v10, 0.0, v12, v13}];
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [v7 copy];
    title = self->_title;
    self->_title = v4;

    v6 = [(DockedHeaderView *)self titleLabel];
    [v6 setText:v7];
  }
}

- (id)backgroundColor
{
  v2 = [(DockedHeaderView *)self backgroundView];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  v4 = [(DockedHeaderView *)self backgroundView];
  [v4 setBackgroundColor:v5];
}

@end