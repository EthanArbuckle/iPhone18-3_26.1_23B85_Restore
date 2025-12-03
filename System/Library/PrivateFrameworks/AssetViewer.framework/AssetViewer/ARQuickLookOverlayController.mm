@interface ARQuickLookOverlayController
- (ASVTrackingStateStatusLabel)statusPill;
- (UIButton)debugActionsButton;
- (UIButton)fileARadarButton;
- (_TtC11AssetViewer28ARQuickLookOverlayController)initWithNibName:(id)name bundle:(id)bundle;
- (void)autoHide2DControls;
- (void)dismissButtonPressed;
- (void)displayModeChanged;
- (void)dynamicShutterControlDidShortPress:(id)press;
- (void)dynamicShutterControlDidStart:(id)start;
- (void)dynamicShutterControlDidStop:(id)stop;
- (void)enableWorldModeControl:(BOOL)control;
- (void)handleLongPressGesture:(id)gesture;
- (void)loadView;
- (void)setDebugActionsButton:(id)button;
- (void)setFileARadarButton:(id)button;
- (void)setStatusPill:(id)pill;
- (void)shareButtonPressed;
- (void)startAutoHideControlsTimer;
- (void)stopAutoHideControlsTimerWithShouldRestart:(BOOL)restart;
- (void)takePicture;
- (void)trackedRaycastStateDidChange:(id)change;
- (void)traitCollectionDidChange:(id)change;
- (void)updateStatusPill;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ARQuickLookOverlayController

- (UIButton)debugActionsButton
{
  selfCopy = self;
  v3 = sub_2412F4E50();

  return v3;
}

- (void)setDebugActionsButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButton) = button;
  buttonCopy = button;
}

- (UIButton)fileARadarButton
{
  selfCopy = self;
  v3 = sub_2412F5050();

  return v3;
}

- (void)setFileARadarButton:(id)button
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___fileARadarButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___fileARadarButton) = button;
  buttonCopy = button;
}

- (ASVTrackingStateStatusLabel)statusPill
{
  selfCopy = self;
  v3 = sub_2412F577C();

  return v3;
}

- (void)setStatusPill:(id)pill
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___statusPill);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___statusPill) = pill;
  pillCopy = pill;
}

- (void)loadView
{
  type metadata accessor for ARQuickLookOverlayView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  selfCopy = self;
  v4 = [v3 init];
  [(ARQuickLookOverlayController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2412F5980();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_2412F7410();
}

- (void)takePicture
{
  selfCopy = self;
  sub_2412F8364();
}

- (void)handleLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_2412F8658(gestureCopy);
}

- (void)dismissButtonPressed
{
  selfCopy = self;
  sub_2412F88D0();
}

- (void)shareButtonPressed
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_24129F8C0();
    swift_unknownObjectRelease();
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2412F8A6C(change);
}

- (void)displayModeChanged
{
  selfCopy = self;
  sub_2412F97FC();
}

- (void)startAutoHideControlsTimer
{
  selfCopy = self;
  sub_2412F9BDC();
}

- (void)stopAutoHideControlsTimerWithShouldRestart:(BOOL)restart
{
  selfCopy = self;
  sub_2412F9D1C(restart);
}

- (void)autoHide2DControls
{
  selfCopy = self;
  sub_2412F9E10();
}

- (void)enableWorldModeControl:(BOOL)control
{
  selfCopy = self;
  sub_2412FA160(control);
}

- (void)updateStatusPill
{
  selfCopy = self;
  sub_2412FAFE8();
}

- (_TtC11AssetViewer28ARQuickLookOverlayController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dynamicShutterControlDidShortPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_2412F8364();
}

- (void)dynamicShutterControlDidStart:(id)start
{
  startCopy = start;
  selfCopy = self;
  sub_2412FC864();
}

- (void)dynamicShutterControlDidStop:(id)stop
{
  Strong = swift_unknownObjectWeakLoadStrong();
  selfCopy = self;
  if (Strong)
  {
    sub_2412B07F8();
    swift_unknownObjectRelease();
  }

  [(ARQuickLookOverlayController *)selfCopy startAutoHideControlsTimer];
}

- (void)trackedRaycastStateDidChange:(id)change
{
  v4 = sub_24135125C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135123C();
  selfCopy = self;
  sub_24130FDD8();

  (*(v5 + 8))(v7, v4);
}

@end