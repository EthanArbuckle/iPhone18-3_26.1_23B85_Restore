@interface EARLanguageDetectorResultStream.XPCProxy
- (void)languageDetectorDidFinishWithError:(id)a3;
- (void)languageDetectorDidRecognizeResult:(id)a3 processedAudioDuration:(double)a4;
@end

@implementation EARLanguageDetectorResultStream.XPCProxy

- (void)languageDetectorDidFinishWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_1AC727100(a3);
}

- (void)languageDetectorDidRecognizeResult:(id)a3 processedAudioDuration:(double)a4
{
  v6 = a3;
  v7 = self;
  sub_1AC72720C(v6, a4);
}

@end