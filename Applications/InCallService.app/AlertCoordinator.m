@interface AlertCoordinator
+ (NSString)automaticallyInvokedKey;
- (BOOL)isAvailable;
- (BOOL)isBackgroundCountdownRunning;
- (BOOL)isStewieActive;
- (_TtP13InCallService24AlertCoordinatorDelegate_)delegate;
- (void)invokeAlertWithRequestUnlock:(BOOL)a3 automaticallyInvoked:(BOOL)a4;
- (void)performAlertRequestWithRequestUnlock:(BOOL)a3 automaticallyInvoked:(BOOL)a4;
- (void)refreshDelegateWithState;
- (void)setDelegate:(id)a3;
- (void)startMonitoring;
- (void)stateChanged:(id)a3;
- (void)statusChanged:(int64_t)a3;
- (void)stopBackgroundCountdown;
- (void)stopMonitoring;
@end

@implementation AlertCoordinator

- (BOOL)isStewieActive
{
  v2 = self;
  v3 = sub_10000B3C8(&OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor, &selRef_isAlertActive);

  return v3 & 1;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_100029C54();
}

- (void)startMonitoring
{
  v2 = self;
  sub_10002AC0C();
}

- (void)refreshDelegateWithState
{
  v2 = self;
  sub_10002AEA4();
}

- (void)statusChanged:(int64_t)a3
{
  v3 = self;
  sub_10002B304();
}

+ (NSString)automaticallyInvokedKey
{
  sub_100252634();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtP13InCallService24AlertCoordinatorDelegate_)delegate
{
  v2 = sub_1002526D4();

  return v2;
}

- (BOOL)isAvailable
{
  v2 = self;
  v3 = sub_10002B048();

  return v3 & 1;
}

- (void)stopMonitoring
{
  v2 = self;
  sub_100252C40();
}

- (void)invokeAlertWithRequestUnlock:(BOOL)a3 automaticallyInvoked:(BOOL)a4
{
  v6 = self;
  sub_100252D18(a3, a4);
}

- (BOOL)isBackgroundCountdownRunning
{
  v2 = self;
  v3 = sub_10000B3C8(&OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer, &selRef_isValid);

  return v3 & 1;
}

- (void)stopBackgroundCountdown
{
  v2 = self;
  sub_100252E94();
}

- (void)performAlertRequestWithRequestUnlock:(BOOL)a3 automaticallyInvoked:(BOOL)a4
{
  v6 = self;
  sub_100252F30(a3, a4);
}

- (void)stateChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100253B24(v4);
}

@end