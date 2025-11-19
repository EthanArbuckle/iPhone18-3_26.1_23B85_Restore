@interface NSString(AXSSKeyChordExtras)
- (__CFString)axss_keyChordKeyDisplayValueForUSKeyboard:()AXSSKeyChordExtras;
@end

@implementation NSString(AXSSKeyChordExtras)

- (__CFString)axss_keyChordKeyDisplayValueForUSKeyboard:()AXSSKeyChordExtras
{
  if (([a1 isEqualToString:@"␣"] & 1) != 0 || objc_msgSend(a1, "isEqualToString:", @" "))
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"AXSSKeySymbolSpace";
LABEL_4:
    v8 = [v5 localizedStringForKey:v7 value:&stru_1F405A428 table:@"AccessibilitySharedSupport"];

    goto LABEL_5;
  }

  if ([a1 isEqualToString:@"⌤"])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"AXSSKeySymbolEnter";
    goto LABEL_4;
  }

  if ([a1 isEqualToString:@"⇱"])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"AXSSKeySymbolHome";
    goto LABEL_4;
  }

  if ([a1 isEqualToString:@"⇲"])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"AXSSKeySymbolEnd";
    goto LABEL_4;
  }

  if ([a1 isEqualToString:@"⇞"])
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AccessibilitySharedSupport"];
    v6 = v5;
    v7 = @"AXSSKeySymbolPageUp";
    goto LABEL_4;
  }

  if ([a1 isEqualToString:@"⇟"])
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

  if ([a1 isEqualToString:@"⇥"])
  {
    v8 = @"Tab";
    goto LABEL_5;
  }

  if ([a1 isEqualToString:@"⏎"])
  {
    v8 = @"Return";
    goto LABEL_5;
  }

  if ([a1 isEqualToString:@"⇪"])
  {
    v8 = @"Caps Lock";
    goto LABEL_5;
  }

  if ([a1 isEqualToString:@"⌫"])
  {
    v8 = @"Delete";
  }

  else
  {
LABEL_27:
    v8 = a1;
  }

LABEL_5:

  return v8;
}

@end