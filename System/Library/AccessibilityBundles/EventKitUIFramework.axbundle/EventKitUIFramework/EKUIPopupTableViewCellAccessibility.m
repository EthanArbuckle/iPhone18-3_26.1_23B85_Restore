@interface EKUIPopupTableViewCellAccessibility
- (id)accessibilityValue;
@end

@implementation EKUIPopupTableViewCellAccessibility

- (id)accessibilityValue
{
  v2 = [(EKUIPopupTableViewCellAccessibility *)self safeValueForKey:@"_popupButton"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end