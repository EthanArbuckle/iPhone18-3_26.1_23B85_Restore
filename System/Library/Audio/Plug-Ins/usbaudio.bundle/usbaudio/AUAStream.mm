@interface AUAStream
- (AUAStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin;
- (BOOL)changePhysicalFormat:(id)format;
- (BOOL)deviceChangedToSamplingRate:(double)rate;
- (id)channelCategoryForChannelIndex:(unsigned int)index;
- (id)channelNameForChannelIndex:(unsigned int)index;
- (id)channelNumberForChannelIndex:(unsigned int)index;
- (void)preferredChannelDescription:(AudioChannelDescription *)description forChannelIndex:(unsigned int)index;
- (void)startStream;
- (void)stopStream;
@end

@implementation AUAStream

- (void)startStream
{
  selfCopy = self;
  AUAStream.start()();
}

- (void)stopStream
{
  selfCopy = self;
  AUAStream.stop()();
}

- (BOOL)deviceChangedToSamplingRate:(double)rate
{
  selfCopy = self;
  v5 = AUAStream.deviceChanged(toSamplingRate:)(rate);

  return v5;
}

- (BOOL)changePhysicalFormat:(id)format
{
  formatCopy = format;
  formatCopy2 = format;
  selfCopy = self;
  LOBYTE(formatCopy) = AUAStream.changePhysicalFormat(_:)(formatCopy);

  return formatCopy & 1;
}

- (id)channelNameForChannelIndex:(unsigned int)index
{
  selfCopy = self;
  object = AUAStream.channelName(forChannelIndex:)(index).value._object;

  if (object)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)channelCategoryForChannelIndex:(unsigned int)index
{
  v3 = OBJC_IVAR___AUAStream_logID;
  v4 = qword_100173CC0;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v6, qword_100179508);
  sub_100039F58(1, &selfCopy->ASDStream_opaque[v3], 0xD00000000000001ELL, 0x800000010012F280);

  return 0;
}

- (id)channelNumberForChannelIndex:(unsigned int)index
{
  v3 = OBJC_IVAR___AUAStream_logID;
  v4 = qword_100173CC0;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v6, qword_100179508);
  sub_100039F58(1, &selfCopy->ASDStream_opaque[v3], 0xD00000000000001CLL, 0x800000010012F2A0);

  return 0;
}

- (void)preferredChannelDescription:(AudioChannelDescription *)description forChannelIndex:(unsigned int)index
{
  selfCopy = self;
  AUAStream.preferredChannelDescription(_:forChannelIndex:)(description, index);
}

- (AUAStream)initWithDirection:(unsigned int)direction withPlugin:(id)plugin
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end