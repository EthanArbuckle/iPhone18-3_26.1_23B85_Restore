@interface CKLinkSearchResultCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CKLinkSearchResultCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(CKLinkSearchResultCellAccessibility *)self safeUIViewForKey:@"linkView"];
  v4 = [(CKLinkSearchResultCellAccessibility *)self _axContact];
  v5 = AXCKLocalizedFromStringWithContact(v4);

  v8 = [v3 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end