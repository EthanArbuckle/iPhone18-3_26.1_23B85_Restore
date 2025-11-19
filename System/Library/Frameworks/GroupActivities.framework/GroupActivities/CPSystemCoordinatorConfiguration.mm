@interface CPSystemCoordinatorConfiguration
- (CPSystemCoordinatorConfiguration)init;
- (CPSystemCoordinatorConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSystemCoordinatorConfiguration

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SystemCoordinatorConfiguration.encode(with:)(v4);
}

- (CPSystemCoordinatorConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized SystemCoordinatorConfiguration.init(coder:)(v3);

  return v4;
}

- (CPSystemCoordinatorConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end