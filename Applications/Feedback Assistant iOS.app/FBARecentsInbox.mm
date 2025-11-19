@interface FBARecentsInbox
- (NSString)displayText;
- (id)predicateForTeam:(id)a3;
- (unint64_t)unreadCountForTeam:(id)a3;
@end

@implementation FBARecentsInbox

- (NSString)displayText
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = [objc_opt_self() mainBundle];
  v12._object = 0xE000000000000000;
  v6._object = 0x80000001000CE490;
  v6._countAndFlagsBits = 0xD000000000000016;
  v7.value._countAndFlagsBits = v2;
  v7.value._object = v4;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v12);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (unint64_t)unreadCountForTeam:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = sub_1000858FC(a3);

  return v7;
}

- (id)predicateForTeam:(id)a3
{
  v3 = sub_1000866B4();

  return v3;
}

@end