@interface ActivityAuthorization
- (BOOL)areActivitiesEnabledForBundleId:(id)a3;
- (BOOL)areFrequentPushesEnabledFor:(id)a3;
- (BOOL)clearActivityAuthorizationFor:(id)a3 error:(id *)a4;
- (BOOL)setActivitiesWithEnabled:(BOOL)a3 for:(id)a4 source:(int64_t)a5 error:(id *)a6;
@end

@implementation ActivityAuthorization

- (BOOL)setActivitiesWithEnabled:(BOOL)a3 for:(id)a4 source:(int64_t)a5 error:(id *)a6
{
  v9 = sub_1A2D08444();
  v11 = v10;
  v12 = self;
  sub_1A2CA1B0C(a3, v9, v11, a5);

  return 1;
}

- (BOOL)clearActivityAuthorizationFor:(id)a3 error:(id *)a4
{
  v5 = sub_1A2D08444();
  v7 = v6;
  v8 = (*(&self->super.isa + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock))[2];
  v9 = self;
  os_unfair_lock_lock(v8);
  v10 = v9 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 56))(v5, v7, ObjectType, v12);
    swift_unknownObjectRelease();

    os_unfair_lock_unlock(v8);

    LOBYTE(Strong) = 1;
  }

  else
  {
    __break(1u);
  }

  return Strong;
}

- (BOOL)areActivitiesEnabledForBundleId:(id)a3
{
  v4 = sub_1A2D08444();
  v6 = v5;
  v7 = (*(&self->super.isa + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock))[2];
  v8 = self;
  os_unfair_lock_lock(v7);
  v9 = v8 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 40))(v4, v6, ObjectType, v11);
    swift_unknownObjectRelease();

    os_unfair_lock_unlock(v7);

    LOBYTE(Strong) = v13 & 1;
  }

  else
  {
    __break(1u);
  }

  return Strong;
}

- (BOOL)areFrequentPushesEnabledFor:(id)a3
{
  v4 = sub_1A2D08444();
  v6 = v5;
  v7 = (*(&self->super.isa + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock))[2];
  v8 = self;
  os_unfair_lock_lock(v7);
  v9 = v8 + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(v9 + 1);
    ObjectType = swift_getObjectType();
    v13 = (*(v11 + 88))(v4, v6, ObjectType, v11);
    swift_unknownObjectRelease();

    os_unfair_lock_unlock(v7);

    LOBYTE(Strong) = v13 & 1;
  }

  else
  {
    __break(1u);
  }

  return Strong;
}

@end