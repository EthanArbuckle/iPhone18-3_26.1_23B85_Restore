@interface STStorageTipCellInvertColorsAccessibility
- (STStorageTipCellInvertColorsAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_accessibilityLoadInvertColors;
@end

@implementation STStorageTipCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(STStorageTipCellInvertColorsAccessibility *)self safeValueForKey:@"_appIconView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (STStorageTipCellInvertColorsAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = STStorageTipCellInvertColorsAccessibility;
  v5 = [(STStorageTipCellInvertColorsAccessibility *)&v7 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  [(STStorageTipCellInvertColorsAccessibility *)v5 _accessibilityLoadInvertColors];

  return v5;
}

@end