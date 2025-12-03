@interface MPLegacyVoicemail
+ (MPLegacyVoicemail)mock;
- (MPLegacyVoicemail)init;
- (MPLegacyVoicemail)initWithAccountID:(id)d label:(id)label hasUnreadMessages:(BOOL)messages;
- (NSUUID)accountID;
@end

@implementation MPLegacyVoicemail

- (NSUUID)accountID
{
  v3 = sub_10007AE28();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___MPLegacyVoicemail_accountID, v3);
  v8.super.isa = sub_10007ADD8().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (MPLegacyVoicemail)initWithAccountID:(id)d label:(id)label hasUnreadMessages:(BOOL)messages
{
  ObjectType = swift_getObjectType();
  v8 = sub_10007AE28();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  v13 = sub_10007B478();
  v15 = v14;
  (*(v9 + 16))(self + OBJC_IVAR___MPLegacyVoicemail_accountID, v12, v8);
  v16 = (self + OBJC_IVAR___MPLegacyVoicemail_label);
  *v16 = v13;
  v16[1] = v15;
  *(self + OBJC_IVAR___MPLegacyVoicemail_hasUnreadMessages) = messages;
  v19.receiver = self;
  v19.super_class = ObjectType;
  v17 = [(MPLegacyVoicemail *)&v19 init];
  (*(v9 + 8))(v12, v8);
  return v17;
}

+ (MPLegacyVoicemail)mock
{
  if (qword_1000C4DF8 != -1)
  {
    swift_once();
  }

  v3 = qword_1000C7630;

  return v3;
}

- (MPLegacyVoicemail)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end