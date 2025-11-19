@interface VoiceOverKeyboardController
- (id)keyboardInteractionTime;
- (id)keyboardTimeout;
- (id)modifierKey;
- (id)phoneticKey;
- (id)selectedModifier;
- (id)selectedPhoneticFeedback;
- (id)selectedTypingFeedbackWithSoftware:(BOOL)a3;
- (id)specifiers;
- (void)setKeyboardTimeout:(id)a3;
- (void)setModifier:(id)a3;
- (void)setPhoneticFeedback:(id)a3;
- (void)setTypingFeedback:(id)a3 isSoftware:(BOOL)a4;
@end

@implementation VoiceOverKeyboardController

- (id)specifiers
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = MEMORY[0x277D3FAD8];
    v7 = settingsLocString(@"PHONETICS_TITLE", @"VoiceOverSettings");
    v8 = [v6 preferenceSpecifierNamed:v7 target:self set:0 get:sel_phoneticKey detail:objc_opt_class() cell:2 edit:0];

    [v8 setIdentifier:@"PHONETICS_ID"];
    v32 = @"VoiceOverKeyboardPhoneticFeedbackDelegateKey";
    v33[0] = self;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    [v8 setUserInfo:v9];

    [v5 addObject:v8];
    v10 = MEMORY[0x277D3FAD8];
    v11 = settingsLocString(@"TYPING_FEEDBACK", @"VoiceOverSettings");
    v12 = [v10 preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v12 setIdentifier:@"TYPING_FEEDBACK_ID"];
    v30 = @"VoiceOverKeyboardTypingFeedbackDelegateKey";
    v31 = self;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v12 setUserInfo:v13];

    [v5 addObject:v12];
    v14 = MEMORY[0x277D3FAD8];
    v15 = settingsLocString(@"KEYBOARD_MODIFIER_KEYS", @"VoiceOverSettings");
    v16 = [v14 preferenceSpecifierNamed:v15 target:self set:0 get:sel_modifierKey detail:objc_opt_class() cell:2 edit:0];

    [v16 setIdentifier:@"KEYBOARD_MODIFIER_KEYS_ID"];
    v28 = @"VoiceOverKeyboardModifierKeyDelegateKey";
    v29 = self;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [v16 setUserInfo:v17];

    [v5 addObject:v16];
    v18 = MEMORY[0x277D3FAD8];
    v19 = settingsLocString(@"KEYBOARD_TIMING_TIMEOUT", @"VoiceOverSettings");
    v20 = [v18 preferenceSpecifierNamed:v19 target:self set:0 get:sel_keyboardInteractionTime detail:objc_opt_class() cell:2 edit:0];

    [v20 setIdentifier:@"KEYBOARD_TIMING_TIMEOUT_ID"];
    v26 = @"VoiceOverKeyboardTimeoutControllerDelegateKey";
    v27 = self;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [v20 setUserInfo:v21];

    [v5 addObject:v20];
    v22 = [v5 copy];
    v23 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v22;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)phoneticKey
{
  v2 = [(VoiceOverKeyboardController *)self selectedPhoneticFeedback];
  v3 = +[VoiceOverKeyboardPhoneticFeedbackController phoneticFeedbackShortStringDescription:](VoiceOverKeyboardPhoneticFeedbackController, "phoneticFeedbackShortStringDescription:", [v2 integerValue]);

  return v3;
}

- (id)selectedPhoneticFeedback
{
  v3 = *MEMORY[0x277CE7F78];
  v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v3 domainAccessor:v4];

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

- (void)setPhoneticFeedback:(id)a3
{
  v4 = *MEMORY[0x277CE7F78];
  v5 = a3;
  v6 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:v5 forKey:v4 domainAccessor:v6];
}

- (id)selectedTypingFeedbackWithSoftware:(BOOL)a3
{
  v4 = MEMORY[0x277CE7F80];
  if (!a3)
  {
    v4 = MEMORY[0x277CE7F60];
  }

  v5 = *v4;
  v6 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v7 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v5 domainAccessor:v6];

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

- (void)setTypingFeedback:(id)a3 isSoftware:(BOOL)a4
{
  v6 = MEMORY[0x277CE7F80];
  if (!a4)
  {
    v6 = MEMORY[0x277CE7F60];
  }

  v7 = *v6;
  v8 = a3;
  v9 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:v8 forKey:v7 domainAccessor:v9];
}

- (id)modifierKey
{
  v2 = [(VoiceOverKeyboardController *)self selectedModifier];
  v3 = +[VoiceOverKeyboardModifierKeyController modifierShortStringDescription:](VoiceOverKeyboardModifierKeyController, "modifierShortStringDescription:", [v2 integerValue]);

  return v3;
}

- (id)selectedModifier
{
  v3 = *MEMORY[0x277CE7F70];
  v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v3 domainAccessor:v4];

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

- (void)setModifier:(id)a3
{
  v4 = *MEMORY[0x277CE7F70];
  v5 = a3;
  v6 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:v5 forKey:v4 domainAccessor:v6];
}

- (id)keyboardInteractionTime
{
  v2 = [(VoiceOverKeyboardController *)self keyboardTimeout];
  [v2 doubleValue];
  v3 = AXLocalizedTimeSummary();

  return v3;
}

- (id)keyboardTimeout
{
  v3 = *MEMORY[0x277CE7F68];
  v4 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v5 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:v3 domainAccessor:v4];

  if (!v5)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CE69F0]];
  }

  return v5;
}

- (void)setKeyboardTimeout:(id)a3
{
  v4 = *MEMORY[0x277CE7F68];
  v5 = a3;
  v6 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:v5 forKey:v4 domainAccessor:v6];
}

@end