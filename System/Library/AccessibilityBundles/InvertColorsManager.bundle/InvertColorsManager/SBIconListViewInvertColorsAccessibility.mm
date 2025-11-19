@interface SBIconListViewInvertColorsAccessibility
- (void)_accessibilityForceRefreshOfInvertColors:(id)a3;
- (void)_accessibilityLoadInvertColors;
- (void)addSubview:(id)a3;
- (void)insertSubview:(id)a3 aboveSubview:(id)a4;
- (void)insertSubview:(id)a3 atIndex:(int64_t)a4;
- (void)insertSubview:(id)a3 belowSubview:(id)a4;
@end

@implementation SBIconListViewInvertColorsAccessibility

- (void)_accessibilityForceRefreshOfInvertColors:(id)a3
{
  v3 = a3;
  if (_AXSInvertColorsEnabledGlobalCached() && [v3 accessibilityIgnoresInvertColors])
  {
    [v3 setAccessibilityIgnoresInvertColors:0];
    [v3 setAccessibilityIgnoresInvertColors:1];
  }
}

- (void)insertSubview:(id)a3 atIndex:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = SBIconListViewInvertColorsAccessibility;
  v6 = a3;
  [(SBIconListViewInvertColorsAccessibility *)&v7 insertSubview:v6 atIndex:a4];
  [(SBIconListViewInvertColorsAccessibility *)self _accessibilityForceRefreshOfInvertColors:v6, v7.receiver, v7.super_class];
}

- (void)addSubview:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBIconListViewInvertColorsAccessibility;
  v4 = a3;
  [(SBIconListViewInvertColorsAccessibility *)&v5 addSubview:v4];
  [(SBIconListViewInvertColorsAccessibility *)self _accessibilityForceRefreshOfInvertColors:v4, v5.receiver, v5.super_class];
}

- (void)insertSubview:(id)a3 belowSubview:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBIconListViewInvertColorsAccessibility;
  v6 = a3;
  [(SBIconListViewInvertColorsAccessibility *)&v7 insertSubview:v6 belowSubview:a4];
  [(SBIconListViewInvertColorsAccessibility *)self _accessibilityForceRefreshOfInvertColors:v6, v7.receiver, v7.super_class];
}

- (void)insertSubview:(id)a3 aboveSubview:(id)a4
{
  v7.receiver = self;
  v7.super_class = SBIconListViewInvertColorsAccessibility;
  v6 = a3;
  [(SBIconListViewInvertColorsAccessibility *)&v7 insertSubview:v6 aboveSubview:a4];
  [(SBIconListViewInvertColorsAccessibility *)self _accessibilityForceRefreshOfInvertColors:v6, v7.receiver, v7.super_class];
}

- (void)_accessibilityLoadInvertColors
{
  if (_AXSInvertColorsEnabled())
  {
    v3 = [(SBIconListViewInvertColorsAccessibility *)self subviews];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1800C;
    v4[3] = &unk_44A10;
    v4[4] = self;
    [v3 enumerateObjectsUsingBlock:v4];
  }
}

@end