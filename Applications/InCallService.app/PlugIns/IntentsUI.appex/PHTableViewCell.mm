@interface PHTableViewCell
+ (NSString)reuseIdentifier;
+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSDirectionalEdgeInsets)rootViewLayoutMargins;
- (PHTableViewCell)initWithCoder:(id)coder;
- (PHTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIColor)foregroundColor;
- (UIView)foregroundView;
- (double)titleLabelLeadingLayoutConstraintConstant;
- (id)loadRootViewAndContentViews;
- (void)commonInit;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)layoutSubviews;
- (void)setForegroundColor:(id)color;
- (void)setForegroundView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFontsAndLayoutMetrics;
- (void)updateFontsLayoutMetricsAndSeparatorInset;
@end

@implementation PHTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = NSStringFromClass(self);
  v3 = [NSString stringWithFormat:@"%@ReuseIdentifier", v2];

  return v3;
}

- (void)updateFontsLayoutMetricsAndSeparatorInset
{
  [(PHTableViewCell *)self updateFontsAndLayoutMetrics];
  v3 = objc_opt_class();
  traitCollection = [(PHTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [v3 separatorInsetForContentSizeCategory:preferredContentSizeCategory];
  [(PHTableViewCell *)self setSeparatorInset:?];
}

- (PHTableViewCell)initWithCoder:(id)coder
{
  [(PHTableViewCell *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PHTableViewCell;
  changeCopy = change;
  [(PHTableViewCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PHTableViewCell *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  preferredContentSizeCategory2 = [v5 preferredContentSizeCategory];

  if (preferredContentSizeCategory != preferredContentSizeCategory2)
  {
    [(PHTableViewCell *)self updateFontsLayoutMetricsAndSeparatorInset];
  }
}

+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category
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
    foregroundView = [(PHTableViewCell *)self foregroundView];
    backgroundColor = [foregroundView backgroundColor];
  }

  else
  {
    backgroundColor = 0;
  }

  return backgroundColor;
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  if (colorCopy && (+[UIColor clearColor](UIColor, "clearColor"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [colorCopy isEqual:v4], v4, (v5 & 1) == 0))
  {
    foregroundView = [(PHTableViewCell *)self foregroundView];
    backgroundColor = [foregroundView backgroundColor];

    v8 = colorCopy;
    if (backgroundColor == colorCopy)
    {
      goto LABEL_7;
    }

    foregroundView2 = [(PHTableViewCell *)self foregroundView];
    [foregroundView2 setBackgroundColor:colorCopy];

    foregroundView3 = [(PHTableViewCell *)self foregroundView];
    [foregroundView3 setUserInteractionEnabled:0];
  }

  else
  {
    [(PHTableViewCell *)self setForegroundView:0];
  }

  v8 = colorCopy;
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

- (void)setForegroundView:(id)view
{
  viewCopy = view;
  foregroundView = self->_foregroundView;
  v7 = viewCopy;
  if (foregroundView != viewCopy)
  {
    [(UIView *)foregroundView removeFromSuperview];
    objc_storeStrong(&self->_foregroundView, view);
    if (self->_foregroundView)
    {
      [(PHTableViewCell *)self addSubview:?];
    }
  }
}

- (PHTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = PHTableViewCell;
  v4 = [(PHTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PHTableViewCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  loadRootViewAndContentViews = [(PHTableViewCell *)self loadRootViewAndContentViews];
  rootView = self->_rootView;
  self->_rootView = loadRootViewAndContentViews;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)self->_rootView setDelegate:self];
  }

  contentView = [(PHTableViewCell *)self contentView];
  [contentView addSubview:self->_rootView];
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
  titleLabel = [(PHTableViewCell *)self titleLabel];
  font = [titleLabel font];
  fontName = [font fontName];
  v6 = TUGeoLocationMetadataCacheDataProvider_ptr;
  v7 = +[UIFont telephonyUIBodyShortEmphasizedFont];
  fontName2 = [v7 fontName];
  if ([fontName isEqual:fontName2])
  {
    subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
    font2 = [subtitleLabel font];
    fontName3 = [font2 fontName];
    v12 = +[UIFont telephonyUISubheadlineShortFont];
    [v12 fontName];
    v13 = v23 = titleLabel;
    v22 = [fontName3 isEqual:v13];

    v6 = TUGeoLocationMetadataCacheDataProvider_ptr;
    if (v22)
    {
      return;
    }
  }

  else
  {
  }

  telephonyUIBodyShortEmphasizedFont = [v6[133] telephonyUIBodyShortEmphasizedFont];
  titleLabel2 = [(PHTableViewCell *)self titleLabel];
  [titleLabel2 setFont:telephonyUIBodyShortEmphasizedFont];

  telephonyUISubheadlineShortFont = [v6[133] telephonyUISubheadlineShortFont];
  subtitleLabel2 = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel2 setFont:telephonyUISubheadlineShortFont];

  v18 = NUIContainerViewLengthUseDefault;
  subtitleLabel3 = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel3 setCustomBaselineOffsetFromBottom:v18];

  [(PHTableViewCell *)self effectiveBaselineOffsetFromBottom];
  v21 = v20;
  subtitleLabel4 = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel4 setCustomBaselineOffsetFromBottom:v21];
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  viewCopy = view;
  [(PHTableViewCell *)self rootViewLayoutMargins];
  if (!reason)
  {
    [viewCopy setDirectionalLayoutMargins:?];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  contentView = [(PHTableViewCell *)self contentView];
  [contentView bounds];
  v8 = v7;

  if (width >= v8)
  {
    width = v8;
  }

  rootView = [(PHTableViewCell *)self rootView];
  [rootView sizeThatFits:{width, height}];
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
  contentView = [(PHTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  rootView = [(PHTableViewCell *)self rootView];
  [rootView setFrame:{v5, v7, v9, v11}];

  if (self->_foregroundView)
  {
    contentView2 = [(PHTableViewCell *)self contentView];
    [contentView2 bringSubviewToFront:self->_foregroundView];

    [(PHTableViewCell *)self bounds];
    [(UIView *)self->_foregroundView setFrame:?];
  }
}

- (NSDirectionalEdgeInsets)rootViewLayoutMargins
{
  [(PHTableViewCell *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v4 = v3;
  titleLabel = [(PHTableViewCell *)self titleLabel];
  [titleLabel effectiveFirstBaselineOffsetFromContentTop];
  v7 = v4 - v6;
  [(PHTableViewCell *)self titleLabelLeadingLayoutConstraintConstant];
  v9 = v8;
  [(PHTableViewCell *)self subtitleLabelLastBaselineLayoutConstraintConstant];
  v11 = v10;
  subtitleLabel = [(PHTableViewCell *)self subtitleLabel];
  [subtitleLabel effectiveBaselineOffsetFromContentBottom];
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
  traitCollection = [(PHTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  [v3 titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:preferredContentSizeCategory];
  v7 = v6;

  return v7;
}

@end