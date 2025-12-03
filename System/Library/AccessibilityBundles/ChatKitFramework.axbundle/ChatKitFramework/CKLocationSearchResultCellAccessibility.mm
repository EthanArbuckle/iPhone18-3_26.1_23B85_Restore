@interface CKLocationSearchResultCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CKLocationSearchResultCellAccessibility

- (id)accessibilityLabel
{
  _axContact = [(CKLocationSearchResultCellAccessibility *)self _axContact];
  v4 = AXCKLocalizedFromStringWithContact(_axContact);

  objc_opt_class();
  v5 = [(CKLocationSearchResultCellAccessibility *)self safeValueForKey:@"placeLabel"];
  v6 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v6 accessibilityLabel];

  v10 = accessibilityLocalizedString(@"map.attachment");
  v8 = __UIAXStringForVariables();

  return v8;
}

@end