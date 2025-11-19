@interface SectionFooterCollectionReusableView
+ (double)heightForFooterViewWithTraitCollection:(id)a3;
+ (id)_effectiveTraitCollectionWithTraitCollection:(id)a3;
+ (id)reuseIdentifier;
- (SectionFooterCollectionReusableView)initWithFrame:(CGRect)a3;
- (void)_didTapActionButton;
- (void)_updateFonts;
- (void)prepareForReuse;
- (void)setAccessibilityIdentifiersWithBaseString:(id)a3;
- (void)setActionTitle:(id)a3 completionHandler:(id)a4;
@end

@implementation SectionFooterCollectionReusableView

- (void)setActionTitle:(id)a3 completionHandler:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(SectionFooterCollectionReusableView *)self actionButton];
  [v7 setTitle:v6 forState:0];

  [(SectionFooterCollectionReusableView *)self setActionHandler:v8];
}

- (void)setAccessibilityIdentifiersWithBaseString:(id)a3
{
  v4 = a3;
  v5 = [v4 stringByAppendingString:@"Section"];
  [(SectionFooterCollectionReusableView *)self setAccessibilityIdentifier:v5];

  v7 = [v4 stringByAppendingString:@"Action"];

  v6 = [(SectionFooterCollectionReusableView *)self actionButton];
  [v6 setAccessibilityIdentifier:v7];
}

- (void)_updateFonts
{
  v3 = objc_opt_class();
  v4 = [(SectionFooterCollectionReusableView *)self traitCollection];
  v8 = [v3 _effectiveTraitCollectionWithTraitCollection:v4];

  v5 = [objc_opt_class() _fontWithTraitCollection:v8];
  v6 = [(SectionFooterCollectionReusableView *)self actionButton];
  v7 = [v6 titleLabel];
  [v7 setFont:v5];
}

- (void)_didTapActionButton
{
  v3 = [(SectionFooterCollectionReusableView *)self actionHandler];

  if (v3)
  {
    v4 = [(SectionFooterCollectionReusableView *)self actionHandler];
    v4[2]();
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SectionFooterCollectionReusableView;
  [(SectionFooterCollectionReusableView *)&v4 prepareForReuse];
  v3 = [(SectionFooterCollectionReusableView *)self actionButton];
  [v3 setTitle:&stru_1016631F0 forState:0];
}

- (SectionFooterCollectionReusableView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = SectionFooterCollectionReusableView;
  v3 = [(SectionFooterCollectionReusableView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(SectionFooterCollectionReusableView *)v3 setBackgroundColor:v4];

    v5 = [MapsThemeButton buttonWithType:0];
    actionButton = v3->_actionButton;
    v3->_actionButton = v5;

    [(MapsThemeButton *)v3->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MapsThemeButton *)v3->_actionButton setTitleColorProvider:&stru_101623CA0];
    [(SectionFooterCollectionReusableView *)v3 _updateFonts];
    v7 = [(SectionFooterCollectionReusableView *)v3 actionButton];
    [v7 addTarget:v3 action:"_didTapActionButton" forControlEvents:64];

    [(SectionFooterCollectionReusableView *)v3 addSubview:v3->_actionButton];
    v18 = [(MapsThemeButton *)v3->_actionButton leadingAnchor];
    v8 = [(SectionFooterCollectionReusableView *)v3 leadingAnchor];
    v9 = [v18 constraintEqualToAnchor:v8 constant:16.0];
    v20[0] = v9;
    v10 = [(MapsThemeButton *)v3->_actionButton topAnchor];
    v11 = [(SectionFooterCollectionReusableView *)v3 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v20[1] = v12;
    v13 = [(MapsThemeButton *)v3->_actionButton bottomAnchor];
    v14 = [(SectionFooterCollectionReusableView *)v3 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v20[2] = v15;
    v16 = [NSArray arrayWithObjects:v20 count:3];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v3;
}

+ (double)heightForFooterViewWithTraitCollection:(id)a3
{
  v3 = [a3 _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v4 = [objc_opt_class() _fontWithTraitCollection:v3];
  [v3 _maps_displayScaleOrMainScreenScale];
  [UILabel _maps_maximumHeightWithFont:v4 numberOfLines:1 displayScale:?];
  v6 = v5 + 16.0;

  return v6;
}

+ (id)_effectiveTraitCollectionWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [a1 _maximumContentSizeCategory];
  v6 = [v4 _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:v5];

  return v6;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end