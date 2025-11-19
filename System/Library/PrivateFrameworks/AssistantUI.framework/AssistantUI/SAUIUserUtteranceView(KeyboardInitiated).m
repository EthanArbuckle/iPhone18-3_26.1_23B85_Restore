@interface SAUIUserUtteranceView(KeyboardInitiated)
- (uint64_t)afui_isKeyboardInitiated;
- (void)setAfui_KeyboardInitiated:()KeyboardInitiated;
@end

@implementation SAUIUserUtteranceView(KeyboardInitiated)

- (void)setAfui_KeyboardInitiated:()KeyboardInitiated
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [a1 setProperty:v2 forKey:@"SiriUserUtteranceKeyboardInitiated"];
}

- (uint64_t)afui_isKeyboardInitiated
{
  v1 = [a1 propertyForKey:@"SiriUserUtteranceKeyboardInitiated"];
  v2 = [v1 BOOLValue];

  return v2;
}

@end