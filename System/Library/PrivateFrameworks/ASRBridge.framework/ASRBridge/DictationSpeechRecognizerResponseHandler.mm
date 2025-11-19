@interface DictationSpeechRecognizerResponseHandler
- (void)localSpeechRecognizerClient:(id)a3 didCompletionRecognitionWithStatistics:(id)a4 requestId:(id)a5 endpointMode:(int64_t)a6 error:(id)a7;
- (void)localSpeechRecognizerClient:(id)a3 receivedEagerRecognitionCandidateWithRequestId:(id)a4 rcId:(unint64_t)a5 speechPackage:(id)a6 duration:(double)a7;
- (void)localSpeechRecognizerClient:(id)a3 receivedEagerRecognitionCandidateWithRequestId:(id)a4 rcId:(unint64_t)a5 speechPackage:(id)a6 duration:(double)a7 metadata:(id)a8;
- (void)localSpeechRecognizerClient:(id)a3 receivedPartialResultWithRequestId:(id)a4 language:(id)a5 speechPackage:(id)a6 metadata:(id)a7;
- (void)localSpeechRecognizerClient:(id)a3 receivedPartialResultWithRequestId:(id)a4 language:(id)a5 tokens:(id)a6;
- (void)localSpeechRecognizerClient:(id)a3 receivedPartialResultWithRequestId:(id)a4 language:(id)a5 tokens:(id)a6 metadata:(id)a7;
@end

@implementation DictationSpeechRecognizerResponseHandler

- (void)localSpeechRecognizerClient:(id)a3 receivedPartialResultWithRequestId:(id)a4 language:(id)a5 tokens:(id)a6
{
  v8 = sub_2232AAC04();
  v10 = v9;
  sub_223296050();
  v11 = sub_2232AAD04();
  v12 = a3;
  v13 = self;
  sub_2232960E0(v8, v10, v11);
}

- (void)localSpeechRecognizerClient:(id)a3 receivedPartialResultWithRequestId:(id)a4 language:(id)a5 speechPackage:(id)a6 metadata:(id)a7
{
  v11 = sub_2232AAC04();
  v13 = v12;
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = self;
  sub_2232963CC(v11, v13, v15, v16);
}

- (void)localSpeechRecognizerClient:(id)a3 receivedPartialResultWithRequestId:(id)a4 language:(id)a5 tokens:(id)a6 metadata:(id)a7
{
  v10 = sub_2232AAC04();
  v12 = v11;
  sub_223296050();
  v13 = sub_2232AAD04();
  v14 = a3;
  v15 = a7;
  v16 = self;
  sub_22329673C(v10, v12, v13, v15);
}

- (void)localSpeechRecognizerClient:(id)a3 receivedEagerRecognitionCandidateWithRequestId:(id)a4 rcId:(unint64_t)a5 speechPackage:(id)a6 duration:(double)a7
{
  v10 = sub_2232AAC04();
  v12 = v11;
  v13 = a3;
  v14 = a6;
  v15 = self;
  sub_223296A30(v10, v12, v14, MEMORY[0x277D5D208]);
}

- (void)localSpeechRecognizerClient:(id)a3 receivedEagerRecognitionCandidateWithRequestId:(id)a4 rcId:(unint64_t)a5 speechPackage:(id)a6 duration:(double)a7 metadata:(id)a8
{
  v12 = sub_2232AAC04();
  v14 = v13;
  v15 = a3;
  v16 = a6;
  v17 = a8;
  v18 = self;
  sub_223296C60(v12, v14, v16, v17, MEMORY[0x277D5D208], 0);
}

- (void)localSpeechRecognizerClient:(id)a3 didCompletionRecognitionWithStatistics:(id)a4 requestId:(id)a5 endpointMode:(int64_t)a6 error:(id)a7
{
  v8 = a5;
  if (a4)
  {
    v11 = sub_2232AAB94();
    if (v8)
    {
LABEL_3:
      v12 = sub_2232AAC04();
      v8 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v14 = a3;
  v15 = self;
  v16 = a7;
  sub_223296EA4(v11, v12, v8, a7);
}

@end