@interface CancellableAssertion
- (_TtC18ActivityUIServices20CancellableAssertion)init;
- (void)invalidate;
@end

@implementation CancellableAssertion

- (void)invalidate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices20CancellableAssertion_token);
  v3 = self;

  sub_18E65F730();
}

- (_TtC18ActivityUIServices20CancellableAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end