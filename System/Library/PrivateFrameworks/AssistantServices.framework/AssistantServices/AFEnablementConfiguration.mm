@interface AFEnablementConfiguration
- (AFEnablementConfiguration)initWithRequiresVoiceSelection:(BOOL)selection voiceSelectionAllowsChooseForMe:(BOOL)me voiceCountForRecognitionLanguage:(id)language completionLoggingBlock:(id)block;
- (BOOL)requiresVoiceSelectionForRecognitionLanguage:(id)language;
@end

@implementation AFEnablementConfiguration

- (BOOL)requiresVoiceSelectionForRecognitionLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy && self->_requiresVoiceSelection)
  {
    v5 = [(NSDictionary *)self->_voiceCountForRecognitionLanguage objectForKey:languageCopy];
    v6 = [v5 intValue] > 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AFEnablementConfiguration)initWithRequiresVoiceSelection:(BOOL)selection voiceSelectionAllowsChooseForMe:(BOOL)me voiceCountForRecognitionLanguage:(id)language completionLoggingBlock:(id)block
{
  languageCopy = language;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = AFEnablementConfiguration;
  v12 = [(AFEnablementConfiguration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_requiresVoiceSelection = selection;
    v12->_voiceSelectionAllowsRandomSelection = me;
    v14 = MEMORY[0x193AFB7B0](blockCopy);
    completionLoggingBlock = v13->_completionLoggingBlock;
    v13->_completionLoggingBlock = v14;

    v13->_voiceCountForRecognitionLanguage = languageCopy;
  }

  return v13;
}

@end