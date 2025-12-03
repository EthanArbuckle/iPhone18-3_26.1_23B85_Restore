@interface CRLRateLimiter
- (_TtC8Freeform14CRLRateLimiter)init;
- (_TtC8Freeform14CRLRateLimiter)initWithIntervalInSeconds:(double)seconds;
- (void)exec:(id)exec;
@end

@implementation CRLRateLimiter

- (_TtC8Freeform14CRLRateLimiter)initWithIntervalInSeconds:(double)seconds
{
  v5 = OBJC_IVAR____TtC8Freeform14CRLRateLimiter_queue;
  sub_100618868();
  *(&self->super.isa + v5) = static OS_dispatch_queue.main.getter();
  v6 = (&self->super.isa + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
  *v6 = 0;
  v6[1] = 0;
  static Date.distantPast.getter();
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_interval) = seconds;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLRateLimiter();
  return [(CRLRateLimiter *)&v8 init];
}

- (void)exec:(id)exec
{
  v4 = _Block_copy(exec);
  _Block_copy(v4);
  selfCopy = self;
  sub_101109158(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (_TtC8Freeform14CRLRateLimiter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end