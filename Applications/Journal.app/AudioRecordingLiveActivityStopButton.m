@interface AudioRecordingLiveActivityStopButton
- (void)didMoveToWindow;
- (void)resetAnimation;
- (void)updateConfiguration;
@end

@implementation AudioRecordingLiveActivityStopButton

- (void)didMoveToWindow
{
  v2 = self;
  sub_10031CFCC();
}

- (void)updateConfiguration
{
  v2 = self;
  sub_10031D138();
}

- (void)resetAnimation
{
  v2 = self;
  sub_10031D2E8();
}

@end