@interface VoiceOverDelayUntilSpeakController
- (double)valueForSpecifier:(id)specifier;
- (id)specifiers;
- (id)stringValueForSpecifier:(id)specifier;
- (void)specifier:(id)specifier setValue:(double)value;
@end

@implementation VoiceOverDelayUntilSpeakController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"DELAY_TO_SPEAK_FOOTER", @"VoiceOverSettings");
    [emptyGroupSpecifier setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [array addObject:emptyGroupSpecifier];
    v8 = [MEMORY[0x277D3FAD8] ax_stepperSpecifierWithDelegate:self];
    [array addObject:v8];
    v9 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (double)valueForSpecifier:(id)specifier
{
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [accessibilityDomainAccessor doubleForKey:*MEMORY[0x277CE7F50]];
  v5 = v4;

  result = 0.0;
  if (v5 >= 0.0)
  {
    return v5;
  }

  return result;
}

- (void)specifier:(id)specifier setValue:(double)value
{
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:{specifier, value}];
  v5 = *MEMORY[0x277CE7F50];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:v7 forKey:v5 domainAccessor:accessibilityDomainAccessor];
}

- (id)stringValueForSpecifier:(id)specifier
{
  [(VoiceOverDelayUntilSpeakController *)self valueForSpecifier:specifier];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v4 = AXFormatNumberWithOptions();

  return v4;
}

@end