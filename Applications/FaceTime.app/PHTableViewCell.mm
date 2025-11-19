@interface PHTableViewCell
+ (NSString)reuseIdentifier;
+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSDirectionalEdgeInsets)rootViewLayoutMargins;
- (PHTableViewCell)initWithCoder:(id)a3;
- (PHTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIColor)foregroundColor;
- (UIView)foregroundView;
- (double)titleLabelLeadingLayoutConstraintConstant;
- (id)loadRootViewAndContentViews;
- (void)commonInit;
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)layoutSubviews;
- (void)setForegroundColor:(id)a3;
- (void)setForegroundView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFontsAndLayoutMetrics;
- (void)updateFontsLayoutMetricsAndSeparatorInset;
@end

@implementation PHTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = NSStringFromClass(a1);
  v3 = [NSString stringWithFormat:@"%@ReuseIdentifier", v2];

  return v3;
}

- (void)updateFontsLayoutMetricsAndSeparatorInset
{
  [(PHTableViewCell *)self updateFontsAndLayoutMetrics];
  v3 = objc_opt_class();
  v5 = [(PHTableViewCell *)self traitCollection];
  v4 = [v5 preferredContentSizeCategory];
  [v3 separatorInsetForContentSizeCategory:v4];
  [(PHTableViewCell *)self setSeparatorInset:?];
}

- (PHTableViewCell)initWithCoder:(id)a3
{
  [(PHTableViewCell *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PHTableViewCell;
  v4 = a3;
  [(PHTableViewCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(PHTableViewCell *)self traitCollection:v8.receiver];
  v6 = [v4 preferredContentSizeCategory];

  v7 = [v5 preferredContentSizeCategory];

  if (v6 != v7)
  {
    [(PHTableViewCell *)self updateFontsLayoutMetricsAndSeparatorInset];
  }
}

+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)a3
{
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIColor)foregroundColor
{
  if (self->_foregroundView)
  {
    v2 = [(PHTableViewCell *)self foregroundView];
    v3 = [v2 backgroundColor];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setForegroundColor:(id)a3
{
  v11 = a3;
  if (v11 && (+[UIColor clearColor](UIColor, "clearColor"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v11 isEqual:v4], v4, (v5 & 1) == 0))
  {
    v6 = [(PHTableViewCell *)self foregroundView];
    v7 = [v6 backgroundColor];

    v8 = v11;
    if (v7 == v11)
    {
      goto LABEL_7;
    }

    v9 = [(PHTableViewCell *)self foregroundView];
    [v9 setBackgroundColor:v11];

    v10 = [(PHTableViewCell *)self foregroundView];
    [v10 setUserInteractionEnabled:0];
  }

  else
  {
    [(PHTableViewCell *)self setForegroundView:0];
  }

  v8 = v11;
LABEL_7:
}

- (UIView)foregroundView
{
  foregroundView = self->_foregroundView;
  if (!foregroundView)
  {
    v4 = objc_opt_new();
    [(PHTableViewCell *)self setForegroundView:v4];

    foregroundView = self->_foregroundView;
  }

  return foregroundView;
}

- (void)setForegroundView:(id)a3
{
  v5 = a3;
  foregroundView = self->_foregroundView;
  v7 = v5;
  if (foregroundView != v5)
  {
    [(UIView *)foregroundView removeFromSuperview];
    objc_storeStrong(&self->_foregroundView, a3);
    if (self->_foregroundView)
    {
      [(PHTableViewCell *)self addSubview:?];
    }
  }
}

- (PHTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = PHTableViewCell;
  v4 = [(PHTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PHTableViewCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = [(PHTableViewCell *)self loadRootViewAndContentViews];
  rootView = self->_rootView;
  self->_rootView = v3;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self->_rootView setDelegate:self];
  }

  v5 = [(PHTableViewCell *)self contentView];
  [v5 addSubview:self->_rootView];
}

- (id)loadRootViewAndContentViews
{
  v3 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"Title"];
  LODWORD(v5) = 1148846080;
  [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v6];
  v7 = objc_alloc_init(UILabel);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v7;

  [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:@"Subtitle"];
  LODWORD(v9) = 1148846080;
  [(UILabel *)self->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [(UILabel *)self->_subtitleLabel setContentHuggingPriority:1 forAxis:v10];
  return 0;
}

- (void)updateFontsAndLayoutMetrics
{
  v3 = [(PHTableViewCell *)self titleLabel];
  v4 = [v3 font];
  v5 = [v4 fontName];
  v6 = OS_os_log_ptr;
  v7 = +[UIFont telephonyUIBodyShortEmphasizedFont];
  v8 = [v7 fontName];
  if ([v5 isEqual:v8])
  {
    v9 = [(PHTableViewCell *)self subtitleLabel];
    v10 = [v9 font];
    v11 = [v10 fontName];
    v12 = +[UIFont telephonyUISubheadlineShortFont];
    [v12 fontName];
    v13 = v23 = v3;
    v22 = [v11 isEqual:v13];

    v6 = OS_os_log_ptr;
    if (v22)
    {
      return;
    }
  }

  else
  {
  }

  v14 = [v6[69] telephonyUIBodyShortEmphasizedFont];
  v15 = [(PHTableViewCell *)self titleLabel];
  [v15 setFont:v14];

  v16 = [v6[69] telephonyUISubheadlineShortFont];
  v17 = [(PHTableViewCell *)self subtitleLabel];
  [v17 setFont:v16];

  v18 = NUIContainerViewLengthUseDefault;
  v19 = [(PHTableViewCell *)self subtitleLabel];
  [v19 setCustomBaselineOffsetFromBottom:v18];

  [(PHTableViewCell *)self effectiveBaselineOffsetFromBottom];
  v21 = v20;
  v24 = [(PHTableViewCell *)self subtitleLabel];
  [v24 setCustomBaselineOffsetFromBottom:v21];
}

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  v7 = a3;
  [(PHTableViewCell *)self rootViewLayoutMargins];
  if (!a5)
  {
    [v7 setDirectionalLayoutMargins:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(PHTableViewCell *)self contentView];
  [v6 bounds];
  v8 = v7;

  if (width >= v8)
  {
    width = v8;
  }

  v9 = [(PHTableViewCell *)self rootView];
  [v9 sizeThatFits:{width, height}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PHTableViewCell;
  [(PHTableViewCell *)&v14 layoutSubviews];
  v3 = [(PHTableViewCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PHTableViewCell *)self rootView];
  [v12 setFrame:{v5, v7, v9, v11}];

  if (self->_foregroundView)
  {
    v13 = [(PHTableViewCell *)self contentView];
    [v13 bringSubviewToFront:self->_foregroundView];

    [(PHTableViewCell *)self bounds];
    [(UIView *)self->_foregroundView setFrame:?];
  }
}

- (NSDirectionalEdgeInsets)rootViewLayoutMargins
{
  [(PHTableViewCell *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v4 = v3;
  v5 = [(PHTableViewCell *)self titleLabel];
  [v5 effectiveFirstBaselineOffsetFromContentTop];
  v7 = v4 - v6;
  [(PHTableViewCell *)self titleLabelLeadingLayoutConstraintConstant];
  v9 = v8;
  [(PHTableViewCell *)self subtitleLabelLastBaselineLayoutConstraintConstant];
  v11 = v10;
  v12 = [(PHTableViewCell *)self subtitleLabel];
  [v12 effectiveBaselineOffsetFromContentBottom];
  v14 = v11 - v13;
  [(PHTableViewCell *)self titleLabelTrailingLayoutConstraintConstant];
  v16 = v15;

  v17 = v7;
  v18 = v9;
  v19 = v14;
  v20 = v16;
  result.trailing = v20;
  result.bottom = v19;
  result.leading = v18;
  result.top = v17;
  return result;
}

- (double)titleLabelLeadingLayoutConstraintConstant
{
  v3 = objc_opt_class();
  v4 = [(PHTableViewCell *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  [v3 titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:v5];
  v7 = v6;

  return v7;
}

@end