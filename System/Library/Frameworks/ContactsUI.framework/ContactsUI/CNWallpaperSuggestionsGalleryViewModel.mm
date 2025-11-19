@interface CNWallpaperSuggestionsGalleryViewModel
- (_TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel)init;
- (void)editingViewController:(id)a3 didFinishWithConfiguration:(id)a4;
- (void)editingViewControllerDidFinishShowingContent:(id)a3;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
@end

@implementation CNWallpaperSuggestionsGalleryViewModel

- (void)editingViewController:(id)a3 didFinishWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_199B2F84C(a4);
}

- (void)editingViewControllerDidFinishShowingContent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_199B2C42C(v4);
}

- (_TtC10ContactsUI38CNWallpaperSuggestionsGalleryViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_199B2F57C(&unk_1EAF74FF0, type metadata accessor for InfoKey);
  v6 = sub_199DF9E9C();
  v7 = a3;
  v8 = self;
  sub_199B2E6C0(v7, v6);
}

@end