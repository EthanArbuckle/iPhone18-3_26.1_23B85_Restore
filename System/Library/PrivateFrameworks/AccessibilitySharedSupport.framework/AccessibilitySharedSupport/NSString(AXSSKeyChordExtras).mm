@interface NSString(AXSSKeyChordExtras)
- (__CFString)axss_keyChordKeyDisplayValueForUSKeyboard:()AXSSKeyChordExtras;
@end

@implementation NSString(AXSSKeyChordExtras)

- (__CFString)axss_keyChordKeyDisplayValueForUSKeyboard:()AXSSKeyChordExtras
{
  if (([self isEqualToString:@"␣"] & 1) != 0 || objc_msgSend(self, "isEqualToString:", @" "))
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"AXSSKeySymbolSpace";
LABEL_4:
    selfCopy = [v5 localizedStringForKey:v7 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];

    goto LABEL_5;
  }

  if ([self isEqualToString:@"⌤"])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"AXSSKeySymbolEnter";
    goto LABEL_4;
  }

  if ([self isEqualToString:@"⇱"])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"AXSSKeySymbolHome";
    goto LABEL_4;
  }

  if ([self isEqualToString:@"⇲"])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"AXSSKeySymbolEnd";
    goto LABEL_4;
  }

  if ([self isEqualToString:@"⇞"])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"AXSSKeySymbolPageUp";
    goto LABEL_4;
  }

  if ([self isEqualToString:@"⇟"])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"AXSSKeySymbolPageDown";
    goto LABEL_4;
  }

  if (!a3)
  {
    goto LABEL_27;
  }

  if ([self isEqualToString:@"⇥"])
  {
    selfCopy = @"Tab";
    goto LABEL_5;
  }

  if ([self isEqualToString:@"⏎"])
  {
    selfCopy = @"Return";
    goto LABEL_5;
  }

  if ([self isEqualToString:@"⇪"])
  {
    selfCopy = @"Caps Lock";
    goto LABEL_5;
  }

  if ([self isEqualToString:@"⌫"])
  {
    selfCopy = @"Delete";
  }

  else
  {
LABEL_27:
    selfCopy = self;
  }

LABEL_5:

  return selfCopy;
}

@end