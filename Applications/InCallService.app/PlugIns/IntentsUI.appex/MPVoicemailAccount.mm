@interface MPVoicemailAccount
- (BOOL)isEqual:(id)equal;
- (MPVoicemailAccount)init;
- (MPVoicemailAccount)initWithUuid:(id)uuid callVoicemailSupported:(BOOL)supported subscribed:(BOOL)subscribed greetingChangeSupported:(BOOL)changeSupported provisioned:(BOOL)provisioned hasHandle:(BOOL)handle accountDescription:(id)description;
- (MPVoicemailAccount)initWithVmAccount:(id)account callVoicemailSupported:(BOOL)supported subscribed:(BOOL)subscribed greetingChangeSupported:(BOOL)changeSupported;
- (NSString)accountDescription;
- (NSString)description;
- (NSUUID)UUID;
@end

@implementation MPVoicemailAccount

- (NSUUID)UUID
{
  v3 = sub_10007AE28();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___MPVoicemailAccount_uuid, v3);
  v8.super.isa = sub_10007ADD8().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (NSString)accountDescription
{
  if (*(self + OBJC_IVAR___MPVoicemailAccount_accountDescription + 8))
  {

    v2 = sub_10007B448();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (MPVoicemailAccount)initWithUuid:(id)uuid callVoicemailSupported:(BOOL)supported subscribed:(BOOL)subscribed greetingChangeSupported:(BOOL)changeSupported provisioned:(BOOL)provisioned hasHandle:(BOOL)handle accountDescription:(id)description
{
  provisionedCopy = provisioned;
  handleCopy = handle;
  descriptionCopy = description;
  ObjectType = swift_getObjectType();
  v15 = sub_10007AE28();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007AE08();
  if (description)
  {
    descriptionCopy = sub_10007B478();
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  (*(v16 + 16))(self + OBJC_IVAR___MPVoicemailAccount_uuid, v19, v15);
  *(self + OBJC_IVAR___MPVoicemailAccount_callVoicemailSupported) = supported;
  *(self + OBJC_IVAR___MPVoicemailAccount_subscribed) = subscribed;
  *(self + OBJC_IVAR___MPVoicemailAccount_greetingChangeSupported) = changeSupported;
  v22 = handleCopy;
  *(self + OBJC_IVAR___MPVoicemailAccount_provisioned) = provisionedCopy;
  *(self + OBJC_IVAR___MPVoicemailAccount_hasHandle) = v22;
  v23 = (self + OBJC_IVAR___MPVoicemailAccount_accountDescription);
  *v23 = descriptionCopy;
  v23[1] = v21;
  v29.receiver = self;
  v29.super_class = ObjectType;
  v24 = [(MPVoicemailAccount *)&v29 init];
  (*(v16 + 8))(v19, v15);
  return v24;
}

- (MPVoicemailAccount)initWithVmAccount:(id)account callVoicemailSupported:(BOOL)supported subscribed:(BOOL)subscribed greetingChangeSupported:(BOOL)changeSupported
{
  accountCopy = account;
  v10 = sub_100073548(accountCopy, supported, subscribed, changeSupported);

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
  selfCopy = self;
  sub_1000731C8();

  v3 = sub_10007B448();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  swift_getObjectType();
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_10007B798();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    selfCopy2 = self;
  }

  sub_10005C7DC(v12, v10);
  if (!v11)
  {
    sub_10005EDC8(v10);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v7 = sub_1000739B8(self, v9);

LABEL_9:
  sub_10005EDC8(v12);
  return v7 & 1;
}

@end