@interface UIToolbarButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIToolbarButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIToolbarButton" hasInstanceVariable:@"_onState" withType:"B"];
  objc_storeStrong(location, 0);
}

- (CGRect)accessibilityFrame
{
  v6 = [(UIToolbarButtonAccessibility *)self safeValueForKey:@"_info"];
  [v6 accessibilityFrame];
  v7 = CGRectInset(v8, -5.0, -5.0);
  MEMORY[0x29EDC9740](v6);
  y = v7.origin.y;
  x = v7.origin.x;
  height = v7.size.height;
  width = v7.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)accessibilityLabel
{
  v21 = self;
  v20[1] = a2;
  v17 = [(UIToolbarButtonAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](v17).n128_u64[0];
  if (v17)
  {
    v22 = [(UIToolbarButtonAccessibility *)v21 accessibilityUserDefinedLabel];
  }

  else
  {
    v16 = [(UIToolbarButtonAccessibility *)v21 safeValueForKey:@"label", v2];
    v20[0] = [v16 accessibilityLabel];
    if (![v20[0] length])
    {
      v14 = [(UIToolbarButtonAccessibility *)v21 safeValueForKey:@"tag"];
      v15 = [v14 integerValue];
      v3 = MEMORY[0x29EDC9740](v14).n128_u64[0];
      v19 = v15;
      if (!v15)
      {
        v13 = [(UIToolbarButtonAccessibility *)v21 accessibilityIdentification];
        v19 = [v13 integerValue];
        v3 = MEMORY[0x29EDC9740](v13).n128_u64[0];
      }

      v4 = [MEMORY[0x29EDC7DA0] _accessibilityTitleForSystemTag:{v19, *&v3}];
      v5 = v20[0];
      v20[0] = v4;
      MEMORY[0x29EDC9740](v5);
    }

    if (![v20[0] length])
    {
      v12 = [(UIToolbarButtonAccessibility *)v21 safeValueForKey:@"_info"];
      v6 = [v12 _accessibilityAXAttributedLabel];
      v7 = v20[0];
      v20[0] = v6;
      MEMORY[0x29EDC9740](v7);
      if (![v20[0] length])
      {
        v18.receiver = v21;
        v18.super_class = UIToolbarButtonAccessibility;
        v8 = [(UIToolbarButtonAccessibility *)&v18 accessibilityLabel];
        v9 = v20[0];
        v20[0] = v8;
        MEMORY[0x29EDC9740](v9);
      }
    }

    v22 = MEMORY[0x29EDC9748](v20[0]);
    objc_storeStrong(v20, 0);
  }

  v10 = v22;

  return v10;
}

- (BOOL)isAccessibilityElement
{
  v5 = [(UIToolbarButtonAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return 1;
  }

  v4 = [(UIToolbarButtonAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (unint64_t)accessibilityTraits
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = UIToolbarButtonAccessibility;
  v4 = [(UIToolbarButtonAccessibility *)&v6 accessibilityTraits]| *MEMORY[0x29EDC7F70];
  v5 = [(UIToolbarButtonAccessibility *)v8 safeValueForKey:@"_onState"];
  if ([v5 BOOLValue])
  {
    v3 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x29EDC9740](v5);
  return v4 | v3;
}

@end