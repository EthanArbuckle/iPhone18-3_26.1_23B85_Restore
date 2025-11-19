@interface CKLocationSearchResultCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CKLocationSearchResultCellAccessibility

- (id)accessibilityLabel
{
  v3 = [(CKLocationSearchResultCellAccessibility *)self _axContact];
  v4 = AXCKLocalizedFromStringWithContact(v3);

  objc_opt_class();
  v5 = [(CKLocationSearchResultCellAccessibility *)self safeValueForKey:@"placeLabel"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 accessibilityLabel];

  v10 = accessibilityLocalizedString(@"map.attachment");
  v8 = __UIAXStringForVariables();

  return v8;
}

@end