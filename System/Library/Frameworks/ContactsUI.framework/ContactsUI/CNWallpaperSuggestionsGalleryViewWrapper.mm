@interface CNWallpaperSuggestionsGalleryViewWrapper
- (UIViewController)hostingController;
- (_TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper)init;
- (_TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper)initWithDelegate:(id)delegate windowScene:(id)scene mode:(int64_t)mode contact:(id)contact isEditingSNaP:(BOOL)p isOnboarding:(BOOL)onboarding photoLibraryAssetID:(id)d;
- (void)setHostingController:(id)controller;
@end

@implementation CNWallpaperSuggestionsGalleryViewWrapper

- (UIViewController)hostingController
{
  v3 = OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHostingController:(id)controller
{
  v5 = OBJC_IVAR____TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper_hostingController;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = controller;
  controllerCopy = controller;
}

- (_TtC10ContactsUI40CNWallpaperSuggestionsGalleryViewWrapper)initWithDelegate:(id)delegate windowScene:(id)scene mode:(int64_t)mode contact:(id)contact isEditingSNaP:(BOOL)p isOnboarding:(BOOL)onboarding photoLibraryAssetID:(id)d
{
  onboardingCopy = onboarding;
  pCopy = p;
  if (d)
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
  sceneCopy = scene;
  contactCopy = contact;
  v20 = sub_199B5739C(delegate, scene, mode, contactCopy, pCopy, onboardingCopy, v15, v17);
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