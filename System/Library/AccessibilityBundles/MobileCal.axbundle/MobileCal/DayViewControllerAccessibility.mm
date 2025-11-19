@interface DayViewControllerAccessibility
- (id)_accessibilitySpeakThisElementsAndStrings;
@end

@implementation DayViewControllerAccessibility

- (id)_accessibilitySpeakThisElementsAndStrings
{
  v7[1] = *MEMORY[0x29EDCA608];
  v6.receiver = self;
  v6.super_class = DayViewControllerAccessibility;
  v2 = [(DayViewControllerAccessibility *)&v6 _accessibilitySpeakThisElementsAndStrings];
  if (![v2 count])
  {
    v3 = accessibilityLocalizedString(@"event.count.none");
    v7[0] = v3;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];

    v2 = v4;
  }

  return v2;
}

@end