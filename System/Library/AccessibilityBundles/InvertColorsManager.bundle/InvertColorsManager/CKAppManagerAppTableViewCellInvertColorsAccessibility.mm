@interface CKAppManagerAppTableViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation CKAppManagerAppTableViewCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(CKAppManagerAppTableViewCellInvertColorsAccessibility *)self safeUIViewForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKAppManagerAppTableViewCellInvertColorsAccessibility;
  [(CKAppManagerAppTableViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(CKAppManagerAppTableViewCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end