@interface SAUIUserUtteranceView(KeyboardInitiated)
- (uint64_t)afui_isKeyboardInitiated;
- (void)setAfui_KeyboardInitiated:()KeyboardInitiated;
@end

@implementation SAUIUserUtteranceView(KeyboardInitiated)

- (void)setAfui_KeyboardInitiated:()KeyboardInitiated
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [self setProperty:v2 forKey:@"SiriUserUtteranceKeyboardInitiated"];
}

- (uint64_t)afui_isKeyboardInitiated
{
  v1 = [self propertyForKey:@"SiriUserUtteranceKeyboardInitiated"];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end