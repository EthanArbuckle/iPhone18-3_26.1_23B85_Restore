@interface AXSettings.SwitchControl
- (BOOL)switchControlEyeTrackingFaceGuidanceEnabled;
- (BOOL)switchControlLongPressEnabled;
- (int64_t)switchControlScanningStyle;
- (void)setSwitchControlEyeTrackingFaceGuidanceEnabled:(BOOL)enabled;
- (void)setSwitchControlLongPressEnabled:(BOOL)enabled;
- (void)setSwitchControlScanningStyle:(int64_t)style;
@end

@implementation AXSettings.SwitchControl

- (int64_t)switchControlScanningStyle
{
  selfCopy = self;
  v3 = AXSettings.SwitchControl.scanningStyle.getter();

  return v3;
}

- (void)setSwitchControlScanningStyle:(int64_t)style
{
  selfCopy = self;
  AXSettings.SwitchControl.scanningStyle.setter(style);
}

- (BOOL)switchControlLongPressEnabled
{
  selfCopy = self;
  v3 = AXSettings.SwitchControl.longPressEnabled.getter();

  return v3 & 1;
}

- (void)setSwitchControlLongPressEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.SwitchControl.longPressEnabled.setter(enabled);
}

- (BOOL)switchControlEyeTrackingFaceGuidanceEnabled
{
  selfCopy = self;
  v3 = AXSettings.SwitchControl.showFaceGuidance.getter();

  return v3 & 1;
}

- (void)setSwitchControlEyeTrackingFaceGuidanceEnabled:(BOOL)enabled
{
  selfCopy = self;
  AXSettings.SwitchControl.showFaceGuidance.setter(enabled);
}

@end