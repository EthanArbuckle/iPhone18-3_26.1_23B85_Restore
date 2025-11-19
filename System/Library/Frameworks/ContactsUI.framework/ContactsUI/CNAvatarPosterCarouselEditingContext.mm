@interface CNAvatarPosterCarouselEditingContext
+ (CNAvatarPosterCarouselEditingContext)contextWithExistingPoster:(id)a3 existingAvatar:(id)a4;
+ (id)contextForCreateNew;
- (CNAvatarPosterCarouselEditingContext)initWithExistingPoster:(id)a3 existingAvatar:(id)a4;
- (void)setPendingPosterEdit:(id)a3;
@end

@implementation CNAvatarPosterCarouselEditingContext

- (void)setPendingPosterEdit:(id)a3
{
  v5 = a3;
  p_pendingPosterEdit = &self->_pendingPosterEdit;
  if (self->_pendingPosterEdit != v5)
  {
    v9 = v5;
    objc_storeStrong(p_pendingPosterEdit, a3);
    v7 = [(CNAvatarPosterCarouselPendingPosterEdit *)v9 pendingWallpaper];
    pendingWallpaperFuture = self->_pendingWallpaperFuture;
    self->_pendingWallpaperFuture = v7;

    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](p_pendingPosterEdit, v5);
}

- (CNAvatarPosterCarouselEditingContext)initWithExistingPoster:(id)a3 existingAvatar:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNAvatarPosterCarouselEditingContext;
  v9 = [(CNAvatarPosterCarouselEditingContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    v9->_isEditingExisting = 1;
    objc_storeStrong(&v9->_existingAvatar, a4);
    objc_storeStrong(&v10->_existingPoster, a3);
    v11 = v10;
  }

  return v10;
}

+ (id)contextForCreateNew
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (CNAvatarPosterCarouselEditingContext)contextWithExistingPoster:(id)a3 existingAvatar:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithExistingPoster:v7 existingAvatar:v6];

  return v8;
}

@end