@interface MTUIDateLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation MTUIDateLabelAccessibility

- (id)accessibilityLabel
{
  v2 = [(MTUIDateLabelAccessibility *)self safeValueForKey:@"_dateLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  if ([accessibilityLabel containsString:@":"])
  {
    v4 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:accessibilityLabel];

    [v4 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD888]];
    accessibilityLabel = v4;
  }

  return accessibilityLabel;
}

@end