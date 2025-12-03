@interface SASStartSpeechRequest
- (void)ad_setAFSpeechRequestOptions:(id)options;
- (void)ad_setCSSiriRecordingInfo:(id)info;
@end

@implementation SASStartSpeechRequest

- (void)ad_setCSSiriRecordingInfo:(id)info
{
  v6.receiver = self;
  v6.super_class = SASStartSpeechRequest;
  infoCopy = info;
  [(SASStartSpeechRequest *)&v6 ad_setCSSiriRecordingInfo:infoCopy];
  voiceTriggerEventInfo = [infoCopy voiceTriggerEventInfo];

  [(SASStartSpeechRequest *)self setVoiceTriggerEventInfo:voiceTriggerEventInfo];
}

- (void)ad_setAFSpeechRequestOptions:(id)options
{
  optionsCopy = options;
  if ([optionsCopy isEyesFree])
  {
    v5 = 1;
  }

  else
  {
    v5 = AFPreferencesAlwaysEyesFreeEnabled();
  }

  [(SASStartSpeechRequest *)self setEyesFree:v5];
  if ([optionsCopy useStreamingDictation])
  {
    v6 = AFPreferencesStreamingDictationEnabled();
  }

  else
  {
    v6 = 0;
  }

  [(SASStartSpeechRequest *)self setEnablePartialResults:v6];
  -[SASStartSpeechRequest setWasLaunchedForRequest:](self, "setWasLaunchedForRequest:", [optionsCopy isInitialBringUp]);
  v7.receiver = self;
  v7.super_class = SASStartSpeechRequest;
  [(SASStartSpeechRequest *)&v7 ad_setAFSpeechRequestOptions:optionsCopy];
}

@end