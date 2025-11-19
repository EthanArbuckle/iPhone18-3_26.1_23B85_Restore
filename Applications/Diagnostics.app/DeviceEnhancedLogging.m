@interface DeviceEnhancedLogging
- (DADeviceDelegate)delegate;
- (void)end;
- (void)setDelegate:(id)a3;
@end

@implementation DeviceEnhancedLogging

- (DADeviceDelegate)delegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setDelegate:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_delegate) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)end
{
  v3 = OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC11Diagnostics21DeviceEnhancedLogging_durationRemainingUpdateTimer);
  v5 = self;
  [v4 invalidate];
  v6 = *(&self->super.isa + v3);
  *(&self->super.isa + v3) = 0;
}

@end