@interface LTSpeakRequest
@end

@implementation LTSpeakRequest

void __53___LTSpeakRequest__startTranslationWithService_done___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __53___LTSpeakRequest__startTranslationWithService_done___block_invoke_2;
    v8[3] = &unk_278B6D4B0;
    objc_copyWeak(&v12, (a1 + 40));
    v9 = v5;
    v10 = v6;
    v11 = *(a1 + 32);
    [WeakRetained _withHandlerQueue:v8];

    objc_destroyWeak(&v12);
  }
}

void __53___LTSpeakRequest__startTranslationWithService_done___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setOutputFileURL:*(a1 + 32)];
    v3 = v4[17];
    if (v3)
    {
      (*(v3 + 16))(v3, *(a1 + 40));
    }

    (*(*(a1 + 48) + 16))();
    WeakRetained = v4;
  }
}

void __44___LTSpeakRequest_ttsAudioStarted_duration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained audioStartHandler];

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 audioStartHandler];
      v4[2](v4, *(a1 + 32), *(a1 + 48));

      WeakRetained = v5;
    }
  }
}

@end