@interface FMDeviceImageDownloadOperation
- (_TtC6FindMy30FMDeviceImageDownloadOperation)init;
- (void)main;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation FMDeviceImageDownloadOperation

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  [(FMDeviceImageDownloadOperation *)selfCopy willChangeValueForKey:v4];

  *(&selfCopy->super.super.isa + OBJC_IVAR____TtC6FindMy30FMDeviceImageDownloadOperation__isFinished) = finished;
  v5 = String._bridgeToObjectiveC()();
  [(FMDeviceImageDownloadOperation *)selfCopy didChangeValueForKey:v5];
}

- (void)main
{
  selfCopy = self;
  sub_1000BC2B8();
}

- (void)start
{
  selfCopy = self;
  sub_1000BC40C();
}

- (_TtC6FindMy30FMDeviceImageDownloadOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end