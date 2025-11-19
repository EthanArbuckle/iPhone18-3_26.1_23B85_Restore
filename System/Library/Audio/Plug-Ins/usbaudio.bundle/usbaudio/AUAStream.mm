@interface AUAStream
- (AUAStream)initWithDirection:(unsigned int)a3 withPlugin:(id)a4;
- (BOOL)changePhysicalFormat:(id)a3;
- (BOOL)deviceChangedToSamplingRate:(double)a3;
- (id)channelCategoryForChannelIndex:(unsigned int)a3;
- (id)channelNameForChannelIndex:(unsigned int)a3;
- (id)channelNumberForChannelIndex:(unsigned int)a3;
- (void)preferredChannelDescription:(AudioChannelDescription *)a3 forChannelIndex:(unsigned int)a4;
- (void)startStream;
- (void)stopStream;
@end

@implementation AUAStream

- (void)startStream
{
  v2 = self;
  AUAStream.start()();
}

- (void)stopStream
{
  v2 = self;
  AUAStream.stop()();
}

- (BOOL)deviceChangedToSamplingRate:(double)a3
{
  v4 = self;
  v5 = AUAStream.deviceChanged(toSamplingRate:)(a3);

  return v5;
}

- (BOOL)changePhysicalFormat:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = AUAStream.changePhysicalFormat(_:)(v3);

  return v3 & 1;
}

- (id)channelNameForChannelIndex:(unsigned int)a3
{
  v4 = self;
  object = AUAStream.channelName(forChannelIndex:)(a3).value._object;

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

- (id)channelCategoryForChannelIndex:(unsigned int)a3
{
  v3 = OBJC_IVAR___AUAStream_logID;
  v4 = qword_100173CC0;
  v5 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v6, qword_100179508);
  sub_100039F58(1, &v5->ASDStream_opaque[v3], 0xD00000000000001ELL, 0x800000010012F280);

  return 0;
}

- (id)channelNumberForChannelIndex:(unsigned int)a3
{
  v3 = OBJC_IVAR___AUAStream_logID;
  v4 = qword_100173CC0;
  v5 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v6, qword_100179508);
  sub_100039F58(1, &v5->ASDStream_opaque[v3], 0xD00000000000001CLL, 0x800000010012F2A0);

  return 0;
}

- (void)preferredChannelDescription:(AudioChannelDescription *)a3 forChannelIndex:(unsigned int)a4
{
  v6 = self;
  AUAStream.preferredChannelDescription(_:forChannelIndex:)(a3, a4);
}

- (AUAStream)initWithDirection:(unsigned int)a3 withPlugin:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end