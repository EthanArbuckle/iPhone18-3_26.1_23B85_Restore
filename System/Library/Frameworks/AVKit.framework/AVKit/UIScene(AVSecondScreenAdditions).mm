@interface UIScene(AVSecondScreenAdditions)
+ (id)avkit_secondScreenScenes;
- (void)_avkit_setPreferredRefreshRate:()AVSecondScreenAdditions HDRMode:overscanCompensation:;
@end

@implementation UIScene(AVSecondScreenAdditions)

- (void)_avkit_setPreferredRefreshRate:()AVSecondScreenAdditions HDRMode:overscanCompensation:
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = _AVLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[UIScene(AVSecondScreenAdditions) _avkit_setPreferredRefreshRate:HDRMode:overscanCompensation:]";
    _os_log_impl(&dword_18B49C000, v0, OS_LOG_TYPE_DEFAULT, "%s This feature requires a UIWindowScene.", &v1, 0xCu);
  }
}

+ (id)avkit_secondScreenScenes
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  connectedScenes = [mEMORY[0x1E69DC668] connectedScenes];
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_29221];
  v3 = [connectedScenes filteredSetUsingPredicate:v2];
  allObjects = [v3 allObjects];

  return allObjects;
}

@end