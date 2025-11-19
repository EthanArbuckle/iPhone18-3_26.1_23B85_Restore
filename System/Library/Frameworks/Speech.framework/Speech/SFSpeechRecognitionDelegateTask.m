@interface SFSpeechRecognitionDelegateTask
@end

@implementation SFSpeechRecognitionDelegateTask

void __71___SFSpeechRecognitionDelegateTask__tellDelegateDidFinishSuccessfully___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  if (objc_opt_respondsToSelector())
  {
    v3 = *(*(a1 + 32) + 24);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71___SFSpeechRecognitionDelegateTask__tellDelegateDidFinishSuccessfully___block_invoke_2;
    v8[3] = &unk_1E797BCF0;
    v4 = WeakRetained;
    v5 = *(a1 + 32);
    v9 = v4;
    v10 = v5;
    v11 = *(a1 + 40);
    [v3 addOperationWithBlock:v8];
  }

  objc_storeWeak((*(a1 + 32) + 88), 0);
  v6 = *(a1 + 32);
  v7 = *(v6 + 104);
  *(v6 + 104) = 0;
}

void __67___SFSpeechRecognitionDelegateTask__handleDidProcessAudioDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67___SFSpeechRecognitionDelegateTask__handleDidProcessAudioDuration___block_invoke_2;
  v6[3] = &unk_1E797C370;
  v7 = WeakRetained;
  v8 = v3;
  v9 = *(a1 + 40);
  v5 = WeakRetained;
  [v4 addOperationWithBlock:v6];
}

uint64_t __67___SFSpeechRecognitionDelegateTask__handleDidProcessAudioDuration___block_invoke_2(double *a1)
{
  v2 = *(a1 + 4);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 4);
    v5 = *(a1 + 5);
    v6 = a1[6];

    return [v4 speechRecognitionTask:v5 didProcessAudioDuration:v6];
  }

  return result;
}

void __64___SFSpeechRecognitionDelegateTask__handleDidFinishRecognition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 40);
    if ((*(v3 + 112) & 1) == 0 && (*(v3 + 113) & 1) == 0)
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 48) bestTranscription];
      v6 = [v5 formattedString];
      [v4 speechRecognitionTask:v3 didReceiveSearchResults:MEMORY[0x1E695E0F8] recognizedText:v6 stable:1 final:1];
    }
  }

  v7 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) speechRecognitionTask:*(a1 + 40) didFinishRecognition:*(a1 + 48)];
  }

  v8 = *(a1 + 40);
  v9 = *(v8 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___SFSpeechRecognitionDelegateTask__handleDidFinishRecognition___block_invoke_2;
  block[3] = &unk_1E797CAB8;
  block[4] = v8;
  dispatch_async(v9, block);
}

void __69___SFSpeechRecognitionDelegateTask__handleDidRecognizePartialResult___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) speechRecognitionTask:*(a1 + 40) didHypothesizeTranscription:*(a1 + 48)];
  }

  v3 = *(a1 + 32);
  if ((objc_opt_respondsToSelector() & 1) != 0 && (*(a1 + 56) & 1) == 0 && (*(a1 + 57) & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) formattedString];
    [v4 speechRecognitionTask:v5 didReceiveSearchResults:MEMORY[0x1E695E0F8] recognizedText:v6 stable:1 final:0];
  }
}

void __67___SFSpeechRecognitionDelegateTask__handleSpeechRecordingDidCancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  [WeakRetained speechRecognitionTaskWasCancelled:*(a1 + 32)];
}

void __108___SFSpeechRecognitionDelegateTask_dictationConnection_didReceiveSearchResults_recognizedText_stable_final___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 24);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  if (objc_opt_respondsToSelector())
  {
    v21 = WeakRetained;
    v22 = v2;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v5 = *(a1 + 40);
    v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v34;
      do
      {
        v9 = 0;
        do
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [[_SFSearchResult alloc] initWithVoiceSearchResult:*(*(&v33 + 1) + 8 * v9)];
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_SFSearchResult searchType](v10, "searchType")}];
          [v4 setObject:v10 forKey:v11];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v7);
    }

    *(*(a1 + 32) + 113) = 1;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __108___SFSpeechRecognitionDelegateTask_dictationConnection_didReceiveSearchResults_recognizedText_stable_final___block_invoke_2;
    v27[3] = &unk_1E797BD40;
    WeakRetained = v21;
    v12 = v21;
    v13 = *(a1 + 32);
    v28 = v12;
    v29 = v13;
    v30 = v4;
    v31 = *(a1 + 48);
    v32 = *(a1 + 56);
    v14 = v4;
    v2 = v22;
    [v22 addOperationWithBlock:v27];
  }

  if (*(a1 + 57) == 1)
  {
    *(*(a1 + 32) + 112) = 0;
    v15 = *(*(a1 + 32) + 96);
    if (v15)
    {
      if (objc_opt_respondsToSelector())
      {
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __108___SFSpeechRecognitionDelegateTask_dictationConnection_didReceiveSearchResults_recognizedText_stable_final___block_invoke_3;
        v23[3] = &unk_1E797C460;
        v16 = WeakRetained;
        v17 = *(a1 + 32);
        v24 = v16;
        v25 = v17;
        v26 = v15;
        [v2 addOperationWithBlock:v23];
      }

      v18 = *(a1 + 32);
      v19 = *(v18 + 96);
      *(v18 + 96) = 0;
    }

    [(_SFSpeechRecognitionDelegateTask *)*(a1 + 32) _tellDelegateDidFinishSuccessfully:?];
    *(*(a1 + 32) + 64) = 1;
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __89___SFSpeechRecognitionDelegateTask_dictationConnection_didRecognizeTokens_languageModel___block_invoke(uint64_t a1)
{
  v2 = [SFUtilities transcriptionsWithTokens:*(a1 + 32)];
  [(_SFSpeechRecognitionDelegateTask *)*(a1 + 40) _handleDidRecognizePartialResult:v2];
}

void __76___SFSpeechRecognitionDelegateTask_dictationConnection_didRecognizePackage___block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v2 = [SFUtilities recognizedResultFromPackage:*(a1 + 32)];
  if (+[SFUtilities isSpeechXPCEnabled])
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    v4 = *(*(a1 + 40) + 40);
    if (v4)
    {
      v4 = v4[7];
    }

    v5 = v4;
    [v3 addEntriesFromDictionary:v5];

    v13[0] = @"textNotEmpty";
    v6 = MEMORY[0x1E696AD98];
    v7 = [v2 bestTranscription];
    v8 = [v7 formattedString];
    v9 = [v6 numberWithInt:{objc_msgSend(v8, "length") != 0}];
    v13[1] = @"isFinal";
    v14[0] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isFinal")}];
    v14[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v3 addEntriesFromDictionary:v11];

    [SFLocalSpeechRecognitionClient logCoreAnalyticsEvent:@"com.apple.speechapi.ResultPackage" withAnalytics:v3];
  }

  [(_SFSpeechRecognitionDelegateTask *)*(a1 + 40) _handleDidFinishRecognition:v2];

  v12 = *MEMORY[0x1E69E9840];
}

@end