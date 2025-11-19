@interface EARLanguageDetectorResultStream
- (void)languageDetector:(id)a3 didCompleteProcessingWithLoggingInfo:(id)a4;
- (void)languageDetector:(id)a3 didProduceResult:(id)a4 processedAudioDuration:(double)a5;
@end

@implementation EARLanguageDetectorResultStream

- (void)languageDetector:(id)a3 didCompleteProcessingWithLoggingInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100012A4C();
}

- (void)languageDetector:(id)a3 didProduceResult:(id)a4 processedAudioDuration:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_100012D20(a5, v10, v9);
}

@end