@interface VoiceOverDelayUntilSpeakController
- (double)valueForSpecifier:(id)a3;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)a3;
- (void)specifier:(id)a3 setValue:(double)a4;
@end

@implementation VoiceOverDelayUntilSpeakController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"DELAY_TO_SPEAK_FOOTER", @"VoiceOverSettings");
    [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [v5 addObject:v6];
    v8 = [MEMORY[0x277D3FAD8] ax_stepperSpecifierWithDelegate:self];
    [v5 addObject:v8];
    v9 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (double)valueForSpecifier:(id)a3
{
  v3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [v3 doubleForKey:*MEMORY[0x277CE7F50]];
  v5 = v4;

  result = 0.0;
  if (v5 >= 0.0)
  {
    return v5;
  }

  return result;
}

- (void)specifier:(id)a3 setValue:(double)a4
{
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:{a3, a4}];
  v5 = *MEMORY[0x277CE7F50];
  v6 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:v7 forKey:v5 domainAccessor:v6];
}

- (id)stringValueForSpecifier:(id)a3
{
  [(VoiceOverDelayUntilSpeakController *)self valueForSpecifier:a3];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end