@interface RAPHeaderFooterView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (RAPHeaderFooterView)initWithReuseIdentifier:(id)a3;
- (double)bottomPadding;
- (id)_initialConstraints;
- (void)_createSubviews;
- (void)contentSizeDidChange;
- (void)layoutSubviews;
- (void)setTitleLabelText:(id)a3;
@end

@implementation RAPHeaderFooterView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = RAPHeaderFooterView;
  [(RAPHeaderFooterView *)&v5 layoutSubviews];
  v3 = +[UIColor systemGrayColor];
  [(UILabel *)self->_titleLabel setTextColor:v3];

  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    +[RAPFontManager regularMoreReportTypesTitleFont];
  }

  else
  {
    +[RAPFontManager regularTitleFont];
  }
  v4 = ;
  [(UILabel *)self->_titleLabel setFont:v4];
}

- (void)setTitleLabelText:(id)a3
{
  v9 = a3;
  if (([v9 isEqualToString:self->_titleLabelText] & 1) == 0)
  {
    v4 = [v9 copy];
    titleLabelText = self->_titleLabelText;
    self->_titleLabelText = v4;

    v6 = [NSAttributedString alloc];
    if (self->_titleLabelText)
    {
      v7 = self->_titleLabelText;
    }

    else
    {
      v7 = &stru_1016631F0;
    }

    v8 = [v6 initWithString:v7 attributes:self->_attributes];
    [(UILabel *)self->_titleLabel setAttributedText:v8];
  }
}

- (id)_initialConstraints
{
  v3 = +[NSMutableArray array];
  v4 = [(UILabel *)self->_titleLabel trailingAnchor];
  v5 = [(RAPHeaderFooterView *)self contentView];
  v6 = [v5 trailingAnchor];
  v7 = [v4 constraintLessThanOrEqualToAnchor:v6];

  LODWORD(v8) = 1148829696;
  [v7 setPriority:v8];
  v9 = [(UILabel *)self->_titleLabel firstBaselineAnchor];
  v10 = [(RAPHeaderFooterView *)self contentView];
  v11 = [v10 topAnchor];
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    +[RAPFontManager regularMoreReportTypesTitleFont];
  }

  else
  {
    +[RAPFontManager regularTitleFont];
  }
  v12 = ;
  [v12 _mapkit_scaledValueForValue:38.0];
  v13 = [v9 constraintEqualToAnchor:v11 constant:?];
  topToFirstBaselineConstraint = self->_topToFirstBaselineConstraint;
  self->_topToFirstBaselineConstraint = v13;

  v15 = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v16 = [(RAPHeaderFooterView *)self contentView];
  v17 = [v16 bottomAnchor];
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    +[RAPFontManager regularMoreReportTypesTitleFont];
  }

  else
  {
    +[RAPFontManager regularTitleFont];
  }
  v18 = ;
  [v18 _mapkit_scaledValueForValue:-11.0];
  v19 = [v15 constraintEqualToAnchor:v17 constant:?];
  lastBaselineToBottomConstraint = self->_lastBaselineToBottomConstraint;
  self->_lastBaselineToBottomConstraint = v19;

  v28[0] = self->_topToFirstBaselineConstraint;
  v21 = [(UILabel *)self->_titleLabel leadingAnchor];
  v22 = [(RAPHeaderFooterView *)self contentView];
  v23 = [v22 leadingAnchor];
  v24 = [v21 constraintEqualToAnchor:v23 constant:16.0];
  v25 = self->_lastBaselineToBottomConstraint;
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = v7;
  v26 = [NSArray arrayWithObjects:v28 count:4];
  [v3 addObjectsFromArray:v26];

  return v3;
}

- (double)bottomPadding
{
  v2 = +[UIScreen mainScreen];
  [v2 scale];
  v4 = -1.0 / v3;

  return v4 + 7.0;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  v3 = [(RAPHeaderFooterView *)self contentView:a3.width];
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_createSubviews
{
  v3 = objc_alloc_init(UILabel);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [(RAPHeaderFooterView *)self contentView];
  [v5 addSubview:self->_titleLabel];

  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    +[RAPFontManager regularMoreReportTypesTitleFont];
  }

  else
  {
    +[RAPFontManager regularTitleFont];
  }
  v6 = ;
  [(UILabel *)self->_titleLabel setFont:v6];

  v7 = +[UIColor systemGrayColor];
  [(UILabel *)self->_titleLabel setTextColor:v7];

  v8 = [(RAPHeaderFooterView *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 5)
  {
    [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
  }

  v10 = self->_titleLabel;

  [(UILabel *)v10 setNumberOfLines:0];
}

- (void)contentSizeDidChange
{
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    +[RAPFontManager regularMoreReportTypesTitleFont];
  }

  else
  {
    +[RAPFontManager regularTitleFont];
  }
  v3 = ;
  [v3 _mapkit_scaledValueForValue:38.0];
  [(NSLayoutConstraint *)self->_topToFirstBaselineConstraint setConstant:?];

  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    +[RAPFontManager regularMoreReportTypesTitleFont];
  }

  else
  {
    +[RAPFontManager regularTitleFont];
  }
  v4 = ;
  [v4 _mapkit_scaledValueForValue:-11.0];
  [(NSLayoutConstraint *)self->_lastBaselineToBottomConstraint setConstant:?];

  [(RAPHeaderFooterView *)self setNeedsLayout];
}

- (RAPHeaderFooterView)initWithReuseIdentifier:(id)a3
{
  v12.receiver = self;
  v12.super_class = RAPHeaderFooterView;
  v3 = [(RAPHeaderFooterView *)&v12 initWithReuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    [(RAPHeaderFooterView *)v3 _createSubviews];
    v5 = [(RAPHeaderFooterView *)v4 _initialConstraints];
    [NSLayoutConstraint activateConstraints:v5];

    v6 = objc_alloc_init(NSMutableParagraphStyle);
    LODWORD(v7) = 1.0;
    [v6 setHyphenationFactor:v7];
    v13 = NSParagraphStyleAttributeName;
    v14 = v6;
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    attributes = v4->_attributes;
    v4->_attributes = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v4 selector:"contentSizeDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

@end