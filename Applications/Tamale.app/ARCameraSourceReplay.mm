@interface ARCameraSourceReplay
- (_TtC6Tamale20ARCameraSourceReplay)init;
- (void)replayConfigurationDidFinishReplaying:(id)replaying;
@end

@implementation ARCameraSourceReplay

- (void)replayConfigurationDidFinishReplaying:(id)replaying
{
  replayingCopy = replaying;
  selfCopy = self;
  sub_100091D3C();
}

- (_TtC6Tamale20ARCameraSourceReplay)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end