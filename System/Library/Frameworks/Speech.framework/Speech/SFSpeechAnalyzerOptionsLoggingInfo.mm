@interface SFSpeechAnalyzerOptionsLoggingInfo
- (SFSpeechAnalyzerOptionsLoggingInfo)initWithAsrID:(id)d requestID:(id)iD dictationUIInteractionID:(id)interactionID;
@end

@implementation SFSpeechAnalyzerOptionsLoggingInfo

- (SFSpeechAnalyzerOptionsLoggingInfo)initWithAsrID:(id)d requestID:(id)iD dictationUIInteractionID:(id)interactionID
{
  v18.receiver = self;
  v18.super_class = SFSpeechAnalyzerOptionsLoggingInfo;
  interactionIDCopy = interactionID;
  iDCopy = iD;
  dCopy = d;
  v10 = [(SFSpeechAnalyzerOptionsLoggingInfo *)&v18 init];
  v11 = [dCopy copy];

  asrID = v10->_asrID;
  v10->_asrID = v11;

  v13 = [iDCopy copy];
  requestID = v10->_requestID;
  v10->_requestID = v13;

  v15 = [interactionIDCopy copy];
  dictationUIInteractionID = v10->_dictationUIInteractionID;
  v10->_dictationUIInteractionID = v15;

  return v10;
}

@end