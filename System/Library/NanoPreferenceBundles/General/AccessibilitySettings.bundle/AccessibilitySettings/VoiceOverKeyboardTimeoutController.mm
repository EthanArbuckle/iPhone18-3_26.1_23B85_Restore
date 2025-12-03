@interface VoiceOverKeyboardTimeoutController
- (double)valueForSpecifier:(id)specifier;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
@end

@implementation VoiceOverKeyboardTimeoutController

- (id)actionDetailControllerDelegate
{
  specifier = [(VoiceOverKeyboardTimeoutController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VoiceOverKeyboardTimeoutControllerDelegateKey"];

  return v4;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"KEYBOARD_TIMING_TIMEOUT_FOOTER", @"VoiceOverSettings");
    [emptyGroupSpecifier setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [array addObject:emptyGroupSpecifier];
    v8 = [MEMORY[0x277D3FAD8] ax_stepperSpecifierWithDelegate:self];
    [v8 setProperty:&unk_284E7E618 forKey:*MEMORY[0x277D401A8]];
    [array addObject:v8];
    v9 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (double)valueForSpecifier:(id)specifier
{
  actionDetailControllerDelegate = [(VoiceOverKeyboardTimeoutController *)self actionDetailControllerDelegate];
  keyboardTimeout = [actionDetailControllerDelegate keyboardTimeout];
  [keyboardTimeout doubleValue];
  v6 = v5;

  return v6;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  actionDetailControllerDelegate = [(VoiceOverKeyboardTimeoutController *)self actionDetailControllerDelegate];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:value];
  [actionDetailControllerDelegate setKeyboardTimeout:v5];
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(VoiceOverKeyboardTimeoutController *)self valueForSpecifier:specifier];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end