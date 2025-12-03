@interface EARLanguageDetectorResultStream
- (void)languageDetector:(id)detector didCompleteProcessingWithLoggingInfo:(id)info;
- (void)languageDetector:(id)detector didProduceResult:(id)result processedAudioDuration:(double)duration;
@end

@implementation EARLanguageDetectorResultStream

- (void)languageDetector:(id)detector didCompleteProcessingWithLoggingInfo:(id)info
{
  detectorCopy = detector;
  infoCopy = info;
  selfCopy = self;
  sub_100012A4C();
}

- (void)languageDetector:(id)detector didProduceResult:(id)result processedAudioDuration:(double)duration
{
  detectorCopy = detector;
  resultCopy = result;
  selfCopy = self;
  sub_100012D20(duration, selfCopy, resultCopy);
}

@end