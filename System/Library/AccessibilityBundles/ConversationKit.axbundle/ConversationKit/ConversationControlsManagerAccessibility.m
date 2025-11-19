@interface ConversationControlsManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)accessibilityDidAddPendingParticipant:(id)a3;
- (void)joinButtonTappedWithButton:(id)a3;
@end

@implementation ConversationControlsManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ConversationKit.ConversationControlsManager" hasInstanceMethod:@"joinButtonTappedWithButton:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ConversationKit.ConversationControlsManager" hasInstanceMethod:@"accessibilityDidAddPendingParticipant:" withFullSignature:{"v", "@", 0}];
}

- (void)accessibilityDidAddPendingParticipant:(id)a3
{
  v7.receiver = self;
  v7.super_class = ConversationControlsManagerAccessibility;
  v3 = a3;
  [(ConversationControlsManagerAccessibility *)&v7 accessibilityDidAddPendingParticipant:v3];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"request.to.join.call");
  v6 = [v4 stringWithFormat:v5, v3];

  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

- (void)joinButtonTappedWithButton:(id)a3
{
  v4.receiver = self;
  v4.super_class = ConversationControlsManagerAccessibility;
  [(ConversationControlsManagerAccessibility *)&v4 joinButtonTappedWithButton:a3];
  v3 = accessibilityLocalizedString(@"connecting");
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

@end