@interface UIToolbarButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIToolbarButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v20[1] = a2;
  accessibilityUserDefinedLabel = [(UIToolbarButtonAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedLabel).n128_u64[0];
  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(UIToolbarButtonAccessibility *)selfCopy accessibilityUserDefinedLabel];
  }

  else
  {
    v16 = [(UIToolbarButtonAccessibility *)selfCopy safeValueForKey:@"label", v2];
    v20[0] = [v16 accessibilityLabel];
    if (![v20[0] length])
    {
      v14 = [(UIToolbarButtonAccessibility *)selfCopy safeValueForKey:@"tag"];
      integerValue = [v14 integerValue];
      v3 = MEMORY[0x29EDC9740](v14).n128_u64[0];
      integerValue2 = integerValue;
      if (!integerValue)
      {
        accessibilityIdentification = [(UIToolbarButtonAccessibility *)selfCopy accessibilityIdentification];
        integerValue2 = [accessibilityIdentification integerValue];
        v3 = MEMORY[0x29EDC9740](accessibilityIdentification).n128_u64[0];
      }

      v4 = [MEMORY[0x29EDC7DA0] _accessibilityTitleForSystemTag:{integerValue2, *&v3}];
      v5 = v20[0];
      v20[0] = v4;
      MEMORY[0x29EDC9740](v5);
    }

    if (![v20[0] length])
    {
      v12 = [(UIToolbarButtonAccessibility *)selfCopy safeValueForKey:@"_info"];
      _accessibilityAXAttributedLabel = [v12 _accessibilityAXAttributedLabel];
      v7 = v20[0];
      v20[0] = _accessibilityAXAttributedLabel;
      MEMORY[0x29EDC9740](v7);
      if (![v20[0] length])
      {
        v18.receiver = selfCopy;
        v18.super_class = UIToolbarButtonAccessibility;
        accessibilityLabel = [(UIToolbarButtonAccessibility *)&v18 accessibilityLabel];
        v9 = v20[0];
        v20[0] = accessibilityLabel;
        MEMORY[0x29EDC9740](v9);
      }
    }

    accessibilityUserDefinedLabel2 = MEMORY[0x29EDC9748](v20[0]);
    objc_storeStrong(v20, 0);
  }

  v10 = accessibilityUserDefinedLabel2;

  return v10;
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(UIToolbarButtonAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (!isAccessibilityUserDefinedElement)
  {
    return 1;
  }

  isAccessibilityUserDefinedElement2 = [(UIToolbarButtonAccessibility *)self isAccessibilityUserDefinedElement];
  v7 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
  MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  return v7;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = UIToolbarButtonAccessibility;
  v4 = [(UIToolbarButtonAccessibility *)&v6 accessibilityTraits]| *MEMORY[0x29EDC7F70];
  v5 = [(UIToolbarButtonAccessibility *)selfCopy safeValueForKey:@"_onState"];
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