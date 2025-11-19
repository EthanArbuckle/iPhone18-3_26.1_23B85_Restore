@interface MTUIDateLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation MTUIDateLabelAccessibility

- (id)accessibilityLabel
{
  v2 = [(MTUIDateLabelAccessibility *)self safeValueForKey:@"_dateLabel"];
  v3 = [v2 accessibilityLabel];

  if ([v3 containsString:@":"])
  {
    v4 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v3];

    [v4 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD888]];
    v3 = v4;
  }

  return v3;
}

@end