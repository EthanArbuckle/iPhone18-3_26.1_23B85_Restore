@interface AARawEventProperty
- (AARawEventProperty)init;
- (AARawEventProperty)initWithDataName:(id)name requirement:(int64_t)requirement;
@end

@implementation AARawEventProperty

- (AARawEventProperty)initWithDataName:(id)name requirement:(int64_t)requirement
{
  ObjectType = swift_getObjectType();
  v7 = sub_1B6AB92E0();
  v8 = (self + OBJC_IVAR___AARawEventProperty_dataName);
  *v8 = v7;
  v8[1] = v9;
  *(&self->super.isa + OBJC_IVAR___AARawEventProperty_requirement) = requirement;
  v11.receiver = self;
  v11.super_class = ObjectType;
  return [(AARawEventProperty *)&v11 init];
}

- (AARawEventProperty)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end