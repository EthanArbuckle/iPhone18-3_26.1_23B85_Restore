@interface BKContainerHost
- (BKContainerHost)init;
- (BKContainerHost)initWithLaunchCoordinator:(id)a3;
- (TFResolver)bridgedResolver;
@end

@implementation BKContainerHost

- (BKContainerHost)initWithLaunchCoordinator:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___BKContainerHost____lazy_storage___containerManager) = 0;
  *(&self->super.isa + OBJC_IVAR___BKContainerHost____lazy_storage___container) = 0;
  v6 = self + OBJC_IVAR___BKContainerHost____lazy_storage___resolver;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  *(&self->super.isa + OBJC_IVAR___BKContainerHost_launchCoordinator) = a3;
  v8.receiver = self;
  v8.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(BKContainerHost *)&v8 init];
}

- (TFResolver)bridgedResolver
{
  v2 = self;
  sub_1000078A0();
  sub_100798DF4();

  sub_10000E3E8(v5, v5[3]);
  v3 = sub_100798CA4();

  sub_1000074E0(v5);

  return v3;
}

- (BKContainerHost)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end