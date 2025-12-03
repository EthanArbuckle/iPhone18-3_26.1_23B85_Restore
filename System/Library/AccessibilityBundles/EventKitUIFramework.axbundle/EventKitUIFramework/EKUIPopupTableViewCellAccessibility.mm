@interface EKUIPopupTableViewCellAccessibility
- (id)accessibilityValue;
@end

@implementation EKUIPopupTableViewCellAccessibility

- (id)accessibilityValue
{
  v2 = [(EKUIPopupTableViewCellAccessibility *)self safeValueForKey:@"_popupButton"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end