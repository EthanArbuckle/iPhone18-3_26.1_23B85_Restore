@interface AUAStreamFormat
- (AUAStreamFormat)init;
- (AUAStreamFormat)initWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)a3;
- (AUAStreamFormat)initWithAudioStreamRangedDescription:(AudioStreamRangedDescription *)a3;
- (AUAStreamFormat)initWithSampleRate:(double)a3 numChannels:(unsigned int)a4 commonPCMFormat:(unsigned int)a5 isInterleaved:(BOOL)a6;
- (BOOL)isCompatible:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(void *)a3;
@end

@implementation AUAStreamFormat

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_100059DAC(v6);

  sub_10001EAB8(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000CE78(v6);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_100059F40(v8);

  sub_100022ADC(v8);
  return v6;
}

- (BOOL)isCompatible:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_10005A198(v3);

  return v3 & 1;
}

- (AUAStreamFormat)initWithSampleRate:(double)a3 numChannels:(unsigned int)a4 commonPCMFormat:(unsigned int)a5 isInterleaved:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AUAStreamFormat)initWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AUAStreamFormat)initWithAudioStreamRangedDescription:(AudioStreamRangedDescription *)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AUAStreamFormat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end