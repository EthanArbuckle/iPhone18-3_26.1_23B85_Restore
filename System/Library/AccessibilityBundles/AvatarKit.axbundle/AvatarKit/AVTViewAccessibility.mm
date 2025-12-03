@interface AVTViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation AVTViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTView" hasInstanceMethod:@"faceIsTracked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AVTView" hasInstanceMethod:@"enableFaceTracking" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"AVTView" hasInstanceVariable:@"_faceTrackingPaused" withType:"B"];
}

- (id)accessibilityValue
{
  accessibilityUserDefinedValue = [(AVTViewAccessibility *)self accessibilityUserDefinedValue];
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
    v4 = accessibilityUserDefinedValue;
  }

  return v4;
}

@end