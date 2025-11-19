@interface SpeechSynthesizerAsyncWrapper
- (void)speechSynthesizer:(id)a3 didFailSpeakingUtterance:(id)a4 error:(id)a5;
- (void)speechSynthesizer:(id)a3 didFinishSpeakingUtterance:(id)a4 intoFile:(id)a5;
@end

@implementation SpeechSynthesizerAsyncWrapper

- (void)speechSynthesizer:(id)a3 didFailSpeakingUtterance:(id)a4 error:(id)a5
{
  v8 = sub_23E1FDC1C();
  v10 = v9;
  v11 = a3;
  v12 = self;
  v13 = a5;
  sub_23DEEB4C0(v11, v8, v10, a5);
}

- (void)speechSynthesizer:(id)a3 didFinishSpeakingUtterance:(id)a4 intoFile:(id)a5
{
  v8 = sub_23E1FDC1C();
  v10 = v9;
  v11 = a3;
  v12 = a5;
  v13 = self;
  sub_23DEEB900(v11, v8, v10, a5);
}

@end