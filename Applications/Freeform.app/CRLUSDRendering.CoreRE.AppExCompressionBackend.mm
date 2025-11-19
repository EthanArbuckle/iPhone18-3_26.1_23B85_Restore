@interface CRLUSDRendering.CoreRE.AppExCompressionBackend
- (_TtCOO8Freeform15CRLUSDRendering6CoreRE23AppExCompressionBackend)init;
@end

@implementation CRLUSDRendering.CoreRE.AppExCompressionBackend

- (_TtCOO8Freeform15CRLUSDRendering6CoreRE23AppExCompressionBackend)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE23AppExCompressionBackend__backendState;
  sub_1005B981C(&qword_101A152C8);
  swift_allocObject();
  *(&self->super.isa + v4) = sub_10086453C(0, 0, 0, 0xC000000000000000);
  UUID.init()();
  *(&self->super.isa + OBJC_IVAR____TtCOO8Freeform15CRLUSDRendering6CoreRE23AppExCompressionBackend_flags) = 1;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(CRLUSDRendering.CoreRE.AppExCompressionBackend *)&v6 init];
}

@end