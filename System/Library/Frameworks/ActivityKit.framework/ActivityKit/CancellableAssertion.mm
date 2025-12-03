@interface CancellableAssertion
- (_TtC11ActivityKit20CancellableAssertion)init;
- (void)cancel;
@end

@implementation CancellableAssertion

- (void)cancel
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC11ActivityKit20CancellableAssertion_token);
  selfCopy = self;

  sub_1A2D080D4();
}

- (_TtC11ActivityKit20CancellableAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end