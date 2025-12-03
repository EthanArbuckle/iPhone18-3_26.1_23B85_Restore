@interface UIListContentConfigurationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation UIListContentConfigurationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UIListContentConfiguration";
  v3 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"attributedText" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"secondaryText" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"secondaryAttributedText" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"prefersSideBySideTextAndSecondaryText" withFullSignature:{"B", 0}];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v23[1] = a2;
  v22.receiver = self;
  v22.super_class = UIListContentConfigurationAccessibility;
  v23[0] = [(UIListContentConfigurationAccessibility *)&v22 accessibilityLabel];
  if (![v23[0] length])
  {
    v2 = [(UIListContentConfigurationAccessibility *)selfCopy safeStringForKey:@"text"];
    v3 = v23[0];
    v23[0] = v2;
    *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    if (![v23[0] length])
    {
      v21 = 0;
      objc_opt_class();
      v14 = [(UIListContentConfigurationAccessibility *)selfCopy safeValueForKey:@"attributedText"];
      v20 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v14);
      v19 = MEMORY[0x29EDC9748](v20);
      objc_storeStrong(&v20, 0);
      string = [v19 string];
      v6 = v23[0];
      v23[0] = string;
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v19);
    }

    if (([(UIListContentConfigurationAccessibility *)selfCopy safeBoolForKey:@"prefersSideBySideTextAndSecondaryText"]& 1) == 0)
    {
      v18 = [(UIListContentConfigurationAccessibility *)selfCopy safeStringForKey:@"secondaryText"];
      if (![v18 length])
      {
        v17 = 0;
        objc_opt_class();
        v13 = [(UIListContentConfigurationAccessibility *)selfCopy safeValueForKey:@"secondaryAttributedText"];
        v16 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v13);
        v15 = MEMORY[0x29EDC9748](v16);
        objc_storeStrong(&v16, 0);
        string2 = [v15 string];
        v8 = v18;
        v18 = string2;
        MEMORY[0x29EDC9740](v8);
        MEMORY[0x29EDC9740](v15);
      }

      v9 = __UIAXStringForVariables();
      v10 = v23[0];
      v23[0] = v9;
      MEMORY[0x29EDC9740](v10);
      objc_storeStrong(&v18, 0);
    }
  }

  v12 = MEMORY[0x29EDC9748](v23[0]);
  objc_storeStrong(v23, 0);

  return v12;
}

- (id)accessibilityValue
{
  selfCopy = self;
  v12[1] = a2;
  v11.receiver = self;
  v11.super_class = UIListContentConfigurationAccessibility;
  v12[0] = [(UIListContentConfigurationAccessibility *)&v11 accessibilityValue];
  if (![v12[0] length] && (-[UIListContentConfigurationAccessibility safeBoolForKey:](selfCopy, "safeBoolForKey:", @"prefersSideBySideTextAndSecondaryText") & 1) != 0)
  {
    v10 = [(UIListContentConfigurationAccessibility *)selfCopy safeStringForKey:@"secondaryText"];
    if (![v10 length])
    {
      v9 = 0;
      objc_opt_class();
      v6 = [(UIListContentConfigurationAccessibility *)selfCopy safeValueForKey:@"secondaryAttributedText"];
      v8 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v6);
      v7 = MEMORY[0x29EDC9748](v8);
      objc_storeStrong(&v8, 0);
      string = [v7 string];
      v3 = v10;
      v10 = string;
      MEMORY[0x29EDC9740](v3);
      MEMORY[0x29EDC9740](v7);
    }

    objc_storeStrong(v12, v10);
    objc_storeStrong(&v10, 0);
  }

  v5 = MEMORY[0x29EDC9748](v12[0]);
  objc_storeStrong(v12, 0);

  return v5;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v8 = a2;
  image = [(UIListContentConfigurationAccessibility *)self image];
  accessibilityIdentifier = [image accessibilityIdentifier];
  v6 = [accessibilityIdentifier containsString:@"checkmark"];
  MEMORY[0x29EDC9740](accessibilityIdentifier);
  *&v2 = MEMORY[0x29EDC9740](image).n128_u64[0];
  if (v6)
  {
    return *MEMORY[0x29EDC7FC0];
  }

  v7.receiver = selfCopy;
  v7.super_class = UIListContentConfigurationAccessibility;
  return [(UIListContentConfigurationAccessibility *)&v7 accessibilityTraits];
}

@end