@interface SpeechSynthesizerAsyncWrapper
- (void)speechSynthesizer:(id)synthesizer didFailSpeakingUtterance:(id)utterance error:(id)error;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeakingUtterance:(id)utterance intoFile:(id)file;
@end

@implementation SpeechSynthesizerAsyncWrapper

- (void)speechSynthesizer:(id)synthesizer didFailSpeakingUtterance:(id)utterance error:(id)error
{
  v8 = sub_23E1FDC1C();
  v10 = v9;
  synthesizerCopy = synthesizer;
  selfCopy = self;
  errorCopy = error;
  sub_23DEEB4C0(synthesizerCopy, v8, v10, error);
}

- (void)speechSynthesizer:(id)synthesizer didFinishSpeakingUtterance:(id)utterance intoFile:(id)file
{
  v8 = sub_23E1FDC1C();
  v10 = v9;
  synthesizerCopy = synthesizer;
  fileCopy = file;
  selfCopy = self;
  sub_23DEEB900(synthesizerCopy, v8, v10, file);
}

@end