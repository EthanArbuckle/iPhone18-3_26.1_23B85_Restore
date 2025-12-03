@interface ObserverUpdate
- (ObserverUpdate)init;
- (ObserverUpdate)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ObserverUpdate

- (ObserverUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized Service.ObserverUpdate.init(coder:)(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Service.ObserverUpdate.encode(with:)(coderCopy);
}

- (ObserverUpdate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end