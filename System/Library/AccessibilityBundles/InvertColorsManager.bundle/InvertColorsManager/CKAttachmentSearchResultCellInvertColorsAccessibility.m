@interface CKAttachmentSearchResultCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation CKAttachmentSearchResultCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(CKAttachmentSearchResultCellInvertColorsAccessibility *)self safeUIViewForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKAttachmentSearchResultCellInvertColorsAccessibility;
  [(CKAttachmentSearchResultCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(CKAttachmentSearchResultCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end