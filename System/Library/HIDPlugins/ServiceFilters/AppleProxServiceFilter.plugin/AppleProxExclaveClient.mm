@interface AppleProxExclaveClient
- (BOOL)loadCalibration:(id)calibration;
- (_TtC22AppleProxServiceFilter22AppleProxExclaveClient)init;
@end

@implementation AppleProxExclaveClient

- (BOOL)loadCalibration:(id)calibration
{
  calibrationCopy = calibration;
  selfCopy = self;
  LOBYTE(self) = AppleProxExclaveClient.loadCalibration(_:)(calibrationCopy);

  return self & 1;
}

- (_TtC22AppleProxServiceFilter22AppleProxExclaveClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end