@interface ActionBarAccessibility
- (id)accessibilityElements;
@end

@implementation ActionBarAccessibility

- (id)accessibilityElements
{
  v3 = [(ActionBarAccessibility *)self safeSwiftValueForKey:@"toolBar"];
  v4 = v3;
  if (v3)
  {
    accessibilityElements = [v3 _accessibilityFindSubviewDescendantsPassingTest:&__block_literal_global_0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = ActionBarAccessibility;
    accessibilityElements = [(ActionBarAccessibility *)&v8 accessibilityElements];
  }

  v6 = accessibilityElements;

  return v6;
}

uint64_t __47__ActionBarAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uibuttonbarbut.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end