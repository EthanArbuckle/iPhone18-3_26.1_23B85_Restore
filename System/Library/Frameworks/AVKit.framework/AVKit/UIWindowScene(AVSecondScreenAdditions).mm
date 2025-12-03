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

  return [self _setAVKitRequestedRefreshRate:a4 HDRMode:a5 overscanCompensation:a2];
}

- (BOOL)avkit_screenHasWindowsExcludingWindow:()AVSecondScreenAdditions
{
  v4 = a3;
  windows = [self windows];
  v6 = MEMORY[0x1E696AE18];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__UIWindowScene_AVSecondScreenAdditions__avkit_screenHasWindowsExcludingWindow___block_invoke;
  v12[3] = &unk_1E7209710;
  v13 = v4;
  v7 = v4;
  v8 = [v6 predicateWithBlock:v12];
  v9 = [windows filteredArrayUsingPredicate:v8];
  v10 = [v9 count] != 0;

  return v10;
}

- (uint64_t)avkit_screenType
{
  avkit_asWindowScene = [self avkit_asWindowScene];
  screen = [avkit_asWindowScene screen];
  displayConfiguration = [screen displayConfiguration];
  name = [displayConfiguration name];

  avkit_asWindowScene2 = [self avkit_asWindowScene];
  screen2 = [avkit_asWindowScene2 screen];
  avkit_mainScreen = [MEMORY[0x1E69DCEB0] avkit_mainScreen];
  v9 = avkit_mainScreen;
  if (screen2 == avkit_mainScreen)
  {

    goto LABEL_6;
  }

  v10 = [name hasPrefix:@"LCD"];

  if (v10)
  {
LABEL_6:
    v14 = 2;
    goto LABEL_7;
  }

  avkit_asWindowScene3 = [self avkit_asWindowScene];
  screen3 = [avkit_asWindowScene3 screen];
  _isCarScreen = [screen3 _isCarScreen];

  if (_isCarScreen)
  {
    v14 = 1;
  }

  else
  {
    lowercaseString = [name lowercaseString];
    v17 = [lowercaseString hasPrefix:@"wireless"];

    if (v17)
    {
      v14 = 4;
    }

    else if ([name hasPrefix:@"TVOut"])
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