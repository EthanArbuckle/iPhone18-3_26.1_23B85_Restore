@interface LSRLanguageModel
+ (BOOL)createAppLmLmeProfileWithLanguage:(id)a3 modelRoot:(id)a4 customPronsData:(id)a5 newOovs:(id)a6 writeToVocabFile:(id)a7;
+ (id)_userProfileWithModelRoot:(id)a3 language:(id)a4;
+ (void)initialize;
- (BOOL)appLmNeedsRebuild:(id)a3 language:(id)a4 error:(id *)a5;
- (LSRLanguageModel)initWithAssetPath:(id)a3;
- (LSRLanguageModel)initWithLocale:(id)a3 clientID:(id)a4;
- (id)createSpeechProfileFromOovs:(id)a3 customProns:(id)a4 language:(id)a5;
- (id)ngramCountsSerializeData;
- (id)oovWordsAndFrequenciesInNgramCount;
- (void)addSentenceToNgramCounts:(id)a3;
- (void)createNgramCountsArtifactFromPhraseCountArtifact:(id)a3 saveTo:(id)a4;
- (void)createPhraseCountArtifactWithIdentifier:(id)a3 rawPhraseCountsPath:(id)a4 customPronunciationsPath:(id)a5 saveTo:(id)a6;
- (void)trainAppLmFromNgramCountsArtifact:(id)a3 forApp:(id)a4 language:(id)a5 appLmArtifact:(id *)a6 vocabFile:(id *)a7;
- (void)trainAppLmFromNgramsSerializedData:(id)a3 customPronsData:(id)a4 language:(id)a5 writeToAppLmDir:(id *)a6 vocabFile:(id *)a7;
- (void)trainAppLmFromPlainTextAndWriteToAppDirectory:(id *)a3 vocabFile:(id *)a4;
@end

@implementation LSRLanguageModel

- (BOOL)appLmNeedsRebuild:(id)a3 language:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = [v6 path];
  v8 = [_EARArtifact isValid:v7];

  if (v8)
  {
    v9 = [_EARAppLmArtifact alloc];
    v10 = [v6 path];
    v11 = [v9 initWithPath:v10];

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

- (void)trainAppLmFromNgramCountsArtifact:(id)a3 forApp:(id)a4 language:(id)a5 appLmArtifact:(id *)a6 vocabFile:(id *)a7
{
  v67 = a3;
  v11 = a4;
  v12 = a5;
  v102[0] = kSFCoreAnalyticsLanguageKey;
  v102[1] = kSFCoreAnalyticsAppnameKey;
  modelVersion = @"<unknown>";
  if (v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = @"<unknown>";
  }

  v66 = v12;
  v103[0] = v12;
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

  v21 = [v67 path];
  recognizerConfigFilePath = self->_recognizerConfigFilePath;
  v23 = [*a6 path];
  LOBYTE(recognizerConfigFilePath) = [_EARAppLmArtifact transitionArtifactAt:v21 toStage:5 configPath:recognizerConfigFilePath dataRoot:0 estimationRoot:0 minimize:1 saveTo:v23];

  v24 = +[NSProcessInfo processInfo];
  [v24 systemUptime];
  v26 = v25;

  v27 = v26 - v20;
  if (recognizerConfigFilePath)
  {
    v28 = [_EARAppLmArtifact alloc];
    v29 = [v67 path];
    v30 = [v28 initWithPath:v29];

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
          v38 = [v34 getProns];
          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_100036234;
          v73[3] = &unk_1000662B0;
          v73[4] = buf;
          [v38 enumerateObjectsUsingBlock:v73];
        }

        else
        {
          v38 = SFLogConnection;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
          {
            v45 = [v34 validationError];
            *v94 = 136315394;
            v95 = "[LSRLanguageModel trainAppLmFromNgramCountsArtifact:forApp:language:appLmArtifact:vocabFile:]";
            v96 = 2112;
            v97 = v45;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s Artifact contained invalid custom prons; skipping. %@", v94, 0x16u);
          }
        }

        v46 = [_EARAppLmArtifact alloc];
        v47 = [*a6 path];
        v64 = [v46 initWithPath:v47];

        if (v64)
        {
          v48 = [v64 loadOovs];
          if (!v48)
          {
            v49 = SFLogConnection;
            if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
            {
              *v94 = 136315138;
              v95 = "[LSRLanguageModel trainAppLmFromNgramCountsArtifact:forApp:language:appLmArtifact:vocabFile:]";
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_INFO, "%s Could not get OOVs from artifact", v94, 0xCu);
            }

            v48 = &__NSArray0__struct;
          }

          v50 = +[NSProcessInfo processInfo];
          [v50 systemUptime];
          v52 = v51;

          v53 = [(LSRLanguageModel *)self createSpeechProfileFromOovs:v48 customProns:*(*&buf[8] + 40) language:v66];
          v54 = +[NSProcessInfo processInfo];
          [v54 systemUptime];
          v56 = v55;

          if (v53)
          {
            [v53 writeToURL:*a7 atomically:0];
            v57 = SFLogConnection;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
            {
              v58 = [*a7 path];
              *v94 = 136315394;
              v95 = "[LSRLanguageModel trainAppLmFromNgramCountsArtifact:forApp:language:appLmArtifact:vocabFile:]";
              v96 = 2112;
              v97 = v58;
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
            *a7 = 0;
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
            v62 = *a6;
            *v94 = 136315394;
            v95 = "[LSRLanguageModel trainAppLmFromNgramCountsArtifact:forApp:language:appLmArtifact:vocabFile:]";
            v96 = 2112;
            v97 = v62;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_INFO, "%s Failed to load language model artifact at: %@", v94, 0x16u);
          }

          *a7 = 0;
          v63 = SFAnalyticsEventTypeGetName();
          v69[7] = _NSConcreteStackBlock;
          v69[8] = 3221225472;
          v69[9] = sub_1000362BC;
          v69[10] = &unk_100066288;
          v70 = v17;
          v71 = v30;
          v72 = v20;
          AnalyticsSendEventLazy();

          v48 = v70;
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

        *a7 = 0;
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
        *&buf[14] = v67;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "%s Failed to read ngram counts artifact at: %@", buf, 0x16u);
      }

      *a7 = 0;
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

    *a7 = 0;
    *a6 = 0;
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

- (id)createSpeechProfileFromOovs:(id)a3 customProns:(id)a4 language:(id)a5
{
  v8 = a3;
  v9 = a4;
  recognizerConfigFilePath = self->_recognizerConfigFilePath;
  v11 = a5;
  v12 = [(NSString *)recognizerConfigFilePath stringByDeletingLastPathComponent];
  v13 = [LSRLanguageModel _userProfileWithModelRoot:v12 language:v11];

  if (v13)
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100036B50;
    v27[3] = &unk_1000661C0;
    v14 = objc_alloc_init(NSMutableDictionary);
    v28 = v14;
    [v8 enumerateObjectsUsingBlock:v27];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100036BC8;
    v25[3] = &unk_100066238;
    v15 = v14;
    v26 = v15;
    [v9 enumerateKeysAndObjectsUsingBlock:v25];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100036BD4;
    v23[3] = &unk_100066238;
    v16 = v13;
    v24 = v16;
    [v15 enumerateKeysAndObjectsUsingBlock:v23];
    v17 = [v16 dataProfile];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
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

- (void)createNgramCountsArtifactFromPhraseCountArtifact:(id)a3 saveTo:(id)a4
{
  v6 = a4;
  v9 = [a3 path];
  recognizerConfigFilePath = self->_recognizerConfigFilePath;
  v8 = [v6 path];

  [_EARAppLmArtifact transitionArtifactAt:v9 toStage:4 configPath:recognizerConfigFilePath dataRoot:0 estimationRoot:0 minimize:1 saveTo:v8];
}

- (void)createPhraseCountArtifactWithIdentifier:(id)a3 rawPhraseCountsPath:(id)a4 customPronunciationsPath:(id)a5 saveTo:(id)a6
{
  localeCode = self->_localeCode;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v15 = [a4 path];
  v13 = [v11 path];

  v14 = [v10 path];

  [_EARAppLmArtifact createPhraseCountsArtifact:v12 version:@"1.0" locale:localeCode rawPhraseCountsPath:v15 customPronunciationsPath:v13 saveTo:v14];
}

- (void)trainAppLmFromNgramsSerializedData:(id)a3 customPronsData:(id)a4 language:(id)a5 writeToAppLmDir:(id *)a6 vocabFile:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v39 = a5;
  v14 = [_EARLmModel2 deserializeModelData:v12];
  v15 = [v14 objectForKeyedSubscript:EARModelOovsKey];
  v16 = [v14 objectForKeyedSubscript:EARModelTrainingDataKey];
  v17 = +[NSCharacterSet newlineCharacterSet];
  v18 = [v16 componentsSeparatedByCharactersInSet:v17];

  if (!a7)
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
  if (!v13 && !v19)
  {
    *a7 = 0;
    goto LABEL_5;
  }

  v21 = *a7;
  v22 = [(NSString *)self->_recognizerConfigFilePath stringByDeletingLastPathComponent];
  v23 = [LSRLanguageModel createAppLmLmeProfileWithLanguage:v39 modelRoot:v22 customPronsData:v13 newOovs:v15 writeToVocabFile:v21];

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
    v25 = [v21 path];
    *buf = 136315394;
    v46 = "[LSRLanguageModel trainAppLmFromNgramsSerializedData:customPronsData:language:writeToAppLmDir:vocabFile:]";
    v47 = 2112;
    v48 = v25;
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
    if (!a6)
    {
LABEL_24:

      appLmData = self->_appLmData;
      self->_appLmData = 0;

      goto LABEL_33;
    }

    v31 = *a6;
    v32 = [v31 path];
    v33 = [v30 writeToDirectory:v32];

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
  v6 = [v3 language];
  v7 = [(LSRLanguageModel *)self oovWordsAndFrequenciesInNgramCount];
  v8 = [v7 allKeys];
  v9 = [v5 serializedModelWithLanguage:v6 modelData:v4 oovs:v8];

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

- (void)trainAppLmFromPlainTextAndWriteToAppDirectory:(id *)a3 vocabFile:(id *)a4
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
      if (!a3)
      {
        goto LABEL_13;
      }
    }

    else if (!a3)
    {
      goto LABEL_13;
    }

    *a3 = 0;
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
    v12 = *a3;
    v13 = v8;
    v14 = [v12 path];
    v15 = 136315394;
    v16 = "[LSRLanguageModel trainAppLmFromPlainTextAndWriteToAppDirectory:vocabFile:]";
    v17 = 2112;
    v18 = v14;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s Writing to: %@", &v15, 0x16u);
  }

  v9 = [*a3 path];
  v10 = [v7 writeToDirectory:v9];

  if ((v10 & 1) == 0)
  {
    v11 = SFLogConnection;
    if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[LSRLanguageModel trainAppLmFromPlainTextAndWriteToAppDirectory:vocabFile:]";
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%s Write process failed", &v15, 0xCu);
    }

    a4 = a3;
    goto LABEL_14;
  }

LABEL_13:
  if (a4)
  {
LABEL_14:
    *a4 = 0;
  }
}

- (id)oovWordsAndFrequenciesInNgramCount
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(_EARAppLmData *)self->_appLmData orderedOovs];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 frequency]);
        v11 = [v9 orthography];
        [v3 setObject:v10 forKey:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (void)addSentenceToNgramCounts:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];

  [(_EARAppLmData *)self->_appLmData addSentenceWithType:0 uuid:v6 content:v4];
}

- (LSRLanguageModel)initWithAssetPath:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = LSRLanguageModel;
  v5 = [(LSRLanguageModel *)&v30 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 stringByAppendingPathComponent:@"mini.json"];
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

  v15 = [v13 modelInfo];
  v16 = [v15 language];
  v17 = [SFUtilities stringByReplacingHyphensWithUnderscores:v16];
  localeCode = v5->_localeCode;
  v5->_localeCode = v17;

  v19 = [v13 modelInfo];
  v20 = [v19 version];
  modelVersion = v5->_modelVersion;
  v5->_modelVersion = v20;

LABEL_5:
  v22 = v5;
LABEL_9:

  return v22;
}

- (LSRLanguageModel)initWithLocale:(id)a3 clientID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = LSRLanguageModel;
  v8 = [(LSRLanguageModel *)&v16 init];
  if (v8)
  {
    v9 = [SFUtilities localeCodeForLocale:v6];
    v10 = [SFUtilities stringByReplacingHyphensWithUnderscores:v9];
    localeCode = v8->_localeCode;
    v8->_localeCode = v10;

    v12 = [[SFEntitledAssetConfig alloc] initWithLanguage:v8->_localeCode assetType:3];
    v13 = +[SFEntitledAssetManager sharedInstance];
    v14 = [v13 installedAssetWithConfig:v12 regionId:0 shouldSubscribe:1 subscriberId:v7 expiration:0];

    if (v14)
    {
      v8 = [(LSRLanguageModel *)v8 initWithAssetPath:v14];
    }
  }

  return v8;
}

+ (BOOL)createAppLmLmeProfileWithLanguage:(id)a3 modelRoot:(id)a4 customPronsData:(id)a5 newOovs:(id)a6 writeToVocabFile:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [LSRLanguageModel _userProfileWithModelRoot:a4 language:v11];
  if (v15)
  {
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000382D4;
    v40[3] = &unk_1000661C0;
    v16 = objc_alloc_init(NSMutableDictionary);
    v41 = v16;
    [v13 enumerateObjectsUsingBlock:v40];
    if (v12)
    {
      v17 = [[_EARPlsParser alloc] initWithData:v12];
      v18 = [v17 lexemes];
      v19 = [NSDictionary dictionaryWithDictionary:v18];

      v20 = [_EARPhonesetMapping alloc];
      v21 = [SFUtilities stringByReplacingHyphensWithUnderscores:v11];
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
    v25 = [v24 dataProfile];
    v26 = v25;
    v27 = v25 != 0;
    if (v25)
    {
      [v25 writeToURL:v14 atomically:0];
      v28 = SFLogConnection;
      if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v43 = "+[LSRLanguageModel createAppLmLmeProfileWithLanguage:modelRoot:customPronsData:newOovs:writeToVocabFile:]";
        v44 = 2112;
        v45 = v14;
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

+ (id)_userProfileWithModelRoot:(id)a3 language:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 stringByAppendingPathComponent:@"mini.json"];
  v8 = [v6 stringByAppendingPathComponent:@"ncs"];

  v9 = [v8 stringByAppendingPathComponent:@"en_US_napg.json"];
  v10 = [v8 stringByAppendingPathComponent:@"vocdelta.voc"];
  v11 = [v8 stringByAppendingPathComponent:@"pg.voc"];
  v12 = [v8 stringByAppendingPathComponent:@"mrec.psh"];
  v13 = [[_EARUserProfile alloc] initWithConfiguration:v7 language:v5 overrides:0 sdapiOverrides:v9 emptyVoc:v10 pgVoc:v11 paramsetHolder:v12];

  return v13;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    SFLogInitIfNeeded();
  }
}

@end