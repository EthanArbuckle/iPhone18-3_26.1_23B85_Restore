@interface CNExistingWallpaperEditorCoordinator
- (_TtC10ContactsUI36CNExistingWallpaperEditorCoordinator)init;
- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration;
@end

@implementation CNExistingWallpaperEditorCoordinator

- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  selfCopy = self;
  sub_199AFFC10(configuration);
}

- (_TtC10ContactsUI36CNExistingWallpaperEditorCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end