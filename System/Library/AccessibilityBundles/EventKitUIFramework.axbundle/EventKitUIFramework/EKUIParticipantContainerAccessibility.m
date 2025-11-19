@interface EKUIParticipantContainerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation EKUIParticipantContainerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKUIParticipantContainer" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKUIParticipantContainer" hasInstanceMethod:@"subLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(EKUIParticipantContainerAccessibility *)self safeUIViewForKey:@"nameLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(EKUIParticipantContainerAccessibility *)self safeUIViewForKey:@"subLabel"];
  v8 = [v5 accessibilityLabel];
  v6 = __AXStringForVariables();

  return v6;
}

@end