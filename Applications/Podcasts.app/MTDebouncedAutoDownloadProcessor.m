@interface MTDebouncedAutoDownloadProcessor
+ (MTDebouncedAutoDownloadProcessor)sharedInstance;
- (BOOL)isRunning;
- (BOOL)start;
- (MTDebouncedAutoDownloadProcessor)init;
- (void)setIsRunning:(BOOL)a3;
@end

@implementation MTDebouncedAutoDownloadProcessor

+ (MTDebouncedAutoDownloadProcessor)sharedInstance
{
  if (qword_100572840 != -1)
  {
    swift_once();
  }

  v3 = static DebouncedAutoDownloadProcessor.sharedInstance;

  return v3;
}

- (BOOL)isRunning
{
  v3 = OBJC_IVAR___MTDebouncedAutoDownloadProcessor_isRunning;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsRunning:(BOOL)a3
{
  v5 = OBJC_IVAR___MTDebouncedAutoDownloadProcessor_isRunning;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)start
{
  v2 = self;
  sub_1000483AC();

  return 1;
}

- (MTDebouncedAutoDownloadProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end