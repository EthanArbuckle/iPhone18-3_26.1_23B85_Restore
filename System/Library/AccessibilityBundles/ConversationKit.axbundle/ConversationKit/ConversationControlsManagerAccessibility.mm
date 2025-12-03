@interface ConversationControlsManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)accessibilityDidAddPendingParticipant:(id)participant;
- (void)joinButtonTappedWithButton:(id)button;
@end

@implementation ConversationControlsManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.ConversationControlsManager" hasInstanceMethod:@"joinButtonTappedWithButton:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"ConversationKit.ConversationControlsManager" hasInstanceMethod:@"accessibilityDidAddPendingParticipant:" withFullSignature:{"v", "@", 0}];
}

- (void)accessibilityDidAddPendingParticipant:(id)participant
{
  v7.receiver = self;
  v7.super_class = ConversationControlsManagerAccessibility;
  participantCopy = participant;
  [(ConversationControlsManagerAccessibility *)&v7 accessibilityDidAddPendingParticipant:participantCopy];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"request.to.join.call");
  participantCopy = [v4 stringWithFormat:v5, participantCopy];

  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

- (void)joinButtonTappedWithButton:(id)button
{
  v4.receiver = self;
  v4.super_class = ConversationControlsManagerAccessibility;
  [(ConversationControlsManagerAccessibility *)&v4 joinButtonTappedWithButton:button];
  v3 = accessibilityLocalizedString(@"connecting");
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

@end