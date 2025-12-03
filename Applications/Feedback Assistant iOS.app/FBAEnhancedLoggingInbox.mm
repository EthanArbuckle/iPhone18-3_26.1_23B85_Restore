@interface FBAEnhancedLoggingInbox
- (NSString)displayText;
- (_TtC18Feedback_Assistant23FBAEnhancedLoggingInbox)init;
- (id)inboxItemsForTeam:(id)team withSortDescriptors:(id)descriptors;
- (unint64_t)unreadCountForTeam:(id)team;
@end

@implementation FBAEnhancedLoggingInbox

- (NSString)displayText
{
  mainBundle = [objc_opt_self() mainBundle];
  v8._object = 0x80000001000CAD40;
  v3._object = 0x80000001000CAD00;
  v4._object = 0x80000001000CAD20;
  v8._countAndFlagsBits = 0xD000000000000022;
  v3._countAndFlagsBits = 0xD000000000000010;
  v4._countAndFlagsBits = 0xD000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, mainBundle, v4, v8);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (unint64_t)unreadCountForTeam:(id)team
{
  sharedInstance = [objc_opt_self() sharedInstance];
  loggingSessionCount = [sharedInstance loggingSessionCount];

  if ((loggingSessionCount & 0x8000000000000000) == 0)
  {
    return loggingSessionCount;
  }

  __break(1u);
  return result;
}

- (id)inboxItemsForTeam:(id)team withSortDescriptors:(id)descriptors
{
  sharedInstance = [objc_opt_self() sharedInstance];
  items = [sharedInstance items];

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