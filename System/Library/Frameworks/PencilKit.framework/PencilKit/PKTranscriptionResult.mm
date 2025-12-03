@interface PKTranscriptionResult
- (PKTranscriptionResult)initWithTranscription:(id)transcription didShowHUD:(BOOL)d;
@end

@implementation PKTranscriptionResult

- (PKTranscriptionResult)initWithTranscription:(id)transcription didShowHUD:(BOOL)d
{
  transcriptionCopy = transcription;
  v11.receiver = self;
  v11.super_class = PKTranscriptionResult;
  v8 = [(PKTranscriptionResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transcription, transcription);
    v9->_didShowHUD = d;
  }

  return v9;
}

@end