@interface CNWallpaperSuggestionsGalleryViewModel
- (_TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel)init;
- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration;
- (void)editingViewControllerDidFinishShowingContent:(id)content;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
@end

@implementation CNWallpaperSuggestionsGalleryViewModel

- (void)editingViewController:(id)controller didFinishWithConfiguration:(id)configuration
{
  controllerCopy = controller;
  configurationCopy = configuration;
  selfCopy = self;
  sub_199B2F84C(configuration);
}

- (void)editingViewControllerDidFinishShowingContent:(id)content
{
  contentCopy = content;
  selfCopy = self;
  sub_199B2C42C(contentCopy);
}

- (_TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_199B2F57C(&unk_1EAF74FF0, type metadata accessor for InfoKey);
  v6 = sub_199DF9E9C();
  controllerCopy = controller;
  selfCopy = self;
  sub_199B2E6C0(controllerCopy, v6);
}

@end