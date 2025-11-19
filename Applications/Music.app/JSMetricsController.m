@interface JSMetricsController
- (void)sessionDidConnect:(id)a3;
@end

@implementation JSMetricsController

- (void)sessionDidConnect:(id)a3
{
  if ((*(&self->super.super.isa + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) & 1) == 0)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC11MusicJSCore19JSMetricsController_carPlayMetricsRecordingState) = 1;
  }
}

@end