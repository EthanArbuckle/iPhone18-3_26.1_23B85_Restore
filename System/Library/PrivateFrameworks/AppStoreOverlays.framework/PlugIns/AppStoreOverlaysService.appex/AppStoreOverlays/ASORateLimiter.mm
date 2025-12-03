@interface ASORateLimiter
- (ASORateLimiter)init;
- (ASORateLimiter)initWithRequestsPerSecond:(double)second timeWindow:(double)window;
- (BOOL)recordAttempt;
@end

@implementation ASORateLimiter

- (ASORateLimiter)initWithRequestsPerSecond:(double)second timeWindow:(double)window
{
  v7 = objc_allocWithZone(type metadata accessor for RateLimiter());
  sub_10000F970(v7, second, window);
  v9 = v8;
  swift_getObjectType();
  v10 = *((swift_isaMask & self->super.isa) + 0x30);
  v11 = *((swift_isaMask & self->super.isa) + 0x34);
  swift_deallocPartialClassInstance();
  return v9;
}

- (BOOL)recordAttempt
{
  selfCopy = self;
  v3 = sub_10000FC74();

  return v3;
}

- (ASORateLimiter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end