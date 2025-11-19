@interface CNWallpaper
@end

@implementation CNWallpaper

void __54__CNWallpaper_Snapshotting__snapshotImageDataForWatch__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*MEMORY[0x1E6996588] + 16))();
  [v1 finishWithResult:v2 error:0];
}

void __96__CNWallpaper_Snapshotting__snapshotDataFromSnapshotImage_forSize_topPadding_extensionBundleID___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 CGContext];
  v4 = [v18 format];
  [v4 bounds];
  v5 = 0.0;
  CGContextTranslateCTM(v3, 0.0, v6);

  CGContextScaleCTM([v18 CGContext], 1.0, -1.0);
  v20.size.width = *(a1 + 40);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.height = 1.0;
  v7 = CGImageCreateWithImageInRect(*(a1 + 32), v20);
  v8 = [v18 format];
  [v8 bounds];
  v10 = v9;
  v11 = *(a1 + 48);

  if (v10 > v11)
  {
    v12 = 1;
    do
    {
      v13 = [v18 CGContext];
      v21.size.width = *(a1 + 40);
      v21.origin.y = v5 + *(a1 + 48);
      v21.origin.x = 0.0;
      v21.size.height = 1.0;
      CGContextDrawImage(v13, v21, v7);
      v5 = v12;
      v14 = [v18 format];
      [v14 bounds];
      v16 = v15 - *(a1 + 48);

      ++v12;
    }

    while (v16 > v5);
  }

  v17 = [v18 CGContext];
  v22.size.width = CGImageGetWidth(*(a1 + 32));
  v22.size.height = *(a1 + 48);
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  CGContextDrawImage(v17, v22, *(a1 + 32));
  CGImageRelease(v7);
}

void __101__CNWallpaper_Snapshotting__posterSnapshotForSize_topPadding_contact_posterConfiguration_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (!a3 || v6)
  {
    v16 = [objc_opt_class() log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = [v7 localizedDescription];
      *buf = 138412290;
      v29 = v20;
      _os_log_error_impl(&dword_199A75000, v16, OS_LOG_TYPE_ERROR, "Failed to snapshot poster with error: %@", buf, 0xCu);
    }

    v17 = [MEMORY[0x1E6996818] mainThreadScheduler];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __101__CNWallpaper_Snapshotting__posterSnapshotForSize_topPadding_contact_posterConfiguration_completion___block_invoke_8;
    v26[3] = &unk_1E74E6F88;
    v27 = *(a1 + 56);
    [v17 performBlock:v26];

    v11 = v27;
  }

  else
  {
    v8 = [a3 snapshotBundle];
    v9 = [*(a1 + 40) levelSets];
    v10 = [v9 firstObject];
    v11 = [v8 snapshotForLevelSet:v10];

    if (v11)
    {
      v12 = [*(a1 + 32) snapshotDataFromSnapshotImage:v11 forSize:*(a1 + 48) topPadding:*(a1 + 64) extensionBundleID:{*(a1 + 72), *(a1 + 80)}];
      v13 = [MEMORY[0x1E6996818] mainThreadScheduler];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __101__CNWallpaper_Snapshotting__posterSnapshotForSize_topPadding_contact_posterConfiguration_completion___block_invoke_2;
      v21[3] = &unk_1E74E6DD0;
      v14 = *(a1 + 56);
      v22 = v12;
      v23 = v14;
      v15 = v12;
      [v13 performBlock:v21];
    }

    else
    {
      v18 = [objc_opt_class() log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_199A75000, v18, OS_LOG_TYPE_ERROR, "Snapshot of poster returned nil", buf, 2u);
      }

      v19 = [MEMORY[0x1E6996818] mainThreadScheduler];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __101__CNWallpaper_Snapshotting__posterSnapshotForSize_topPadding_contact_posterConfiguration_completion___block_invoke_9;
      v24[3] = &unk_1E74E6F88;
      v25 = *(a1 + 56);
      [v19 performBlock:v24];

      v15 = v25;
    }
  }
}

uint64_t __32__CNWallpaper_Snapshotting__log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNWallpaper+CNSnapshotting");
  v1 = log_cn_once_object_1_49449;
  log_cn_once_object_1_49449 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end