@interface LSRConnection
+ (BOOL)isEuclidAvailableForConfigPath:(id)path;
+ (id)_jitProfileWithLanguage:(id)language modelRoot:(id)root;
+ (id)processStartTimeOnce;
+ (void)_cachedRecognizerCleanUp;
+ (void)_cancelCooldownTimer;
+ (void)_cooldownTimerFired;
+ (void)_scheduleCooldownTimer;
+ (void)captureProcessStartTime;
+ (void)completionWithEuclidErrorWithDescription:(id)description configPath:(id)path completion:(id)completion;
+ (void)initialize;
- ($115C4C562B26FF47E01F9F4EA65B5887)_auditToken;
- (BOOL)_callerHasWritePriviledge:(id)priviledge;
- (BOOL)_consumeSandboxExtensions:(id)extensions error:(id *)error;
- (LSRConnection)initWithXPCConnection:(id)connection;
- (id)_requestContext;
- (void)addAudioPacket:(id)packet;
- (void)addProns:(id)prons forWord:(id)word completion:(id)completion;
- (void)addSentenceToNgramCounts:(id)counts;
- (void)addSentenceToNgramCounts:(id)counts completion:(id)completion;
- (void)appLmNeedsRebuild:(id)rebuild language:(id)language sandboxExtensions:(id)extensions completion:(id)completion;
- (void)cancelSpeech;
- (void)cleanupCacheWithCompletion:(id)completion;
- (void)configParametersForVoicemailWithLanguage:(id)language clientID:(id)d completion:(id)completion;
- (void)createNgramCountsArtifactFromPhraseCountArtifact:(id)artifact writeToDirectory:(id)directory sandboxExtensions:(id)extensions completion:(id)completion;
- (void)createPhraseCountsArtifactWithIdentifier:(id)identifier rawPhraseCountsPath:(id)path customPronunciationsPath:(id)pronunciationsPath writeToDirectory:(id)directory sandboxExtensions:(id)extensions completion:(id)completion;
- (void)dealloc;
- (void)deserializeNgramCountsData:(id)data completion:(id)completion;
- (void)downloadAssetsForConfig:(id)config clientID:(id)d expiration:(id)expiration detailedProgress:(BOOL)progress;
- (void)fetchAssetsForLanguage:(id)language clientID:(id)d completion:(id)completion;
- (void)generateNgramCountsSerializeDataWithCompletion:(id)completion;
- (void)initializeLmWithAssetPath:(id)path completion:(id)completion;
- (void)initializeLmWithLocale:(id)locale clientID:(id)d completion:(id)completion;
- (void)initializeWithSandboxExtensions:(id)extensions;
- (void)installationStateForAssetConfig:(id)config clientID:(id)d completion:(id)completion;
- (void)installedLanguagesForAssetType:(unint64_t)type completion:(id)completion;
- (void)lmeThresholdWithCompletion:(id)completion;
- (void)logCoreAnalyticsEvent:(id)event withAnalytics:(id)analytics;
- (void)metricsWithCompletion:(id)completion;
- (void)oovWordsAndFrequenciesWithCompletion:(id)completion;
- (void)pathToAssetWithConfig:(id)config clientID:(id)d completion:(id)completion;
- (void)preloadRecognizerForLanguage:(id)language task:(id)task clientID:(id)d recognitionOverrides:(id)overrides modelOverrideURL:(id)l completion:(id)completion;
- (void)reportFailureWithError:(id)error;
- (void)setPurgeabilityForAssetWithConfig:(id)config purgeable:(BOOL)purgeable clientID:(id)d completion:(id)completion;
- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error;
- (void)speechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration;
- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultPackage:(id)package;
- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result;
- (void)startRecordedAudioDictationWithParameters:(id)parameters;
- (void)stopSpeech;
- (void)subscriptionsForClientId:(id)id completion:(id)completion;
- (void)supportedLanguagesForAssetType:(unint64_t)type completion:(id)completion;
- (void)synchronousComputeEuclidEmbeddingsForSources:(id)sources completion:(id)completion;
- (void)synchronousCreateEuclidInstanceForLanguageStr:(id)str clientID:(id)d inputFormat:(int64_t)format loadingOption:(int64_t)option completion:(id)completion;
- (void)synchronousEuclidConfigPathForLanguageStr:(id)str completion:(id)completion;
- (void)synchronousEuclidNearestNeighborsForSource:(id)source numberOfNeighbors:(id)neighbors completion:(id)completion;
- (void)trainAppLmFromNgramCountsArtifact:(id)artifact forApp:(id)app language:(id)language writeToDirectory:(id)directory sandboxExtensions:(id)extensions completion:(id)completion;
- (void)trainAppLmFromNgramsSerializedData:(id)data customPronsData:(id)pronsData language:(id)language writeToDirectory:(id)directory sandboxExtension:(id)extension completion:(id)completion;
- (void)trainFromPlainTextAndWriteToDirectory:(id)directory sandboxExtension:(id)extension completion:(id)completion;
- (void)updateAudioDuration:(id)duration;
- (void)versionOfAssetWithConfig:(id)config clientID:(id)d completion:(id)completion;
- (void)wakeUpWithCompletion:(id)completion;
@end

@implementation LSRConnection

+ (void)initialize
{
  if (objc_opt_class() == self)
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
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "%s %@ deallocating", buf, 0x16u);
  }

  v5.receiver = self;
  v5.super_class = LSRConnection;
  [(LSRConnection *)&v5 dealloc];
}

- (void)speechRecognizer:(id)recognizer didProcessAudioDuration:(double)duration
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10003AFD8;
  v4[3] = &unk_100066950;
  v4[4] = self;
  *&v4[5] = duration;
  dispatch_async(qword_100071428, v4);
}

- (void)speechRecognizer:(id)recognizer didFinishRecognitionWithError:(id)error
{
  recognizerCopy = recognizer;
  errorCopy = error;
  v8 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B0F8;
  block[3] = &unk_100066900;
  v12 = errorCopy;
  selfCopy = self;
  v14 = recognizerCopy;
  v9 = recognizerCopy;
  v10 = errorCopy;
  dispatch_async(v8, block);
}

- (void)speechRecognizer:(id)recognizer didRecognizeFinalResultPackage:(id)package
{
  recognizerCopy = recognizer;
  packageCopy = package;
  v8 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003BD94;
  block[3] = &unk_100066900;
  block[4] = self;
  v12 = packageCopy;
  v13 = recognizerCopy;
  v9 = recognizerCopy;
  v10 = packageCopy;
  dispatch_async(v8, block);
}

- (void)speechRecognizer:(id)recognizer didRecognizePartialResult:(id)result
{
  resultCopy = result;
  v6 = qword_100071428;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10003C31C;
  v8[3] = &unk_1000664B8;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(v6, v8);
}

- (void)synchronousEuclidConfigPathForLanguageStr:(id)str completion:(id)completion
{
  completionCopy = completion;
  strCopy = str;
  v6 = [[SFEntitledAssetConfig alloc] initWithLanguage:strCopy assetType:3];

  v7 = +[SFEntitledAssetManager sharedInstance];
  v8 = [v7 installedAssetWithConfig:v6];

  if (!completionCopy || v8)
  {
    v9 = [SFEntitledAssetManager jsonFilenameForAssetType:3];
    v10 = [v8 stringByAppendingPathComponent:v9];

    v11 = [LSRConnection isEuclidAvailableForConfigPath:v8];
    if (!completionCopy || v11)
    {
      v12 = completionCopy;
      v13 = v10;
    }

    else
    {
      v12 = completionCopy;
      v13 = 0;
    }

    (*(completionCopy + 2))(v12, v13);
  }

  else
  {
    (*(completionCopy + 2))();
  }
}

- (void)synchronousEuclidNearestNeighborsForSource:(id)source numberOfNeighbors:(id)neighbors completion:(id)completion
{
  sourceCopy = source;
  neighborsCopy = neighbors;
  completionCopy = completion;
  euclidInstance = self->_euclidInstance;
  if (euclidInstance)
  {
    v12 = -[_EAREuclid findNearestNeighbors:numberOfNeighbors:](euclidInstance, "findNearestNeighbors:numberOfNeighbors:", sourceCopy, [neighborsCopy intValue]);
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
    completionCopy[2](completionCopy, v16, v17);
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

    completionCopy[2](completionCopy, 0, 0);
  }
}

- (void)synchronousComputeEuclidEmbeddingsForSources:(id)sources completion:(id)completion
{
  sourcesCopy = sources;
  completionCopy = completion;
  euclidInstance = self->_euclidInstance;
  if (euclidInstance)
  {
    v9 = [(_EAREuclid *)euclidInstance computeEmbeddings:sourcesCopy];
    completionCopy[2](completionCopy, v9);
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

    completionCopy[2](completionCopy, 0);
  }
}

- (void)synchronousCreateEuclidInstanceForLanguageStr:(id)str clientID:(id)d inputFormat:(int64_t)format loadingOption:(int64_t)option completion:(id)completion
{
  strCopy = str;
  dCopy = d;
  completionCopy = completion;
  v15 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v29 = "[LSRConnection synchronousCreateEuclidInstanceForLanguageStr:clientID:inputFormat:loadingOption:completion:]";
    v30 = 2112;
    v31 = strCopy;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%s Initializing _EAREuclid instance for languageStr: %@", buf, 0x16u);
  }

  v27 = 0;
  v16 = [LSRConnection modelRootWithLanguage:strCopy assetType:3 clientID:dCopy modelOverrideURL:0 isSpelling:0 error:&v27];
  v17 = v27;
  if (v16)
  {
    v26 = dCopy;
    selfCopy = self;
    optionCopy = option;
    v20 = [SFEntitledAssetManager jsonFilenameForAssetType:3];
    v21 = [v16 stringByAppendingPathComponent:v20];

    if ([LSRConnection isEuclidAvailableForConfigPath:v16])
    {
      v22 = [[_EAREuclid alloc] initWithConfiguration:v21 euclidEncoderType:format initFlag:optionCopy language:strCopy];
      euclidInstance = selfCopy->_euclidInstance;
      selfCopy->_euclidInstance = v22;

      if (selfCopy->_euclidInstance)
      {
        dCopy = v26;
        if (completionCopy)
        {
          completionCopy[2](completionCopy, 0);
        }

        goto LABEL_14;
      }

      v25 = @"Failed to initialize _EAREuclid instance.";
    }

    else
    {
      v25 = @"Euclid not available on this device for this locale.";
    }

    [LSRConnection completionWithEuclidErrorWithDescription:v25 configPath:v21 completion:completionCopy];
    dCopy = v26;
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
    if (!completionCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (completionCopy)
  {
LABEL_10:
    (completionCopy)[2](completionCopy, v17);
  }

LABEL_15:
}

- (void)subscriptionsForClientId:(id)id completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v7 = [SFEntitledAssetManager subscriptionsForSubscriberId:id];
    (*(completion + 2))(completionCopy, v7);
  }
}

- (void)appLmNeedsRebuild:(id)rebuild language:(id)language sandboxExtensions:(id)extensions completion:(id)completion
{
  rebuildCopy = rebuild;
  languageCopy = language;
  extensionsCopy = extensions;
  completionCopy = completion;
  v14 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[LSRConnection appLmNeedsRebuild:language:sandboxExtensions:completion:]";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Checking if app LM needs a rebuild", buf, 0xCu);
  }

  v22 = 0;
  v15 = [(LSRConnection *)self _consumeSandboxExtensions:extensionsCopy error:&v22];
  v16 = v22;
  if (v15)
  {
    lsrLanguageModel = self->_lsrLanguageModel;
    v21 = 0;
    v18 = [(LSRLanguageModel *)lsrLanguageModel appLmNeedsRebuild:rebuildCopy language:languageCopy error:&v21];
    v19 = v21;
    completionCopy[2](completionCopy, v18, v19);
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

    completionCopy[2](completionCopy, 1, v16);
  }
}

- (void)trainAppLmFromNgramCountsArtifact:(id)artifact forApp:(id)app language:(id)language writeToDirectory:(id)directory sandboxExtensions:(id)extensions completion:(id)completion
{
  artifactCopy = artifact;
  appCopy = app;
  languageCopy = language;
  directoryCopy = directory;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10003D318;
  v41[3] = &unk_100066860;
  completionCopy = completion;
  v42 = completionCopy;
  extensionsCopy = extensions;
  v18 = objc_retainBlock(v41);
  v19 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v44 = "[LSRConnection trainAppLmFromNgramCountsArtifact:forApp:language:writeToDirectory:sandboxExtensions:completion:]";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s Starting training of App LM from ngram count.", buf, 0xCu);
  }

  v40 = 0;
  languageCopy = [(LSRConnection *)self _consumeSandboxExtensions:extensionsCopy error:&v40, languageCopy];

  v21 = v40;
  v22 = SFLogConnection;
  if (languageCopy)
  {
    v23 = artifactCopy;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v44 = "[LSRConnection trainAppLmFromNgramCountsArtifact:forApp:language:writeToDirectory:sandboxExtensions:completion:]";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s Successfully consumed sandbox extensions", buf, 0xCu);
    }

    v24 = [directoryCopy URLByAppendingPathComponent:@"AppLmModelFile"];
    v25 = [directoryCopy URLByAppendingPathComponent:@"SpeechProfile"];
    v26 = +[NSFileManager defaultManager];
    [v26 removeItemAtURL:v24 error:0];

    v27 = +[NSFileManager defaultManager];
    [v27 removeItemAtURL:v25 error:0];

    lsrLanguageModel = self->_lsrLanguageModel;
    v38 = v25;
    v39 = v24;
    artifactCopy = v23;
    v29 = v23;
    v31 = v36;
    v30 = appCopy;
    [(LSRLanguageModel *)lsrLanguageModel trainAppLmFromNgramCountsArtifact:v29 forApp:appCopy language:v36 appLmArtifact:&v39 vocabFile:&v38];
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
    v30 = appCopy;
  }
}

- (void)createNgramCountsArtifactFromPhraseCountArtifact:(id)artifact writeToDirectory:(id)directory sandboxExtensions:(id)extensions completion:(id)completion
{
  artifactCopy = artifact;
  directoryCopy = directory;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10003D574;
  v20[3] = &unk_100066888;
  completionCopy = completion;
  v21 = completionCopy;
  extensionsCopy = extensions;
  v14 = objc_retainBlock(v20);
  v19 = 0;
  v15 = [(LSRConnection *)self _consumeSandboxExtensions:extensionsCopy error:&v19];

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

    v18 = [directoryCopy URLByAppendingPathComponent:@"NgramCountsFile" isDirectory:0];
    [(LSRLanguageModel *)self->_lsrLanguageModel createNgramCountsArtifactFromPhraseCountArtifact:artifactCopy saveTo:v18];
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

- (void)createPhraseCountsArtifactWithIdentifier:(id)identifier rawPhraseCountsPath:(id)path customPronunciationsPath:(id)pronunciationsPath writeToDirectory:(id)directory sandboxExtensions:(id)extensions completion:(id)completion
{
  identifierCopy = identifier;
  pathCopy = path;
  pronunciationsPathCopy = pronunciationsPath;
  directoryCopy = directory;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10003D800;
  v26[3] = &unk_100066888;
  completionCopy = completion;
  v27 = completionCopy;
  extensionsCopy = extensions;
  v20 = objc_retainBlock(v26);
  v25 = 0;
  v21 = [(LSRConnection *)self _consumeSandboxExtensions:extensionsCopy error:&v25];

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

    v24 = [directoryCopy URLByAppendingPathComponent:@"PhraseCountsFile" isDirectory:0];
    [(LSRLanguageModel *)self->_lsrLanguageModel createPhraseCountArtifactWithIdentifier:identifierCopy rawPhraseCountsPath:pathCopy customPronunciationsPath:pronunciationsPathCopy saveTo:v24];
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

- (void)wakeUpWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)trainAppLmFromNgramsSerializedData:(id)data customPronsData:(id)pronsData language:(id)language writeToDirectory:(id)directory sandboxExtension:(id)extension completion:(id)completion
{
  dataCopy = data;
  pronsDataCopy = pronsData;
  languageCopy = language;
  directoryCopy = directory;
  extensionCopy = extension;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10003DDA8;
  v50[3] = &unk_100066860;
  completionCopy = completion;
  v51 = completionCopy;
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
    v45 = pronsDataCopy;
    v56 = extensionCopy;
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

    v41 = languageCopy;
    v43 = dataCopy;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v53 = "[LSRConnection trainAppLmFromNgramsSerializedData:customPronsData:language:writeToDirectory:sandboxExtension:completion:]";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Successfully consumed sandbox extensions", buf, 0xCu);
    }

    v25 = [directoryCopy URLByAppendingPathComponent:@"app-lm"];
    v26 = +[NSFileManager defaultManager];
    path = [v25 path];
    v28 = [v26 fileExistsAtPath:path];

    v42 = v26;
    if (v28)
    {
      v40 = 0;
      languageCopy = v41;
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
        languageCopy = v41;
        if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v53 = "[LSRConnection trainAppLmFromNgramsSerializedData:customPronsData:language:writeToDirectory:sandboxExtension:completion:]";
          v54 = 2112;
          v55 = v40;
          _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s Write failed error:%@", buf, 0x16u);
        }

        (v20[2])(v20, 0, 0);
        dataCopy = v43;
        v34 = v44;
        v35 = v42;
        goto LABEL_24;
      }

      languageCopy = v41;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v53 = "[LSRConnection trainAppLmFromNgramsSerializedData:customPronsData:language:writeToDirectory:sandboxExtension:completion:]";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s Write successfull", buf, 0xCu);
      }
    }

    v29 = [directoryCopy URLByAppendingPathComponent:@"SpeechProfile"];
    lsrLanguageModel = self->_lsrLanguageModel;
    v46 = v29;
    v47 = v25;
    [(LSRLanguageModel *)lsrLanguageModel trainAppLmFromNgramsSerializedData:v43 customPronsData:v45 language:languageCopy writeToAppLmDir:&v47 vocabFile:&v46];
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
    dataCopy = v43;
    v34 = v44;
    v35 = v42;
    v36 = v40;
LABEL_24:

LABEL_25:
    pronsDataCopy = v45;

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

- (void)metricsWithCompletion:(id)completion
{
  if (completion)
  {
    lsrLanguageModel = self->_lsrLanguageModel;
    completionCopy = completion;
    metrics = [(LSRLanguageModel *)lsrLanguageModel metrics];
    (*(completion + 2))(completionCopy, metrics);
  }
}

- (void)lmeThresholdWithCompletion:(id)completion
{
  if (completion)
  {
    lsrLanguageModel = self->_lsrLanguageModel;
    completionCopy = completion;
    (*(completion + 2))(completionCopy, [(LSRLanguageModel *)lsrLanguageModel lmeThreshold]);
  }
}

- (void)deserializeNgramCountsData:(id)data completion:(id)completion
{
  if (completion)
  {
    lsrLanguageModel = self->_lsrLanguageModel;
    completionCopy = completion;
    v8 = [(LSRLanguageModel *)lsrLanguageModel deserializeNgramCountsData:data];
    (*(completion + 2))(completionCopy, v8);
  }
}

- (void)generateNgramCountsSerializeDataWithCompletion:(id)completion
{
  if (completion)
  {
    lsrLanguageModel = self->_lsrLanguageModel;
    completionCopy = completion;
    ngramCountsSerializeData = [(LSRLanguageModel *)lsrLanguageModel ngramCountsSerializeData];
    (*(completion + 2))(completionCopy, ngramCountsSerializeData);
  }
}

- (void)trainFromPlainTextAndWriteToDirectory:(id)directory sandboxExtension:(id)extension completion:(id)completion
{
  directoryCopy = directory;
  extensionCopy = extension;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10003E538;
  v33[3] = &unk_100066860;
  completionCopy = completion;
  v34 = completionCopy;
  v11 = objc_retainBlock(v33);
  if (sub_10003DDC0())
  {
    v39 = extensionCopy;
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

    v16 = [directoryCopy URLByAppendingPathComponent:{@"app-lm", v14}];
    v17 = +[NSFileManager defaultManager];
    path = [v16 path];
    v19 = [v17 fileExistsAtPath:path];

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

    v21 = [directoryCopy URLByAppendingPathComponent:@"SpeechProfile"];
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

- (void)addProns:(id)prons forWord:(id)word completion:(id)completion
{
  if (completion)
  {
    lsrLanguageModel = self->_lsrLanguageModel;
    completionCopy = completion;
    (*(completion + 2))(completionCopy, [(LSRLanguageModel *)lsrLanguageModel addProns:prons forWord:word]);
  }
}

- (void)oovWordsAndFrequenciesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "[LSRConnection oovWordsAndFrequenciesWithCompletion:]";
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s oovs words and frequencies", &v7, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    oovWordsAndFrequenciesInNgramCount = [(LSRLanguageModel *)self->_lsrLanguageModel oovWordsAndFrequenciesInNgramCount];
    completionCopy[2](completionCopy, oovWordsAndFrequenciesInNgramCount);
  }

LABEL_4:
}

- (void)addSentenceToNgramCounts:(id)counts completion:(id)completion
{
  countsCopy = counts;
  completionCopy = completion;
  v8 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[LSRConnection addSentenceToNgramCounts:completion:]";
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Adding oovs from sentence", &v10, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    v9 = [(LSRLanguageModel *)self->_lsrLanguageModel oovsFromSentenceAddedToNgramCounts:countsCopy];
    completionCopy[2](completionCopy, v9);
  }

LABEL_4:
}

- (void)addSentenceToNgramCounts:(id)counts
{
  countsCopy = counts;
  v5 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315394;
    v7 = "[LSRConnection addSentenceToNgramCounts:]";
    v8 = 2112;
    v9 = countsCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s Adding sentence=%@", &v6, 0x16u);
  }

  [(LSRLanguageModel *)self->_lsrLanguageModel addSentenceToNgramCounts:countsCopy];
}

- (void)initializeLmWithAssetPath:(id)path completion:(id)completion
{
  pathCopy = path;
  completionCopy = completion;
  v8 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E974;
  block[3] = &unk_100066838;
  selfCopy = self;
  v14 = completionCopy;
  v12 = pathCopy;
  v9 = pathCopy;
  v10 = completionCopy;
  dispatch_async(v8, block);
}

- (void)initializeLmWithLocale:(id)locale clientID:(id)d completion:(id)completion
{
  localeCopy = locale;
  dCopy = d;
  completionCopy = completion;
  v11 = qword_100071428;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003ECB0;
  v15[3] = &unk_100066810;
  v16 = localeCopy;
  selfCopy = self;
  v18 = dCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = dCopy;
  v14 = localeCopy;
  dispatch_async(v11, v15);
}

- (void)setPurgeabilityForAssetWithConfig:(id)config purgeable:(BOOL)purgeable clientID:(id)d completion:(id)completion
{
  configCopy = config;
  completionCopy = completion;
  v10 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EF2C;
  block[3] = &unk_1000667E8;
  purgeableCopy = purgeable;
  v14 = configCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = configCopy;
  dispatch_async(v10, block);
}

- (void)configParametersForVoicemailWithLanguage:(id)language clientID:(id)d completion:(id)completion
{
  languageCopy = language;
  dCopy = d;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10003F0A4;
  v21[3] = &unk_100066798;
  completionCopy = completion;
  v22 = completionCopy;
  v10 = objc_retainBlock(v21);
  v11 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F0BC;
  block[3] = &unk_1000667C0;
  v17 = languageCopy;
  v18 = dCopy;
  v19 = completionCopy;
  v20 = v10;
  v12 = v10;
  v13 = completionCopy;
  v14 = dCopy;
  v15 = languageCopy;
  dispatch_async(v11, block);
}

- (void)fetchAssetsForLanguage:(id)language clientID:(id)d completion:(id)completion
{
  languageCopy = language;
  dCopy = d;
  completionCopy = completion;
  v10 = qword_100071428;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F450;
  block[3] = &unk_100066838;
  v15 = languageCopy;
  v16 = dCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = dCopy;
  v13 = languageCopy;
  dispatch_async(v10, block);
}

- (void)downloadAssetsForConfig:(id)config clientID:(id)d expiration:(id)expiration detailedProgress:(BOOL)progress
{
  configCopy = config;
  dCopy = d;
  expirationCopy = expiration;
  language = [configCopy language];

  if (language)
  {
    v14 = qword_100071428;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003F788;
    block[3] = &unk_100066770;
    v20 = configCopy;
    selfCopy = self;
    v22 = dCopy;
    v23 = expirationCopy;
    progressCopy = progress;
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

- (void)installedLanguagesForAssetType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    if ((type & 0xFFFFFFFFFFFFFFFBLL) != 3)
    {
      v9 = qword_100071428;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100040B78;
      block[3] = &unk_100066578;
      typeCopy = type;
      v15 = completionCopy;
      dispatch_async(v9, block);
      statusForLanguage = v15;
LABEL_13:

      goto LABEL_14;
    }

    if (type == 3)
    {
      v8 = 208;
    }

    else
    {
      if (type != 7)
      {
        statusForLanguage = 0;
        goto LABEL_10;
      }

      v8 = 216;
    }

    statusForLanguage = [*(&self->super.isa + v8) statusForLanguage];
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
    [statusForLanguage enumerateKeysAndObjectsUsingBlock:v17];
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

- (void)installationStateForAssetConfig:(id)config clientID:(id)d completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    dCopy = d;
    configCopy = config;
    v10 = +[SFEntitledAssetManager sharedInstance];
    [v10 installationStateForAssetConfig:configCopy subscriberId:dCopy completionHandler:completionCopy];
  }
}

- (void)supportedLanguagesForAssetType:(unint64_t)type completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v7 = [SFEntitledAssetManager supportedLanguagesForAssetType:type];
    (*(completion + 2))(completionCopy, v7);
  }
}

- (void)versionOfAssetWithConfig:(id)config clientID:(id)d completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    configCopy = config;
    v10 = +[SFEntitledAssetManager sharedInstance];
    v9 = [v10 assetVersionForConfig:configCopy];

    (*(completion + 2))(completionCopy, v9);
  }
}

- (void)pathToAssetWithConfig:(id)config clientID:(id)d completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    configCopy = config;
    v10 = +[SFEntitledAssetManager sharedInstance];
    v9 = [v10 installedAssetWithConfig:configCopy];

    (*(completion + 2))(completionCopy, v9);
  }
}

- (void)reportFailureWithError:(id)error
{
  errorCopy = error;
  v5 = SFAnalyticsEventTypeGetName();
  v8 = errorCopy;
  v6 = errorCopy;
  AnalyticsSendEventLazy();

  v7 = [(LSRConnection *)self _delegate:_NSConcreteStackBlock];
  [v7 localSpeechRecognitionDidFail:v6];
}

- (void)cleanupCacheWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (qword_100071480)
  {
    v4 = [qword_100071480 isEqualToString:kSFSpeechRecognizerTaskCaptioning];
    completionCopy = v5;
    if (v4)
    {
      +[LSRConnection _cachedRecognizerCleanUp];
      completionCopy = v5;
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  _objc_release_x1();
}

- (void)logCoreAnalyticsEvent:(id)event withAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v4 = analyticsCopy;
  AnalyticsSendEventLazy();
}

- (void)initializeWithSandboxExtensions:(id)extensions
{
  extensionsCopy = extensions;
  v5 = qword_100071428;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041248;
  v7[3] = &unk_1000664B8;
  v7[4] = self;
  v8 = extensionsCopy;
  v6 = extensionsCopy;
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
    selfCopy = self;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s stopSpeech - %p", buf, 0x16u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041688;
  block[3] = &unk_1000664E0;
  block[4] = self;
  dispatch_async(qword_100071428, block);
}

- (void)updateAudioDuration:(id)duration
{
  v4 = qword_100071428;
  durationCopy = duration;
  dispatch_assert_queue_V2(v4);
  LODWORD(v4) = [(SFRequestParameters *)self->_requestParameters narrowband];
  v6 = [durationCopy length];

  v7 = 16000.0;
  if (v4)
  {
    v7 = 8000.0;
  }

  self->_audioDuration = self->_audioDuration + (v6 >> 1) / v7;
}

- (void)addAudioPacket:(id)packet
{
  packetCopy = packet;
  v5 = qword_100071428;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100041874;
  v7[3] = &unk_1000664B8;
  v8 = packetCopy;
  selfCopy = self;
  v6 = packetCopy;
  dispatch_async(v5, v7);
}

- (void)startRecordedAudioDictationWithParameters:(id)parameters
{
  parametersCopy = parameters;
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
  onDeviceOnly = [parametersCopy onDeviceOnly];
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
    if ((([v10 BOOLValue] | onDeviceOnly ^ 1) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v12 = 0;
    v13 = 1;
    goto LABEL_16;
  }

  if (!onDeviceOnly)
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
    bundleIdentifier = [v23 bundleIdentifier];

    v25 = kSFSpeechRecognizerDumpedTaskIdentifierKey;
    if (CFPreferencesAppValueIsForced(kSFSpeechRecognizerDumpedTaskIdentifierKey, bundleIdentifier) || SFIsInternalInstall())
    {
      taskIdentifier = [parametersCopy taskIdentifier];
      v27 = taskIdentifier == 0;

      if (!v27)
      {
        applicationName = [parametersCopy applicationName];
        taskIdentifier2 = [parametersCopy taskIdentifier];
        v30 = [NSString stringWithFormat:@"%@.%@", applicationName, taskIdentifier2];

        v31 = +[NSUserDefaults standardUserDefaults];
        v32 = [v31 stringForKey:v25];

        v33 = [v32 isEqualToString:v30];
        v34 = SFLogConnection;
        if (v33)
        {
          v35 = SFLogConnection;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            requestIdentifier = [parametersCopy requestIdentifier];
            taskIdentifier3 = [parametersCopy taskIdentifier];
            *buf = 136315650;
            *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
            *&buf[12] = 2112;
            *&buf[14] = requestIdentifier;
            *&buf[22] = 2112;
            v225 = taskIdentifier3;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "%s Audio dumps will be enabled for request: %@ with taskIdentifier: %@", buf, 0x20u);
          }

          v38 = [LSRAudioDump alloc];
          taskIdentifier4 = [parametersCopy taskIdentifier];
          v40 = [(LSRAudioDump *)v38 initWithTaskIdentifier:taskIdentifier4];
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

    objc_storeStrong(&self->_requestParameters, parameters);
    task = [parametersCopy task];
    v50 = task == 0;

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

    language = [parametersCopy language];
    recognitionOverrides = [parametersCopy recognitionOverrides];
    modelOverrideURL = [parametersCopy modelOverrideURL];
    task2 = [parametersCopy task];
    clientIdentifier = [parametersCopy clientIdentifier];
    v213 = 0;
    v56 = [(LSRConnection *)self prepareRecognizerWithLanguage:language recognitionOverrides:recognitionOverrides modelOverrideURL:modelOverrideURL anyConfiguration:0 task:task2 clientID:clientIdentifier error:&v213];
    v57 = v213;

    if ((v56 & 1) == 0)
    {
      [(LSRConnection *)self reportFailureWithError:v57];
LABEL_134:

      goto LABEL_24;
    }

    task3 = [(SFRequestParameters *)self->_requestParameters task];
    SetQuasarLoggingLevel(task3);

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

    narrowband = [(SFRequestParameters *)self->_requestParameters narrowband];
    v65 = 16000;
    if (narrowband)
    {
      v65 = 8000;
    }

    v195 = v65;
    v66 = qword_100071478;
    task4 = [parametersCopy task];
    v68 = v66;
    v69 = task4;
    tasks = [v68 tasks];
    if ([tasks containsObject:v69])
    {
      v199 = v69;
      v71 = v57;
    }

    else
    {
      v75 = [NSBundle bundleForClass:objc_opt_class()];
      v76 = [v75 localizedStringForKey:@"Task %@ not available for %@ value:supported tasks are %@" table:{&stru_100066A98, @"Localizable"}];
      language2 = [v68 language];
      v200 = [NSString localizedStringWithFormat:v76, v69, language2, tasks];

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

    inlineItemList = [(SFRequestParameters *)self->_requestParameters inlineItemList];
    if (!inlineItemList || (-[SFRequestParameters inlineItemList](self->_requestParameters, "inlineItemList"), v81 = objc_claimAutoreleasedReturnValue(), v82 = [v81 count] == 0, v81, inlineItemList, v82))
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
        inlineItemList2 = [(SFRequestParameters *)self->_requestParameters inlineItemList];
        v88 = [inlineItemList2 count];
        *buf = 136315394;
        *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
        *&buf[12] = 2048;
        *&buf[14] = v88;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "%s Inline LME input size=%zu", buf, 0x16u);
      }

      language3 = [(SFRequestParameters *)self->_requestParameters language];
      v90 = [LSRConnection _jitProfileWithLanguage:language3 modelRoot:self->_modelRoot];

      if (v90)
      {
        inlineItemList3 = [(SFRequestParameters *)self->_requestParameters inlineItemList];
        v92 = [v90 jitProfileFromContextualStrings:inlineItemList3];

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

    language4 = [(SFRequestParameters *)self->_requestParameters language];
    v103 = qword_100071450;
    qword_100071450 = language4;

    objc_storeStrong(&qword_100071460, self->_modelRoot);
    dynamicLanguageModel = [(SFRequestParameters *)self->_requestParameters dynamicLanguageModel];

    if (dynamicLanguageModel)
    {
      dynamicLanguageModel2 = [(SFRequestParameters *)self->_requestParameters dynamicLanguageModel];
      path = [dynamicLanguageModel2 path];
      v107 = [_EARArtifact isValid:path];

      if (v107)
      {
        v108 = [_EARAppLmArtifact alloc];
        dynamicLanguageModel3 = [(SFRequestParameters *)self->_requestParameters dynamicLanguageModel];
        path2 = [dynamicLanguageModel3 path];
        v201 = [v108 initWithPath:path2];

        if (v201)
        {
          v111 = objc_loadWeakRetained(&self->_recognizer);
          modelInfo = [v111 modelInfo];
          version = [modelInfo version];
          v114 = objc_loadWeakRetained(&self->_recognizer);
          modelInfo2 = [v114 modelInfo];
          language5 = [modelInfo2 language];
          v117 = [v201 isAdaptableToSpeechModelVersion:version locale:language5];

          if (v117)
          {
            loadLmHandle = [v201 loadLmHandle];
            v119 = SFLogConnection;
            v120 = os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO);
            if (loadLmHandle)
            {
              if (v120)
              {
                requestParameters = self->_requestParameters;
                v122 = v119;
                dynamicLanguageModel4 = [(SFRequestParameters *)requestParameters dynamicLanguageModel];
                path3 = [dynamicLanguageModel4 path];
                *buf = 136315394;
                *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
                *&buf[12] = 2112;
                *&buf[14] = path3;
                _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_INFO, "%s Loaded Dynamic LM: %@", buf, 0x16u);
              }

              v228 = loadLmHandle;
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
            dynamicLanguageModel5 = [(SFRequestParameters *)v131 dynamicLanguageModel];
            path4 = [dynamicLanguageModel5 path];
            *buf = 136315394;
            *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
            *&buf[12] = 2112;
            *&buf[14] = path4;
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
        dynamicLanguageModel6 = [(SFRequestParameters *)v126 dynamicLanguageModel];
        path5 = [dynamicLanguageModel6 path];
        *buf = 136315394;
        *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
        *&buf[12] = 2112;
        *&buf[14] = path5;
        _os_log_impl(&_mh_execute_header, v127, OS_LOG_TYPE_INFO, "%s Dynamic LM at %@ was not valid", buf, 0x16u);
      }
    }

    v198 = &__NSArray0__struct;
LABEL_92:
    v135 = objc_loadWeakRetained(&self->_recognizer);
    [v135 setExtraLmList:v198];

    dynamicVocabulary = [(SFRequestParameters *)self->_requestParameters dynamicVocabulary];

    if (dynamicVocabulary)
    {
      dynamicVocabulary2 = [(SFRequestParameters *)self->_requestParameters dynamicVocabulary];
      path6 = [dynamicVocabulary2 path];
      v139 = [NSData dataWithContentsOfFile:path6];

      if (v139)
      {
        v140 = SFLogConnection;
        if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
        {
          v141 = self->_requestParameters;
          v142 = v140;
          dynamicVocabulary3 = [(SFRequestParameters *)v141 dynamicVocabulary];
          path7 = [dynamicVocabulary3 path];
          *buf = 136315394;
          *&buf[4] = "[LSRConnection startRecordedAudioDictationWithParameters:]";
          *&buf[12] = 2112;
          *&buf[14] = path7;
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
    task5 = [(SFRequestParameters *)self->_requestParameters task];
    taskIdentifier5 = [(SFRequestParameters *)self->_requestParameters taskIdentifier];
    v148 = task5;
    v149 = taskIdentifier5;
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
    activeConfiguration = [v157 activeConfiguration];

    v202 = [activeConfiguration copy];
    farFieldFilter = [v202 farFieldFilter];
    LOBYTE(v157) = farFieldFilter == 0;

    if ((v157 & 1) == 0)
    {
      farFieldFilter2 = [v202 farFieldFilter];
      v160 = [farFieldFilter2 setByAddingObject:&__kCFBooleanFalse];
      [v202 setFarFieldFilter:v160];
    }

    samplingRateFilter = [v202 samplingRateFilter];
    v162 = samplingRateFilter == 0;

    if (!v162)
    {
      samplingRateFilter2 = [v202 samplingRateFilter];
      v164 = [NSNumber numberWithUnsignedInteger:v195];
      v165 = [samplingRateFilter2 setByAddingObject:v164];
      [v202 setSamplingRateFilter:v165];
    }

    taskTypeFilter = [v202 taskTypeFilter];
    v167 = taskTypeFilter == 0;

    if (!v167)
    {
      taskTypeFilter2 = [v202 taskTypeFilter];
      v169 = [taskTypeFilter2 setByAddingObject:v199];
      [v202 setTaskTypeFilter:v169];
    }

    atypicalSpeechFilter = [v202 atypicalSpeechFilter];
    v171 = atypicalSpeechFilter == 0;

    if (!v171)
    {
      atypicalSpeechFilter2 = [v202 atypicalSpeechFilter];
      v173 = [atypicalSpeechFilter2 setByAddingObject:&__kCFBooleanFalse];
      [v202 setAtypicalSpeechFilter:v173];
    }

    [v202 setDeviceIdFilter:0];
    v174 = SFLogConnection;
    if (os_log_type_enabled(v174, OS_LOG_TYPE_INFO))
    {
      v175 = sub_1000436D8(activeConfiguration);
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
    language6 = [(SFRequestParameters *)self->_requestParameters language];
    v180 = [v178 runRecognitionWithResultStream:self language:language6 task:v199 samplingRate:v195];
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
    selfCopy = self;
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

- (void)preloadRecognizerForLanguage:(id)language task:(id)task clientID:(id)d recognitionOverrides:(id)overrides modelOverrideURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  v19 = 0;
  LOBYTE(overrides) = [(LSRConnection *)self prepareRecognizerWithLanguage:language recognitionOverrides:overrides modelOverrideURL:l anyConfiguration:1 task:task clientID:d error:&v19];
  v15 = v19;
  v16 = 0;
  if ((overrides & 1) == 0)
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

  (completionCopy)[2](completionCopy, v16);
}

- (id)_requestContext
{
  v3 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
  {
    requestParameters = self->_requestParameters;
    v5 = v3;
    language = [(SFRequestParameters *)requestParameters language];
    task = [(SFRequestParameters *)self->_requestParameters task];
    taskIdentifier = [(SFRequestParameters *)self->_requestParameters taskIdentifier];
    narrowband = [(SFRequestParameters *)self->_requestParameters narrowband];
    applicationName = [(SFRequestParameters *)self->_requestParameters applicationName];
    enableAutoPunctuation = [(SFRequestParameters *)self->_requestParameters enableAutoPunctuation];
    *buf = 136316674;
    v34 = "[LSRConnection _requestContext]";
    v35 = 2112;
    v36 = language;
    v37 = 2112;
    v38 = task;
    v39 = 2112;
    v40 = taskIdentifier;
    v41 = 1024;
    v42 = narrowband;
    v43 = 2112;
    v44 = applicationName;
    v45 = 1024;
    v46 = enableAutoPunctuation;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s RequestContext: language:%@ task:%@ taskIdentifier:%@ narrowband:%d appname:%@ enableAutoPunctuation:%d", buf, 0x40u);
  }

  language2 = [(SFRequestParameters *)self->_requestParameters language];
  v13 = language2;
  if (language2)
  {
    v14 = language2;
  }

  else
  {
    v14 = @"none";
  }

  v32[0] = v14;
  v31[1] = kSFCoreAnalyticsTaskKey;
  task2 = [(SFRequestParameters *)self->_requestParameters task];
  v16 = task2;
  if (task2)
  {
    v17 = task2;
  }

  else
  {
    v17 = @"none";
  }

  v32[1] = v17;
  v31[2] = kSFCoreAnalyticsTaskIdentifierKey;
  taskIdentifier2 = [(SFRequestParameters *)self->_requestParameters taskIdentifier];
  v19 = taskIdentifier2;
  if (taskIdentifier2)
  {
    v20 = taskIdentifier2;
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
  applicationName2 = [(SFRequestParameters *)self->_requestParameters applicationName];
  v23 = applicationName2;
  if (applicationName2)
  {
    v24 = applicationName2;
  }

  else
  {
    v24 = @"none";
  }

  v32[4] = v24;
  v32[5] = &__kCFBooleanTrue;
  v31[5] = kSFCoreAnalyticsOndeviceKey;
  v31[6] = kSFCoreAnalyticsUsesCustomLmKey;
  dynamicLanguageModel = [(SFRequestParameters *)self->_requestParameters dynamicLanguageModel];
  v26 = [NSNumber numberWithInt:dynamicLanguageModel != 0];
  v32[6] = v26;
  v31[7] = kSFCoreAnalyticsUsesCustomVocabKey;
  dynamicVocabulary = [(SFRequestParameters *)self->_requestParameters dynamicVocabulary];
  v28 = [NSNumber numberWithInt:dynamicVocabulary != 0];
  v31[8] = kSFCoreAnalyticsAPIVersionKey;
  v32[7] = v28;
  v32[8] = &off_100067438;
  v29 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:9];

  return v29;
}

- (BOOL)_callerHasWritePriviledge:(id)priviledge
{
  priviledgeCopy = priviledge;
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
      v13 = priviledgeCopy;
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
    v13 = priviledgeCopy;
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

- (BOOL)_consumeSandboxExtensions:(id)extensions error:(id *)error
{
  extensionsCopy = extensions;
  v7 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v33 = "[LSRConnection _consumeSandboxExtensions:error:]";
    v34 = 2112;
    v35 = extensionsCopy;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s Consuming sandbox extensions: %@", buf, 0x16u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = extensionsCopy;
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

          if (!error)
          {
            goto LABEL_15;
          }
        }

        else if (!error)
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
        *error = [NSError errorWithDomain:@"kLSRErrorDomain" code:1 userInfo:v20];

        LOBYTE(error) = 0;
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
  LOBYTE(error) = 1;
LABEL_15:

  return error;
}

- (LSRConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v30.receiver = self;
  v30.super_class = LSRConnection;
  v6 = [(LSRConnection *)&v30 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
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
    [connectionCopy setInterruptionHandler:{v22, v24, v25, v26, v27}];
    [connectionCopy setInvalidationHandler:v22];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  return v7;
}

+ (BOOL)isEuclidAvailableForConfigPath:(id)path
{
  pathCopy = path;
  v4 = [SFEntitledAssetManager jsonFilenameForAssetType:3];
  v5 = [pathCopy stringByAppendingPathComponent:v4];

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

+ (void)completionWithEuclidErrorWithDescription:(id)description configPath:(id)path completion:(id)completion
{
  completionCopy = completion;
  pathCopy = path;
  descriptionCopy = description;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"%@ Config Path: %@" value:&stru_100066A98 table:@"Localizable"];
  pathCopy = [NSString localizedStringWithFormat:v11, descriptionCopy, pathCopy];

  v20 = NSLocalizedDescriptionKey;
  v21 = pathCopy;
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
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    completionCopy[2](completionCopy, v14);
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
  [self _cancelCooldownTimer];
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
  [self _cancelCooldownTimer];
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

+ (id)_jitProfileWithLanguage:(id)language modelRoot:(id)root
{
  languageCopy = language;
  rootCopy = root;
  if (rootCopy)
  {
    if ([qword_100071450 isEqualToString:languageCopy])
    {
      v7 = qword_100071458 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7 || ![qword_100071460 isEqualToString:rootCopy])
    {
      v10 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
      {
        v17 = 136315650;
        v18 = "+[LSRConnection _jitProfileWithLanguage:modelRoot:]";
        v19 = 2112;
        v20 = languageCopy;
        v21 = 2112;
        v22 = rootCopy;
        _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%s Initialized a new JIT profile builder for language=%@ modelRoot=%@", &v17, 0x20u);
      }

      v11 = [rootCopy stringByAppendingPathComponent:@"mini.json"];
      v12 = [rootCopy stringByAppendingPathComponent:@"ncs"];
      v13 = [[_EARJitProfile alloc] initWithConfiguration:v11 ncsRoot:v12 language:languageCopy];
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
        v20 = languageCopy;
        v21 = 2112;
        v22 = rootCopy;
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