@interface ActivityAuthorization
- (BOOL)areActivitiesEnabledForBundleId:(id)id;
- (BOOL)areFrequentPushesEnabledFor:(id)for;
- (BOOL)clearActivityAuthorizationFor:(id)for error:(id *)error;
- (BOOL)setActivitiesWithEnabled:(BOOL)enabled for:(id)for source:(int64_t)source error:(id *)error;
@end

@implementation ActivityAuthorization

- (BOOL)setActivitiesWithEnabled:(BOOL)enabled for:(id)for source:(int64_t)source error:(id *)error
{
  v9 = sub_1A2D08444();
  v11 = v10;
  selfCopy = self;
  sub_1A2CA1B0C(enabled, v9, v11, source);

  return 1;
}

- (BOOL)clearActivityAuthorizationFor:(id)for error:(id *)error
{
  v5 = sub_1A2D08444();
  v7 = v6;
  v8 = (*(&self->super.isa + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock))[2];
  selfCopy = self;
  os_unfair_lock_lock(v8);
  v10 = selfCopy + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
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

- (BOOL)areActivitiesEnabledForBundleId:(id)id
{
  v4 = sub_1A2D08444();
  v6 = v5;
  v7 = (*(&self->super.isa + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock))[2];
  selfCopy = self;
  os_unfair_lock_lock(v7);
  v9 = selfCopy + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
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

- (BOOL)areFrequentPushesEnabledFor:(id)for
{
  v4 = sub_1A2D08444();
  v6 = v5;
  v7 = (*(&self->super.isa + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_lock))[2];
  selfCopy = self;
  os_unfair_lock_lock(v7);
  v9 = selfCopy + OBJC_IVAR____TtC11ActivityKit21ActivityAuthorization_authorizationClient;
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