@interface MKAnimatedTileOverlay
@end

@implementation MKAnimatedTileOverlay

void __77___MKAnimatedTileOverlay_CustomLoading__loadTileAtPath_keyframeIndex_result___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (MKGetOverlaysLog_onceToken != -1)
    {
      dispatch_once(&MKGetOverlaysLog_onceToken, &__block_literal_global_55);
    }

    v10 = MKGetOverlaysLog_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = a1[4];
      v12 = a1[5];
      v13 = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_DEBUG, "%{public}@: Error loading URL %{public}@: %{public}@", &v13, 0x20u);
    }
  }

  (*(a1[6] + 16))();
}

@end