@interface SRModeSystemState
- (BOOL)isConnectedToAudioAccessory;
- (BOOL)isConnectedToCarPlay;
- (BOOL)isEyesFree;
- (BOOL)isForCarDND;
- (BOOL)isRequestMadeWithPhysicalDeviceInteraction;
- (BOOL)isVoiceTriggerRequest;
- (BOOL)userTypedInSiri;
- (SRModeSystemState)init;
- (id)_requestOptions;
- (id)description;
- (void)_connectedOutputDevicesDidChange:(id)change;
- (void)_fetchConnectedAudioAccessoryState;
@end

@implementation SRModeSystemState

- (void)_fetchConnectedAudioAccessoryState
{
  self->_connectedToAudioAccessory = 0;
  objc_initWeak(&location, self);
  audioAccessoryQueue = self->_audioAccessoryQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004CD0;
  v4[3] = &unk_1001676A0;
  objc_copyWeak(&v5, &location);
  dispatch_async(audioAccessoryQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (SRModeSystemState)init
{
  v16.receiver = self;
  v16.super_class = SRModeSystemState;
  v2 = [(SRModeSystemState *)&v16 init];
  if (v2)
  {
    v3 = +[AFPreferences sharedPreferences];
    useDeviceSpeakerForTTS = [v3 useDeviceSpeakerForTTS];
    if (useDeviceSpeakerForTTS > 3)
    {
      v5 = 1;
    }

    else
    {
      v5 = qword_1000F6930[useDeviceSpeakerForTTS];
    }

    v2->_voiceFeedbackSetting = v5;

    v6 = dispatch_queue_create("com.apple.siri.AudioAccessoryQueue", 0);
    audioAccessoryQueue = v2->_audioAccessoryQueue;
    v2->_audioAccessoryQueue = v6;

    v8 = +[AVOutputContext sharedSystemAudioContext];
    sharedSystemAudioContext = v2->_sharedSystemAudioContext;
    v2->_sharedSystemAudioContext = v8;

    [(SRModeSystemState *)v2 _fetchConnectedAudioAccessoryState];
    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_connectedOutputDevicesDidChange:" name:AVOutputContextOutputDeviceDidChangeNotification object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"_connectedOutputDevicesDidChange:" name:AVOutputContextOutputDevicesDidChangeNotification object:0];

    v12 = dispatch_queue_create("com.apple.siri.mode.SystemState", 0);
    v13 = [[AFNotifyObserver alloc] initWithName:@"com.apple.springboard.ringerstate" options:1 queue:v12 delegate:0];
    ringerStateObserver = v2->_ringerStateObserver;
    v2->_ringerStateObserver = v13;
  }

  return v2;
}

- (BOOL)userTypedInSiri
{
  _requestOptions = [(SRModeSystemState *)self _requestOptions];
  requestSource = [_requestOptions requestSource];

  return requestSource == 33 || requestSource == 24;
}

- (BOOL)isVoiceTriggerRequest
{
  _requestOptions = [(SRModeSystemState *)self _requestOptions];
  requestSource = [_requestOptions requestSource];

  _requestOptions2 = [(SRModeSystemState *)self _requestOptions];
  speechRequestOptions = [_requestOptions2 speechRequestOptions];
  activationEvent = [speechRequestOptions activationEvent];

  v10 = requestSource == 19 && activationEvent == 15 || requestSource == 45;
  return requestSource == 8 || v10;
}

- (BOOL)isConnectedToCarPlay
{
  _requestOptions = [(SRModeSystemState *)self _requestOptions];
  isConnectedToCarPlay = [_requestOptions isConnectedToCarPlay];

  return isConnectedToCarPlay;
}

- (BOOL)isForCarDND
{
  _requestOptions = [(SRModeSystemState *)self _requestOptions];
  isForCarDND = [_requestOptions isForCarDND];

  return isForCarDND;
}

- (BOOL)isEyesFree
{
  _requestOptions = [(SRModeSystemState *)self _requestOptions];
  isHeadunitEyesFree = [_requestOptions isHeadunitEyesFree];

  return isHeadunitEyesFree;
}

- (BOOL)isConnectedToAudioAccessory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  audioAccessoryQueue = self->_audioAccessoryQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032548;
  v5[3] = &unk_100167790;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(audioAccessoryQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isRequestMadeWithPhysicalDeviceInteraction
{
  _requestOptions = [(SRModeSystemState *)self _requestOptions];
  requestSource = [_requestOptions requestSource];

  return (requestSource > 0x3C) | (0x66F001C3101000EuLL >> requestSource) & 1;
}

- (id)description
{
  v20 = [NSString stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  v21[0] = v20;
  v19 = [NSString stringWithFormat:@"userTypedInSiri=%i", [(SRModeSystemState *)self userTypedInSiri]];
  v21[1] = v19;
  v18 = [NSString stringWithFormat:@"userTouchedSnippet=%i", [(SRModeSystemState *)self userTouchedSnippet]];
  v21[2] = v18;
  voiceFeedbackSetting = [(SRModeSystemState *)self voiceFeedbackSetting];
  v4 = @"SRModeVoiceFeedbackPreferSilentResponses";
  if (voiceFeedbackSetting == 1)
  {
    v4 = @"SRModeVoiceFeedbackAutomatic";
  }

  if (voiceFeedbackSetting == 2)
  {
    v4 = @"SRModeVoiceFeedbackPreferSpokenResponses";
  }

  v17 = [NSString stringWithFormat:@"voiceFeedbackSetting=%@", v4];
  v21[3] = v17;
  v5 = [NSString stringWithFormat:@"isVoiceTriggerRequest=%i", [(SRModeSystemState *)self isVoiceTriggerRequest]];
  v21[4] = v5;
  v6 = [NSString stringWithFormat:@"isConnectedToCarPlay=%i", [(SRModeSystemState *)self isConnectedToCarPlay]];
  v21[5] = v6;
  v7 = [NSString stringWithFormat:@"isForCarDND=%i", [(SRModeSystemState *)self isForCarDND]];
  v21[6] = v7;
  v8 = [NSString stringWithFormat:@"isEyesFree=%i", [(SRModeSystemState *)self isEyesFree]];
  v21[7] = v8;
  v9 = [NSString stringWithFormat:@"isConnectedToAudioAccessory=%i", [(SRModeSystemState *)self isConnectedToAudioAccessory]];
  v21[8] = v9;
  v10 = [NSString stringWithFormat:@"isScreenOffBeforeRequest=%i", [(SRModeSystemState *)self isScreenOffBeforeRequest]];
  v21[9] = v10;
  v11 = [NSString stringWithFormat:@"isRequestMadeWithPhysicalDeviceInteraction=%i", [(SRModeSystemState *)self isRequestMadeWithPhysicalDeviceInteraction]];
  v21[10] = v11;
  v12 = [NSString stringWithFormat:@"isDeviceSilentMode=%i", [(SRModeSystemState *)self isDeviceSilentMode]];
  v21[11] = v12;
  v13 = [NSString stringWithFormat:@"isRequestEmergencyCall=%i", [(SRModeSystemState *)self isRequestEmergencyCall]];
  v21[12] = v13;
  v21[13] = @">";
  v14 = [NSArray arrayWithObjects:v21 count:14];

  v15 = [v14 componentsJoinedByString:@" "];;

  return v15;
}

- (id)_requestOptions
{
  requestOptions = [(SRModeSystemState *)self requestOptions];
  if ([requestOptions requestSource] == 9)
  {
    requestOptions2 = [(SRModeSystemState *)self requestOptions];
    originalRequestOptions = [requestOptions2 originalRequestOptions];

    if (originalRequestOptions)
    {
      requestOptions3 = [(SRModeSystemState *)self requestOptions];
      originalRequestOptions2 = [requestOptions3 originalRequestOptions];

      goto LABEL_6;
    }
  }

  else
  {
  }

  originalRequestOptions2 = [(SRModeSystemState *)self requestOptions];
LABEL_6:

  return originalRequestOptions2;
}

- (void)_connectedOutputDevicesDidChange:(id)change
{
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SRModeSystemState _connectedOutputDevicesDidChange:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s #modes: output devices changed, re-fetching connected audio accessory state", &v5, 0xCu);
  }

  [(SRModeSystemState *)self _fetchConnectedAudioAccessoryState];
}

@end