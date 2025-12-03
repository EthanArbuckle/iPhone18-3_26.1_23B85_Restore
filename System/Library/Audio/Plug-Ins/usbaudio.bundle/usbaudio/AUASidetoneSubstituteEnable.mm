@interface AUASidetoneSubstituteEnable
- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (_TtC9AUASDCore27AUASidetoneSubstituteEnable)initWithAddress:(id)address propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType;
@end

@implementation AUASidetoneSubstituteEnable

- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  *dataSize = 8;
  v8.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v9 = *andData;
  *andData = v8;

  return 1;
}

- (_TtC9AUASDCore27AUASidetoneSubstituteEnable)initWithAddress:(id)address propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end