@interface UIWindowScene(AVSecondScreenAdditions)
- (BOOL)avkit_screenHasWindowsExcludingWindow:()AVSecondScreenAdditions;
- (uint64_t)_avkit_setPreferredRefreshRate:()AVSecondScreenAdditions HDRMode:overscanCompensation:;
- (uint64_t)avkit_screenType;
@end

@implementation UIWindowScene(AVSecondScreenAdditions)

- (uint64_t)_avkit_setPreferredRefreshRate:()AVSecondScreenAdditions HDRMode:overscanCompensation:
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if ((a4 + 1) > 3)
    {
      v10 = @"SDR";
    }

    else
    {
      v10 = off_1E7209750[a4 + 1];
    }

    v11 = @"Unknown";
    v14 = "[UIWindowScene(AVSecondScreenAdditions) _avkit_setPreferredRefreshRate:HDRMode:overscanCompensation:]";
    v15 = 2048;
    v13 = 136315906;
    v16 = a2;
    if (!a5)
    {
      v11 = @"None";
    }

    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s Refresh: %.f HDRMode: %@ overscanCompensation: %@", &v13, 0x2Au);
  }

  return [a1 _setAVKitRequestedRefreshRate:a4 HDRMode:a5 overscanCompensation:a2];
}

- (BOOL)avkit_screenHasWindowsExcludingWindow:()AVSecondScreenAdditions
{
  v4 = a3;
  v5 = [a1 windows];
  v6 = MEMORY[0x1E696AE18];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__UIWindowScene_AVSecondScreenAdditions__avkit_screenHasWindowsExcludingWindow___block_invoke;
  v12[3] = &unk_1E7209710;
  v13 = v4;
  v7 = v4;
  v8 = [v6 predicateWithBlock:v12];
  v9 = [v5 filteredArrayUsingPredicate:v8];
  v10 = [v9 count] != 0;

  return v10;
}

- (uint64_t)avkit_screenType
{
  v2 = [a1 avkit_asWindowScene];
  v3 = [v2 screen];
  v4 = [v3 displayConfiguration];
  v5 = [v4 name];

  v6 = [a1 avkit_asWindowScene];
  v7 = [v6 screen];
  v8 = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_6;
  }

  v10 = [v5 hasPrefix:@"LCD"];

  if (v10)
  {
LABEL_6:
    v14 = 2;
    goto LABEL_7;
  }

  v11 = [a1 avkit_asWindowScene];
  v12 = [v11 screen];
  v13 = [v12 _isCarScreen];

  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v16 = [v5 lowercaseString];
    v17 = [v16 hasPrefix:@"wireless"];

    if (v17)
    {
      v14 = 4;
    }

    else if ([v5 hasPrefix:@"TVOut"])
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }
  }

LABEL_7:

  return v14;
}

@end