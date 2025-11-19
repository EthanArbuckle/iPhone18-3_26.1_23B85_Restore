@interface CAMModeAndDeviceCommandAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMModeAndDeviceCommandAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMModeAndDeviceCommand" hasInstanceMethod:@"executeWithContext:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CAMModeAndDeviceCommand" hasInstanceMethod:@"_resolvedGraphConfiguration" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMCaptureGraphConfiguration" hasInstanceMethod:@"videoConfiguration" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMCaptureGraphConfiguration" hasInstanceMethod:@"videoEncodingBehavior" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMCaptureCommandContext" hasInstanceMethod:@"currentCaptureSession" withFullSignature:{"@", 0}];
}

- (void)executeWithContext:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CAMModeAndDeviceCommandAccessibility;
  [(CAMModeAndDeviceCommandAccessibility *)&v12 executeWithContext:v4];
  v5 = [(CAMModeAndDeviceCommandAccessibility *)self safeValueForKey:@"_resolvedGraphConfiguration"];
  v6 = [v5 safeIntegerForKey:@"videoConfiguration"];
  v7 = [v5 safeIntegerForKey:@"videoEncodingBehavior"];
  if (v6 <= 0xE)
  {
    if (((1 << v6) & 0x1420) != 0)
    {
      v8 = v7 != 2;
      goto LABEL_7;
    }

    if (((1 << v6) & 0x6200) != 0)
    {
      v8 = 0;
      goto LABEL_7;
    }
  }

  UIAccessibilityIsVoiceOverRunning();
  v8 = 1;
LABEL_7:
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v9 = +[AXCameraVisionEngine sharedEngine];
    v10 = v9;
    if (v8)
    {
      v11 = [v4 safeValueForKey:@"currentCaptureSession"];
      [v10 setCaptureSession:v11];
    }

    else
    {
      [v9 setCaptureSession:0];
    }
  }
}

@end