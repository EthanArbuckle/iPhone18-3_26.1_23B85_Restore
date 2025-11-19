@interface MPMusicPlayerGetBundleInfoPair
@end

@implementation MPMusicPlayerGetBundleInfoPair

void ___MPMusicPlayerGetBundleInfoPair_block_invoke()
{
  v15 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = v15;
    v1 = [v0 bundleIdentifier];
    if ([v1 length])
    {
      v2 = v1;
      v3 = _MPMusicPlayerGetBundleInfoPair___bundleIdentifier;
      _MPMusicPlayerGetBundleInfoPair___bundleIdentifier = v2;
    }

    else
    {
      v3 = [MEMORY[0x1E696AAE8] mainBundle];
      v4 = [v3 bundleIdentifier];
      v5 = _MPMusicPlayerGetBundleInfoPair___bundleIdentifier;
      _MPMusicPlayerGetBundleInfoPair___bundleIdentifier = v4;
    }

    v6 = [v0 shortVersionString];
    v7 = [v0 bundleVersion];
    v8 = [v6 length];
    v9 = v6;
    if (v8 || (v10 = [v7 length], v9 = v7, v10))
    {
      objc_storeStrong(&_MPMusicPlayerGetBundleInfoPair___bundleVersion, v9);
    }
  }

  v11 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F150AC30];
  v12 = v11;
  if (_MPMusicPlayerGetBundleInfoPair___bundleIdentifier && [v11 containsObject:?])
  {
    v13 = _MPMusicPlayerGetBundleInfoPair___bundleIdentifier;
    _MPMusicPlayerGetBundleInfoPair___bundleIdentifier = &stru_1F149ECA8;

    v14 = _MPMusicPlayerGetBundleInfoPair___bundleVersion;
    _MPMusicPlayerGetBundleInfoPair___bundleVersion = &stru_1F149ECA8;
  }
}

@end