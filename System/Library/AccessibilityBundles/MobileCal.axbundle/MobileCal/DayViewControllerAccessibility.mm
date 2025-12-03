@interface DayViewControllerAccessibility
- (id)_accessibilitySpeakThisElementsAndStrings;
@end

@implementation DayViewControllerAccessibility

- (id)_accessibilitySpeakThisElementsAndStrings
{
  v7[1] = *MEMORY[0x29EDCA608];
  v6.receiver = self;
  v6.super_class = DayViewControllerAccessibility;
  _accessibilitySpeakThisElementsAndStrings = [(DayViewControllerAccessibility *)&v6 _accessibilitySpeakThisElementsAndStrings];
  if (![_accessibilitySpeakThisElementsAndStrings count])
  {
    v3 = accessibilityLocalizedString(@"event.count.none");
    v7[0] = v3;
    v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v7 count:1];

    _accessibilitySpeakThisElementsAndStrings = v4;
  }

  return _accessibilitySpeakThisElementsAndStrings;
}

@end