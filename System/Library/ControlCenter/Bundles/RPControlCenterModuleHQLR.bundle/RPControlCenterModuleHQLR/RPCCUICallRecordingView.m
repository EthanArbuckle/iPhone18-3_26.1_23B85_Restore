@interface RPCCUICallRecordingView
- (_TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView)initWithFrame:(CGRect)a3;
- (void)setContinuousSliderCornerRadius:(double)a3;
- (void)setCountdownState:(int64_t)a3;
- (void)setTimerLabel:(id)a3;
- (void)setupVideoEffectsPreviewForAppear;
- (void)teardownVideoEffectsPreviewForDisappear;
- (void)updateCallRecordingState:(int64_t)a3;
@end

@implementation RPCCUICallRecordingView

- (void)setContinuousSliderCornerRadius:(double)a3
{
  v4 = *&stru_B8.segname[(swift_isaMask & self->super.super.super.super.isa) - 8];
  v5 = self;
  v4(a3);
}

- (void)updateCallRecordingState:(int64_t)a3
{
  v4 = self;
  RPCCUICallRecordingView.updateCallRecordingState(_:)(a3);
}

- (void)setCountdownState:(int64_t)a3
{
  v4 = self;
  RPCCUICallRecordingView.setCountdownState(_:)(a3);
}

- (void)setTimerLabel:(id)a3
{
  v4 = sub_21C6C();
  v6 = v5;
  v7 = *(**(&self->super.super.super.super.isa + OBJC_IVAR____TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView_viewModel) + 352);
  v8 = self;

  v7(v4, v6);
}

- (void)setupVideoEffectsPreviewForAppear
{
  v2 = self;
  RPCCUICallRecordingView.setupVideoEffectsPreviewForAppear()();
}

- (void)teardownVideoEffectsPreviewForDisappear
{
  v2 = self;
  RPCCUICallRecordingView.teardownVideoEffectsPreviewForDisappear()();
}

- (_TtC25RPControlCenterModuleHQLR23RPCCUICallRecordingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end