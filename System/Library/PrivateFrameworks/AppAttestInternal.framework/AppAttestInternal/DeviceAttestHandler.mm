@interface DeviceAttestHandler
- (BOOL)isSupported;
- (_TtC17AppAttestInternal19DeviceAttestHandler)init;
- (_TtC17AppAttestInternal19DeviceAttestHandler)initWith:(id *)a3;
- (void)attestKeyWith:(__SecKey *)a3 options:(id)a4 completion:(id)a5;
@end

@implementation DeviceAttestHandler

- (_TtC17AppAttestInternal19DeviceAttestHandler)initWith:(id *)a3
{
  ObjectType = swift_getObjectType();
  v13 = *a3->var0;
  v6 = *&a3->var0[4];
  v7 = *&a3->var0[6];
  *(&self->super.isa + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___eligibilityManager) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___identityManager) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler____lazy_storage___attestationManager) = 0;
  v8 = OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_logger;
  v9 = sub_2261A5328();
  v10 = sub_2261E3CDC();
  (*(*(v10 - 8) + 16))(self + v8, v9, v10);
  v11 = self + OBJC_IVAR____TtC17AppAttestInternal19DeviceAttestHandler_auditToken;
  *v11 = v13;
  *(v11 + 2) = v6;
  *(v11 + 3) = v7;
  v14.receiver = self;
  v14.super_class = ObjectType;
  return [(DeviceAttestHandler *)&v14 init];
}

- (BOOL)isSupported
{
  v2 = self;
  v3 = DeviceAttestHandler.isSupported()();

  return v3;
}

- (void)attestKeyWith:(__SecKey *)a3 options:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_2261DC6C0(v9, v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (_TtC17AppAttestInternal19DeviceAttestHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end