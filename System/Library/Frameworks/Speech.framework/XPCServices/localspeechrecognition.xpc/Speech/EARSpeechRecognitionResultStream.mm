@interface EARSpeechRecognitionResultStream
- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4;
- (void)speechRecognizer:(id)a3 didProcessAudioDuration:(double)a4;
- (void)speechRecognizer:(id)a3 didProduceEndpointFeaturesWithWordCount:(int64_t)a4 trailingSilenceDuration:(int64_t)a5 eosLikelihood:(double)a6 pauseCounts:(id)a7 silencePosterior:(double)a8 processedAudioDurationInMilliseconds:(int64_t)a9 acousticEndpointerScore:(double)a10;
- (void)speechRecognizer:(id)a3 didProduceLoggablePackage:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizeFinalResultCandidatePackage:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizeFinalResultPackage:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizeFinalResults:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizeVoiceCommandCandidatePackage:(id)a4;
- (void)speechRecognizer:(id)a3 didReportStatus:(unint64_t)a4 statusContext:(id)a5;
@end

@implementation EARSpeechRecognitionResultStream

- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_10003170C(v8, a4);
}

- (void)speechRecognizer:(id)a3 didRecognizeFinalResultCandidatePackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100031948(v8, v7);
}

- (void)speechRecognizer:(id)a3 didRecognizeVoiceCommandCandidatePackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000319C8(v8, v7);
}

- (void)speechRecognizer:(id)a3 didRecognizeFinalResultPackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100031A48(v8, v7);
}

- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100031EE4(v8, v7);
}

- (void)speechRecognizer:(id)a3 didProduceLoggablePackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100032064(v8, v7);
}

- (void)speechRecognizer:(id)a3 didProcessAudioDuration:(double)a4
{
  v5 = a3;
  v6 = self;
  sub_100032168();
}

- (void)speechRecognizer:(id)a3 didProduceEndpointFeaturesWithWordCount:(int64_t)a4 trailingSilenceDuration:(int64_t)a5 eosLikelihood:(double)a6 pauseCounts:(id)a7 silencePosterior:(double)a8 processedAudioDurationInMilliseconds:(int64_t)a9 acousticEndpointerScore:(double)a10
{
  sub_1000029E4(0, &qword_10006F140, NSNumber_ptr);
  v18 = sub_100046EFC();
  v19 = a3;
  v20 = self;
  sub_1000321F0(a6, a8, a10, v20, a4, a5, v18, a9);
}

- (void)speechRecognizer:(id)a3 didReportStatus:(unint64_t)a4 statusContext:(id)a5
{
  if (a5)
  {
    sub_100046D7C();
  }

  v8 = a3;
  v9 = self;
  sub_1000323A0(v9, a4);
}

- (void)speechRecognizer:(id)a3 didRecognizeFinalResults:(id)a4
{
  sub_1000029E4(0, &qword_100070028, _EARSpeechRecognitionResult_ptr);
  sub_100046EFC();
}

@end