@interface LSRConnection
+ (BOOL)isEuclidAvailableForConfigPath:(id)a3;
+ (id)_jitProfileWithLanguage:(id)a3 modelRoot:(id)a4;
+ (id)processStartTimeOnce;
+ (void)_cachedRecognizerCleanUp;
+ (void)_cancelCooldownTimer;
+ (void)_cooldownTimerFired;
+ (void)_scheduleCooldownTimer;
+ (void)captureProcessStartTime;
+ (void)completionWithEuclidErrorWithDescription:(id)a3 configPath:(id)a4 completion:(id)a5;
+ (void)initialize;
- ($115C4C562B26FF47E01F9F4EA65B5887)_auditToken;
- (BOOL)_callerHasWritePriviledge:(id)a3;
- (BOOL)_consumeSandboxExtensions:(id)a3 error:(id *)a4;
- (LSRConnection)initWithXPCConnection:(id)a3;
- (id)_requestContext;
- (void)addAudioPacket:(id)a3;
- (void)addProns:(id)a3 forWord:(id)a4 completion:(id)a5;
- (void)addSentenceToNgramCounts:(id)a3;
- (void)addSentenceToNgramCounts:(id)a3 completion:(id)a4;
- (void)appLmNeedsRebuild:(id)a3 language:(id)a4 sandboxExtensions:(id)a5 completion:(id)a6;
- (void)cancelSpeech;
- (void)cleanupCacheWithCompletion:(id)a3;
- (void)configParametersForVoicemailWithLanguage:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)createNgramCountsArtifactFromPhraseCountArtifact:(id)a3 writeToDirectory:(id)a4 sandboxExtensions:(id)a5 completion:(id)a6;
- (void)createPhraseCountsArtifactWithIdentifier:(id)a3 rawPhraseCountsPath:(id)a4 customPronunciationsPath:(id)a5 writeToDirectory:(id)a6 sandboxExtensions:(id)a7 completion:(id)a8;
- (void)dealloc;
- (void)deserializeNgramCountsData:(id)a3 completion:(id)a4;
- (void)downloadAssetsForConfig:(id)a3 clientID:(id)a4 expiration:(id)a5 detailedProgress:(BOOL)a6;
- (void)fetchAssetsForLanguage:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)generateNgramCountsSerializeDataWithCompletion:(id)a3;
- (void)initializeLmWithAssetPath:(id)a3 completion:(id)a4;
- (void)initializeLmWithLocale:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)initializeWithSandboxExtensions:(id)a3;
- (void)installationStateForAssetConfig:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)installedLanguagesForAssetType:(unint64_t)a3 completion:(id)a4;
- (void)lmeThresholdWithCompletion:(id)a3;
- (void)logCoreAnalyticsEvent:(id)a3 withAnalytics:(id)a4;
- (void)metricsWithCompletion:(id)a3;
- (void)oovWordsAndFrequenciesWithCompletion:(id)a3;
- (void)pathToAssetWithConfig:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)preloadRecognizerForLanguage:(id)a3 task:(id)a4 clientID:(id)a5 recognitionOverrides:(id)a6 modelOverrideURL:(id)a7 completion:(id)a8;
- (void)reportFailureWithError:(id)a3;
- (void)setPurgeabilityForAssetWithConfig:(id)a3 purgeable:(BOOL)a4 clientID:(id)a5 completion:(id)a6;
- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4;
- (void)speechRecognizer:(id)a3 didProcessAudioDuration:(double)a4;
- (void)speechRecognizer:(id)a3 didRecognizeFinalResultPackage:(id)a4;
- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4;
- (void)startRecordedAudioDictationWithParameters:(id)a3;
- (void)stopSpeech;
- (void)subscriptionsForClientId:(id)a3 completion:(id)a4;
- (void)supportedLanguagesForAssetType:(unint64_t)a3 completion:(id)a4;
- (void)synchronousComputeEuclidEmbeddingsForSources:(id)a3 completion:(id)a4;
- (void)synchronousCreateEuclidInstanceForLanguageStr:(id)a3 clientID:(id)a4 inputFormat:(int64_t)a5 loadingOption:(int64_t)a6 completion:(id)a7;
- (void)synchronousEuclidConfigPathForLanguageStr:(id)a3 completion:(id)a4;
- (void)synchronousEuclidNearestNeighborsForSource:(id)a3 numberOfNeighbors:(id)a4 completion:(id)a5;
- (void)trainAppLmFromNgramCountsArtifact:(id)a3 forApp:(id)a4 language:(id)a5 writeToDirectory:(id)a6 sandboxExtensions:(id)a7 completion:(id)a8;
- (void)trainAppLmFromNgramsSerializedData:(id)a3 customPronsData:(id)a4 language:(id)a5 writeToDirectory:(id)a6 sandboxExtension:(id)a7 completion:(id)a8;
- (void)trainFromPlainTextAndWriteToDirectory:(id)a3 sandboxExtension:(id)a4 completion:(id)a5;
- (void)updateAudioDuration:(id)a3;
- (void)versionOfAssetWithConfig:(id)a3 clientID:(id)a4 completion:(id)a5;
- (void)wakeUpWithCompletion:(id)a3;
@end

@implementation LSRConnection

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3 = dispatch_queue_create("com.apple.speech.localspeechrecognition", v2);
    v4 = qword_100071428;
    qword_100071428 = v3;

    SFLogInitIfNeeded();
  }
}

+ (void)captureProcessStartTime
{
  if (qword_100071438 != -1)
  {
    dispatch_once(&qword_100071438, &stru_1000663E8);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  [(_EARSpeechRecognitionAudioBuffer *)self->_audioBuffer cancelRecognition];
  [(NSMutableArray *)self->_consumedSandboxExtensions enumerateObjectsUsingBlock:&stru_1000663C8];
  v3 = qword_100071430;
  if (self->_audioBuffer == qword_100071430)
  {
    qword_100071430 = 0;
  }

  v4 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v7 = "[LSRConnection dealloc]";
    v8 = 2112;
    v9 = self;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s %@ deallocating", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = LSRConnection;
  [(LSRConnection *)&v5 dealloc];
}

- (void)speechRecognizer:(id)a3 didProcessAudioDuration:(double)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003AFD8;
  v4[3] = &unk_100066950;
  v4[4] = self;
  *&v4[5] = a4;
  dispatch_async(qword_100071428, v4);
}

- (void)speechRecognizer:(id)a3 didFinishRecognitionWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B0F8;
  block[3] = &unk_100066900;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)speechRecognizer:(id)a3 didRecognizeFinalResultPackage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003BD94;
  block[3] = &unk_100066900;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)speechRecognizer:(id)a3 didRecognizePartialResult:(id)a4
{
  v5 = a4;
  v6 = qword_100071428;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003C31C;
  v8[3] = &unk_1000664B8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)synchronousEuclidConfigPathForLanguageStr:(id)a3 completion:(id)a4
{
  v14 = a4;
  v5 = a3;
  v6 = [[SFEntitledAssetConfig alloc] initWithLanguage:v5 assetType:3];

  v7 = +[SFEntitledAssetManager sharedInstance];
  v8 = [v7 installedAssetWithConfig:v6];

  if (!v14 || v8)
  {
    v9 = [SFEntitledAssetManager jsonFilenameForAssetType:3];
    v10 = [v8 stringByAppendingPathComponent:v9];

    v11 = [LSRConnection isEuclidAvailableForConfigPath:v8];
    if (!v14 || v11)
    {
      v12 = v14;
      v13 = v10;
    }

    else
    {
      v12 = v14;
      v13 = 0;
    }

    (*(v14 + 2))(v12, v13);
  }

  else
  {
    (*(v14 + 2))();
  }
}

- (void)synchronousEuclidNearestNeighborsForSource:(id)a3 numberOfNeighbors:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  euclidInstance = self->_euclidInstance;
  if (euclidInstance)
  {
    v12 = -[_EAREuclid findNearestNeighbors:numberOfNeighbors:](euclidInstance, "findNearestNeighbors:numberOfNeighbors:", v8, [v9 intValue]);
    v13 = +[NSMutableArray array];
    +[NSMutableDictionary dictionary];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10003C860;
    v22 = &unk_1000668B0;
    v24 = v23 = v13;
    v14 = v24;
    v15 = v13;
    [v12 enumerateObjectsUsingBlock:&v19];
    v16 = [v15 copy];
    v17 = [v14 copy];
    v10[2](v10, v16, v17);
  }

  else
  {
    v18 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v26 = "[LSRConnection synchronousEuclidNearestNeighborsForSource:numberOfNeighbors:completion:]";
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "%s No instance of _EAREuclid", buf, 0xCu);
    }

    v10[2](v10, 0, 0);
  }
}

- (void)synchronousComputeEuclidEmbeddingsForSources:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  euclidInstance = self->_euclidInstance;
  if (euclidInstance)
  {
    v9 = [(_EAREuclid *)euclidInstance computeEmbeddings:v6];
    v7[2](v7, v9);
  }

  else
  {
    v10 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315138;
      v12 = "[LSRConnection synchronousComputeEuclidEmbeddingsForSources:completion:]";
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s No instance of _EAREuclid", &v11, 0xCu);
    }

    v7[2](v7, 0);
  }
}

- (void)synchronousCreateEuclidInstanceForLanguageStr:(id)a3 clientID:(id)a4 inputFormat:(int64_t)a5 loadingOption:(int64_t)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v29 = "[LSRConnection synchronousCreateEuclidInstanceForLanguageStr:clientID:inputFormat:loadingOption:completion:]";
    v30 = 2112;
    v31 = v12;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Initializing _EAREuclid instance for languageStr: %@", buf, 0x16u);
  }

  v27 = 0;
  v16 = [LSRConnection modelRootWithLanguage:v12 assetType:3 clientID:v13 modelOverrideURL:0 isSpelling:0 error:&v27];
  v17 = v27;
  if (v16)
  {
    v26 = v13;
    v18 = self;
    v19 = a6;
    v20 = [SFEntitledAssetManager jsonFilenameForAssetType:3];
    v21 = [v16 stringByAppendingPathComponent:v20];

    if ([LSRConnection isEuclidAvailableForConfigPath:v16])
    {
      v22 = [[_EAREuclid alloc] initWithConfiguration:v21 euclidEncoderType:a5 initFlag:v19 language:v12];
      euclidInstance = v18->_euclidInstance;
      v18->_euclidInstance = v22;

      if (v18->_euclidInstance)
      {
        v13 = v26;
        if (v14)
        {
          v14[2](v14, 0);
        }

        goto LABEL_14;
      }

      v25 = @"Failed to initialize _EAREuclid instance.";
    }

    else
    {
      v25 = @"Euclid not available on this device for this locale.";
    }

    [LSRConnection completionWithEuclidErrorWithDescription:v25 configPath:v21 completion:v14];
    v13 = v26;
LABEL_14:

    goto LABEL_15;
  }

  v24 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "[LSRConnection synchronousCreateEuclidInstanceForLanguageStr:clientID:inputFormat:loadingOption:completion:]";
    v30 = 2112;
    v31 = v17;
    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (v14)
  {
LABEL_10:
    (v14)[2](v14, v17);
  }

LABEL_15:
}

- (void)subscriptionsForClientId:(id)a3 completion:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [SFEntitledAssetManager subscriptionsForSubscriberId:a3];
    (*(a4 + 2))(v6, v7);
  }
}

- (void)appLmNeedsRebuild:(id)a3 language:(id)a4 sandboxExtensions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[LSRConnection appLmNeedsRebuild:language:sandboxExtensions:completion:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Checking if app LM needs a rebuild", buf, 0xCu);
  }

  v22 = 0;
  v15 = [(LSRConnection *)self _consumeSandboxExtensions:v12 error:&v22];
  v16 = v22;
  if (v15)
  {
    lsrLanguageModel = self->_lsrLanguageModel;
    v21 = 0;
    v18 = [(LSRLanguageModel *)lsrLanguageModel appLmNeedsRebuild:v10 language:v11 error:&v21];
    v19 = v21;
    v13[2](v13, v18, v19);
  }

  else
  {
    v20 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[LSRConnection appLmNeedsRebuild:language:sandboxExtensions:completion:]";
      v25 = 2112;
      v26 = v16;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Failed to consume sandbox extensions when checking for App LM rebuild: %@", buf, 0x16u);
    }

    v13[2](v13, 1, v16);
  }
}

- (void)trainAppLmFromNgramCountsArtifact:(id)a3 forApp:(id)a4 language:(id)a5 writeToDirectory:(id)a6 sandboxExtensions:(id)a7 completion:(id)a8
{
  v14 = a3;
  v37 = a4;
  v35 = a5;
  v15 = a6;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10003D318;
  v41[3] = &unk_100066860;
  v16 = a8;
  v42 = v16;
  v17 = a7;
  v18 = objc_retainBlock(v41);
  v19 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v44 = "[LSRConnection trainAppLmFromNgramCountsArtifact:forApp:language:writeToDirectory:sandboxExtensions:completion:]";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Starting training of App LM from ngram count.", buf, 0xCu);
  }

  v40 = 0;
  v20 = [(LSRConnection *)self _consumeSandboxExtensions:v17 error:&v40, v35];

  v21 = v40;
  v22 = SFLogConnection;
  if (v20)
  {
    v23 = v14;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v44 = "[LSRConnection trainAppLmFromNgramCountsArtifact:forApp:language:writeToDirectory:sandboxExtensions:completion:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Successfully consumed sandbox extensions", buf, 0xCu);
    }

    v24 = [v15 URLByAppendingPathComponent:@"AppLmModelFile"];
    v25 = [v15 URLByAppendingPathComponent:@"SpeechProfile"];
    v26 = +[NSFileManager defaultManager];
    [v26 removeItemAtURL:v24 error:0];

    v27 = +[NSFileManager defaultManager];
    [v27 removeItemAtURL:v25 error:0];

    lsrLanguageModel = self->_lsrLanguageModel;
    v38 = v25;
    v39 = v24;
    v14 = v23;
    v29 = v23;
    v31 = v36;
    v30 = v37;
    [(LSRLanguageModel *)lsrLanguageModel trainAppLmFromNgramCountsArtifact:v29 forApp:v37 language:v36 appLmArtifact:&v39 vocabFile:&v38];
    v32 = v39;

    v33 = v38;
    v34 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v44 = "[LSRConnection trainAppLmFromNgramCountsArtifact:forApp:language:writeToDirectory:sandboxExtensions:completion:]";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Finished training of App LM from ngram count.", buf, 0xCu);
    }

    (v18[2])(v18, v32, v33);
  }

  else
  {
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v44 = "[LSRConnection trainAppLmFromNgramCountsArtifact:forApp:language:writeToDirectory:sandboxExtensions:completion:]";
      v45 = 2112;
      v46 = v21;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Failed to consume sandbox extensions: %@", buf, 0x16u);
    }

    (v18[2])(v18, 0, 0);
    v31 = v36;
    v30 = v37;
  }
}

- (void)createNgramCountsArtifactFromPhraseCountArtifact:(id)a3 writeToDirectory:(id)a4 sandboxExtensions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003D574;
  v20[3] = &unk_100066888;
  v12 = a6;
  v21 = v12;
  v13 = a5;
  v14 = objc_retainBlock(v20);
  v19 = 0;
  v15 = [(LSRConnection *)self _consumeSandboxExtensions:v13 error:&v19];

  v16 = v19;
  v17 = SFLogConnection;
  if (v15)
  {
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[LSRConnection createNgramCountsArtifactFromPhraseCountArtifact:writeToDirectory:sandboxExtensions:completion:]";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%s Successfully consumed sandbox extensions", buf, 0xCu);
    }

    v18 = [v11 URLByAppendingPathComponent:@"NgramCountsFile" isDirectory:0];
    [(LSRLanguageModel *)self->_lsrLanguageModel createNgramCountsArtifactFromPhraseCountArtifact:v10 saveTo:v18];
    (v14[2])(v14, v18);
  }

  else
  {
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[LSRConnection createNgramCountsArtifactFromPhraseCountArtifact:writeToDirectory:sandboxExtensions:completion:]";
      v24 = 2112;
      v25 = v16;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Failed to consume sandbox extensions: %@", buf, 0x16u);
    }

    (v14[2])(v14, 0);
  }
}

- (void)createPhraseCountsArtifactWithIdentifier:(id)a3 rawPhraseCountsPath:(id)a4 customPronunciationsPath:(id)a5 writeToDirectory:(id)a6 sandboxExtensions:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10003D800;
  v26[3] = &unk_100066888;
  v18 = a8;
  v27 = v18;
  v19 = a7;
  v20 = objc_retainBlock(v26);
  v25 = 0;
  v21 = [(LSRConnection *)self _consumeSandboxExtensions:v19 error:&v25];

  v22 = v25;
  v23 = SFLogConnection;
  if (v21)
  {
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v29 = "[LSRConnection createPhraseCountsArtifactWithIdentifier:rawPhraseCountsPath:customPronunciationsPath:writeToDirectory:sandboxExtensions:completion:]";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s Successfully consumed sandbox extensions", buf, 0xCu);
    }

    v24 = [v17 URLByAppendingPathComponent:@"PhraseCountsFile" isDirectory:0];
    [(LSRLanguageModel *)self->_lsrLanguageModel createPhraseCountArtifactWithIdentifier:v14 rawPhraseCountsPath:v15 customPronunciationsPath:v16 saveTo:v24];
    (v20[2])(v20, v24);
  }

  else
  {
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[LSRConnection createPhraseCountsArtifactWithIdentifier:rawPhraseCountsPath:customPronunciationsPath:writeToDirectory:sandboxExtensions:completion:]";
      v30 = 2112;
      v31 = v22;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Failed to consume sandbox extensions: %@", buf, 0x16u);
    }

    (v20[2])(v20, 0);
  }
}

- (void)wakeUpWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)trainAppLmFromNgramsSerializedData:(id)a3 customPronsData:(id)a4 language:(id)a5 writeToDirectory:(id)a6 sandboxExtension:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10003DDA8;
  v50[3] = &unk_100066860;
  v19 = a8;
  v51 = v19;
  v20 = objc_retainBlock(v50);
  v21 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v53 = "[LSRConnection trainAppLmFromNgramsSerializedData:customPronsData:language:writeToDirectory:sandboxExtension:completion:]";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s Starting training of App LM from ngram count.", buf, 0xCu);
  }

  if (sub_10003DDC0())
  {
    v45 = v15;
    v56 = v18;
    v22 = [NSArray arrayWithObjects:&v56 count:1];
    v49 = 0;
    v23 = [(LSRConnection *)self _consumeSandboxExtensions:v22 error:&v49];
    v44 = v49;

    v24 = SFLogConnection;
    if ((v23 & 1) == 0)
    {
      v34 = v44;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v53 = "[LSRConnection trainAppLmFromNgramsSerializedData:customPronsData:language:writeToDirectory:sandboxExtension:completion:]";
        v54 = 2112;
        v55 = v44;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s Failed to consume sandbox extensions: %@", buf, 0x16u);
      }

      (v20[2])(v20, 0, 0);
      goto LABEL_25;
    }

    v41 = v16;
    v43 = v14;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v53 = "[LSRConnection trainAppLmFromNgramsSerializedData:customPronsData:language:writeToDirectory:sandboxExtension:completion:]";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Successfully consumed sandbox extensions", buf, 0xCu);
    }

    v25 = [v17 URLByAppendingPathComponent:@"app-lm"];
    v26 = +[NSFileManager defaultManager];
    v27 = [v25 path];
    v28 = [v26 fileExistsAtPath:v27];

    v42 = v26;
    if (v28)
    {
      v40 = 0;
      v16 = v41;
    }

    else
    {
      v48 = 0;
      v38 = [v26 createDirectoryAtURL:v25 withIntermediateDirectories:0 attributes:0 error:&v48];
      v40 = v48;
      v39 = SFLogConnection;
      if ((v38 & 1) == 0)
      {
        v36 = v40;
        v16 = v41;
        if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v53 = "[LSRConnection trainAppLmFromNgramsSerializedData:customPronsData:language:writeToDirectory:sandboxExtension:completion:]";
          v54 = 2112;
          v55 = v40;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s Write failed error:%@", buf, 0x16u);
        }

        (v20[2])(v20, 0, 0);
        v14 = v43;
        v34 = v44;
        v35 = v42;
        goto LABEL_24;
      }

      v16 = v41;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v53 = "[LSRConnection trainAppLmFromNgramsSerializedData:customPronsData:language:writeToDirectory:sandboxExtension:completion:]";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s Write successfull", buf, 0xCu);
      }
    }

    v29 = [v17 URLByAppendingPathComponent:@"SpeechProfile"];
    lsrLanguageModel = self->_lsrLanguageModel;
    v46 = v29;
    v47 = v25;
    [(LSRLanguageModel *)lsrLanguageModel trainAppLmFromNgramsSerializedData:v43 customPronsData:v45 language:v16 writeToAppLmDir:&v47 vocabFile:&v46];
    v31 = v47;

    v32 = v46;
    v33 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v53 = "[LSRConnection trainAppLmFromNgramsSerializedData:customPronsData:language:writeToDirectory:sandboxExtension:completion:]";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s Finished training of App LM from ngram count.", buf, 0xCu);
    }

    (v20[2])(v20, v31, v32);

    v25 = v31;
    v14 = v43;
    v34 = v44;
    v35 = v42;
    v36 = v40;
LABEL_24:

LABEL_25:
    v15 = v45;

    goto LABEL_26;
  }

  v37 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v53 = "[LSRConnection trainAppLmFromNgramsSerializedData:customPronsData:language:writeToDirectory:sandboxExtension:completion:]";
    _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s Request not authorized", buf, 0xCu);
  }

  (v20[2])(v20, 0, 0);
LABEL_26:
}

- (void)metricsWithCompletion:(id)a3
{
  if (a3)
  {
    lsrLanguageModel = self->_lsrLanguageModel;
    v5 = a3;
    v6 = [(LSRLanguageModel *)lsrLanguageModel metrics];
    (*(a3 + 2))(v5, v6);
  }
}

- (void)lmeThresholdWithCompletion:(id)a3
{
  if (a3)
  {
    lsrLanguageModel = self->_lsrLanguageModel;
    v5 = a3;
    (*(a3 + 2))(v5, [(LSRLanguageModel *)lsrLanguageModel lmeThreshold]);
  }
}

- (void)deserializeNgramCountsData:(id)a3 completion:(id)a4
{
  if (a4)
  {
    lsrLanguageModel = self->_lsrLanguageModel;
    v7 = a4;
    v8 = [(LSRLanguageModel *)lsrLanguageModel deserializeNgramCountsData:a3];
    (*(a4 + 2))(v7, v8);
  }
}

- (void)generateNgramCountsSerializeDataWithCompletion:(id)a3
{
  if (a3)
  {
    lsrLanguageModel = self->_lsrLanguageModel;
    v5 = a3;
    v6 = [(LSRLanguageModel *)lsrLanguageModel ngramCountsSerializeData];
    (*(a3 + 2))(v5, v6);
  }
}

- (void)trainFromPlainTextAndWriteToDirectory:(id)a3 sandboxExtension:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10003E538;
  v33[3] = &unk_100066860;
  v10 = a5;
  v34 = v10;
  v11 = objc_retainBlock(v33);
  if (sub_10003DDC0())
  {
    v39 = v9;
    v12 = [NSArray arrayWithObjects:&v39 count:1];
    v32 = 0;
    v13 = [(LSRConnection *)self _consumeSandboxExtensions:v12 error:&v32];
    v14 = v32;

    v15 = SFLogConnection;
    if ((v13 & 1) == 0)
    {
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "[LSRConnection trainFromPlainTextAndWriteToDirectory:sandboxExtension:completion:]";
        v37 = 2112;
        v38 = v14;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Failed to consume sandbox extensions: %@", buf, 0x16u);
      }

      (v11[2])(v11, 0, 0);
      goto LABEL_21;
    }

    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[LSRConnection trainFromPlainTextAndWriteToDirectory:sandboxExtension:completion:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s Successfully consumed sandbox extensions", buf, 0xCu);
    }

    v16 = [v8 URLByAppendingPathComponent:{@"app-lm", v14}];
    v17 = +[NSFileManager defaultManager];
    v18 = [v16 path];
    v19 = [v17 fileExistsAtPath:v18];

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v31 = 0;
      v26 = [v17 createDirectoryAtURL:v16 withIntermediateDirectories:0 attributes:0 error:&v31];
      v20 = v31;
      v27 = SFLogConnection;
      if ((v26 & 1) == 0)
      {
        if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v36 = "[LSRConnection trainFromPlainTextAndWriteToDirectory:sandboxExtension:completion:]";
          v37 = 2112;
          v38 = v20;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%s Write failed error:%@", buf, 0x16u);
        }

        (v11[2])(v11, 0, 0);
        goto LABEL_20;
      }

      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v36 = "[LSRConnection trainFromPlainTextAndWriteToDirectory:sandboxExtension:completion:]";
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s Write successfull", buf, 0xCu);
      }
    }

    v21 = [v8 URLByAppendingPathComponent:@"SpeechProfile"];
    lsrLanguageModel = self->_lsrLanguageModel;
    v29 = v21;
    v30 = v16;
    [(LSRLanguageModel *)lsrLanguageModel trainAppLmFromPlainTextAndWriteToAppDirectory:&v30 vocabFile:&v29];
    v23 = v30;

    v24 = v29;
    (v11[2])(v11, v23, v24);

    v16 = v23;
LABEL_20:
    v14 = v28;

LABEL_21:
    goto LABEL_22;
  }

  v25 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v36 = "[LSRConnection trainFromPlainTextAndWriteToDirectory:sandboxExtension:completion:]";
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s Request not authorized", buf, 0xCu);
  }

  (v11[2])(v11, 0, 0);
LABEL_22:
}

- (void)addProns:(id)a3 forWord:(id)a4 completion:(id)a5
{
  if (a5)
  {
    lsrLanguageModel = self->_lsrLanguageModel;
    v9 = a5;
    (*(a5 + 2))(v9, [(LSRLanguageModel *)lsrLanguageModel addProns:a3 forWord:a4]);
  }
}

- (void)oovWordsAndFrequenciesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[LSRConnection oovWordsAndFrequenciesWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s oovs words and frequencies", &v7, 0xCu);
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    v6 = [(LSRLanguageModel *)self->_lsrLanguageModel oovWordsAndFrequenciesInNgramCount];
    v4[2](v4, v6);
  }

LABEL_4:
}

- (void)addSentenceToNgramCounts:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[LSRConnection addSentenceToNgramCounts:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Adding oovs from sentence", &v10, 0xCu);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v7)
  {
LABEL_3:
    v9 = [(LSRLanguageModel *)self->_lsrLanguageModel oovsFromSentenceAddedToNgramCounts:v6];
    v7[2](v7, v9);
  }

LABEL_4:
}

- (void)addSentenceToNgramCounts:(id)a3
{
  v4 = a3;
  v5 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[LSRConnection addSentenceToNgramCounts:]";
    v8 = 2112;
    v9 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Adding sentence=%@", &v6, 0x16u);
  }

  [(LSRLanguageModel *)self->_lsrLanguageModel addSentenceToNgramCounts:v4];
}

- (void)initializeLmWithAssetPath:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E974;
  block[3] = &unk_100066838;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)initializeLmWithLocale:(id)a3 clientID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = qword_100071428;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003ECB0;
  v15[3] = &unk_100066810;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)setPurgeabilityForAssetWithConfig:(id)a3 purgeable:(BOOL)a4 clientID:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EF2C;
  block[3] = &unk_1000667E8;
  v16 = a4;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, block);
}

- (void)configParametersForVoicemailWithLanguage:(id)a3 clientID:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003F0A4;
  v21[3] = &unk_100066798;
  v9 = a5;
  v22 = v9;
  v10 = objc_retainBlock(v21);
  v11 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F0BC;
  block[3] = &unk_1000667C0;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v7;
  dispatch_async(v11, block);
}

- (void)fetchAssetsForLanguage:(id)a3 clientID:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F450;
  block[3] = &unk_100066838;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, block);
}

- (void)downloadAssetsForConfig:(id)a3 clientID:(id)a4 expiration:(id)a5 detailedProgress:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 language];

  if (v13)
  {
    v14 = qword_100071428;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003F788;
    block[3] = &unk_100066770;
    v20 = v10;
    v21 = self;
    v22 = v11;
    v23 = v12;
    v24 = a6;
    dispatch_async(v14, block);

    v15 = v20;
  }

  else
  {
    v16 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v28 = "[LSRConnection downloadAssetsForConfig:clientID:expiration:detailedProgress:]";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s language cannot be nil.", buf, 0xCu);
    }

    v17 = [NSError errorWithDomain:kAFAssistantErrorDomain code:31 userInfo:0];
    v18 = qword_100071428;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10003F730;
    v25[3] = &unk_1000664B8;
    v25[4] = self;
    v26 = v17;
    v15 = v17;
    dispatch_async(v18, v25);
  }
}

- (void)installedLanguagesForAssetType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFBLL) != 3)
    {
      v9 = qword_100071428;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100040B78;
      block[3] = &unk_100066578;
      v16 = a3;
      v15 = v6;
      dispatch_async(v9, block);
      v10 = v15;
LABEL_13:

      goto LABEL_14;
    }

    if (a3 == 3)
    {
      v8 = 208;
    }

    else
    {
      if (a3 != 7)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v8 = 216;
    }

    v10 = [*(&self->super.isa + v8) statusForLanguage];
LABEL_10:
    v11 = SFEntitledAssetTypeToString();
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100005B78;
    v22 = sub_100005B88;
    v23 = +[NSMutableSet set];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100040B10;
    v17[3] = &unk_100066550;
    v17[4] = &v18;
    [v10 enumerateKeysAndObjectsUsingBlock:v17];
    v12 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
    {
      v13 = v19[5];
      *buf = 136315650;
      v25 = "[LSRConnection installedLanguagesForAssetType:completion:]";
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v13;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Using the cached status for %@ assets, available languages: %@", buf, 0x20u);
    }

    v7[2](v7, v19[5]);
    _Block_object_dispose(&v18, 8);

    goto LABEL_13;
  }

LABEL_14:
}

- (void)installationStateForAssetConfig:(id)a3 clientID:(id)a4 completion:(id)a5
{
  if (a5)
  {
    v7 = a5;
    v8 = a4;
    v9 = a3;
    v10 = +[SFEntitledAssetManager sharedInstance];
    [v10 installationStateForAssetConfig:v9 subscriberId:v8 completionHandler:v7];
  }
}

- (void)supportedLanguagesForAssetType:(unint64_t)a3 completion:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = [SFEntitledAssetManager supportedLanguagesForAssetType:a3];
    (*(a4 + 2))(v6, v7);
  }
}

- (void)versionOfAssetWithConfig:(id)a3 clientID:(id)a4 completion:(id)a5
{
  if (a5)
  {
    v7 = a5;
    v8 = a3;
    v10 = +[SFEntitledAssetManager sharedInstance];
    v9 = [v10 assetVersionForConfig:v8];

    (*(a5 + 2))(v7, v9);
  }
}

- (void)pathToAssetWithConfig:(id)a3 clientID:(id)a4 completion:(id)a5
{
  if (a5)
  {
    v7 = a5;
    v8 = a3;
    v10 = +[SFEntitledAssetManager sharedInstance];
    v9 = [v10 installedAssetWithConfig:v8];

    (*(a5 + 2))(v7, v9);
  }
}

- (void)reportFailureWithError:(id)a3
{
  v4 = a3;
  v5 = SFAnalyticsEventTypeGetName();
  v8 = v4;
  v6 = v4;
  AnalyticsSendEventLazy();

  v7 = [(LSRConnection *)self _delegate:_NSConcreteStackBlock];
  [v7 localSpeechRecognitionDidFail:v6];
}

- (void)cleanupCacheWithCompletion:(id)a3
{
  v3 = a3;
  v5 = v3;
  if (qword_100071480)
  {
    v4 = [qword_100071480 isEqualToString:kSFSpeechRecognizerTaskCaptioning];
    v3 = v5;
    if (v4)
    {
      +[LSRConnection _cachedRecognizerCleanUp];
      v3 = v5;
    }
  }

  if (v3)
  {
    v3[2](v3);
  }

  _objc_release_x1();
}

- (void)logCoreAnalyticsEvent:(id)a3 withAnalytics:(id)a4
{
  v5 = a4;
  v4 = v5;
  AnalyticsSendEventLazy();
}

- (void)initializeWithSandboxExtensions:(id)a3
{
  v4 = a3;
  v5 = qword_100071428;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041248;
  v7[3] = &unk_1000664B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)cancelSpeech
{
  v3 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[LSRConnection cancelSpeech]";
    v7 = 2048;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s cancelSpeech - %p", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041490;
  block[3] = &unk_1000664E0;
  block[4] = self;
  dispatch_async(qword_100071428, block);
}

- (void)stopSpeech
{
  v3 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[LSRConnection stopSpeech]";
    v7 = 2048;
    v8 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s stopSpeech - %p", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041688;
  block[3] = &unk_1000664E0;
  block[4] = self;
  dispatch_async(qword_100071428, block);
}

- (void)updateAudioDuration:(id)a3
{
  v4 = qword_100071428;
  v5 = a3;
  dispatch_assert_queue_V2(v4);
  LODWORD(v4) = [(SFRequestParameters *)self->_requestParameters narrowband];
  v6 = [v5 length];

  v7 = 16000.0;
  if (v4)
  {
    v7 = 8000.0;
  }

  self->_audioDuration = self->_audioDuration + (v6 >> 1) / v7;
}

- (void)addAudioPacket:(id)a3
{
  v4 = a3;
  v5 = qword_100071428;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041874;
  v7[3] = &unk_1000664B8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)startRecordedAudioDictationWithParameters:(id)a3
{
  v5 = a3;
  v6 = SFLogConnection;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s Starting..", buf, 0xCu);
  }

  *&self->_recognitionResultPackageGenerated = 0;
  *&self->_audioDuration = 0u;
  *&self->_lastAudioPacketTime = 0u;
  *&self->_firstAudioPacketTime = 0u;
  *&self->_silStartFirstToken = 0u;
  self->_asrInitializationTime = 0.0;
  v7 = [v5 onDeviceOnly];
  v8 = +[NSXPCConnection currentConnection];
  v9 = v8;
  if (!v8)
  {
    v14 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "CheckPrerecordedConnectionAccess";
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s Called from outside of an XPC connection", buf, 0xCu);
    }

    v15 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1700 userInfo:0];
    v16 = v15;
    v17 = v15;
    goto LABEL_21;
  }

  v10 = [v8 valueForEntitlement:@"com.apple.assistant.dictation.prerecorded"];
  if (objc_opt_respondsToSelector())
  {
    if ((([v10 BOOLValue] | v7 ^ 1) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v12 = 0;
    v13 = 1;
    goto LABEL_16;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  v11 = +[AFPreferences sharedPreferences];
  if ([v11 assistantIsEnabled] & 1) != 0 || (objc_msgSend(v11, "dictationIsEnabled"))
  {
    v12 = 0;
    v13 = 1;
  }

  else
  {
    v12 = [NSError lsr_errorWithCode:201 description:@"Siri and Dictation are disabled"];
    v18 = v12;
    v13 = 0;
  }

LABEL_16:
  v17 = v12;
  if (v13)
  {
    dispatch_assert_queue_V2(qword_100071428);
    if (self->_audioBuffer)
    {
      v19 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
        *&buf[12] = 2112;
        *&buf[14] = @"Recognizer is busy";
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
      }

      v234 = NSLocalizedDescriptionKey;
      v235 = @"Recognizer is busy";
      v20 = [NSDictionary dictionaryWithObjects:&v235 forKeys:&v234 count:1];
      v21 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1100 userInfo:v20];
      [(LSRConnection *)self reportFailureWithError:v21];

      goto LABEL_24;
    }

    v23 = +[NSBundle mainBundle];
    v24 = [v23 bundleIdentifier];

    v25 = kSFSpeechRecognizerDumpedTaskIdentifierKey;
    if (CFPreferencesAppValueIsForced(kSFSpeechRecognizerDumpedTaskIdentifierKey, v24) || SFIsInternalInstall())
    {
      v26 = [v5 taskIdentifier];
      v27 = v26 == 0;

      if (!v27)
      {
        v28 = [v5 applicationName];
        v29 = [v5 taskIdentifier];
        v30 = [NSString stringWithFormat:@"%@.%@", v28, v29];

        v31 = +[NSUserDefaults standardUserDefaults];
        v32 = [v31 stringForKey:v25];

        v33 = [v32 isEqualToString:v30];
        v34 = SFLogConnection;
        if (v33)
        {
          v35 = SFLogConnection;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v36 = [v5 requestIdentifier];
            v37 = [v5 taskIdentifier];
            *buf = 136315650;
            *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
            *&buf[12] = 2112;
            *&buf[14] = v36;
            *&buf[22] = 2112;
            v225 = v37;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s Audio dumps will be enabled for request: %@ with taskIdentifier: %@", buf, 0x20u);
          }

          v38 = [LSRAudioDump alloc];
          v39 = [v5 taskIdentifier];
          v40 = [(LSRAudioDump *)v38 initWithTaskIdentifier:v39];
          audioDump = self->_audioDump;
          self->_audioDump = v40;

          v216 = 0u;
          v217 = 0u;
          v214 = 0u;
          v215 = 0u;
          v42 = self->_bufferedAudioPackets;
          v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v214 objects:v233 count:16];
          if (v43)
          {
            v44 = *v215;
            do
            {
              for (i = 0; i != v43; i = i + 1)
              {
                if (*v215 != v44)
                {
                  objc_enumerationMutation(v42);
                }

                [(LSRAudioDump *)self->_audioDump appendBytes:*(*(&v214 + 1) + 8 * i)];
              }

              v43 = [(NSMutableArray *)v42 countByEnumeratingWithState:&v214 objects:v233 count:16];
            }

            while (v43);
          }
        }

        else if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
          *&buf[12] = 2112;
          *&buf[14] = v32;
          *&buf[22] = 2112;
          v225 = v30;
          _os_log_debug_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "%s Dump will not be created because dump identifier (%@) doesn't match the qualified task identifier (%@).", buf, 0x20u);
        }
      }
    }

    v46 = +[NSProcessInfo processInfo];
    [v46 systemUptime];
    v48 = v47;

    objc_storeStrong(&self->_requestParameters, a3);
    v49 = [v5 task];
    v50 = v49 == 0;

    if (v50)
    {
      v72 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
        _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "%s task name is nil", buf, 0xCu);
      }

      v73 = [NSBundle bundleForClass:objc_opt_class()];
      v57 = [v73 localizedStringForKey:@"task name is nil" value:&stru_100066A98 table:@"Localizable"];

      v74 = [NSError lsr_errorWithCode:3 description:v57];
      [(LSRConnection *)self reportFailureWithError:v74];

      goto LABEL_134;
    }

    v51 = [v5 language];
    v52 = [v5 recognitionOverrides];
    v53 = [v5 modelOverrideURL];
    v54 = [v5 task];
    v55 = [v5 clientIdentifier];
    v213 = 0;
    v56 = [(LSRConnection *)self prepareRecognizerWithLanguage:v51 recognitionOverrides:v52 modelOverrideURL:v53 anyConfiguration:0 task:v54 clientID:v55 error:&v213];
    v57 = v213;

    if ((v56 & 1) == 0)
    {
      [(LSRConnection *)self reportFailureWithError:v57];
LABEL_134:

      goto LABEL_24;
    }

    v58 = [(SFRequestParameters *)self->_requestParameters task];
    SetQuasarLoggingLevel(v58);

    v59 = +[NSProcessInfo processInfo];
    [v59 systemUptime];
    self->_recognitionBeginTime = v60;

    WeakRetained = objc_loadWeakRetained(&self->_recognizer);
    [(SFRequestParameters *)self->_requestParameters maximumRecognitionDuration];
    [WeakRetained setMaximumRecognitionDuration:?];

    v62 = objc_loadWeakRetained(&self->_recognizer);
    [v62 setConcatenateUtterances:{-[SFRequestParameters detectMultipleUtterances](self->_requestParameters, "detectMultipleUtterances") ^ 1}];

    v63 = objc_loadWeakRetained(&self->_recognizer);
    [v63 setDisableAutoPunctuation:{-[SFRequestParameters enableAutoPunctuation](self->_requestParameters, "enableAutoPunctuation") ^ 1}];

    v64 = [(SFRequestParameters *)self->_requestParameters narrowband];
    v65 = 16000;
    if (v64)
    {
      v65 = 8000;
    }

    v195 = v65;
    v66 = qword_100071478;
    v67 = [v5 task];
    v68 = v66;
    v69 = v67;
    v70 = [v68 tasks];
    if ([v70 containsObject:v69])
    {
      v199 = v69;
      v71 = v57;
    }

    else
    {
      v75 = [NSBundle bundleForClass:objc_opt_class()];
      v76 = [v75 localizedStringForKey:@"Task %@ not available for %@ value:supported tasks are %@" table:{&stru_100066A98, @"Localizable"}];
      v77 = [v68 language];
      v200 = [NSString localizedStringWithFormat:v76, v69, v77, v70];

      *v219 = NSLocalizedFailureReasonErrorKey;
      *buf = v200;
      v78 = [NSDictionary dictionaryWithObjects:buf forKeys:v219 count:1];
      v71 = [NSError errorWithDomain:@"kLSRErrorDomain" code:3 userInfo:v78];
      v79 = v71;

      v199 = 0;
    }

    v197 = v71;
    if (!v199)
    {
      v96 = [NSBundle bundleForClass:objc_opt_class()];
      v97 = [v96 localizedStringForKey:@"Failed to find task for recognizer" value:&stru_100066A98 table:@"Localizable"];

      if (v197)
      {
        v231[0] = NSLocalizedDescriptionKey;
        v231[1] = NSUnderlyingErrorKey;
        v232[0] = v97;
        v232[1] = v197;
        [NSDictionary dictionaryWithObjects:v232 forKeys:v231 count:2];
      }

      else
      {
        v229 = NSLocalizedDescriptionKey;
        v230 = v97;
        [NSDictionary dictionaryWithObjects:&v230 forKeys:&v229 count:1];
      }
      v198 = ;
      v98 = [NSError errorWithDomain:@"kLSRErrorDomain" code:3 userInfo:v198];
      [(LSRConnection *)self reportFailureWithError:v98];

LABEL_133:
      v57 = v197;
      goto LABEL_134;
    }

    v80 = [(SFRequestParameters *)self->_requestParameters inlineItemList];
    if (!v80 || (-[SFRequestParameters inlineItemList](self->_requestParameters, "inlineItemList"), v81 = objc_claimAutoreleasedReturnValue(), v82 = [v81 count] == 0, v81, v80, v82))
    {
      v90 = objc_loadWeakRetained(&self->_recognizer);
      [v90 setJitProfileData:0];
    }

    else
    {
      v83 = +[NSProcessInfo processInfo];
      [v83 systemUptime];
      v85 = v84;

      v86 = SFLogConnection;
      if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
      {
        v87 = [(SFRequestParameters *)self->_requestParameters inlineItemList];
        v88 = [v87 count];
        *buf = 136315394;
        *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
        *&buf[12] = 2048;
        *&buf[14] = v88;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "%s Inline LME input size=%zu", buf, 0x16u);
      }

      v89 = [(SFRequestParameters *)self->_requestParameters language];
      v90 = [LSRConnection _jitProfileWithLanguage:v89 modelRoot:self->_modelRoot];

      if (v90)
      {
        v91 = [(SFRequestParameters *)self->_requestParameters inlineItemList];
        v92 = [v90 jitProfileFromContextualStrings:v91];

        if (!v92)
        {
          v93 = SFLogConnection;
          if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "%s Failed to build jitData", buf, 0xCu);
          }
        }

        v94 = objc_loadWeakRetained(&self->_recognizer);
        [v94 setJitProfileData:v92];

        v95 = SFLogConnection;
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
          _os_log_debug_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEBUG, "%s Set JIT profile for the request", buf, 0xCu);
        }
      }

      else
      {
        v99 = SFLogConnection;
        if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
          *&buf[12] = 2112;
          *&buf[14] = 0;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_INFO, "%s Failed to build jitProfile with error %@", buf, 0x16u);
        }
      }

      v100 = +[NSProcessInfo processInfo];
      [v100 systemUptime];
      self->_jitLmeProcessingTime = v101 - v85;
    }

    v102 = [(SFRequestParameters *)self->_requestParameters language];
    v103 = qword_100071450;
    qword_100071450 = v102;

    objc_storeStrong(&qword_100071460, self->_modelRoot);
    v104 = [(SFRequestParameters *)self->_requestParameters dynamicLanguageModel];

    if (v104)
    {
      v105 = [(SFRequestParameters *)self->_requestParameters dynamicLanguageModel];
      v106 = [v105 path];
      v107 = [_EARArtifact isValid:v106];

      if (v107)
      {
        v108 = [_EARAppLmArtifact alloc];
        v109 = [(SFRequestParameters *)self->_requestParameters dynamicLanguageModel];
        v110 = [v109 path];
        v201 = [v108 initWithPath:v110];

        if (v201)
        {
          v111 = objc_loadWeakRetained(&self->_recognizer);
          v112 = [v111 modelInfo];
          v113 = [v112 version];
          v114 = objc_loadWeakRetained(&self->_recognizer);
          v115 = [v114 modelInfo];
          v116 = [v115 language];
          v117 = [v201 isAdaptableToSpeechModelVersion:v113 locale:v116];

          if (v117)
          {
            v118 = [v201 loadLmHandle];
            v119 = SFLogConnection;
            v120 = os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO);
            if (v118)
            {
              if (v120)
              {
                requestParameters = self->_requestParameters;
                v122 = v119;
                v123 = [(SFRequestParameters *)requestParameters dynamicLanguageModel];
                v124 = [v123 path];
                *buf = 136315394;
                *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
                *&buf[12] = 2112;
                *&buf[14] = v124;
                _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_INFO, "%s Loaded Dynamic LM: %@", buf, 0x16u);
              }

              v228 = v118;
              v198 = [NSArray arrayWithObjects:&v228 count:1];
            }

            else
            {
              if (v120)
              {
                *buf = 136315138;
                *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
                _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_INFO, "%s Failed to load Dynamic LM from Artifact", buf, 0xCu);
              }

              v198 = &__NSArray0__struct;
            }

            goto LABEL_91;
          }

          v130 = SFLogConnection;
          if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
          {
            v131 = self->_requestParameters;
            v132 = v130;
            v133 = [(SFRequestParameters *)v131 dynamicLanguageModel];
            v134 = [v133 path];
            *buf = 136315394;
            *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
            *&buf[12] = 2112;
            *&buf[14] = v134;
            _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_INFO, "%s Dynamic LM at %@ was out of sync with current asset", buf, 0x16u);
          }
        }

        v198 = &__NSArray0__struct;
LABEL_91:

        goto LABEL_92;
      }

      v125 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
      {
        v126 = self->_requestParameters;
        v127 = v125;
        v128 = [(SFRequestParameters *)v126 dynamicLanguageModel];
        v129 = [v128 path];
        *buf = 136315394;
        *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
        *&buf[12] = 2112;
        *&buf[14] = v129;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_INFO, "%s Dynamic LM at %@ was not valid", buf, 0x16u);
      }
    }

    v198 = &__NSArray0__struct;
LABEL_92:
    v135 = objc_loadWeakRetained(&self->_recognizer);
    [v135 setExtraLmList:v198];

    v136 = [(SFRequestParameters *)self->_requestParameters dynamicVocabulary];

    if (v136)
    {
      v137 = [(SFRequestParameters *)self->_requestParameters dynamicVocabulary];
      v138 = [v137 path];
      v139 = [NSData dataWithContentsOfFile:v138];

      if (v139)
      {
        v140 = SFLogConnection;
        if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
        {
          v141 = self->_requestParameters;
          v142 = v140;
          v143 = [(SFRequestParameters *)v141 dynamicVocabulary];
          v144 = [v143 path];
          *buf = 136315394;
          *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
          *&buf[12] = 2112;
          *&buf[14] = v144;
          _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_INFO, "%s Loaded Dynamic Vocab: %@", buf, 0x16u);
        }

        v145 = objc_loadWeakRetained(&self->_recognizer);
        [v145 setUserProfileData:v139];
      }
    }

    else
    {
      v139 = objc_loadWeakRetained(&self->_recognizer);
      [v139 setUserProfileData:0];
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v225 = sub_100005B78;
    v226 = sub_100005B88;
    v227 = 0;
    v212[0] = _NSConcreteStackBlock;
    v212[1] = 3221225472;
    v212[2] = sub_100043524;
    v212[3] = &unk_100066468;
    v212[4] = self;
    v212[5] = buf;
    v193 = objc_retainBlock(v212);
    v146 = [(SFRequestParameters *)self->_requestParameters task];
    v147 = [(SFRequestParameters *)self->_requestParameters taskIdentifier];
    v148 = v146;
    v149 = v147;
    if ([v148 isEqualToString:kSFSpeechRecognizerTaskCaptioning] && (objc_msgSend(v149, "isEqualToString:", kSFSpeechRecognizerTaskIdentifierCallScreening) & 1) != 0 || (objc_msgSend(v148, "isEqualToString:", kSFSpeechRecognizerTaskVoiceMail) & 1) != 0)
    {
      v150 = 1;
    }

    else
    {
      v151 = +[MCProfileConnection sharedConnection];
      v150 = [v151 effectiveBoolValueForSetting:MCFeatureAssistantProfanityFilterForced] == 1;
    }

    v152 = SFLogConnection;
    if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
    {
      *v219 = 136315394;
      *&v219[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
      v220 = 1024;
      LODWORD(v221) = v150;
      _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_INFO, "%s Censor Speech enabled: %d", v219, 0x12u);
    }

    if (v150)
    {
      v194 = (v193[2])();
    }

    else
    {
      v194 = 0;
    }

    v153 = objc_loadWeakRetained(&self->_recognizer);
    [v153 setRecognitionReplacements:v194];

    if ([v199 isEqualToString:kSFSpeechRecognizerTaskVoiceMail])
    {
      v154 = VoicemailConfidenceSubtractionForLanguage(self->_modelRoot);
      if (!v154)
      {
        v155 = (v193[2])();
        v154 = EtiquetteConfidenceSubtraction(v155);
      }

      v156 = objc_loadWeakRetained(&self->_recognizer);
      [v156 setRecognitionConfidenceSubtraction:v154];
    }

    else
    {
      v154 = objc_loadWeakRetained(&self->_recognizer);
      [v154 setRecognitionConfidenceSubtraction:&__NSDictionary0__struct];
    }

    v157 = objc_loadWeakRetained(&self->_recognizer);
    v196 = [v157 activeConfiguration];

    v202 = [v196 copy];
    v158 = [v202 farFieldFilter];
    LOBYTE(v157) = v158 == 0;

    if ((v157 & 1) == 0)
    {
      v159 = [v202 farFieldFilter];
      v160 = [v159 setByAddingObject:&__kCFBooleanFalse];
      [v202 setFarFieldFilter:v160];
    }

    v161 = [v202 samplingRateFilter];
    v162 = v161 == 0;

    if (!v162)
    {
      v163 = [v202 samplingRateFilter];
      v164 = [NSNumber numberWithUnsignedInteger:v195];
      v165 = [v163 setByAddingObject:v164];
      [v202 setSamplingRateFilter:v165];
    }

    v166 = [v202 taskTypeFilter];
    v167 = v166 == 0;

    if (!v167)
    {
      v168 = [v202 taskTypeFilter];
      v169 = [v168 setByAddingObject:v199];
      [v202 setTaskTypeFilter:v169];
    }

    v170 = [v202 atypicalSpeechFilter];
    v171 = v170 == 0;

    if (!v171)
    {
      v172 = [v202 atypicalSpeechFilter];
      v173 = [v172 setByAddingObject:&__kCFBooleanFalse];
      [v202 setAtypicalSpeechFilter:v173];
    }

    [v202 setDeviceIdFilter:0];
    v174 = SFLogConnection;
    if (os_log_type_enabled(v174, OS_LOG_TYPE_INFO))
    {
      v175 = sub_1000436D8(v196);
      v176 = sub_1000436D8(v202);
      *v219 = 136315650;
      *&v219[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
      v220 = 2112;
      v221 = v175;
      v222 = 2112;
      v223 = v176;
      _os_log_impl(&_mh_execute_header, v174, OS_LOG_TYPE_INFO, "%s Changing active configuration from \n%@ to \n%@", v219, 0x20u);
    }

    v177 = objc_loadWeakRetained(&self->_recognizer);
    [v177 setActiveConfiguration:v202];

    v178 = objc_loadWeakRetained(&self->_recognizer);
    v179 = [(SFRequestParameters *)self->_requestParameters language];
    v180 = [v178 runRecognitionWithResultStream:self language:v179 task:v199 samplingRate:v195];
    audioBuffer = self->_audioBuffer;
    self->_audioBuffer = v180;

    objc_storeStrong(&qword_100071430, self->_audioBuffer);
    v182 = +[NSProcessInfo processInfo];
    [v182 systemUptime];
    self->_asrInitializationTime = v183 - v48;

    v184 = SFAnalyticsEventTypeGetName();
    v207 = _NSConcreteStackBlock;
    v208 = 3221225472;
    v209 = sub_1000437D4;
    v210 = &unk_100066490;
    v211 = self;
    AnalyticsSendEventLazy();

    v205 = 0u;
    v206 = 0u;
    v203 = 0u;
    v204 = 0u;
    v185 = self->_bufferedAudioPackets;
    v186 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v203 objects:v218 count:16];
    if (v186)
    {
      v187 = *v204;
      do
      {
        for (j = 0; j != v186; j = j + 1)
        {
          if (*v204 != v187)
          {
            objc_enumerationMutation(v185);
          }

          v189 = *(*(&v203 + 1) + 8 * j);
          v190 = [v189 length];
          v191 = self->_audioBuffer;
          v192 = v189;
          -[_EARSpeechRecognitionAudioBuffer addAudioSamples:count:](v191, "addAudioSamples:count:", [v189 bytes], v190 >> 1);
          [(LSRConnection *)self updateAudioDuration:v189];
        }

        v186 = [(NSMutableArray *)v185 countByEnumeratingWithState:&v203 objects:v218 count:16];
      }

      while (v186);
    }

    [(NSMutableArray *)self->_bufferedAudioPackets removeAllObjects];
    if (self->_bufferedAudioEnded)
    {
      [(_EARSpeechRecognitionAudioBuffer *)self->_audioBuffer endAudio];
      self->_bufferedAudioEnded = 0;
    }

    +[LSRConnection _cancelCooldownTimer];

    _Block_object_dispose(buf, 8);
    goto LABEL_133;
  }

LABEL_21:
  v22 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
    *&buf[12] = 2112;
    *&buf[14] = v17;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Error: %@", buf, 0x16u);
  }

  [(LSRConnection *)self reportFailureWithError:v17];
LABEL_24:
}

- (void)preloadRecognizerForLanguage:(id)a3 task:(id)a4 clientID:(id)a5 recognitionOverrides:(id)a6 modelOverrideURL:(id)a7 completion:(id)a8
{
  v14 = a8;
  v19 = 0;
  LOBYTE(a6) = [(LSRConnection *)self prepareRecognizerWithLanguage:a3 recognitionOverrides:a6 modelOverrideURL:a7 anyConfiguration:1 task:a4 clientID:a5 error:&v19];
  v15 = v19;
  v16 = 0;
  if ((a6 & 1) == 0)
  {
    v17 = SFLogConnection;
    v18 = os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR);
    v16 = v15;
    if (v18)
    {
      *buf = 136315394;
      v21 = "[LSRConnection preloadRecognizerForLanguage:task:clientID:recognitionOverrides:modelOverrideURL:completion:]";
      v22 = 2112;
      v23 = v15;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Failed to prepare recognizer in advance: %@", buf, 0x16u);
      v16 = v15;
    }
  }

  (v14)[2](v14, v16);
}

- (id)_requestContext
{
  v3 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    requestParameters = self->_requestParameters;
    v5 = v3;
    v6 = [(SFRequestParameters *)requestParameters language];
    v7 = [(SFRequestParameters *)self->_requestParameters task];
    v8 = [(SFRequestParameters *)self->_requestParameters taskIdentifier];
    v9 = [(SFRequestParameters *)self->_requestParameters narrowband];
    v10 = [(SFRequestParameters *)self->_requestParameters applicationName];
    v11 = [(SFRequestParameters *)self->_requestParameters enableAutoPunctuation];
    *buf = 136316674;
    v34 = "[LSRConnection _requestContext]";
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v7;
    v39 = 2112;
    v40 = v8;
    v41 = 1024;
    v42 = v9;
    v43 = 2112;
    v44 = v10;
    v45 = 1024;
    v46 = v11;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s RequestContext: language:%@ task:%@ taskIdentifier:%@ narrowband:%d appname:%@ enableAutoPunctuation:%d", buf, 0x40u);
  }

  v12 = [(SFRequestParameters *)self->_requestParameters language];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"none";
  }

  v32[0] = v14;
  v31[1] = kSFCoreAnalyticsTaskKey;
  v15 = [(SFRequestParameters *)self->_requestParameters task];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = @"none";
  }

  v32[1] = v17;
  v31[2] = kSFCoreAnalyticsTaskIdentifierKey;
  v18 = [(SFRequestParameters *)self->_requestParameters taskIdentifier];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = @"none";
  }

  v32[2] = v20;
  v31[3] = kSFCoreAnalyticsNarrowbandKey;
  v21 = [NSNumber numberWithBool:[(SFRequestParameters *)self->_requestParameters narrowband]];
  v32[3] = v21;
  v31[4] = kSFCoreAnalyticsAppnameKey;
  v22 = [(SFRequestParameters *)self->_requestParameters applicationName];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = @"none";
  }

  v32[4] = v24;
  v32[5] = &__kCFBooleanTrue;
  v31[5] = kSFCoreAnalyticsOndeviceKey;
  v31[6] = kSFCoreAnalyticsUsesCustomLmKey;
  v25 = [(SFRequestParameters *)self->_requestParameters dynamicLanguageModel];
  v26 = [NSNumber numberWithInt:v25 != 0];
  v32[6] = v26;
  v31[7] = kSFCoreAnalyticsUsesCustomVocabKey;
  v27 = [(SFRequestParameters *)self->_requestParameters dynamicVocabulary];
  v28 = [NSNumber numberWithInt:v27 != 0];
  v31[8] = kSFCoreAnalyticsAPIVersionKey;
  v32[7] = v28;
  v32[8] = &off_100067438;
  v29 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:9];

  return v29;
}

- (BOOL)_callerHasWritePriviledge:(id)a3
{
  v4 = a3;
  [(LSRConnection *)self _auditToken];
  v5 = sandbox_check_by_audit_token();
  v6 = SFLogConnection;
  v7 = os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      *buf = 136315394;
      v11 = "[LSRConnection _callerHasWritePriviledge:]";
      v12 = 2112;
      v13 = v4;
      v8 = "%s Caller does not have write priviledges for: %@";
LABEL_7:
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, v8, buf, 0x16u);
    }
  }

  else if (v7)
  {
    *buf = 136315394;
    v11 = "[LSRConnection _callerHasWritePriviledge:]";
    v12 = 2112;
    v13 = v4;
    v8 = "%s Caller has write priviledges for: %@";
    goto LABEL_7;
  }

  return v5 == 0;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)_auditToken
{
  result = self->_connection;
  if (result)
  {
    return [($115C4C562B26FF47E01F9F4EA65B5887 *)result auditToken];
  }

  *retstr->var0 = 0u;
  *&retstr->var0[4] = 0u;
  return result;
}

- (BOOL)_consumeSandboxExtensions:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v33 = "[LSRConnection _consumeSandboxExtensions:error:]";
    v34 = 2112;
    v35 = v6;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Consuming sandbox extensions: %@", buf, 0x16u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = *v26;
  while (2)
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v8);
      }

      [*(*(&v25 + 1) + 8 * i) UTF8String];
      v13 = sandbox_extension_consume();
      if (v13 < 0)
      {
        v16 = SFLogConnection;
        if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
        {
          v22 = v16;
          v23 = __error();
          v24 = strerror(*v23);
          *buf = 136315394;
          v33 = "[LSRConnection _consumeSandboxExtensions:error:]";
          v34 = 2080;
          v35 = v24;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%s Error consuming sandbox extension: %s", buf, 0x16u);

          if (!a4)
          {
            goto LABEL_15;
          }
        }

        else if (!a4)
        {
          goto LABEL_15;
        }

        v29[0] = NSLocalizedDescriptionKey;
        v17 = __error();
        v18 = [NSString stringWithFormat:@"Error consuming sandbox extension: %s", strerror(*v17)];
        v30[0] = v18;
        v29[1] = NSUnderlyingErrorKey;
        v19 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
        v30[1] = v19;
        v20 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
        *a4 = [NSError errorWithDomain:@"kLSRErrorDomain" code:1 userInfo:v20];

        LOBYTE(a4) = 0;
        goto LABEL_15;
      }

      consumedSandboxExtensions = self->_consumedSandboxExtensions;
      v15 = [NSNumber numberWithLongLong:v13];
      [(NSMutableArray *)consumedSandboxExtensions addObject:v15];
    }

    v10 = [v8 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_11:
  LOBYTE(a4) = 1;
LABEL_15:

  return a4;
}

- (LSRConnection)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v30.receiver = self;
  v30.super_class = LSRConnection;
  v6 = [(LSRConnection *)&v30 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    v8 = objc_alloc_init(NSMutableArray);
    bufferedAudioPackets = v7->_bufferedAudioPackets;
    v7->_bufferedAudioPackets = v8;

    v10 = objc_alloc_init(SFRequestParameters);
    requestParameters = v7->_requestParameters;
    v7->_requestParameters = v10;

    v12 = objc_opt_new();
    earInterface = v7->_earInterface;
    v7->_earInterface = v12;

    v14 = +[_TtC22localspeechrecognition31AssistantAssetDelegateInterface sharedInstance];
    assistantAssetDelegateInterface = v7->_assistantAssetDelegateInterface;
    v7->_assistantAssetDelegateInterface = v14;

    v16 = +[_TtC22localspeechrecognition32GeneralASRAssetDelegateInterface sharedInstance];
    generalASRAssetDelegateInterface = v7->_generalASRAssetDelegateInterface;
    v7->_generalASRAssetDelegateInterface = v16;

    [(NSXPCConnection *)v7->_connection _setQueue:qword_100071428];
    signal(15, 1);
    v18 = dispatch_get_global_queue(21, 0);
    sigterm_queue = v7->sigterm_queue;
    v7->sigterm_queue = v18;

    v20 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v7->sigterm_queue);
    sigterm_source = v7->sigterm_source;
    v7->sigterm_source = v20;

    dispatch_source_set_event_handler(v7->sigterm_source, &stru_100066360);
    dispatch_activate(v7->sigterm_source);
    objc_initWeak(&location, v7);
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_100045294;
    v27 = &unk_100066388;
    objc_copyWeak(&v28, &location);
    v22 = objc_retainBlock(&v24);
    [v5 setInterruptionHandler:{v22, v24, v25, v26, v27}];
    [v5 setInvalidationHandler:v22];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v7;
}

+ (BOOL)isEuclidAvailableForConfigPath:(id)a3
{
  v3 = a3;
  v4 = [SFEntitledAssetManager jsonFilenameForAssetType:3];
  v5 = [v3 stringByAppendingPathComponent:v4];

  v6 = +[NSFileManager defaultManager];
  LOBYTE(v4) = [v6 fileExistsAtPath:v5];

  if (v4)
  {
    v7 = [LSRSpeechAssets assetConfigParameters:v5];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"euclid"];
      v10 = v9 != 0;
      if (!v9)
      {
        v11 = SFLogConnection;
        if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
        {
          v15 = 136315138;
          v16 = "+[LSRConnection isEuclidAvailableForConfigPath:]";
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Failed to find Euclid on installed assets for device", &v15, 0xCu);
        }
      }
    }

    else
    {
      v13 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315138;
        v16 = "+[LSRConnection isEuclidAvailableForConfigPath:]";
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed to read json config parameters for device's assets", &v15, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v12 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "+[LSRConnection isEuclidAvailableForConfigPath:]";
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s Failed to find asset config parameters", &v15, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

+ (void)completionWithEuclidErrorWithDescription:(id)a3 configPath:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"%@ Config Path: %@" value:&stru_100066A98 table:@"Localizable"];
  v12 = [NSString localizedStringWithFormat:v11, v9, v8];

  v20 = NSLocalizedDescriptionKey;
  v21 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v14 = [NSError errorWithDomain:@"kLSRErrorDomain" code:101 userInfo:v13];

  v15 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "+[LSRConnection completionWithEuclidErrorWithDescription:configPath:completion:]";
    v18 = 2112;
    v19 = v14;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v7)
  {
LABEL_3:
    v7[2](v7, v14);
  }

LABEL_4:
}

+ (void)_cachedRecognizerCleanUp
{
  v2 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v13 = 136315138;
    v14 = "+[LSRConnection _cachedRecognizerCleanUp]";
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s _cachedRecognizerCleanUp", &v13, 0xCu);
  }

  v3 = qword_100071468;
  v4 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForNothing];
  [v3 setActiveConfiguration:v4];

  v5 = qword_100071468;
  qword_100071468 = 0;

  v6 = qword_100071450;
  qword_100071450 = 0;

  v7 = qword_100071460;
  qword_100071460 = 0;

  v8 = qword_100071470;
  qword_100071470 = 0;

  v9 = qword_100071458;
  qword_100071458 = 0;

  v10 = qword_100071478;
  qword_100071478 = 0;

  v11 = qword_100071480;
  qword_100071480 = 0;

  v12 = +[SFEntitledAssetManager sharedInstance];
  [v12 releaseAssetSets];
}

+ (void)_cooldownTimerFired
{
  dispatch_assert_queue_V2(qword_100071428);
  v3 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315138;
    v5 = "+[LSRConnection _cooldownTimerFired]";
    _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s _cooldownTimerFired", &v4, 0xCu);
  }

  +[LSRConnection _cachedRecognizerCleanUp];
  [a1 _cancelCooldownTimer];
}

+ (void)_cancelCooldownTimer
{
  dispatch_assert_queue_V2(qword_100071428);
  v2 = qword_100071488;
  if (qword_100071488)
  {
    v3 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
    {
      v5 = 136315138;
      v6 = "+[LSRConnection _cancelCooldownTimer]";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s _cancelCooldownTimer", &v5, 0xCu);
      v2 = qword_100071488;
    }

    dispatch_source_cancel(v2);
    v4 = qword_100071488;
    qword_100071488 = 0;
  }
}

+ (void)_scheduleCooldownTimer
{
  dispatch_assert_queue_V2(qword_100071428);
  [a1 _cancelCooldownTimer];
  if (!qword_100071488)
  {
    v3 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315138;
      v9 = "+[LSRConnection _scheduleCooldownTimer]";
      _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%s _scheduleCooldownTimer", &v8, 0xCu);
    }

    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, qword_100071428);
    v5 = qword_100071488;
    qword_100071488 = v4;

    dispatch_source_set_event_handler(qword_100071488, &stru_100066500);
    v6 = qword_100071488;
    v7 = dispatch_time(0, 1000000000 * kCooldownTimerIntervalSeconds);
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(qword_100071488);
  }
}

+ (id)_jitProfileWithLanguage:(id)a3 modelRoot:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    if ([qword_100071450 isEqualToString:v5])
    {
      v7 = qword_100071458 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7 || ![qword_100071460 isEqualToString:v6])
    {
      v10 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136315650;
        v18 = "+[LSRConnection _jitProfileWithLanguage:modelRoot:]";
        v19 = 2112;
        v20 = v5;
        v21 = 2112;
        v22 = v6;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Initialized a new JIT profile builder for language=%@ modelRoot=%@", &v17, 0x20u);
      }

      v11 = [v6 stringByAppendingPathComponent:@"mini.json"];
      v12 = [v6 stringByAppendingPathComponent:@"ncs"];
      v13 = [[_EARJitProfile alloc] initWithConfiguration:v11 ncsRoot:v12 language:v5];
      v14 = qword_100071458;
      qword_100071458 = v13;

      v9 = qword_100071458;
    }

    else
    {
      v8 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136315650;
        v18 = "+[LSRConnection _jitProfileWithLanguage:modelRoot:]";
        v19 = 2112;
        v20 = v5;
        v21 = 2112;
        v22 = v6;
        _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Using cached JIT profile builder for language=%@ modelRoot=%@", &v17, 0x20u);
      }

      v9 = qword_100071458;
    }
  }

  else
  {
    v15 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315138;
      v18 = "+[LSRConnection _jitProfileWithLanguage:modelRoot:]";
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Could not locate asset", &v17, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)processStartTimeOnce
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100005B78;
  v9 = sub_100005B88;
  v10 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000464F0;
  block[3] = &unk_100066410;
  block[4] = &v5;
  if (qword_100071448 != -1)
  {
    dispatch_once(&qword_100071448, block);
  }

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

@end