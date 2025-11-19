@interface UIImagePickerController(AppleAccountUI)
+ (id)aaui_fixedCropRect:()AppleAccountUI forOriginalImage:;
@end

@implementation UIImagePickerController(AppleAccountUI)

+ (id)aaui_fixedCropRect:()AppleAccountUI forOriginalImage:
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  [v5 CGRectValue];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (v7 < 0.0)
  {
    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      v39 = 138412546;
      v40 = v16;
      v41 = 2112;
      v42 = &unk_1F44C0618;
      _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "aaui_fixedCropRect:forOriginalImage: fixing cropRect left %@ outside originalImage left %@", &v39, 0x16u);
    }

    v12 = v12 + v8;
    v8 = 0.0;
  }

  [v6 size];
  if (v12 + v8 > v17)
  {
    v18 = _AAUILogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x1E696AD98] numberWithDouble:v12 + v8];
      v20 = MEMORY[0x1E696AD98];
      [v6 size];
      v21 = [v20 numberWithDouble:?];
      v39 = 138412546;
      v40 = v19;
      v41 = 2112;
      v42 = v21;
      _os_log_impl(&dword_1C5355000, v18, OS_LOG_TYPE_DEFAULT, "aaui_fixedCropRect:forOriginalImage: fixing cropRect right %@ outside originalImage right %@", &v39, 0x16u);
    }

    [v6 size];
    v12 = v22 - v8;
  }

  if (v10 < 0.0)
  {
    v23 = _AAUILogSystem();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v39 = 138412546;
      v40 = v24;
      v41 = 2112;
      v42 = &unk_1F44C0618;
      _os_log_impl(&dword_1C5355000, v23, OS_LOG_TYPE_DEFAULT, "aaui_fixedCropRect:forOriginalImage: fixing cropRect top %@ outside originalImage top %@", &v39, 0x16u);
    }

    v14 = v14 + v10;
    v10 = 0.0;
  }

  [v6 size];
  if (v14 + v10 > v25)
  {
    v26 = _AAUILogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [MEMORY[0x1E696AD98] numberWithDouble:v14 + v10];
      v28 = MEMORY[0x1E696AD98];
      [v6 size];
      v30 = [v28 numberWithDouble:v29];
      v39 = 138412546;
      v40 = v27;
      v41 = 2112;
      v42 = v30;
      _os_log_impl(&dword_1C5355000, v26, OS_LOG_TYPE_DEFAULT, "aaui_fixedCropRect:forOriginalImage: fixing cropRect bottom %@ outside originalImage bottom %@", &v39, 0x16u);
    }

    [v6 size];
    v14 = v31 - v10;
  }

  [v5 CGRectValue];
  v46.origin.x = v32;
  v46.origin.y = v33;
  v46.size.width = v34;
  v46.size.height = v35;
  v45.origin.x = v8;
  v45.origin.y = v10;
  v45.size.width = v12;
  v45.size.height = v14;
  if (CGRectEqualToRect(v45, v46))
  {
    v36 = v5;
  }

  else
  {
    v36 = [MEMORY[0x1E696B098] valueWithCGRect:{v8, v10, v12, v14}];

    v37 = _AAUILogSystem();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412290;
      v40 = v36;
      _os_log_impl(&dword_1C5355000, v37, OS_LOG_TYPE_DEFAULT, "aaui_fixedCropRect:forOriginalImage: returning fixed cropRect %@", &v39, 0xCu);
    }
  }

  return v36;
}

@end