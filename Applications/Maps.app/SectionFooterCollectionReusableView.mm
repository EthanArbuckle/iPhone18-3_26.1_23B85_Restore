@interface SectionFooterCollectionReusableView
+ (double)heightForFooterViewWithTraitCollection:(id)collection;
+ (id)_effectiveTraitCollectionWithTraitCollection:(id)collection;
+ (id)reuseIdentifier;
- (SectionFooterCollectionReusableView)initWithFrame:(CGRect)frame;
- (void)_didTapActionButton;
- (void)_updateFonts;
- (void)prepareForReuse;
- (void)setAccessibilityIdentifiersWithBaseString:(id)string;
- (void)setActionTitle:(id)title completionHandler:(id)handler;
@end

@implementation SectionFooterCollectionReusableView

- (void)setActionTitle:(id)title completionHandler:(id)handler
{
  handlerCopy = handler;
  titleCopy = title;
  actionButton = [(SectionFooterCollectionReusableView *)self actionButton];
  [actionButton setTitle:titleCopy forState:0];

  [(SectionFooterCollectionReusableView *)self setActionHandler:handlerCopy];
}

- (void)setAccessibilityIdentifiersWithBaseString:(id)string
{
  stringCopy = string;
  v5 = [stringCopy stringByAppendingString:@"Section"];
  [(SectionFooterCollectionReusableView *)self setAccessibilityIdentifier:v5];

  v7 = [stringCopy stringByAppendingString:@"Action"];

  actionButton = [(SectionFooterCollectionReusableView *)self actionButton];
  [actionButton setAccessibilityIdentifier:v7];
}

- (void)_updateFonts
{
  v3 = objc_opt_class();
  traitCollection = [(SectionFooterCollectionReusableView *)self traitCollection];
  v8 = [v3 _effectiveTraitCollectionWithTraitCollection:traitCollection];

  v5 = [objc_opt_class() _fontWithTraitCollection:v8];
  actionButton = [(SectionFooterCollectionReusableView *)self actionButton];
  titleLabel = [actionButton titleLabel];
  [titleLabel setFont:v5];
}

- (void)_didTapActionButton
{
  actionHandler = [(SectionFooterCollectionReusableView *)self actionHandler];

  if (actionHandler)
  {
    actionHandler2 = [(SectionFooterCollectionReusableView *)self actionHandler];
    actionHandler2[2]();
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = SectionFooterCollectionReusableView;
  [(SectionFooterCollectionReusableView *)&v4 prepareForReuse];
  actionButton = [(SectionFooterCollectionReusableView *)self actionButton];
  [actionButton setTitle:&stru_1016631F0 forState:0];
}

- (SectionFooterCollectionReusableView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = SectionFooterCollectionReusableView;
  v3 = [(SectionFooterCollectionReusableView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    actionButton = [(SectionFooterCollectionReusableView *)v3 actionButton];
    [actionButton addTarget:v3 action:"_didTapActionButton" forControlEvents:64];

    [(SectionFooterCollectionReusableView *)v3 addSubview:v3->_actionButton];
    leadingAnchor = [(MapsThemeButton *)v3->_actionButton leadingAnchor];
    leadingAnchor2 = [(SectionFooterCollectionReusableView *)v3 leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    v20[0] = v9;
    topAnchor = [(MapsThemeButton *)v3->_actionButton topAnchor];
    topAnchor2 = [(SectionFooterCollectionReusableView *)v3 topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v20[1] = v12;
    bottomAnchor = [(MapsThemeButton *)v3->_actionButton bottomAnchor];
    bottomAnchor2 = [(SectionFooterCollectionReusableView *)v3 bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v20[2] = v15;
    v16 = [NSArray arrayWithObjects:v20 count:3];
    [NSLayoutConstraint activateConstraints:v16];
  }

  return v3;
}

+ (double)heightForFooterViewWithTraitCollection:(id)collection
{
  v3 = [collection _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v4 = [objc_opt_class() _fontWithTraitCollection:v3];
  [v3 _maps_displayScaleOrMainScreenScale];
  [UILabel _maps_maximumHeightWithFont:v4 numberOfLines:1 displayScale:?];
  v6 = v5 + 16.0;

  return v6;
}

+ (id)_effectiveTraitCollectionWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  _maximumContentSizeCategory = [self _maximumContentSizeCategory];
  v6 = [collectionCopy _maps_traitCollectionByClampingContentSizeCategoryWithMinimumContentSizeCategory:0 maximumContentSizeCategory:_maximumContentSizeCategory];

  return v6;
}

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end