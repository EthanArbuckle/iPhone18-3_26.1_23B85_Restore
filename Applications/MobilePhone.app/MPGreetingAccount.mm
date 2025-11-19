@interface MPGreetingAccount
+ (id)liveVoicemailAccount;
- (BOOL)customGreetingSupported;
- (MPGreetingAccount)init;
- (MPGreetingAccount)initWithAccount:(id)a3;
- (id)accountDescription;
@end

@implementation MPGreetingAccount

- (BOOL)customGreetingSupported
{
  if (*(&self->super.isa + OBJC_IVAR___MPGreetingAccount_accountType))
  {
    v2 = 0;
  }

  else
  {
    v2 = self->accountType[OBJC_IVAR___MPGreetingAccount_accountType] == 2;
  }

  return !v2;
}

- (MPGreetingAccount)initWithAccount:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR___MPGreetingAccount_accountType;
  *v6 = a3;
  v6[8] = 0;
  v7 = OBJC_IVAR___MPVoicemailAccount_uuid;
  v8 = OBJC_IVAR___MPGreetingAccount_uuid;
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(self + v8, a3 + v7, v9);
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = a3;
  return [(MPGreetingAccount *)&v12 init];
}

- (id)accountDescription
{
  v2 = self;
  object = GreetingAccount.accountDescription()().value._object;

  if (object)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)liveVoicemailAccount
{
  v2 = objc_allocWithZone(swift_getObjCClassMetadata());
  v3 = GreetingAccount.init(accountType:)(0, 2);

  return v3;
}

- (MPGreetingAccount)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end