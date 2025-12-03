@interface CPSystemCoordinatorState
- (CPSystemCoordinatorState)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSystemCoordinatorState

- (int64_t)hash
{
  selfCopy = self;
  v3 = SystemCoordinatorState.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SystemCoordinatorState.encode(with:)(coderCopy);
}

- (CPSystemCoordinatorState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end