@interface CARWallpaperPreviewPanel
- (_TtC15CarPlaySettings24CARWallpaperPreviewPanel)initWithPanelController:(id)a3;
- (_TtC15CarPlaySettings24CARWallpaperPreviewPanel)initWithWallpaper:(id)a3 wallpaperPreferences:(id)a4 panelController:(id)a5 completionHandler:(id)a6;
- (void)backButtonPressedWithSender:(id)a3;
- (void)invalidate;
- (void)sceneDidActivate;
- (void)sceneWillDeactivate;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CARWallpaperPreviewPanel

- (_TtC15CarPlaySettings24CARWallpaperPreviewPanel)initWithWallpaper:(id)a3 wallpaperPreferences:(id)a4 panelController:(id)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_10007D904;
  }

  else
  {
    v10 = 0;
  }

  swift_unknownObjectRetain();
  v11 = a4;
  swift_unknownObjectRetain();
  return CARWallpaperPreviewPanel.init(wallpaper:wallpaperPreferences:panelController:completionHandler:)(a3, v11, a5, v9, v10);
}

- (void)viewDidLoad
{
  v2 = self;
  CARWallpaperPreviewPanel.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  CARWallpaperPreviewPanel.viewWillAppear(_:)(a3);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CARWallpaperPreviewPanel();
  swift_unknownObjectRetain();
  v7 = v9.receiver;
  [(CARWallpaperPreviewPanel *)&v9 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = [v7 panelController];
  if (v8)
  {
    [v8 dismissPanel:v7];
    swift_unknownObjectRelease();
  }

  [*&v7[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion] invalidate];
  swift_unknownObjectRelease();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CARWallpaperPreviewPanel();
  [(CARWallpaperPreviewPanel *)&v4 viewWillDisappear:v3];
}

- (void)invalidate
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CARWallpaperPreviewPanel();
  v2 = v5.receiver;
  [(CARSettingsPanel *)&v5 invalidate];
  [*&v2[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion] invalidate];
  v3 = *&v2[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_iconCustomizationModel];
  if (v3)
  {
    v4 = v3;
    sub_100037484();

    v2 = v4;
  }
}

- (void)sceneDidActivate
{
  v2 = self;
  sub_10007CBA8();
}

- (void)sceneWillDeactivate
{
  v2 = self;
  sub_10007CCE8();
}

- (void)backButtonPressedWithSender:(id)a3
{
  v3 = self;
  sub_10007CF40();
}

- (_TtC15CarPlaySettings24CARWallpaperPreviewPanel)initWithPanelController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end