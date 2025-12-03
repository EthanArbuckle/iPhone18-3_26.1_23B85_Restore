@interface Restrictions
- (_TtC20AttributionKitDaemon12Restrictions)init;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation Restrictions

- (_TtC20AttributionKitDaemon12Restrictions)init
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  self->cachedValues[0] = 2;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v4 = [(Restrictions *)&v9 init];
  v5 = objc_opt_self();
  v6 = v4;
  result = [v5 sharedConnection];
  if (result)
  {
    v8 = result;
    [(Restrictions *)result registerObserver:v6];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v5 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v11 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;

  sub_10001267C(0, 0, v8, &unk_1001BFCD8, v10);
}

@end