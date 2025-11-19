@interface CRLUSDRendering.CoreRE.AppExSurfaceBackend
- (_TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend)init;
@end

@implementation CRLUSDRendering.CoreRE.AppExSurfaceBackend

- (_TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend__backendState;
  sub_1005B981C(&qword_101A1AE10);
  swift_allocObject();
  *(&self->super.isa + v4) = sub_100864928(0, 0, 0, 0xC000000000000000);
  UUID.init()();
  *(&self->super.isa + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE19AppExSurfaceBackend_flags) = 1;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CRLUSDRendering.CoreRE.AppExSurfaceBackend *)&v6 init];
}

@end