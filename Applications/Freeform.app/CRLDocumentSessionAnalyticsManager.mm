@interface CRLDocumentSessionAnalyticsManager
- (_TtC8Freeform34CRLDocumentSessionAnalyticsManager)init;
- (void)beginSession;
- (void)beginSession:(id)session;
- (void)didSetDocumentToMode:(id)mode fromMode:(id)fromMode animated:(BOOL)animated;
- (void)endSession:(id)session;
- (void)endSessionClosingDocument:(BOOL)document;
@end

@implementation CRLDocumentSessionAnalyticsManager

- (void)beginSession
{
  selfCopy = self;
  CRLDocumentSessionAnalyticsManager.beginSession()();
}

- (void)endSessionClosingDocument:(BOOL)document
{
  selfCopy = self;
  CRLDocumentSessionAnalyticsManager.endSession(isClosingDocument:)(document);
}

- (void)beginSession:(id)session
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CRLDocumentSessionAnalyticsManager.beginSession()();

  (*(v5 + 8))(v7, v4);
}

- (void)endSession:(id)session
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CRLDocumentSessionAnalyticsManager.endSession(isClosingDocument:)(0);

  (*(v5 + 8))(v7, v4);
}

- (_TtC8Freeform34CRLDocumentSessionAnalyticsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didSetDocumentToMode:(id)mode fromMode:(id)fromMode animated:(BOOL)animated
{
  modeCopy = mode;
  fromModeCopy = fromMode;
  selfCopy = self;
  _s8Freeform34CRLDocumentSessionAnalyticsManagerC18didSetDocumentMode_4from8animatedySo014CRLiOSDocumentI0C_AHSbtF_0(modeCopy, fromModeCopy);
}

@end