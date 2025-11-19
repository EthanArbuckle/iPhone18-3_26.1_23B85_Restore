@interface AVCCaptionsLanguageDetectorResults
- (AVCCaptionsLanguageDetectorResults)initWithLanguageDetectorResults:(id)a3;
- (void)dealloc;
@end

@implementation AVCCaptionsLanguageDetectorResults

- (AVCCaptionsLanguageDetectorResults)initWithLanguageDetectorResults:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = AVCCaptionsLanguageDetectorResults;
  v4 = [(AVCCaptionsLanguageDetectorResults *)&v9 init];
  if (v4)
  {
    v4->_detectedLanguageCode = [a3 detectedLanguageCode];
    v4->_dominantLocale = [a3 dominantLocale];
    [a3 dominantLocaleConfidence];
    v4->_dominantLocaleConfidence = v5;
    [a3 utteranceStartTimestamp];
    v4->_utteranceStartTimestamp = v6;
    [a3 utteranceDuration];
    v4->_utteranceDuration = v7;
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = AVCCaptionsLanguageDetectorResults;
  [(AVCCaptionsLanguageDetectorResults *)&v3 dealloc];
}

@end