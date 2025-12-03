@interface CRLSEExtensionContextManager
+ (NSString)defaultImageFileName;
- (NSOperationQueue)presentedItemOperationQueue;
- (NSURL)presentedItemURL;
- (_TtC8Freeform28CRLSEExtensionContextManager)init;
- (void)setPresentedItemOperationQueue:(id)queue;
- (void)setPresentedItemURL:(id)l;
@end

@implementation CRLSEExtensionContextManager

+ (NSString)defaultImageFileName
{
  mainBundle = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [mainBundle localizedStringForKey:v3 value:v4 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = String._bridgeToObjectiveC()();

  return v6;
}

- (NSURL)presentedItemURL
{
  v3 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC8Freeform28CRLSEExtensionContextManager_presentedItemURL;
  swift_beginAccess();
  sub_10001ACF0(self + v6, v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (void)setPresentedItemURL:(id)l
{
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (l)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC8Freeform28CRLSEExtensionContextManager_presentedItemURL;
  swift_beginAccess();
  selfCopy = self;
  sub_10084E778(v7, self + v10);
  swift_endAccess();
}

- (NSOperationQueue)presentedItemOperationQueue
{
  selfCopy = self;
  v3 = sub_10084E378();

  return v3;
}

- (void)setPresentedItemOperationQueue:(id)queue
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform28CRLSEExtensionContextManager____lazy_storage___presentedItemOperationQueue);
  *(self + OBJC_IVAR____TtC8Freeform28CRLSEExtensionContextManager____lazy_storage___presentedItemOperationQueue) = queue;
  queueCopy = queue;
}

- (_TtC8Freeform28CRLSEExtensionContextManager)init
{
  v3 = OBJC_IVAR____TtC8Freeform28CRLSEExtensionContextManager_containerURL;
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);
  v5(self + v3, 1, 1, v4);
  v5(self + OBJC_IVAR____TtC8Freeform28CRLSEExtensionContextManager_importDirectoryURL, 1, 1, v4);
  v5(self + OBJC_IVAR____TtC8Freeform28CRLSEExtensionContextManager_presentedItemURL, 1, 1, v4);
  *(self + OBJC_IVAR____TtC8Freeform28CRLSEExtensionContextManager____lazy_storage___presentedItemOperationQueue) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLSEExtensionContextManager();
  return [(CRLSEExtensionContextManager *)&v7 init];
}

@end