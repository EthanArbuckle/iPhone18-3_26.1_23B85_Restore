@interface ShareSheetRemoteSceneSession
- (_TtC16SharingUIService28ShareSheetRemoteSceneSession)init;
- (_UIHostedWindowScene)hostedWindowScene;
- (void)activityContentViewControllerDidUpdateDataSource:(id)source;
- (void)activityContentViewControllerDidUpdateHeaderMetadata:(id)metadata;
- (void)addParticipantsViewController:(id)controller completedSharingWithShareURL:(id)l ckShare:(id)share;
- (void)addParticipantsViewController:(id)controller failedToSaveShareWithError:(id)error;
@end

@implementation ShareSheetRemoteSceneSession

- (_UIHostedWindowScene)hostedWindowScene
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    v3 = v4;
  }

  return v3;
}

- (_TtC16SharingUIService28ShareSheetRemoteSceneSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)activityContentViewControllerDidUpdateDataSource:(id)source
{
  v4 = objc_allocWithZone(SHSheetAction);
  selfCopy = self;
  v5 = [v4 initWithType:10];
  v6 = *(&selfCopy->super.isa + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    [v8 sendAction:v5];
  }
}

- (void)activityContentViewControllerDidUpdateHeaderMetadata:(id)metadata
{
  metadataCopy = metadata;
  selfCopy = self;
  sub_1000080A8(metadataCopy);
}

- (void)addParticipantsViewController:(id)controller failedToSaveShareWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  sub_100009EBC(errorCopy);
}

- (void)addParticipantsViewController:(id)controller completedSharingWithShareURL:(id)l ckShare:(id)share
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  shareCopy = share;
  selfCopy = self;
  sub_10000A220(v12, shareCopy);

  (*(v9 + 8))(v12, v8);
}

@end