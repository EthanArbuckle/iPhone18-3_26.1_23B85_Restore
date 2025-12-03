@interface AXBackgroundSoundsIntentHandler
- (void)handleSetBackgroundSound:(id)sound completion:(id)completion;
- (void)handleSetBackgroundSoundTimer:(id)timer completion:(id)completion;
- (void)handleSetBackgroundSoundVolume:(id)volume completion:(id)completion;
- (void)handleToggleBackgroundSounds:(id)sounds completion:(id)completion;
- (void)handleToggleBackgroundSoundsTimer:(id)timer completion:(id)completion;
- (void)provideBackgroundSoundOptionsCollectionForSetBackgroundSound:(id)sound withCompletion:(id)completion;
- (void)resolveAlwaysForSetBackgroundSoundTimer:(id)timer withCompletion:(id)completion;
- (void)resolveBackgroundSoundForSetBackgroundSound:(id)sound withCompletion:(id)completion;
- (void)resolveDurationForSetBackgroundSoundTimer:(id)timer withCompletion:(id)completion;
- (void)resolveDurationForToggleBackgroundSounds:(id)sounds withCompletion:(id)completion;
- (void)resolveEndIntervalForSetBackgroundSoundTimer:(id)timer withCompletion:(id)completion;
- (void)resolveIntervalForSetBackgroundSoundTimer:(id)timer withCompletion:(id)completion;
- (void)resolveOperationForToggleBackgroundSounds:(id)sounds withCompletion:(id)completion;
- (void)resolveOperationForToggleBackgroundSoundsTimer:(id)timer withCompletion:(id)completion;
- (void)resolveSettingForToggleBackgroundSounds:(id)sounds withCompletion:(id)completion;
- (void)resolveStateForToggleBackgroundSounds:(id)sounds withCompletion:(id)completion;
- (void)resolveStateForToggleBackgroundSoundsTimer:(id)timer withCompletion:(id)completion;
- (void)resolveVolumeTypeForSetBackgroundSoundVolume:(id)volume withCompletion:(id)completion;
- (void)resolveVolumeValueForSetBackgroundSoundVolume:(id)volume withCompletion:(id)completion;
@end

@implementation AXBackgroundSoundsIntentHandler

- (void)handleToggleBackgroundSounds:(id)sounds completion:(id)completion
{
  soundsCopy = sounds;
  completionCopy = completion;
  if ([(__CFString *)soundsCopy operation]== 1 && ![(__CFString *)soundsCopy state])
  {
    v19 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10000D80C(soundsCopy, v19);
    }

    v22 = 5;
    goto LABEL_29;
  }

  setting = [(__CFString *)soundsCopy setting];
  v8 = +[HUComfortSoundsSettings sharedInstance];
  v9 = v8;
  if (setting == 1)
  {
    comfortSoundsEnabled = [v8 comfortSoundsEnabled];
  }

  else
  {
    comfortSoundsEnabled = [v8 mixesWithMedia];
  }

  v11 = comfortSoundsEnabled;

  v12 = v11 ^ 1;
  v13 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138412290;
    v31 = soundsCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Handling ToggleBackgroundSounds intent %@", &v30, 0xCu);
  }

  if ([(__CFString *)soundsCopy operation]== 1)
  {
    state = [(__CFString *)soundsCopy state];
    v12 = state == 1;
    v15 = AXLogSiriShortcuts();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"NO";
      if (state == 1)
      {
        v16 = @"YES";
      }

      v30 = 138412290;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Turning Background Sounds on via shortcut operation %@", &v30, 0xCu);
    }
  }

  if ([(__CFString *)soundsCopy setting]== 1)
  {
    v17 = +[HUComfortSoundsSettings sharedInstance];
    [v17 setComfortSoundsEnabled:v12];
LABEL_18:

    goto LABEL_19;
  }

  if ([(__CFString *)soundsCopy setting]== 2)
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

  duration = [(__CFString *)soundsCopy duration];
  if (!duration)
  {
    goto LABEL_30;
  }

  v19 = duration;
  duration2 = [(__CFString *)soundsCopy duration];
  [duration2 doubleValue];
  if (v21 >= 60.0)
  {
    duration3 = [(__CFString *)soundsCopy duration];
    [duration3 doubleValue];
    v25 = v24;

    if (v25 < 86400.0)
    {
      v26 = +[HUComfortSoundsSettings sharedInstance];
      duration4 = [(__CFString *)soundsCopy duration];
      [duration4 doubleValue];
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
  completionCopy[2](completionCopy, v29);
}

- (void)resolveOperationForToggleBackgroundSounds:(id)sounds withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [sounds operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleBackgroundSounds:(id)sounds withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [sounds state]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveSettingForToggleBackgroundSounds:(id)sounds withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXBackgroundSoundsSettingResolutionResult successWithResolvedBackgroundSoundsSetting:](AXBackgroundSoundsSettingResolutionResult, "successWithResolvedBackgroundSoundsSetting:", [sounds setting]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveDurationForToggleBackgroundSounds:(id)sounds withCompletion:(id)completion
{
  soundsCopy = sounds;
  completionCopy = completion;
  duration = [soundsCopy duration];
  if (duration)
  {
    v7 = duration;
    duration2 = [soundsCopy duration];
    [duration2 doubleValue];
    if (v9 >= 60.0)
    {
      duration3 = [soundsCopy duration];
      [duration3 doubleValue];
      v12 = v11;

      if (v12 < 86400.0)
      {
        duration4 = [soundsCopy duration];
        [duration4 doubleValue];
        v14 = [INTimeIntervalResolutionResult successWithResolvedTimeInterval:?];
        completionCopy[2](completionCopy, v14);

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  duration4 = +[INTimeIntervalResolutionResult notRequired];
  completionCopy[2](completionCopy, duration4);
LABEL_7:
}

- (void)handleSetBackgroundSoundVolume:(id)volume completion:(id)completion
{
  volumeCopy = volume;
  completionCopy = completion;
  volumeValue = [volumeCopy volumeValue];
  [volumeValue doubleValue];
  v8 = v7 / 100.0;

  if ([volumeCopy volumeType] == 1)
  {
    v9 = +[HUComfortSoundsSettings sharedInstance];
    [v9 setRelativeVolume:v8];
  }

  else
  {
    if ([volumeCopy volumeType] != 2)
    {
      goto LABEL_6;
    }

    v9 = +[HUComfortSoundsSettings sharedInstance];
    [v9 setMediaVolume:v8];
  }

LABEL_6:
  v10 = [[AXSetBackgroundSoundVolumeIntentResponse alloc] initWithCode:4 userActivity:0];
  completionCopy[2](completionCopy, v10);
}

- (void)resolveVolumeTypeForSetBackgroundSoundVolume:(id)volume withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXBackgroundSoundsVolumeResolutionResult successWithResolvedBackgroundSoundsVolume:](AXBackgroundSoundsVolumeResolutionResult, "successWithResolvedBackgroundSoundsVolume:", [volume volumeType]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveVolumeValueForSetBackgroundSoundVolume:(id)volume withCompletion:(id)completion
{
  completionCopy = completion;
  volumeValue = [volume volumeValue];
  [volumeValue doubleValue];
  v7 = [AXSetBackgroundSoundVolumeVolumeValueResolutionResult successWithResolvedValue:?];
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleSetBackgroundSoundTimer:(id)timer completion:(id)completion
{
  timerCopy = timer;
  completionCopy = completion;
  if ([timerCopy interval] == 1)
  {
    v6 = +[NSCalendar currentCalendar];
    endInterval = [timerCopy endInterval];
    v8 = [v6 dateFromComponents:endInterval];
    [v8 timeIntervalSinceReferenceDate];
    v10 = v9;

    v11 = +[HUComfortSoundsSettings sharedInstance];
    [v11 setTimerEndInterval:v10];
    v12 = 0;
  }

  else
  {
    if ([timerCopy interval] != 2)
    {
      goto LABEL_6;
    }

    v11 = +[HUComfortSoundsSettings sharedInstance];
    duration = [timerCopy duration];
    [duration doubleValue];
    [v11 setTimerDurationInSeconds:?];

    v12 = 1;
  }

  v14 = +[HUComfortSoundsSettings sharedInstance];
  [v14 setTimerOption:v12];

LABEL_6:
  v15 = +[HUComfortSoundsSettings sharedInstance];
  always = [timerCopy always];
  [v15 setTimerOnlyOnFirstSession:{objc_msgSend(always, "BOOLValue") ^ 1}];

  v17 = +[HUComfortSoundsSettings sharedInstance];
  [v17 setTimerEnabled:1];

  v18 = [[AXSetBackgroundSoundTimerIntentResponse alloc] initWithCode:4 userActivity:0];
  completionCopy[2](completionCopy, v18);
}

- (void)resolveIntervalForSetBackgroundSoundTimer:(id)timer withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXBackgroundSoundsTimerResolutionResult successWithResolvedBackgroundSoundsTimer:](AXBackgroundSoundsTimerResolutionResult, "successWithResolvedBackgroundSoundsTimer:", [timer interval]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveDurationForSetBackgroundSoundTimer:(id)timer withCompletion:(id)completion
{
  timerCopy = timer;
  completionCopy = completion;
  duration = [timerCopy duration];

  if (!duration)
  {
    v10 = +[AXSetBackgroundSoundTimerDurationResolutionResult needsValue];
    goto LABEL_5;
  }

  duration2 = [timerCopy duration];
  [duration2 doubleValue];
  v9 = v8;

  if (v9 < 60.0)
  {
    v10 = [AXSetBackgroundSoundTimerDurationResolutionResult unsupportedForReason:2];
LABEL_5:
    duration4 = v10;
    completionCopy[2](completionCopy, v10);
    goto LABEL_6;
  }

  duration3 = [timerCopy duration];
  [duration3 doubleValue];
  v14 = v13;

  if (v14 >= 86400.0)
  {
    duration4 = [AXSetBackgroundSoundTimerDurationResolutionResult unsupportedForReason:1];
    completionCopy[2](completionCopy, duration4);
  }

  else
  {
    duration4 = [timerCopy duration];
    [duration4 doubleValue];
    v15 = [AXSetBackgroundSoundTimerDurationResolutionResult successWithResolvedTimeInterval:?];
    completionCopy[2](completionCopy, v15);
  }

LABEL_6:
}

- (void)resolveEndIntervalForSetBackgroundSoundTimer:(id)timer withCompletion:(id)completion
{
  timerCopy = timer;
  completionCopy = completion;
  endInterval = [timerCopy endInterval];

  if (endInterval)
  {
    endInterval2 = [timerCopy endInterval];
    v8 = [INDateComponentsResolutionResult successWithResolvedDateComponents:endInterval2];
    completionCopy[2](completionCopy, v8);

    completionCopy = v8;
  }

  else
  {
    endInterval2 = +[INDateComponentsResolutionResult needsValue];
    completionCopy[2](completionCopy, endInterval2);
  }
}

- (void)resolveAlwaysForSetBackgroundSoundTimer:(id)timer withCompletion:(id)completion
{
  completionCopy = completion;
  always = [timer always];
  v7 = +[INBooleanResolutionResult successWithResolvedValue:](INBooleanResolutionResult, "successWithResolvedValue:", [always BOOLValue]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleSetBackgroundSound:(id)sound completion:(id)completion
{
  soundCopy = sound;
  completionCopy = completion;
  backgroundSound = [soundCopy backgroundSound];
  v8 = 1;
  while (1)
  {
    v9 = [HUComfortSound defaultComfortSoundForGroup:v8];
    name = [(AXSetBackgroundSoundIntentResponse *)v9 name];
    identifier = [backgroundSound identifier];
    v12 = [name isEqualToString:identifier];

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
    completionCopy[2](completionCopy, v14);

    goto LABEL_10;
  }

LABEL_7:
  v15 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = soundCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "SetBackgroundSoundIntentHandler: Comfort sound type was unknown: %@", &v16, 0xCu);
  }

  v9 = [[AXSetBackgroundSoundIntentResponse alloc] initWithCode:5 userActivity:0];
  completionCopy[2](completionCopy, v9);
LABEL_10:
}

- (void)provideBackgroundSoundOptionsCollectionForSetBackgroundSound:(id)sound withCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_opt_new();
  for (i = 1; i != 17; ++i)
  {
    v6 = [HUComfortSound defaultComfortSoundForGroup:i];
    v7 = [AXBackgroundSound alloc];
    name = [v6 name];
    localizedName = [v6 localizedName];
    v10 = [(AXBackgroundSound *)v7 initWithIdentifier:name displayString:localizedName];

    [v4 addObject:v10];
  }

  v11 = [[INObjectCollection alloc] initWithItems:v4];
  completionCopy[2](completionCopy, v11, 0);
}

- (void)resolveBackgroundSoundForSetBackgroundSound:(id)sound withCompletion:(id)completion
{
  completionCopy = completion;
  backgroundSound = [sound backgroundSound];
  v7 = [AXBackgroundSoundResolutionResult successWithResolvedBackgroundSound:backgroundSound];
  (*(completion + 2))(completionCopy, v7);
}

- (void)handleToggleBackgroundSoundsTimer:(id)timer completion:(id)completion
{
  timerCopy = timer;
  completionCopy = completion;
  v7 = sub_1000066D8();
  v8 = AXLogSiriShortcuts();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138543874;
    v14 = timerCopy;
    v15 = 1024;
    v16 = v7 ^ 1;
    v17 = 1024;
    v18 = sub_1000066D8();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " intent: %{public}@ %i %i", &v13, 0x18u);
  }

  if ([timerCopy operation] != 1)
  {
    v9 = v7 ^ 1;
    goto LABEL_9;
  }

  v9 = [timerCopy state] == 1;
  if ([timerCopy state])
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
    sub_10000D80C(timerCopy, v10);
  }

  v11 = 5;
LABEL_10:

  v12 = [[AXToggleBackgroundSoundsTimerIntentResponse alloc] initWithCode:v11 userActivity:0];
  completionCopy[2](completionCopy, v12);
}

- (void)resolveOperationForToggleBackgroundSoundsTimer:(id)timer withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXOperationResolutionResult successWithResolvedOperation:](AXOperationResolutionResult, "successWithResolvedOperation:", [timer operation]);
  (*(completion + 2))(completionCopy, v7);
}

- (void)resolveStateForToggleBackgroundSoundsTimer:(id)timer withCompletion:(id)completion
{
  completionCopy = completion;
  v7 = +[AXStateResolutionResult successWithResolvedState:](AXStateResolutionResult, "successWithResolvedState:", [timer state]);
  (*(completion + 2))(completionCopy, v7);
}

@end