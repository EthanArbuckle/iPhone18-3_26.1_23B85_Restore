@interface AUASidetoneSubstituteProperty
- (BOOL)getPropertyWithQualifierSize:(unsigned int)a3 qualifierData:(void *)a4 dataSize:(unsigned int *)a5 andData:(void *)a6 forClient:(int)a7;
- (_TtC9AUASDCore29AUASidetoneSubstituteProperty)initWithAddress:(id)a3 propertyDataType:(unsigned int)a4 qualifierDataType:(unsigned int)a5;
@end

@implementation AUASidetoneSubstituteProperty

- (BOOL)getPropertyWithQualifierSize:(unsigned int)a3 qualifierData:(void *)a4 dataSize:(unsigned int *)a5 andData:(void *)a6 forClient:(int)a7
{
  *a5 = 8;
  v7 = *&self->ASDCustomProperty_opaque[OBJC_IVAR____TtC9AUASDCore29AUASidetoneSubstituteProperty_channels];
  v8 = *a6;
  *a6 = v7;
  v9 = v7;

  return 1;
}

- (_TtC9AUASDCore29AUASidetoneSubstituteProperty)initWithAddress:(id)a3 propertyDataType:(unsigned int)a4 qualifierDataType:(unsigned int)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end