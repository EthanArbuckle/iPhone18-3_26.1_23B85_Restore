@interface KatanaSubscriptionCoordinator
+ (_TtC9appstored29KatanaSubscriptionCoordinator)shared;
- (BOOL)migrateSubscriptionStateWithAccount:(id)a3 logKey:(id)a4;
- (BOOL)removeStaleSubscriptionInfoWithLogKey:(id)a3;
- (BOOL)updateSubscriptionInfoWithEntitlement:(id)a3 account:(id)a4 bag:(id)a5 logKey:(id)a6;
- (_TtC9appstored29KatanaSubscriptionCoordinator)init;
- (id)subscriptionInfoDictionaryWithAccount:(id)a3 onlyReturnForPreviouslySubscribedAccount:(BOOL)a4 logKey:(id)a5;
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

- (BOOL)migrateSubscriptionStateWithAccount:(id)a3 logKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1000E81A4(v6, v7);

  return v9 & 1;
}

- (BOOL)removeStaleSubscriptionInfoWithLogKey:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1000E9288(v4);

  return self & 1;
}

- (id)subscriptionInfoDictionaryWithAccount:(id)a3 onlyReturnForPreviouslySubscribedAccount:(BOOL)a4 logKey:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  v11 = sub_1000EA524(v8, a4, v9);

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

- (BOOL)updateSubscriptionInfoWithEntitlement:(id)a3 account:(id)a4 bag:(id)a5 logKey:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = self;
  LOBYTE(a5) = sub_1000EADAC(a3, v12, a5, v14);

  return a5 & 1;
}

@end