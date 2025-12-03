@interface _UIDatePickerCompactTimeLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation _UIDatePickerCompactTimeLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIDatePickerIOSCompactView";
  [location[0] validateClass:?];
  [location[0] validateClass:@"_UIDatePickerCompactTimeLabel" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [location[0] validateClass:v3 hasInstanceVariable:@"_presentation" withType:"_UIDatePickerOverlayPresentation"];
  [location[0] validateClass:@"_UIDatePickerOverlayPresentation" hasInstanceMethod:@"activeMode" withFullSignature:{"q", 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  v3 = [(_UIDatePickerCompactTimeLabelAccessibility *)self safeUIViewForKey:@"label"];
  accessibilityLabel = [v3 accessibilityLabel];
  MEMORY[0x29EDC9740](v3);

  return accessibilityLabel;
}

- (int64_t)_accessibilityExpandedStatus
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(_UIDatePickerCompactTimeLabelAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Uidatepickerio_0.isa)];
  v3 = [location[0] safeValueForKey:@"_presentation"];
  v4 = [v3 safeIntegerForKey:@"activeMode"];
  MEMORY[0x29EDC9740](v3);
  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  objc_storeStrong(location, 0);
  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  v9[2] = self;
  v9[1] = a2;
  v8 = 0;
  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9[0] = v6;
  [v6 bounds];
  UIAccessibilityConvertFrameToScreenCoordinates(v13, v9[0]);
  AX_CGRectGetCenter();
  v10 = v2;
  v11 = v3;
  objc_storeStrong(v9, 0);
  v4 = v10;
  v5 = v11;
  result.y = v5;
  result.x = v4;
  return result;
}

@end