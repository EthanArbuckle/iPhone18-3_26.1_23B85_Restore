@interface CKLinkSearchResultCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CKLinkSearchResultCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(CKLinkSearchResultCellAccessibility *)self safeUIViewForKey:@"linkView"];
  _axContact = [(CKLinkSearchResultCellAccessibility *)self _axContact];
  v5 = AXCKLocalizedFromStringWithContact(_axContact);

  accessibilityLabel = [v3 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end