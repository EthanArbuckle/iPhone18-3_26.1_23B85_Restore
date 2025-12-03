@interface EKUIInviteesViewInviteesCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation EKUIInviteesViewInviteesCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKParticipantForSorting" hasInstanceMethod:@"participant" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKUIInviteesViewInviteesCell" hasInstanceMethod:@"commentLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKUIInviteesViewInviteesCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKUIInviteesViewInviteesCell" hasInstanceMethod:@"updateWithParticipantForSorting:hideStatus:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"EKUIInviteesViewInviteesCell" hasInstanceMethod:@"updateWithParticipantForSorting: availabilityType: hideStatus: showSpinner: animated:" withFullSignature:{"v", "@", "q", "B", "B", "B", 0}];
}

- (id)accessibilityValue
{
  v2 = [(EKUIInviteesViewInviteesCellAccessibility *)self safeValueForKey:@"commentLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end