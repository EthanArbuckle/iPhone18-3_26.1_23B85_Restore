@interface AUAStreamLockDelayProperty
- (BOOL)getPropertyWithQualifierSize:(unsigned int)a3 qualifierData:(void *)a4 dataSize:(unsigned int *)a5 andData:(void *)a6 forClient:(int)a7;
- (_TtC9AUASDCore26AUAStreamLockDelayProperty)initWithAddress:(id)a3 propertyDataType:(unsigned int)a4 qualifierDataType:(unsigned int)a5;
@end

@implementation AUAStreamLockDelayProperty

- (BOOL)getPropertyWithQualifierSize:(unsigned int)a3 qualifierData:(void *)a4 dataSize:(unsigned int *)a5 andData:(void *)a6 forClient:(int)a7
{
  *a5 = 8;
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = self;
  if (Strong)
  {
    sub_1000ACB88();
  }

  v11.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v12 = *a6;
  *a6 = v11;

  return 1;
}

- (_TtC9AUASDCore26AUAStreamLockDelayProperty)initWithAddress:(id)a3 propertyDataType:(unsigned int)a4 qualifierDataType:(unsigned int)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end