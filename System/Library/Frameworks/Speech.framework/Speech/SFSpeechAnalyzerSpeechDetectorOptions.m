@interface SFSpeechAnalyzerSpeechDetectorOptions
- (SFSpeechAnalyzerSpeechDetectorOptions)init;
@end

@implementation SFSpeechAnalyzerSpeechDetectorOptions

- (SFSpeechAnalyzerSpeechDetectorOptions)init
{
  v3.receiver = self;
  v3.super_class = SFSpeechAnalyzerSpeechDetectorOptions;
  result = [(SFSpeechAnalyzerSpeechDetectorOptions *)&v3 init];
  if (result)
  {
    result->_sensitivityLevel = 1;
    result->_reportResults = 0;
  }

  return result;
}

@end