@interface MPLegacyVoicemail
+ (MPLegacyVoicemail)mock;
- (MPLegacyVoicemail)init;
- (MPLegacyVoicemail)initWithAccountID:(id)a3 label:(id)a4 hasUnreadMessages:(BOOL)a5;
- (NSUUID)accountID;
@end

@implementation MPLegacyVoicemail

- (NSUUID)accountID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___MPLegacyVoicemail_accountID, v3);
  v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

- (MPLegacyVoicemail)initWithAccountID:(id)a3 label:(id)a4 hasUnreadMessages:(BOOL)a5
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  (*(v9 + 16))(self + OBJC_IVAR___MPLegacyVoicemail_accountID, v11, v8);
  v15 = (self + OBJC_IVAR___MPLegacyVoicemail_label);
  *v15 = v12;
  v15[1] = v14;
  *(self + OBJC_IVAR___MPLegacyVoicemail_hasUnreadMessages) = a5;
  v18.receiver = self;
  v18.super_class = ObjectType;
  v16 = [(MPLegacyVoicemail *)&v18 init];
  (*(v9 + 8))(v11, v8);
  return v16;
}

+ (MPLegacyVoicemail)mock
{
  if (one-time initialization token for mock != -1)
  {
    swift_once();
  }

  v3 = static LegacyVoicemail.mock;

  return v3;
}

- (MPLegacyVoicemail)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end