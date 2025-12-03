@interface KatanaSubscriptionCoordinator
+ (_TtC9appstored29KatanaSubscriptionCoordinator)shared;
- (BOOL)migrateSubscriptionStateWithAccount:(id)account logKey:(id)key;
- (BOOL)removeStaleSubscriptionInfoWithLogKey:(id)key;
- (BOOL)updateSubscriptionInfoWithEntitlement:(id)entitlement account:(id)account bag:(id)bag logKey:(id)key;
- (_TtC9appstored29KatanaSubscriptionCoordinator)init;
- (id)subscriptionInfoDictionaryWithAccount:(id)account onlyReturnForPreviouslySubscribedAccount:(BOOL)subscribedAccount logKey:(id)key;
@end

@implementation KatanaSubscriptionCoordinator

- (_TtC9appstored29KatanaSubscriptionCoordinator)init
{
  ObjectType = swift_getObjectType();
  static Logger.arcade.getter();
  *(&self->super.isa + OBJC_IVAR____TtC9appstored29KatanaSubscriptionCoordinator_hardwareBundlePromoScenarios) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(KatanaSubscriptionCoordinator *)&v5 init];
}

+ (_TtC9appstored29KatanaSubscriptionCoordinator)shared
{
  if (qword_10059B4C0 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB0E8;

  return v3;
}

- (BOOL)migrateSubscriptionStateWithAccount:(id)account logKey:(id)key
{
  accountCopy = account;
  keyCopy = key;
  selfCopy = self;
  v9 = sub_1000E81A4(accountCopy, keyCopy);

  return v9 & 1;
}

- (BOOL)removeStaleSubscriptionInfoWithLogKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  LOBYTE(self) = sub_1000E9288(keyCopy);

  return self & 1;
}

- (id)subscriptionInfoDictionaryWithAccount:(id)account onlyReturnForPreviouslySubscribedAccount:(BOOL)subscribedAccount logKey:(id)key
{
  accountCopy = account;
  keyCopy = key;
  selfCopy = self;
  v11 = sub_1000EA524(accountCopy, subscribedAccount, keyCopy);

  if (v11)
  {
    v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  return v12.super.isa;
}

- (BOOL)updateSubscriptionInfoWithEntitlement:(id)entitlement account:(id)account bag:(id)bag logKey:(id)key
{
  entitlementCopy = entitlement;
  accountCopy = account;
  bagCopy = bag;
  keyCopy = key;
  selfCopy = self;
  LOBYTE(bag) = sub_1000EADAC(entitlement, accountCopy, bag, keyCopy);

  return bag & 1;
}

@end