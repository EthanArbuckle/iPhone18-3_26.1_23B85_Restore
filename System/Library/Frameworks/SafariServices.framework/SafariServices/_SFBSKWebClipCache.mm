@interface _SFBSKWebClipCache
+ (id)sharedWebClipCache;
- (void)_reloadWebClips;
- (void)_setWebClipURLs:(id *)ls;
@end

@implementation _SFBSKWebClipCache

+ (id)sharedWebClipCache
{
  if (+[_SFBSKWebClipCache sharedWebClipCache]::once != -1)
  {
    +[_SFBSKWebClipCache sharedWebClipCache];
  }

  v3 = +[_SFBSKWebClipCache sharedWebClipCache]::cache;

  return v3;
}

- (void)_reloadWebClips
{
  if (self)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXWebApp();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D4644000, v2, OS_LOG_TYPE_DEFAULT, "Fetching web clips", buf, 2u);
    }

    v3 = MEMORY[0x1E698F588];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37___SFBSKWebClipCache__reloadWebClips__block_invoke;
    v5[3] = &unk_1E8490B90;
    v5[4] = self;
    selfCopy = self;
    [v3 fetchWebClipsURLWithCompletionHandler:v5];
  }
}

- (void)_setWebClipURLs:(id *)ls
{
  v4 = a2;
  if (ls && ([ls[1] isEqualToArray:v4] & 1) == 0)
  {
    objc_storeStrong(ls + 1, a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38___SFBSKWebClipCache__setWebClipURLs___block_invoke;
    block[3] = &unk_1E8490658;
    block[4] = ls;
    lsCopy = ls;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end