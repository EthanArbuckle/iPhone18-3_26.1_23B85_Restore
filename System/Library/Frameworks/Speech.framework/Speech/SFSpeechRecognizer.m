@interface SFSpeechRecognizer
+ (SFSpeechRecognizerAuthorizationStatus)authorizationStatus;
+ (void)_fetchSupportedForcedOfflineLocalesWithCompletion:(id)a3;
+ (void)initialize;
+ (void)requestAuthorization:(void *)handler;
- (BOOL)_isAvailableForForcedOfflineRecognition;
- (SFSpeechRecognitionTask)recognitionTaskWithRequest:(SFSpeechRecognitionRequest *)request delegate:(id)delegate;
- (SFSpeechRecognitionTask)recognitionTaskWithRequest:(SFSpeechRecognitionRequest *)request resultHandler:(void *)resultHandler;
- (SFSpeechRecognizer)init;
- (SFSpeechRecognizer)initWithLocale:(NSLocale *)locale;
- (id)delegate;
- (uint64_t)_informDelegateOfAvailabilityChange;
- (void)_dealloc;
- (void)_objc_initiateDealloc;
- (void)_prepareToRecognizeWithTaskHint:(int64_t)a3 clientIdentifier:(id)a4 completion:(id)a5;
- (void)_prepareToRecognizeWithTaskHint:(int64_t)a3 completion:(id)a4;
- (void)_requestOfflineDictationSupportForClientIdentifier:(id)a3 completion:(id)a4;
- (void)_requestOfflineDictationSupportWithCompletion:(id)a3;
- (void)setQueue:(NSOperationQueue *)queue;
@end

@implementation SFSpeechRecognizer

- (uint64_t)_informDelegateOfAvailabilityChange
{
  if (result)
  {
    v1 = *(result + 72);
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __57__SFSpeechRecognizer__informDelegateOfAvailabilityChange__block_invoke;
    v2[3] = &unk_1E797CAB8;
    v2[4] = result;
    return [v1 addOperationWithBlock:v2];
  }

  return result;
}

void __57__SFSpeechRecognizer__informDelegateOfAvailabilityChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained speechRecognizer:*(a1 + 32) availabilityDidChange:{objc_msgSend(*(a1 + 32), "isAvailable")}];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setQueue:(NSOperationQueue *)queue
{
  v4 = queue;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@ queue must not be nil", objc_opt_class()}];
  }

  v5 = self->_queue;
  self->_queue = v4;
}

- (SFSpeechRecognitionTask)recognitionTaskWithRequest:(SFSpeechRecognitionRequest *)request delegate:(id)delegate
{
  v6 = delegate;
  v7 = request;
  v8 = [[_SFSpeechRecognitionDelegateTask alloc] _initWithRequest:v7 queue:self->_queue languageCode:self->_languageCode taskHint:self->_defaultTaskHint delegate:v6];

  return v8;
}

- (SFSpeechRecognitionTask)recognitionTaskWithRequest:(SFSpeechRecognitionRequest *)request resultHandler:(void *)resultHandler
{
  v6 = request;
  v7 = resultHandler;
  if (!v7)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Result handler must be non-null"];
  }

  v8 = [[_SFSpeechRecognitionBlockTask alloc] _initWithRequest:v6 queue:self->_queue languageCode:self->_languageCode taskHint:self->_defaultTaskHint resultHandler:v7];

  return v8;
}

- (void)_prepareToRecognizeWithTaskHint:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = +[SFUtilities defaultClientID];
  [(SFSpeechRecognizer *)self _prepareToRecognizeWithTaskHint:a3 clientIdentifier:v7 completion:v6];
}

- (void)_prepareToRecognizeWithTaskHint:(int64_t)a3 clientIdentifier:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__SFSpeechRecognizer__prepareToRecognizeWithTaskHint_clientIdentifier_completion___block_invoke;
  v13[3] = &unk_1E797C0B0;
  v15 = v9;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  v12 = v9;
  [(NSOperationQueue *)queue addOperationWithBlock:v13];
}

void __82__SFSpeechRecognizer__prepareToRecognizeWithTaskHint_clientIdentifier_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v5 = [SFUtilities taskNameFromTaskHint:?];
    if (v5 && [*(a1 + 32) supportsOnDeviceRecognition])
    {
      v2 = objc_opt_new();
      [v2 preloadRecognizerForLanguage:*(*(a1 + 32) + 16) task:v5 clientID:*(a1 + 40) recognitionOverrides:0 modelOverrideURL:0 completion:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 48) + 16);

    v4();
  }
}

- (void)_requestOfflineDictationSupportWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[SFUtilities defaultClientID];
  [(SFSpeechRecognizer *)self _requestOfflineDictationSupportForClientIdentifier:v5 completion:v4];
}

- (void)_requestOfflineDictationSupportForClientIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[SFUtilities isSpeechXPCEnabled])
  {
    v8 = [[SFEntitledAssetConfig alloc] initWithLanguage:self->_languageCode taskHint:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __84__SFSpeechRecognizer__requestOfflineDictationSupportForClientIdentifier_completion___block_invoke;
    v9[3] = &unk_1E797C038;
    v10 = v7;
    [SFSpeechAssetManager fetchAssetWithConfig:v8 clientIdentifier:v6 progress:0 completion:v9];
  }

  else
  {
    [(AFDictationConnection *)self->_dictationConnection requestOfflineDictationSupportForLanguage:self->_languageCode completion:v7];
  }
}

- (BOOL)_isAvailableForForcedOfflineRecognition
{
  if (+[SFUtilities isSpeechXPCEnabled])
  {
    v3 = MEMORY[0x1B26E9E60](self->_languageCode);
    languageCode = v3;
    if (!v3)
    {
      languageCode = self->_languageCode;
    }

    v5 = languageCode;

    v6 = [[SFEntitledAssetConfig alloc] initWithLanguage:v5 taskHint:1];
    v7 = +[SFUtilities defaultClientID];
    v8 = [SFSpeechAssetManager pathToAssetWithConfig:v6 clientIdentifier:v7];

    if (!v8)
    {
      v9 = [(SFEntitledAssetConfig *)v6 assetType];
      if ((v9 - 1) > 6)
      {
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_1E797BC18[v9 - 1];
      }

      v14 = v10;
      v15 = [(SFEntitledAssetConfig *)v6 language];
      NSLog(&cfstr_NoAssetForLang.isa, v14, v15);
    }

    return v8 != 0;
  }

  else
  {
    dictationConnection = self->_dictationConnection;
    v12 = self->_languageCode;

    return [(AFDictationConnection *)dictationConnection forcedOfflineDictationIsAvailableForLanguage:v12];
  }
}

- (void)_objc_initiateDealloc
{
  if (pthread_main_np())
  {

    [(SFSpeechRecognizer *)self _dealloc];
  }

  else
  {
    v3 = MEMORY[0x1E69E96A0];

    dispatch_async_f(v3, self, _dealloc);
  }
}

- (void)_dealloc
{
  [(AFDictationConnection *)self->_dictationConnection endSession];
  [(AFDictationConnection *)self->_dictationConnection cancelAvailabilityMonitoring];
  if (self->_preferencesObserver)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 removeObserver:self->_preferencesObserver];
  }

  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];

  if (([v5 isEqualToString:@"net.whatsapp.WhatsApp"] & 1) == 0)
  {
    [SFLocalSpeechRecognitionClient cleanupCacheWithCompletion:&__block_literal_global_18];
  }
}

- (SFSpeechRecognizer)initWithLocale:(NSLocale *)locale
{
  v4 = locale;
  v5 = [(NSLocale *)v4 localeIdentifier];
  v6 = [SFUtilities stringByReplacingUnderscoresWithHyphens:v5];

  if (!v6 || ([sSupportedLocaleIdentifiers_950 containsObject:v6] & 1) == 0)
  {
    v7 = AFDictationLanguageForKeyboardLanguage();
    if (!v7)
    {
      NSLog(&cfstr_CannotMakeReco.isa, v6, sSupportedLocaleIdentifiers_950);
      goto LABEL_9;
    }

    v8 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v7];

    v4 = v8;
  }

  v35.receiver = self;
  v35.super_class = SFSpeechRecognizer;
  v9 = [(SFSpeechRecognizer *)&v35 init];
  if (v9)
  {
    v10 = [(NSLocale *)v4 copy];
    v11 = v9->_locale;
    v9->_locale = v10;

    v12 = MEMORY[0x1E696AEC0];
    v13 = [(NSLocale *)v4 objectForKey:*MEMORY[0x1E695D9B0]];
    v14 = [(NSLocale *)v4 objectForKey:*MEMORY[0x1E695D978]];
    v15 = [v12 stringWithFormat:@"%@-%@", v13, v14];
    languageCode = v9->_languageCode;
    v9->_languageCode = v15;

    v17 = [MEMORY[0x1E696ADC8] mainQueue];
    queue = v9->_queue;
    v9->_queue = v17;

    v19 = objc_alloc_init(MEMORY[0x1E698D118]);
    dictationConnection = v9->_dictationConnection;
    v9->_dictationConnection = v19;

    [(AFDictationConnection *)v9->_dictationConnection setDelegate:v9];
    [(AFDictationConnection *)v9->_dictationConnection beginAvailabilityMonitoring];
    objc_initWeak(&location, v9);
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    v22 = [MEMORY[0x1E696ADC8] mainQueue];
    v23 = *MEMORY[0x1E698D098];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __37__SFSpeechRecognizer_initWithLocale___block_invoke;
    v32[3] = &unk_1E797C010;
    objc_copyWeak(&v33, &location);
    v24 = [v21 addObserverForName:v23 object:0 queue:v22 usingBlock:v32];
    preferencesObserver = v9->_preferencesObserver;
    v9->_preferencesObserver = v24;

    v26 = objc_alloc_init(MEMORY[0x1E695AEF8]);
    callObserver = v9->_callObserver;
    v9->_callObserver = v26;

    v28 = v9->_callObserver;
    v29 = MEMORY[0x1E69E96A0];
    v30 = MEMORY[0x1E69E96A0];
    [(CXCallObserver *)v28 setDelegate:v9 queue:v29];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  self = v9;
  v7 = self;
LABEL_9:

  return v7;
}

uint64_t __37__SFSpeechRecognizer_initWithLocale___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[9];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__SFSpeechRecognizer__informDelegateOfPreferencesChange__block_invoke;
    v5[3] = &unk_1E797CAB8;
    v5[4] = v2;
    [v3 addOperationWithBlock:v5];
  }

  return MEMORY[0x1EEE66BB8]();
}

void __56__SFSpeechRecognizer__informDelegateOfPreferencesChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained speechRecognizer:*(a1 + 32) availabilityDidChange:{objc_msgSend(MEMORY[0x1E698D118], "dictationIsEnabled")}];
  }
}

- (SFSpeechRecognizer)init
{
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [(SFSpeechRecognizer *)self initWithLocale:v3];

  return v4;
}

+ (void)_fetchSupportedForcedOfflineLocalesWithCompletion:(id)a3
{
  v3 = a3;
  if (+[SFUtilities isSpeechXPCEnabled])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__SFSpeechRecognizer__fetchSupportedForcedOfflineLocalesWithCompletion___block_invoke;
    v10[3] = &unk_1E797C060;
    v4 = &v11;
    v11 = v3;
    v5 = v3;
    [SFSpeechAssetManager installedLanguagesForTaskHint:1 completion:v10];
  }

  else
  {
    v6 = MEMORY[0x1E698D118];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __72__SFSpeechRecognizer__fetchSupportedForcedOfflineLocalesWithCompletion___block_invoke_2;
    v8[3] = &unk_1E797C088;
    v4 = &v9;
    v9 = v3;
    v7 = v3;
    [v6 getForcedOfflineDictationSupportedLanguagesWithCompletion:v8];
  }
}

void __72__SFSpeechRecognizer__fetchSupportedForcedOfflineLocalesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{*(*(&v13 + 1) + 8 * v9), v13}];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v4, 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __72__SFSpeechRecognizer__fetchSupportedForcedOfflineLocalesWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:{*(*(&v13 + 1) + 8 * v9), v13}];
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    (*(v11 + 16))(v11, v4, 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)requestAuthorization:(void *)handler
{
  v3 = handler;
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x1E69D55F0];
    v6 = v3;
    TCCAccessRequest();
  }
}

uint64_t __43__SFSpeechRecognizer_requestAuthorization___block_invoke(uint64_t a1, int a2)
{
  if (!a2)
  {
    [*(a1 + 40) authorizationStatus];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

+ (SFSpeechRecognizerAuthorizationStatus)authorizationStatus
{
  v2 = MEMORY[0x1E69D55F0];
  v3 = *MEMORY[0x1E69D55F0];
  v4 = TCCAccessPreflight();
  if (v4 == 2)
  {
    return 0;
  }

  if (!v4)
  {
    return 3;
  }

  v6 = *v2;
  if (TCCAccessRestricted())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_opt_self();
    _class_setCustomDeallocInitiation();

    [SFUtilities supportedLocalesWithCompletion:&__block_literal_global_977];
  }
}

void __32__SFSpeechRecognizer_initialize__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 copy];
  v6 = sSupportedLocales_975;
  sSupportedLocales_975 = v5;

  v7 = [v4 copy];
  v8 = sSupportedLocaleIdentifiers_950;
  sSupportedLocaleIdentifiers_950 = v7;
}

@end