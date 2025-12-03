@interface SASStartSpeech
- (id)ad_deferredMetricsContext;
- (void)ad_setAFSpeechEvent:(int64_t)event;
- (void)ad_setAFSpeechRequestOptions:(id)options;
- (void)ad_setCSSiriRecordingInfo:(id)info;
@end

@implementation SASStartSpeech

- (id)ad_deferredMetricsContext
{
  v12.receiver = self;
  v12.super_class = SASStartSpeech;
  ad_deferredMetricsContext = [(SASStartSpeech *)&v12 ad_deferredMetricsContext];
  audioSource = [(SASStartSpeech *)self audioSource];
  if (audioSource)
  {
    [ad_deferredMetricsContext setObject:audioSource forKey:SASStartSpeechAudioSourcePListKey];
  }

  origin = [(SASStartSpeech *)self origin];
  if (origin)
  {
    [ad_deferredMetricsContext setObject:origin forKey:SASStartSpeechOriginPListKey];
  }

  motionActivity = [(SASStartSpeech *)self motionActivity];
  if (motionActivity)
  {
    [ad_deferredMetricsContext setObject:motionActivity forKey:SASStartSpeechMotionActivityPListKey];
  }

  motionConfidence = [(SASStartSpeech *)self motionConfidence];
  if (motionConfidence)
  {
    [ad_deferredMetricsContext setObject:motionConfidence forKey:SASStartSpeechMotionConfidencePListKey];
  }

  headsetAddress = [(SASStartSpeech *)self headsetAddress];
  if (headsetAddress)
  {
    [ad_deferredMetricsContext setObject:headsetAddress forKey:SASStartSpeechHeadsetAddressPListKey];
  }

  headsetId = [(SASStartSpeech *)self headsetId];
  if (headsetId)
  {
    [ad_deferredMetricsContext setObject:headsetId forKey:SASStartSpeechHeadsetIdPListKey];
  }

  headsetName = [(SASStartSpeech *)self headsetName];
  if (headsetName)
  {
    [ad_deferredMetricsContext setObject:headsetName forKey:SASStartSpeechHeadsetNamePListKey];
  }

  return ad_deferredMetricsContext;
}

- (void)ad_setCSSiriRecordingInfo:(id)info
{
  infoCopy = info;
  source = [infoCopy source];
  v6 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[SASStartSpeech(ADSAExtensions) ad_setCSSiriRecordingInfo:]";
    v17 = 2112;
    v18 = source;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s audioSource = %@", &v15, 0x16u);
  }

  [(SASStartSpeech *)self setAudioSource:source];
  destination = [infoCopy destination];
  v8 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[SASStartSpeech(ADSAExtensions) ad_setCSSiriRecordingInfo:]";
    v17 = 2112;
    v18 = destination;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s audioDestination = %@", &v15, 0x16u);
  }

  [(SASStartSpeech *)self setAudioDestination:destination];
  codec = [infoCopy codec];
  [(SASStartSpeech *)self setCodec:SASCodecForString()];

  deviceIdentifier = [infoCopy deviceIdentifier];
  [(SASStartSpeech *)self setDeviceIdentifier:deviceIdentifier];

  modelName = [infoCopy modelName];
  [(SASStartSpeech *)self setDeviceModel:modelName];

  dspStatus = [infoCopy dspStatus];
  [(SASStartSpeech *)self setDspStatus:dspStatus];

  headsetAddress = [infoCopy headsetAddress];
  [(SASStartSpeech *)self setHeadsetAddress:headsetAddress];

  headsetName = [infoCopy headsetName];
  [(SASStartSpeech *)self setHeadsetName:headsetName];
}

- (void)ad_setAFSpeechRequestOptions:(id)options
{
  optionsCopy = options;
  v10 = optionsCopy;
  if (optionsCopy)
  {
    activationEvent = [optionsCopy activationEvent];
  }

  else
  {
    activationEvent = 0;
  }

  [(SASStartSpeech *)self ad_setAFSpeechEvent:activationEvent];
  turnIdentifier = [v10 turnIdentifier];
  if (turnIdentifier)
  {
    v7 = AFTurnIdentifierGetString();
    [(SASStartSpeech *)self setTurnId:v7];
  }

  else
  {
    [(SASStartSpeech *)self setTurnId:0];
  }

  voiceTriggerEventInfo = [(SASStartSpeech *)self voiceTriggerEventInfo];

  if (!voiceTriggerEventInfo)
  {
    voiceTriggerEventInfo2 = [v10 voiceTriggerEventInfo];
    [(SASStartSpeech *)self setVoiceTriggerEventInfo:voiceTriggerEventInfo2];
  }
}

- (void)ad_setAFSpeechEvent:(int64_t)event
{
  v4 = sub_10000EF08(event);
  [(SASStartSpeech *)self setOrigin:v4];
}

@end