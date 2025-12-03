@interface CARWallpaperPreviewPanel
- (_TtC15CarPlaySettings24CARWallpaperPreviewPanel)initWithPanelController:(id)controller;
- (_TtC15CarPlaySettings24CARWallpaperPreviewPanel)initWithWallpaper:(id)wallpaper wallpaperPreferences:(id)preferences panelController:(id)controller completionHandler:(id)handler;
- (void)backButtonPressedWithSender:(id)sender;
- (void)invalidate;
- (void)sceneDidActivate;
- (void)sceneWillDeactivate;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CARWallpaperPreviewPanel

- (_TtC15CarPlaySettings24CARWallpaperPreviewPanel)initWithWallpaper:(id)wallpaper wallpaperPreferences:(id)preferences panelController:(id)controller completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
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
  preferencesCopy = preferences;
  swift_unknownObjectRetain();
  return CARWallpaperPreviewPanel.init(wallpaper:wallpaperPreferences:panelController:completionHandler:)(wallpaper, preferencesCopy, controller, v9, v10);
}

- (void)viewDidLoad
{
  selfCopy = self;
  CARWallpaperPreviewPanel.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  CARWallpaperPreviewPanel.viewWillAppear(_:)(appear);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CARWallpaperPreviewPanel();
  swift_unknownObjectRetain();
  v7 = v9.receiver;
  [(CARWallpaperPreviewPanel *)&v9 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  panelController = [v7 panelController];
  if (panelController)
  {
    [panelController dismissPanel:v7];
    swift_unknownObjectRelease();
  }

  [*&v7[OBJC_IVAR____TtC15CarPlaySettings24CARWallpaperPreviewPanel_statusBarStyleAssertion] invalidate];
  swift_unknownObjectRelease();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for CARWallpaperPreviewPanel();
  [(CARWallpaperPreviewPanel *)&v4 viewWillDisappear:disappearCopy];
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
  selfCopy = self;
  sub_10007CBA8();
}

- (void)sceneWillDeactivate
{
  selfCopy = self;
  sub_10007CCE8();
}

- (void)backButtonPressedWithSender:(id)sender
{
  selfCopy = self;
  sub_10007CF40();
}

- (_TtC15CarPlaySettings24CARWallpaperPreviewPanel)initWithPanelController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end