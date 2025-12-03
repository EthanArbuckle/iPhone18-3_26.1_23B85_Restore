@interface MAHandleSetNavigationVoiceVolume
- (id)_navVolumeSettingValue;
- (int)_actionForVolume;
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleSetNavigationVoiceVolume

- (id)_navVolumeSettingValue
{
  volume = [(MAHandleSetNavigationVoiceVolume *)self volume];
  if ([volume isEqualToString:SALocalSearchNavigationVoiceVolumeOffValue])
  {
    v3 = @"Off Volume";
  }

  else if ([volume isEqualToString:SALocalSearchNavigationVoiceVolumeLowValue])
  {
    v3 = @"Low Volume";
  }

  else if ([volume isEqualToString:SALocalSearchNavigationVoiceVolumeNormalValue])
  {
    v3 = @"Normal Volume";
  }

  else if ([volume isEqualToString:SALocalSearchNavigationVoiceVolumeLoudValue])
  {
    v3 = @"Loud Volume";
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int)_actionForVolume
{
  v7[0] = SALocalSearchNavigationVoiceVolumeOffValue;
  v7[1] = SALocalSearchNavigationVoiceVolumeLowValue;
  v8[0] = &off_536F8;
  v8[1] = &off_53710;
  v7[2] = SALocalSearchNavigationVoiceVolumeNormalValue;
  v7[3] = SALocalSearchNavigationVoiceVolumeLoudValue;
  v8[2] = &off_53728;
  v8[3] = &off_53740;
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  volume = [(MAHandleSetNavigationVoiceVolume *)self volume];
  v5 = [v3 objectForKeyedSubscript:volume];

  LODWORD(volume) = [v5 intValue];
  return volume;
}

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v6 = [SACommandFailed alloc];
  v7 = [v6 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
  v8 = +[MKMapService sharedService];
  [v8 captureUserAction:-[MAHandleSetNavigationVoiceVolume _actionForVolume](self onTarget:"_actionForVolume") eventValue:{802, 0}];

  v9 = +[MapsSiriIPCInterface sharedInterface];
  [v9 initializeBrokerConnectionIfNeeded];
  if ([v9 canReceiveMessages] && !objc_msgSend(v9, "isMapsBackgroundTaskSuspended"))
  {
    _navVolumeSettingValue = [(MAHandleSetNavigationVoiceVolume *)self _navVolumeSettingValue];
    if (_navVolumeSettingValue)
    {
      v11 = objc_alloc_init(IPCSetNavigationVoiceVolumeMessage);
      [(IPCSetNavigationVoiceVolumeMessage *)v11 setRequestedVolume:_navVolumeSettingValue];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_EC80;
      v14[3] = &unk_34C68;
      v15 = completionCopy;
      [v9 setNavigationVoiceVolume:v11 completion:v14];
    }

    else
    {
      v12 = [SACommandFailed alloc];
      v11 = [v12 initWithErrorCode:SALocalSearchStateUnchangedErrorCode];
      dictionary = [(IPCSetNavigationVoiceVolumeMessage *)v11 dictionary];
      (*(completionCopy + 2))(completionCopy, dictionary);
    }
  }

  else
  {
    _navVolumeSettingValue = [v7 dictionary];
    (*(completionCopy + 2))(completionCopy, _navVolumeSettingValue);
  }
}

@end