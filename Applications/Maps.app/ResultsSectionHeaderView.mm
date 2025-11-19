@interface ResultsSectionHeaderView
+ (double)heightWhenFirstNonEmptySection:(BOOL)a3 title:(id)a4 traitCollection:(id)a5;
- (ResultsSectionHeaderView)initWithTitle:(id)a3 isFirstNonEmptySection:(BOOL)a4 showHairline:(BOOL)a5;
@end

@implementation ResultsSectionHeaderView

+ (double)heightWhenFirstNonEmptySection:(BOOL)a3 title:(id)a4 traitCollection:(id)a5
{
  v5 = a3;
  v7 = [a5 _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v8 = [a1 _font];
  [v7 _maps_displayScaleOrMainScreenScale];
  [UILabel _maps_maximumHeightWithFont:v8 numberOfLines:1 displayScale:?];
  v10 = 26.0;
  if (v5)
  {
    v10 = 16.0;
  }

  v11 = v9 + v10 + 8.0;

  return v11;
}

- (ResultsSectionHeaderView)initWithTitle:(id)a3 isFirstNonEmptySection:(BOOL)a4 showHairline:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [(ResultsSectionHeaderView *)self initWithReuseIdentifier:0];
  if (v9)
  {
    v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(ResultsSectionHeaderView *)v9 setBackgroundView:v10];

    v11 = objc_alloc_init(UILabel);
    v33 = v5;
    titleLabel = v9->_titleLabel;
    v9->_titleLabel = v11;

    [(UILabel *)v9->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = +[UIColor secondaryLabelColor];
    [(UILabel *)v9->_titleLabel setTextColor:v13];

    [(UILabel *)v9->_titleLabel setText:v8];
    v14 = [objc_opt_class() _font];
    [(UILabel *)v9->_titleLabel setFont:v14];

    [(ResultsSectionHeaderView *)v9 addSubview:v9->_titleLabel];
    v15 = [(ResultsSectionHeaderView *)v9 topAnchor];
    v16 = [(UILabel *)v9->_titleLabel topAnchor];
    v17 = -26.0;
    v18 = 16.0;
    if (v6)
    {
      v17 = 16.0;
    }

    LODWORD(v18) = 1132068864;
    v19 = [v15 constraintEqualToAnchor:v16 constant:v17 priority:v18];
    v34 = v8;
    topConstraint = v9->_topConstraint;
    v9->_topConstraint = v19;

    v35[0] = v9->_topConstraint;
    v32 = [(UILabel *)v9->_titleLabel bottomAnchor];
    v21 = [(ResultsSectionHeaderView *)v9 bottomAnchor];
    v22 = [v32 constraintEqualToAnchor:v21 constant:-8.0];
    v35[1] = v22;
    v23 = [(UILabel *)v9->_titleLabel leadingAnchor];
    v24 = [(ResultsSectionHeaderView *)v9 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:16.0];
    v35[2] = v25;
    v26 = [(UILabel *)v9->_titleLabel trailingAnchor];
    v27 = [(ResultsSectionHeaderView *)v9 trailingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];
    v35[3] = v28;
    v29 = [NSArray arrayWithObjects:v35 count:4];
    [NSLayoutConstraint activateConstraints:v29];

    v8 = v34;
    if (v33 && MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      v30 = [(ResultsSectionHeaderView *)v9 _maps_addHairlineAtBottomWithLeadingMargin:16.0 trailingMargin:0.0];
    }
  }

  return v9;
}

@end