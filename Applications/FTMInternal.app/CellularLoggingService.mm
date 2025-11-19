@interface CellularLoggingService
- (void)configurationListAvailable:(id)a3;
- (void)dealloc;
- (void)didCollectLogs:(id)a3 errorCode:(id)a4;
- (void)didStateChanged:(int64_t)a3 errorCode:(id)a4 config:(id)a5;
@end

@implementation CellularLoggingService

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:UIApplicationWillTerminateNotification];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for CellularLoggingService();
  [(CellularLoggingService *)&v6 dealloc];
}

- (void)didCollectLogs:(id)a3 errorCode:(id)a4
{
  if (a3)
  {
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a4;
  v8 = self;
  sub_100283300(v6, a4);
}

- (void)didStateChanged:(int64_t)a3 errorCode:(id)a4 config:(id)a5
{
  v9 = a5;
  v10 = self;
  v11 = a4;
  sub_10028358C(a3, a4, a5);
}

- (void)configurationListAvailable:(id)a3
{
  if (a3)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_100283958(v4);
}

@end