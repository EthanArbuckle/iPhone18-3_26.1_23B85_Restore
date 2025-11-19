@interface CRLDocumentSessionAnalyticsManager
- (_TtC8Freeform34CRLDocumentSessionAnalyticsManager)init;
- (void)beginSession;
- (void)beginSession:(id)a3;
- (void)didSetDocumentToMode:(id)a3 fromMode:(id)a4 animated:(BOOL)a5;
- (void)endSession:(id)a3;
- (void)endSessionClosingDocument:(BOOL)a3;
@end

@implementation CRLDocumentSessionAnalyticsManager

- (void)beginSession
{
  v2 = self;
  CRLDocumentSessionAnalyticsManager.beginSession()();
}

- (void)endSessionClosingDocument:(BOOL)a3
{
  v4 = self;
  CRLDocumentSessionAnalyticsManager.endSession(isClosingDocument:)(a3);
}

- (void)beginSession:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  CRLDocumentSessionAnalyticsManager.beginSession()();

  (*(v5 + 8))(v7, v4);
}

- (void)endSession:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  CRLDocumentSessionAnalyticsManager.endSession(isClosingDocument:)(0);

  (*(v5 + 8))(v7, v4);
}

- (_TtC8Freeform34CRLDocumentSessionAnalyticsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didSetDocumentToMode:(id)a3 fromMode:(id)a4 animated:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  _s8Freeform34CRLDocumentSessionAnalyticsManagerC18didSetDocumentMode_4from8animatedySo014CRLiOSDocumentI0C_AHSbtF_0(v7, v8);
}

@end