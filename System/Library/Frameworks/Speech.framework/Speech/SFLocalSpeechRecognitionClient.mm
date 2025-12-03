@interface SFLocalSpeechRecognitionClient
+ (void)cleanupCacheWithCompletion:(id)completion;
+ (void)initialize;
+ (void)logCoreAnalyticsEvent:(id)event withAnalytics:(id)analytics;
- (SFLocalSpeechRecognitionClient)init;
- (SFLocalSpeechRecognitionClient)initWithDelegate:(id)delegate;
- (SFLocalSpeechRecognitionDelegate)delegate;
- (id)_asynchronousServiceProxyWithErrorHandler:(uint64_t)handler;
- (void)_serviceProxyWithErrorHandler:(void *)handler;
- (void)addAudioPacket:(id)packet;
- (void)addProns:(id)prons forWord:(id)word completion:(id)completion;
- (void)addSentenceToNgramCounts:(id)counts;
- (void)addSentenceToNgramCounts:(id)counts completion:(id)completion;
- (void)appLmNeedsRebuild:(id)rebuild language:(id)language sandboxExtensions:(id)extensions completion:(id)completion;
- (void)cancelSpeech;
- (void)configParametersForVoicemailWithLanguage:(id)language clientID:(id)d completion:(id)completion;
- (void)createNgramCountsArtifactFromPhraseCountArtifact:(id)artifact writeToDirectory:(id)directory sandboxExtensions:(id)extensions completion:(id)completion;
- (void)createPhraseCountsArtifactWithIdentifier:(id)identifier rawPhraseCountsPath:(id)path customPronunciationsPath:(id)pronunciationsPath writeToDirectory:(id)directory sandboxExtensions:(id)extensions completion:(id)completion;
- (void)dealloc;
- (void)deserializeNgramCountsData:(id)data completion:(id)completion;
- (void)downloadAssetsForConfig:(id)config clientID:(id)d expiration:(id)expiration detailedProgress:(id)progress completionHandler:(id)handler;
- (void)downloadAssetsForConfig:(id)config clientID:(id)d expiration:(id)expiration progress:(id)progress completionHandler:(id)handler;
- (void)fetchAssetsForLanguage:(id)language clientID:(id)d completion:(id)completion;
- (void)generateNgramCountsSerializeDataWithCompletion:(id)completion;
- (void)initializeLmWithAssetPath:(id)path completion:(id)completion;
- (void)initializeLmWithLocale:(id)locale clientID:(id)d completion:(id)completion;
- (void)initializeWithSandboxExtensions:(id)extensions;
- (void)installationStateForAssetConfig:(id)config clientID:(id)d completion:(id)completion;
- (void)installedLanguagesForAssetType:(unint64_t)type synchronous:(BOOL)synchronous completion:(id)completion;
- (void)invalidate;
- (void)lmeThresholdWithCompletion:(id)completion;
- (void)localSpeechRecognitionDidDownloadAssetsWithProgress:(unint64_t)progress isStalled:(BOOL)stalled;
- (void)localSpeechRecognitionDidFail:(id)fail;
- (void)localSpeechRecognitionDidFinishDownloadingAssets:(id)assets error:(id)error;
- (void)localSpeechRecognitionDidFinishRecognition:(id)recognition;
- (void)localSpeechRecognitionDidProcessAudioDuration:(double)duration;
- (void)localSpeechRecognitionDidRecognizePartialResult:(id)result rawPartialResult:(id)partialResult;
- (void)localSpeechRecognitionDidSucceed;
- (void)metricsWithCompletion:(id)completion;
- (void)oovWordsAndFrequenciesWithCompletion:(id)completion;
- (void)pathToAssetWithConfig:(id)config clientID:(id)d asyncCompletion:(id)completion;
- (void)pathToAssetWithConfig:(id)config clientID:(id)d completion:(id)completion;
- (void)preloadRecognizerForLanguage:(id)language task:(id)task clientID:(id)d recognitionOverrides:(id)overrides modelOverrideURL:(id)l completion:(id)completion;
- (void)setPurgeabilityForAssetWithConfig:(id)config purgeable:(BOOL)purgeable clientID:(id)d completion:(id)completion;
- (void)startRecordedAudioDictationWithParameters:(id)parameters;
- (void)stopSpeech;
- (void)subscriptionsForClientId:(id)id completion:(id)completion;
- (void)supportedLanguagesForAssetType:(unint64_t)type synchronous:(BOOL)synchronous completion:(id)completion;
- (void)synchronousComputeEuclidEmbeddingsForSources:(id)sources completion:(id)completion;
- (void)synchronousCreateEuclidInstanceForLanguageStr:(id)str clientID:(id)d inputFormat:(int64_t)format loadingOption:(int64_t)option completion:(id)completion;
- (void)synchronousEuclidConfigPathForLanguageStr:(id)str completion:(id)completion;
- (void)synchronousEuclidNearestNeighborsForSource:(id)source numberOfNeighbors:(id)neighbors completion:(id)completion;
- (void)trainAppLmFromNgramCountsArtifact:(id)artifact forApp:(id)app language:(id)language writeToDirectory:(id)directory sandboxExtensions:(id)extensions completion:(id)completion;
- (void)trainAppLmFromNgramsSerializedData:(id)data customPronsData:(id)pronsData language:(id)language writeToDirectory:(id)directory sandboxExtension:(id)extension completion:(id)completion;
- (void)trainFromPlainTextAndWriteToDirectory:(id)directory sandboxExtension:(id)extension completion:(id)completion;
- (void)unsubscribeFromAssetWithConfig:(id)config clientID:(id)d asyncCompletion:(id)completion;
- (void)unsubscribeFromAssetWithConfig:(id)config clientID:(id)d completion:(id)completion;
- (void)versionOfAssetWithConfig:(id)config clientID:(id)d completion:(id)completion;
- (void)wakeUpWithCompletion:(id)completion;
@end

@implementation SFLocalSpeechRecognitionClient

- (SFLocalSpeechRecognitionClient)init
{
  v20.receiver = self;
  v20.super_class = SFLocalSpeechRecognitionClient;
  v2 = [(SFLocalSpeechRecognitionClient *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_create("SFLocalSpeechRecognitionClient", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.speech.localspeechrecognition"];
    lsrConnection = v2->_lsrConnection;
    v2->_lsrConnection = v5;

    v7 = v2->_lsrConnection;
    v8 = SFLSRGetInterface();
    [(NSXPCConnection *)v7 setRemoteObjectInterface:v8];

    v9 = v2->_lsrConnection;
    v10 = SFLSRDelegateGetInterface();
    [(NSXPCConnection *)v9 setExportedInterface:v10];

    [(NSXPCConnection *)v2->_lsrConnection setExportedObject:v2];
    connectionUnavailableError = v2->_connectionUnavailableError;
    v2->_connectionUnavailableError = 0;

    objc_initWeak(&location, v2);
    v12 = v2->_lsrConnection;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __38__SFLocalSpeechRecognitionClient_init__block_invoke;
    v17[3] = &unk_1E797C5C8;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v12 setInterruptionHandler:v17];
    v13 = v2->_lsrConnection;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __38__SFLocalSpeechRecognitionClient_init__block_invoke_2;
    v15[3] = &unk_1E797C5C8;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:v15];
    [(NSXPCConnection *)v2->_lsrConnection resume];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog = os_log_create("com.apple.speech.localspeechrecognition", "SFLocalSpeechRecognitionClient");

    MEMORY[0x1EEE66BB8]();
  }
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFLocalSpeechRecognitionClient_invalidate__block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__44__SFLocalSpeechRecognitionClient_invalidate__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

uint64_t __38__SFLocalSpeechRecognitionClient_init__block_invoke_44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698D280] code:1101 userInfo:0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  v7 = *(a1 + 32);
  if (*(v7 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v7 + 56));
    [WeakRetained localSpeechRecognitionClient:0 speechRecognitionDidFail:*(*(a1 + 32) + 24)];

    v7 = *(a1 + 32);
  }

  v9 = *(v7 + 24);

  return [v7 localSpeechRecognitionDidFinishDownloadingAssets:0 error:v9];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v7 = "[SFLocalSpeechRecognitionClient dealloc]";
    _os_log_debug_impl(&dword_1AC5BC000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = SFLocalSpeechRecognitionClient;
  [(SFLocalSpeechRecognitionClient *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

void __38__SFLocalSpeechRecognitionClient_init__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = @"com.apple.speech.localspeechrecognition";
    _os_log_impl(&dword_1AC5BC000, v2, OS_LOG_TYPE_INFO, "%@ Invalidated", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__SFLocalSpeechRecognitionClient_init__block_invoke_44;
    block[3] = &unk_1E797CAB8;
    v8 = WeakRetained;
    dispatch_async(v5, block);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (SFLocalSpeechRecognitionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)localSpeechRecognitionDidFinishDownloadingAssets:(id)assets error:(id)error
{
  assetsCopy = assets;
  errorCopy = error;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__SFLocalSpeechRecognitionClient_localSpeechRecognitionDidFinishDownloadingAssets_error___block_invoke;
  block[3] = &unk_1E797C460;
  block[4] = self;
  v12 = assetsCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = assetsCopy;
  dispatch_async(queue, block);
}

void __89__SFLocalSpeechRecognitionClient_localSpeechRecognitionDidFinishDownloadingAssets_error___block_invoke(void *a1)
{
  v8 = [*(a1[4] + 40) copy];
  v2 = a1[4];
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = a1[4];
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = v8;
  if (v8)
  {
    if (!a1[5])
    {
      v7 = a1[6];
    }

    (*(v8 + 2))(v8);
    v6 = v8;
  }
}

- (void)localSpeechRecognitionDidDownloadAssetsWithProgress:(unint64_t)progress isStalled:(BOOL)stalled
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__SFLocalSpeechRecognitionClient_localSpeechRecognitionDidDownloadAssetsWithProgress_isStalled___block_invoke;
  block[3] = &unk_1E797C300;
  block[4] = self;
  block[5] = progress;
  stalledCopy = stalled;
  dispatch_async(queue, block);
}

void __96__SFLocalSpeechRecognitionClient_localSpeechRecognitionDidDownloadAssetsWithProgress_isStalled___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  if (v2)
  {
    v3 = v2;
    v2[2](v2, *(a1 + 40), *(a1 + 48));
    v2 = v3;
  }
}

- (void)localSpeechRecognitionDidSucceed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognitionClientSpeechRecognitionDidSucceed:self];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SFLocalSpeechRecognitionClient_localSpeechRecognitionDidSucceed__block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)localSpeechRecognitionDidRecognizePartialResult:(id)result rawPartialResult:(id)partialResult
{
  partialResultCopy = partialResult;
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognitionClient:self didRecognizePartialResult:resultCopy rawPartialResult:partialResultCopy];
}

- (void)localSpeechRecognitionDidProcessAudioDuration:(double)duration
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognitionClient:self didProcessAudioDuration:duration];
}

- (void)localSpeechRecognitionDidFinishRecognition:(id)recognition
{
  recognitionCopy = recognition;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognitionClient:self didFinishRecognition:recognitionCopy];
}

- (void)localSpeechRecognitionDidFail:(id)fail
{
  failCopy = fail;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognitionClient:self speechRecognitionDidFail:failCopy];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SFLocalSpeechRecognitionClient_localSpeechRecognitionDidFail___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)synchronousEuclidConfigPathForLanguageStr:(id)str completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__SFLocalSpeechRecognitionClient_synchronousEuclidConfigPathForLanguageStr_completion___block_invoke;
  v10[3] = &unk_1E797C1C8;
  v11 = completionCopy;
  v7 = completionCopy;
  strCopy = str;
  v9 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v10];
  [v9 synchronousEuclidConfigPathForLanguageStr:strCopy completion:v7];
}

void __87__SFLocalSpeechRecognitionClient_synchronousEuclidConfigPathForLanguageStr_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_serviceProxyWithErrorHandler:(void *)handler
{
  v3 = a2;
  if (handler)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__1723;
    v18 = __Block_byref_object_dispose__1724;
    v19 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__1723;
    v12 = __Block_byref_object_dispose__1724;
    v13 = 0;
    v4 = handler[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__SFLocalSpeechRecognitionClient__serviceProxyWithErrorHandler___block_invoke;
    block[3] = &unk_1E797C178;
    block[4] = handler;
    block[5] = &v14;
    block[6] = &v8;
    dispatch_sync(v4, block);
    v5 = v15[5];
    if (v5)
    {
      handler = [v5 synchronousRemoteObjectProxyWithErrorHandler:v3];
    }

    else
    {
      v3[2](v3, v9[5]);
      handler = 0;
    }

    _Block_object_dispose(&v8, 8);

    _Block_object_dispose(&v14, 8);
  }

  return handler;
}

void __64__SFLocalSpeechRecognitionClient__serviceProxyWithErrorHandler___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 16));
  v2 = *(a1[4] + 24);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)synchronousEuclidNearestNeighborsForSource:(id)source numberOfNeighbors:(id)neighbors completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__SFLocalSpeechRecognitionClient_synchronousEuclidNearestNeighborsForSource_numberOfNeighbors_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = completionCopy;
  v9 = completionCopy;
  neighborsCopy = neighbors;
  sourceCopy = source;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 synchronousEuclidNearestNeighborsForSource:sourceCopy numberOfNeighbors:neighborsCopy completion:v9];
}

void __106__SFLocalSpeechRecognitionClient_synchronousEuclidNearestNeighborsForSource_numberOfNeighbors_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)synchronousComputeEuclidEmbeddingsForSources:(id)sources completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__SFLocalSpeechRecognitionClient_synchronousComputeEuclidEmbeddingsForSources_completion___block_invoke;
  v10[3] = &unk_1E797C1C8;
  v11 = completionCopy;
  v7 = completionCopy;
  sourcesCopy = sources;
  v9 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v10];
  [v9 synchronousComputeEuclidEmbeddingsForSources:sourcesCopy completion:v7];
}

void __90__SFLocalSpeechRecognitionClient_synchronousComputeEuclidEmbeddingsForSources_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)synchronousCreateEuclidInstanceForLanguageStr:(id)str clientID:(id)d inputFormat:(int64_t)format loadingOption:(int64_t)option completion:(id)completion
{
  completionCopy = completion;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __126__SFLocalSpeechRecognitionClient_synchronousCreateEuclidInstanceForLanguageStr_clientID_inputFormat_loadingOption_completion___block_invoke;
  v17[3] = &unk_1E797C1C8;
  v18 = completionCopy;
  v13 = completionCopy;
  dCopy = d;
  strCopy = str;
  v16 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v17];
  [v16 synchronousCreateEuclidInstanceForLanguageStr:strCopy clientID:dCopy inputFormat:format loadingOption:option completion:v13];
}

void __126__SFLocalSpeechRecognitionClient_synchronousCreateEuclidInstanceForLanguageStr_clientID_inputFormat_loadingOption_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)appLmNeedsRebuild:(id)rebuild language:(id)language sandboxExtensions:(id)extensions completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__SFLocalSpeechRecognitionClient_appLmNeedsRebuild_language_sandboxExtensions_completion___block_invoke;
  v16[3] = &unk_1E797C1C8;
  v17 = completionCopy;
  v11 = completionCopy;
  extensionsCopy = extensions;
  languageCopy = language;
  rebuildCopy = rebuild;
  v15 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v16];
  [v15 appLmNeedsRebuild:rebuildCopy language:languageCopy sandboxExtensions:extensionsCopy completion:v11];
}

void __90__SFLocalSpeechRecognitionClient_appLmNeedsRebuild_language_sandboxExtensions_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)trainAppLmFromNgramCountsArtifact:(id)artifact forApp:(id)app language:(id)language writeToDirectory:(id)directory sandboxExtensions:(id)extensions completion:(id)completion
{
  completionCopy = completion;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __130__SFLocalSpeechRecognitionClient_trainAppLmFromNgramCountsArtifact_forApp_language_writeToDirectory_sandboxExtensions_completion___block_invoke;
  v22[3] = &unk_1E797C1C8;
  v23 = completionCopy;
  v15 = completionCopy;
  extensionsCopy = extensions;
  directoryCopy = directory;
  languageCopy = language;
  appCopy = app;
  artifactCopy = artifact;
  v21 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v22];
  [v21 trainAppLmFromNgramCountsArtifact:artifactCopy forApp:appCopy language:languageCopy writeToDirectory:directoryCopy sandboxExtensions:extensionsCopy completion:v15];
}

void __130__SFLocalSpeechRecognitionClient_trainAppLmFromNgramCountsArtifact_forApp_language_writeToDirectory_sandboxExtensions_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)createNgramCountsArtifactFromPhraseCountArtifact:(id)artifact writeToDirectory:(id)directory sandboxExtensions:(id)extensions completion:(id)completion
{
  completionCopy = completion;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __129__SFLocalSpeechRecognitionClient_createNgramCountsArtifactFromPhraseCountArtifact_writeToDirectory_sandboxExtensions_completion___block_invoke;
  v16[3] = &unk_1E797C1C8;
  v17 = completionCopy;
  v11 = completionCopy;
  extensionsCopy = extensions;
  directoryCopy = directory;
  artifactCopy = artifact;
  v15 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v16];
  [v15 createNgramCountsArtifactFromPhraseCountArtifact:artifactCopy writeToDirectory:directoryCopy sandboxExtensions:extensionsCopy completion:v11];
}

void __129__SFLocalSpeechRecognitionClient_createNgramCountsArtifactFromPhraseCountArtifact_writeToDirectory_sandboxExtensions_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)createPhraseCountsArtifactWithIdentifier:(id)identifier rawPhraseCountsPath:(id)path customPronunciationsPath:(id)pronunciationsPath writeToDirectory:(id)directory sandboxExtensions:(id)extensions completion:(id)completion
{
  completionCopy = completion;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __166__SFLocalSpeechRecognitionClient_createPhraseCountsArtifactWithIdentifier_rawPhraseCountsPath_customPronunciationsPath_writeToDirectory_sandboxExtensions_completion___block_invoke;
  v22[3] = &unk_1E797C1C8;
  v23 = completionCopy;
  v15 = completionCopy;
  extensionsCopy = extensions;
  directoryCopy = directory;
  pronunciationsPathCopy = pronunciationsPath;
  pathCopy = path;
  identifierCopy = identifier;
  v21 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v22];
  [v21 createPhraseCountsArtifactWithIdentifier:identifierCopy rawPhraseCountsPath:pathCopy customPronunciationsPath:pronunciationsPathCopy writeToDirectory:directoryCopy sandboxExtensions:extensionsCopy completion:v15];
}

void __166__SFLocalSpeechRecognitionClient_createPhraseCountsArtifactWithIdentifier_rawPhraseCountsPath_customPronunciationsPath_writeToDirectory_sandboxExtensions_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)trainAppLmFromNgramsSerializedData:(id)data customPronsData:(id)pronsData language:(id)language writeToDirectory:(id)directory sandboxExtension:(id)extension completion:(id)completion
{
  completionCopy = completion;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __139__SFLocalSpeechRecognitionClient_trainAppLmFromNgramsSerializedData_customPronsData_language_writeToDirectory_sandboxExtension_completion___block_invoke;
  v22[3] = &unk_1E797C1C8;
  v23 = completionCopy;
  v15 = completionCopy;
  extensionCopy = extension;
  directoryCopy = directory;
  languageCopy = language;
  pronsDataCopy = pronsData;
  dataCopy = data;
  v21 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v22];
  [v21 trainAppLmFromNgramsSerializedData:dataCopy customPronsData:pronsDataCopy language:languageCopy writeToDirectory:directoryCopy sandboxExtension:extensionCopy completion:v15];
}

void __139__SFLocalSpeechRecognitionClient_trainAppLmFromNgramsSerializedData_customPronsData_language_writeToDirectory_sandboxExtension_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)wakeUpWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SFLocalSpeechRecognitionClient_wakeUpWithCompletion___block_invoke;
  v7[3] = &unk_1E797C1C8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v7];
  [v6 wakeUpWithCompletion:v5];
}

void __55__SFLocalSpeechRecognitionClient_wakeUpWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)metricsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SFLocalSpeechRecognitionClient_metricsWithCompletion___block_invoke;
  v7[3] = &unk_1E797C1C8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v7];
  [v6 metricsWithCompletion:v5];
}

void __56__SFLocalSpeechRecognitionClient_metricsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)lmeThresholdWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SFLocalSpeechRecognitionClient_lmeThresholdWithCompletion___block_invoke;
  v7[3] = &unk_1E797C1C8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v7];
  [v6 lmeThresholdWithCompletion:v5];
}

void __61__SFLocalSpeechRecognitionClient_lmeThresholdWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, -1);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)deserializeNgramCountsData:(id)data completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__SFLocalSpeechRecognitionClient_deserializeNgramCountsData_completion___block_invoke;
  v10[3] = &unk_1E797C1C8;
  v11 = completionCopy;
  v7 = completionCopy;
  dataCopy = data;
  v9 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v10];
  [v9 deserializeNgramCountsData:dataCopy completion:v7];
}

void __72__SFLocalSpeechRecognitionClient_deserializeNgramCountsData_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)generateNgramCountsSerializeDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__SFLocalSpeechRecognitionClient_generateNgramCountsSerializeDataWithCompletion___block_invoke;
  v7[3] = &unk_1E797C1C8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v7];
  [v6 generateNgramCountsSerializeDataWithCompletion:v5];
}

void __81__SFLocalSpeechRecognitionClient_generateNgramCountsSerializeDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)trainFromPlainTextAndWriteToDirectory:(id)directory sandboxExtension:(id)extension completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__SFLocalSpeechRecognitionClient_trainFromPlainTextAndWriteToDirectory_sandboxExtension_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = completionCopy;
  v9 = completionCopy;
  extensionCopy = extension;
  directoryCopy = directory;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 trainFromPlainTextAndWriteToDirectory:directoryCopy sandboxExtension:extensionCopy completion:v9];
}

void __100__SFLocalSpeechRecognitionClient_trainFromPlainTextAndWriteToDirectory_sandboxExtension_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)oovWordsAndFrequenciesWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__SFLocalSpeechRecognitionClient_oovWordsAndFrequenciesWithCompletion___block_invoke;
  v7[3] = &unk_1E797C1C8;
  v8 = completionCopy;
  v5 = completionCopy;
  v6 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v7];
  [v6 oovWordsAndFrequenciesWithCompletion:v5];
}

void __71__SFLocalSpeechRecognitionClient_oovWordsAndFrequenciesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)addProns:(id)prons forWord:(id)word completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__SFLocalSpeechRecognitionClient_addProns_forWord_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = completionCopy;
  v9 = completionCopy;
  wordCopy = word;
  pronsCopy = prons;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 addProns:pronsCopy forWord:wordCopy completion:v9];
}

void __62__SFLocalSpeechRecognitionClient_addProns_forWord_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)addSentenceToNgramCounts:(id)counts completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__SFLocalSpeechRecognitionClient_addSentenceToNgramCounts_completion___block_invoke;
  v10[3] = &unk_1E797C1C8;
  v11 = completionCopy;
  v7 = completionCopy;
  countsCopy = counts;
  v9 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v10];
  [v9 addSentenceToNgramCounts:countsCopy completion:v7];
}

void __70__SFLocalSpeechRecognitionClient_addSentenceToNgramCounts_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)addSentenceToNgramCounts:(id)counts
{
  countsCopy = counts;
  v5 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:?];
  [v5 addSentenceToNgramCounts:countsCopy];
}

void __59__SFLocalSpeechRecognitionClient_addSentenceToNgramCounts___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v5 = 138412546;
    v6 = @"com.apple.speech.localspeechrecognition";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1AC5BC000, v3, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)initializeLmWithAssetPath:(id)path completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__SFLocalSpeechRecognitionClient_initializeLmWithAssetPath_completion___block_invoke;
  v10[3] = &unk_1E797C1C8;
  v11 = completionCopy;
  v7 = completionCopy;
  pathCopy = path;
  v9 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v10];
  [v9 initializeLmWithAssetPath:pathCopy completion:v7];
}

void __71__SFLocalSpeechRecognitionClient_initializeLmWithAssetPath_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)initializeLmWithLocale:(id)locale clientID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__SFLocalSpeechRecognitionClient_initializeLmWithLocale_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = completionCopy;
  v9 = completionCopy;
  dCopy = d;
  localeCopy = locale;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 initializeLmWithLocale:localeCopy clientID:dCopy completion:v9];
}

void __77__SFLocalSpeechRecognitionClient_initializeLmWithLocale_clientID_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_INFO, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setPurgeabilityForAssetWithConfig:(id)config purgeable:(BOOL)purgeable clientID:(id)d completion:(id)completion
{
  configCopy = config;
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__SFLocalSpeechRecognitionClient_setPurgeabilityForAssetWithConfig_purgeable_clientID_completion___block_invoke;
  block[3] = &unk_1E797C2D8;
  block[4] = self;
  v18 = configCopy;
  purgeableCopy = purgeable;
  v19 = dCopy;
  v20 = completionCopy;
  v14 = dCopy;
  v15 = configCopy;
  v16 = completionCopy;
  dispatch_async(queue, block);
}

void __98__SFLocalSpeechRecognitionClient_setPurgeabilityForAssetWithConfig_purgeable_clientID_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __98__SFLocalSpeechRecognitionClient_setPurgeabilityForAssetWithConfig_purgeable_clientID_completion___block_invoke_2;
  v4[3] = &unk_1E797C1C8;
  v5 = *(a1 + 56);
  v3 = [(SFLocalSpeechRecognitionClient *)v2 _asynchronousServiceProxyWithErrorHandler:v4];
  [v3 setPurgeabilityForAssetWithConfig:*(a1 + 40) purgeable:*(a1 + 64) clientID:*(a1 + 48) completion:*(a1 + 56)];
}

void __98__SFLocalSpeechRecognitionClient_setPurgeabilityForAssetWithConfig_purgeable_clientID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_asynchronousServiceProxyWithErrorHandler:(uint64_t)handler
{
  v3 = a2;
  if (handler)
  {
    dispatch_assert_queue_V2(*(handler + 8));
    v4 = *(handler + 16);
    if (v4)
    {
      handler = [v4 remoteObjectProxyWithErrorHandler:v3];
    }

    else
    {
      v3[2](v3, *(handler + 24));
      handler = 0;
    }
  }

  return handler;
}

- (void)subscriptionsForClientId:(id)id completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__SFLocalSpeechRecognitionClient_subscriptionsForClientId_completion___block_invoke;
  v10[3] = &unk_1E797C1C8;
  v11 = completionCopy;
  v7 = completionCopy;
  idCopy = id;
  v9 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v10];
  [v9 subscriptionsForClientId:idCopy completion:v7];
}

void __70__SFLocalSpeechRecognitionClient_subscriptionsForClientId_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, MEMORY[0x1E695E0F0]);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeFromAssetWithConfig:(id)config clientID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__SFLocalSpeechRecognitionClient_unsubscribeFromAssetWithConfig_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = completionCopy;
  v9 = completionCopy;
  dCopy = d;
  configCopy = config;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 unsubscribeFromAssetWithConfig:configCopy clientID:dCopy completion:v9];
}

void __85__SFLocalSpeechRecognitionClient_unsubscribeFromAssetWithConfig_clientID_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribeFromAssetWithConfig:(id)config clientID:(id)d asyncCompletion:(id)completion
{
  configCopy = config;
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__SFLocalSpeechRecognitionClient_unsubscribeFromAssetWithConfig_clientID_asyncCompletion___block_invoke;
  v15[3] = &unk_1E797C218;
  v15[4] = self;
  v16 = configCopy;
  v17 = dCopy;
  v18 = completionCopy;
  v12 = dCopy;
  v13 = configCopy;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

void __90__SFLocalSpeechRecognitionClient_unsubscribeFromAssetWithConfig_clientID_asyncCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __90__SFLocalSpeechRecognitionClient_unsubscribeFromAssetWithConfig_clientID_asyncCompletion___block_invoke_2;
  v4[3] = &unk_1E797C1C8;
  v5 = *(a1 + 56);
  v3 = [(SFLocalSpeechRecognitionClient *)v2 _asynchronousServiceProxyWithErrorHandler:v4];
  [v3 unsubscribeFromAssetWithConfig:*(a1 + 40) clientID:*(a1 + 48) completion:*(a1 + 56)];
}

void __90__SFLocalSpeechRecognitionClient_unsubscribeFromAssetWithConfig_clientID_asyncCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)configParametersForVoicemailWithLanguage:(id)language clientID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__SFLocalSpeechRecognitionClient_configParametersForVoicemailWithLanguage_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = completionCopy;
  v9 = completionCopy;
  dCopy = d;
  languageCopy = language;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 configParametersForVoicemailWithLanguage:languageCopy clientID:dCopy completion:v9];
}

void __95__SFLocalSpeechRecognitionClient_configParametersForVoicemailWithLanguage_clientID_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchAssetsForLanguage:(id)language clientID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__SFLocalSpeechRecognitionClient_fetchAssetsForLanguage_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = completionCopy;
  v9 = completionCopy;
  dCopy = d;
  languageCopy = language;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 fetchAssetsForLanguage:languageCopy clientID:dCopy completion:v9];
}

void __77__SFLocalSpeechRecognitionClient_fetchAssetsForLanguage_clientID_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)downloadAssetsForConfig:(id)config clientID:(id)d expiration:(id)expiration detailedProgress:(id)progress completionHandler:(id)handler
{
  configCopy = config;
  dCopy = d;
  expirationCopy = expiration;
  progressCopy = progress;
  handlerCopy = handler;
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __113__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_detailedProgress_completionHandler___block_invoke;
  v23[3] = &unk_1E797C2B0;
  v27 = progressCopy;
  v28 = handlerCopy;
  v23[4] = self;
  v24 = configCopy;
  v25 = dCopy;
  v26 = expirationCopy;
  v18 = expirationCopy;
  v19 = dCopy;
  v20 = configCopy;
  v21 = handlerCopy;
  v22 = progressCopy;
  dispatch_async(queue, v23);
}

void __113__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_detailedProgress_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 64) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [*(a1 + 72) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __113__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_detailedProgress_completionHandler___block_invoke_2;
  v13 = &unk_1E797CD58;
  v14 = v8;
  v15 = *(a1 + 72);
  v9 = [(SFLocalSpeechRecognitionClient *)v8 _asynchronousServiceProxyWithErrorHandler:?];
  [v9 downloadAssetsForConfig:*(a1 + 40) clientID:*(a1 + 48) expiration:*(a1 + 56) detailedProgress:{1, v10, v11, v12, v13, v14}];
}

void __113__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_detailedProgress_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v14 = @"com.apple.speech.localspeechrecognition";
    v15 = 2112;
    v16 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __113__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_detailedProgress_completionHandler___block_invoke_57;
  block[3] = &unk_1E797C528;
  block[4] = v6;
  v11 = v3;
  v12 = v5;
  v8 = v3;
  dispatch_async(v7, block);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __113__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_detailedProgress_completionHandler___block_invoke_57(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = a1[4];
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  result = a1[6];
  if (result)
  {
    v7 = a1[5];
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)downloadAssetsForConfig:(id)config clientID:(id)d expiration:(id)expiration progress:(id)progress completionHandler:(id)handler
{
  configCopy = config;
  dCopy = d;
  expirationCopy = expiration;
  progressCopy = progress;
  handlerCopy = handler;
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __105__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_progress_completionHandler___block_invoke;
  v23[3] = &unk_1E797C2B0;
  v27 = progressCopy;
  v28 = handlerCopy;
  v23[4] = self;
  v24 = configCopy;
  v25 = dCopy;
  v26 = expirationCopy;
  v18 = expirationCopy;
  v19 = dCopy;
  v20 = configCopy;
  v21 = handlerCopy;
  v22 = progressCopy;
  dispatch_async(queue, v23);
}

void __105__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_progress_completionHandler___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_progress_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E797C288;
  v13 = *(a1 + 64);
  v2 = _Block_copy(aBlock);
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = [*(a1 + 72) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __105__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_progress_completionHandler___block_invoke_3;
  v10[3] = &unk_1E797CD58;
  v10[4] = v8;
  v11 = *(a1 + 72);
  v9 = [(SFLocalSpeechRecognitionClient *)v8 _asynchronousServiceProxyWithErrorHandler:v10];
  [v9 downloadAssetsForConfig:*(a1 + 40) clientID:*(a1 + 48) expiration:*(a1 + 56) detailedProgress:0];
}

uint64_t __105__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_progress_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __105__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_progress_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v14 = @"com.apple.speech.localspeechrecognition";
    v15 = 2112;
    v16 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_progress_completionHandler___block_invoke_56;
  block[3] = &unk_1E797C528;
  block[4] = v6;
  v11 = v3;
  v12 = v5;
  v8 = v3;
  dispatch_async(v7, block);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __105__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_progress_completionHandler___block_invoke_56(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = a1[4];
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  result = a1[6];
  if (result)
  {
    v7 = a1[5];
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

- (void)initializeWithSandboxExtensions:(id)extensions
{
  extensionsCopy = extensions;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__SFLocalSpeechRecognitionClient_initializeWithSandboxExtensions___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = extensionsCopy;
  v6 = extensionsCopy;
  dispatch_async(queue, v7);
}

void __66__SFLocalSpeechRecognitionClient_initializeWithSandboxExtensions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__SFLocalSpeechRecognitionClient_initializeWithSandboxExtensions___block_invoke_2;
  v4[3] = &unk_1E797C1A0;
  v4[4] = v2;
  v3 = [(SFLocalSpeechRecognitionClient *)v2 _asynchronousServiceProxyWithErrorHandler:v4];
  [v3 initializeWithSandboxExtensions:*(a1 + 40)];
}

void __66__SFLocalSpeechRecognitionClient_initializeWithSandboxExtensions___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained localSpeechRecognitionClient:*(a1 + 32) speechRecognitionDidFail:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)installedLanguagesForAssetType:(unint64_t)type synchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  completionCopy = completion;
  v9 = completionCopy;
  if (synchronousCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__SFLocalSpeechRecognitionClient_installedLanguagesForAssetType_synchronous_completion___block_invoke;
    v17[3] = &unk_1E797C1C8;
    v10 = completionCopy;
    v18 = v10;
    v11 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v17];
    [v11 installedLanguagesForAssetType:type completion:v10];

    v12 = v18;
  }

  else
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__SFLocalSpeechRecognitionClient_installedLanguagesForAssetType_synchronous_completion___block_invoke_52;
    v14[3] = &unk_1E797C240;
    v14[4] = self;
    v15 = completionCopy;
    typeCopy = type;
    dispatch_async(queue, v14);
    v12 = v15;
  }
}

void __88__SFLocalSpeechRecognitionClient_installedLanguagesForAssetType_synchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = @"com.apple.speech.localspeechrecognition";
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] set];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __88__SFLocalSpeechRecognitionClient_installedLanguagesForAssetType_synchronous_completion___block_invoke_52(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__SFLocalSpeechRecognitionClient_installedLanguagesForAssetType_synchronous_completion___block_invoke_2;
  v4[3] = &unk_1E797C1C8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [(SFLocalSpeechRecognitionClient *)v2 _asynchronousServiceProxyWithErrorHandler:v4];
  [v3 installedLanguagesForAssetType:*(a1 + 48) completion:*(a1 + 40)];
}

void __88__SFLocalSpeechRecognitionClient_installedLanguagesForAssetType_synchronous_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = @"com.apple.speech.localspeechrecognition";
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] set];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)supportedLanguagesForAssetType:(unint64_t)type synchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  completionCopy = completion;
  v9 = completionCopy;
  if (synchronousCopy)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__SFLocalSpeechRecognitionClient_supportedLanguagesForAssetType_synchronous_completion___block_invoke;
    v17[3] = &unk_1E797C1C8;
    v10 = completionCopy;
    v18 = v10;
    v11 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v17];
    [v11 supportedLanguagesForAssetType:type completion:v10];

    v12 = v18;
  }

  else
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__SFLocalSpeechRecognitionClient_supportedLanguagesForAssetType_synchronous_completion___block_invoke_50;
    v14[3] = &unk_1E797C240;
    v14[4] = self;
    v15 = completionCopy;
    typeCopy = type;
    dispatch_async(queue, v14);
    v12 = v15;
  }
}

void __88__SFLocalSpeechRecognitionClient_supportedLanguagesForAssetType_synchronous_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = @"com.apple.speech.localspeechrecognition";
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [MEMORY[0x1E695DEC8] array];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __88__SFLocalSpeechRecognitionClient_supportedLanguagesForAssetType_synchronous_completion___block_invoke_50(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __88__SFLocalSpeechRecognitionClient_supportedLanguagesForAssetType_synchronous_completion___block_invoke_2;
  v4[3] = &unk_1E797C1C8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v3 = [(SFLocalSpeechRecognitionClient *)v2 _asynchronousServiceProxyWithErrorHandler:v4];
  [v3 supportedLanguagesForAssetType:*(a1 + 48) completion:*(a1 + 40)];
}

void __88__SFLocalSpeechRecognitionClient_supportedLanguagesForAssetType_synchronous_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412546;
    v9 = @"com.apple.speech.localspeechrecognition";
    v10 = 2112;
    v11 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v8, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [MEMORY[0x1E695DEC8] array];
    (*(v5 + 16))(v5, v6);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)versionOfAssetWithConfig:(id)config clientID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__SFLocalSpeechRecognitionClient_versionOfAssetWithConfig_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = completionCopy;
  v9 = completionCopy;
  dCopy = d;
  configCopy = config;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 versionOfAssetWithConfig:configCopy clientID:dCopy completion:v9];
}

void __79__SFLocalSpeechRecognitionClient_versionOfAssetWithConfig_clientID_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)installationStateForAssetConfig:(id)config clientID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__SFLocalSpeechRecognitionClient_installationStateForAssetConfig_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = completionCopy;
  v9 = completionCopy;
  dCopy = d;
  configCopy = config;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 installationStateForAssetConfig:configCopy clientID:dCopy completion:v9];
}

void __86__SFLocalSpeechRecognitionClient_installationStateForAssetConfig_clientID_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pathToAssetWithConfig:(id)config clientID:(id)d asyncCompletion:(id)completion
{
  configCopy = config;
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__SFLocalSpeechRecognitionClient_pathToAssetWithConfig_clientID_asyncCompletion___block_invoke;
  v15[3] = &unk_1E797C218;
  v15[4] = self;
  v16 = configCopy;
  v17 = dCopy;
  v18 = completionCopy;
  v12 = dCopy;
  v13 = configCopy;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

void __81__SFLocalSpeechRecognitionClient_pathToAssetWithConfig_clientID_asyncCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __81__SFLocalSpeechRecognitionClient_pathToAssetWithConfig_clientID_asyncCompletion___block_invoke_2;
  v4[3] = &unk_1E797C1C8;
  v5 = *(a1 + 56);
  v3 = [(SFLocalSpeechRecognitionClient *)v2 _asynchronousServiceProxyWithErrorHandler:v4];
  [v3 pathToAssetWithConfig:*(a1 + 40) clientID:*(a1 + 48) completion:*(a1 + 56)];
}

void __81__SFLocalSpeechRecognitionClient_pathToAssetWithConfig_clientID_asyncCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)pathToAssetWithConfig:(id)config clientID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__SFLocalSpeechRecognitionClient_pathToAssetWithConfig_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = completionCopy;
  v9 = completionCopy;
  dCopy = d;
  configCopy = config;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 pathToAssetWithConfig:configCopy clientID:dCopy completion:v9];
}

void __76__SFLocalSpeechRecognitionClient_pathToAssetWithConfig_clientID_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)preloadRecognizerForLanguage:(id)language task:(id)task clientID:(id)d recognitionOverrides:(id)overrides modelOverrideURL:(id)l completion:(id)completion
{
  languageCopy = language;
  taskCopy = task;
  dCopy = d;
  overridesCopy = overrides;
  lCopy = l;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __126__SFLocalSpeechRecognitionClient_preloadRecognizerForLanguage_task_clientID_recognitionOverrides_modelOverrideURL_completion___block_invoke;
  block[3] = &unk_1E797C1F0;
  v32 = lCopy;
  v33 = completionCopy;
  block[4] = self;
  v28 = languageCopy;
  v29 = taskCopy;
  v30 = dCopy;
  v31 = overridesCopy;
  v21 = lCopy;
  v22 = overridesCopy;
  v23 = dCopy;
  v24 = taskCopy;
  v25 = languageCopy;
  v26 = completionCopy;
  dispatch_async(queue, block);
}

void __126__SFLocalSpeechRecognitionClient_preloadRecognizerForLanguage_task_clientID_recognitionOverrides_modelOverrideURL_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __126__SFLocalSpeechRecognitionClient_preloadRecognizerForLanguage_task_clientID_recognitionOverrides_modelOverrideURL_completion___block_invoke_2;
  v4[3] = &unk_1E797C1C8;
  v5 = *(a1 + 80);
  v3 = [(SFLocalSpeechRecognitionClient *)v2 _asynchronousServiceProxyWithErrorHandler:v4];
  [v3 preloadRecognizerForLanguage:*(a1 + 40) task:*(a1 + 48) clientID:*(a1 + 56) recognitionOverrides:*(a1 + 64) modelOverrideURL:*(a1 + 72) completion:*(a1 + 80)];
}

void __126__SFLocalSpeechRecognitionClient_preloadRecognizerForLanguage_task_clientID_recognitionOverrides_modelOverrideURL_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)cancelSpeech
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFLocalSpeechRecognitionClient_cancelSpeech__block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__SFLocalSpeechRecognitionClient_cancelSpeech__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__SFLocalSpeechRecognitionClient_cancelSpeech__block_invoke_2;
  v3[3] = &unk_1E797C1A0;
  v3[4] = v1;
  v2 = [(SFLocalSpeechRecognitionClient *)v1 _asynchronousServiceProxyWithErrorHandler:v3];
  [v2 cancelSpeech];
}

void __46__SFLocalSpeechRecognitionClient_cancelSpeech__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained localSpeechRecognitionClient:*(a1 + 32) speechRecognitionDidFail:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)stopSpeech
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFLocalSpeechRecognitionClient_stopSpeech__block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__SFLocalSpeechRecognitionClient_stopSpeech__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__SFLocalSpeechRecognitionClient_stopSpeech__block_invoke_2;
  v3[3] = &unk_1E797C1A0;
  v3[4] = v1;
  v2 = [(SFLocalSpeechRecognitionClient *)v1 _asynchronousServiceProxyWithErrorHandler:v3];
  [v2 stopSpeech];
}

void __44__SFLocalSpeechRecognitionClient_stopSpeech__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained localSpeechRecognitionClient:*(a1 + 32) speechRecordingDidFail:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)addAudioPacket:(id)packet
{
  packetCopy = packet;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SFLocalSpeechRecognitionClient_addAudioPacket___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = packetCopy;
  v6 = packetCopy;
  dispatch_async(queue, v7);
}

void __49__SFLocalSpeechRecognitionClient_addAudioPacket___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SFLocalSpeechRecognitionClient_addAudioPacket___block_invoke_2;
  v4[3] = &unk_1E797C1A0;
  v4[4] = v2;
  v3 = [(SFLocalSpeechRecognitionClient *)v2 _asynchronousServiceProxyWithErrorHandler:v4];
  [v3 addAudioPacket:*(a1 + 40)];
}

void __49__SFLocalSpeechRecognitionClient_addAudioPacket___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained localSpeechRecognitionClient:*(a1 + 32) speechRecordingDidFail:v3];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)startRecordedAudioDictationWithParameters:(id)parameters
{
  parametersCopy = parameters;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__SFLocalSpeechRecognitionClient_startRecordedAudioDictationWithParameters___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = parametersCopy;
  v6 = parametersCopy;
  dispatch_async(queue, v7);
}

void __76__SFLocalSpeechRecognitionClient_startRecordedAudioDictationWithParameters___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1)
  {
    v3 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1AC5BC000, v3, OS_LOG_TYPE_ERROR, "Local speech recognizer restarted while already recognizing", buf, 2u);
      v2 = *(a1 + 32);
    }

    WeakRetained = objc_loadWeakRetained((v2 + 56));
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698D280] code:1100 userInfo:0];
    [WeakRetained localSpeechRecognitionClient:v5 speechRecognitionDidFail:v6];
  }

  else
  {
    *(v2 + 48) = 1;
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__SFLocalSpeechRecognitionClient_startRecordedAudioDictationWithParameters___block_invoke_47;
    v8[3] = &unk_1E797C1A0;
    v8[4] = v7;
    WeakRetained = [(SFLocalSpeechRecognitionClient *)v7 _asynchronousServiceProxyWithErrorHandler:v8];
    [WeakRetained startRecordedAudioDictationWithParameters:*(a1 + 40)];
  }
}

void __76__SFLocalSpeechRecognitionClient_startRecordedAudioDictationWithParameters___block_invoke_47(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412546;
    v8 = @"com.apple.speech.localspeechrecognition";
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v7, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 56));
  [WeakRetained localSpeechRecognitionClient:*(a1 + 32) speechRecognitionDidFail:v3];

  v6 = *MEMORY[0x1E69E9840];
}

void __38__SFLocalSpeechRecognitionClient_init__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = @"com.apple.speech.localspeechrecognition";
    _os_log_impl(&dword_1AC5BC000, v2, OS_LOG_TYPE_INFO, "%@ Interrupted", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__SFLocalSpeechRecognitionClient_init__block_invoke_41;
    block[3] = &unk_1E797CAB8;
    v8 = WeakRetained;
    dispatch_async(v5, block);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __38__SFLocalSpeechRecognitionClient_init__block_invoke_41(uint64_t a1)
{
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698D280] code:1107 userInfo:0];
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  v7 = *(a1 + 32);
  if (*(v7 + 48) == 1)
  {
    WeakRetained = objc_loadWeakRetained((v7 + 56));
    [WeakRetained localSpeechRecognitionClient:0 speechRecognitionDidFail:*(*(a1 + 32) + 24)];

    v7 = *(a1 + 32);
  }

  v9 = *(v7 + 24);

  return [v7 localSpeechRecognitionDidFinishDownloadingAssets:0 error:v9];
}

- (SFLocalSpeechRecognitionClient)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(SFLocalSpeechRecognitionClient *)self init];
  objc_storeWeak(&v5->_delegate, delegateCopy);

  return v5;
}

+ (void)cleanupCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  v4 = [(SFLocalSpeechRecognitionClient *)v5 _serviceProxyWithErrorHandler:?];
  [v4 cleanupCacheWithCompletion:completionCopy];

  [(SFLocalSpeechRecognitionClient *)v5 invalidate];
}

void __61__SFLocalSpeechRecognitionClient_cleanupCacheWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = @"com.apple.speech.localspeechrecognition";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1AC5BC000, v3, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)logCoreAnalyticsEvent:(id)event withAnalytics:(id)analytics
{
  eventCopy = event;
  analyticsCopy = analytics;
  v7 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  queue = v7->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__SFLocalSpeechRecognitionClient_logCoreAnalyticsEvent_withAnalytics___block_invoke;
  block[3] = &unk_1E797C460;
  v13 = v7;
  v14 = eventCopy;
  v15 = analyticsCopy;
  v9 = analyticsCopy;
  v10 = eventCopy;
  v11 = v7;
  dispatch_async(queue, block);
}

void __70__SFLocalSpeechRecognitionClient_logCoreAnalyticsEvent_withAnalytics___block_invoke(uint64_t *a1)
{
  v2 = [(SFLocalSpeechRecognitionClient *)a1[4] _asynchronousServiceProxyWithErrorHandler:?];
  [v2 logCoreAnalyticsEvent:a1[5] withAnalytics:a1[6]];
}

void __70__SFLocalSpeechRecognitionClient_logCoreAnalyticsEvent_withAnalytics___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = @"com.apple.speech.localspeechrecognition";
    v7 = 2112;
    v8 = v2;
    _os_log_error_impl(&dword_1AC5BC000, v3, OS_LOG_TYPE_ERROR, "Received an error while accessing %@ service: %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end