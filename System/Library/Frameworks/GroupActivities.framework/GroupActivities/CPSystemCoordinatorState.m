@interface CPSystemCoordinatorState
- (CPSystemCoordinatorState)init;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPSystemCoordinatorState

- (int64_t)hash
{
  v2 = self;
  v3 = SystemCoordinatorState.hash.getter();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SystemCoordinatorState.encode(with:)(v4);
}

- (CPSystemCoordinatorState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end