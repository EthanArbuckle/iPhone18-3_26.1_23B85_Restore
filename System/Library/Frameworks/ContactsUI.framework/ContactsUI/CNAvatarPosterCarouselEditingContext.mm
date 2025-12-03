@interface CNAvatarPosterCarouselEditingContext
+ (CNAvatarPosterCarouselEditingContext)contextWithExistingPoster:(id)poster existingAvatar:(id)avatar;
+ (id)contextForCreateNew;
- (CNAvatarPosterCarouselEditingContext)initWithExistingPoster:(id)poster existingAvatar:(id)avatar;
- (void)setPendingPosterEdit:(id)edit;
@end

@implementation CNAvatarPosterCarouselEditingContext

- (void)setPendingPosterEdit:(id)edit
{
  editCopy = edit;
  p_pendingPosterEdit = &self->_pendingPosterEdit;
  if (self->_pendingPosterEdit != editCopy)
  {
    v9 = editCopy;
    objc_storeStrong(p_pendingPosterEdit, edit);
    pendingWallpaper = [(CNAvatarPosterCarouselPendingPosterEdit *)v9 pendingWallpaper];
    pendingWallpaperFuture = self->_pendingWallpaperFuture;
    self->_pendingWallpaperFuture = pendingWallpaper;

    editCopy = v9;
  }

  MEMORY[0x1EEE66BB8](p_pendingPosterEdit, editCopy);
}

- (CNAvatarPosterCarouselEditingContext)initWithExistingPoster:(id)poster existingAvatar:(id)avatar
{
  posterCopy = poster;
  avatarCopy = avatar;
  v13.receiver = self;
  v13.super_class = CNAvatarPosterCarouselEditingContext;
  v9 = [(CNAvatarPosterCarouselEditingContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_isEditingExisting = 1;
    objc_storeStrong(&v9->_existingAvatar, avatar);
    objc_storeStrong(&v10->_existingPoster, poster);
    v11 = v10;
  }

  return v10;
}

+ (id)contextForCreateNew
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (CNAvatarPosterCarouselEditingContext)contextWithExistingPoster:(id)poster existingAvatar:(id)avatar
{
  avatarCopy = avatar;
  posterCopy = poster;
  v8 = [[self alloc] initWithExistingPoster:posterCopy existingAvatar:avatarCopy];

  return v8;
}

@end