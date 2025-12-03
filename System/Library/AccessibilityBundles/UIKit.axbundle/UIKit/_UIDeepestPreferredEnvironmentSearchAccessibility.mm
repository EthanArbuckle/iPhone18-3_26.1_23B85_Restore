@interface _UIDeepestPreferredEnvironmentSearchAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_overridingPreferredFocusEnvironmentForPreferredEnvironment:(id)environment visitedFocusEnvironments:(id)environments;
@end

@implementation _UIDeepestPreferredEnvironmentSearchAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIDeepestPreferredEnvironmentSearch" hasInstanceMethod:@"_overridingPreferredFocusEnvironmentForPreferredEnvironment:visitedFocusEnvironments:" withFullSignature:{"@", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)_overridingPreferredFocusEnvironmentForPreferredEnvironment:(id)environment visitedFocusEnvironments:(id)environments
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  v17 = 0;
  objc_storeStrong(&v17, environments);
  v15.receiver = selfCopy;
  v15.super_class = _UIDeepestPreferredEnvironmentSearchAccessibility;
  v16 = [(_UIDeepestPreferredEnvironmentSearchAccessibility *)&v15 _overridingPreferredFocusEnvironmentForPreferredEnvironment:location[0] visitedFocusEnvironments:v17];
  v13 = 0;
  objc_opt_class();
  v12 = __UIAccessibilityCastAsClass();
  v11 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  v14 = v11;
  if (([v11 _accessibilityIsFKARunningForFocusItem] & 1) == 0)
  {
    goto LABEL_9;
  }

  parentFocusEnvironment = [location[0] parentFocusEnvironment];
  while (parentFocusEnvironment)
  {
    if (parentFocusEnvironment == v16)
    {
      v20 = 0;
      v9 = 1;
      goto LABEL_8;
    }

    v10ParentFocusEnvironment = [parentFocusEnvironment parentFocusEnvironment];
    v5 = parentFocusEnvironment;
    parentFocusEnvironment = v10ParentFocusEnvironment;
    MEMORY[0x29EDC9740](v5);
  }

  v9 = 0;
LABEL_8:
  objc_storeStrong(&parentFocusEnvironment, 0);
  if (!v9)
  {
LABEL_9:
    v20 = MEMORY[0x29EDC9748](v16);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  v6 = v20;

  return v6;
}

@end