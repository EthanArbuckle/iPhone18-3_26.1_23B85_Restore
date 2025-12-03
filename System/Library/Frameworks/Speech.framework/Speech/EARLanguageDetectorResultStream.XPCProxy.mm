@interface EARLanguageDetectorResultStream.XPCProxy
- (void)languageDetectorDidFinishWithError:(id)error;
- (void)languageDetectorDidRecognizeResult:(id)result processedAudioDuration:(double)duration;
@end

@implementation EARLanguageDetectorResultStream.XPCProxy

- (void)languageDetectorDidFinishWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_1AC727100(error);
}

- (void)languageDetectorDidRecognizeResult:(id)result processedAudioDuration:(double)duration
{
  resultCopy = result;
  selfCopy = self;
  sub_1AC72720C(resultCopy, duration);
}

@end