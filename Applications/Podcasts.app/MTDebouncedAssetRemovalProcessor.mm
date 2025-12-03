@interface MTDebouncedAssetRemovalProcessor
+ (MTDebouncedAssetRemovalProcessor)sharedInstance;
- (BOOL)isRunning;
- (BOOL)start;
- (MTDebouncedAssetRemovalProcessor)init;
- (void)setIsRunning:(BOOL)running;
@end

@implementation MTDebouncedAssetRemovalProcessor

+ (MTDebouncedAssetRemovalProcessor)sharedInstance
{
  if (qword_100572758 != -1)
  {
    swift_once();
  }

  v3 = static DebouncedAssetRemovalProcessor.sharedInstance;

  return v3;
}

- (BOOL)isRunning
{
  v3 = OBJC_IVAR___MTDebouncedAssetRemovalProcessor_isRunning;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsRunning:(BOOL)running
{
  v5 = OBJC_IVAR___MTDebouncedAssetRemovalProcessor_isRunning;
  swift_beginAccess();
  *(&self->super.isa + v5) = running;
}

- (BOOL)start
{
  selfCopy = self;
  sub_100048A4C();

  return 1;
}

- (MTDebouncedAssetRemovalProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end