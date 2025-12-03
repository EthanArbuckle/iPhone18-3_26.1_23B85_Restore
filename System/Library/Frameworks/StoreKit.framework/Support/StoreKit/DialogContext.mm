@interface DialogContext
- (AMSProcessInfo)processInfo;
- (NSString)bundleID;
- (NSURL)bundleURL;
- (SKDialogProtocol)dialogObserver;
- (_TtC9storekitd13DialogContext)initWithBundleID:(id)d bundleURL:(id)l processInfo:(id)info dialogObserver:(id)observer;
- (void)handleEngagementRequest:(AMSEngagementRequest *)request bag:(AMSBagProtocol *)bag hostSceneID:(NSString *)d completionHandler:(id)handler;
- (void)setDialogObserver:(id)observer;
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

- (void)setDialogObserver:(id)observer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10019E384(observer);
}

- (AMSProcessInfo)processInfo
{
  v2 = sub_10019E3D0();

  return v2;
}

- (_TtC9storekitd13DialogContext)initWithBundleID:(id)d bundleURL:(id)l processInfo:(id)info dialogObserver:(id)observer
{
  v8 = type metadata accessor for URL();
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  infoCopy = info;
  swift_unknownObjectRetain();
  return sub_10019E3E0(v11, v13, v10, infoCopy, observer);
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

  sub_100224DF8(&unk_1002F8020, v11);
}

@end