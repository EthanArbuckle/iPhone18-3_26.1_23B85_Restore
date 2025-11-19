@interface AAUserIDConfiguration
- (AAUserIDConfiguration)init;
- (AAUserIDConfiguration)initWithRotationPeriod:(int64_t)a3 storage:(id)a4;
@end

@implementation AAUserIDConfiguration

- (AAUserIDConfiguration)initWithRotationPeriod:(int64_t)a3 storage:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = (self + OBJC_IVAR___AAUserIDConfiguration_configuration);
  sub_1B6982544(a4 + OBJC_IVAR___AAUserIDStorage_storage, &self->configuration[OBJC_IVAR___AAUserIDConfiguration_configuration]);
  *v8 = a3;
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