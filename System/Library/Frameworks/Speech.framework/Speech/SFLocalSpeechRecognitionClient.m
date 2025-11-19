@interface SFLocalSpeechRecognitionClient
+ (void)cleanupCacheWithCompletion:(id)a3;
+ (void)initialize;
+ (void)logCoreAnalyticsEvent:(id)a3 withAnalytics:(id)a4;
- (SFLocalSpeechRecognitionClient)init;
- (SFLocalSpeechRecognitionClient)initWithDelegate:(id)a3;
- (SFLocalSpeechRecognitionDelegate)delegate;
- (id)_asynchronousServiceProxyWithErrorHandler:(uint64_t)a1;
- (void)_serviceProxyWithErrorHandler:(void *)a1;
- (void)addAudioPacket:(id)a3;
- (void)addProns:(id)a3 forWord:(id)a4 completion:(id)a5;
- (void)addSentenceToNgramCounts:(id)a3;
- (void)addSentenceToNgramCounts:(id)a3 completion:(id)a4;
- (void)appLmNeedsRebuild:(id)a3 language:(id)a4 sandboxExtensions:(id)a5 completion:(id)a6;
- (void)cancelSpeech;
- (void)configParametersForVoicemailWithLanguage:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)createNgramCountsArtifactFromPhraseCountArtifact:(id)a3 writeToDirectory:(id)a4 sandboxExtensions:(id)a5 completion:(id)a6;
- (void)createPhraseCountsArtifactWithIdentifier:(id)a3 rawPhraseCountsPath:(id)a4 customPronunciationsPath:(id)a5 writeToDirectory:(id)a6 sandboxExtensions:(id)a7 completion:(id)a8;
- (void)dealloc;
- (void)deserializeNgramCountsData:(id)a3 completion:(id)a4;
- (void)downloadAssetsForConfig:(id)a3 clientID:(id)a4 expiration:(id)a5 detailedProgress:(id)a6 completionHandler:(id)a7;
- (void)downloadAssetsForConfig:(id)a3 clientID:(id)a4 expiration:(id)a5 progress:(id)a6 completionHandler:(id)a7;
- (void)fetchAssetsForLanguage:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)generateNgramCountsSerializeDataWithCompletion:(id)a3;
- (void)initializeLmWithAssetPath:(id)a3 completion:(id)a4;
- (void)initializeLmWithLocale:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)initializeWithSandboxExtensions:(id)a3;
- (void)installationStateForAssetConfig:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)installedLanguagesForAssetType:(unint64_t)a3 synchronous:(BOOL)a4 completion:(id)a5;
- (void)invalidate;
- (void)lmeThresholdWithCompletion:(id)a3;
- (void)localSpeechRecognitionDidDownloadAssetsWithProgress:(unint64_t)a3 isStalled:(BOOL)a4;
- (void)localSpeechRecognitionDidFail:(id)a3;
- (void)localSpeechRecognitionDidFinishDownloadingAssets:(id)a3 error:(id)a4;
- (void)localSpeechRecognitionDidFinishRecognition:(id)a3;
- (void)localSpeechRecognitionDidProcessAudioDuration:(double)a3;
- (void)localSpeechRecognitionDidRecognizePartialResult:(id)a3 rawPartialResult:(id)a4;
- (void)localSpeechRecognitionDidSucceed;
- (void)metricsWithCompletion:(id)a3;
- (void)oovWordsAndFrequenciesWithCompletion:(id)a3;
- (void)pathToAssetWithConfig:(id)a3 clientID:(id)a4 asyncCompletion:(id)a5;
- (void)pathToAssetWithConfig:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)preloadRecognizerForLanguage:(id)a3 task:(id)a4 clientID:(id)a5 recognitionOverrides:(id)a6 modelOverrideURL:(id)a7 completion:(id)a8;
- (void)setPurgeabilityForAssetWithConfig:(id)a3 purgeable:(BOOL)a4 clientID:(id)a5 completion:(id)a6;
- (void)startRecordedAudioDictationWithParameters:(id)a3;
- (void)stopSpeech;
- (void)subscriptionsForClientId:(id)a3 completion:(id)a4;
- (void)supportedLanguagesForAssetType:(unint64_t)a3 synchronous:(BOOL)a4 completion:(id)a5;
- (void)synchronousComputeEuclidEmbeddingsForSources:(id)a3 completion:(id)a4;
- (void)synchronousCreateEuclidInstanceForLanguageStr:(id)a3 clientID:(id)a4 inputFormat:(int64_t)a5 loadingOption:(int64_t)a6 completion:(id)a7;
- (void)synchronousEuclidConfigPathForLanguageStr:(id)a3 completion:(id)a4;
- (void)synchronousEuclidNearestNeighborsForSource:(id)a3 numberOfNeighbors:(id)a4 completion:(id)a5;
- (void)trainAppLmFromNgramCountsArtifact:(id)a3 forApp:(id)a4 language:(id)a5 writeToDirectory:(id)a6 sandboxExtensions:(id)a7 completion:(id)a8;
- (void)trainAppLmFromNgramsSerializedData:(id)a3 customPronsData:(id)a4 language:(id)a5 writeToDirectory:(id)a6 sandboxExtension:(id)a7 completion:(id)a8;
- (void)trainFromPlainTextAndWriteToDirectory:(id)a3 sandboxExtension:(id)a4 completion:(id)a5;
- (void)unsubscribeFromAssetWithConfig:(id)a3 clientID:(id)a4 asyncCompletion:(id)a5;
- (void)unsubscribeFromAssetWithConfig:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)versionOfAssetWithConfig:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)wakeUpWithCompletion:(id)a3;
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
  if (objc_opt_class() == a1)
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

- (void)localSpeechRecognitionDidFinishDownloadingAssets:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__SFLocalSpeechRecognitionClient_localSpeechRecognitionDidFinishDownloadingAssets_error___block_invoke;
  block[3] = &unk_1E797C460;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)localSpeechRecognitionDidDownloadAssetsWithProgress:(unint64_t)a3 isStalled:(BOOL)a4
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__SFLocalSpeechRecognitionClient_localSpeechRecognitionDidDownloadAssetsWithProgress_isStalled___block_invoke;
  block[3] = &unk_1E797C300;
  block[4] = self;
  block[5] = a3;
  v6 = a4;
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

- (void)localSpeechRecognitionDidRecognizePartialResult:(id)a3 rawPartialResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognitionClient:self didRecognizePartialResult:v7 rawPartialResult:v6];
}

- (void)localSpeechRecognitionDidProcessAudioDuration:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognitionClient:self didProcessAudioDuration:a3];
}

- (void)localSpeechRecognitionDidFinishRecognition:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognitionClient:self didFinishRecognition:v4];
}

- (void)localSpeechRecognitionDidFail:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSpeechRecognitionClient:self speechRecognitionDidFail:v4];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SFLocalSpeechRecognitionClient_localSpeechRecognitionDidFail___block_invoke;
  block[3] = &unk_1E797CAB8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)synchronousEuclidConfigPathForLanguageStr:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__SFLocalSpeechRecognitionClient_synchronousEuclidConfigPathForLanguageStr_completion___block_invoke;
  v10[3] = &unk_1E797C1C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v10];
  [v9 synchronousEuclidConfigPathForLanguageStr:v8 completion:v7];
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

- (void)_serviceProxyWithErrorHandler:(void *)a1
{
  v3 = a2;
  if (a1)
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
    v4 = a1[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__SFLocalSpeechRecognitionClient__serviceProxyWithErrorHandler___block_invoke;
    block[3] = &unk_1E797C178;
    block[4] = a1;
    block[5] = &v14;
    block[6] = &v8;
    dispatch_sync(v4, block);
    v5 = v15[5];
    if (v5)
    {
      a1 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v3];
    }

    else
    {
      v3[2](v3, v9[5]);
      a1 = 0;
    }

    _Block_object_dispose(&v8, 8);

    _Block_object_dispose(&v14, 8);
  }

  return a1;
}

void __64__SFLocalSpeechRecognitionClient__serviceProxyWithErrorHandler___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 16));
  v2 = *(a1[4] + 24);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (void)synchronousEuclidNearestNeighborsForSource:(id)a3 numberOfNeighbors:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __106__SFLocalSpeechRecognitionClient_synchronousEuclidNearestNeighborsForSource_numberOfNeighbors_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 synchronousEuclidNearestNeighborsForSource:v11 numberOfNeighbors:v10 completion:v9];
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

- (void)synchronousComputeEuclidEmbeddingsForSources:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __90__SFLocalSpeechRecognitionClient_synchronousComputeEuclidEmbeddingsForSources_completion___block_invoke;
  v10[3] = &unk_1E797C1C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v10];
  [v9 synchronousComputeEuclidEmbeddingsForSources:v8 completion:v7];
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

- (void)synchronousCreateEuclidInstanceForLanguageStr:(id)a3 clientID:(id)a4 inputFormat:(int64_t)a5 loadingOption:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __126__SFLocalSpeechRecognitionClient_synchronousCreateEuclidInstanceForLanguageStr_clientID_inputFormat_loadingOption_completion___block_invoke;
  v17[3] = &unk_1E797C1C8;
  v18 = v12;
  v13 = v12;
  v14 = a4;
  v15 = a3;
  v16 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v17];
  [v16 synchronousCreateEuclidInstanceForLanguageStr:v15 clientID:v14 inputFormat:a5 loadingOption:a6 completion:v13];
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

- (void)appLmNeedsRebuild:(id)a3 language:(id)a4 sandboxExtensions:(id)a5 completion:(id)a6
{
  v10 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__SFLocalSpeechRecognitionClient_appLmNeedsRebuild_language_sandboxExtensions_completion___block_invoke;
  v16[3] = &unk_1E797C1C8;
  v17 = v10;
  v11 = v10;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v16];
  [v15 appLmNeedsRebuild:v14 language:v13 sandboxExtensions:v12 completion:v11];
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

- (void)trainAppLmFromNgramCountsArtifact:(id)a3 forApp:(id)a4 language:(id)a5 writeToDirectory:(id)a6 sandboxExtensions:(id)a7 completion:(id)a8
{
  v14 = a8;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __130__SFLocalSpeechRecognitionClient_trainAppLmFromNgramCountsArtifact_forApp_language_writeToDirectory_sandboxExtensions_completion___block_invoke;
  v22[3] = &unk_1E797C1C8;
  v23 = v14;
  v15 = v14;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v22];
  [v21 trainAppLmFromNgramCountsArtifact:v20 forApp:v19 language:v18 writeToDirectory:v17 sandboxExtensions:v16 completion:v15];
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

- (void)createNgramCountsArtifactFromPhraseCountArtifact:(id)a3 writeToDirectory:(id)a4 sandboxExtensions:(id)a5 completion:(id)a6
{
  v10 = a6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __129__SFLocalSpeechRecognitionClient_createNgramCountsArtifactFromPhraseCountArtifact_writeToDirectory_sandboxExtensions_completion___block_invoke;
  v16[3] = &unk_1E797C1C8;
  v17 = v10;
  v11 = v10;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v16];
  [v15 createNgramCountsArtifactFromPhraseCountArtifact:v14 writeToDirectory:v13 sandboxExtensions:v12 completion:v11];
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

- (void)createPhraseCountsArtifactWithIdentifier:(id)a3 rawPhraseCountsPath:(id)a4 customPronunciationsPath:(id)a5 writeToDirectory:(id)a6 sandboxExtensions:(id)a7 completion:(id)a8
{
  v14 = a8;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __166__SFLocalSpeechRecognitionClient_createPhraseCountsArtifactWithIdentifier_rawPhraseCountsPath_customPronunciationsPath_writeToDirectory_sandboxExtensions_completion___block_invoke;
  v22[3] = &unk_1E797C1C8;
  v23 = v14;
  v15 = v14;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v22];
  [v21 createPhraseCountsArtifactWithIdentifier:v20 rawPhraseCountsPath:v19 customPronunciationsPath:v18 writeToDirectory:v17 sandboxExtensions:v16 completion:v15];
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

- (void)trainAppLmFromNgramsSerializedData:(id)a3 customPronsData:(id)a4 language:(id)a5 writeToDirectory:(id)a6 sandboxExtension:(id)a7 completion:(id)a8
{
  v14 = a8;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __139__SFLocalSpeechRecognitionClient_trainAppLmFromNgramsSerializedData_customPronsData_language_writeToDirectory_sandboxExtension_completion___block_invoke;
  v22[3] = &unk_1E797C1C8;
  v23 = v14;
  v15 = v14;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v22];
  [v21 trainAppLmFromNgramsSerializedData:v20 customPronsData:v19 language:v18 writeToDirectory:v17 sandboxExtension:v16 completion:v15];
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

- (void)wakeUpWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SFLocalSpeechRecognitionClient_wakeUpWithCompletion___block_invoke;
  v7[3] = &unk_1E797C1C8;
  v8 = v4;
  v5 = v4;
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

- (void)metricsWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SFLocalSpeechRecognitionClient_metricsWithCompletion___block_invoke;
  v7[3] = &unk_1E797C1C8;
  v8 = v4;
  v5 = v4;
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

- (void)lmeThresholdWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__SFLocalSpeechRecognitionClient_lmeThresholdWithCompletion___block_invoke;
  v7[3] = &unk_1E797C1C8;
  v8 = v4;
  v5 = v4;
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

- (void)deserializeNgramCountsData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__SFLocalSpeechRecognitionClient_deserializeNgramCountsData_completion___block_invoke;
  v10[3] = &unk_1E797C1C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v10];
  [v9 deserializeNgramCountsData:v8 completion:v7];
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

- (void)generateNgramCountsSerializeDataWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__SFLocalSpeechRecognitionClient_generateNgramCountsSerializeDataWithCompletion___block_invoke;
  v7[3] = &unk_1E797C1C8;
  v8 = v4;
  v5 = v4;
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

- (void)trainFromPlainTextAndWriteToDirectory:(id)a3 sandboxExtension:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __100__SFLocalSpeechRecognitionClient_trainFromPlainTextAndWriteToDirectory_sandboxExtension_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 trainFromPlainTextAndWriteToDirectory:v11 sandboxExtension:v10 completion:v9];
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

- (void)oovWordsAndFrequenciesWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__SFLocalSpeechRecognitionClient_oovWordsAndFrequenciesWithCompletion___block_invoke;
  v7[3] = &unk_1E797C1C8;
  v8 = v4;
  v5 = v4;
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

- (void)addProns:(id)a3 forWord:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__SFLocalSpeechRecognitionClient_addProns_forWord_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 addProns:v11 forWord:v10 completion:v9];
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

- (void)addSentenceToNgramCounts:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__SFLocalSpeechRecognitionClient_addSentenceToNgramCounts_completion___block_invoke;
  v10[3] = &unk_1E797C1C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v10];
  [v9 addSentenceToNgramCounts:v8 completion:v7];
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

- (void)addSentenceToNgramCounts:(id)a3
{
  v4 = a3;
  v5 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:?];
  [v5 addSentenceToNgramCounts:v4];
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

- (void)initializeLmWithAssetPath:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__SFLocalSpeechRecognitionClient_initializeLmWithAssetPath_completion___block_invoke;
  v10[3] = &unk_1E797C1C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v10];
  [v9 initializeLmWithAssetPath:v8 completion:v7];
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

- (void)initializeLmWithLocale:(id)a3 clientID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__SFLocalSpeechRecognitionClient_initializeLmWithLocale_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 initializeLmWithLocale:v11 clientID:v10 completion:v9];
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

- (void)setPurgeabilityForAssetWithConfig:(id)a3 purgeable:(BOOL)a4 clientID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__SFLocalSpeechRecognitionClient_setPurgeabilityForAssetWithConfig_purgeable_clientID_completion___block_invoke;
  block[3] = &unk_1E797C2D8;
  block[4] = self;
  v18 = v10;
  v21 = a4;
  v19 = v11;
  v20 = v12;
  v14 = v11;
  v15 = v10;
  v16 = v12;
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

- (id)_asynchronousServiceProxyWithErrorHandler:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 8));
    v4 = *(a1 + 16);
    if (v4)
    {
      a1 = [v4 remoteObjectProxyWithErrorHandler:v3];
    }

    else
    {
      v3[2](v3, *(a1 + 24));
      a1 = 0;
    }
  }

  return a1;
}

- (void)subscriptionsForClientId:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__SFLocalSpeechRecognitionClient_subscriptionsForClientId_completion___block_invoke;
  v10[3] = &unk_1E797C1C8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v10];
  [v9 subscriptionsForClientId:v8 completion:v7];
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

- (void)unsubscribeFromAssetWithConfig:(id)a3 clientID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__SFLocalSpeechRecognitionClient_unsubscribeFromAssetWithConfig_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 unsubscribeFromAssetWithConfig:v11 clientID:v10 completion:v9];
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

- (void)unsubscribeFromAssetWithConfig:(id)a3 clientID:(id)a4 asyncCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__SFLocalSpeechRecognitionClient_unsubscribeFromAssetWithConfig_clientID_asyncCompletion___block_invoke;
  v15[3] = &unk_1E797C218;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
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

- (void)configParametersForVoicemailWithLanguage:(id)a3 clientID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __95__SFLocalSpeechRecognitionClient_configParametersForVoicemailWithLanguage_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 configParametersForVoicemailWithLanguage:v11 clientID:v10 completion:v9];
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

- (void)fetchAssetsForLanguage:(id)a3 clientID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__SFLocalSpeechRecognitionClient_fetchAssetsForLanguage_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 fetchAssetsForLanguage:v11 clientID:v10 completion:v9];
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

- (void)downloadAssetsForConfig:(id)a3 clientID:(id)a4 expiration:(id)a5 detailedProgress:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __113__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_detailedProgress_completionHandler___block_invoke;
  v23[3] = &unk_1E797C2B0;
  v27 = v15;
  v28 = v16;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v16;
  v22 = v15;
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

- (void)downloadAssetsForConfig:(id)a3 clientID:(id)a4 expiration:(id)a5 progress:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __105__SFLocalSpeechRecognitionClient_downloadAssetsForConfig_clientID_expiration_progress_completionHandler___block_invoke;
  v23[3] = &unk_1E797C2B0;
  v27 = v15;
  v28 = v16;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v16;
  v22 = v15;
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

- (void)initializeWithSandboxExtensions:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__SFLocalSpeechRecognitionClient_initializeWithSandboxExtensions___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)installedLanguagesForAssetType:(unint64_t)a3 synchronous:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = v8;
  if (v5)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__SFLocalSpeechRecognitionClient_installedLanguagesForAssetType_synchronous_completion___block_invoke;
    v17[3] = &unk_1E797C1C8;
    v10 = v8;
    v18 = v10;
    v11 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v17];
    [v11 installedLanguagesForAssetType:a3 completion:v10];

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
    v15 = v8;
    v16 = a3;
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

- (void)supportedLanguagesForAssetType:(unint64_t)a3 synchronous:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = v8;
  if (v5)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __88__SFLocalSpeechRecognitionClient_supportedLanguagesForAssetType_synchronous_completion___block_invoke;
    v17[3] = &unk_1E797C1C8;
    v10 = v8;
    v18 = v10;
    v11 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v17];
    [v11 supportedLanguagesForAssetType:a3 completion:v10];

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
    v15 = v8;
    v16 = a3;
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

- (void)versionOfAssetWithConfig:(id)a3 clientID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__SFLocalSpeechRecognitionClient_versionOfAssetWithConfig_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 versionOfAssetWithConfig:v11 clientID:v10 completion:v9];
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

- (void)installationStateForAssetConfig:(id)a3 clientID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__SFLocalSpeechRecognitionClient_installationStateForAssetConfig_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 installationStateForAssetConfig:v11 clientID:v10 completion:v9];
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

- (void)pathToAssetWithConfig:(id)a3 clientID:(id)a4 asyncCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__SFLocalSpeechRecognitionClient_pathToAssetWithConfig_clientID_asyncCompletion___block_invoke;
  v15[3] = &unk_1E797C218;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
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

- (void)pathToAssetWithConfig:(id)a3 clientID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__SFLocalSpeechRecognitionClient_pathToAssetWithConfig_clientID_completion___block_invoke;
  v13[3] = &unk_1E797C1C8;
  v14 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = [(SFLocalSpeechRecognitionClient *)self _serviceProxyWithErrorHandler:v13];
  [v12 pathToAssetWithConfig:v11 clientID:v10 completion:v9];
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

- (void)preloadRecognizerForLanguage:(id)a3 task:(id)a4 clientID:(id)a5 recognitionOverrides:(id)a6 modelOverrideURL:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __126__SFLocalSpeechRecognitionClient_preloadRecognizerForLanguage_task_clientID_recognitionOverrides_modelOverrideURL_completion___block_invoke;
  block[3] = &unk_1E797C1F0;
  v32 = v18;
  v33 = v19;
  block[4] = self;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  v26 = v19;
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

- (void)addAudioPacket:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SFLocalSpeechRecognitionClient_addAudioPacket___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)startRecordedAudioDictationWithParameters:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__SFLocalSpeechRecognitionClient_startRecordedAudioDictationWithParameters___block_invoke;
  v7[3] = &unk_1E797CB08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (SFLocalSpeechRecognitionClient)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SFLocalSpeechRecognitionClient *)self init];
  objc_storeWeak(&v5->_delegate, v4);

  return v5;
}

+ (void)cleanupCacheWithCompletion:(id)a3
{
  v3 = a3;
  v5 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  v4 = [(SFLocalSpeechRecognitionClient *)v5 _serviceProxyWithErrorHandler:?];
  [v4 cleanupCacheWithCompletion:v3];

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

+ (void)logCoreAnalyticsEvent:(id)a3 withAnalytics:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  queue = v7->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__SFLocalSpeechRecognitionClient_logCoreAnalyticsEvent_withAnalytics___block_invoke;
  block[3] = &unk_1E797C460;
  v13 = v7;
  v14 = v5;
  v15 = v6;
  v9 = v6;
  v10 = v5;
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