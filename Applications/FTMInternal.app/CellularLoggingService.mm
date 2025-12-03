@interface CellularLoggingService
- (void)configurationListAvailable:(id)available;
- (void)dealloc;
- (void)didCollectLogs:(id)logs errorCode:(id)code;
- (void)didStateChanged:(int64_t)changed errorCode:(id)code config:(id)config;
@end

@implementation CellularLoggingService

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:UIApplicationWillTerminateNotification];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for CellularLoggingService();
  [(CellularLoggingService *)&v6 dealloc];
}

- (void)didCollectLogs:(id)logs errorCode:(id)code
{
  if (logs)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  codeCopy = code;
  selfCopy = self;
  sub_100283300(v6, code);
}

- (void)didStateChanged:(int64_t)changed errorCode:(id)code config:(id)config
{
  configCopy = config;
  selfCopy = self;
  codeCopy = code;
  sub_10028358C(changed, code, config);
}

- (void)configurationListAvailable:(id)available
{
  if (available)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_100283958(v4);
}

@end