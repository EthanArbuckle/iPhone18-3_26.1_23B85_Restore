@interface SBUISegmentedControlAccessibility
- (id)automationElements;
@end

@implementation SBUISegmentedControlAccessibility

- (id)automationElements
{
  if (([(SBUISegmentedControlAccessibility *)self accessibilityElementsHidden]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SBUISegmentedControlAccessibility;
    v3 = [(SBUISegmentedControlAccessibility *)&v5 automationElements];
  }

  return v3;
}

@end