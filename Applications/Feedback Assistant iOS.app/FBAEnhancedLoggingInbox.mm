@interface FBAEnhancedLoggingInbox
- (NSString)displayText;
- (_TtC18Feedback_Assistant23FBAEnhancedLoggingInbox)init;
- (id)inboxItemsForTeam:(id)a3 withSortDescriptors:(id)a4;
- (unint64_t)unreadCountForTeam:(id)a3;
@end

@implementation FBAEnhancedLoggingInbox

- (NSString)displayText
{
  v2 = [objc_opt_self() mainBundle];
  v8._object = 0x80000001000CAD40;
  v3._object = 0x80000001000CAD00;
  v4._object = 0x80000001000CAD20;
  v8._countAndFlagsBits = 0xD000000000000022;
  v3._countAndFlagsBits = 0xD000000000000010;
  v4._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v8);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (unint64_t)unreadCountForTeam:(id)a3
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 loggingSessionCount];

  if ((v4 & 0x8000000000000000) == 0)
  {
    return v4;
  }

  __break(1u);
  return result;
}

- (id)inboxItemsForTeam:(id)a3 withSortDescriptors:(id)a4
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 items];

  sub_10004D424();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100076C04(v6);

  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (_TtC18Feedback_Assistant23FBAEnhancedLoggingInbox)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBAEnhancedLoggingInbox();
  return [(FBAEnhancedLoggingInbox *)&v3 init];
}

@end