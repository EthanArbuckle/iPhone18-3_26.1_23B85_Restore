@interface BKAccelerometerInterfaceAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5;
@end

@implementation BKAccelerometerInterfaceAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = a3;
  v5 = [v3 stringWithUTF8String:"^^{__IOHIDEvent}"];
  v7 = [v3 stringWithFormat:@"N%@", v5];

  v6 = v7;
  [v4 validateClass:@"BKAccelerometerInterface" hasInstanceMethod:@"processEvent:sender:dispatcher:" withFullSignature:{"q", objc_msgSend(v7, "UTF8String"), "@", "@", 0}];
  [v4 validateClass:@"BKAccelerometerInterface" hasInstanceMethod:@"orientationManager: deviceOrientationMayHaveChanged: changeSource: isDeviceOrientationLocked:" withFullSignature:{"v", "@", "q", "q", "B", 0}];
}

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 dispatcher:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = +[AXBAccessibilityManager sharedManager];
  v11 = [v10 accelerometerDisabled];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = BKAccelerometerInterfaceAccessibility;
    v12 = [(BKAccelerometerInterfaceAccessibility *)&v14 processEvent:a3 sender:v8 dispatcher:v9];
  }

  return v12;
}

@end