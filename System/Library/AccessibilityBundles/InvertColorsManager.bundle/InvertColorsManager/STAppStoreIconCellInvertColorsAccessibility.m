@interface STAppStoreIconCellInvertColorsAccessibility
- (STAppStoreIconCellInvertColorsAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)_accessibilityLoadInvertColors;
@end

@implementation STAppStoreIconCellInvertColorsAccessibility

- (STAppStoreIconCellInvertColorsAccessibility)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v7.receiver = self;
  v7.super_class = STAppStoreIconCellInvertColorsAccessibility;
  v5 = [(STAppStoreIconCellInvertColorsAccessibility *)&v7 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  [(STAppStoreIconCellInvertColorsAccessibility *)v5 _accessibilityLoadInvertColors];

  return v5;
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(STAppStoreIconCellInvertColorsAccessibility *)self safeUIViewForKey:@"_appIconView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end