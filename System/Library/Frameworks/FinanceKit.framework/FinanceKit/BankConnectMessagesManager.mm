@interface BankConnectMessagesManager
+ (id)makeManager;
- (BOOL)isAccountMessageDismissed:(int64_t)dismissed forAccountIdentifier:(id)identifier;
- (BOOL)isPassMessageDismissed:(int64_t)dismissed forFPANIdentifier:(id)identifier;
- (_TtC10FinanceKit26BankConnectMessagesManager)init;
- (void)resetMessagesForFPANIdentifier:(id)identifier;
- (void)setIsDismissed:(BOOL)dismissed forAccountMessage:(int64_t)message withAccountIdentifier:(id)identifier;
- (void)setIsDismissed:(BOOL)dismissed forPassMessage:(int64_t)message withFPANIdentifier:(id)identifier;
@end

@implementation BankConnectMessagesManager

- (_TtC10FinanceKit26BankConnectMessagesManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)makeManager
{
  if (qword_1EDAF97D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for BankConnectMessagesManager();
  v3 = objc_allocWithZone(v2);
  v7[3] = &type metadata for UncheckedSendableUserDefaults;
  v7[4] = &protocol witness table for UncheckedSendableUserDefaults;
  v7[0] = swift_allocObject();
  sub_1B7201D1C(&qword_1EDAF97D8, v7[0] + 16);
  sub_1B719B06C(v7, v3 + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v7);

  return v4;
}

- (void)resetMessagesForFPANIdentifier:(id)identifier
{
  v4 = sub_1B7800868();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  BankConnectMessagesManager.resetMessages(forFPANIdentifier:)(v8);
}

- (void)setIsDismissed:(BOOL)dismissed forPassMessage:(int64_t)message withFPANIdentifier:(id)identifier
{
  v8 = sub_1B7800868();
  if (message)
  {
    sub_1B7801C88();
    __break(1u);
  }

  else
  {
    v11[0] = v8;
    v11[1] = v9;
    v12 = 0;
    selfCopy = self;
    sub_1B737C27C(dismissed, v11);
  }
}

- (void)setIsDismissed:(BOOL)dismissed forAccountMessage:(int64_t)message withAccountIdentifier:(id)identifier
{
  v8 = sub_1B7800868();
  v10 = v9;
  selfCopy = self;
  BankConnectMessagesManager.setIsDismissed(_:for:with:)(dismissed, message, v8, v10);
}

- (BOOL)isPassMessageDismissed:(int64_t)dismissed forFPANIdentifier:(id)identifier
{
  sub_1B7800868();
  if (dismissed)
  {
    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    v6 = *&self->userDefaults[OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults + 24];
    __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults), *&self->userDefaults[OBJC_IVAR____TtC10FinanceKit26BankConnectMessagesManager_userDefaults + 16]);
    selfCopy = self;
    v8 = sub_1B737BA8C();
    v9 = (*(*(v6 + 8) + 24))(v8);

    return v9 & 1;
  }

  return result;
}

- (BOOL)isAccountMessageDismissed:(int64_t)dismissed forAccountIdentifier:(id)identifier
{
  sub_1B7800868();
  selfCopy = self;
  LOBYTE(dismissed) = BankConnectMessagesManager.isAccountMessageDismissed(_:for:)(dismissed);

  return dismissed & 1;
}

@end