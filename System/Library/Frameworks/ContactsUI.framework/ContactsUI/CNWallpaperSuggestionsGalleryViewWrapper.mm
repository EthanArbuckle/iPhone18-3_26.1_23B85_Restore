@interface CNWallpaperSuggestionsGalleryViewWrapper
- (UIViewController)hostingController;
- (_TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper)init;
- (_TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper)initWithDelegate:(id)a3 windowScene:(id)a4 mode:(int64_t)a5 contact:(id)a6 isEditingSNaP:(BOOL)a7 isOnboarding:(BOOL)a8 photoLibraryAssetID:(id)a9;
- (void)setHostingController:(id)a3;
@end

@implementation CNWallpaperSuggestionsGalleryViewWrapper

- (UIViewController)hostingController
{
  v3 = OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHostingController:(id)a3
{
  v5 = OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (_TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper)initWithDelegate:(id)a3 windowScene:(id)a4 mode:(int64_t)a5 contact:(id)a6 isEditingSNaP:(BOOL)a7 isOnboarding:(BOOL)a8 photoLibraryAssetID:(id)a9
{
  v9 = a8;
  v10 = a7;
  if (a9)
  {
    v15 = sub_199DF9F8C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  swift_unknownObjectRetain();
  v18 = a4;
  v19 = a6;
  v20 = sub_199B5739C(a3, a4, a5, v19, v10, v9, v15, v17);
  swift_unknownObjectRelease();

  return v20;
}

- (_TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end