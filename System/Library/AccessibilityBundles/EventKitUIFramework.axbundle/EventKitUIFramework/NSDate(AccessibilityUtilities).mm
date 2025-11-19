@interface NSDate(AccessibilityUtilities)
- (id)_accessibilityTimeString;
@end

@implementation NSDate(AccessibilityUtilities)

- (id)_accessibilityTimeString
{
  v0 = MEMORY[0x29EDBD7E8];
  v1 = AXDateStringForFormat();
  v2 = [v0 axAttributedStringWithString:v1];

  [v2 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD888]];

  return v2;
}

@end