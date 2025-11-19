@interface AUAGainControl
- (BOOL)changeDecibelValue:(float)a3;
- (BOOL)changeScalarValue:(float)a3;
- (_TtC9AUASDCore14AUAGainControl)initWithDecibelValue:(float)a3 minimumValue:(float)a4 maximumValue:(float)a5 isSettable:(BOOL)a6 forElement:(unsigned int)a7 inScope:(unsigned int)a8 withPlugin:(id)a9 andObjectClassID:(unsigned int)a10;
- (float)decibelFromScalar:(float)a3;
- (float)scalarFromDecibel:(float)a3;
@end

@implementation AUAGainControl

- (BOOL)changeDecibelValue:(float)a3
{
  v4 = self;
  v5 = sub_1000C9948(a3);

  return v5 & 1;
}

- (BOOL)changeScalarValue:(float)a3
{
  v4 = self;
  v5 = sub_1000CA8C0(a3);

  return v5 & 1;
}

- (float)scalarFromDecibel:(float)a3
{
  *v4 = *&self->ASDLevelControl_opaque[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_range];
  *&v4[12] = *&self->featureUnit[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_range + 4];
  sub_1000C7FD4(a3);
  return result;
}

- (float)decibelFromScalar:(float)a3
{
  *v4 = *&self->ASDLevelControl_opaque[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_range];
  *&v4[12] = *&self->featureUnit[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_range + 4];
  sub_1000C7EB4(a3);
  return result;
}

- (_TtC9AUASDCore14AUAGainControl)initWithDecibelValue:(float)a3 minimumValue:(float)a4 maximumValue:(float)a5 isSettable:(BOOL)a6 forElement:(unsigned int)a7 inScope:(unsigned int)a8 withPlugin:(id)a9 andObjectClassID:(unsigned int)a10
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end