@interface STMostUsedCellInvertColorsAccessibility
- (STMostUsedCellInvertColorsAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_accessibilityLoadInvertColorsMostUsed;
@end

@implementation STMostUsedCellInvertColorsAccessibility

- (STMostUsedCellInvertColorsAccessibility)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = STMostUsedCellInvertColorsAccessibility;
  v5 = [(STMostUsedCellInvertColorsAccessibility *)&v7 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  [(STMostUsedCellInvertColorsAccessibility *)v5 _accessibilityLoadInvertColorsMostUsed];

  return v5;
}

- (void)_accessibilityLoadInvertColorsMostUsed
{
  v2 = [(STMostUsedCellInvertColorsAccessibility *)self safeUIViewForKey:@"_allowanceIconView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end