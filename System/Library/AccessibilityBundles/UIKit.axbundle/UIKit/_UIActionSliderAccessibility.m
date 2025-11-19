@interface _UIActionSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityPath;
@end

@implementation _UIActionSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"_UIActionSlider";
  v3 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"trackMaskPath" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceVariable:@"_knobView" withType:"_UIActionSliderKnob"];
  [location[0] validateClass:v4 hasInstanceVariable:@"_trackBackgroundView" withType:"UIView"];
  objc_storeStrong(v6, obj);
}

- (id)accessibilityLabel
{
  v9 = self;
  location[1] = a2;
  v5 = [(_UIActionSliderAccessibility *)self accessibilityUserDefinedLabel];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v10 = [(_UIActionSliderAccessibility *)v9 accessibilityUserDefinedLabel];
  }

  else
  {
    location[0] = [(_UIActionSliderAccessibility *)v9 safeValueForKey:@"trackText", v2];
    if ([location[0] length])
    {
      v10 = MEMORY[0x29EDC9748](location[0]);
    }

    else
    {
      v6.receiver = v9;
      v6.super_class = _UIActionSliderAccessibility;
      v10 = [(_UIActionSliderAccessibility *)&v6 accessibilityLabel];
    }

    v7 = 1;
    objc_storeStrong(location, 0);
  }

  v3 = v10;

  return v3;
}

- (BOOL)accessibilityActivate
{
  v11 = self;
  v10[1] = a2;
  v10[0] = [(_UIActionSliderAccessibility *)self safeValueForKey:@"delegate"];
  v3 = MEMORY[0x29EDCA5F8];
  v4 = -1073741824;
  v5 = 0;
  v6 = __53___UIActionSliderAccessibility_accessibilityActivate__block_invoke;
  v7 = &unk_29F30C888;
  v8 = MEMORY[0x29EDC9748](v10[0]);
  v9 = MEMORY[0x29EDC9748](v11);
  AXPerformSafeBlock();
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v10, 0);
  return 1;
}

- (id)accessibilityPath
{
  v10 = self;
  v9[1] = a2;
  v8 = 0;
  v5 = [(_UIActionSliderAccessibility *)self safeValueForKey:@"trackMaskPath"];
  v7 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](v5);
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9[0] = v6;
  v3 = [(_UIActionSliderAccessibility *)v10 safeUIViewForKey:@"_trackBackgroundView"];
  v4 = UIAccessibilityConvertPathToScreenCoordinates(v6, v3);
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(v9, 0);

  return v4;
}

- (CGRect)accessibilityFrame
{
  v13 = self;
  location[1] = a2;
  location[0] = [(_UIActionSliderAccessibility *)self accessibilityPath];
  if (location[0])
  {
    v6 = location[0];
    *&v2 = CGPathGetBoundingBox([location[0] CGPath]);
  }

  else
  {
    v11.receiver = v13;
    v11.super_class = _UIActionSliderAccessibility;
    [(_UIActionSliderAccessibility *)&v11 accessibilityFrame];
  }

  v14 = v2;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  objc_storeStrong(location, 0);
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  v6 = [(_UIActionSliderAccessibility *)self safeValueForKey:@"_knobView"];
  [v6 accessibilityActivationPoint];
  v7 = v2;
  v8 = v3;
  MEMORY[0x29EDC9740](v6);
  v4 = v7;
  v5 = v8;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)accessibilityHint
{
  v4 = [(_UIActionSliderAccessibility *)self accessibilityUserDefinedHint];
  v7 = 0;
  v5 = 0;
  if (v4)
  {
    v6 = [(_UIActionSliderAccessibility *)self accessibilityUserDefinedHint];
    v5 = 1;
    v2 = MEMORY[0x29EDC9748](v6);
  }

  else
  {
    v8 = UIKitAccessibilityLocalizedString();
    v7 = 1;
    v2 = MEMORY[0x29EDC9748](v8);
  }

  v10 = v2;
  if (v5)
  {
    MEMORY[0x29EDC9740](v6);
  }

  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  MEMORY[0x29EDC9740](v4);

  return v10;
}

@end