@interface UIToolbarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilitySupportsContentSizeCategory:(id)a3;
- (BOOL)shouldGroupAccessibilityChildren;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UIToolbarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIToolbar" hasInstanceMethod:@"items" withFullSignature:{"@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)accessibilityIdentifier
{
  location[2] = self;
  location[1] = a2;
  v4.receiver = self;
  v4.super_class = UIToolbarAccessibility;
  location[0] = [(UIToolbarAccessibility *)&v4 accessibilityIdentifier];
  if (location[0])
  {
    v6 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v6 = AXNoLoc_1(@"Toolbar");
  }

  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

- (id)accessibilityLabel
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UIToolbarAccessibility *)self accessibilityUserDefinedLabel];
  if (location[0])
  {
    v5 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5 = accessibilityLocalizedString(@"toolbar.label");
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

- (BOOL)shouldGroupAccessibilityChildren
{
  v5 = [(UIToolbarAccessibility *)self accessibilityUserDefinedShouldGroupChildren];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return 1;
  }

  v4 = [(UIToolbarAccessibility *)self accessibilityUserDefinedShouldGroupChildren];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14 = *MEMORY[0x29EDCA608];
  v12 = self;
  v11 = a2;
  v10.receiver = self;
  v10.super_class = UIToolbarAccessibility;
  [(UIToolbarAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  memset(__b, 0, sizeof(__b));
  obj = [(UIToolbarAccessibility *)v12 safeValueForKey:@"items"];
  v7 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(__b[1] + 8 * v4);
      [v9 _accessibilityLoadAccessibilityInformation];
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
}

- (BOOL)_accessibilitySupportsContentSizeCategory:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] isEqual:*MEMORY[0x29EDC80A0]];
  objc_storeStrong(location, 0);
  return v4;
}

@end