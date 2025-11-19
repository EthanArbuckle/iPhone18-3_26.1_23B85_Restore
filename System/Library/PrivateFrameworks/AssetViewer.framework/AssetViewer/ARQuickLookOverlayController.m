@interface ARQuickLookOverlayController
- (ASVTrackingStateStatusLabel)statusPill;
- (UIButton)debugActionsButton;
- (UIButton)fileARadarButton;
- (_TtC11AssetViewer28ARQuickLookOverlayController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)autoHide2DControls;
- (void)dismissButtonPressed;
- (void)displayModeChanged;
- (void)dynamicShutterControlDidShortPress:(id)a3;
- (void)dynamicShutterControlDidStart:(id)a3;
- (void)dynamicShutterControlDidStop:(id)a3;
- (void)enableWorldModeControl:(BOOL)a3;
- (void)handleLongPressGesture:(id)a3;
- (void)loadView;
- (void)setDebugActionsButton:(id)a3;
- (void)setFileARadarButton:(id)a3;
- (void)setStatusPill:(id)a3;
- (void)shareButtonPressed;
- (void)startAutoHideControlsTimer;
- (void)stopAutoHideControlsTimerWithShouldRestart:(BOOL)a3;
- (void)takePicture;
- (void)trackedRaycastStateDidChange:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateStatusPill;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ARQuickLookOverlayController

- (UIButton)debugActionsButton
{
  v2 = self;
  v3 = sub_2412F4E50();

  return v3;
}

- (void)setDebugActionsButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButton) = a3;
  v3 = a3;
}

- (UIButton)fileARadarButton
{
  v2 = self;
  v3 = sub_2412F5050();

  return v3;
}

- (void)setFileARadarButton:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___fileARadarButton);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___fileARadarButton) = a3;
  v3 = a3;
}

- (ASVTrackingStateStatusLabel)statusPill
{
  v2 = self;
  v3 = sub_2412F577C();

  return v3;
}

- (void)setStatusPill:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___statusPill);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___statusPill) = a3;
  v3 = a3;
}

- (void)loadView
{
  type metadata accessor for ARQuickLookOverlayView();
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = self;
  v4 = [v3 init];
  [(ARQuickLookOverlayController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2412F5980();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_2412F7410();
}

- (void)takePicture
{
  v2 = self;
  sub_2412F8364();
}

- (void)handleLongPressGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2412F8658(v4);
}

- (void)dismissButtonPressed
{
  v2 = self;
  sub_2412F88D0();
}

- (void)shareButtonPressed
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
    sub_24129F8C0();
    swift_unknownObjectRelease();
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2412F8A6C(a3);
}

- (void)displayModeChanged
{
  v2 = self;
  sub_2412F97FC();
}

- (void)startAutoHideControlsTimer
{
  v2 = self;
  sub_2412F9BDC();
}

- (void)stopAutoHideControlsTimerWithShouldRestart:(BOOL)a3
{
  v4 = self;
  sub_2412F9D1C(a3);
}

- (void)autoHide2DControls
{
  v2 = self;
  sub_2412F9E10();
}

- (void)enableWorldModeControl:(BOOL)a3
{
  v4 = self;
  sub_2412FA160(a3);
}

- (void)updateStatusPill
{
  v2 = self;
  sub_2412FAFE8();
}

- (_TtC11AssetViewer28ARQuickLookOverlayController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)dynamicShutterControlDidShortPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2412F8364();
}

- (void)dynamicShutterControlDidStart:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2412FC864();
}

- (void)dynamicShutterControlDidStop:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = self;
  if (Strong)
  {
    sub_2412B07F8();
    swift_unknownObjectRelease();
  }

  [(ARQuickLookOverlayController *)v5 startAutoHideControlsTimer];
}

- (void)trackedRaycastStateDidChange:(id)a3
{
  v4 = sub_24135125C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135123C();
  v8 = self;
  sub_24130FDD8();

  (*(v5 + 8))(v7, v4);
}

@end