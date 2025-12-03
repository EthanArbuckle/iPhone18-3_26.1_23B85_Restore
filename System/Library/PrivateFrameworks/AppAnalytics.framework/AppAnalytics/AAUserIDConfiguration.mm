@interface AAUserIDConfiguration
- (AAUserIDConfiguration)init;
- (AAUserIDConfiguration)initWithRotationPeriod:(int64_t)period storage:(id)storage;
@end

@implementation AAUserIDConfiguration

- (AAUserIDConfiguration)initWithRotationPeriod:(int64_t)period storage:(id)storage
{
  ObjectType = swift_getObjectType();
  v8 = (self + OBJC_IVAR___AAUserIDConfiguration_configuration);
  sub_1B6982544(storage + OBJC_IVAR___AAUserIDStorage_storage, &self->configuration[OBJC_IVAR___AAUserIDConfiguration_configuration]);
  *v8 = period;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(AAUserIDConfiguration *)&v10 init];
}

- (AAUserIDConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end