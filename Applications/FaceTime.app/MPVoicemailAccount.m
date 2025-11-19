@interface MPVoicemailAccount
- (BOOL)isEqual:(id)a3;
- (MPVoicemailAccount)init;
- (MPVoicemailAccount)initWithUuid:(id)a3 callVoicemailSupported:(BOOL)a4 subscribed:(BOOL)a5 greetingChangeSupported:(BOOL)a6 provisioned:(BOOL)a7 hasHandle:(BOOL)a8 accountDescription:(id)a9;
- (MPVoicemailAccount)initWithVmAccount:(id)a3 callVoicemailSupported:(BOOL)a4 subscribed:(BOOL)a5 greetingChangeSupported:(BOOL)a6;
- (NSString)accountDescription;
- (NSString)description;
- (NSUUID)UUID;
@end

@implementation MPVoicemailAccount

- (NSUUID)UUID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___MPVoicemailAccount_uuid, v3);
  v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

- (NSString)accountDescription
{
  if (*(self + OBJC_IVAR___MPVoicemailAccount_accountDescription + 8))
  {

    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (MPVoicemailAccount)initWithUuid:(id)a3 callVoicemailSupported:(BOOL)a4 subscribed:(BOOL)a5 greetingChangeSupported:(BOOL)a6 provisioned:(BOOL)a7 hasHandle:(BOOL)a8 accountDescription:(id)a9
{
  v26 = a7;
  v27 = a8;
  v13 = a9;
  ObjectType = swift_getObjectType();
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (a9)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  (*(v16 + 16))(self + OBJC_IVAR___MPVoicemailAccount_uuid, v18, v15);
  *(self + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported) = a4;
  *(self + OBJC_IVAR___MPVoicemailAccount_subscribed) = a5;
  *(self + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported) = a6;
  v21 = v27;
  *(self + OBJC_IVAR___MPVoicemailAccount_provisioned) = v26;
  *(self + OBJC_IVAR___MPVoicemailAccount_hasHandle) = v21;
  v22 = (self + OBJC_IVAR___MPVoicemailAccount_accountDescription);
  *v22 = v13;
  v22[1] = v20;
  v28.receiver = self;
  v28.super_class = ObjectType;
  v23 = [(MPVoicemailAccount *)&v28 init];
  (*(v16 + 8))(v18, v15);
  return v23;
}

- (MPVoicemailAccount)initWithVmAccount:(id)a3 callVoicemailSupported:(BOOL)a4 subscribed:(BOOL)a5 greetingChangeSupported:(BOOL)a6
{
  v9 = a3;
  v10 = sub_1000A0EF8(v9, a4, a5, a6);

  return v10;
}

- (MPVoicemailAccount)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  sub_1000A0B10();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  swift_getObjectType();
  if (a3)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v6 = self;
  }

  sub_10009115C(v12, v10);
  if (!v11)
  {
    sub_1000A0E90(v10);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v7 = sub_1000A1368(self, v9);

LABEL_9:
  sub_1000A0E90(v12);
  return v7 & 1;
}

@end