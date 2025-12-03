@interface AVCCaptionsLanguageDetectorResults
- (AVCCaptionsLanguageDetectorResults)initWithLanguageDetectorResults:(id)results;
- (void)dealloc;
@end

@implementation AVCCaptionsLanguageDetectorResults

- (AVCCaptionsLanguageDetectorResults)initWithLanguageDetectorResults:(id)results
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = AVCCaptionsLanguageDetectorResults;
  v4 = [(AVCCaptionsLanguageDetectorResults *)&v9 init];
  if (v4)
  {
    v4->_detectedLanguageCode = [results detectedLanguageCode];
    v4->_dominantLocale = [results dominantLocale];
    [results dominantLocaleConfidence];
    v4->_dominantLocaleConfidence = v5;
    [results utteranceStartTimestamp];
    v4->_utteranceStartTimestamp = v6;
    [results utteranceDuration];
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