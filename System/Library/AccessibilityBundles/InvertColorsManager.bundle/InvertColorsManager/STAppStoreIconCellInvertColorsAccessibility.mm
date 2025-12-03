@interface STAppStoreIconCellInvertColorsAccessibility
- (STAppStoreIconCellInvertColorsAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_accessibilityLoadInvertColors;
@end

@implementation STAppStoreIconCellInvertColorsAccessibility

- (STAppStoreIconCellInvertColorsAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = STAppStoreIconCellInvertColorsAccessibility;
  v5 = [(STAppStoreIconCellInvertColorsAccessibility *)&v7 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  [(STAppStoreIconCellInvertColorsAccessibility *)v5 _accessibilityLoadInvertColors];

  return v5;
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(STAppStoreIconCellInvertColorsAccessibility *)self safeUIViewForKey:@"_appIconView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end