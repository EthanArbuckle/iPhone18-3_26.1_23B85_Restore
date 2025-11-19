@interface AFDictationConnectionServiceDelegate
- (AFDictationConnectionServiceDelegate)initWithDictationConnection:(id)a3;
- (void)languageDetectorFailedWithError:(id)a3;
- (void)speechDidBeginLocalRecognitionWithModelInfo:(id)a3;
- (void)speechDidDetectLanguage:(id)a3 confidenceScores:(id)a4 isConfident:(BOOL)a5;
- (void)speechDidFinishWritingAudioFile:(id)a3 error:(id)a4;
- (void)speechDidPauseRecognition;
- (void)speechDidProcessAudioDuration:(double)a3;
- (void)speechDidReceiveSearchResults:(id)a3 recognitionText:(id)a4 stable:(BOOL)a5 final:(BOOL)a6;
- (void)speechDidRecognizeFinalResultCandidatePackage:(id)a3;
- (void)speechDidRecognizeMultilingualSpeech:(id)a3;
- (void)speechDidRecognizePackage:(id)a3;
- (void)speechDidRecognizePartialPackage:(id)a3 nluResult:(id)a4 usingSpeechModel:(id)a5;
- (void)speechDidRecognizePartialResult:(id)a3;
- (void)speechDidRecognizePhrases:(id)a3 rawPhrases:(id)a4 utterances:(id)a5 rawUtterances:(id)a6 nluResult:(id)a7 usingSpeechModel:(id)a8 correctionContext:(id)a9 audioAnalytics:(id)a10;
- (void)speechDidRecognizeTokens:(id)a3 nluResult:(id)a4 usingSpeechModel:(id)a5;
- (void)speechDidRecognizeTranscriptionObjects:(id)a3 usingSpeechModel:(id)a4;
- (void)speechDidRecognizeVoiceCommandCandidatePackage:(id)a3 nluResult:(id)a4;
- (void)speechRecognitionDidFinishWithError:(id)a3;
- (void)speechRecordingDidBeginWithOptions:(id)a3 sessionUUID:(id)a4 sessionRequestUUID:(id)a5;
- (void)speechRecordingDidCancel;
- (void)speechRecordingDidEnd;
- (void)speechRecordingDidFail:(id)a3;
- (void)speechRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)a3;
@end

@implementation AFDictationConnectionServiceDelegate

- (void)speechDidPauseRecognition
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__AFDictationConnectionServiceDelegate_speechDidPauseRecognition__block_invoke;
  v4[3] = &unk_1E73497C8;
  v5 = WeakRetained;
  v3 = WeakRetained;
  [v3 _dispatchAsync:v4];
}

- (void)speechDidBeginLocalRecognitionWithModelInfo:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__AFDictationConnectionServiceDelegate_speechDidBeginLocalRecognitionWithModelInfo___block_invoke;
  v8[3] = &unk_1E7349860;
  v9 = WeakRetained;
  v10 = v4;
  v6 = v4;
  v7 = WeakRetained;
  [v7 _dispatchAsync:v8];
}

- (void)languageDetectorFailedWithError:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__AFDictationConnectionServiceDelegate_languageDetectorFailedWithError___block_invoke;
  v8[3] = &unk_1E7349860;
  v9 = WeakRetained;
  v10 = v4;
  v6 = v4;
  v7 = WeakRetained;
  [v7 _dispatchAsync:v8];
}

- (void)speechDidRecognizeMultilingualSpeech:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__AFDictationConnectionServiceDelegate_speechDidRecognizeMultilingualSpeech___block_invoke;
  v8[3] = &unk_1E7349860;
  v9 = WeakRetained;
  v10 = v4;
  v6 = v4;
  v7 = WeakRetained;
  [v7 _dispatchAsync:v8];
}

- (void)speechDidDetectLanguage:(id)a3 confidenceScores:(id)a4 isConfident:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__AFDictationConnectionServiceDelegate_speechDidDetectLanguage_confidenceScores_isConfident___block_invoke;
  v14[3] = &unk_1E7344480;
  v15 = WeakRetained;
  v16 = v8;
  v17 = v9;
  v18 = a5;
  v11 = v9;
  v12 = v8;
  v13 = WeakRetained;
  [v13 _dispatchAsync:v14];
}

- (void)speechDidReceiveSearchResults:(id)a3 recognitionText:(id)a4 stable:(BOOL)a5 final:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __99__AFDictationConnectionServiceDelegate_speechDidReceiveSearchResults_recognitionText_stable_final___block_invoke;
  v16[3] = &unk_1E7344340;
  v17 = WeakRetained;
  v18 = v10;
  v19 = v11;
  v20 = a5;
  v21 = a6;
  v13 = v11;
  v14 = v10;
  v15 = WeakRetained;
  [v15 _dispatchAsync:v16];
}

- (void)speechDidFinishWritingAudioFile:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__AFDictationConnectionServiceDelegate_speechDidFinishWritingAudioFile_error___block_invoke;
  v12[3] = &unk_1E73494B0;
  v13 = WeakRetained;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = WeakRetained;
  [v11 _dispatchAsync:v12];
}

- (void)speechRecognitionDidFinishWithError:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [v4 domain];
    *buf = 136315394;
    v19 = "[AFDictationConnectionServiceDelegate speechRecognitionDidFinishWithError:]";
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s idle timer speechRecognitionDidFinishWithError called with error %@", buf, 0x16u);
  }

  v8 = +[AFAnalytics sharedAnalytics];
  v9 = v8;
  if (v4)
  {
    v10 = AFAnalyticsContextCreateWithError(v4);
    [v9 logEventWithType:2217 context:v10];
  }

  else
  {
    [v8 logEventWithType:2216 context:0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__AFDictationConnectionServiceDelegate_speechRecognitionDidFinishWithError___block_invoke;
  v15[3] = &unk_1E7349860;
  v16 = WeakRetained;
  v17 = v4;
  v12 = v4;
  v13 = WeakRetained;
  [v13 _dispatchAsync:v15];

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __76__AFDictationConnectionServiceDelegate_speechRecognitionDidFinishWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelRequestTimeout];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [v2 domain];
    if ([v3 isEqualToString:@"kAFAssistantErrorDomain"])
    {
      if ([*(a1 + 40) code] == 34)
      {

LABEL_10:
        [*(a1 + 32) _checkAndSetIsCapturingSpeech:0];
        goto LABEL_11;
      }

      v6 = [*(a1 + 40) code];

      if (v6 == 1700)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

LABEL_11:
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);

    return [v7 _tellSpeechDelegateRecognitionDidFail:v8];
  }

  v4 = *(a1 + 32);

  return [v4 _tellSpeechDelegateSpeechRecognitionDidSucceed];
}

- (void)speechDidRecognizeTranscriptionObjects:(id)a3 usingSpeechModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AFAnalytics sharedAnalytics];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __96__AFDictationConnectionServiceDelegate_speechDidRecognizeTranscriptionObjects_usingSpeechModel___block_invoke;
  v19[3] = &unk_1E7344458;
  v9 = v6;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  [v8 logEventWithType:2215 contextProvider:v19];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__AFDictationConnectionServiceDelegate_speechDidRecognizeTranscriptionObjects_usingSpeechModel___block_invoke_2;
  v15[3] = &unk_1E73494B0;
  v16 = WeakRetained;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = WeakRetained;
  [v14 _dispatchAsync:v15];
}

id __96__AFDictationConnectionServiceDelegate_speechDidRecognizeTranscriptionObjects_usingSpeechModel___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  [v2 setObject:v3 forKey:@"transcribedObjectsCount"];

  v4 = *(a1 + 40);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"languageModel"];
  }

  return v2;
}

uint64_t __96__AFDictationConnectionServiceDelegate_speechDidRecognizeTranscriptionObjects_usingSpeechModel___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _cancelRequestTimeout];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _tellSpeechDelegateDidRecognizeTranscriptionObjects:v3 languageModel:v4];
}

- (void)speechDidProcessAudioDuration:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__AFDictationConnectionServiceDelegate_speechDidProcessAudioDuration___block_invoke;
  v6[3] = &unk_1E7348498;
  v7 = WeakRetained;
  v8 = a3;
  v5 = WeakRetained;
  [v5 _dispatchAsync:v6];
}

uint64_t __70__AFDictationConnectionServiceDelegate_speechDidProcessAudioDuration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _extendRequestTimeout];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _tellSpeechDelegateDidProcessAudioDuration:v3];
}

- (void)speechDidRecognizePartialResult:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__AFDictationConnectionServiceDelegate_speechDidRecognizePartialResult___block_invoke;
  v8[3] = &unk_1E7349860;
  v9 = WeakRetained;
  v10 = v4;
  v6 = v4;
  v7 = WeakRetained;
  [v7 _dispatchAsync:v8];
}

uint64_t __72__AFDictationConnectionServiceDelegate_speechDidRecognizePartialResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _extendRequestTimeout];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _tellSpeechDelegateDidRecognizePartialResult:v3];
}

- (void)speechDidRecognizePartialPackage:(id)a3 nluResult:(id)a4 usingSpeechModel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[AFAnalytics sharedAnalytics];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __100__AFDictationConnectionServiceDelegate_speechDidRecognizePartialPackage_nluResult_usingSpeechModel___block_invoke;
  v24[3] = &unk_1E7344458;
  v12 = v8;
  v25 = v12;
  v13 = v10;
  v26 = v13;
  [v11 logEventWithType:2214 contextProvider:v24];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__AFDictationConnectionServiceDelegate_speechDidRecognizePartialPackage_nluResult_usingSpeechModel___block_invoke_2;
  v19[3] = &unk_1E7349398;
  v20 = WeakRetained;
  v21 = v12;
  v22 = v9;
  v23 = v13;
  v15 = v13;
  v16 = v9;
  v17 = v12;
  v18 = WeakRetained;
  [v18 _dispatchAsync:v19];
}

id __100__AFDictationConnectionServiceDelegate_speechDidRecognizePartialPackage_nluResult_usingSpeechModel___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [*(a1 + 32) recognition];
  v4 = [v3 oneBestTokenList];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
  [v2 setObject:v5 forKey:@"tokensCount"];

  v6 = *(a1 + 40);
  if (v6)
  {
    [v2 setObject:v6 forKey:@"languageModel"];
  }

  return v2;
}

uint64_t __100__AFDictationConnectionServiceDelegate_speechDidRecognizePartialPackage_nluResult_usingSpeechModel___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _extendRequestTimeout];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _tellSpeechDelegateDidRecognizePartialSpeechPackage:v3 nluResult:v4 languageModel:v5];
}

- (void)speechDidRecognizeTokens:(id)a3 nluResult:(id)a4 usingSpeechModel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[AFAnalytics sharedAnalytics];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __92__AFDictationConnectionServiceDelegate_speechDidRecognizeTokens_nluResult_usingSpeechModel___block_invoke;
  v24[3] = &unk_1E7344458;
  v12 = v8;
  v25 = v12;
  v13 = v10;
  v26 = v13;
  [v11 logEventWithType:2214 contextProvider:v24];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__AFDictationConnectionServiceDelegate_speechDidRecognizeTokens_nluResult_usingSpeechModel___block_invoke_2;
  v19[3] = &unk_1E7349398;
  v20 = WeakRetained;
  v21 = v12;
  v22 = v9;
  v23 = v13;
  v15 = v13;
  v16 = v9;
  v17 = v12;
  v18 = WeakRetained;
  [v18 _dispatchAsync:v19];
}

id __92__AFDictationConnectionServiceDelegate_speechDidRecognizeTokens_nluResult_usingSpeechModel___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  [v2 setObject:v3 forKey:@"tokensCount"];

  v4 = *(a1 + 40);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"languageModel"];
  }

  return v2;
}

uint64_t __92__AFDictationConnectionServiceDelegate_speechDidRecognizeTokens_nluResult_usingSpeechModel___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _extendRequestTimeout];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);

  return [v2 _tellSpeechDelegateDidRecognizeSpeechTokens:v3 nluResult:v4 languageModel:v5];
}

- (void)speechDidRecognizePhrases:(id)a3 rawPhrases:(id)a4 utterances:(id)a5 rawUtterances:(id)a6 nluResult:(id)a7 usingSpeechModel:(id)a8 correctionContext:(id)a9 audioAnalytics:(id)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = +[AFAnalytics sharedAnalytics];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __162__AFDictationConnectionServiceDelegate_speechDidRecognizePhrases_rawPhrases_utterances_rawUtterances_nluResult_usingSpeechModel_correctionContext_audioAnalytics___block_invoke;
  v48[3] = &unk_1E7344430;
  v24 = v15;
  v49 = v24;
  v25 = v20;
  v50 = v25;
  v26 = v21;
  v51 = v26;
  [v23 logEventWithType:2213 contextProvider:v48];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __162__AFDictationConnectionServiceDelegate_speechDidRecognizePhrases_rawPhrases_utterances_rawUtterances_nluResult_usingSpeechModel_correctionContext_audioAnalytics___block_invoke_2;
  v38[3] = &unk_1E73443E0;
  v39 = WeakRetained;
  v40 = v24;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  v44 = v19;
  v45 = v25;
  v46 = v26;
  v47 = v22;
  v28 = v22;
  v29 = v26;
  v30 = v25;
  v31 = v19;
  v32 = v18;
  v33 = v17;
  v34 = v16;
  v35 = v24;
  v36 = WeakRetained;
  [v36 _dispatchAsync:v38];
}

id __162__AFDictationConnectionServiceDelegate_speechDidRecognizePhrases_rawPhrases_utterances_rawUtterances_nluResult_usingSpeechModel_correctionContext_audioAnalytics___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  [v2 setObject:v3 forKey:@"phrasesCount"];

  v4 = *(a1 + 40);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"languageModel"];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    [v2 setObject:v5 forKey:@"correctionContext"];
  }

  return v2;
}

uint64_t __162__AFDictationConnectionServiceDelegate_speechDidRecognizePhrases_rawPhrases_utterances_rawUtterances_nluResult_usingSpeechModel_correctionContext_audioAnalytics___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _cancelRequestTimeout];
  v2 = *(a1 + 88);
  return [*(a1 + 32) _tellSpeechDelegateDidRecognizeSpeechPhrases:*(a1 + 40) rawPhrases:*(a1 + 48) utterances:*(a1 + 56) rawUtterances:*(a1 + 64) nluResult:*(a1 + 72) languageModel:*(a1 + 80) correctionIdentifier:v2 audioAnalytics:*(a1 + 96)];
}

- (void)speechDidRecognizeVoiceCommandCandidatePackage:(id)a3 nluResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __97__AFDictationConnectionServiceDelegate_speechDidRecognizeVoiceCommandCandidatePackage_nluResult___block_invoke;
  v12[3] = &unk_1E73494B0;
  v13 = WeakRetained;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = WeakRetained;
  [v11 _dispatchAsync:v12];
}

uint64_t __97__AFDictationConnectionServiceDelegate_speechDidRecognizeVoiceCommandCandidatePackage_nluResult___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelRequestTimeout];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _tellSpeechDelegateDidRecognizeVoiceCommandCandidatePackage:v3 nluResult:v4];
}

- (void)speechDidRecognizeFinalResultCandidatePackage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__AFDictationConnectionServiceDelegate_speechDidRecognizeFinalResultCandidatePackage___block_invoke;
  v8[3] = &unk_1E7349860;
  v9 = WeakRetained;
  v10 = v4;
  v6 = v4;
  v7 = WeakRetained;
  [v7 _dispatchAsync:v8];
}

uint64_t __86__AFDictationConnectionServiceDelegate_speechDidRecognizeFinalResultCandidatePackage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelRequestTimeout];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _tellSpeechDelegateDidRecognizeFinalResultCandidatePackage:v3];
}

- (void)speechDidRecognizePackage:(id)a3
{
  v4 = a3;
  v5 = [v4 recognition];
  v6 = [v5 phrases];

  v7 = +[AFAnalytics sharedAnalytics];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __66__AFDictationConnectionServiceDelegate_speechDidRecognizePackage___block_invoke;
  v15[3] = &unk_1E7344430;
  v16 = v6;
  v17 = &stru_1F0512680;
  v18 = 0;
  v8 = v6;
  [v7 logEventWithType:2213 contextProvider:v15];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__AFDictationConnectionServiceDelegate_speechDidRecognizePackage___block_invoke_2;
  v12[3] = &unk_1E7349860;
  v13 = WeakRetained;
  v14 = v4;
  v10 = v4;
  v11 = WeakRetained;
  [v11 _dispatchAsync:v12];
}

id __66__AFDictationConnectionServiceDelegate_speechDidRecognizePackage___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
  [v2 setObject:v3 forKey:@"phrasesCount"];

  v4 = *(a1 + 40);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"languageModel"];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    [v2 setObject:v5 forKey:@"correctionContext"];
  }

  return v2;
}

uint64_t __66__AFDictationConnectionServiceDelegate_speechDidRecognizePackage___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _cancelRequestTimeout];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _tellSpeechDelegateDidRecognizePackage:v3];
}

- (void)speechRecordingDidFail:(id)a3
{
  v4 = a3;
  v5 = +[AFAnalytics sharedAnalytics];
  v6 = AFAnalyticsContextCreateWithError(v4);
  [v5 logEventWithType:2212 context:v6];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__AFDictationConnectionServiceDelegate_speechRecordingDidFail___block_invoke;
  v10[3] = &unk_1E7349860;
  v11 = WeakRetained;
  v12 = v4;
  v8 = v4;
  v9 = WeakRetained;
  [v9 _dispatchAsync:v10];
}

uint64_t __63__AFDictationConnectionServiceDelegate_speechRecordingDidFail___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _checkAndSetIsCapturingSpeech:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _tellSpeechDelegateRecordingDidFail:v3];
}

- (void)speechRecordingDidCancel
{
  v3 = +[AFAnalytics sharedAnalytics];
  [v3 logEventWithType:2210 context:0];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__AFDictationConnectionServiceDelegate_speechRecordingDidCancel__block_invoke;
  v6[3] = &unk_1E73497C8;
  v7 = WeakRetained;
  v5 = WeakRetained;
  [v5 _dispatchAsync:v6];
}

uint64_t __64__AFDictationConnectionServiceDelegate_speechRecordingDidCancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _checkAndSetIsCapturingSpeech:0];
  v2 = *(a1 + 32);

  return [v2 _tellSpeechDelegateRecordingDidCancel];
}

- (void)speechRecordingDidEnd
{
  v3 = +[AFAnalytics sharedAnalytics];
  [v3 logEventWithType:2211 context:0];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__AFDictationConnectionServiceDelegate_speechRecordingDidEnd__block_invoke;
  v6[3] = &unk_1E73497C8;
  v7 = WeakRetained;
  v5 = WeakRetained;
  [v5 _dispatchAsync:v6];
}

uint64_t __61__AFDictationConnectionServiceDelegate_speechRecordingDidEnd__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _scheduleRequestTimeout];
  [*(a1 + 32) _checkAndSetIsCapturingSpeech:0];
  v2 = *(a1 + 32);

  return [v2 _tellSpeechDelegateRecordingDidEnd];
}

- (void)speechRecordingDidBeginWithOptions:(id)a3 sessionUUID:(id)a4 sessionRequestUUID:(id)a5
{
  v29[5] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  v11 = +[AFAnalytics sharedAnalytics];
  v28[0] = @"dictationUIInteractionIdentifier";
  v12 = [v8 interactionIdentifier];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_1F0512680;
  }

  v29[0] = v14;
  v28[1] = @"speechRecognitionSource";
  v15 = @"server";
  if ([v8 forceOfflineRecognition] && objc_msgSend(v8, "secureOfflineOnly"))
  {
    v15 = @"local";
  }

  if (v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = &stru_1F0512680;
  }

  v29[1] = v15;
  v29[2] = v16;
  v28[2] = @"sessionID";
  v28[3] = @"sessionRequestUUID";
  if (v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = &stru_1F0512680;
  }

  v29[3] = v17;
  v28[4] = @"dictationOptInStatus";
  v18 = +[AFPreferences sharedPreferences];
  v19 = [v18 siriDataSharingOptInStatus];
  if (v19 > 3)
  {
    v20 = @"(unknown)";
  }

  else
  {
    v20 = off_1E7348978[v19];
  }

  v21 = v20;
  v29[4] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:5];
  [v11 logEventWithType:2209 context:v22];

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __106__AFDictationConnectionServiceDelegate_speechRecordingDidBeginWithOptions_sessionUUID_sessionRequestUUID___block_invoke;
  v26[3] = &unk_1E7349860;
  v26[4] = self;
  v27 = v8;
  v24 = v8;
  [WeakRetained _dispatchAsync:v26];

  v25 = *MEMORY[0x1E69E9840];
}

void __106__AFDictationConnectionServiceDelegate_speechRecordingDidBeginWithOptions_sessionUUID_sessionRequestUUID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _tellSpeechDelegateRecordingDidBeginWithOptions:*(a1 + 40)];
}

- (void)speechRecordingWillBeginWithInputAudioPowerXPCWrapper:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__AFDictationConnectionServiceDelegate_speechRecordingWillBeginWithInputAudioPowerXPCWrapper___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [WeakRetained _dispatchAsync:v7];
}

void __94__AFDictationConnectionServiceDelegate_speechRecordingWillBeginWithInputAudioPowerXPCWrapper___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained _startInputAudioPowerUpdatesWithXPCWrapper:*(a1 + 40)];

  v3 = objc_loadWeakRetained((*(a1 + 32) + 8));
  [v3 _tellSpeechDelegateRecordingWillBegin];
}

- (AFDictationConnectionServiceDelegate)initWithDictationConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = AFDictationConnectionServiceDelegate;
  v5 = [(AFDictationConnectionServiceDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
  }

  return v6;
}

@end