@interface TPPasscodeViewAccessibility
- (id)accessibilityValue;
@end

@implementation TPPasscodeViewAccessibility

- (id)accessibilityValue
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"sim.pin.characterCount");
  v5 = [(TPPasscodeViewAccessibility *)self safeStringForKey:@"passcodeMutableString"];
  v6 = [v3 localizedStringWithFormat:v4, objc_msgSend(v5, "length")];

  return v6;
}

@end