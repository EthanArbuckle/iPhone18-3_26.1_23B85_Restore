@interface AFEnablementConfiguration
- (AFEnablementConfiguration)initWithRequiresVoiceSelection:(BOOL)a3 voiceSelectionAllowsChooseForMe:(BOOL)a4 voiceCountForRecognitionLanguage:(id)a5 completionLoggingBlock:(id)a6;
- (BOOL)requiresVoiceSelectionForRecognitionLanguage:(id)a3;
@end

@implementation AFEnablementConfiguration

- (BOOL)requiresVoiceSelectionForRecognitionLanguage:(id)a3
{
  v4 = a3;
  if (v4 && self->_requiresVoiceSelection)
  {
    v5 = [(NSDictionary *)self->_voiceCountForRecognitionLanguage objectForKey:v4];
    v6 = [v5 intValue] > 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AFEnablementConfiguration)initWithRequiresVoiceSelection:(BOOL)a3 voiceSelectionAllowsChooseForMe:(BOOL)a4 voiceCountForRecognitionLanguage:(id)a5 completionLoggingBlock:(id)a6
{
  v10 = a5;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = AFEnablementConfiguration;
  v12 = [(AFEnablementConfiguration *)&v17 init];
  v13 = v12;
  if (v12)
  {
    v12->_requiresVoiceSelection = a3;
    v12->_voiceSelectionAllowsRandomSelection = a4;
    v14 = MEMORY[0x193AFB7B0](v11);
    completionLoggingBlock = v13->_completionLoggingBlock;
    v13->_completionLoggingBlock = v14;

    v13->_voiceCountForRecognitionLanguage = v10;
  }

  return v13;
}

@end