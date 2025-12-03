@interface SFSpeechAnalyzerOptions
- (SFSpeechAnalyzerOptions)initWithHighPriority:(BOOL)priority modelRetention:(unint64_t)retention loggingInfo:(id)info powerContext:(id)context;
@end

@implementation SFSpeechAnalyzerOptions

- (SFSpeechAnalyzerOptions)initWithHighPriority:(BOOL)priority modelRetention:(unint64_t)retention loggingInfo:(id)info powerContext:(id)context
{
  v17.receiver = self;
  v17.super_class = SFSpeechAnalyzerOptions;
  contextCopy = context;
  infoCopy = info;
  v11 = [(SFSpeechAnalyzerOptions *)&v17 init];
  v11->_highPriority = priority;
  v11->_modelRetention = retention;
  v12 = [infoCopy copy];

  loggingInfo = v11->_loggingInfo;
  v11->_loggingInfo = v12;

  v14 = [contextCopy copy];
  powerContext = v11->_powerContext;
  v11->_powerContext = v14;

  return v11;
}

@end