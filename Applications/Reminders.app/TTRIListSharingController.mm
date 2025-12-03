@interface TTRIListSharingController
- (_TtC9Reminders25TTRIListSharingController)init;
- (id)itemThumbnailDataForCloudSharingController:(id)controller;
- (id)itemTitleForCloudSharingController:(id)controller;
- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)switch;
- (void)_cloudSharingControllerDidModifySecondarySwitch:(BOOL)switch;
- (void)cloudSharingController:(id)controller failedToSaveShareWithError:(id)error;
- (void)cloudSharingControllerDidSaveShare:(id)share;
- (void)cloudSharingControllerDidStopSharing:(id)sharing;
@end

@implementation TTRIListSharingController

- (_TtC9Reminders25TTRIListSharingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cloudSharingController:(id)controller failedToSaveShareWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_1005AD2D4(errorCopy);
}

- (void)cloudSharingControllerDidSaveShare:(id)share
{
  shareCopy = share;
  selfCopy = self;
  sub_1005ACB28(shareCopy, sub_1005ACA90, &unk_10072F5E8, &selRef_updateShare_accountID_queue_completion_);
}

- (void)cloudSharingControllerDidStopSharing:(id)sharing
{
  sharingCopy = sharing;
  selfCopy = self;
  sub_1005ACB28(sharingCopy, sub_1005ACD88, &unk_10072F5C0, &selRef_stopShare_accountID_queue_completion_);
}

- (id)itemThumbnailDataForCloudSharingController:(id)controller
{
  v3 = sub_1005AD498();
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1004E836C(v6, v7);
    v5 = isa;
  }

  return v5;
}

- (id)itemTitleForCloudSharingController:(id)controller
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list);
  selfCopy = self;
  displayName = [v3 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)switch
{
  switchCopy = switch;
  selfCopy = self;
  v4 = sub_1005AC7AC();
  sub_1005AC874(v4 & 0xFFFFFFFFFFFFFFFELL | !switchCopy);
}

- (void)_cloudSharingControllerDidModifySecondarySwitch:(BOOL)switch
{
  switchCopy = switch;
  selfCopy = self;
  v4 = sub_1005AC7AC() & 0xFFFFFFFFFFFFFFFDLL;
  v5 = 2;
  if (switchCopy)
  {
    v5 = 0;
  }

  sub_1005AC874(v4 | v5);
}

@end