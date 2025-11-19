@interface _LTSpeakRequest
- (_LTSpeakRequest)initWithLocalePair:(id)a3;
- (_LTSpeakRequest)initWithSourceLocale:(id)a3 targetLocale:(id)a4 handlerQueue:(id)a5;
- (id)requestContext;
- (void)_startTranslationWithService:(id)a3 done:(id)a4;
- (void)_withHandlerQueue:(id)a3;
- (void)ttsAudioStarted:(id)a3 duration:(double)a4;
@end

@implementation _LTSpeakRequest

- (_LTSpeakRequest)initWithLocalePair:(id)a3
{
  v7.receiver = self;
  v7.super_class = _LTSpeakRequest;
  v3 = [(_LTTranslationRequest *)&v7 initWithLocalePair:a3];
  v4 = v3;
  if (v3)
  {
    v3->_ttsPlaybackRate = 1.0;
    v3->_muteTTSBasedOnRingerSwitchIfPossible = 0;
    v5 = v3;
  }

  return v4;
}

- (_LTSpeakRequest)initWithSourceLocale:(id)a3 targetLocale:(id)a4 handlerQueue:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = _LTSpeakRequest;
  v10 = [(_LTTranslationRequest *)&v14 initWithSourceLocale:a3 targetLocale:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_handlerQueue, a5);
    v12 = v11;
  }

  return v11;
}

- (id)requestContext
{
  v6.receiver = self;
  v6.super_class = _LTSpeakRequest;
  v3 = [(_LTTranslationRequest *)&v6 requestContext];
  [v3 setRoute:0];
  if ([(_LTTranslationRequest *)self forcedOfflineTranslation])
  {
    v4 = 1;
  }

  else
  {
    if (![(_LTTranslationRequest *)self _forcedOnlineTranslation])
    {
      goto LABEL_6;
    }

    v4 = 2;
  }

  [v3 setRoute:v4];
LABEL_6:
  [v3 setTtsPlaybackRate:self->_ttsPlaybackRate];
  [v3 setMuteTTSBasedOnRingerSwitchIfPossible:self->_muteTTSBasedOnRingerSwitchIfPossible];
  [v3 setCancelOnCleanup:1];

  return v3;
}

- (void)_withHandlerQueue:(id)a3
{
  v4 = a3;
  v5 = [(_LTSpeakRequest *)self handlerQueue];

  if (v5)
  {
    v6 = [(_LTSpeakRequest *)self handlerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37___LTSpeakRequest__withHandlerQueue___block_invoke;
    block[3] = &unk_278B6D5E8;
    v8 = v4;
    dispatch_async(v6, block);
  }

  else
  {
    v4[2](v4);
  }
}

- (void)_startTranslationWithService:(id)a3 done:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(_LTSpeakRequest *)self text];
  v9 = [(_LTSpeakRequest *)self requestContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53___LTSpeakRequest__startTranslationWithService_done___block_invoke;
  v11[3] = &unk_278B6D610;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  [v6 speak:v8 withContext:v9 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)ttsAudioStarted:(id)a3 duration:(double)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44___LTSpeakRequest_ttsAudioStarted_duration___block_invoke;
  v8[3] = &unk_278B6D638;
  objc_copyWeak(v10, &location);
  v7 = v6;
  v9 = v7;
  v10[1] = *&a4;
  [(_LTSpeakRequest *)self _withHandlerQueue:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

@end