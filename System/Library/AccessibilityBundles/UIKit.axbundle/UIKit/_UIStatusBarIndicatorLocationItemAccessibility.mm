@interface _UIStatusBarIndicatorLocationItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation _UIStatusBarIndicatorLocationItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIStatusBarIndicatorLocationItem";
  [location[0] validateClass:?];
  v5 = "@";
  [location[0] validateClass:@"_UIStatusBarIndicatorLocationItem" hasClassMethod:@"prominentDisplayIdentifier" withFullSignature:0];
  v4 = @"_UIStatusBarItem";
  [location[0] validateClass:v3 isKindOfClass:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"previousType" withFullSignature:{"q", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"displayItems" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"_UIStatusBarDisplayItem" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  objc_storeStrong(v7, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v15 = a2;
  v14 = [(_UIStatusBarIndicatorLocationItemAccessibility *)self safeIntegerForKey:@"previousType"];
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v13 = 0;
  v7 = 0;
  objc_opt_class();
  v4 = [(_UIStatusBarIndicatorLocationItemAccessibility *)selfCopy safeValueForKey:@"displayItems"];
  v6 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8 = v5;
  [v5 enumerateKeysAndObjectsUsingBlock:?];
  if (v10[3])
  {
    v17 = accessibilityLocalizedString(@"status.location.prominent");
  }

  else if (v14)
  {
    if (v14 == 1)
    {
      v17 = accessibilityLocalizedString(@"status.location.geofence");
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = accessibilityLocalizedString(@"status.location.icon");
  }

  objc_storeStrong(&v8, 0);
  _Block_object_dispose(&v9, 8);
  v2 = v17;

  return v2;
}

@end