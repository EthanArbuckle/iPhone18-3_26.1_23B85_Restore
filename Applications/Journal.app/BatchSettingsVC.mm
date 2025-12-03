@interface BatchSettingsVC
- (_TtC7Journal15BatchSettingsVC)initWithNibName:(id)name bundle:(id)bundle;
- (void)actionAssetTypeActivitySwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeAudioSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeBooksSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeConfettiSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeContactSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeLinkSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeMotionActivitySwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeMultiPinMapSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeMusicSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypePhotosSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypePodcastsSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeRouteSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeVideoSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeVisitSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeWorkoutIconSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetTypeWorkoutRouteSwitchStateDidChangeWithSender:(id)sender;
- (void)actionAssetsNeededSwitchStateDidChangeWithSender:(id)sender;
- (void)actionBatchCountSliderValueDidChangeWithSender:(id)sender;
- (void)actionLastRandomDaysSliderValueDidChangeWithSender:(id)sender;
- (void)actionMaxRangeSliderValueDidChangeWithSender:(id)sender;
- (void)actionMinRangeSliderValueDidChangeWithSender:(id)sender;
- (void)loadView;
@end

@implementation BatchSettingsVC

- (void)loadView
{
  selfCopy = self;
  sub_100406B98();
}

- (void)actionBatchCountSliderValueDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100412590();
}

- (void)actionLastRandomDaysSliderValueDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100412890();
}

- (void)actionAssetsNeededSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040E368(sender);
}

- (void)actionAssetTypePhotosSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040E5A4(sender);
}

- (void)actionAssetTypeMusicSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040E7CC(sender);
}

- (void)actionAssetTypePodcastsSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040E9F4(sender);
}

- (void)actionAssetTypeBooksSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040EC1C(sender);
}

- (void)actionAssetTypeVisitSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040EE44(sender);
}

- (void)actionAssetTypeMultiPinMapSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040F06C(sender);
}

- (void)actionAssetTypeVideoSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040F294(sender);
}

- (void)actionAssetTypeAudioSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040F4BC(sender);
}

- (void)actionAssetTypeActivitySwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040F6E4(sender);
}

- (void)actionAssetTypeRouteSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040F90C(sender);
}

- (void)actionAssetTypeLinkSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040FB34(sender);
}

- (void)actionAssetTypeContactSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040FD5C(sender);
}

- (void)actionAssetTypeWorkoutRouteSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10040FF84(sender);
}

- (void)actionAssetTypeWorkoutIconSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1004101AC(sender);
}

- (void)actionAssetTypeConfettiSwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1004103D4(sender);
}

- (void)actionAssetTypeMotionActivitySwitchStateDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1004105FC(sender);
}

- (void)actionMaxRangeSliderValueDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100410824(sender);
}

- (void)actionMinRangeSliderValueDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100410DA8(sender);
}

- (_TtC7Journal15BatchSettingsVC)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10041132C(v5, v7, bundle);
}

@end