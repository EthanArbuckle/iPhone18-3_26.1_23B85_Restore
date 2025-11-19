@interface SFPageZoomPreferenceManager
@end

@implementation SFPageZoomPreferenceManager

void __45___SFPageZoomPreferenceManager_sharedManager__block_invoke()
{
  v0 = [_SFPageZoomPreferenceManager alloc];
  v3 = [MEMORY[0x1E69C8FC8] sharedStore];
  v1 = [(_SFPageZoomPreferenceManager *)v0 initWithPerSitePreferencesStore:v3];
  v2 = sharedManager_sharedManager;
  sharedManager_sharedManager = v1;
}

uint64_t __82___SFPageZoomPreferenceManager_setValue_ofPreference_forDomain_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  if (v2)
  {
    v4 = MEMORY[0x1E696ABB0];

    return [v4 _sf_postPerSitePreferencesDidChangeDistributedNotification];
  }

  return result;
}

uint64_t __79___SFPageZoomPreferenceManager_setDefaultValue_ofPreference_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  if (v2)
  {
    v4 = MEMORY[0x1E696ABB0];

    return [v4 _sf_postPerSitePreferencesDidChangeDistributedNotification];
  }

  return result;
}

uint64_t __98___SFPageZoomPreferenceManager_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  if (v2)
  {
    v4 = MEMORY[0x1E696ABB0];

    return [v4 _sf_postPerSitePreferencesDidChangeDistributedNotification];
  }

  return result;
}

@end