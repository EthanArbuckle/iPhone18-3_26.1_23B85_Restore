@interface CRLAnalyticsActiveUseManager
+ (_TtC8Freeform28CRLAnalyticsActiveUseManager)sharedManager;
- (void)handleAppForegrounded;
- (void)handleConflictOccurred:(id)occurred;
- (void)handleQuotaViolationOccurred;
@end

@implementation CRLAnalyticsActiveUseManager

- (void)handleAppForegrounded
{
  selfCopy = self;
  sub_10073C0D8();
}

+ (_TtC8Freeform28CRLAnalyticsActiveUseManager)sharedManager
{
  if (qword_1019F1518 != -1)
  {
    swift_once();
  }

  v3 = static CRLAnalyticsActiveUseManager.shared;

  return v3;
}

- (void)handleConflictOccurred:(id)occurred
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10073BBF4();

  (*(v5 + 8))(v7, v4);
}

- (void)handleQuotaViolationOccurred
{
  selfCopy = self;
  sub_10073BF7C();
}

@end