@interface _UIFindNavigatorSearchTextFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)automationElements;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIFindNavigatorSearchTextFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIFindNavigatorSearchTextField" isKindOfClass:@"UITextField"];
  objc_storeStrong(location, 0);
}

- (unint64_t)accessibilityTraits
{
  v10 = self;
  v9 = a2;
  v7.receiver = self;
  v7.super_class = _UIFindNavigatorSearchTextFieldAccessibility;
  v8 = [(_UIFindNavigatorSearchTextFieldAccessibility *)&v7 accessibilityTraits];
  v6 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  v3 = [v4 returnKeyType];
  MEMORY[0x29EDC9740](v4);
  if (v3 == 6)
  {
    v8 |= *MEMORY[0x29EDC7FB8];
  }

  return v8;
}

- (id)automationElements
{
  v6[2] = self;
  v6[1] = a2;
  v5.receiver = self;
  v5.super_class = _UIFindNavigatorSearchTextFieldAccessibility;
  v6[0] = [(_UIFindNavigatorSearchTextFieldAccessibility *)&v5 automationElements];
  if ([v6[0] count])
  {
    v4 = [MEMORY[0x29EDB8E30] orderedSetWithArray:v6[0]];
    v7 = [v4 array];
    objc_storeStrong(&v4, 0);
  }

  else
  {
    v7 = MEMORY[0x29EDC9748](v6[0]);
  }

  objc_storeStrong(v6, 0);
  v2 = v7;

  return v2;
}

@end