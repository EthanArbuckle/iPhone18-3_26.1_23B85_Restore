@interface CNAvatarPosterCarouselPendingPosterEdit
+ (id)pendingEditFromContactPoster:(id)a3;
+ (id)pendingEditFromPosterConfiguration:(id)a3;
- (CNAvatarPosterCarouselPendingPosterEdit)initWithContactPoster:(id)a3 posterConfiguration:(id)a4;
- (CNFuture)pendingWallpaper;
- (id)pendingWallpaperFromContactPoster;
- (id)pendingWallpaperFromPosterConfiguration;
@end

@implementation CNAvatarPosterCarouselPendingPosterEdit

- (id)pendingWallpaperFromPosterConfiguration
{
  v3 = [(CNAvatarPosterCarouselPendingPosterEdit *)self posterConfiguration];

  if (v3)
  {
    objc_initWeak(location, self);
    v4 = MEMORY[0x1E6996720];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__CNAvatarPosterCarouselPendingPosterEdit_pendingWallpaperFromPosterConfiguration__block_invoke;
    v10[3] = &unk_1E74E1C60;
    objc_copyWeak(&v11, location);
    v5 = [MEMORY[0x1E6996820] defaultProvider];
    v6 = [v5 backgroundScheduler];
    v7 = [v4 futureWithBlock:v10 scheduler:v6];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = CNUILogPosters();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "Failed to create wallpaper future, nil poster configuration", location, 2u);
    }

    v7 = 0;
  }

  return v7;
}

id __82__CNAvatarPosterCarouselPendingPosterEdit_pendingWallpaperFromPosterConfiguration__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained posterConfiguration];
  v18 = 0;
  v3 = [CNPRSPosterArchiver archiveCNConfiguration:v2 error:&v18];
  v4 = v18;

  if (v3)
  {
    v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3];
    if ((*(*MEMORY[0x1E6996540] + 16))())
    {
      v6 = CNUILogPosters();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_199A75000, v6, OS_LOG_TYPE_ERROR, "Poster archive data from poster editor configuration is empty.", buf, 2u);
      }

      v7 = [MEMORY[0x1E695DFB0] null];
    }

    else
    {
      v9 = [MEMORY[0x1E696AC08] defaultManager];
      v17 = v4;
      v10 = [v9 removeItemAtURL:v3 error:&v17];
      v11 = v17;

      if ((v10 & 1) == 0)
      {
        v12 = CNUILogPosters();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v20 = v3;
          _os_log_debug_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEBUG, "Failed to clean up archive poster at URL %@", buf, 0xCu);
        }
      }

      v13 = MEMORY[0x1E695CFC8];
      v14 = [WeakRetained posterConfiguration];
      v7 = [v13 wallpaperWithPosterArchiveData:v5 metadataFromConfiguration:v14 visualFingerprint:0 contentIsSensitive:0];

      v4 = v11;
    }
  }

  else
  {
    v8 = CNUILogPosters();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = [v4 localizedDescription];
      *buf = 138412290;
      v20 = v16;
      _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "Failed to archive poster configuration %@", buf, 0xCu);
    }

    v7 = [MEMORY[0x1E695DFB0] null];
  }

  return v7;
}

- (id)pendingWallpaperFromContactPoster
{
  v3 = [(CNAvatarPosterCarouselPendingPosterEdit *)self contactPoster];

  if (v3)
  {
    objc_initWeak(location, self);
    v4 = MEMORY[0x1E6996720];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__CNAvatarPosterCarouselPendingPosterEdit_pendingWallpaperFromContactPoster__block_invoke;
    v10[3] = &unk_1E74E1C60;
    objc_copyWeak(&v11, location);
    v5 = [MEMORY[0x1E6996820] defaultProvider];
    v6 = [v5 backgroundScheduler];
    v7 = [v4 futureWithBlock:v10 scheduler:v6];

    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v8 = CNUILogPosters();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "Failed to create wallpaper future, nil contact poster", location, 2u);
    }

    v7 = 0;
  }

  return v7;
}

id __76__CNAvatarPosterCarouselPendingPosterEdit_pendingWallpaperFromContactPoster__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained contactPoster];
  v3 = [v2 posterData];
  v14 = 0;
  v4 = [CNPRSPosterArchiver unarchiveCNConfigurationFromData:v3 error:&v14];
  v5 = v14;

  if (v4)
  {
    v6 = MEMORY[0x1E695CFC8];
    v7 = [WeakRetained contactPoster];
    v8 = [v7 posterData];
    v9 = [WeakRetained contactPoster];
    v10 = [v6 wallpaperWithPosterArchiveData:v8 metadataFromConfiguration:v4 visualFingerprint:0 contentIsSensitive:{objc_msgSend(v9, "contentIsSensitive")}];
  }

  else
  {
    v11 = CNUILogPosters();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v5 localizedDescription];
      *buf = 138412290;
      v16 = v13;
      _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Failed to unarchive poster configuration %@", buf, 0xCu);
    }

    v10 = [MEMORY[0x1E695DFB0] null];
  }

  return v10;
}

- (CNFuture)pendingWallpaper
{
  p_pendingWallpaper = &self->_pendingWallpaper;
  pendingWallpaper = self->_pendingWallpaper;
  if (pendingWallpaper)
  {
    v4 = pendingWallpaper;
    goto LABEL_14;
  }

  v6 = [(CNAvatarPosterCarouselPendingPosterEdit *)self contactPoster];
  if (!v6 || (v7 = v6, [(CNAvatarPosterCarouselPendingPosterEdit *)self posterConfiguration], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v10 = [(CNAvatarPosterCarouselPendingPosterEdit *)self contactPoster];

    if (v10)
    {
      v11 = [(CNAvatarPosterCarouselPendingPosterEdit *)self pendingWallpaperFromContactPoster];
    }

    else
    {
      v12 = [(CNAvatarPosterCarouselPendingPosterEdit *)self posterConfiguration];

      if (!v12)
      {
        v14 = CNUILogPosters();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *v15 = 0;
          _os_log_error_impl(&dword_199A75000, v14, OS_LOG_TYPE_ERROR, "Invalid pending poster edit, both contact poster and configuration are nil", v15, 2u);
        }

        v4 = 0;
        goto LABEL_13;
      }

      v11 = [(CNAvatarPosterCarouselPendingPosterEdit *)self pendingWallpaperFromPosterConfiguration];
    }

    v4 = v11;
LABEL_13:
    objc_storeStrong(p_pendingWallpaper, v4);
    goto LABEL_14;
  }

  v9 = CNUILogPosters();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_199A75000, v9, OS_LOG_TYPE_ERROR, "Invalid pending poster edit, cannot be backed by both contact poster and configuration", buf, 2u);
  }

  v4 = 0;
LABEL_14:

  return v4;
}

- (CNAvatarPosterCarouselPendingPosterEdit)initWithContactPoster:(id)a3 posterConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CNAvatarPosterCarouselPendingPosterEdit;
  v9 = [(CNAvatarPosterCarouselPendingPosterEdit *)&v15 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    if (!v7 || !v8)
    {
      objc_storeStrong(&v9->_contactPoster, a3);
      objc_storeStrong(p_isa + 2, a4);
      v12 = p_isa;
      goto LABEL_9;
    }

    v11 = CNUILogPosters();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_199A75000, v11, OS_LOG_TYPE_ERROR, "Pending poster edit cannot be backed by both contact poster and configuration", v14, 2u);
    }
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (id)pendingEditFromPosterConfiguration:(id)a3
{
  v3 = a3;
  v4 = [[CNAvatarPosterCarouselPendingPosterEdit alloc] initWithContactPoster:0 posterConfiguration:v3];

  return v4;
}

+ (id)pendingEditFromContactPoster:(id)a3
{
  v3 = a3;
  v4 = [[CNAvatarPosterCarouselPendingPosterEdit alloc] initWithContactPoster:v3 posterConfiguration:0];

  return v4;
}

@end