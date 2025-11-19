@interface BatchSettingsVC
- (_TtC7Journal15BatchSettingsVC)initWithNibName:(id)a3 bundle:(id)a4;
- (void)actionAssetTypeActivitySwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeAudioSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeBooksSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeConfettiSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeContactSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeLinkSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeMotionActivitySwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeMultiPinMapSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeMusicSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypePhotosSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypePodcastsSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeRouteSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeVideoSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeVisitSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeWorkoutIconSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetTypeWorkoutRouteSwitchStateDidChangeWithSender:(id)a3;
- (void)actionAssetsNeededSwitchStateDidChangeWithSender:(id)a3;
- (void)actionBatchCountSliderValueDidChangeWithSender:(id)a3;
- (void)actionLastRandomDaysSliderValueDidChangeWithSender:(id)a3;
- (void)actionMaxRangeSliderValueDidChangeWithSender:(id)a3;
- (void)actionMinRangeSliderValueDidChangeWithSender:(id)a3;
- (void)loadView;
@end

@implementation BatchSettingsVC

- (void)loadView
{
  v2 = self;
  sub_100406B98();
}

- (void)actionBatchCountSliderValueDidChangeWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100412590();
}

- (void)actionLastRandomDaysSliderValueDidChangeWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100412890();
}

- (void)actionAssetsNeededSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040E368(a3);
}

- (void)actionAssetTypePhotosSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040E5A4(a3);
}

- (void)actionAssetTypeMusicSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040E7CC(a3);
}

- (void)actionAssetTypePodcastsSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040E9F4(a3);
}

- (void)actionAssetTypeBooksSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040EC1C(a3);
}

- (void)actionAssetTypeVisitSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040EE44(a3);
}

- (void)actionAssetTypeMultiPinMapSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040F06C(a3);
}

- (void)actionAssetTypeVideoSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040F294(a3);
}

- (void)actionAssetTypeAudioSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040F4BC(a3);
}

- (void)actionAssetTypeActivitySwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040F6E4(a3);
}

- (void)actionAssetTypeRouteSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040F90C(a3);
}

- (void)actionAssetTypeLinkSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040FB34(a3);
}

- (void)actionAssetTypeContactSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040FD5C(a3);
}

- (void)actionAssetTypeWorkoutRouteSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10040FF84(a3);
}

- (void)actionAssetTypeWorkoutIconSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1004101AC(a3);
}

- (void)actionAssetTypeConfettiSwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1004103D4(a3);
}

- (void)actionAssetTypeMotionActivitySwitchStateDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1004105FC(a3);
}

- (void)actionMaxRangeSliderValueDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100410824(a3);
}

- (void)actionMinRangeSliderValueDidChangeWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100410DA8(a3);
}

- (_TtC7Journal15BatchSettingsVC)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10041132C(v5, v7, a4);
}

@end