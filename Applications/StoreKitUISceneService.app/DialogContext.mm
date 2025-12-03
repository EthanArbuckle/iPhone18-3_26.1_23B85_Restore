@interface DialogContext
- (AMSProcessInfo)processInfo;
- (NSString)bundleID;
- (NSURL)bundleURL;
- (SKDialogProtocol)dialogObserver;
- (_TtC22StoreKitUISceneService13DialogContext)initWithBundleID:(id)d bundleURL:(id)l processInfo:(id)info dialogObserver:(id)observer;
- (void)handleEngagementRequest:(AMSEngagementRequest *)request bag:(AMSBagProtocol *)bag hostSceneID:(NSString *)d completionHandler:(id)handler;
- (void)setDialogObserver:(id)observer;
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

- (void)setDialogObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100019640(observer);
}

- (AMSProcessInfo)processInfo
{
  v2 = sub_10001968C();

  return v2;
}

- (_TtC22StoreKitUISceneService13DialogContext)initWithBundleID:(id)d bundleURL:(id)l processInfo:(id)info dialogObserver:(id)observer
{
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  infoCopy = info;
  swift_unknownObjectRetain();
  return sub_10001969C(v12, v14, v11, infoCopy, observer);
}

- (void)handleEngagementRequest:(AMSEngagementRequest *)request bag:(AMSBagProtocol *)bag hostSceneID:(NSString *)d completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = bag;
  v11[4] = d;
  v11[5] = v10;
  v11[6] = self;
  requestCopy = request;
  swift_unknownObjectRetain();
  dCopy = d;
  selfCopy = self;

  sub_10003A608(&unk_100094CD0, v11);
}

@end