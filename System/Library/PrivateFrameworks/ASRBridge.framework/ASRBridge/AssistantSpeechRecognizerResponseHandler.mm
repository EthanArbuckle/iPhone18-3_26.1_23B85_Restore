@interface AssistantSpeechRecognizerResponseHandler
- (void)localSpeechRecognizerClient:(id)client didAcceptedEagerResultWithRequestId:(id)id rcId:(unint64_t)rcId mitigationSignal:(BOOL)signal featuresToLog:(id)log;
- (void)localSpeechRecognizerClient:(id)client didCompletionRecognitionWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error;
- (void)localSpeechRecognizerClient:(id)client didCompletionRecognitionWithStatistics:(id)statistics requestId:(id)id error:(id)error;
- (void)localSpeechRecognizerClient:(id)client receivedContinuityEndDetected:(id)detected;
- (void)localSpeechRecognizerClient:(id)client receivedEagerRecognitionCandidateWithRequestId:(id)id rcId:(unint64_t)rcId speechPackage:(id)package duration:(double)duration;
- (void)localSpeechRecognizerClient:(id)client receivedFinalResultWithRequestId:(id)id speechPackage:(id)package;
- (void)localSpeechRecognizerClient:(id)client receivedMultiUserTRPCandidatePackage:(id)package;
- (void)localSpeechRecognizerClient:(id)client receivedPartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens;
- (void)localSpeechRecognizerClient:(id)client receivedTRPCandidatePackage:(id)package;
- (void)localSpeechRecognizerClient:(id)client receivedTRPDetected:(id)detected;
- (void)localSpeechRecognizerClient:(id)client receivedVoiceIdScoreCard:(id)card;
- (void)localSpeechRecognizerClient:(id)client requestAttentionAssetDownload:(BOOL)download;
@end

@implementation AssistantSpeechRecognizerResponseHandler

- (void)localSpeechRecognizerClient:(id)client receivedPartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens
{
  v8 = sub_2232AAC04();
  v10 = v9;
  v11 = sub_2232AAC04();
  v13 = v12;
  sub_2232606A4(0, &qword_28131D1E0, 0x277CEF4B0);
  v14 = sub_2232AAD04();
  clientCopy = client;
  selfCopy = self;
  sub_223278B58(v8, v10, v11, v13, v14);
}

- (void)localSpeechRecognizerClient:(id)client receivedFinalResultWithRequestId:(id)id speechPackage:(id)package
{
  v8 = sub_2232AAC04();
  v10 = v9;
  clientCopy = client;
  packageCopy = package;
  selfCopy = self;
  sub_223278E34(v8, v10);
}

- (void)localSpeechRecognizerClient:(id)client receivedTRPDetected:(id)detected
{
  clientCopy = client;
  detectedCopy = detected;
  selfCopy = self;
  sub_22327909C(detectedCopy);
}

- (void)localSpeechRecognizerClient:(id)client receivedMultiUserTRPCandidatePackage:(id)package
{
  clientCopy = client;
  packageCopy = package;
  selfCopy = self;
  sub_2232795D8(packageCopy);
}

- (void)localSpeechRecognizerClient:(id)client receivedTRPCandidatePackage:(id)package
{
  clientCopy = client;
  packageCopy = package;
  selfCopy = self;
  sub_22327A9D8(packageCopy);
}

- (void)localSpeechRecognizerClient:(id)client receivedContinuityEndDetected:(id)detected
{
  clientCopy = client;
  detectedCopy = detected;
  selfCopy = self;
  sub_22327B778(detectedCopy);
}

- (void)localSpeechRecognizerClient:(id)client requestAttentionAssetDownload:(BOOL)download
{
  clientCopy = client;
  selfCopy = self;
  sub_22327BE04(download);
}

- (void)localSpeechRecognizerClient:(id)client receivedEagerRecognitionCandidateWithRequestId:(id)id rcId:(unint64_t)rcId speechPackage:(id)package duration:(double)duration
{
  v12 = sub_2232AAC04();
  v14 = v13;
  clientCopy = client;
  packageCopy = package;
  selfCopy = self;
  sub_22327C29C(v12, v14, rcId, duration);
}

- (void)localSpeechRecognizerClient:(id)client didAcceptedEagerResultWithRequestId:(id)id rcId:(unint64_t)rcId mitigationSignal:(BOOL)signal featuresToLog:(id)log
{
  signalCopy = signal;
  v11 = sub_2232AAC04();
  v13 = v12;
  clientCopy = client;
  selfCopy = self;
  sub_22327C874(v11, v13, rcId, signalCopy);
}

- (void)localSpeechRecognizerClient:(id)client receivedVoiceIdScoreCard:(id)card
{
  clientCopy = client;
  cardCopy = card;
  selfCopy = self;
  sub_22327D100(cardCopy);
}

- (void)localSpeechRecognizerClient:(id)client didCompletionRecognitionWithStatistics:(id)statistics requestId:(id)id error:(id)error
{
  idCopy = id;
  if (statistics)
  {
    sub_2232AAB94();
    if (idCopy)
    {
LABEL_3:
      v10 = sub_2232AAC04();
      idCopy = v11;
      goto LABEL_6;
    }
  }

  else if (id)
  {
    goto LABEL_3;
  }

  v10 = 0;
LABEL_6:
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_22327E990(clientCopy, v10, idCopy, 0, 1, error);
}

- (void)localSpeechRecognizerClient:(id)client didCompletionRecognitionWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error
{
  idCopy = id;
  if (statistics)
  {
    sub_2232AAB94();
    if (idCopy)
    {
LABEL_3:
      v12 = sub_2232AAC04();
      idCopy = v13;
      goto LABEL_6;
    }
  }

  else if (id)
  {
    goto LABEL_3;
  }

  v12 = 0;
LABEL_6:
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_22327E990(clientCopy, v12, idCopy, mode, 0, error);
}

@end