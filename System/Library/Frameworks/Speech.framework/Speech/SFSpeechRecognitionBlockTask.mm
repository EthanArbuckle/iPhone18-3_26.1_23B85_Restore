@interface SFSpeechRecognitionBlockTask
@end

@implementation SFSpeechRecognitionBlockTask

void __105___SFSpeechRecognitionBlockTask_localSpeechRecognitionClient_didRecognizePartialResult_rawPartialResult___block_invoke(uint64_t *a1)
{
  if ([*(a1[4] + 40) shouldReportPartialResults])
  {
    v2 = [SFSpeechRecognitionResult alloc];
    if (v2)
    {
      v3 = [(SFSpeechRecognitionResult *)v2 _initWithBestTranscription:a1[5] rawTranscription:a1[6] final:0 speechRecognitionMetadata:0];
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
    [(_SFSpeechRecognitionBlockTask *)a1[4] _fireResultHandlerWithResult:v3 error:0];
  }
}

uint64_t __87___SFSpeechRecognitionBlockTask_localSpeechRecognitionClient_speechRecognitionDidFail___block_invoke(uint64_t a1)
{
  [(_SFSpeechRecognitionBlockTask *)*(a1 + 32) _fireResultHandlerWithResult:*(*(a1 + 32) + 56) error:?];
  v2 = *(a1 + 32);

  return [(_SFSpeechRecognitionBlockTask *)v2 _finalizeResultHandler];
}

uint64_t __85___SFSpeechRecognitionBlockTask_localSpeechRecognitionClient_speechRecordingDidFail___block_invoke(uint64_t a1)
{
  [(_SFSpeechRecognitionBlockTask *)*(a1 + 32) _fireResultHandlerWithResult:*(a1 + 40) error:?];
  v2 = *(a1 + 32);

  return [(_SFSpeechRecognitionBlockTask *)v2 _finalizeResultHandler];
}

uint64_t __86___SFSpeechRecognitionBlockTask_localSpeechRecognitionClientSpeechRecordingDidCancel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698D280] code:216 userInfo:0];
  [(_SFSpeechRecognitionBlockTask *)v2 _fireResultHandlerWithResult:v3 error:?];

  v4 = *(a1 + 32);

  return [(_SFSpeechRecognitionBlockTask *)v4 _finalizeResultHandler];
}

void __86___SFSpeechRecognitionBlockTask_dictationConnection_didRecognizeTokens_languageModel___block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 40) shouldReportPartialResults])
  {
    v5 = [SFUtilities transcriptionsWithTokens:*(a1 + 40)];
    v2 = [v5 copy];
    v3 = [SFSpeechRecognitionResult alloc];
    if (v3)
    {
      v4 = [(SFSpeechRecognitionResult *)v3 _initWithBestTranscription:v5 rawTranscription:v2 final:0 speechRecognitionMetadata:0];
    }

    else
    {
      v4 = 0;
    }

    [(_SFSpeechRecognitionBlockTask *)*(a1 + 32) _fireResultHandlerWithResult:v4 error:0];
  }
}

void __73___SFSpeechRecognitionBlockTask_dictationConnection_didRecognizePackage___block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (+[SFUtilities isSpeechXPCEnabled])
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = *(*(a1 + 32) + 40);
    if (v3)
    {
      v3 = v3[7];
    }

    v4 = v3;
    [v2 addEntriesFromDictionary:v4];

    v12[0] = @"textNotEmpty";
    v5 = MEMORY[0x1E696AD98];
    v6 = [*(a1 + 40) bestTranscription];
    v7 = [v6 formattedString];
    v8 = [v5 numberWithInt:{objc_msgSend(v7, "length") != 0}];
    v12[1] = @"isFinal";
    v13[0] = v8;
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 48), "isFinal")}];
    v13[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    [v2 addEntriesFromDictionary:v10];

    [SFLocalSpeechRecognitionClient logCoreAnalyticsEvent:@"com.apple.speechapi.ResultPackage" withAnalytics:v2];
  }

  [(_SFSpeechRecognitionBlockTask *)*(a1 + 32) _fireResultHandlerWithResult:0 error:?];
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __78___SFSpeechRecognitionBlockTask_dictationConnection_speechRecognitionDidFail___block_invoke(uint64_t a1)
{
  [(_SFSpeechRecognitionBlockTask *)*(a1 + 32) _fireResultHandlerWithResult:*(*(a1 + 32) + 56) error:?];
  v2 = *(a1 + 32);

  return [(_SFSpeechRecognitionBlockTask *)v2 _finalizeResultHandler];
}

uint64_t __77___SFSpeechRecognitionBlockTask_dictationConnectionSpeechRecordingDidCancel___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698D280] code:216 userInfo:0];
  [(_SFSpeechRecognitionBlockTask *)v2 _fireResultHandlerWithResult:v3 error:?];

  v4 = *(a1 + 32);

  return [(_SFSpeechRecognitionBlockTask *)v4 _finalizeResultHandler];
}

uint64_t __76___SFSpeechRecognitionBlockTask_dictationConnection_speechRecordingDidFail___block_invoke(uint64_t a1)
{
  [(_SFSpeechRecognitionBlockTask *)*(a1 + 32) _fireResultHandlerWithResult:*(a1 + 40) error:?];
  v2 = *(a1 + 32);

  return [(_SFSpeechRecognitionBlockTask *)v2 _finalizeResultHandler];
}

void __92___SFSpeechRecognitionBlockTask__initWithRequest_queue_languageCode_taskHint_resultHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  (*(*(a1 + 32) + 16))();
  if (a3 || [v7 isFinal])
  {
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

@end