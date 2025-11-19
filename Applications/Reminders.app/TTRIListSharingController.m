@interface TTRIListSharingController
- (_TtC9Reminders25TTRIListSharingController)init;
- (id)itemThumbnailDataForCloudSharingController:(id)a3;
- (id)itemTitleForCloudSharingController:(id)a3;
- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)a3;
- (void)_cloudSharingControllerDidModifySecondarySwitch:(BOOL)a3;
- (void)cloudSharingController:(id)a3 failedToSaveShareWithError:(id)a4;
- (void)cloudSharingControllerDidSaveShare:(id)a3;
- (void)cloudSharingControllerDidStopSharing:(id)a3;
@end

@implementation TTRIListSharingController

- (_TtC9Reminders25TTRIListSharingController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)cloudSharingController:(id)a3 failedToSaveShareWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1005AD2D4(v8);
}

- (void)cloudSharingControllerDidSaveShare:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005ACB28(v4, sub_1005ACA90, &unk_10072F5E8, &selRef_updateShare_accountID_queue_completion_);
}

- (void)cloudSharingControllerDidStopSharing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1005ACB28(v4, sub_1005ACD88, &unk_10072F5C0, &selRef_stopShare_accountID_queue_completion_);
}

- (id)itemThumbnailDataForCloudSharingController:(id)a3
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

- (id)itemTitleForCloudSharingController:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list);
  v4 = self;
  v5 = [v3 displayName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (void)_cloudSharingControllerDidModifyPrimarySwitch:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  v4 = sub_1005AC7AC();
  sub_1005AC874(v4 & 0xFFFFFFFFFFFFFFFELL | !v3);
}

- (void)_cloudSharingControllerDidModifySecondarySwitch:(BOOL)a3
{
  v3 = a3;
  v6 = self;
  v4 = sub_1005AC7AC() & 0xFFFFFFFFFFFFFFFDLL;
  v5 = 2;
  if (v3)
  {
    v5 = 0;
  }

  sub_1005AC874(v4 | v5);
}

@end