@interface AUAGainControl
- (BOOL)changeDecibelValue:(float)value;
- (BOOL)changeScalarValue:(float)value;
- (_TtC9AUASDCore14AUAGainControl)initWithDecibelValue:(float)value minimumValue:(float)minimumValue maximumValue:(float)maximumValue isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)self0;
- (float)decibelFromScalar:(float)scalar;
- (float)scalarFromDecibel:(float)decibel;
@end

@implementation AUAGainControl

- (BOOL)changeDecibelValue:(float)value
{
  selfCopy = self;
  v5 = sub_1000C9948(value);

  return v5 & 1;
}

- (BOOL)changeScalarValue:(float)value
{
  selfCopy = self;
  v5 = sub_1000CA8C0(value);

  return v5 & 1;
}

- (float)scalarFromDecibel:(float)decibel
{
  *v4 = *&self->ASDLevelControl_opaque[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_range];
  *&v4[12] = *&self->featureUnit[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_range + 4];
  sub_1000C7FD4(decibel);
  return result;
}

- (float)decibelFromScalar:(float)scalar
{
  *v4 = *&self->ASDLevelControl_opaque[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_range];
  *&v4[12] = *&self->featureUnit[OBJC_IVAR____TtC9AUASDCore14AUAGainControl_range + 4];
  sub_1000C7EB4(scalar);
  return result;
}

- (_TtC9AUASDCore14AUAGainControl)initWithDecibelValue:(float)value minimumValue:(float)minimumValue maximumValue:(float)maximumValue isSettable:(BOOL)settable forElement:(unsigned int)element inScope:(unsigned int)scope withPlugin:(id)plugin andObjectClassID:(unsigned int)self0
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end