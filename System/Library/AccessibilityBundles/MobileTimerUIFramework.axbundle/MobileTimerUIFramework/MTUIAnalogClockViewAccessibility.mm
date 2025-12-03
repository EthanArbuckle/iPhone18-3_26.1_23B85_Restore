@interface MTUIAnalogClockViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MTUIAnalogClockViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(MTUIAnalogClockViewAccessibility *)self safeValueForKey:@"isNighttime"];
  if ([v2 BOOLValue])
  {
    v3 = @"clock.nighttime";
  }

  else
  {
    v3 = @"clock.daytime";
  }

  v4 = accessibilityLocalizedString(v3);

  return v4;
}

- (id)accessibilityValue
{
  v3 = [(MTUIAnalogClockViewAccessibility *)self safeValueForKey:@"hour"];
  integerValue = [v3 integerValue];

  v5 = [(MTUIAnalogClockViewAccessibility *)self safeValueForKey:@"minute"];
  integerValue2 = [v5 integerValue];

  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%ld:%ld", integerValue, integerValue2];
  v8 = AXDateFromStringWithFormat();

  v9 = [MEMORY[0x29EDB9F78] localizedStringFromDate:v8 dateStyle:0 timeStyle:1];
  v10 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v9];
  [v10 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD888]];

  return v10;
}

- (BOOL)isAccessibilityElement
{
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] != 0;

  return v3;
}

@end