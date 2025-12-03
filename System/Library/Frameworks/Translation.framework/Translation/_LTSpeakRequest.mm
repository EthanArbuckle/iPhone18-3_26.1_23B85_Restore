@interface _LTSpeakRequest
- (_LTSpeakRequest)initWithLocalePair:(id)pair;
- (_LTSpeakRequest)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale handlerQueue:(id)queue;
- (id)requestContext;
- (void)_startTranslationWithService:(id)service done:(id)done;
- (void)_withHandlerQueue:(id)queue;
- (void)ttsAudioStarted:(id)started duration:(double)duration;
@end

@implementation _LTSpeakRequest

- (_LTSpeakRequest)initWithLocalePair:(id)pair
{
  v7.receiver = self;
  v7.super_class = _LTSpeakRequest;
  v3 = [(_LTTranslationRequest *)&v7 initWithLocalePair:pair];
  v4 = v3;
  if (v3)
  {
    v3->_ttsPlaybackRate = 1.0;
    v3->_muteTTSBasedOnRingerSwitchIfPossible = 0;
    v5 = v3;
  }

  return v4;
}

- (_LTSpeakRequest)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale handlerQueue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = _LTSpeakRequest;
  v10 = [(_LTTranslationRequest *)&v14 initWithSourceLocale:locale targetLocale:targetLocale];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_handlerQueue, queue);
    v12 = v11;
  }

  return v11;
}

- (id)requestContext
{
  v6.receiver = self;
  v6.super_class = _LTSpeakRequest;
  requestContext = [(_LTTranslationRequest *)&v6 requestContext];
  [requestContext setRoute:0];
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

  [requestContext setRoute:v4];
LABEL_6:
  [requestContext setTtsPlaybackRate:self->_ttsPlaybackRate];
  [requestContext setMuteTTSBasedOnRingerSwitchIfPossible:self->_muteTTSBasedOnRingerSwitchIfPossible];
  [requestContext setCancelOnCleanup:1];

  return requestContext;
}

- (void)_withHandlerQueue:(id)queue
{
  queueCopy = queue;
  handlerQueue = [(_LTSpeakRequest *)self handlerQueue];

  if (handlerQueue)
  {
    handlerQueue2 = [(_LTSpeakRequest *)self handlerQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37___LTSpeakRequest__withHandlerQueue___block_invoke;
    block[3] = &unk_278B6D5E8;
    v8 = queueCopy;
    dispatch_async(handlerQueue2, block);
  }

  else
  {
    queueCopy[2](queueCopy);
  }
}

- (void)_startTranslationWithService:(id)service done:(id)done
{
  serviceCopy = service;
  doneCopy = done;
  objc_initWeak(&location, self);
  text = [(_LTSpeakRequest *)self text];
  requestContext = [(_LTSpeakRequest *)self requestContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53___LTSpeakRequest__startTranslationWithService_done___block_invoke;
  v11[3] = &unk_278B6D610;
  objc_copyWeak(&v13, &location);
  v10 = doneCopy;
  v12 = v10;
  [serviceCopy speak:text withContext:requestContext completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)ttsAudioStarted:(id)started duration:(double)duration
{
  startedCopy = started;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44___LTSpeakRequest_ttsAudioStarted_duration___block_invoke;
  v8[3] = &unk_278B6D638;
  objc_copyWeak(v10, &location);
  v7 = startedCopy;
  v9 = v7;
  v10[1] = *&duration;
  [(_LTSpeakRequest *)self _withHandlerQueue:v8];

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

@end