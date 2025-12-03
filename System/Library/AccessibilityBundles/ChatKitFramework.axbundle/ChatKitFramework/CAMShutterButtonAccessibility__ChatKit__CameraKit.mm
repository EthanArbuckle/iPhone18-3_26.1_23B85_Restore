@interface CAMShutterButtonAccessibility__ChatKit__CameraKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
@end

@implementation CAMShutterButtonAccessibility__ChatKit__CameraKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMShutterButton" hasInstanceMethod:@"mode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CKActionMenuView"];
}

- (id)accessibilityLabel
{
  accessibilityContainer = [(CAMShutterButtonAccessibility__ChatKit__CameraKit *)self accessibilityContainer];
  NSClassFromString(&cfstr_Ckactionmenuvi_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [(CAMShutterButtonAccessibility__ChatKit__CameraKit *)self safeIntegerForKey:@"mode"]== 4)
  {
    accessibilityLabel = accessibilityLocalizedString(@"audio.button.stop.label");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CAMShutterButtonAccessibility__ChatKit__CameraKit;
    accessibilityLabel = [(CAMShutterButtonAccessibility__ChatKit__CameraKit *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (BOOL)accessibilityActivate
{
  if (([(CAMShutterButtonAccessibility__ChatKit__CameraKit *)self _accessibilityBoolValueForKey:@"AXShouldBypassAXActivate"]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CAMShutterButtonAccessibility__ChatKit__CameraKit;
  return [(CAMShutterButtonAccessibility__ChatKit__CameraKit *)&v4 accessibilityActivate];
}

@end