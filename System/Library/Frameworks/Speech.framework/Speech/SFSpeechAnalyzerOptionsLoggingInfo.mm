@interface SFSpeechAnalyzerOptionsLoggingInfo
- (SFSpeechAnalyzerOptionsLoggingInfo)initWithAsrID:(id)a3 requestID:(id)a4 dictationUIInteractionID:(id)a5;
@end

@implementation SFSpeechAnalyzerOptionsLoggingInfo

- (SFSpeechAnalyzerOptionsLoggingInfo)initWithAsrID:(id)a3 requestID:(id)a4 dictationUIInteractionID:(id)a5
{
  v18.receiver = self;
  v18.super_class = SFSpeechAnalyzerOptionsLoggingInfo;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(SFSpeechAnalyzerOptionsLoggingInfo *)&v18 init];
  v11 = [v9 copy];

  asrID = v10->_asrID;
  v10->_asrID = v11;

  v13 = [v8 copy];
  requestID = v10->_requestID;
  v10->_requestID = v13;

  v15 = [v7 copy];
  dictationUIInteractionID = v10->_dictationUIInteractionID;
  v10->_dictationUIInteractionID = v15;

  return v10;
}

@end