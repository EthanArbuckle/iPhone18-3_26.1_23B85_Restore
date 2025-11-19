@interface SBHClockApplicationIconAccessibility
- (id)accessibilityValue;
@end

@implementation SBHClockApplicationIconAccessibility

- (id)accessibilityValue
{
  v2 = [MEMORY[0x29EDB8DB0] date];
  v3 = AXDateStringForFormat();

  v4 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v3];
  [v4 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD888]];

  return v4;
}

@end