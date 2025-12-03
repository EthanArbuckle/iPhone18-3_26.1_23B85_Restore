@interface ActivityCancelTouchAssertion
- (_TtC18ActivityUIServices28ActivityCancelTouchAssertion)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ActivityCancelTouchAssertion

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC18ActivityUIServices28ActivityCancelTouchAssertion_isInvalidated);
  selfCopy = self;
  v4 = selfCopy;
  if ((v2 & 1) == 0)
  {
    [(ActivityCancelTouchAssertion *)selfCopy invalidate];
  }

  v5.receiver = v4;
  v5.super_class = type metadata accessor for ActivityCancelTouchAssertion();
  [(ActivityCancelTouchAssertion *)&v5 dealloc];
}

- (_TtC18ActivityUIServices28ActivityCancelTouchAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)invalidate
{
  selfCopy = self;
  sub_18E628780();
}

@end