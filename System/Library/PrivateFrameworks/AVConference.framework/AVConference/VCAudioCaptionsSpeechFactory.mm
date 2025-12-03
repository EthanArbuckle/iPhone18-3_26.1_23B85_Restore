@interface VCAudioCaptionsSpeechFactory
+ (BOOL)V2SpeechAPIEnabled;
+ (id)captionsProviderForFrameworkType:(unsigned __int8)type withSpeechConfig:(const tagVCAudioCaptionsSpeechConfig *)config;
@end

@implementation VCAudioCaptionsSpeechFactory

+ (BOOL)V2SpeechAPIEnabled
{
  if (V2SpeechAPIEnabled_token != -1)
  {
    +[VCAudioCaptionsSpeechFactory V2SpeechAPIEnabled];
  }

  return V2SpeechAPIEnabled_V2SpeechAPIEnabled;
}

BOOL __50__VCAudioCaptionsSpeechFactory_V2SpeechAPIEnabled__block_invoke()
{
  result = VCFeatureFlagManager_UseAnalyzerSpeechAPI();
  V2SpeechAPIEnabled_V2SpeechAPIEnabled = result;
  return result;
}

+ (id)captionsProviderForFrameworkType:(unsigned __int8)type withSpeechConfig:(const tagVCAudioCaptionsSpeechConfig *)config
{
  if (type > 3u)
  {
    return 0;
  }

  v5 = [objc_alloc(*off_1E85F96C0[type]) initWithSpeechConfig:config];

  return v5;
}

@end