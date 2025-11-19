@interface LTSpeechTranslationRequest
@end

@implementation LTSpeechTranslationRequest

void __65___LTSpeechTranslationRequest__startTranslationWithService_done___block_invoke(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v3 = [a1[5] copy];
    v4 = *(WeakRetained + 18);
    *(WeakRetained + 18) = v3;

    objc_storeStrong(WeakRetained + 17, a1[4]);
    v5 = *(WeakRetained + 17);
    v6 = [WeakRetained requestContext];
    [v5 startSpeechTranslationWithContext:v6];

    if (*(WeakRetained + 152) == 1)
    {
      v7 = *(WeakRetained + 20);
      *(WeakRetained + 20) = 0;

      v8 = [WeakRetained nativeAudioFormat];
      v9 = [WeakRetained setUpAudioCaptureFile:@"final_asr_input" withFormat:v8];
      v10 = *(WeakRetained + 20);
      *(WeakRetained + 20) = v9;
    }

    if ([*(WeakRetained + 15) count])
    {
      v11 = _LTOSLogTranslationEngine();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23AAF5000, v11, OS_LOG_TYPE_DEFAULT, "Drain queued buffers first", buf, 2u);
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = *(WeakRetained + 15);
      v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          v16 = 0;
          do
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v21 + 1) + 8 * v16);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [WeakRetained _appendAudioPCMBuffer:v17];
            }

            else
            {
              v18 = CFGetTypeID(v17);
              if (v18 == CMSampleBufferGetTypeID())
              {
                [WeakRetained _appendAudioSampleBuffer:v17 simulateRealtime:{0, v21}];
              }
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v14);
      }
    }

    v19 = *(WeakRetained + 15);
    *(WeakRetained + 15) = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __52___LTSpeechTranslationRequest_appendAudioPCMBuffer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (WeakRetained[17])
    {
      [*(a1 + 40) _appendAudioPCMBuffer:*(a1 + 32)];
    }

    else
    {
      v3 = WeakRetained[15];
      if (v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = [MEMORY[0x277CBEB18] array];
      }

      v5 = *(v6 + 15);
      *(v6 + 15) = v4;

      [*(v6 + 15) addObject:*(a1 + 32)];
    }

    WeakRetained = v6;
  }
}

void __55___LTSpeechTranslationRequest_append_simulateRealtime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (WeakRetained[17])
    {
      [*(a1 + 40) _appendAudioSampleBuffer:*(a1 + 32) simulateRealtime:*(a1 + 56)];
    }

    else
    {
      v3 = WeakRetained[15];
      if (v3)
      {
        v4 = v3;
      }

      else
      {
        v4 = [MEMORY[0x277CBEB18] array];
      }

      v5 = *(v6 + 15);
      *(v6 + 15) = v4;

      [*(v6 + 15) addObject:*(a1 + 32)];
    }

    WeakRetained = v6;
  }
}

id __56___LTSpeechTranslationRequest__convertAndFeedPCMBuffer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 24) == 1)
  {
    v5 = 0;
    *a3 = 1;
  }

  else
  {
    *(v4 + 24) = 1;
    *a3 = 0;
    v5 = *(a1 + 32);
  }

  return v5;
}

void __39___LTSpeechTranslationRequest_endAudio__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _drainAndClearAudioConverter];
    [v2[17] endAudio];
    [v2[20] close];
    WeakRetained = v2;
  }
}

@end