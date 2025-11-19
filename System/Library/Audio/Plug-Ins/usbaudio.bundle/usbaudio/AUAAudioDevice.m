@interface AUAAudioDevice
- (AUAAudioDevice)initWithDeviceUID:(id)a3 withPlugin:(id)a4;
- (BOOL)changeClientDescription:(id)a3;
- (BOOL)changeSamplingRate:(double)a3;
- (void)requestConfigurationChange:(id)a3;
@end

@implementation AUAAudioDevice

- (void)requestConfigurationChange:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
  AUAAudioDevice.requestConfigurationChangeWithTrace(function:file:line:_:)(0xD00000000000001ELL, 0x800000010012AED0, 0xD00000000000001BLL, 0x800000010012AEF0, 822, v7, v6);

  sub_10001ED94(v7);
}

- (BOOL)changeSamplingRate:(double)a3
{
  v4 = self;
  AUAAudioDevice.changeSamplingRate(_:)(a3);

  return 1;
}

- (BOOL)changeClientDescription:(id)a3
{
  if (a3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  v7.value._rawValue = v4;
  AUAAudioDevice.changeClientDescription(_:)(v7);

  return 0;
}

- (AUAAudioDevice)initWithDeviceUID:(id)a3 withPlugin:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end