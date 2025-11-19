@interface AppleProxExclaveClient
- (BOOL)loadCalibration:(id)a3;
- (_TtC22AppleProxServiceFilter22AppleProxExclaveClient)init;
@end

@implementation AppleProxExclaveClient

- (BOOL)loadCalibration:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = AppleProxExclaveClient.loadCalibration(_:)(v4);

  return self & 1;
}

- (_TtC22AppleProxServiceFilter22AppleProxExclaveClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end