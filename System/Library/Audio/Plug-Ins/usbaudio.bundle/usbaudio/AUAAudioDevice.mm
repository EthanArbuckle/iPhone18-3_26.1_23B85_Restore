@interface AUAAudioDevice
- (AUAAudioDevice)initWithDeviceUID:(id)d withPlugin:(id)plugin;
- (BOOL)changeClientDescription:(id)description;
- (BOOL)changeSamplingRate:(double)rate;
- (void)requestConfigurationChange:(id)change;
@end

@implementation AUAAudioDevice

- (void)requestConfigurationChange:(id)change
{
  v4 = _Block_copy(change);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_10001EDDC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  AUAAudioDevice.requestConfigurationChangeWithTrace(function:file:line:_:)(0xD00000000000001ELL, 0x800000010012AED0, 0xD00000000000001BLL, 0x800000010012AEF0, 822, v7, v6);

  sub_10001ED94(v7);
}

- (BOOL)changeSamplingRate:(double)rate
{
  selfCopy = self;
  AUAAudioDevice.changeSamplingRate(_:)(rate);

  return 1;
}

- (BOOL)changeClientDescription:(id)description
{
  if (description)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  v7.value._rawValue = v4;
  AUAAudioDevice.changeClientDescription(_:)(v7);

  return 0;
}

- (AUAAudioDevice)initWithDeviceUID:(id)d withPlugin:(id)plugin
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end