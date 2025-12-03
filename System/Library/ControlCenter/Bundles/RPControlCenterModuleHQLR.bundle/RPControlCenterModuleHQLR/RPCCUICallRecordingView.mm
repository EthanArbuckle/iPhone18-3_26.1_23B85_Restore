@interface RPCCUICallRecordingView
- (_TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView)initWithFrame:(CGRect)frame;
- (void)setContinuousSliderCornerRadius:(double)radius;
- (void)setCountdownState:(int64_t)state;
- (void)setTimerLabel:(id)label;
- (void)setupVideoEffectsPreviewForAppear;
- (void)teardownVideoEffectsPreviewForDisappear;
- (void)updateCallRecordingState:(int64_t)state;
@end

@implementation RPCCUICallRecordingView

- (void)setContinuousSliderCornerRadius:(double)radius
{
  v4 = *&stru_B8.segname[(swift_isaMask & self->super.super.super.super.isa) - 8];
  selfCopy = self;
  v4(radius);
}

- (void)updateCallRecordingState:(int64_t)state
{
  selfCopy = self;
  RPCCUICallRecordingView.updateCallRecordingState(_:)(state);
}

- (void)setCountdownState:(int64_t)state
{
  selfCopy = self;
  RPCCUICallRecordingView.setCountdownState(_:)(state);
}

- (void)setTimerLabel:(id)label
{
  v4 = sub_21C6C();
  v6 = v5;
  v7 = *(**(&self->super.super.super.super.isa + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel) + 352);
  selfCopy = self;

  v7(v4, v6);
}

- (void)setupVideoEffectsPreviewForAppear
{
  selfCopy = self;
  RPCCUICallRecordingView.setupVideoEffectsPreviewForAppear()();
}

- (void)teardownVideoEffectsPreviewForDisappear
{
  selfCopy = self;
  RPCCUICallRecordingView.teardownVideoEffectsPreviewForDisappear()();
}

- (_TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end