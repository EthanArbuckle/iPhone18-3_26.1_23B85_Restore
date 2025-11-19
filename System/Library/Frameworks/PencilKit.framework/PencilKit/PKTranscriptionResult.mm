@interface PKTranscriptionResult
- (PKTranscriptionResult)initWithTranscription:(id)a3 didShowHUD:(BOOL)a4;
@end

@implementation PKTranscriptionResult

- (PKTranscriptionResult)initWithTranscription:(id)a3 didShowHUD:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKTranscriptionResult;
  v8 = [(PKTranscriptionResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transcription, a3);
    v9->_didShowHUD = a4;
  }

  return v9;
}

@end