@interface SFOverlayProvider(SafariServicesExtras)
- (id)_resolvedPreferenceDomain;
- (void)_updateAppClipOverlayPreferenceHook;
- (void)requestOverlayWithPreferencesVendor:()SafariServicesExtras completion:;
@end

@implementation SFOverlayProvider(SafariServicesExtras)

- (void)requestOverlayWithPreferencesVendor:()SafariServicesExtras completion:
{
  v6 = a4;
  v7 = a3;
  [self _setPreferencesVendor:v7];
  appInfoOverlayPreferenceManager = [v7 appInfoOverlayPreferenceManager];

  _resolvedPreferenceDomain = [self _resolvedPreferenceDomain];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__SFOverlayProvider_SafariServicesExtras__requestOverlayWithPreferencesVendor_completion___block_invoke;
  v11[3] = &unk_1E8495C68;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [appInfoOverlayPreferenceManager getAppInfoOverlayPreferenceForDomain:_resolvedPreferenceDomain completionHandler:v11];
}

- (void)_updateAppClipOverlayPreferenceHook
{
  v2 = [self url];
  safari_userVisibleHostWithoutWWWSubdomain = [v2 safari_userVisibleHostWithoutWWWSubdomain];

  _preferencesVendor = [self _preferencesVendor];
  appInfoOverlayPreferenceManager = [_preferencesVendor appInfoOverlayPreferenceManager];
  _resolvedPreferenceDomain = [self _resolvedPreferenceDomain];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__SFOverlayProvider_SafariServicesExtras___updateAppClipOverlayPreferenceHook__block_invoke;
  v8[3] = &unk_1E848FA00;
  v9 = safari_userVisibleHostWithoutWWWSubdomain;
  v7 = safari_userVisibleHostWithoutWWWSubdomain;
  [appInfoOverlayPreferenceManager setAppInfoOverlayPreferenceForDomain:_resolvedPreferenceDomain settings:0 completionHandler:v8];
}

- (id)_resolvedPreferenceDomain
{
  v2 = [self url];
  safari_userVisibleHostWithoutWWWSubdomain = [v2 safari_userVisibleHostWithoutWWWSubdomain];

  if ([safari_userVisibleHostWithoutWWWSubdomain safari_isCaseInsensitiveEqualToString:@"appclip.apple.com"])
  {
    v4 = MEMORY[0x1E696AEC0];
    bundleIdentifier = [self bundleIdentifier];
    v6 = [v4 stringWithFormat:@"%@:%@", @"appclip.apple.com", bundleIdentifier];
  }

  else
  {
    v6 = safari_userVisibleHostWithoutWWWSubdomain;
  }

  return v6;
}

@end