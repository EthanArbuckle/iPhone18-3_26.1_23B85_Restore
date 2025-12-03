@interface _UISplitViewControllerAdaptiveColumnViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axShowsSidebar;
- (BOOL)shouldGroupAccessibilityChildren;
- (int64_t)_accessibilitySortPriority;
@end

@implementation _UISplitViewControllerAdaptiveColumnViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UISplitViewControllerAdaptiveColumnView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UISplitViewControllerAdaptiveColumnView" hasInstanceMethod:@"splitViewControllerColumn" withFullSignature:{"q", 0}];
  objc_storeStrong(v5, obj);
}

- (BOOL)shouldGroupAccessibilityChildren
{
  selfCopy = self;
  v5 = a2;
  if ([(_UISplitViewControllerAdaptiveColumnViewAccessibility *)self _axShowsSidebar])
  {
    shouldGroupAccessibilityChildren = 1;
  }

  else
  {
    v4.receiver = selfCopy;
    v4.super_class = _UISplitViewControllerAdaptiveColumnViewAccessibility;
    shouldGroupAccessibilityChildren = [(_UISplitViewControllerAdaptiveColumnViewAccessibility *)&v4 shouldGroupAccessibilityChildren];
  }

  return shouldGroupAccessibilityChildren != 0;
}

- (int64_t)_accessibilitySortPriority
{
  selfCopy = self;
  v5 = a2;
  if ([(_UISplitViewControllerAdaptiveColumnViewAccessibility *)self _axShowsSidebar])
  {
    return 1000;
  }

  v4.receiver = selfCopy;
  v4.super_class = _UISplitViewControllerAdaptiveColumnViewAccessibility;
  return [(_UISplitViewControllerAdaptiveColumnViewAccessibility *)&v4 _accessibilitySortPriority];
}

- (BOOL)_axShowsSidebar
{
  selfCopy = self;
  v11 = a2;
  v9 = 0;
  v8 = __UIAccessibilitySafeClass();
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  traitCollection = [v7 traitCollection];
  v4 = [traitCollection horizontalSizeClass] == 1;
  MEMORY[0x29EDC9740](traitCollection);
  MEMORY[0x29EDC9740](v7);
  v10 = v4;
  v6 = [(_UISplitViewControllerAdaptiveColumnViewAccessibility *)selfCopy safeIntForKey:@"splitViewControllerColumn"]== 0;
  v5 = 0;
  if (!v10)
  {
    return v6;
  }

  return v5;
}

@end