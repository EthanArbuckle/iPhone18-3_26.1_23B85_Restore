@interface VoiceOverKeyboardTimeoutController
- (double)valueForSpecifier:(id)a3;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (void)specifier:(id)a3 setValue:(double)a4;
@end

@implementation VoiceOverKeyboardTimeoutController

- (id)actionDetailControllerDelegate
{
  v2 = [(VoiceOverKeyboardTimeoutController *)self specifier];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"VoiceOverKeyboardTimeoutControllerDelegateKey"];

  return v4;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"KEYBOARD_TIMING_TIMEOUT_FOOTER", @"VoiceOverSettings");
    [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [v5 addObject:v6];
    v8 = [MEMORY[0x277D3FAD8] ax_stepperSpecifierWithDelegate:self];
    [v8 setProperty:&unk_284E7E618 forKey:*MEMORY[0x277D401A8]];
    [v5 addObject:v8];
    v9 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (double)valueForSpecifier:(id)a3
{
  v3 = [(VoiceOverKeyboardTimeoutController *)self actionDetailControllerDelegate];
  v4 = [v3 keyboardTimeout];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v6 = [(VoiceOverKeyboardTimeoutController *)self actionDetailControllerDelegate];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v6 setKeyboardTimeout:v5];
}

- (id)stringValueForSpecifier:(id)a3
{
  [(VoiceOverKeyboardTimeoutController *)self valueForSpecifier:a3];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end