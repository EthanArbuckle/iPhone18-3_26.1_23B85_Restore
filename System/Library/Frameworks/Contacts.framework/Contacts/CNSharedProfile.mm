@interface CNSharedProfile
+ (id)log;
- (CGRect)cropRect;
- (CNContact)contact;
- (CNSharedProfile)initWithContact:(id)contact;
- (CNSharedProfile)initWithNickname:(id)nickname;
- (CNSharedProfile)initWithRecentContactImage:(id)image recentPoster:(id)poster recentAvatarRecipeData:(id)data;
- (NSData)thumbnailImageData;
- (id)imageTypeStringFromContactImage:(id)image;
- (id)thumbnailImageDataFromImageData:(id)data cropRect:(CGRect)rect;
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

- (CNSharedProfile)initWithNickname:(id)nickname
{
  nicknameCopy = nickname;
  v32.receiver = self;
  v32.super_class = CNSharedProfile;
  v5 = [(CNSharedProfile *)&v32 init];
  if (v5)
  {
    avatar = [nicknameCopy avatar];
    imageData = [avatar imageData];
    v8 = *(v5 + 1);
    *(v5 + 1) = imageData;

    avatar2 = [nicknameCopy avatar];
    imageData2 = [avatar2 imageData];
    v11 = *(v5 + 2);
    *(v5 + 2) = imageData2;

    v12 = *(MEMORY[0x1E695F058] + 16);
    *(v5 + 56) = *MEMORY[0x1E695F058];
    *(v5 + 72) = v12;
    v13 = [CNWallpaper alloc];
    wallpaper = [nicknameCopy wallpaper];
    wallpaperData = [wallpaper wallpaperData];
    wallpaper2 = [nicknameCopy wallpaper];
    v17 = -[CNWallpaper initWithPosterArchiveData:contentIsSensitive:](v13, "initWithPosterArchiveData:contentIsSensitive:", wallpaperData, [wallpaper2 contentIsSensitive]);

    wallpaper3 = [nicknameCopy wallpaper];
    metadata = [wallpaper3 metadata];

    if (metadata)
    {
      v20 = [(CNWallpaper *)v17 wallpaperIncludingIMWallpaperMetadata:metadata];

      v17 = v20;
    }

    v21 = *(v5 + 5);
    *(v5 + 5) = v17;
    v22 = v17;

    wallpaper4 = [nicknameCopy wallpaper];
    lowResWallpaperData = [wallpaper4 lowResWallpaperData];
    v25 = *(v5 + 6);
    *(v5 + 6) = lowResWallpaperData;

    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    nicknameProvider = [currentEnvironment nicknameProvider];
    v28 = [nicknameProvider avatarRecipeDataForNickname:nicknameCopy];
    v29 = *(v5 + 4);
    *(v5 + 4) = v28;

    v30 = v5;
  }

  return v5;
}

- (CNSharedProfile)initWithContact:(id)contact
{
  contactCopy = contact;
  v24.receiver = self;
  v24.super_class = CNSharedProfile;
  v5 = [(CNSharedProfile *)&v24 init];
  if (v5)
  {
    imageData = [contactCopy imageData];
    imageData = v5->_imageData;
    v5->_imageData = imageData;

    thumbnailImageData = [contactCopy thumbnailImageData];
    thumbnailImageData = v5->_thumbnailImageData;
    v5->_thumbnailImageData = thumbnailImageData;

    [contactCopy cropRect];
    v5->_cropRect.origin.x = v10;
    v5->_cropRect.origin.y = v11;
    v5->_cropRect.size.width = v12;
    v5->_cropRect.size.height = v13;
    imageType = [contactCopy imageType];
    imageType = v5->_imageType;
    v5->_imageType = imageType;

    avatarRecipeData = [contactCopy avatarRecipeData];
    avatarRecipeData = v5->_avatarRecipeData;
    v5->_avatarRecipeData = avatarRecipeData;

    wallpaper = [contactCopy wallpaper];
    wallpaper = v5->_wallpaper;
    v5->_wallpaper = wallpaper;

    watchWallpaperImageData = [contactCopy watchWallpaperImageData];
    watchWallpaperImageData = v5->_watchWallpaperImageData;
    v5->_watchWallpaperImageData = watchWallpaperImageData;

    v22 = v5;
  }

  return v5;
}

- (CNSharedProfile)initWithRecentContactImage:(id)image recentPoster:(id)poster recentAvatarRecipeData:(id)data
{
  imageCopy = image;
  posterCopy = poster;
  dataCopy = data;
  v31.receiver = self;
  v31.super_class = CNSharedProfile;
  v11 = [(CNSharedProfile *)&v31 init];
  if (v11)
  {
    imageData = [imageCopy imageData];
    imageData = v11->_imageData;
    v11->_imageData = imageData;

    imageData2 = [imageCopy imageData];
    [imageCopy cropRect];
    v15 = [(CNSharedProfile *)v11 thumbnailImageDataFromImageData:imageData2 cropRect:?];
    thumbnailImageData = v11->_thumbnailImageData;
    v11->_thumbnailImageData = v15;

    [imageCopy cropRect];
    v11->_cropRect.origin.x = v17;
    v11->_cropRect.origin.y = v18;
    v11->_cropRect.size.width = v19;
    v11->_cropRect.size.height = v20;
    v21 = [(CNSharedProfile *)v11 imageTypeStringFromContactImage:imageCopy];
    imageType = v11->_imageType;
    v11->_imageType = v21;

    v23 = [CNWallpaper alloc];
    posterData = [posterCopy posterData];
    v25 = [(CNWallpaper *)v23 initWithPosterArchiveData:posterData];

    wallpaper = v11->_wallpaper;
    v11->_wallpaper = v25;
    v27 = v25;

    watchWallpaperImageData = v11->_watchWallpaperImageData;
    v11->_watchWallpaperImageData = 0;

    objc_storeStrong(&v11->_avatarRecipeData, data);
    v29 = v11;
  }

  return v11;
}

- (id)imageTypeStringFromContactImage:(id)image
{
  imageCopy = image;
  v4 = imageCopy;
  if (imageCopy && (v5 = [imageCopy source], (v5 - 1) <= 3))
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
    imageData = [(CNSharedProfile *)self imageData];
    [(CNSharedProfile *)self cropRect];
    v5 = [(CNSharedProfile *)self thumbnailImageDataFromImageData:imageData cropRect:?];
    v6 = self->_thumbnailImageData;
    self->_thumbnailImageData = v5;

    thumbnailImageData = self->_thumbnailImageData;
  }

  v7 = thumbnailImageData;

  return v7;
}

- (id)thumbnailImageDataFromImageData:(id)data cropRect:(CGRect)rect
{
  v9 = 0;
  v4 = CNImageUtilsCroppedImageDataFromFullSizeImageData(data, &v9, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
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