@interface DictationSpeechRecognizerResponseHandler
- (void)localSpeechRecognizerClient:(id)client didCompletionRecognitionWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error;
- (void)localSpeechRecognizerClient:(id)client receivedEagerRecognitionCandidateWithRequestId:(id)id rcId:(unint64_t)rcId speechPackage:(id)package duration:(double)duration;
- (void)localSpeechRecognizerClient:(id)client receivedEagerRecognitionCandidateWithRequestId:(id)id rcId:(unint64_t)rcId speechPackage:(id)package duration:(double)duration metadata:(id)metadata;
- (void)localSpeechRecognizerClient:(id)client receivedPartialResultWithRequestId:(id)id language:(id)language speechPackage:(id)package metadata:(id)metadata;
- (void)localSpeechRecognizerClient:(id)client receivedPartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens;
- (void)localSpeechRecognizerClient:(id)client receivedPartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens metadata:(id)metadata;
@end

@implementation DictationSpeechRecognizerResponseHandler

- (void)localSpeechRecognizerClient:(id)client receivedPartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens
{
  v8 = sub_2232AAC04();
  v10 = v9;
  sub_223296050();
  v11 = sub_2232AAD04();
  clientCopy = client;
  selfCopy = self;
  sub_2232960E0(v8, v10, v11);
}

- (void)localSpeechRecognizerClient:(id)client receivedPartialResultWithRequestId:(id)id language:(id)language speechPackage:(id)package metadata:(id)metadata
{
  v11 = sub_2232AAC04();
  v13 = v12;
  clientCopy = client;
  packageCopy = package;
  metadataCopy = metadata;
  selfCopy = self;
  sub_2232963CC(v11, v13, packageCopy, metadataCopy);
}

- (void)localSpeechRecognizerClient:(id)client receivedPartialResultWithRequestId:(id)id language:(id)language tokens:(id)tokens metadata:(id)metadata
{
  v10 = sub_2232AAC04();
  v12 = v11;
  sub_223296050();
  v13 = sub_2232AAD04();
  clientCopy = client;
  metadataCopy = metadata;
  selfCopy = self;
  sub_22329673C(v10, v12, v13, metadataCopy);
}

- (void)localSpeechRecognizerClient:(id)client receivedEagerRecognitionCandidateWithRequestId:(id)id rcId:(unint64_t)rcId speechPackage:(id)package duration:(double)duration
{
  v10 = sub_2232AAC04();
  v12 = v11;
  clientCopy = client;
  packageCopy = package;
  selfCopy = self;
  sub_223296A30(v10, v12, packageCopy, MEMORY[0x277D5D208]);
}

- (void)localSpeechRecognizerClient:(id)client receivedEagerRecognitionCandidateWithRequestId:(id)id rcId:(unint64_t)rcId speechPackage:(id)package duration:(double)duration metadata:(id)metadata
{
  v12 = sub_2232AAC04();
  v14 = v13;
  clientCopy = client;
  packageCopy = package;
  metadataCopy = metadata;
  selfCopy = self;
  sub_223296C60(v12, v14, packageCopy, metadataCopy, MEMORY[0x277D5D208], 0);
}

- (void)localSpeechRecognizerClient:(id)client didCompletionRecognitionWithStatistics:(id)statistics requestId:(id)id endpointMode:(int64_t)mode error:(id)error
{
  idCopy = id;
  if (statistics)
  {
    v11 = sub_2232AAB94();
    if (idCopy)
    {
LABEL_3:
      v12 = sub_2232AAC04();
      idCopy = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (id)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  clientCopy = client;
  selfCopy = self;
  errorCopy = error;
  sub_223296EA4(v11, v12, idCopy, error);
}

@end