@interface ShareSheetRemoteSceneSession
- (_TtC16SharingUIService28ShareSheetRemoteSceneSession)init;
- (_UIHostedWindowScene)hostedWindowScene;
- (void)activityContentViewControllerDidUpdateDataSource:(id)a3;
- (void)activityContentViewControllerDidUpdateHeaderMetadata:(id)a3;
- (void)addParticipantsViewController:(id)a3 completedSharingWithShareURL:(id)a4 ckShare:(id)a5;
- (void)addParticipantsViewController:(id)a3 failedToSaveShareWithError:(id)a4;
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

- (void)activityContentViewControllerDidUpdateDataSource:(id)a3
{
  v4 = objc_allocWithZone(SHSheetAction);
  v10 = self;
  v5 = [v4 initWithType:10];
  v6 = *(&v10->super.isa + OBJC_IVAR____TtC16SharingUIService28ShareSheetRemoteSceneSession_windowScene);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = v6;
    [v8 sendAction:v5];
  }
}

- (void)activityContentViewControllerDidUpdateHeaderMetadata:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000080A8(v4);
}

- (void)addParticipantsViewController:(id)a3 failedToSaveShareWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_100009EBC(v8);
}

- (void)addParticipantsViewController:(id)a3 completedSharingWithShareURL:(id)a4 ckShare:(id)a5
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a5;
  v15 = self;
  sub_10000A220(v12, v14);

  (*(v9 + 8))(v12, v8);
}

@end