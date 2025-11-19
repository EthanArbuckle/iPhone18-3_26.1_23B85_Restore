@interface ParticipantCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation ParticipantCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ConversationKit.ParticipantCell" hasInstanceMethod:@"participantView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationKit.ParticipantCell" hasInstanceMethod:@"accessibilityDisplayName" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(ParticipantCellAccessibility *)self safeValueForKey:@"participantView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(ParticipantCellAccessibility *)self safeValueForKey:@"participantView"];
  v3 = [v2 accessibilityTraits];

  return v3;
}

- (id)accessibilityCustomActions
{
  v2 = [(ParticipantCellAccessibility *)self safeValueForKey:@"participantView"];
  v3 = [v2 accessibilityCustomActions];

  return v3;
}

@end