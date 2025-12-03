@interface ObserverConfiguration
- (ObserverConfiguration)init;
- (ObserverConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ObserverConfiguration

- (ObserverConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  specialized Service.ObserverConfiguration.init(coder:)(coderCopy);
  v5 = v4;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Service.ObserverConfiguration.encode(with:)(coderCopy);
}

- (ObserverConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end