@interface ObserverUpdate
- (ObserverUpdate)init;
- (ObserverUpdate)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ObserverUpdate

- (ObserverUpdate)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = specialized Service.ObserverUpdate.init(coder:)(v3);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  Service.ObserverUpdate.encode(with:)(v4);
}

- (ObserverUpdate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end