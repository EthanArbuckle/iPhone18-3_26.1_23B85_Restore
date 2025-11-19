@interface FMDeviceImageDownloadOperation
- (_TtC6FindMy30FMDeviceImageDownloadOperation)init;
- (void)main;
- (void)setFinished:(BOOL)a3;
- (void)start;
@end

@implementation FMDeviceImageDownloadOperation

- (void)setFinished:(BOOL)a3
{
  v6 = self;
  v4 = String._bridgeToObjectiveC()();
  [(FMDeviceImageDownloadOperation *)v6 willChangeValueForKey:v4];

  *(&v6->super.super.isa + OBJC_IVAR____TtC6FindMy30FMDeviceImageDownloadOperation__isFinished) = a3;
  v5 = String._bridgeToObjectiveC()();
  [(FMDeviceImageDownloadOperation *)v6 didChangeValueForKey:v5];
}

- (void)main
{
  v2 = self;
  sub_1000BC2B8();
}

- (void)start
{
  v2 = self;
  sub_1000BC40C();
}

- (_TtC6FindMy30FMDeviceImageDownloadOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end