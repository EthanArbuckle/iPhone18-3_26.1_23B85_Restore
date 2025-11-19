@interface AVSpeechSynthesisProviderAudioUnit
+ (void)initialize;
@end

@implementation AVSpeechSynthesisProviderAudioUnit

+ (void)initialize
{
  if (_AVLoadSpeechSynthesisImplementation(void)::onceToken != -1)
  {
    dispatch_once(&_AVLoadSpeechSynthesisImplementation(void)::onceToken, &__block_literal_global_5035);
  }
}

@end