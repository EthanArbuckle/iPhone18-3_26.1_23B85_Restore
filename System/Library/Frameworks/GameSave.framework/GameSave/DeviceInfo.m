@interface DeviceInfo
- (DeviceInfo)init;
- (DeviceInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DeviceInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  DeviceInfo.encode(with:)(v4);
}

- (DeviceInfo)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized DeviceInfo.init(coder:)();

  return v4;
}

- (DeviceInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end