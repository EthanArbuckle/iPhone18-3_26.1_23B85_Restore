@interface EARSpeechRecognitionResultStream.XPCProxy
- (void)speechRecognizerDidFinishRecognitionWithError:(id)a3;
- (void)speechRecognizerDidProcessAudioDuration:(double)a3;
- (void)speechRecognizerDidProduceEndpointFeaturesWithWordCount:(int64_t)a3 trailingSilenceDuration:(int64_t)a4 eosLikelihood:(double)a5 pauseCounts:(id)a6 silencePosterior:(double)a7 processedAudioDurationInMilliseconds:(int64_t)a8 acousticEndpointerScore:(double)a9;
- (void)speechRecognizerDidProduceLoggablePackage:(id)a3;
- (void)speechRecognizerDidRecognizeFinalResultCandidatePackage:(id)a3;
- (void)speechRecognizerDidRecognizeFinalResultPackage:(id)a3;
- (void)speechRecognizerDidRecognizePartialResult:(id)a3;
- (void)speechRecognizerDidRecognizeVoiceCommandCandidatePackage:(id)a3;
- (void)speechRecognizerDidReportStatus:(unint64_t)a3;
@end

@implementation EARSpeechRecognitionResultStream.XPCProxy

- (void)speechRecognizerDidFinishRecognitionWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_1AC6E4460(a3);
}

- (void)speechRecognizerDidRecognizeFinalResultPackage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AC6E4908(v4, &unk_1F2136198, sub_1AC6E64A8);
}

- (void)speechRecognizerDidRecognizePartialResult:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AC6E4908(v4, &unk_1F2136120, sub_1AC6E643C);
}

- (void)speechRecognizerDidRecognizeFinalResultCandidatePackage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AC6E4908(v4, &unk_1F21360F8, sub_1AC6E6418);
}

- (void)speechRecognizerDidRecognizeVoiceCommandCandidatePackage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AC6E4908(v4, &unk_1F21360D0, sub_1AC6E63F4);
}

- (void)speechRecognizerDidProduceLoggablePackage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AC6E4908(v4, &unk_1F21360A8, sub_1AC6E63D0);
}

- (void)speechRecognizerDidProduceEndpointFeaturesWithWordCount:(int64_t)a3 trailingSilenceDuration:(int64_t)a4 eosLikelihood:(double)a5 pauseCounts:(id)a6 silencePosterior:(double)a7 processedAudioDurationInMilliseconds:(int64_t)a8 acousticEndpointerScore:(double)a9
{
  sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v16 = sub_1AC7A0158();
  v17 = self;
  sub_1AC6E4A34(a3, a4, v16, a8, a5, a7, a9);
}

- (void)speechRecognizerDidProcessAudioDuration:(double)a3
{
  v4 = self;
  sub_1AC6E4D94(a3);
}

- (void)speechRecognizerDidReportStatus:(unint64_t)a3
{
  v4 = self;
  sub_1AC6E4E94(a3);
}

@end