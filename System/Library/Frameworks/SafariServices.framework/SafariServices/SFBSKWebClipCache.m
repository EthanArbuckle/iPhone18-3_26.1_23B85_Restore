@interface SFBSKWebClipCache
@end

@implementation SFBSKWebClipCache

void __40___SFBSKWebClipCache_sharedWebClipCache__block_invoke()
{
  v0 = objc_alloc_init(_SFBSKWebClipCache);
  v1 = +[_SFBSKWebClipCache sharedWebClipCache]::cache;
  +[_SFBSKWebClipCache sharedWebClipCache]::cache = v0;

  [+[_SFBSKWebClipCache sharedWebClipCache]::cache _reloadWebClips];
  out_token = 0;
  v2 = MEMORY[0x1E69E96A0];
  notify_register_dispatch("com.apple.webclip.placeholder.added", &out_token, MEMORY[0x1E69E96A0], &__block_literal_global_4);
  notify_register_dispatch("com.apple.webclip.placeholder.updated", &out_token, v2, &__block_literal_global_4);

  notify_register_dispatch("com.apple.webclip.placeholder.removed", &out_token, v2, &__block_literal_global_4);
}

uint64_t __40___SFBSKWebClipCache_sharedWebClipCache__block_invoke_2()
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:+[_SFBSKWebClipCache sharedWebClipCache]::cache selector:sel__reloadWebClipsWithObject_ object:0];
  v0 = +[_SFBSKWebClipCache sharedWebClipCache]::cache;

  return [v0 performSelector:sel__reloadWebClipsWithObject_ withObject:0 afterDelay:1.0];
}

void __37___SFBSKWebClipCache__reloadWebClips__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXWebApp();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __37___SFBSKWebClipCache__reloadWebClips__block_invoke_cold_1(v5, v8);
    }
  }

  else
  {
    v9 = [v6 count];
    v10 = WBS_LOG_CHANNEL_PREFIXWebApp();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = v9;
      _os_log_impl(&dword_1D4644000, v10, OS_LOG_TYPE_DEFAULT, "Fetched %zu web clips", &v11, 0xCu);
    }

    if (!v7)
    {
      v7 = [MEMORY[0x1E695DEC8] array];
    }

    [(_SFBSKWebClipCache *)*(a1 + 32) _setWebClipURLs:v7];
  }
}

void __38___SFBSKWebClipCache__setWebClipURLs___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_SFBSKWebClipCacheDidChange" object:*(a1 + 32)];
}

void __37___SFBSKWebClipCache__reloadWebClips__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch web clips: %{public}@", &v2, 0xCu);
}

@end