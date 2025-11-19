@interface AUACustomBooleanProperty
- (BOOL)getPropertyWithQualifierSize:(unsigned int)a3 qualifierData:(void *)a4 dataSize:(unsigned int *)a5 andData:(void *)a6 forClient:(int)a7;
- (BOOL)setPropertyWithQualifierSize:(unsigned int)a3 qualifierData:(void *)a4 dataSize:(unsigned int)a5 andData:(void *)a6 forClient:(int)a7;
- (_TtC9AUASDCore24AUACustomBooleanProperty)initWithAddress:(id)a3 propertyDataType:(unsigned int)a4 qualifierDataType:(unsigned int)a5;
@end

@implementation AUACustomBooleanProperty

- (BOOL)getPropertyWithQualifierSize:(unsigned int)a3 qualifierData:(void *)a4 dataSize:(unsigned int *)a5 andData:(void *)a6 forClient:(int)a7
{
  *a5 = 8;
  v8 = self->ASDCustomProperty_opaque[OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet];
  v9 = self;
  v10.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v11 = *a6;
  *a6 = v10;

  return 1;
}

- (BOOL)setPropertyWithQualifierSize:(unsigned int)a3 qualifierData:(void *)a4 dataSize:(unsigned int)a5 andData:(void *)a6 forClient:(int)a7
{
  v9 = self;
  v10 = [(AUACustomBooleanProperty *)v9 isSettable];
  if (a5 == 8)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 == 1)
  {
    if (!a6)
    {
      __break(1u);
      return v10;
    }

    v12 = *a6;
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

    v9->ASDCustomProperty_opaque[OBJC_IVAR____TtC9AUASDCore24AUACustomBooleanProperty_isSet] = v14 & 1;
  }

  LOBYTE(v10) = v11;
  return v10;
}

- (_TtC9AUASDCore24AUACustomBooleanProperty)initWithAddress:(id)a3 propertyDataType:(unsigned int)a4 qualifierDataType:(unsigned int)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end