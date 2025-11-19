@interface SASStartSpeech
- (id)ad_deferredMetricsContext;
- (void)ad_setAFSpeechEvent:(int64_t)a3;
- (void)ad_setAFSpeechRequestOptions:(id)a3;
- (void)ad_setCSSiriRecordingInfo:(id)a3;
@end

@implementation SASStartSpeech

- (id)ad_deferredMetricsContext
{
  v12.receiver = self;
  v12.super_class = SASStartSpeech;
  v3 = [(SASStartSpeech *)&v12 ad_deferredMetricsContext];
  v4 = [(SASStartSpeech *)self audioSource];
  if (v4)
  {
    [v3 setObject:v4 forKey:SASStartSpeechAudioSourcePListKey];
  }

  v5 = [(SASStartSpeech *)self origin];
  if (v5)
  {
    [v3 setObject:v5 forKey:SASStartSpeechOriginPListKey];
  }

  v6 = [(SASStartSpeech *)self motionActivity];
  if (v6)
  {
    [v3 setObject:v6 forKey:SASStartSpeechMotionActivityPListKey];
  }

  v7 = [(SASStartSpeech *)self motionConfidence];
  if (v7)
  {
    [v3 setObject:v7 forKey:SASStartSpeechMotionConfidencePListKey];
  }

  v8 = [(SASStartSpeech *)self headsetAddress];
  if (v8)
  {
    [v3 setObject:v8 forKey:SASStartSpeechHeadsetAddressPListKey];
  }

  v9 = [(SASStartSpeech *)self headsetId];
  if (v9)
  {
    [v3 setObject:v9 forKey:SASStartSpeechHeadsetIdPListKey];
  }

  v10 = [(SASStartSpeech *)self headsetName];
  if (v10)
  {
    [v3 setObject:v10 forKey:SASStartSpeechHeadsetNamePListKey];
  }

  return v3;
}

- (void)ad_setCSSiriRecordingInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 source];
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[SASStartSpeech(ADSAExtensions) ad_setCSSiriRecordingInfo:]";
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s audioSource = %@", &v15, 0x16u);
  }

  [(SASStartSpeech *)self setAudioSource:v5];
  v7 = [v4 destination];
  v8 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[SASStartSpeech(ADSAExtensions) ad_setCSSiriRecordingInfo:]";
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s audioDestination = %@", &v15, 0x16u);
  }

  [(SASStartSpeech *)self setAudioDestination:v7];
  v9 = [v4 codec];
  [(SASStartSpeech *)self setCodec:SASCodecForString()];

  v10 = [v4 deviceIdentifier];
  [(SASStartSpeech *)self setDeviceIdentifier:v10];

  v11 = [v4 modelName];
  [(SASStartSpeech *)self setDeviceModel:v11];

  v12 = [v4 dspStatus];
  [(SASStartSpeech *)self setDspStatus:v12];

  v13 = [v4 headsetAddress];
  [(SASStartSpeech *)self setHeadsetAddress:v13];

  v14 = [v4 headsetName];
  [(SASStartSpeech *)self setHeadsetName:v14];
}

- (void)ad_setAFSpeechRequestOptions:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4)
  {
    v5 = [v4 activationEvent];
  }

  else
  {
    v5 = 0;
  }

  [(SASStartSpeech *)self ad_setAFSpeechEvent:v5];
  v6 = [v10 turnIdentifier];
  if (v6)
  {
    v7 = AFTurnIdentifierGetString();
    [(SASStartSpeech *)self setTurnId:v7];
  }

  else
  {
    [(SASStartSpeech *)self setTurnId:0];
  }

  v8 = [(SASStartSpeech *)self voiceTriggerEventInfo];

  if (!v8)
  {
    v9 = [v10 voiceTriggerEventInfo];
    [(SASStartSpeech *)self setVoiceTriggerEventInfo:v9];
  }
}

- (void)ad_setAFSpeechEvent:(int64_t)a3
{
  v4 = sub_10000EF08(a3);
  [(SASStartSpeech *)self setOrigin:v4];
}

@end