@interface AXSSKeyChord(Speaking)
- (id)_accessibilitySpeakableDisplayValueWithStyle:()Speaking isUSKeyboard:;
- (id)accessibilitySpeakableDisplayValueWithStyle:()Speaking;
@end

@implementation AXSSKeyChord(Speaking)

- (id)accessibilitySpeakableDisplayValueWithStyle:()Speaking
{
  v5 = BKSHIDServicesGetHardwareKeyboardLanguage();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 isEqualToString:@"U.S."];
  }

  else
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    v7 = [localeIdentifier isEqualToString:@"en_US"];
  }

  v10 = [self _accessibilitySpeakableDisplayValueWithStyle:a3 isUSKeyboard:v7];

  return v10;
}

- (id)_accessibilitySpeakableDisplayValueWithStyle:()Speaking isUSKeyboard:
{
  v1 = MEMORY[0x1E6988D60];
  v2 = [self displayValueWithStyle:? isUSKeyboard:?];
  v3 = [v1 axAttributedStringWithString:v2];

  [v3 setAttribute:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6988F78]];

  return v3;
}

@end