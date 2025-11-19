@interface SARDStartServerRequest
- (void)ad_setAFSpeechEvent:(int64_t)a3;
- (void)ad_setAFSpeechRequestOptions:(id)a3;
- (void)ad_setCSSiriRecordingInfo:(id)a3;
@end

@implementation SARDStartServerRequest

- (void)ad_setCSSiriRecordingInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 source];
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[SARDStartServerRequest(ADSAExtensions) ad_setCSSiriRecordingInfo:]";
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s audioSource = %@", &v10, 0x16u);
  }

  [(SARDStartServerRequest *)self setAudioSource:v5];
  v7 = [v4 destination];
  v8 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v10 = 136315394;
    v11 = "[SARDStartServerRequest(ADSAExtensions) ad_setCSSiriRecordingInfo:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s audioDestination = %@", &v10, 0x16u);
  }

  [(SARDStartServerRequest *)self setAudioDestination:v7];
  v9 = [v4 modelName];
  [(SARDStartServerRequest *)self setDeviceModel:v9];
}

- (void)ad_setAFSpeechRequestOptions:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (v4)
  {
    v5 = [v4 activationEvent];
  }

  else
  {
    v5 = 0;
  }

  [(SARDStartServerRequest *)self ad_setAFSpeechEvent:v5];
  v6 = [v11 turnIdentifier];
  if (v6)
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
  v9 = [(SARDStartServerRequest *)self voiceTriggerEventInfo];

  if (!v9)
  {
    v10 = [v11 voiceTriggerEventInfo];
    [(SARDStartServerRequest *)self setVoiceTriggerEventInfo:v10];
  }
}

- (void)ad_setAFSpeechEvent:(int64_t)a3
{
  v5 = sub_10000EF08(a3);
  [(SARDStartServerRequest *)self setOrigin:v5];

  v6 = sub_10000EF08(a3);
  [(SARDStartServerRequest *)self setInputOrigin:v6];
}

@end