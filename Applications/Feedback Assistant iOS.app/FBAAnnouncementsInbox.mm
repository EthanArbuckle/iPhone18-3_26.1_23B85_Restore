@interface FBAAnnouncementsInbox
- (NSString)displayText;
- (id)predicateForTeam:(id)team;
- (unint64_t)unreadCountForTeam:(id)team;
@end

@implementation FBAAnnouncementsInbox

- (NSString)displayText
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  mainBundle = [objc_opt_self() mainBundle];
  v12._object = 0xE000000000000000;
  v6._object = 0x80000001000CE410;
  v6._countAndFlagsBits = 0xD000000000000014;
  v7.value._countAndFlagsBits = v2;
  v7.value._object = v4;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, mainBundle, v8, v12);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (unint64_t)unreadCountForTeam:(id)team
{
  teamCopy = team;
  selfCopy = self;
  v7 = sub_10008615C(team);

  return v7;
}

- (id)predicateForTeam:(id)team
{
  sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000C29F0;
  *(v3 + 56) = &type metadata for UInt;
  *(v3 + 32) = 2;
  v4 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [objc_opt_self() predicateWithFormat:v4 argumentArray:isa];

  return v6;
}

@end