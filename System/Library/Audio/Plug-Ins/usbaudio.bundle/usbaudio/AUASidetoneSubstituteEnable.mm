@interface AUASidetoneSubstituteEnable
- (BOOL)getPropertyWithQualifierSize:(unsigned int)a3 qualifierData:(void *)a4 dataSize:(unsigned int *)a5 andData:(void *)a6 forClient:(int)a7;
- (_TtC9AUASDCore27AUASidetoneSubstituteEnable)initWithAddress:(id)a3 propertyDataType:(unsigned int)a4 qualifierDataType:(unsigned int)a5;
@end

@implementation AUASidetoneSubstituteEnable

- (BOOL)getPropertyWithQualifierSize:(unsigned int)a3 qualifierData:(void *)a4 dataSize:(unsigned int *)a5 andData:(void *)a6 forClient:(int)a7
{
  *a5 = 8;
  v8.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v9 = *a6;
  *a6 = v8;

  return 1;
}

- (_TtC9AUASDCore27AUASidetoneSubstituteEnable)initWithAddress:(id)a3 propertyDataType:(unsigned int)a4 qualifierDataType:(unsigned int)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end