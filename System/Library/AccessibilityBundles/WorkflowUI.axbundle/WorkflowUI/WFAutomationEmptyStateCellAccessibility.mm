@interface WFAutomationEmptyStateCellAccessibility
- (id)_accessibilityChildren;
@end

@implementation WFAutomationEmptyStateCellAccessibility

- (id)_accessibilityChildren
{
  v9.receiver = self;
  v9.super_class = WFAutomationEmptyStateCellAccessibility;
  _accessibilityChildren = [(WFAutomationEmptyStateCellAccessibility *)&v9 _accessibilityChildren];
  v4 = [_accessibilityChildren indexOfObjectPassingTest:&__block_literal_global_1];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [_accessibilityChildren objectAtIndex:v4];
  }

  [v5 setIsAccessibilityElement:0];
  v6 = [(WFAutomationEmptyStateCellAccessibility *)self safeValueForKey:@"textField"];
  accessibilityLabel = [v5 accessibilityLabel];
  [v6 setAccessibilityLabel:accessibilityLabel];

  return _accessibilityChildren;
}

uint64_t __65__WFAutomationEmptyStateCellAccessibility__accessibilityChildren__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  NSClassFromString(&cfstr_Uitabletextacc.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a4 = 1;
  }

  return isKindOfClass & 1;
}

@end