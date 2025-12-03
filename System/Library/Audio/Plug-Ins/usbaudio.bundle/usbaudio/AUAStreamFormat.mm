@interface AUAStreamFormat
- (AUAStreamFormat)init;
- (AUAStreamFormat)initWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)description;
- (AUAStreamFormat)initWithAudioStreamRangedDescription:(AudioStreamRangedDescription *)description;
- (AUAStreamFormat)initWithSampleRate:(double)rate numChannels:(unsigned int)channels commonPCMFormat:(unsigned int)format isInterleaved:(BOOL)interleaved;
- (BOOL)isCompatible:(id)compatible;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(void *)zone;
@end

@implementation AUAStreamFormat

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_100059DAC(v6);

  sub_10001EAB8(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000CE78(v6);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100059F40(v8);

  sub_100022ADC(v8);
  return v6;
}

- (BOOL)isCompatible:(id)compatible
{
  compatibleCopy = compatible;
  compatibleCopy2 = compatible;
  selfCopy = self;
  LOBYTE(compatibleCopy) = sub_10005A198(compatibleCopy);

  return compatibleCopy & 1;
}

- (AUAStreamFormat)initWithSampleRate:(double)rate numChannels:(unsigned int)channels commonPCMFormat:(unsigned int)format isInterleaved:(BOOL)interleaved
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AUAStreamFormat)initWithAudioStreamBasicDescription:(AudioStreamBasicDescription *)description
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (AUAStreamFormat)initWithAudioStreamRangedDescription:(AudioStreamRangedDescription *)description
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