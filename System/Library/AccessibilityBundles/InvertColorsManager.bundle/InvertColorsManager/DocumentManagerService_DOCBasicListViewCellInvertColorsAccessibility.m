@interface DocumentManagerService_DOCBasicListViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation DocumentManagerService_DOCBasicListViewCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(DocumentManagerService_DOCBasicListViewCellInvertColorsAccessibility *)self safeValueForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = DocumentManagerService_DOCBasicListViewCellInvertColorsAccessibility;
  [(DocumentManagerService_DOCBasicListViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(DocumentManagerService_DOCBasicListViewCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end