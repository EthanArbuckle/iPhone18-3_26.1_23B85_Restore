@interface EARSpeechRecognitionResultStream.XPCProxy
- (void)speechRecognizerDidFinishRecognitionWithError:(id)error;
- (void)speechRecognizerDidProcessAudioDuration:(double)duration;
- (void)speechRecognizerDidProduceEndpointFeaturesWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)score;
- (void)speechRecognizerDidProduceLoggablePackage:(id)package;
- (void)speechRecognizerDidRecognizeFinalResultCandidatePackage:(id)package;
- (void)speechRecognizerDidRecognizeFinalResultPackage:(id)package;
- (void)speechRecognizerDidRecognizePartialResult:(id)result;
- (void)speechRecognizerDidRecognizeVoiceCommandCandidatePackage:(id)package;
- (void)speechRecognizerDidReportStatus:(unint64_t)status;
@end

@implementation EARSpeechRecognitionResultStream.XPCProxy

- (void)speechRecognizerDidFinishRecognitionWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_1AC6E4460(error);
}

- (void)speechRecognizerDidRecognizeFinalResultPackage:(id)package
{
  packageCopy = package;
  selfCopy = self;
  sub_1AC6E4908(packageCopy, &unk_1F2136198, sub_1AC6E64A8);
}

- (void)speechRecognizerDidRecognizePartialResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  sub_1AC6E4908(resultCopy, &unk_1F2136120, sub_1AC6E643C);
}

- (void)speechRecognizerDidRecognizeFinalResultCandidatePackage:(id)package
{
  packageCopy = package;
  selfCopy = self;
  sub_1AC6E4908(packageCopy, &unk_1F21360F8, sub_1AC6E6418);
}

- (void)speechRecognizerDidRecognizeVoiceCommandCandidatePackage:(id)package
{
  packageCopy = package;
  selfCopy = self;
  sub_1AC6E4908(packageCopy, &unk_1F21360D0, sub_1AC6E63F4);
}

- (void)speechRecognizerDidProduceLoggablePackage:(id)package
{
  packageCopy = package;
  selfCopy = self;
  sub_1AC6E4908(packageCopy, &unk_1F21360A8, sub_1AC6E63D0);
}

- (void)speechRecognizerDidProduceEndpointFeaturesWithWordCount:(int64_t)count trailingSilenceDuration:(int64_t)duration eosLikelihood:(double)likelihood pauseCounts:(id)counts silencePosterior:(double)posterior processedAudioDurationInMilliseconds:(int64_t)milliseconds acousticEndpointerScore:(double)score
{
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v16 = sub_1AC7A0158();
  selfCopy = self;
  sub_1AC6E4A34(count, duration, v16, milliseconds, likelihood, posterior, score);
}

- (void)speechRecognizerDidProcessAudioDuration:(double)duration
{
  selfCopy = self;
  sub_1AC6E4D94(duration);
}

- (void)speechRecognizerDidReportStatus:(unint64_t)status
{
  selfCopy = self;
  sub_1AC6E4E94(status);
}

@end