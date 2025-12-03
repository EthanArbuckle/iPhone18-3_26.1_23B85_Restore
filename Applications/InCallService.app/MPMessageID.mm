@interface MPMessageID
- (BOOL)isEqual:(id)equal;
- (MPMessageID)initWithUuid:(id)uuid;
- (NSUUID)messageUUID;
- (int64_t)hash;
@end

@implementation MPMessageID

- (NSUUID)messageUUID
{
  v2 = sub_10014EA98(&qword_1003AAB40);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v9 - v4;
  sub_1001726A0(&v9 - v4);
  v6 = type metadata accessor for UUID();
  isa = 0;
  if (sub_100006AC0(v5, 1, v6) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(*(v6 - 8) + 8))(v5, v6);
  }

  return isa;
}

- (MPMessageID)initWithUuid:(id)uuid
{
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1001728B8(v6);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_100172E4C();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100172E98(v8);

  sub_100008360(v8, &unk_1003AAF50);
  return v6 & 1;
}

@end