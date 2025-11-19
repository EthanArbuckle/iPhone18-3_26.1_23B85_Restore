@interface EKUIInviteesViewInviteesCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation EKUIInviteesViewInviteesCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"EKParticipantForSorting" hasInstanceMethod:@"participant" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKUIInviteesViewInviteesCell" hasInstanceMethod:@"commentLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKUIInviteesViewInviteesCell" hasInstanceMethod:@"nameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EKUIInviteesViewInviteesCell" hasInstanceMethod:@"updateWithParticipantForSorting:hideStatus:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"EKUIInviteesViewInviteesCell" hasInstanceMethod:@"updateWithParticipantForSorting: availabilityType: hideStatus: showSpinner: animated:" withFullSignature:{"v", "@", "q", "B", "B", "B", 0}];
}

- (id)accessibilityValue
{
  v2 = [(EKUIInviteesViewInviteesCellAccessibility *)self safeValueForKey:@"commentLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end