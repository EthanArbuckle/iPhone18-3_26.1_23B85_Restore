@interface AUACustomBooleanProperty
- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client;
- (BOOL)setPropertyWithQualifierSize:(unsigned int)size qualifierData:(void *)data dataSize:(unsigned int)dataSize andData:(void *)andData forClient:(int)client;
- (_TtC9AUASDCore24AUACustomBooleanProperty)initWithAddress:(id)address propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType;
@end

@implementation AUACustomBooleanProperty

- (BOOL)getPropertyWithQualifierSize:(unsigned int)size qualifierData:(void *)data dataSize:(unsigned int *)dataSize andData:(void *)andData forClient:(int)client
{
  *dataSize = 8;
  v8 = self->ASDCustomProperty_opaque[OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet];
  selfCopy = self;
  v10.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v11 = *andData;
  *andData = v10;

  return 1;
}

- (BOOL)setPropertyWithQualifierSize:(unsigned int)size qualifierData:(void *)data dataSize:(unsigned int)dataSize andData:(void *)andData forClient:(int)client
{
  selfCopy = self;
  isSettable = [(AUACustomBooleanProperty *)selfCopy isSettable];
  if (dataSize == 8)
  {
    v11 = isSettable;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == 1)
  {
    if (!andData)
    {
      __break(1u);
      return isSettable;
    }

    v12 = *andData;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v13 = v12;
      static Bool._conditionallyBridgeFromObjectiveC(_:result:)();

      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    selfCopy->ASDCustomProperty_opaque[OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet] = v14 & 1;
  }

  LOBYTE(isSettable) = v11;
  return isSettable;
}

- (_TtC9AUASDCore24AUACustomBooleanProperty)initWithAddress:(id)address propertyDataType:(unsigned int)type qualifierDataType:(unsigned int)dataType
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end