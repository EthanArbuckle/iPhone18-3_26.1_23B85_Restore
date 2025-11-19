@interface SASyncAnchor(SyncPrivate)
+ (id)_af_normalizedKeyForKey:()SyncPrivate appBundleID:syncSlotName:;
- (id)_af_normalizedKey;
- (uint64_t)_af_isValid;
@end

@implementation SASyncAnchor(SyncPrivate)

- (uint64_t)_af_isValid
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [a1 key];
  if ([v2 length])
  {
    v3 = [a1 appMetaData];
    v4 = [v3 appIdentifyingInfo];
    v5 = [v4 bundleId];
    v6 = [v4 clientIdentifier];
    if ([v2 isEqualToString:@"com.apple.siri.appIntentSupportPolicyAndVocab"])
    {
      if ([v5 length])
      {
        v7 = v5;
        v8 = v7;
        if (v7 == @"com.apple.ShortcutsActions" || v7 && (v9 = [@"com.apple.ShortcutsActions" isEqual:v7], v8, v9))
        {
          v10 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
          {
            v19 = 136315394;
            v20 = "[SASyncAnchor(SyncPrivate) _af_isValid]";
            v21 = 2112;
            v22 = v8;
            _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s ShortcutsActions received in %@ anchor key, marking as invalid and skipping", &v19, 0x16u);
          }

          goto LABEL_23;
        }

LABEL_15:
        v12 = 1;
LABEL_24:

        goto LABEL_25;
      }

      v15 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315138;
        v20 = "[SASyncAnchor(SyncPrivate) _af_isValid]";
        v16 = "%s SASyncAppMetaData has no bundleID, but it is required for this key";
LABEL_22:
        _os_log_error_impl(&dword_1912FE000, v15, OS_LOG_TYPE_ERROR, v16, &v19, 0xCu);
      }
    }

    else
    {
      if (![v2 isEqualToString:@"com.apple.siri.vocabularyupdates"])
      {
        goto LABEL_15;
      }

      v13 = [v3 syncSlots];
      v14 = [v13 count];

      if (v14 == 1)
      {
        if ([v6 length])
        {
          goto LABEL_15;
        }

        v15 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v19 = 136315138;
          v20 = "[SASyncAnchor(SyncPrivate) _af_isValid]";
          v16 = "%s SASyncAppMetaData has no -applicationClientIdentifier, as required for this key";
          goto LABEL_22;
        }
      }

      else
      {
        v15 = AFSiriLogContextDaemon;
        if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
        {
          v19 = 136315138;
          v20 = "[SASyncAnchor(SyncPrivate) _af_isValid]";
          v16 = "%s SASyncAppMetaData does not have exactly one -syncSlots, as required for this key";
          goto LABEL_22;
        }
      }
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315138;
    v20 = "[SASyncAnchor(SyncPrivate) _af_isValid]";
    _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s Sync info is missing a key", &v19, 0xCu);
  }

  v12 = 0;
LABEL_25:

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)_af_normalizedKey
{
  v2 = [a1 appMetaData];
  v3 = [v2 _af_preferredBundleID];
  v4 = [v2 syncSlots];
  v5 = [v4 firstObject];

  v6 = objc_opt_class();
  v7 = [a1 key];
  v8 = [v6 _af_normalizedKeyForKey:v7 appBundleID:v3 syncSlotName:v5];

  return v8;
}

+ (id)_af_normalizedKeyForKey:()SyncPrivate appBundleID:syncSlotName:
{
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = &stru_1F0512680;
  }

  v8 = v7;
  v9 = a5;
  v10 = a3;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F0512680;
  }

  v12 = v11;

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@#%@#%@", v10, v8, v12];

  return v13;
}

@end