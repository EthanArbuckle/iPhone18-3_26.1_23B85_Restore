@interface LSRLanguageModel
+ (BOOL)createAppLmLmeProfileWithLanguage:(id)language modelRoot:(id)root customPronsData:(id)data newOovs:(id)oovs writeToVocabFile:(id)file;
+ (id)_userProfileWithModelRoot:(id)root language:(id)language;
+ (void)initialize;
- (BOOL)appLmNeedsRebuild:(id)rebuild language:(id)language error:(id *)error;
- (LSRLanguageModel)initWithAssetPath:(id)path;
- (LSRLanguageModel)initWithLocale:(id)locale clientID:(id)d;
- (id)createSpeechProfileFromOovs:(id)oovs customProns:(id)prons language:(id)language;
- (id)ngramCountsSerializeData;
- (id)oovWordsAndFrequenciesInNgramCount;
- (void)addSentenceToNgramCounts:(id)counts;
- (void)createNgramCountsArtifactFromPhraseCountArtifact:(id)artifact saveTo:(id)to;
- (void)createPhraseCountArtifactWithIdentifier:(id)identifier rawPhraseCountsPath:(id)path customPronunciationsPath:(id)pronunciationsPath saveTo:(id)to;
- (void)trainAppLmFromNgramCountsArtifact:(id)artifact forApp:(id)app language:(id)language appLmArtifact:(id *)lmArtifact vocabFile:(id *)file;
- (void)trainAppLmFromNgramsSerializedData:(id)data customPronsData:(id)pronsData language:(id)language writeToAppLmDir:(id *)dir vocabFile:(id *)file;
- (void)trainAppLmFromPlainTextAndWriteToAppDirectory:(id *)directory vocabFile:(id *)file;
@end

@implementation LSRLanguageModel

- (BOOL)appLmNeedsRebuild:(id)rebuild language:(id)language error:(id *)error
{
  rebuildCopy = rebuild;
  path = [rebuildCopy path];
  v8 = [_EARArtifact isValid:path];

  if (v8)
  {
    v9 = [_EARAppLmArtifact alloc];
    path2 = [rebuildCopy path];
    v11 = [v9 initWithPath:path2];

    if (v11)
    {
      v12 = [v11 isAdaptableToSpeechModelVersion:self->_modelVersion locale:self->_localeCode] ^ 1;
    }

    else
    {
      LOBYTE(v12) = 1;
    }
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (void)trainAppLmFromNgramCountsArtifact:(id)artifact forApp:(id)app language:(id)language appLmArtifact:(id *)lmArtifact vocabFile:(id *)file
{
  artifactCopy = artifact;
  appCopy = app;
  languageCopy = language;
  v102[0] = kSFCoreAnalyticsLanguageKey;
  v102[1] = kSFCoreAnalyticsAppnameKey;
  modelVersion = @"<unknown>";
  if (appCopy)
  {
    v14 = appCopy;
  }

  else
  {
    v14 = @"<unknown>";
  }

  v66 = languageCopy;
  v103[0] = languageCopy;
  v103[1] = v14;
  v102[2] = kSFCoreAnalyticsModelVersionKey;
  if (self->_modelVersion)
  {
    modelVersion = self->_modelVersion;
  }

  v103[2] = modelVersion;
  v15 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:3];
  v16 = SFAnalyticsEventTypeGetName();
  v89 = _NSConcreteStackBlock;
  v90 = 3221225472;
  v91 = sub_100035E70;
  v92 = &unk_100066490;
  v17 = v15;
  v93 = v17;
  AnalyticsSendEventLazy();

  v18 = +[NSProcessInfo processInfo];
  [v18 systemUptime];
  v20 = v19;

  path = [artifactCopy path];
  recognizerConfigFilePath = self->_recognizerConfigFilePath;
  path2 = [*lmArtifact path];
  LOBYTE(recognizerConfigFilePath) = [_EARAppLmArtifact transitionArtifactAt:path toStage:5 configPath:recognizerConfigFilePath dataRoot:0 estimationRoot:0 minimize:1 saveTo:path2];

  v24 = +[NSProcessInfo processInfo];
  [v24 systemUptime];
  v26 = v25;

  v27 = v26 - v20;
  if (recognizerConfigFilePath)
  {
    v28 = [_EARAppLmArtifact alloc];
    path3 = [artifactCopy path];
    v30 = [v28 initWithPath:path3];

    if (v30)
    {
      v31 = +[NSProcessInfo processInfo];
      [v31 systemUptime];
      v33 = v32;

      v34 = [v30 loadCustomPronData:self->_recognizerConfigFilePath dataRoot:0];
      v35 = +[NSProcessInfo processInfo];
      [v35 systemUptime];
      v37 = v36;

      if (v34)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v99 = sub_10003621C;
        v100 = sub_10003622C;
        v101 = objc_alloc_init(NSMutableDictionary);
        if ([v34 isValid])
        {
          getProns = [v34 getProns];
          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_100036234;
          v73[3] = &unk_1000662B0;
          v73[4] = buf;
          [getProns enumerateObjectsUsingBlock:v73];
        }

        else
        {
          getProns = SFLogConnection;
          if (os_log_type_enabled(getProns, OS_LOG_TYPE_INFO))
          {
            validationError = [v34 validationError];
            *v94 = 136315394;
            v95 = "[LSRLanguageModel trainAppLmFromNgramCountsArtifact:forApp:language:appLmArtifact:vocabFile:]";
            v96 = 2112;
            v97 = validationError;
            _os_log_impl(&_mh_execute_header, getProns, OS_LOG_TYPE_INFO, "%s Artifact contained invalid custom prons; skipping. %@", v94, 0x16u);
          }
        }

        v46 = [_EARAppLmArtifact alloc];
        path4 = [*lmArtifact path];
        v64 = [v46 initWithPath:path4];

        if (v64)
        {
          loadOovs = [v64 loadOovs];
          if (!loadOovs)
          {
            v49 = SFLogConnection;
            if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
            {
              *v94 = 136315138;
              v95 = "[LSRLanguageModel trainAppLmFromNgramCountsArtifact:forApp:language:appLmArtifact:vocabFile:]";
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s Could not get OOVs from artifact", v94, 0xCu);
            }

            loadOovs = &__NSArray0__struct;
          }

          v50 = +[NSProcessInfo processInfo];
          [v50 systemUptime];
          v52 = v51;

          v53 = [(LSRLanguageModel *)self createSpeechProfileFromOovs:loadOovs customProns:*(*&buf[8] + 40) language:v66];
          v54 = +[NSProcessInfo processInfo];
          [v54 systemUptime];
          v56 = v55;

          if (v53)
          {
            [v53 writeToURL:*file atomically:0];
            v57 = SFLogConnection;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              path5 = [*file path];
              *v94 = 136315394;
              v95 = "[LSRLanguageModel trainAppLmFromNgramCountsArtifact:forApp:language:appLmArtifact:vocabFile:]";
              v96 = 2112;
              v97 = path5;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "%s Wrote profile data to file:%@", v94, 0x16u);
            }

            v59 = SFAnalyticsEventTypeGetName();
            v60 = v68;
            v68[0] = _NSConcreteStackBlock;
            v68[1] = 3221225472;
            v68[2] = sub_10003655C;
            v68[3] = &unk_1000662D8;
            v68[4] = v17;
            v68[5] = v30;
            *&v68[6] = v27;
            *&v68[7] = v37 - v33;
            *&v68[8] = v56 - v52;
            *&v68[9] = v20;
            AnalyticsSendEventLazy();
          }

          else
          {
            *file = 0;
            v59 = SFAnalyticsEventTypeGetName();
            v60 = v69;
            v69[0] = _NSConcreteStackBlock;
            v69[1] = 3221225472;
            v69[2] = sub_10003640C;
            v69[3] = &unk_100066288;
            v69[4] = v17;
            v69[5] = v30;
            *&v69[6] = v20;
            AnalyticsSendEventLazy();
          }
        }

        else
        {
          v61 = SFLogConnection;
          if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
          {
            v62 = *lmArtifact;
            *v94 = 136315394;
            v95 = "[LSRLanguageModel trainAppLmFromNgramCountsArtifact:forApp:language:appLmArtifact:vocabFile:]";
            v96 = 2112;
            v97 = v62;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "%s Failed to load language model artifact at: %@", v94, 0x16u);
          }

          *file = 0;
          v63 = SFAnalyticsEventTypeGetName();
          v69[7] = _NSConcreteStackBlock;
          v69[8] = 3221225472;
          v69[9] = sub_1000362BC;
          v69[10] = &unk_100066288;
          v70 = v17;
          v71 = v30;
          v72 = v20;
          AnalyticsSendEventLazy();

          loadOovs = v70;
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v43 = SFLogConnection;
        if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "[LSRLanguageModel trainAppLmFromNgramCountsArtifact:forApp:language:appLmArtifact:vocabFile:]";
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%s Failed to load custom prons from artifact", buf, 0xCu);
        }

        *file = 0;
        v44 = SFAnalyticsEventTypeGetName();
        v73[5] = _NSConcreteStackBlock;
        v73[6] = 3221225472;
        v73[7] = sub_1000360CC;
        v73[8] = &unk_100066288;
        v74 = v17;
        v75 = v30;
        v76 = v20;
        AnalyticsSendEventLazy();

        v34 = 0;
      }
    }

    else
    {
      v41 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[LSRLanguageModel trainAppLmFromNgramCountsArtifact:forApp:language:appLmArtifact:vocabFile:]";
        *&buf[12] = 2112;
        *&buf[14] = artifactCopy;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s Failed to read ngram counts artifact at: %@", buf, 0x16u);
      }

      *file = 0;
      v42 = SFAnalyticsEventTypeGetName();
      v77 = _NSConcreteStackBlock;
      v78 = 3221225472;
      v79 = sub_100035F90;
      v80 = &unk_100066260;
      v81 = v17;
      v82 = v20;
      AnalyticsSendEventLazy();

      v34 = v81;
    }
  }

  else
  {
    v39 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[LSRLanguageModel trainAppLmFromNgramCountsArtifact:forApp:language:appLmArtifact:vocabFile:]";
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%s Failed to train app-specific LM", buf, 0xCu);
    }

    *file = 0;
    *lmArtifact = 0;
    v40 = SFAnalyticsEventTypeGetName();
    v83 = _NSConcreteStackBlock;
    v84 = 3221225472;
    v85 = sub_100035E78;
    v86 = &unk_100066260;
    v87 = v17;
    v88 = v26 - v20;
    AnalyticsSendEventLazy();
  }
}

- (id)createSpeechProfileFromOovs:(id)oovs customProns:(id)prons language:(id)language
{
  oovsCopy = oovs;
  pronsCopy = prons;
  recognizerConfigFilePath = self->_recognizerConfigFilePath;
  languageCopy = language;
  stringByDeletingLastPathComponent = [(NSString *)recognizerConfigFilePath stringByDeletingLastPathComponent];
  v13 = [LSRLanguageModel _userProfileWithModelRoot:stringByDeletingLastPathComponent language:languageCopy];

  if (v13)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100036B50;
    v27[3] = &unk_1000661C0;
    v14 = objc_alloc_init(NSMutableDictionary);
    v28 = v14;
    [oovsCopy enumerateObjectsUsingBlock:v27];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100036BC8;
    v25[3] = &unk_100066238;
    v15 = v14;
    v26 = v15;
    [pronsCopy enumerateKeysAndObjectsUsingBlock:v25];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100036BD4;
    v23[3] = &unk_100066238;
    v16 = v13;
    v24 = v16;
    [v15 enumerateKeysAndObjectsUsingBlock:v23];
    dataProfile = [v16 dataProfile];
    v18 = dataProfile;
    if (dataProfile)
    {
      v19 = dataProfile;
    }

    else
    {
      v21 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v30 = "[LSRLanguageModel createSpeechProfileFromOovs:customProns:language:]";
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s Failed to create user profile", buf, 0xCu);
      }
    }
  }

  else
  {
    v20 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v30 = "[LSRLanguageModel createSpeechProfileFromOovs:customProns:language:]";
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s Failed to create user profile object", buf, 0xCu);
    }

    v18 = 0;
  }

  return v18;
}

- (void)createNgramCountsArtifactFromPhraseCountArtifact:(id)artifact saveTo:(id)to
{
  toCopy = to;
  path = [artifact path];
  recognizerConfigFilePath = self->_recognizerConfigFilePath;
  path2 = [toCopy path];

  [_EARAppLmArtifact transitionArtifactAt:path toStage:4 configPath:recognizerConfigFilePath dataRoot:0 estimationRoot:0 minimize:1 saveTo:path2];
}

- (void)createPhraseCountArtifactWithIdentifier:(id)identifier rawPhraseCountsPath:(id)path customPronunciationsPath:(id)pronunciationsPath saveTo:(id)to
{
  localeCode = self->_localeCode;
  toCopy = to;
  pronunciationsPathCopy = pronunciationsPath;
  identifierCopy = identifier;
  path = [path path];
  path2 = [pronunciationsPathCopy path];

  path3 = [toCopy path];

  [_EARAppLmArtifact createPhraseCountsArtifact:identifierCopy version:@"1.0" locale:localeCode rawPhraseCountsPath:path customPronunciationsPath:path2 saveTo:path3];
}

- (void)trainAppLmFromNgramsSerializedData:(id)data customPronsData:(id)pronsData language:(id)language writeToAppLmDir:(id *)dir vocabFile:(id *)file
{
  dataCopy = data;
  pronsDataCopy = pronsData;
  languageCopy = language;
  v14 = [_EARLmModel2 deserializeModelData:dataCopy];
  v15 = [v14 objectForKeyedSubscript:EARModelOovsKey];
  v16 = [v14 objectForKeyedSubscript:EARModelTrainingDataKey];
  v17 = +[NSCharacterSet newlineCharacterSet];
  v18 = [v16 componentsSeparatedByCharactersInSet:v17];

  if (!file)
  {
LABEL_5:
    v20 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v46 = "[LSRLanguageModel trainAppLmFromNgramsSerializedData:customPronsData:language:writeToAppLmDir:vocabFile:]";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s No oovs in training data", buf, 0xCu);
    }

    goto LABEL_11;
  }

  v19 = [v15 count];
  if (!pronsDataCopy && !v19)
  {
    *file = 0;
    goto LABEL_5;
  }

  v21 = *file;
  stringByDeletingLastPathComponent = [(NSString *)self->_recognizerConfigFilePath stringByDeletingLastPathComponent];
  v23 = [LSRLanguageModel createAppLmLmeProfileWithLanguage:languageCopy modelRoot:stringByDeletingLastPathComponent customPronsData:pronsDataCopy newOovs:v15 writeToVocabFile:v21];

  if ((v23 & 1) == 0)
  {

    v38 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v46 = "[LSRLanguageModel trainAppLmFromNgramsSerializedData:customPronsData:language:writeToAppLmDir:vocabFile:]";
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s Failed to write LME", buf, 0xCu);
    }

    goto LABEL_33;
  }

  v24 = SFLogConnection;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    path = [v21 path];
    *buf = 136315394;
    v46 = "[LSRLanguageModel trainAppLmFromNgramsSerializedData:customPronsData:language:writeToAppLmDir:vocabFile:]";
    v47 = 2112;
    v48 = path;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s Successfully wrote LME: %@", buf, 0x16u);
  }

LABEL_11:
  [(_EARAppLmData *)self->_appLmData setInputFormat:2];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v26 = v18;
  v27 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v27)
  {
    v28 = *v41;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v26);
        }

        [(_EARAppLmData *)self->_appLmData addNgramCountWithType:0 content:*(*(&v40 + 1) + 8 * i)];
      }

      v27 = [v26 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v27);
  }

  v30 = [_EARLmBuilder buildLmWithConfig:self->_recognizerConfigFilePath root:@"app-lm.NGRAM" data:self->_appLmData dir:&stru_100066A98 shouldStop:0];
  if (v30)
  {
    if (!dir)
    {
LABEL_24:

      appLmData = self->_appLmData;
      self->_appLmData = 0;

      goto LABEL_33;
    }

    v31 = *dir;
    path2 = [v31 path];
    v33 = [v30 writeToDirectory:path2];

    if (v33)
    {
      v34 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v46 = "[LSRLanguageModel trainAppLmFromNgramsSerializedData:customPronsData:language:writeToAppLmDir:vocabFile:]";
        v47 = 2112;
        v48 = v31;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Successfully wrote app-lm to path=%@", buf, 0x16u);
      }

      goto LABEL_24;
    }

    v37 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v46 = "[LSRLanguageModel trainAppLmFromNgramsSerializedData:customPronsData:language:writeToAppLmDir:vocabFile:]";
      _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%s Failed to write trained AppLm", buf, 0xCu);
    }
  }

  else
  {
    v36 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v46 = "[LSRLanguageModel trainAppLmFromNgramsSerializedData:customPronsData:language:writeToAppLmDir:vocabFile:]";
      _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s Failed to train from ngram counts", buf, 0xCu);
    }
  }

LABEL_33:
}

- (id)ngramCountsSerializeData
{
  v3 = [[_EARSpeechModelInfo alloc] initWithConfig:self->_recognizerConfigFilePath];
  [(_EARAppLmData *)self->_appLmData setInputFormat:1];
  v4 = [_EARLmBuilder generateNgramCountsWithConfig:self->_recognizerConfigFilePath root:@"app-lm.NGRAM" data:self->_appLmData];
  v5 = [[_EARNgramLmModel alloc] initWithConfiguration:self->_recognizerConfigFilePath root:@"app-lm.NGRAM"];
  language = [v3 language];
  oovWordsAndFrequenciesInNgramCount = [(LSRLanguageModel *)self oovWordsAndFrequenciesInNgramCount];
  allKeys = [oovWordsAndFrequenciesInNgramCount allKeys];
  v9 = [v5 serializedModelWithLanguage:language modelData:v4 oovs:allKeys];

  v10 = SFLogConnection;
  if (v9)
  {
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
    {
      v12 = 136315138;
      v13 = "[LSRLanguageModel ngramCountsSerializeData]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s Successfully serialized ngram counts and OOVs", &v12, 0xCu);
    }
  }

  else if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315138;
    v13 = "[LSRLanguageModel ngramCountsSerializeData]";
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Failed to serialize ngram counts data", &v12, 0xCu);
  }

  return v9;
}

- (void)trainAppLmFromPlainTextAndWriteToAppDirectory:(id *)directory vocabFile:(id *)file
{
  [(_EARAppLmData *)self->_appLmData setInputFormat:1];
  v7 = [_EARLmBuilder buildLmWithConfig:self->_recognizerConfigFilePath root:@"app-lm.NGRAM" data:self->_appLmData dir:&stru_100066A98 shouldStop:0];
  v8 = SFLogConnection;
  if (!v7)
  {
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[LSRLanguageModel trainAppLmFromPlainTextAndWriteToAppDirectory:vocabFile:]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Failed to train model successfully", &v15, 0xCu);
      if (!directory)
      {
        goto LABEL_13;
      }
    }

    else if (!directory)
    {
      goto LABEL_13;
    }

    *directory = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "[LSRLanguageModel trainAppLmFromPlainTextAndWriteToAppDirectory:vocabFile:]";
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s Model trained successfully!", &v15, 0xCu);
    v8 = SFLogConnection;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = *directory;
    v13 = v8;
    path = [v12 path];
    v15 = 136315394;
    v16 = "[LSRLanguageModel trainAppLmFromPlainTextAndWriteToAppDirectory:vocabFile:]";
    v17 = 2112;
    v18 = path;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Writing to: %@", &v15, 0x16u);
  }

  path2 = [*directory path];
  v10 = [v7 writeToDirectory:path2];

  if ((v10 & 1) == 0)
  {
    v11 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[LSRLanguageModel trainAppLmFromPlainTextAndWriteToAppDirectory:vocabFile:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Write process failed", &v15, 0xCu);
    }

    file = directory;
    goto LABEL_14;
  }

LABEL_13:
  if (file)
  {
LABEL_14:
    *file = 0;
  }
}

- (id)oovWordsAndFrequenciesInNgramCount
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  orderedOovs = [(_EARAppLmData *)self->_appLmData orderedOovs];
  v5 = [orderedOovs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(orderedOovs);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 frequency]);
        orthography = [v9 orthography];
        [v3 setObject:v10 forKey:orthography];
      }

      v6 = [orderedOovs countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (void)addSentenceToNgramCounts:(id)counts
{
  countsCopy = counts;
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  [(_EARAppLmData *)self->_appLmData addSentenceWithType:0 uuid:uUIDString content:countsCopy];
}

- (LSRLanguageModel)initWithAssetPath:(id)path
{
  pathCopy = path;
  v30.receiver = self;
  v30.super_class = LSRLanguageModel;
  v5 = [(LSRLanguageModel *)&v30 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [pathCopy stringByAppendingPathComponent:@"mini.json"];
  recognizerConfigFilePath = v5->_recognizerConfigFilePath;
  v5->_recognizerConfigFilePath = v6;

  v8 = [[_EARAppLmData alloc] initWithConfiguration:v5->_recognizerConfigFilePath recognizerConfigPath:v5->_recognizerConfigFilePath];
  appLmData = v5->_appLmData;
  v5->_appLmData = v8;

  if (!v5->_appLmData)
  {
LABEL_8:
    v22 = 0;
    goto LABEL_9;
  }

  v10 = [_EARSpeechRecognizer alloc];
  v11 = v5->_recognizerConfigFilePath;
  v12 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
  v29 = 0;
  LOBYTE(v28) = 0;
  LOWORD(v27) = 1;
  v13 = [v10 initWithConfig:v11 overrides:0 overrideConfigFiles:0 language:0 activeConfiguration:v12 modelLoadingOptions:0 enableSpeakerCodeTraining:v27 supportEmojiRecognition:0 voiceCommandActiveSet:0 modelContextDelegate:v28 enableItn:&v29 error:?];
  v14 = v29;

  if (!v13)
  {
    v23 = SFLogConnection;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v25 = v5->_recognizerConfigFilePath;
      if (v14)
      {
        v26 = [v14 description];
      }

      else
      {
        v26 = @"Unknown error";
      }

      *buf = 136315650;
      v32 = "[LSRLanguageModel initWithAssetPath:]";
      v33 = 2112;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Failed to create recognizer from: %@; Error: %@", buf, 0x20u);
      if (v14)
      {
      }
    }

    goto LABEL_8;
  }

  modelInfo = [v13 modelInfo];
  language = [modelInfo language];
  v17 = [SFUtilities stringByReplacingHyphensWithUnderscores:language];
  localeCode = v5->_localeCode;
  v5->_localeCode = v17;

  modelInfo2 = [v13 modelInfo];
  version = [modelInfo2 version];
  modelVersion = v5->_modelVersion;
  v5->_modelVersion = version;

LABEL_5:
  v22 = v5;
LABEL_9:

  return v22;
}

- (LSRLanguageModel)initWithLocale:(id)locale clientID:(id)d
{
  localeCopy = locale;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = LSRLanguageModel;
  v8 = [(LSRLanguageModel *)&v16 init];
  if (v8)
  {
    v9 = [SFUtilities localeCodeForLocale:localeCopy];
    v10 = [SFUtilities stringByReplacingHyphensWithUnderscores:v9];
    localeCode = v8->_localeCode;
    v8->_localeCode = v10;

    v12 = [[SFEntitledAssetConfig alloc] initWithLanguage:v8->_localeCode assetType:3];
    v13 = +[SFEntitledAssetManager sharedInstance];
    v14 = [v13 installedAssetWithConfig:v12 regionId:0 shouldSubscribe:1 subscriberId:dCopy expiration:0];

    if (v14)
    {
      v8 = [(LSRLanguageModel *)v8 initWithAssetPath:v14];
    }
  }

  return v8;
}

+ (BOOL)createAppLmLmeProfileWithLanguage:(id)language modelRoot:(id)root customPronsData:(id)data newOovs:(id)oovs writeToVocabFile:(id)file
{
  languageCopy = language;
  dataCopy = data;
  oovsCopy = oovs;
  fileCopy = file;
  v15 = [LSRLanguageModel _userProfileWithModelRoot:root language:languageCopy];
  if (v15)
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000382D4;
    v40[3] = &unk_1000661C0;
    v16 = objc_alloc_init(NSMutableDictionary);
    v41 = v16;
    [oovsCopy enumerateObjectsUsingBlock:v40];
    if (dataCopy)
    {
      v17 = [[_EARPlsParser alloc] initWithData:dataCopy];
      lexemes = [v17 lexemes];
      v19 = [NSDictionary dictionaryWithDictionary:lexemes];

      v20 = [_EARPhonesetMapping alloc];
      v21 = [SFUtilities stringByReplacingHyphensWithUnderscores:languageCopy];
      v22 = [v20 initWithLanguage:v21];

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10003834C;
      v37[3] = &unk_100066210;
      v38 = v22;
      v39 = v16;
      v23 = v22;
      [v19 enumerateKeysAndObjectsUsingBlock:v37];
    }

    v32 = _NSConcreteStackBlock;
    v33 = 3221225472;
    v34 = sub_100038438;
    v35 = &unk_100066238;
    v24 = v15;
    v36 = v24;
    [v16 enumerateKeysAndObjectsUsingBlock:&v32];
    dataProfile = [v24 dataProfile];
    v26 = dataProfile;
    v27 = dataProfile != 0;
    if (dataProfile)
    {
      [dataProfile writeToURL:fileCopy atomically:0];
      v28 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v43 = "+[LSRLanguageModel createAppLmLmeProfileWithLanguage:modelRoot:customPronsData:newOovs:writeToVocabFile:]";
        v44 = 2112;
        v45 = fileCopy;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "%s Wrote profile data to file:%@", buf, 0x16u);
      }
    }

    else
    {
      v30 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v43 = "+[LSRLanguageModel createAppLmLmeProfileWithLanguage:modelRoot:customPronsData:newOovs:writeToVocabFile:]";
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s Failed to create user profile", buf, 0xCu);
      }
    }
  }

  else
  {
    v29 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v43 = "+[LSRLanguageModel createAppLmLmeProfileWithLanguage:modelRoot:customPronsData:newOovs:writeToVocabFile:]";
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s Failed to create user profile object", buf, 0xCu);
    }

    v27 = 0;
  }

  return v27;
}

+ (id)_userProfileWithModelRoot:(id)root language:(id)language
{
  languageCopy = language;
  rootCopy = root;
  v7 = [rootCopy stringByAppendingPathComponent:@"mini.json"];
  v8 = [rootCopy stringByAppendingPathComponent:@"ncs"];

  v9 = [v8 stringByAppendingPathComponent:@"en_US_napg.json"];
  v10 = [v8 stringByAppendingPathComponent:@"vocdelta.voc"];
  v11 = [v8 stringByAppendingPathComponent:@"pg.voc"];
  v12 = [v8 stringByAppendingPathComponent:@"mrec.psh"];
  v13 = [[_EARUserProfile alloc] initWithConfiguration:v7 language:languageCopy overrides:0 sdapiOverrides:v9 emptyVoc:v10 pgVoc:v11 paramsetHolder:v12];

  return v13;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    SFLogInitIfNeeded();
  }
}

@end