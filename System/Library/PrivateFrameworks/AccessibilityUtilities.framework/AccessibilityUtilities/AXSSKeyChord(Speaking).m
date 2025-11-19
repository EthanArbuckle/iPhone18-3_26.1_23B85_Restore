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
    v8 = [MEMORY[0x1E695DF58] currentLocale];
    v9 = [v8 localeIdentifier];

    v7 = [v9 isEqualToString:@"en_US"];
  }

  v10 = [a1 _accessibilitySpeakableDisplayValueWithStyle:a3 isUSKeyboard:v7];

  return v10;
}

- (id)_accessibilitySpeakableDisplayValueWithStyle:()Speaking isUSKeyboard:
{
  v1 = MEMORY[0x1E6988D60];
  v2 = [a1 displayValueWithStyle:? isUSKeyboard:?];
  v3 = [v1 axAttributedStringWithString:v2];

  [v3 setAttribute:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E6988F78]];

  return v3;
}

@end