@interface AXBackgroundSoundsIntentHandler
- (void)handleSetBackgroundSound:(id)a3 completion:(id)a4;
- (void)handleSetBackgroundSoundTimer:(id)a3 completion:(id)a4;
- (void)handleSetBackgroundSoundVolume:(id)a3 completion:(id)a4;
- (void)handleToggleBackgroundSounds:(id)a3 completion:(id)a4;
- (void)handleToggleBackgroundSoundsTimer:(id)a3 completion:(id)a4;
- (void)provideBackgroundSoundOptionsCollectionForSetBackgroundSound:(id)a3 withCompletion:(id)a4;
- (void)resolveAlwaysForSetBackgroundSoundTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveBackgroundSoundForSetBackgroundSound:(id)a3 withCompletion:(id)a4;
- (void)resolveDurationForSetBackgroundSoundTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveDurationForToggleBackgroundSounds:(id)a3 withCompletion:(id)a4;
- (void)resolveEndIntervalForSetBackgroundSoundTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveIntervalForSetBackgroundSoundTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleBackgroundSounds:(id)a3 withCompletion:(id)a4;
- (void)resolveOperationForToggleBackgroundSoundsTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveSettingForToggleBackgroundSounds:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleBackgroundSounds:(id)a3 withCompletion:(id)a4;
- (void)resolveStateForToggleBackgroundSoundsTimer:(id)a3 withCompletion:(id)a4;
- (void)resolveVolumeTypeForSetBackgroundSoundVolume:(id)a3 withCompletion:(id)a4;
- (void)resolveVolumeValueForSetBackgroundSoundVolume:(id)a3 withCompletion:(id)a4;
@end

@implementation AXBackgroundSoundsIntentHandler

- (void)handleToggleBackgroundSounds:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([(__CFString *)v5 operation]== 1 && ![(__CFString *)v5 state])
  {
    v19 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D80C(v5, v19);
    }

    v22 = 5;
    goto LABEL_29;
  }

  v7 = [(__CFString *)v5 setting];
  v8 = +[HUComfortSoundsSettings sharedInstance];
  v9 = v8;
  if (v7 == 1)
  {
    v10 = [v8 comfortSoundsEnabled];
  }

  else
  {
    v10 = [v8 mixesWithMedia];
  }

  v11 = v10;

  v12 = v11 ^ 1;
  v13 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412290;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handling ToggleBackgroundSounds intent %@", &v30, 0xCu);
  }

  if ([(__CFString *)v5 operation]== 1)
  {
    v14 = [(__CFString *)v5 state];
    v12 = v14 == 1;
    v15 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      if (v14 == 1)
      {
        v16 = @"YES";
      }

      v30 = 138412290;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Turning Background Sounds on via shortcut operation %@", &v30, 0xCu);
    }
  }

  if ([(__CFString *)v5 setting]== 1)
  {
    v17 = +[HUComfortSoundsSettings sharedInstance];
    [v17 setComfortSoundsEnabled:v12];
LABEL_18:

    goto LABEL_19;
  }

  if ([(__CFString *)v5 setting]== 2)
  {
    v17 = +[HUComfortSoundsSettings sharedInstance];
    [v17 setMixesWithMedia:v12];
    goto LABEL_18;
  }

LABEL_19:
  if (!v12)
  {
    goto LABEL_30;
  }

  v18 = [(__CFString *)v5 duration];
  if (!v18)
  {
    goto LABEL_30;
  }

  v19 = v18;
  v20 = [(__CFString *)v5 duration];
  [v20 doubleValue];
  if (v21 >= 60.0)
  {
    v23 = [(__CFString *)v5 duration];
    [v23 doubleValue];
    v25 = v24;

    if (v25 < 86400.0)
    {
      v26 = +[HUComfortSoundsSettings sharedInstance];
      v27 = [(__CFString *)v5 duration];
      [v27 doubleValue];
      [v26 setTimerDurationInSeconds:?];

      v28 = +[HUComfortSoundsSettings sharedInstance];
      [v28 setTimerOption:1];

      v19 = +[HUComfortSoundsSettings sharedInstance];
      [v19 setTimerEnabled:1];
      goto LABEL_28;
    }

LABEL_30:
    v22 = 4;
    goto LABEL_31;
  }

LABEL_28:
  v22 = 4;
LABEL_29:

LABEL_31:
  v29 = [[AXToggleBackgroundSoundsIntentResponse alloc] initWithCode:v22 userActivity:0];
  v6[2](v6, v29);
}

- (void)resolveOperationForToggleBackgroundSounds:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleBackgroundSounds:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveSettingForToggleBackgroundSounds:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXBackgroundSoundsSettingResolutionResult successWithResolvedBackgroundSoundsSetting:](AXBackgroundSoundsSettingResolutionResult, "successWithResolvedBackgroundSoundsSetting:", [a3 setting]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveDurationForToggleBackgroundSounds:(id)a3 withCompletion:(id)a4
{
  v15 = a3;
  v5 = a4;
  v6 = [v15 duration];
  if (v6)
  {
    v7 = v6;
    v8 = [v15 duration];
    [v8 doubleValue];
    if (v9 >= 60.0)
    {
      v10 = [v15 duration];
      [v10 doubleValue];
      v12 = v11;

      if (v12 < 86400.0)
      {
        v13 = [v15 duration];
        [v13 doubleValue];
        v14 = [INTimeIntervalResolutionResult successWithResolvedTimeInterval:?];
        v5[2](v5, v14);

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v13 = +[INTimeIntervalResolutionResult notRequired];
  v5[2](v5, v13);
LABEL_7:
}

- (void)handleSetBackgroundSoundVolume:(id)a3 completion:(id)a4
{
  v11 = a3;
  v5 = a4;
  v6 = [v11 volumeValue];
  [v6 doubleValue];
  v8 = v7 / 100.0;

  if ([v11 volumeType] == 1)
  {
    v9 = +[HUComfortSoundsSettings sharedInstance];
    [v9 setRelativeVolume:v8];
  }

  else
  {
    if ([v11 volumeType] != 2)
    {
      goto LABEL_6;
    }

    v9 = +[HUComfortSoundsSettings sharedInstance];
    [v9 setMediaVolume:v8];
  }

LABEL_6:
  v10 = [[AXSetBackgroundSoundVolumeIntentResponse alloc] initWithCode:4 userActivity:0];
  v5[2](v5, v10);
}

- (void)resolveVolumeTypeForSetBackgroundSoundVolume:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXBackgroundSoundsVolumeResolutionResult successWithResolvedBackgroundSoundsVolume:](AXBackgroundSoundsVolumeResolutionResult, "successWithResolvedBackgroundSoundsVolume:", [a3 volumeType]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveVolumeValueForSetBackgroundSoundVolume:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8 = [a3 volumeValue];
  [v8 doubleValue];
  v7 = [AXSetBackgroundSoundVolumeVolumeValueResolutionResult successWithResolvedValue:?];
  (*(a4 + 2))(v6, v7);
}

- (void)handleSetBackgroundSoundTimer:(id)a3 completion:(id)a4
{
  v19 = a3;
  v5 = a4;
  if ([v19 interval] == 1)
  {
    v6 = +[NSCalendar currentCalendar];
    v7 = [v19 endInterval];
    v8 = [v6 dateFromComponents:v7];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;

    v11 = +[HUComfortSoundsSettings sharedInstance];
    [v11 setTimerEndInterval:v10];
    v12 = 0;
  }

  else
  {
    if ([v19 interval] != 2)
    {
      goto LABEL_6;
    }

    v11 = +[HUComfortSoundsSettings sharedInstance];
    v13 = [v19 duration];
    [v13 doubleValue];
    [v11 setTimerDurationInSeconds:?];

    v12 = 1;
  }

  v14 = +[HUComfortSoundsSettings sharedInstance];
  [v14 setTimerOption:v12];

LABEL_6:
  v15 = +[HUComfortSoundsSettings sharedInstance];
  v16 = [v19 always];
  [v15 setTimerOnlyOnFirstSession:{objc_msgSend(v16, "BOOLValue") ^ 1}];

  v17 = +[HUComfortSoundsSettings sharedInstance];
  [v17 setTimerEnabled:1];

  v18 = [[AXSetBackgroundSoundTimerIntentResponse alloc] initWithCode:4 userActivity:0];
  v5[2](v5, v18);
}

- (void)resolveIntervalForSetBackgroundSoundTimer:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXBackgroundSoundsTimerResolutionResult successWithResolvedBackgroundSoundsTimer:](AXBackgroundSoundsTimerResolutionResult, "successWithResolvedBackgroundSoundsTimer:", [a3 interval]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveDurationForSetBackgroundSoundTimer:(id)a3 withCompletion:(id)a4
{
  v16 = a3;
  v5 = a4;
  v6 = [v16 duration];

  if (!v6)
  {
    v10 = +[AXSetBackgroundSoundTimerDurationResolutionResult needsValue];
    goto LABEL_5;
  }

  v7 = [v16 duration];
  [v7 doubleValue];
  v9 = v8;

  if (v9 < 60.0)
  {
    v10 = [AXSetBackgroundSoundTimerDurationResolutionResult unsupportedForReason:2];
LABEL_5:
    v11 = v10;
    v5[2](v5, v10);
    goto LABEL_6;
  }

  v12 = [v16 duration];
  [v12 doubleValue];
  v14 = v13;

  if (v14 >= 86400.0)
  {
    v11 = [AXSetBackgroundSoundTimerDurationResolutionResult unsupportedForReason:1];
    v5[2](v5, v11);
  }

  else
  {
    v11 = [v16 duration];
    [v11 doubleValue];
    v15 = [AXSetBackgroundSoundTimerDurationResolutionResult successWithResolvedTimeInterval:?];
    v5[2](v5, v15);
  }

LABEL_6:
}

- (void)resolveEndIntervalForSetBackgroundSoundTimer:(id)a3 withCompletion:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 endInterval];

  if (v6)
  {
    v7 = [v9 endInterval];
    v8 = [INDateComponentsResolutionResult successWithResolvedDateComponents:v7];
    v5[2](v5, v8);

    v5 = v8;
  }

  else
  {
    v7 = +[INDateComponentsResolutionResult needsValue];
    v5[2](v5, v7);
  }
}

- (void)resolveAlwaysForSetBackgroundSoundTimer:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8 = [a3 always];
  v7 = +[INBooleanResolutionResult successWithResolvedValue:](INBooleanResolutionResult, "successWithResolvedValue:", [v8 BOOLValue]);
  (*(a4 + 2))(v6, v7);
}

- (void)handleSetBackgroundSound:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 backgroundSound];
  v8 = 1;
  while (1)
  {
    v9 = [HUComfortSound defaultComfortSoundForGroup:v8];
    v10 = [(AXSetBackgroundSoundIntentResponse *)v9 name];
    v11 = [v7 identifier];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      break;
    }

    if (++v8 == 17)
    {
      goto LABEL_7;
    }
  }

  if (v9)
  {
    v13 = +[HUComfortSoundsSettings sharedInstance];
    [v13 setSelectedComfortSound:v9];

    v14 = [[AXSetBackgroundSoundIntentResponse alloc] initWithCode:4 userActivity:0];
    v6[2](v6, v14);

    goto LABEL_10;
  }

LABEL_7:
  v15 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "SetBackgroundSoundIntentHandler: Comfort sound type was unknown: %@", &v16, 0xCu);
  }

  v9 = [[AXSetBackgroundSoundIntentResponse alloc] initWithCode:5 userActivity:0];
  v6[2](v6, v9);
LABEL_10:
}

- (void)provideBackgroundSoundOptionsCollectionForSetBackgroundSound:(id)a3 withCompletion:(id)a4
{
  v12 = a4;
  v4 = objc_opt_new();
  for (i = 1; i != 17; ++i)
  {
    v6 = [HUComfortSound defaultComfortSoundForGroup:i];
    v7 = [AXBackgroundSound alloc];
    v8 = [v6 name];
    v9 = [v6 localizedName];
    v10 = [(AXBackgroundSound *)v7 initWithIdentifier:v8 displayString:v9];

    [v4 addObject:v10];
  }

  v11 = [[INObjectCollection alloc] initWithItems:v4];
  v12[2](v12, v11, 0);
}

- (void)resolveBackgroundSoundForSetBackgroundSound:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v8 = [a3 backgroundSound];
  v7 = [AXBackgroundSoundResolutionResult successWithResolvedBackgroundSound:v8];
  (*(a4 + 2))(v6, v7);
}

- (void)handleToggleBackgroundSoundsTimer:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1000066D8();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    v14 = v5;
    v15 = 1024;
    v16 = v7 ^ 1;
    v17 = 1024;
    v18 = sub_1000066D8();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v13, 0x18u);
  }

  if ([v5 operation] != 1)
  {
    v9 = v7 ^ 1;
    goto LABEL_9;
  }

  v9 = [v5 state] == 1;
  if ([v5 state])
  {
LABEL_9:
    v10 = +[HUComfortSoundsSettings sharedInstance];
    [v10 setTimerEnabled:v9 & 1];
    v11 = 4;
    goto LABEL_10;
  }

  v10 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_10000D80C(v5, v10);
  }

  v11 = 5;
LABEL_10:

  v12 = [[AXToggleBackgroundSoundsTimerIntentResponse alloc] initWithCode:v11 userActivity:0];
  v6[2](v6, v12);
}

- (void)resolveOperationForToggleBackgroundSoundsTimer:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [a3 operation]);
  (*(a4 + 2))(v6, v7);
}

- (void)resolveStateForToggleBackgroundSoundsTimer:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [a3 state]);
  (*(a4 + 2))(v6, v7);
}

@end