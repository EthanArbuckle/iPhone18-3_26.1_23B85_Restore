@interface APSDefaultConnectionRetryStateManager
- (APSDefaultConnectionRetryStateManager)init;
- (BOOL)shouldDelayNextReconnect;
- (double)currentDelay;
- (void)noteConnectionAttemptFailed;
- (void)noteConnectionAttemptStart;
- (void)noteConnectionEstablished;
- (void)notePresenceFailure;
- (void)notePresenceSuccess;
@end

@implementation APSDefaultConnectionRetryStateManager

- (double)currentDelay
{
  v2 = *((swift_isaMask & self->super.isa) + 0x88);
  selfCopy = self;
  v4 = COERCE_DOUBLE(v2());
  v6 = v5;
  v8 = v7;
  v9 = ~v7;

  if (!v9)
  {
    return 0.0;
  }

  if (v8)
  {
    return v4;
  }

  return v6;
}

- (BOOL)shouldDelayNextReconnect
{
  v2 = *((swift_isaMask & self->super.isa) + 0x88);
  selfCopy = self;
  *&v4 = COERCE_DOUBLE(v2());
  if (v6 == -1)
  {
    sub_100006B18();
    v12 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return 0;
  }

  else
  {
    v7 = *&v4;
    v8 = v5;
    v9 = v6;

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    return v10 > 0.0;
  }
}

- (APSDefaultConnectionRetryStateManager)init
{
  ObjectType = swift_getObjectType();
  type metadata accessor for DefaultsDebugOverrides();
  v3 = ClientIdentityMetric.__allocating_init()();
  v4 = (*(ObjectType + 296))(v3);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)noteConnectionAttemptStart
{
  selfCopy = self;
  v2 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  (*((swift_isaMask & selfCopy->super.isa) + 0x108))(v2);
}

- (void)noteConnectionEstablished
{
  v2 = *((swift_isaMask & self->super.isa) + 0x108);
  selfCopy = self;
  v2(0);
}

- (void)noteConnectionAttemptFailed
{
  selfCopy = self;
  sub_1000CA964();
}

- (void)notePresenceSuccess
{
  selfCopy = self;
  sub_1000CAB20();
}

- (void)notePresenceFailure
{
  selfCopy = self;
  sub_1000CACA4();
}

@end