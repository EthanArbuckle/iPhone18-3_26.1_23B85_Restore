@interface CRLRateLimiter
- (_TtC8Freeform14CRLRateLimiter)init;
- (_TtC8Freeform14CRLRateLimiter)initWithIntervalInSeconds:(double)a3;
- (void)exec:(id)a3;
@end

@implementation CRLRateLimiter

- (_TtC8Freeform14CRLRateLimiter)initWithIntervalInSeconds:(double)a3
{
  v5 = OBJC_IVAR____TtC8Freeform14CRLRateLimiter_queue;
  sub_100618868();
  *(&self->super.isa + v5) = static OS_dispatch_queue.main.getter();
  v6 = (&self->super.isa + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_currentExecBlock);
  *v6 = 0;
  v6[1] = 0;
  static Date.distantPast.getter();
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform14CRLRateLimiter_interval) = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLRateLimiter();
  return [(CRLRateLimiter *)&v8 init];
}

- (void)exec:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_101109158(v5, v4);
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