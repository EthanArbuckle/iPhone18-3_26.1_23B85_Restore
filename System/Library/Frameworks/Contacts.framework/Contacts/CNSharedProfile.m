@interface CNSharedProfile
+ (id)log;
- (CGRect)cropRect;
- (CNContact)contact;
- (CNSharedProfile)initWithContact:(id)a3;
- (CNSharedProfile)initWithNickname:(id)a3;
- (CNSharedProfile)initWithRecentContactImage:(id)a3 recentPoster:(id)a4 recentAvatarRecipeData:(id)a5;
- (NSData)thumbnailImageData;
- (id)imageTypeStringFromContactImage:(id)a3;
- (id)thumbnailImageDataFromImageData:(id)a3 cropRect:(CGRect)a4;
@end

@implementation CNSharedProfile

+ (id)log
{
  if (log_cn_once_token_0_12 != -1)
  {
    +[CNSharedProfile log];
  }

  v3 = log_cn_once_object_0_12;

  return v3;
}

uint64_t __22__CNSharedProfile_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "CNSharedProfile");
  v1 = log_cn_once_object_0_12;
  log_cn_once_object_0_12 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNSharedProfile)initWithNickname:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CNSharedProfile;
  v5 = [(CNSharedProfile *)&v32 init];
  if (v5)
  {
    v6 = [v4 avatar];
    v7 = [v6 imageData];
    v8 = *(v5 + 1);
    *(v5 + 1) = v7;

    v9 = [v4 avatar];
    v10 = [v9 imageData];
    v11 = *(v5 + 2);
    *(v5 + 2) = v10;

    v12 = *(MEMORY[0x1E695F058] + 16);
    *(v5 + 56) = *MEMORY[0x1E695F058];
    *(v5 + 72) = v12;
    v13 = [CNWallpaper alloc];
    v14 = [v4 wallpaper];
    v15 = [v14 wallpaperData];
    v16 = [v4 wallpaper];
    v17 = -[CNWallpaper initWithPosterArchiveData:contentIsSensitive:](v13, "initWithPosterArchiveData:contentIsSensitive:", v15, [v16 contentIsSensitive]);

    v18 = [v4 wallpaper];
    v19 = [v18 metadata];

    if (v19)
    {
      v20 = [(CNWallpaper *)v17 wallpaperIncludingIMWallpaperMetadata:v19];

      v17 = v20;
    }

    v21 = *(v5 + 5);
    *(v5 + 5) = v17;
    v22 = v17;

    v23 = [v4 wallpaper];
    v24 = [v23 lowResWallpaperData];
    v25 = *(v5 + 6);
    *(v5 + 6) = v24;

    v26 = [MEMORY[0x1E69966E8] currentEnvironment];
    v27 = [v26 nicknameProvider];
    v28 = [v27 avatarRecipeDataForNickname:v4];
    v29 = *(v5 + 4);
    *(v5 + 4) = v28;

    v30 = v5;
  }

  return v5;
}

- (CNSharedProfile)initWithContact:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CNSharedProfile;
  v5 = [(CNSharedProfile *)&v24 init];
  if (v5)
  {
    v6 = [v4 imageData];
    imageData = v5->_imageData;
    v5->_imageData = v6;

    v8 = [v4 thumbnailImageData];
    thumbnailImageData = v5->_thumbnailImageData;
    v5->_thumbnailImageData = v8;

    [v4 cropRect];
    v5->_cropRect.origin.x = v10;
    v5->_cropRect.origin.y = v11;
    v5->_cropRect.size.width = v12;
    v5->_cropRect.size.height = v13;
    v14 = [v4 imageType];
    imageType = v5->_imageType;
    v5->_imageType = v14;

    v16 = [v4 avatarRecipeData];
    avatarRecipeData = v5->_avatarRecipeData;
    v5->_avatarRecipeData = v16;

    v18 = [v4 wallpaper];
    wallpaper = v5->_wallpaper;
    v5->_wallpaper = v18;

    v20 = [v4 watchWallpaperImageData];
    watchWallpaperImageData = v5->_watchWallpaperImageData;
    v5->_watchWallpaperImageData = v20;

    v22 = v5;
  }

  return v5;
}

- (CNSharedProfile)initWithRecentContactImage:(id)a3 recentPoster:(id)a4 recentAvatarRecipeData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = CNSharedProfile;
  v11 = [(CNSharedProfile *)&v31 init];
  if (v11)
  {
    v12 = [v8 imageData];
    imageData = v11->_imageData;
    v11->_imageData = v12;

    v14 = [v8 imageData];
    [v8 cropRect];
    v15 = [(CNSharedProfile *)v11 thumbnailImageDataFromImageData:v14 cropRect:?];
    thumbnailImageData = v11->_thumbnailImageData;
    v11->_thumbnailImageData = v15;

    [v8 cropRect];
    v11->_cropRect.origin.x = v17;
    v11->_cropRect.origin.y = v18;
    v11->_cropRect.size.width = v19;
    v11->_cropRect.size.height = v20;
    v21 = [(CNSharedProfile *)v11 imageTypeStringFromContactImage:v8];
    imageType = v11->_imageType;
    v11->_imageType = v21;

    v23 = [CNWallpaper alloc];
    v24 = [v9 posterData];
    v25 = [(CNWallpaper *)v23 initWithPosterArchiveData:v24];

    wallpaper = v11->_wallpaper;
    v11->_wallpaper = v25;
    v27 = v25;

    watchWallpaperImageData = v11->_watchWallpaperImageData;
    v11->_watchWallpaperImageData = 0;

    objc_storeStrong(&v11->_avatarRecipeData, a5);
    v29 = v11;
  }

  return v11;
}

- (id)imageTypeStringFromContactImage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && (v5 = [v3 source], (v5 - 1) <= 3))
  {
    v6 = *off_1E74160A8[v5 - 1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSData)thumbnailImageData
{
  thumbnailImageData = self->_thumbnailImageData;
  if (!thumbnailImageData)
  {
    v4 = [(CNSharedProfile *)self imageData];
    [(CNSharedProfile *)self cropRect];
    v5 = [(CNSharedProfile *)self thumbnailImageDataFromImageData:v4 cropRect:?];
    v6 = self->_thumbnailImageData;
    self->_thumbnailImageData = v5;

    thumbnailImageData = self->_thumbnailImageData;
  }

  v7 = thumbnailImageData;

  return v7;
}

- (id)thumbnailImageDataFromImageData:(id)a3 cropRect:(CGRect)a4
{
  v9 = 0;
  v4 = CNImageUtilsCroppedImageDataFromFullSizeImageData(a3, &v9, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  v5 = v9;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CNSharedProfile thumbnailImageDataFromImageData:v5 cropRect:v7];
    }
  }

  return v4;
}

- (CNContact)contact
{
  v3 = objc_alloc_init(CNMutableContact);
  [(CNMutableContact *)v3 setImageData:self->_imageData];
  [(CNMutableContact *)v3 setThumbnailImageData:self->_thumbnailImageData];
  [(CNMutableContact *)v3 setCropRect:self->_cropRect.origin.x, self->_cropRect.origin.y, self->_cropRect.size.width, self->_cropRect.size.height];
  [(CNMutableContact *)v3 setWallpaper:self->_wallpaper];
  [(CNMutableContact *)v3 setImageType:self->_imageType];
  [(CNMutableContact *)v3 setWatchWallpaperImageData:self->_watchWallpaperImageData];

  return v3;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)thumbnailImageDataFromImageData:(void *)a1 cropRect:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Failed to generate thumbnailImageData, %@", &v4, 0xCu);
}

@end