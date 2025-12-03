@interface SBUISegmentedControlAccessibility
- (id)automationElements;
@end

@implementation SBUISegmentedControlAccessibility

- (id)automationElements
{
  if (([(SBUISegmentedControlAccessibility *)self accessibilityElementsHidden]& 1) != 0)
  {
    automationElements = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBUISegmentedControlAccessibility;
    automationElements = [(SBUISegmentedControlAccessibility *)&v5 automationElements];
  }

  return automationElements;
}

@end