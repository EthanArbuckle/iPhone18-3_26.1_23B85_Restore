@interface AASessionData
- (AASessionData)init;
- (AASessionData)initWithKey:(id)key data:(id)data;
@end

@implementation AASessionData

- (AASessionData)initWithKey:(id)key data:(id)data
{
  ObjectType = swift_getObjectType();
  v7 = sub_1B6AB92E0();
  v8 = (self + OBJC_IVAR___AASessionData_key);
  *v8 = v7;
  v8[1] = v9;
  *(&self->super.isa + OBJC_IVAR___AASessionData_data) = data;
  v11.receiver = self;
  v11.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(AASessionData *)&v11 init];
}

- (AASessionData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end