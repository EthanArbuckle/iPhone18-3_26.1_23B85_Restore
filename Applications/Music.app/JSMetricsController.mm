@interface JSMetricsController
- (void)sessionDidConnect:(id)connect;
@end

@implementation JSMetricsController

- (void)sessionDidConnect:(id)connect
{
  if ((*(&self->super.super.isa + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) & 1) == 0)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) = 1;
  }
}

@end