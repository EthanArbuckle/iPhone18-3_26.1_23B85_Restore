@interface AXSettings.SwitchControl
- (BOOL)switchControlEyeTrackingFaceGuidanceEnabled;
- (BOOL)switchControlLongPressEnabled;
- (int64_t)switchControlScanningStyle;
- (void)setSwitchControlEyeTrackingFaceGuidanceEnabled:(BOOL)a3;
- (void)setSwitchControlLongPressEnabled:(BOOL)a3;
- (void)setSwitchControlScanningStyle:(int64_t)a3;
@end

@implementation AXSettings.SwitchControl

- (int64_t)switchControlScanningStyle
{
  v2 = self;
  v3 = AXSettings.SwitchControl.scanningStyle.getter();

  return v3;
}

- (void)setSwitchControlScanningStyle:(int64_t)a3
{
  v4 = self;
  AXSettings.SwitchControl.scanningStyle.setter(a3);
}

- (BOOL)switchControlLongPressEnabled
{
  v2 = self;
  v3 = AXSettings.SwitchControl.longPressEnabled.getter();

  return v3 & 1;
}

- (void)setSwitchControlLongPressEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.SwitchControl.longPressEnabled.setter(a3);
}

- (BOOL)switchControlEyeTrackingFaceGuidanceEnabled
{
  v2 = self;
  v3 = AXSettings.SwitchControl.showFaceGuidance.getter();

  return v3 & 1;
}

- (void)setSwitchControlEyeTrackingFaceGuidanceEnabled:(BOOL)a3
{
  v4 = self;
  AXSettings.SwitchControl.showFaceGuidance.setter(a3);
}

@end