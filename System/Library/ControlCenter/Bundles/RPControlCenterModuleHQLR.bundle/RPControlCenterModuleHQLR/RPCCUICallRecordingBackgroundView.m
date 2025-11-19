@interface RPCCUICallRecordingBackgroundView
- (_TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView)initWithCoder:(id)a3;
- (_TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)updateRecordingState;
@end

@implementation RPCCUICallRecordingBackgroundView

- (_TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView_viewModel;
  type metadata accessor for CallRecordingStartButtonViewModel(0);
  *(&self->super.super.super.isa + v4) = sub_D440();
  result = sub_21D7C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView_hostingViewController);
  v5 = self;
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [(RPCCUICallRecordingBackgroundView *)v5 bounds];
    [v4 setFrame:?];
  }

  else
  {
    __break(1u);
  }
}

- (void)updateRecordingState
{
  v2 = self;
  sub_11FA0();
}

- (_TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end