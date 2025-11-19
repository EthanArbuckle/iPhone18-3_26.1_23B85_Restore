@interface ObserverConfiguration
- (ObserverConfiguration)init;
- (ObserverConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ObserverConfiguration

- (ObserverConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  specialized Service.ObserverConfiguration.init(coder:)(v3);
  v5 = v4;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  Service.ObserverConfiguration.encode(with:)(v4);
}

- (ObserverConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end