@interface DialogContext
- (AMSProcessInfo)processInfo;
- (NSString)bundleID;
- (NSURL)bundleURL;
- (SKDialogProtocol)dialogObserver;
- (_TtC9storekitd13DialogContext)initWithBundleID:(id)a3 bundleURL:(id)a4 processInfo:(id)a5 dialogObserver:(id)a6;
- (void)handleEngagementRequest:(AMSEngagementRequest *)a3 bag:(AMSBagProtocol *)a4 hostSceneID:(NSString *)a5 completionHandler:(id)a6;
- (void)setDialogObserver:(id)a3;
@end

@implementation DialogContext

- (NSString)bundleID
{
  sub_10019E150();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSURL)bundleURL
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10019E270(v5);
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  (*(v3 + 8))(v5, v2);

  return v8;
}

- (SKDialogProtocol)dialogObserver
{
  v2 = sub_10019E314();

  return v2;
}

- (void)setDialogObserver:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_10019E384(a3);
}

- (AMSProcessInfo)processInfo
{
  v2 = sub_10019E3D0();

  return v2;
}

- (_TtC9storekitd13DialogContext)initWithBundleID:(id)a3 bundleURL:(id)a4 processInfo:(id)a5 dialogObserver:(id)a6
{
  v8 = type metadata accessor for URL();
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a5;
  swift_unknownObjectRetain();
  return sub_10019E3E0(v11, v13, v10, v14, a6);
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

  sub_100224DF8(&unk_1002F8020, v11);
}

@end