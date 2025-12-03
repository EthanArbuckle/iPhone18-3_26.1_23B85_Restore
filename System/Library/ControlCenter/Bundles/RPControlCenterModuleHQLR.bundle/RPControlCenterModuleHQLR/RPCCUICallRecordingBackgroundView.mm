@interface RPCCUICallRecordingBackgroundView
- (_TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView)initWithCoder:(id)coder;
- (_TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)updateRecordingState;
@end

@implementation RPCCUICallRecordingBackgroundView

- (_TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView)initWithCoder:(id)coder
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
  selfCopy = self;
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [(RPCCUICallRecordingBackgroundView *)selfCopy bounds];
    [v4 setFrame:?];
  }

  else
  {
    __break(1u);
  }
}

- (void)updateRecordingState
{
  selfCopy = self;
  sub_11FA0();
}

- (_TtC25RPControlCenterModuleHQLR33RPCCUICallRecordingBackgroundView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end