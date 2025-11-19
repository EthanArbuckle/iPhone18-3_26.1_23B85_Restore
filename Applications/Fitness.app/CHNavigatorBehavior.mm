@interface CHNavigatorBehavior
+ (id)canonical;
- (BOOL)allowedWith:(id)a3;
- (CHNavigatorBehavior)init;
- (CHNavigatorBehavior)initWithAllowedDuringWorkout:(BOOL)a3;
- (NSString)description;
@end

@implementation CHNavigatorBehavior

- (CHNavigatorBehavior)initWithAllowedDuringWorkout:(BOOL)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___CHNavigatorBehavior_allowedDuringWorkout) = a3;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(CHNavigatorBehavior *)&v7 init];
}

- (BOOL)allowedWith:(id)a3
{
  if (*(a3 + OBJC_IVAR___CHNavigatorContext_hasActiveWorkout) == 1)
  {
    return *(&self->super.isa + OBJC_IVAR___CHNavigatorBehavior_allowedDuringWorkout);
  }

  else
  {
    return 1;
  }
}

- (NSString)description
{
  v2 = self;
  sub_1005A8D9C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (CHNavigatorBehavior)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)canonical
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = objc_allocWithZone(ObjCClassMetadata);
  v3[OBJC_IVAR___CHNavigatorBehavior_allowedDuringWorkout] = 0;
  v6.receiver = v3;
  v6.super_class = ObjCClassMetadata;
  v4 = objc_msgSendSuper2(&v6, "init");

  return v4;
}

@end