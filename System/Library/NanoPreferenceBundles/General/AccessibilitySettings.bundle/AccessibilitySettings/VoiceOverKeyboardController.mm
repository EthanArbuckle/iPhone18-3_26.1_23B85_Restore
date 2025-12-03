@interface VoiceOverKeyboardController
- (id)keyboardInteractionTime;
- (id)keyboardTimeout;
- (id)modifierKey;
- (id)phoneticKey;
- (id)selectedModifier;
- (id)selectedPhoneticFeedback;
- (id)selectedTypingFeedbackWithSoftware:(BOOL)software;
- (id)specifiers;
- (void)setKeyboardTimeout:(id)timeout;
- (void)setModifier:(id)modifier;
- (void)setPhoneticFeedback:(id)feedback;
- (void)setTypingFeedback:(id)feedback isSoftware:(BOOL)software;
@end

@implementation VoiceOverKeyboardController

- (id)specifiers
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6 = MEMORY[0x277D3FAD8];
    v7 = settingsLocString(@"PHONETICS_TITLE", @"VoiceOverSettings");
    v8 = [v6 preferenceSpecifierNamed:v7 target:self set:0 get:sel_phoneticKey detail:objc_opt_class() cell:2 edit:0];

    [v8 setIdentifier:@"PHONETICS_ID"];
    v32 = @"VoiceOverKeyboardPhoneticFeedbackDelegateKey";
    v33[0] = self;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [v8 setUserInfo:v9];

    [array addObject:v8];
    v10 = MEMORY[0x277D3FAD8];
    v11 = settingsLocString(@"TYPING_FEEDBACK", @"VoiceOverSettings");
    v12 = [v10 preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v12 setIdentifier:@"TYPING_FEEDBACK_ID"];
    v30 = @"VoiceOverKeyboardTypingFeedbackDelegateKey";
    selfCopy = self;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&selfCopy forKeys:&v30 count:1];
    [v12 setUserInfo:v13];

    [array addObject:v12];
    v14 = MEMORY[0x277D3FAD8];
    v15 = settingsLocString(@"KEYBOARD_MODIFIER_KEYS", @"VoiceOverSettings");
    v16 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:sel_modifierKey detail:objc_opt_class() cell:2 edit:0];

    [v16 setIdentifier:@"KEYBOARD_MODIFIER_KEYS_ID"];
    v28 = @"VoiceOverKeyboardModifierKeyDelegateKey";
    selfCopy2 = self;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&selfCopy2 forKeys:&v28 count:1];
    [v16 setUserInfo:v17];

    [array addObject:v16];
    v18 = MEMORY[0x277D3FAD8];
    v19 = settingsLocString(@"KEYBOARD_TIMING_TIMEOUT", @"VoiceOverSettings");
    v20 = [v18 preferenceSpecifierNamed:v19 target:self set:0 get:sel_keyboardInteractionTime detail:objc_opt_class() cell:2 edit:0];

    [v20 setIdentifier:@"KEYBOARD_TIMING_TIMEOUT_ID"];
    v26 = @"VoiceOverKeyboardTimeoutControllerDelegateKey";
    selfCopy3 = self;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&selfCopy3 forKeys:&v26 count:1];
    [v20 setUserInfo:v21];

    [array addObject:v20];
    v22 = [array copy];
    v23 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v22;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)phoneticKey
{
  selectedPhoneticFeedback = [(VoiceOverKeyboardController *)self selectedPhoneticFeedback];
  v3 = +[VoiceOverKeyboardPhoneticFeedbackController phoneticFeedbackShortStringDescription:](VoiceOverKeyboardPhoneticFeedbackController, "phoneticFeedbackShortStringDescription:", [selectedPhoneticFeedback integerValue]);

  return v3;
}

- (id)selectedPhoneticFeedback
{
  v3 = *MEMORY[0x277CE7F78];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v3 domainAccessor:accessibilityDomainAccessor];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_284E7E498;
  }

  return v6;
}

- (void)setPhoneticFeedback:(id)feedback
{
  v4 = *MEMORY[0x277CE7F78];
  feedbackCopy = feedback;
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:feedbackCopy forKey:v4 domainAccessor:accessibilityDomainAccessor];
}

- (id)selectedTypingFeedbackWithSoftware:(BOOL)software
{
  v4 = MEMORY[0x277CE7F80];
  if (!software)
  {
    v4 = MEMORY[0x277CE7F60];
  }

  v5 = *v4;
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v7 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v5 domainAccessor:accessibilityDomainAccessor];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &unk_284E7E4B0;
  }

  return v8;
}

- (void)setTypingFeedback:(id)feedback isSoftware:(BOOL)software
{
  v6 = MEMORY[0x277CE7F80];
  if (!software)
  {
    v6 = MEMORY[0x277CE7F60];
  }

  v7 = *v6;
  feedbackCopy = feedback;
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:feedbackCopy forKey:v7 domainAccessor:accessibilityDomainAccessor];
}

- (id)modifierKey
{
  selectedModifier = [(VoiceOverKeyboardController *)self selectedModifier];
  v3 = +[VoiceOverKeyboardModifierKeyController modifierShortStringDescription:](VoiceOverKeyboardModifierKeyController, "modifierShortStringDescription:", [selectedModifier integerValue]);

  return v3;
}

- (id)selectedModifier
{
  v3 = *MEMORY[0x277CE7F70];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v3 domainAccessor:accessibilityDomainAccessor];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_284E7E498;
  }

  return v6;
}

- (void)setModifier:(id)modifier
{
  v4 = *MEMORY[0x277CE7F70];
  modifierCopy = modifier;
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:modifierCopy forKey:v4 domainAccessor:accessibilityDomainAccessor];
}

- (id)keyboardInteractionTime
{
  keyboardTimeout = [(VoiceOverKeyboardController *)self keyboardTimeout];
  [keyboardTimeout doubleValue];
  v3 = AXLocalizedTimeSummary();

  return v3;
}

- (id)keyboardTimeout
{
  v3 = *MEMORY[0x277CE7F68];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v3 domainAccessor:accessibilityDomainAccessor];

  if (!v5)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CE69F0]];
  }

  return v5;
}

- (void)setKeyboardTimeout:(id)timeout
{
  v4 = *MEMORY[0x277CE7F68];
  timeoutCopy = timeout;
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:timeoutCopy forKey:v4 domainAccessor:accessibilityDomainAccessor];
}

@end