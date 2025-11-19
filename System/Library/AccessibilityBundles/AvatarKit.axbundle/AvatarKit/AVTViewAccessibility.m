@interface AVTViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation AVTViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVTView" hasInstanceMethod:@"faceIsTracked" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AVTView" hasInstanceMethod:@"enableFaceTracking" withFullSignature:{"B", 0}];
  [v3 validateClass:@"AVTView" hasInstanceVariable:@"_faceTrackingPaused" withType:"B"];
}

- (id)accessibilityValue
{
  v3 = [(AVTViewAccessibility *)self accessibilityUserDefinedValue];
  if ([(AVTViewAccessibility *)self safeBoolForKey:@"enableFaceTracking"]&& ([(AVTViewAccessibility *)self safeBoolForKey:@"_faceTrackingPaused"]& 1) == 0)
  {
    if ([(AVTViewAccessibility *)self safeBoolForKey:@"faceIsTracked"])
    {
      v5 = @"tracking.enabled";
    }

    else
    {
      v5 = @"tracking.disabled";
    }

    v7 = accessibilityAvatarKitLocalizedString(v5);
    v4 = __UIAXStringForVariables();
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

@end