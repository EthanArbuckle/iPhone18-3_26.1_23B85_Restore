@interface AUAReadOnlyCustomDictionaryProperty
- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (_TtC9AUASDCore35AUAReadOnlyCustomDictionaryProperty)initWithAddress:(id)address propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType;
@end

@implementation AUAReadOnlyCustomDictionaryProperty

- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  *dataSize = 8;
  v7 = *&self->ASDCustomProperty_opaque[OBJC_IVAR____TtC9AUASDCore35AUAReadOnlyCustomDictionaryProperty_dictionary];
  v8 = *andData;
  *andData = v7;
  v9 = v7;

  return 1;
}

- (_TtC9AUASDCore35AUAReadOnlyCustomDictionaryProperty)initWithAddress:(id)address propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end