@interface DialogContext
- (AMSProcessInfo)processInfo;
- (NSString)bundleID;
- (NSURL)bundleURL;
- (SKDialogProtocol)dialogObserver;
- (_TtC22StoreKitUISceneService13DialogContext)initWithBundleID:(id)a3 bundleURL:(id)a4 processInfo:(id)a5 dialogObserver:(id)a6;
- (void)handleEngagementRequest:(AMSEngagementRequest *)a3 bag:(AMSBagProtocol *)a4 hostSceneID:(NSString *)a5 completionHandler:(id)a6;
- (void)setDialogObserver:(id)a3;
@end

@implementation DialogContext

- (NSString)bundleID
{
  sub_10001940C();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSURL)bundleURL
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001952C(v6);
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  (*(v3 + 8))(v6, v2);

  return v9;
}

- (SKDialogProtocol)dialogObserver
{
  v2 = sub_1000195D0();

  return v2;
}

- (void)setDialogObserver:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100019640(a3);
}

- (AMSProcessInfo)processInfo
{
  v2 = sub_10001968C();

  return v2;
}

- (_TtC22StoreKitUISceneService13DialogContext)initWithBundleID:(id)a3 bundleURL:(id)a4 processInfo:(id)a5 dialogObserver:(id)a6
{
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a5;
  swift_unknownObjectRetain();
  return sub_10001969C(v12, v14, v11, v15, a6);
}

- (void)handleEngagementRequest:(AMSEngagementRequest *)a3 bag:(AMSBagProtocol *)a4 hostSceneID:(NSString *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;

  sub_10003A608(&unk_100094CD0, v11);
}

@end