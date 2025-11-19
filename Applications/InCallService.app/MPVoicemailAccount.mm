@interface MPVoicemailAccount
- (BOOL)isEqual:(id)a3;
- (MPVoicemailAccount)initWithUuid:(id)a3 callVoicemailSupported:(BOOL)a4 subscribed:(BOOL)a5 greetingChangeSupported:(BOOL)a6 provisioned:(BOOL)a7 hasHandle:(BOOL)a8 accountDescription:(id)a9;
- (NSString)accountDescription;
- (NSString)description;
- (NSUUID)UUID;
@end

@implementation MPVoicemailAccount

- (NSUUID)UUID
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015E598(v6);
  v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);

  return v7.super.isa;
}

- (NSString)accountDescription
{
  sub_10015E76C();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MPVoicemailAccount)initWithUuid:(id)a3 callVoicemailSupported:(BOOL)a4 subscribed:(BOOL)a5 greetingChangeSupported:(BOOL)a6 provisioned:(BOOL)a7 hasHandle:(BOOL)a8 accountDescription:(id)a9
{
  v14 = type metadata accessor for UUID();
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (a9)
  {
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  return sub_10015E7A8(v17, a4, a5, a6, a7, a8, v18, v20);
}

- (NSString)description
{
  v2 = self;
  sub_10015F9A4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_10015FCB0(v8);

  sub_10015E258(v8);
  return v6 & 1;
}

@end