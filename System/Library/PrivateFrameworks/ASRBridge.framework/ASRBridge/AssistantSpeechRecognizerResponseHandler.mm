@interface AssistantSpeechRecognizerResponseHandler
- (void)localSpeechRecognizerClient:(id)a3 didAcceptedEagerResultWithRequestId:(id)a4 rcId:(unint64_t)a5 mitigationSignal:(BOOL)a6 featuresToLog:(id)a7;
- (void)localSpeechRecognizerClient:(id)a3 didCompletionRecognitionWithStatistics:(id)a4 requestId:(id)a5 endpointMode:(int64_t)a6 error:(id)a7;
- (void)localSpeechRecognizerClient:(id)a3 didCompletionRecognitionWithStatistics:(id)a4 requestId:(id)a5 error:(id)a6;
- (void)localSpeechRecognizerClient:(id)a3 receivedContinuityEndDetected:(id)a4;
- (void)localSpeechRecognizerClient:(id)a3 receivedEagerRecognitionCandidateWithRequestId:(id)a4 rcId:(unint64_t)a5 speechPackage:(id)a6 duration:(double)a7;
- (void)localSpeechRecognizerClient:(id)a3 receivedFinalResultWithRequestId:(id)a4 speechPackage:(id)a5;
- (void)localSpeechRecognizerClient:(id)a3 receivedMultiUserTRPCandidatePackage:(id)a4;
- (void)localSpeechRecognizerClient:(id)a3 receivedPartialResultWithRequestId:(id)a4 language:(id)a5 tokens:(id)a6;
- (void)localSpeechRecognizerClient:(id)a3 receivedTRPCandidatePackage:(id)a4;
- (void)localSpeechRecognizerClient:(id)a3 receivedTRPDetected:(id)a4;
- (void)localSpeechRecognizerClient:(id)a3 receivedVoiceIdScoreCard:(id)a4;
- (void)localSpeechRecognizerClient:(id)a3 requestAttentionAssetDownload:(BOOL)a4;
@end

@implementation AssistantSpeechRecognizerResponseHandler

- (void)localSpeechRecognizerClient:(id)a3 receivedPartialResultWithRequestId:(id)a4 language:(id)a5 tokens:(id)a6
{
  v8 = sub_2232AAC04();
  v10 = v9;
  v11 = sub_2232AAC04();
  v13 = v12;
  sub_2232606A4(0, &qword_28131D1E0, 0x277CEF4B0);
  v14 = sub_2232AAD04();
  v15 = a3;
  v16 = self;
  sub_223278B58(v8, v10, v11, v13, v14);
}

- (void)localSpeechRecognizerClient:(id)a3 receivedFinalResultWithRequestId:(id)a4 speechPackage:(id)a5
{
  v8 = sub_2232AAC04();
  v10 = v9;
  v11 = a3;
  v12 = a5;
  v13 = self;
  sub_223278E34(v8, v10);
}

- (void)localSpeechRecognizerClient:(id)a3 receivedTRPDetected:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22327909C(v7);
}

- (void)localSpeechRecognizerClient:(id)a3 receivedMultiUserTRPCandidatePackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2232795D8(v7);
}

- (void)localSpeechRecognizerClient:(id)a3 receivedTRPCandidatePackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22327A9D8(v7);
}

- (void)localSpeechRecognizerClient:(id)a3 receivedContinuityEndDetected:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22327B778(v7);
}

- (void)localSpeechRecognizerClient:(id)a3 requestAttentionAssetDownload:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_22327BE04(a4);
}

- (void)localSpeechRecognizerClient:(id)a3 receivedEagerRecognitionCandidateWithRequestId:(id)a4 rcId:(unint64_t)a5 speechPackage:(id)a6 duration:(double)a7
{
  v12 = sub_2232AAC04();
  v14 = v13;
  v15 = a3;
  v16 = a6;
  v17 = self;
  sub_22327C29C(v12, v14, a5, a7);
}

- (void)localSpeechRecognizerClient:(id)a3 didAcceptedEagerResultWithRequestId:(id)a4 rcId:(unint64_t)a5 mitigationSignal:(BOOL)a6 featuresToLog:(id)a7
{
  v7 = a6;
  v11 = sub_2232AAC04();
  v13 = v12;
  v14 = a3;
  v15 = self;
  sub_22327C874(v11, v13, a5, v7);
}

- (void)localSpeechRecognizerClient:(id)a3 receivedVoiceIdScoreCard:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22327D100(v7);
}

- (void)localSpeechRecognizerClient:(id)a3 didCompletionRecognitionWithStatistics:(id)a4 requestId:(id)a5 error:(id)a6
{
  v7 = a5;
  if (a4)
  {
    sub_2232AAB94();
    if (v7)
    {
LABEL_3:
      v10 = sub_2232AAC04();
      v7 = v11;
      goto LABEL_6;
    }
  }

  else if (a5)
  {
    goto LABEL_3;
  }

  v10 = 0;
LABEL_6:
  v12 = a3;
  v13 = self;
  v14 = a6;
  sub_22327E990(v12, v10, v7, 0, 1, a6);
}

- (void)localSpeechRecognizerClient:(id)a3 didCompletionRecognitionWithStatistics:(id)a4 requestId:(id)a5 endpointMode:(int64_t)a6 error:(id)a7
{
  v9 = a5;
  if (a4)
  {
    sub_2232AAB94();
    if (v9)
    {
LABEL_3:
      v12 = sub_2232AAC04();
      v9 = v13;
      goto LABEL_6;
    }
  }

  else if (a5)
  {
    goto LABEL_3;
  }

  v12 = 0;
LABEL_6:
  v14 = a3;
  v15 = self;
  v16 = a7;
  sub_22327E990(v14, v12, v9, a6, 0, a7);
}

@end