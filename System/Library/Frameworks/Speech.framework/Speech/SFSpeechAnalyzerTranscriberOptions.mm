@interface SFSpeechAnalyzerTranscriberOptions
- (SFSpeechAnalyzerTranscriberOptions)init;
@end

@implementation SFSpeechAnalyzerTranscriberOptions

- (SFSpeechAnalyzerTranscriberOptions)init
{
  v8.receiver = self;
  v8.super_class = SFSpeechAnalyzerTranscriberOptions;
  v2 = [(SFSpeechAnalyzerTranscriberOptions *)&v8 init];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  locale = v2->_locale;
  v2->_locale = currentLocale;

  modelOptions = v2->_modelOptions;
  v2->_taskHint = 0;
  v2->_modelOptions = 0;

  reportingOptions = v2->_reportingOptions;
  v2->_transcriptionOptions = 0;
  v2->_reportingOptions = 0;

  return v2;
}

@end