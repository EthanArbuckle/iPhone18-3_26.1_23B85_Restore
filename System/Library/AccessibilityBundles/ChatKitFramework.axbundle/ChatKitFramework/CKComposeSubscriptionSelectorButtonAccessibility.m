@interface CKComposeSubscriptionSelectorButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation CKComposeSubscriptionSelectorButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(CKComposeSubscriptionSelectorButtonAccessibility *)self safeValueForKey:@"buttonTitleLabel"];
  v3 = __UIAXStringForVariables();

  return v3;
}

@end