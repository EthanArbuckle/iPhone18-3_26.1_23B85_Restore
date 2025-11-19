@interface SFSpeechAnalyzerOptions
- (SFSpeechAnalyzerOptions)initWithHighPriority:(BOOL)a3 modelRetention:(unint64_t)a4 loggingInfo:(id)a5 powerContext:(id)a6;
@end

@implementation SFSpeechAnalyzerOptions

- (SFSpeechAnalyzerOptions)initWithHighPriority:(BOOL)a3 modelRetention:(unint64_t)a4 loggingInfo:(id)a5 powerContext:(id)a6
{
  v17.receiver = self;
  v17.super_class = SFSpeechAnalyzerOptions;
  v9 = a6;
  v10 = a5;
  v11 = [(SFSpeechAnalyzerOptions *)&v17 init];
  v11->_highPriority = a3;
  v11->_modelRetention = a4;
  v12 = [v10 copy];

  loggingInfo = v11->_loggingInfo;
  v11->_loggingInfo = v12;

  v14 = [v9 copy];
  powerContext = v11->_powerContext;
  v11->_powerContext = v14;

  return v11;
}

@end