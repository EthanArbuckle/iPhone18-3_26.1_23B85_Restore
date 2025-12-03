@interface ResultsSectionHeaderView
+ (double)heightWhenFirstNonEmptySection:(BOOL)section title:(id)title traitCollection:(id)collection;
- (ResultsSectionHeaderView)initWithTitle:(id)title isFirstNonEmptySection:(BOOL)section showHairline:(BOOL)hairline;
@end

@implementation ResultsSectionHeaderView

+ (double)heightWhenFirstNonEmptySection:(BOOL)section title:(id)title traitCollection:(id)collection
{
  sectionCopy = section;
  v7 = [collection _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  _font = [self _font];
  [v7 _maps_displayScaleOrMainScreenScale];
  [UILabel _maps_maximumHeightWithFont:_font numberOfLines:1 displayScale:?];
  v10 = 26.0;
  if (sectionCopy)
  {
    v10 = 16.0;
  }

  v11 = v9 + v10 + 8.0;

  return v11;
}

- (ResultsSectionHeaderView)initWithTitle:(id)title isFirstNonEmptySection:(BOOL)section showHairline:(BOOL)hairline
{
  hairlineCopy = hairline;
  sectionCopy = section;
  titleCopy = title;
  v9 = [(ResultsSectionHeaderView *)self initWithReuseIdentifier:0];
  if (v9)
  {
    v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(ResultsSectionHeaderView *)v9 setBackgroundView:v10];

    v11 = objc_alloc_init(UILabel);
    v33 = hairlineCopy;
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v11;

    [(UILabel *)v9->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = +[UIColor secondaryLabelColor];
    [(UILabel *)v9->_titleLabel setTextColor:v13];

    [(UILabel *)v9->_titleLabel setText:titleCopy];
    _font = [objc_opt_class() _font];
    [(UILabel *)v9->_titleLabel setFont:_font];

    [(ResultsSectionHeaderView *)v9 addSubview:v9->_titleLabel];
    topAnchor = [(ResultsSectionHeaderView *)v9 topAnchor];
    topAnchor2 = [(UILabel *)v9->_titleLabel topAnchor];
    v17 = -26.0;
    v18 = 16.0;
    if (sectionCopy)
    {
      v17 = 16.0;
    }

    LODWORD(v18) = 1132068864;
    v19 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v17 priority:v18];
    v34 = titleCopy;
    topConstraint = v9->_topConstraint;
    v9->_topConstraint = v19;

    v35[0] = v9->_topConstraint;
    bottomAnchor = [(UILabel *)v9->_titleLabel bottomAnchor];
    bottomAnchor2 = [(ResultsSectionHeaderView *)v9 bottomAnchor];
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
    v35[1] = v22;
    leadingAnchor = [(UILabel *)v9->_titleLabel leadingAnchor];
    leadingAnchor2 = [(ResultsSectionHeaderView *)v9 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v35[2] = v25;
    trailingAnchor = [(UILabel *)v9->_titleLabel trailingAnchor];
    trailingAnchor2 = [(ResultsSectionHeaderView *)v9 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v35[3] = v28;
    v29 = [NSArray arrayWithObjects:v35 count:4];
    [NSLayoutConstraint activateConstraints:v29];

    titleCopy = v34;
    if (v33 && MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      v30 = [(ResultsSectionHeaderView *)v9 _maps_addHairlineAtBottomWithLeadingMargin:16.0 trailingMargin:0.0];
    }
  }

  return v9;
}

@end