@interface ParticipantMonogramViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axHandleRingMemberAction;
- (id)accessibilityCustomActions;
@end

@implementation ParticipantMonogramViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.ParticipantMonogramView" hasInstanceMethod:@"titleLabelContainer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.ParticipantMonogramView" hasInstanceMethod:@"subtitleLabelContainer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationKit.ParticipantMonogramView" hasInstanceMethod:@"ringButton" withFullSignature:{"@", 0}];
}

- (id)accessibilityCustomActions
{
  v3 = objc_opt_new();
  v4 = [(ParticipantMonogramViewAccessibility *)self safeUIViewForKey:@"ringButton"];
  if ([v4 _accessibilityViewIsVisible])
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityLocalizedString(@"ring.again");
    v7 = [v5 initWithName:v6 target:self selector:sel__axHandleRingMemberAction];
    [v3 addObject:v7];
  }

  return v3;
}

- (BOOL)_axHandleRingMemberAction
{
  v2 = [(ParticipantMonogramViewAccessibility *)self safeValueForKeyPath:@"ringButton"];
  v3 = __UIAccessibilitySafeClass();

  [v3 sendActionsForControlEvents:64];
  return v3 != 0;
}

@end