@interface CHNavigatorContext
+ (id)canonical;
- (CHNavigatorContext)init;
- (CHNavigatorContext)initWithHasActiveWorkout:(BOOL)workout;
- (NSString)description;
@end

@implementation CHNavigatorContext

- (CHNavigatorContext)initWithHasActiveWorkout:(BOOL)workout
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___CHNavigatorContext_hasActiveWorkout) = workout;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(CHNavigatorContext *)&v7 init];
}

- (NSString)description
{
  selfCopy = self;
  sub_100209504();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (CHNavigatorContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)canonical
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = objc_allocWithZone(ObjCClassMetadata);
  v3[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
  v6.receiver = v3;
  v6.super_class = ObjCClassMetadata;
  v4 = objc_msgSendSuper2(&v6, "init");

  return v4;
}

@end