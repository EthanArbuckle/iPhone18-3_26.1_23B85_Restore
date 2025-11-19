@interface CAMShutterButtonAccessibility__ChatKit__CameraKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)accessibilityLabel;
@end

@implementation CAMShutterButtonAccessibility__ChatKit__CameraKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMShutterButton" hasInstanceMethod:@"mode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CKActionMenuView"];
}

- (id)accessibilityLabel
{
  v3 = [(CAMShutterButtonAccessibility__ChatKit__CameraKit *)self accessibilityContainer];
  NSClassFromString(&cfstr_Ckactionmenuvi_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 && [(CAMShutterButtonAccessibility__ChatKit__CameraKit *)self safeIntegerForKey:@"mode"]== 4)
  {
    v5 = accessibilityLocalizedString(@"audio.button.stop.label");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CAMShutterButtonAccessibility__ChatKit__CameraKit;
    v5 = [(CAMShutterButtonAccessibility__ChatKit__CameraKit *)&v7 accessibilityLabel];
  }

  return v5;
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