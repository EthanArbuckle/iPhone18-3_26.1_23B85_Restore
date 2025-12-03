@interface SARDStartServerRequest
- (void)ad_setAFSpeechEvent:(int64_t)event;
- (void)ad_setAFSpeechRequestOptions:(id)options;
- (void)ad_setCSSiriRecordingInfo:(id)info;
@end

@implementation SARDStartServerRequest

- (void)ad_setCSSiriRecordingInfo:(id)info
{
  infoCopy = info;
  source = [infoCopy source];
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[SARDStartServerRequest(ADSAExtensions) ad_setCSSiriRecordingInfo:]";
    v12 = 2112;
    v13 = source;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s audioSource = %@", &v10, 0x16u);
  }

  [(SARDStartServerRequest *)self setAudioSource:source];
  destination = [infoCopy destination];
  v8 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[SARDStartServerRequest(ADSAExtensions) ad_setCSSiriRecordingInfo:]";
    v12 = 2112;
    v13 = destination;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s audioDestination = %@", &v10, 0x16u);
  }

  [(SARDStartServerRequest *)self setAudioDestination:destination];
  modelName = [infoCopy modelName];
  [(SARDStartServerRequest *)self setDeviceModel:modelName];
}

- (void)ad_setAFSpeechRequestOptions:(id)options
{
  optionsCopy = options;
  v11 = optionsCopy;
  if (optionsCopy)
  {
    activationEvent = [optionsCopy activationEvent];
  }

  else
  {
    activationEvent = 0;
  }

  [(SARDStartServerRequest *)self ad_setAFSpeechEvent:activationEvent];
  turnIdentifier = [v11 turnIdentifier];
  if (turnIdentifier)
  {
    v7 = AFTurnIdentifierGetString();
    [(SARDStartServerRequest *)self setTurnId:v7];
  }

  else
  {
    [(SARDStartServerRequest *)self setTurnId:0];
  }

  if ([v11 isEyesFree])
  {
    v8 = 1;
  }

  else
  {
    v8 = AFPreferencesAlwaysEyesFreeEnabled();
  }

  [(SARDStartServerRequest *)self setEyesFree:v8];
  voiceTriggerEventInfo = [(SARDStartServerRequest *)self voiceTriggerEventInfo];

  if (!voiceTriggerEventInfo)
  {
    voiceTriggerEventInfo2 = [v11 voiceTriggerEventInfo];
    [(SARDStartServerRequest *)self setVoiceTriggerEventInfo:voiceTriggerEventInfo2];
  }
}

- (void)ad_setAFSpeechEvent:(int64_t)event
{
  v5 = sub_10000EF08(event);
  [(SARDStartServerRequest *)self setOrigin:v5];

  v6 = sub_10000EF08(event);
  [(SARDStartServerRequest *)self setInputOrigin:v6];
}

@end