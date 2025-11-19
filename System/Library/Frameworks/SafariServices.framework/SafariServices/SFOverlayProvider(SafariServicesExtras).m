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
  [a1 _setPreferencesVendor:v7];
  v8 = [v7 appInfoOverlayPreferenceManager];

  v9 = [a1 _resolvedPreferenceDomain];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __90__SFOverlayProvider_SafariServicesExtras__requestOverlayWithPreferencesVendor_completion___block_invoke;
  v11[3] = &unk_1E8495C68;
  v11[4] = a1;
  v12 = v6;
  v10 = v6;
  [v8 getAppInfoOverlayPreferenceForDomain:v9 completionHandler:v11];
}

- (void)_updateAppClipOverlayPreferenceHook
{
  v2 = [a1 url];
  v3 = [v2 safari_userVisibleHostWithoutWWWSubdomain];

  v4 = [a1 _preferencesVendor];
  v5 = [v4 appInfoOverlayPreferenceManager];
  v6 = [a1 _resolvedPreferenceDomain];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__SFOverlayProvider_SafariServicesExtras___updateAppClipOverlayPreferenceHook__block_invoke;
  v8[3] = &unk_1E848FA00;
  v9 = v3;
  v7 = v3;
  [v5 setAppInfoOverlayPreferenceForDomain:v6 settings:0 completionHandler:v8];
}

- (id)_resolvedPreferenceDomain
{
  v2 = [a1 url];
  v3 = [v2 safari_userVisibleHostWithoutWWWSubdomain];

  if ([v3 safari_isCaseInsensitiveEqualToString:@"appclip.apple.com"])
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [a1 bundleIdentifier];
    v6 = [v4 stringWithFormat:@"%@:%@", @"appclip.apple.com", v5];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

@end