@interface CPSystemCoordinatorConfiguration
- (CPSystemCoordinatorConfiguration)init;
- (CPSystemCoordinatorConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSystemCoordinatorConfiguration

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SystemCoordinatorConfiguration.encode(with:)(coderCopy);
}

- (CPSystemCoordinatorConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized SystemCoordinatorConfiguration.init(coder:)(coderCopy);

  return v4;
}

- (CPSystemCoordinatorConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end