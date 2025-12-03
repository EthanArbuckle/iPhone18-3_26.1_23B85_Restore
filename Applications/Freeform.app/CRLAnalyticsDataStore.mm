@interface CRLAnalyticsDataStore
- (_TtC8Freeform21CRLAnalyticsDataStore)init;
- (void)checkEndToEndEncryptionSupport;
- (void)kvsDidChangeExternally:(id)externally;
@end

@implementation CRLAnalyticsDataStore

- (void)kvsDidChangeExternally:(id)externally
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10069E58C();

  (*(v5 + 8))(v7, v4);
}

- (void)checkEndToEndEncryptionSupport
{
  selfCopy = self;
  sub_10000FAC4();
}

- (_TtC8Freeform21CRLAnalyticsDataStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end