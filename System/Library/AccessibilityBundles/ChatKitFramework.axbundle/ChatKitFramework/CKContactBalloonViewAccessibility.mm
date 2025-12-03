@interface CKContactBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CKContactBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKContactBalloonView" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKContactBalloonView" hasInstanceMethod:@"organizationLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = _AXCKStringForMediaType(4);
  v4 = [(CKContactBalloonViewAccessibility *)self safeValueForKey:@"nameLabel"];
  accessibilityLabel = [v4 accessibilityLabel];
  v6 = [(CKContactBalloonViewAccessibility *)self safeValueForKey:@"organizationLabel"];
  accessibilityLabel2 = [v6 accessibilityLabel];
  v7 = __UIAXStringForVariables();

  return v7;
}

@end