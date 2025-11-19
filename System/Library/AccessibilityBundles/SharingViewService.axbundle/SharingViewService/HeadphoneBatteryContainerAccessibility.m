@interface HeadphoneBatteryContainerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityOverridesInvalidFrames;
- (CGRect)accessibilityFrame;
@end

@implementation HeadphoneBatteryContainerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SharingViewService.HeadphoneBatteryContainer"];
  [v3 validateClass:@"SharingViewService.HeadphoneBatteryContainer" isKindOfClass:@"UIView"];
}

- (BOOL)_accessibilityOverridesInvalidFrames
{
  v7.receiver = self;
  v7.super_class = HeadphoneBatteryContainerAccessibility;
  [(HeadphoneBatteryContainerAccessibility *)&v7 accessibilityFrame];
  result = 1;
  if (fabs(v3) >= 0.001 && fabs(v4) >= 0.001 && v3 > 0.0 && v4 > 0.0)
  {
    v6.receiver = self;
    v6.super_class = HeadphoneBatteryContainerAccessibility;
    return [(HeadphoneBatteryContainerAccessibility *)&v6 _accessibilityOverridesInvalidFrames];
  }

  return result;
}

- (CGRect)accessibilityFrame
{
  v19.receiver = self;
  v19.super_class = HeadphoneBatteryContainerAccessibility;
  [(HeadphoneBatteryContainerAccessibility *)&v19 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  if (fabs(v2) < 0.001 || fabs(v3) < 0.001 || v2 <= 0.0 || v3 <= 0.0)
  {
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    v11 = [v10 superview];
    v12 = v11;
    if (v11)
    {
      [v11 accessibilityFrame];
      v5 = v13;
      [v12 accessibilityFrame];
      v8 = v14;
    }
  }

  v15 = v5;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

@end