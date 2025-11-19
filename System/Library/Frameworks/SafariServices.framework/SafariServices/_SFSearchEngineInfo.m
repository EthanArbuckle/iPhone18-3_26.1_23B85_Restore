@interface _SFSearchEngineInfo
- (BOOL)searchShouldUseSafeSearchTemplate;
@end

@implementation _SFSearchEngineInfo

- (BOOL)searchShouldUseSafeSearchTemplate
{
  if ((isWebFilterEnabled_determinedWebFilterState & 1) == 0)
  {
    if (WebContentAnalysisLibraryCore())
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2050000000;
      v2 = getWFUserSettingsClass_softClass;
      v12 = getWFUserSettingsClass_softClass;
      if (!getWFUserSettingsClass_softClass)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __getWFUserSettingsClass_block_invoke;
        v8[3] = &unk_1E848F710;
        v8[4] = &v9;
        __getWFUserSettingsClass_block_invoke(v8);
        v2 = v10[3];
      }

      v3 = v2;
      _Block_object_dispose(&v9, 8);
      v4 = [v2 alloc];
      v5 = NSUserName();
      v6 = [v4 initWithUserName:v5];

      isWebFilterEnabled_webFilterEnabled = [v6 restrictionType] != 0;
    }

    isWebFilterEnabled_determinedWebFilterState = 1;
  }

  return isWebFilterEnabled_webFilterEnabled;
}

@end