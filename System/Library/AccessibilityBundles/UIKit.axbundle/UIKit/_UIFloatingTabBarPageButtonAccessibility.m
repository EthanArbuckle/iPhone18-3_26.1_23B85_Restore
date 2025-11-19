@interface _UIFloatingTabBarPageButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _UIFloatingTabBarPageButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIFloatingTabBarPageButton";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UIFloatingTabBarPageButton" hasInstanceMethod:@"direction" withFullSignature:{"q", 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  v19 = self;
  v18[1] = a2;
  v17 = 0;
  objc_opt_class();
  v16 = __UIAccessibilityCastAsClass();
  v15 = MEMORY[0x29EDC9748](v16);
  objc_storeStrong(&v16, 0);
  v18[0] = v15;
  v14 = [v15 effectiveUserInterfaceLayoutDirection] == 1;
  if ([(_UIFloatingTabBarPageButtonAccessibility *)v19 safeIntegerForKey:@"direction"])
  {
    v8 = 0;
    v6 = 0;
    if (v14)
    {
      v9 = accessibilityLocalizedString(@"previous.page");
      v8 = 1;
      v3 = MEMORY[0x29EDC9748](v9);
    }

    else
    {
      v7 = accessibilityLocalizedString(@"next.page");
      v6 = 1;
      v3 = MEMORY[0x29EDC9748](v7);
    }

    v20 = v3;
    if (v6)
    {
      MEMORY[0x29EDC9740](v7);
    }

    if (v8)
    {
      MEMORY[0x29EDC9740](v9);
    }
  }

  else
  {
    v12 = 0;
    v10 = 0;
    if (v14)
    {
      v13 = accessibilityLocalizedString(@"next.page");
      v12 = 1;
      v2 = MEMORY[0x29EDC9748](v13);
    }

    else
    {
      v11 = accessibilityLocalizedString(@"previous.page");
      v10 = 1;
      v2 = MEMORY[0x29EDC9748](v11);
    }

    v20 = v2;
    if (v10)
    {
      MEMORY[0x29EDC9740](v11);
    }

    if (v12)
    {
      MEMORY[0x29EDC9740](v13);
    }
  }

  objc_storeStrong(v18, 0);
  v4 = v20;

  return v4;
}

@end