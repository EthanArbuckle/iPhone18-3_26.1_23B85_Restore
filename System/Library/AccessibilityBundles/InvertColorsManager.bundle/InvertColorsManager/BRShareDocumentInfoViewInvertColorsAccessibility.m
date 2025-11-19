@interface BRShareDocumentInfoViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)updateConstraints;
@end

@implementation BRShareDocumentInfoViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(BRShareDocumentInfoViewInvertColorsAccessibility *)self safeUIViewForKey:@"_thumbnailView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = BRShareDocumentInfoViewInvertColorsAccessibility;
  [(BRShareDocumentInfoViewInvertColorsAccessibility *)&v3 updateConstraints];
  [(BRShareDocumentInfoViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end