void sub_BF8(uint64_t a1)
{
  v19 = [DNDStateService serviceForClientIdentifier:@"com.apple.donotdisturb.siri.assistant"];
  v2 = [v19 queryCurrentStateWithError:0];
  v3 = [v2 isActive];
  if ([*(a1 + 32) toggle])
  {
    v4 = (v3 ^ 1);
  }

  else
  {
    v4 = [*(a1 + 32) value];
  }

  v5 = [*(a1 + 32) dryRun];
  if (v3 == v4)
  {
    v6 = objc_alloc_init(SACommandFailed);
    [v6 setErrorCode:SASettingValueUnchangedErrorCode];
    [v6 setReason:{@"Value unchanged, No change was made"}];
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = v6;
    if (v6)
    {
      v9 = v8;
      goto LABEL_18;
    }
  }

  else
  {
    v10 = [DNDModeAssertionService serviceForClientIdentifier:@"com.apple.donotdisturb.siri.assistant"];
    v11 = v10;
    if (v4)
    {
      v12 = objc_alloc_init(DNDMutableModeAssertionDetails);
      [v12 setIdentifier:@"com.apple.donotdisturb.siri.assistant"];
      v13 = [DNDModeAssertionLifetime lifetimeUntilEndOfScheduleWithIdentifier:DNDDefaultScheduleIdentifier];
      [v12 setLifetime:v13];

      [v12 setReason:1];
      v14 = [v11 takeModeAssertionWithDetails:v12 error:0];
    }

    else
    {
      [v10 invalidateAllActiveModeAssertionsWithError:0];
    }
  }

  v15 = objc_alloc_init(SASettingBooleanEntity);
  [v15 setValue:v4];
  v16 = [NSNumber numberWithBool:v3];
  [v15 setPreviousValue:v16];

  v9 = objc_alloc_init(SASettingSetBoolResponse);
  [v9 setSetting:v15];

LABEL_18:
  v17 = *(a1 + 40);
  v18 = [v9 dictionary];
  (*(v17 + 16))(v17, v18);
}

void sub_FB0(uint64_t a1)
{
  v8 = [DNDStateService serviceForClientIdentifier:@"com.apple.donotdisturb.siri.assistant"];
  v2 = [v8 queryCurrentStateWithError:0];
  v3 = [v2 isActive];
  v4 = objc_alloc_init(SASettingBooleanEntity);
  [v4 setValue:v3];
  v5 = objc_alloc_init(SASettingGetBoolResponse);
  [v5 setSetting:v4];
  v6 = *(a1 + 32);
  v7 = [v5 dictionary];
  (*(v6 + 16))(v6, v7);
}