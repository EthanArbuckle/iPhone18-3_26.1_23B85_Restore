@interface _LTTextToSpeechTranslationRequest
- (_LTSpeechTranslationDelegate)delegate;
- (_LTTextToSpeechTranslationRequest)initWithLocalePair:(id)a3 suggestedUniqueID:(id)a4;
- (_LTTextToSpeechTranslationRequest)initWithSourceLocale:(id)a3 targetLocale:(id)a4 suggestedUniqueID:(id)a5;
- (id)nativeAudioFormat;
- (id)requestContext;
- (void)_startTranslationWithService:(id)a3 done:(id)a4;
- (void)_translationFailedWithError:(id)a3;
- (void)translationDidFinishWithError:(id)a3;
- (void)translatorDidTranslate:(id)a3;
@end

@implementation _LTTextToSpeechTranslationRequest

- (id)requestContext
{
  v7.receiver = self;
  v7.super_class = _LTTextToSpeechTranslationRequest;
  v3 = [(_LTTranslationRequest *)&v7 requestContext];
  v4 = [(_LTTranslationRequest *)self outputFileURL];
  [v3 setOutputFileURL:v4];

  v5 = 1;
  [v3 setCancelOnCleanup:1];
  [v3 setRoute:0];
  if (![(_LTTranslationRequest *)self forcedOfflineTranslation])
  {
    if ([(_LTTranslationRequest *)self _forcedOnlineTranslation])
    {
      v5 = 2;
    }

    else
    {
      if (![(_LTTranslationRequest *)self preferOnDeviceIfAvailable])
      {
        goto LABEL_7;
      }

      v5 = 3;
    }
  }

  [v3 setRoute:v5];
LABEL_7:

  return v3;
}

- (_LTTextToSpeechTranslationRequest)initWithSourceLocale:(id)a3 targetLocale:(id)a4 suggestedUniqueID:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_LTLocalePair alloc] initWithSourceLocale:v10 targetLocale:v9];

  v12 = [(_LTTextToSpeechTranslationRequest *)self initWithLocalePair:v11 suggestedUniqueID:v8];
  return v12;
}

- (_LTTextToSpeechTranslationRequest)initWithLocalePair:(id)a3 suggestedUniqueID:(id)a4
{
  v9.receiver = self;
  v9.super_class = _LTTextToSpeechTranslationRequest;
  v4 = [(_LTTranslationRequest *)&v9 initWithLocalePair:a3 suggestedUniqueID:a4];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.siri.translation.speechrequest", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    v7 = v4;
  }

  return v4;
}

- (id)nativeAudioFormat
{
  v2 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:&SupportedASBD];

  return v2;
}

- (void)_startTranslationWithService:(id)a3 done:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v8, OS_LOG_TYPE_DEFAULT, "Start text to speech translation with service", buf, 2u);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___LTTextToSpeechTranslationRequest__startTranslationWithService_done___block_invoke;
  block[3] = &unk_278B6CCE0;
  objc_copyWeak(&v15, buf);
  v13 = v6;
  v14 = v7;
  v10 = v6;
  v11 = v7;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_translationFailedWithError:(id)a3
{
  v7 = a3;
  v4 = [(_LTTextToSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_LTTextToSpeechTranslationRequest *)self delegate];
    [v6 translationDidFinishWithError:v7];
  }
}

- (void)translatorDidTranslate:(id)a3
{
  v4 = a3;
  v5 = _LTOSLogTranslationEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_23AAF5000, v5, OS_LOG_TYPE_INFO, "TextToSpeechTranslation did receive translation result", v9, 2u);
  }

  v6 = [(_LTTextToSpeechTranslationRequest *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_LTTextToSpeechTranslationRequest *)self delegate];
    [v8 translatorDidTranslate:v4];
  }
}

- (void)translationDidFinishWithError:(id)a3
{
  v8 = a3;
  v4 = [(_LTTextToSpeechTranslationRequest *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_LTTextToSpeechTranslationRequest *)self delegate];
    [v6 translationDidFinishWithError:v8];
  }

  done = self->_done;
  if (done)
  {
    done[2]();
  }
}

- (_LTSpeechTranslationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end