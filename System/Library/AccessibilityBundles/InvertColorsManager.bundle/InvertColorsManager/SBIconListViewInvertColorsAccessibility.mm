@interface SBIconListViewInvertColorsAccessibility
- (void)_accessibilityForceRefreshOfInvertColors:(id)colors;
- (void)_accessibilityLoadInvertColors;
- (void)addSubview:(id)subview;
- (void)insertSubview:(id)subview aboveSubview:(id)aboveSubview;
- (void)insertSubview:(id)subview atIndex:(int64_t)index;
- (void)insertSubview:(id)subview belowSubview:(id)belowSubview;
@end

@implementation SBIconListViewInvertColorsAccessibility

- (void)_accessibilityForceRefreshOfInvertColors:(id)colors
{
  colorsCopy = colors;
  if (_AXSInvertColorsEnabledGlobalCached() && [colorsCopy accessibilityIgnoresInvertColors])
  {
    [colorsCopy setAccessibilityIgnoresInvertColors:0];
    [colorsCopy setAccessibilityIgnoresInvertColors:1];
  }
}

- (void)insertSubview:(id)subview atIndex:(int64_t)index
{
  v7.receiver = self;
  v7.super_class = SBIconListViewInvertColorsAccessibility;
  subviewCopy = subview;
  [(SBIconListViewInvertColorsAccessibility *)&v7 insertSubview:subviewCopy atIndex:index];
  [(SBIconListViewInvertColorsAccessibility *)self _accessibilityForceRefreshOfInvertColors:subviewCopy, v7.receiver, v7.super_class];
}

- (void)addSubview:(id)subview
{
  v5.receiver = self;
  v5.super_class = SBIconListViewInvertColorsAccessibility;
  subviewCopy = subview;
  [(SBIconListViewInvertColorsAccessibility *)&v5 addSubview:subviewCopy];
  [(SBIconListViewInvertColorsAccessibility *)self _accessibilityForceRefreshOfInvertColors:subviewCopy, v5.receiver, v5.super_class];
}

- (void)insertSubview:(id)subview belowSubview:(id)belowSubview
{
  v7.receiver = self;
  v7.super_class = SBIconListViewInvertColorsAccessibility;
  subviewCopy = subview;
  [(SBIconListViewInvertColorsAccessibility *)&v7 insertSubview:subviewCopy belowSubview:belowSubview];
  [(SBIconListViewInvertColorsAccessibility *)self _accessibilityForceRefreshOfInvertColors:subviewCopy, v7.receiver, v7.super_class];
}

- (void)insertSubview:(id)subview aboveSubview:(id)aboveSubview
{
  v7.receiver = self;
  v7.super_class = SBIconListViewInvertColorsAccessibility;
  subviewCopy = subview;
  [(SBIconListViewInvertColorsAccessibility *)&v7 insertSubview:subviewCopy aboveSubview:aboveSubview];
  [(SBIconListViewInvertColorsAccessibility *)self _accessibilityForceRefreshOfInvertColors:subviewCopy, v7.receiver, v7.super_class];
}

- (void)_accessibilityLoadInvertColors
{
  if (_AXSInvertColorsEnabled())
  {
    subviews = [(SBIconListViewInvertColorsAccessibility *)self subviews];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1800C;
    v4[3] = &unk_44A10;
    v4[4] = self;
    [subviews enumerateObjectsUsingBlock:v4];
  }
}

@end