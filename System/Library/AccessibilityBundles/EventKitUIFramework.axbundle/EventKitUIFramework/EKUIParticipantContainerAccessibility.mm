@interface EKUIParticipantContainerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation EKUIParticipantContainerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKUIParticipantContainer" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKUIParticipantContainer" hasInstanceMethod:@"subLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(EKUIParticipantContainerAccessibility *)self safeUIViewForKey:@"nameLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(EKUIParticipantContainerAccessibility *)self safeUIViewForKey:@"subLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __AXStringForVariables();

  return v6;
}

@end