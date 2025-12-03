@interface ParticipantCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation ParticipantCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.ParticipantCell" hasInstanceMethod:@"participantView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.ParticipantCell" hasInstanceMethod:@"accessibilityDisplayName" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(ParticipantCellAccessibility *)self safeValueForKey:@"participantView"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(ParticipantCellAccessibility *)self safeValueForKey:@"participantView"];
  accessibilityTraits = [v2 accessibilityTraits];

  return accessibilityTraits;
}

- (id)accessibilityCustomActions
{
  v2 = [(ParticipantCellAccessibility *)self safeValueForKey:@"participantView"];
  accessibilityCustomActions = [v2 accessibilityCustomActions];

  return accessibilityCustomActions;
}

@end