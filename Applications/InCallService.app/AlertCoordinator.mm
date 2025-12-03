@interface AlertCoordinator
+ (NSString)automaticallyInvokedKey;
- (BOOL)isAvailable;
- (BOOL)isBackgroundCountdownRunning;
- (BOOL)isStewieActive;
- (_TtP13InCallService24AlertCoordinatorDelegate_)delegate;
- (void)invokeAlertWithRequestUnlock:(BOOL)unlock automaticallyInvoked:(BOOL)invoked;
- (void)performAlertRequestWithRequestUnlock:(BOOL)unlock automaticallyInvoked:(BOOL)invoked;
- (void)refreshDelegateWithState;
- (void)setDelegate:(id)delegate;
- (void)startMonitoring;
- (void)stateChanged:(id)changed;
- (void)statusChanged:(int64_t)changed;
- (void)stopBackgroundCountdown;
- (void)stopMonitoring;
@end

@implementation AlertCoordinator

- (BOOL)isStewieActive
{
  selfCopy = self;
  v3 = sub_10000B3C8(&OBJC_IVAR____TtC13InCallService16AlertCoordinator_stateMonitor, &selRef_isAlertActive);

  return v3 & 1;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100029C54();
}

- (void)startMonitoring
{
  selfCopy = self;
  sub_10002AC0C();
}

- (void)refreshDelegateWithState
{
  selfCopy = self;
  sub_10002AEA4();
}

- (void)statusChanged:(int64_t)changed
{
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_10002B048();

  return v3 & 1;
}

- (void)stopMonitoring
{
  selfCopy = self;
  sub_100252C40();
}

- (void)invokeAlertWithRequestUnlock:(BOOL)unlock automaticallyInvoked:(BOOL)invoked
{
  selfCopy = self;
  sub_100252D18(unlock, invoked);
}

- (BOOL)isBackgroundCountdownRunning
{
  selfCopy = self;
  v3 = sub_10000B3C8(&OBJC_IVAR____TtC13InCallService16AlertCoordinator_backgroundCountdownTimer, &selRef_isValid);

  return v3 & 1;
}

- (void)stopBackgroundCountdown
{
  selfCopy = self;
  sub_100252E94();
}

- (void)performAlertRequestWithRequestUnlock:(BOOL)unlock automaticallyInvoked:(BOOL)invoked
{
  selfCopy = self;
  sub_100252F30(unlock, invoked);
}

- (void)stateChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_100253B24(changedCopy);
}

@end