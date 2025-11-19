@interface PHLCDViewTextFieldAccessibility
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityPaste;
@end

@implementation PHLCDViewTextFieldAccessibility

- (id)accessibilityValue
{
  v2 = MEMORY[0x29EDBD7E8];
  v6.receiver = self;
  v6.super_class = PHLCDViewTextFieldAccessibility;
  v3 = [(PHLCDViewTextFieldAccessibility *)&v6 accessibilityValue];
  v4 = [v2 axAttributedStringWithString:v3];

  [v4 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD9D0]];

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v10 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v9.receiver = self;
  v9.super_class = PHLCDViewTextFieldAccessibility;
  v4 = [(PHLCDViewTextFieldAccessibility *)&v9 accessibilityTraits];
  v5 = [v3 isEditing];
  v6 = *MEMORY[0x29EDC7528];
  if (v5)
  {
    v7 = *MEMORY[0x29EDC7528] | *MEMORY[0x29EDC7598];
  }

  else
  {
    v7 = 0;
  }

  return v7 | v4;
}

- (void)_accessibilityPaste
{
  v2 = [MEMORY[0x29EDC7DD0] keyWindow];
  v3 = [v2 firstResponder];

  if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 canPerformAction:sel_paste_ withSender:0])
  {
    [v3 paste:0];
  }
}

@end