@interface AVSpeechSynthesizer
+ (void)initialize;
- (id)delegate;
@end

@implementation AVSpeechSynthesizer

+ (void)initialize
{
  if (_AVLoadSpeechSynthesisImplementation(void)::onceToken != -1)
  {
    dispatch_once(&_AVLoadSpeechSynthesisImplementation(void)::onceToken, &__block_literal_global_5035);
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end