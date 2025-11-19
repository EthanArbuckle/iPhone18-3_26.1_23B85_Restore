@interface DictationPersonalizationFidesPlugin
- (BOOL)_invalidated;
- (BOOL)_redecodeWithSession:(id)a3 selectedRecordInfos:(id)a4 selectedRecordDatas:(id)a5 personalizedLMPath:(id)a6 personalizedLMTrainingAsset:(id)a7 optIn:(BOOL)a8 result:(id)a9 error:(id *)a10;
- (BOOL)_selectRecordsWithSession:(id)a3 recordInfosOut:(id *)a4 recordDatasOut:(id *)a5 error:(id *)a6;
- (BOOL)_trainPersonalizedLMWithSession:(id)a3 directory:(id)a4 trainingAssetOut:(id *)a5 resultOut:(id *)a6 error:(id *)a7;
- (id)_modelVersionForLanguage:(id)a3;
- (void)_invalidate;
- (void)performEvaluation:(id)a3;
- (void)performSystematicErrorEvaluation:(id)a3;
@end

@implementation DictationPersonalizationFidesPlugin

- (void)performEvaluation:(id)a3
{
  v3 = a3;
  v4 = AFSiriLogContextFides;
  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v122 = "[DictationPersonalizationFidesPlugin performEvaluation:]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%s Starting Fides evaluation for Dictation Personalization", buf, 0xCu);
    v4 = AFSiriLogContextFides;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = v4;
    v6 = [v3 recipe];
    v7 = [v6 attachments];
    *buf = 136315394;
    v122 = "[DictationPersonalizationFidesPlugin performEvaluation:]";
    v123 = 2112;
    *v124 = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s Attachments: %@", buf, 0x16u);

    v4 = AFSiriLogContextFides;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v8 = v4;
    v9 = [v3 matchingRecordSet];
    v10 = [v9 count];
    *buf = 136315394;
    v122 = "[DictationPersonalizationFidesPlugin performEvaluation:]";
    v123 = 2048;
    *v124 = v10;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%s Fides data size: %ld", buf, 0x16u);

    v4 = AFSiriLogContextFides;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = v4;
    v12 = [v3 recipe];
    v13 = [v12 recipeUserInfo];
    *buf = 136315394;
    v122 = "[DictationPersonalizationFidesPlugin performEvaluation:]";
    v123 = 2112;
    *v124 = v13;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%s Fides recipe parameters: %@", buf, 0x16u);
  }

  v14 = +[AFPreferences sharedPreferences];
  v15 = [v14 dictationIsEnabled];

  if (v15)
  {
    v16 = [v3 recipe];
    v17 = [v16 recipeUserInfo];

    v18 = AFIsInternalInstall();
    v19 = +[AFPreferences sharedPreferences];
    v20 = [v19 siriDataSharingOptInStatus];

    v21 = v20 == &dword_0 + 1;
    v22 = [v17 objectForKeyedSubscript:@"reportWithFides"];
    v23 = [v22 BOOLValue];

    v24 = [v17 objectForKeyedSubscript:@"disableMTELogging"];
    v25 = [v24 BOOLValue];

    v26 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v122 = "[DictationPersonalizationFidesPlugin performEvaluation:]";
      v123 = 1024;
      *v124 = v18;
      *&v124[4] = 1024;
      *&v124[6] = v20 == &dword_0 + 1;
      v125 = 1024;
      v126 = v23;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "%s internal %d optIn %d reportWithFides %d", buf, 0x1Eu);
    }

    if (v20 != &dword_0 + 1)
    {
      v119 = NSLocalizedDescriptionKey;
      v120 = @"User not opted-in";
      v32 = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v33 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1502 userInfo:v32];

      [v3 completeWithError:v33 completionHandler:0];
      goto LABEL_76;
    }

    v27 = [v17 objectForKeyedSubscript:@"performSystematicErrorEvaluation"];
    v28 = [v27 BOOLValue];

    if (v28)
    {
      v29 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v122 = "[DictationPersonalizationFidesPlugin performEvaluation:]";
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "%s Performing systematic error evaluation instead of dictation personalization", buf, 0xCu);
      }

      [(DictationPersonalizationFidesPlugin *)self performSystematicErrorEvaluation:v3];
      goto LABEL_76;
    }

    v34 = [FidesSelfHelper alloc];
    v35 = [v17 objectForKeyedSubscript:@"experimentId"];
    v36 = [(FidesSelfHelper *)v34 initWithExperimentId:v35];

    [(FidesSelfHelper *)v36 logDictationPersonalizationExperimentStartedOrChanged];
    v37 = +[NSMutableDictionary dictionary];
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_5684;
    v105[3] = &unk_105F0;
    v109 = v18;
    v110 = v21;
    v111 = v23;
    v38 = v3;
    v106 = v38;
    v93 = v37;
    v107 = v93;
    v92 = v36;
    v108 = v92;
    v112 = v25;
    v91 = objc_retainBlock(v105);
    v94 = [v17 objectForKeyedSubscript:@"language"];
    [v93 setObject:v94 forKeyedSubscript:@"language"];
    v39 = [v17 objectForKeyedSubscript:@"experimentId"];
    [v93 setObject:v39 forKeyedSubscript:@"experimentId"];

    v40 = [v38 matchingRecordSet];
    v41 = [v40 nativeRecordInfo];
    v42 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v41 count]);
    [v93 setObject:v42 forKeyedSubscript:@"numAudio"];

    v43 = [(DictationPersonalizationFidesPlugin *)self _modelVersionForLanguage:v94];
    [(FidesSelfHelper *)v92 setDatapackVersion:v43];
    if (v94 && ![v43 length])
    {
      v49 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v122 = "[DictationPersonalizationFidesPlugin performEvaluation:]";
        _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "%s PLM: No model installed", buf, 0xCu);
      }

      (v91[2])();
      goto LABEL_75;
    }

    v90 = [v17 objectForKeyedSubscript:@"modelVersions"];
    if (v90)
    {
      v44 = v94 != 0;
    }

    else
    {
      v44 = 0;
    }

    if (v44 && (!v43 || ([v90 containsObject:v43] & 1) == 0))
    {
      v48 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v122 = "[DictationPersonalizationFidesPlugin performEvaluation:]";
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_INFO, "%s PLM: Rejected model", buf, 0xCu);
      }

      (v91[2])();
      goto LABEL_74;
    }

    v103 = 0;
    v104 = 0;
    v102 = 0;
    v45 = [(DictationPersonalizationFidesPlugin *)self _selectRecordsWithSession:v38 recordInfosOut:&v104 recordDatasOut:&v103 error:&v102];
    v46 = v104;
    v88 = v103;
    v47 = v102;
    v87 = v47;
    v89 = v46;
    if (v47)
    {
      [v38 completeWithError:v47 completionHandler:0];
LABEL_73:

LABEL_74:
LABEL_75:

      goto LABEL_76;
    }

    v50 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v46 count]);
    [v93 setObject:v50 forKeyedSubscript:@"numSelectedAudio"];

    if ((v45 & 1) == 0)
    {
      (v91[2])();
      goto LABEL_73;
    }

    v51 = dispatch_queue_create("com.apple.siri.speech-dictation-personalization", 0);
    queue = self->_queue;
    self->_queue = v51;

    v53 = [v38 activity];

    if (v53)
    {
      objc_initWeak(&location, self);
      v54 = [v38 activity];
      v99[1] = _NSConcreteStackBlock;
      v99[2] = 3221225472;
      v99[3] = sub_5728;
      v99[4] = &unk_10578;
      objc_copyWeak(&v100, &location);
      v86 = xpc_activity_add_eligibility_changed_handler();

      v55 = [v38 activity];
      should_defer = xpc_activity_should_defer(v55);

      if (should_defer)
      {
        v57 = AFSiriLogContextFides;
        if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v122 = "[DictationPersonalizationFidesPlugin performEvaluation:]";
          _os_log_impl(&dword_0, v57, OS_LOG_TYPE_INFO, "%s PLM: Deferred", buf, 0xCu);
        }

        v117 = NSLocalizedDescriptionKey;
        v118 = @"Deferred";
        v58 = [NSDictionary dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v59 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1503 userInfo:v58];

        [v38 completeWithError:v59 completionHandler:0];
        objc_destroyWeak(&v100);
        objc_destroyWeak(&location);
        v60 = 0;
        goto LABEL_69;
      }

      objc_destroyWeak(&v100);
      objc_destroyWeak(&location);
    }

    else
    {
      v86 = 0;
    }

    v61 = [v17 objectForKeyedSubscript:@"personalizedLM"];
    v62 = [v61 objectForKeyedSubscript:@"train"];
    v63 = [v62 BOOLValue];

    if (v63)
    {
      v64 = sub_5810();
      v65 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];
      [v65 removePersonalizedLMForFidesOnly:1];
      v84 = v65;
      v98 = 0;
      v99[0] = 0;
      v97 = 0;
      v83 = [(DictationPersonalizationFidesPlugin *)self _trainPersonalizedLMWithSession:v38 directory:v64 trainingAssetOut:v99 resultOut:&v98 error:&v97];
      v85 = v99[0];
      v66 = v98;
      v67 = v97;
      if (v67)
      {
        v68 = v66;
        [v38 completeWithError:v67 completionHandler:0];
LABEL_65:

        v74 = v84;
        goto LABEL_66;
      }

      v68 = v66;
      [v93 setObject:v66 forKeyedSubscript:@"personalizedLM"];
      if ((v83 & 1) == 0)
      {
        (v91[2])();
        goto LABEL_65;
      }

      v60 = v64;
      v69 = v85;
    }

    else
    {
      v69 = 0;
      v60 = 0;
    }

    if ([(DictationPersonalizationFidesPlugin *)self _invalidated])
    {
      v85 = v69;
      v70 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v122 = "[DictationPersonalizationFidesPlugin performEvaluation:]";
        _os_log_impl(&dword_0, v70, OS_LOG_TYPE_INFO, "%s PLM: Deferred", buf, 0xCu);
      }

      v115 = NSLocalizedDescriptionKey;
      v116 = @"Deferred";
      v71 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      v72 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1503 userInfo:v71];

      v73 = v38;
      v74 = v72;
      [v73 completeWithError:v72 completionHandler:0];
    }

    else if ([v89 count] && (v96 = 0, -[DictationPersonalizationFidesPlugin _redecodeWithSession:selectedRecordInfos:selectedRecordDatas:personalizedLMPath:personalizedLMTrainingAsset:optIn:result:error:](self, "_redecodeWithSession:selectedRecordInfos:selectedRecordDatas:personalizedLMPath:personalizedLMTrainingAsset:optIn:result:error:", v38, v89, v88, v60, v69, 1, v93, &v96), (v75 = v96) != 0))
    {
      v76 = v75;
      [v38 completeWithError:v75 completionHandler:0];
      v74 = v76;
      v85 = v69;
    }

    else
    {
      if (![(DictationPersonalizationFidesPlugin *)self _invalidated])
      {
        (v91[2])();
        goto LABEL_67;
      }

      v85 = v69;
      v77 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v122 = "[DictationPersonalizationFidesPlugin performEvaluation:]";
        _os_log_impl(&dword_0, v77, OS_LOG_TYPE_INFO, "%s PLM: Deferred", buf, 0xCu);
      }

      v113 = NSLocalizedDescriptionKey;
      v114 = @"Deferred";
      v78 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
      v79 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1503 userInfo:v78];

      v80 = v38;
      v74 = v79;
      [v80 completeWithError:v79 completionHandler:0];
    }

    v64 = v60;
LABEL_66:

    v60 = v64;
    v69 = v85;
LABEL_67:

    v81 = v86;
    if (!v60)
    {
LABEL_70:
      if (v81)
      {
        xpc_activity_remove_eligibility_changed_handler();
      }

      goto LABEL_73;
    }

    v82 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];
    [v82 removePersonalizedLMForFidesOnly:1];

LABEL_69:
    v81 = v86;
    goto LABEL_70;
  }

  v30 = AFSiriLogContextFides;
  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v122 = "[DictationPersonalizationFidesPlugin performEvaluation:]";
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%s PLM: Dictation disabled", buf, 0xCu);
  }

  v127 = NSLocalizedDescriptionKey;
  v128 = @"PLM: Dictation disabled";
  v31 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
  v17 = [NSError errorWithDomain:kAFAssistantErrorDomain code:34 userInfo:v31];

  [v3 completeWithError:v17 completionHandler:0];
LABEL_76:
}

- (void)performSystematicErrorEvaluation:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextFides;
  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s Starting systematic error evaluation in DictationPersonalizationFidesPlugin", &buf, 0xCu);
  }

  v6 = dispatch_queue_create("com.apple.siri.speech-recognition-systematic-error", 0);
  queue = self->_queue;
  val = self;
  self->_queue = v6;

  v8 = [v4 recipe];
  v93 = [v8 recipeUserInfo];

  v9 = [v93 objectForKeyedSubscript:@"leftContextSize"];
  v78 = [v9 integerValue];

  v10 = [v93 objectForKeyedSubscript:@"rightContextSize"];
  v77 = [v10 integerValue];

  v11 = [v93 objectForKeyedSubscript:@"recordLimit"];
  if ([v11 integerValue])
  {
    v12 = [v93 objectForKeyedSubscript:@"recordLimit"];
    v90 = [v12 integerValue];
  }

  else
  {
    v90 = &dword_0 + 1;
  }

  v13 = [v93 objectForKeyedSubscript:@"keepMTELogging"];
  v14 = [v13 BOOLValue];

  v15 = [v93 objectForKeyedSubscript:@"recognizedTTSASRShouldMatch"];
  v76 = [v15 BOOLValue];

  v16 = [v93 objectForKeyedSubscript:@"caseSensitive"];
  v75 = [v16 BOOLValue];

  v17 = [v93 objectForKeyedSubscript:@"skipLME"];
  [v17 BOOLValue];

  v85 = [v93 objectForKeyedSubscript:@"wordSenseAccessList"];
  if (v85)
  {
    v79 = [NSSet setWithArray:?];
  }

  else
  {
    v79 = 0;
  }

  v18 = [FidesSelfHelper alloc];
  v19 = [v93 objectForKeyedSubscript:@"experimentId"];
  v20 = [(FidesSelfHelper *)v18 initWithExperimentId:v19];

  [(FidesSelfHelper *)v20 logUserEditExperimentStartedOrChanged];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v137 = 0x3032000000;
  v138 = sub_6B70;
  v139 = sub_6B80;
  v140 = objc_opt_new();
  v118[0] = _NSConcreteStackBlock;
  v118[1] = 3221225472;
  v118[2] = sub_6B88;
  v118[3] = &unk_10550;
  v84 = v20;
  v119 = v84;
  p_buf = &buf;
  v122 = v14;
  v83 = v4;
  v120 = v83;
  v82 = objc_retainBlock(v118);
  v88 = [v93 objectForKeyedSubscript:@"language"];
  [*(*(&buf + 1) + 40) setObject:v88 forKeyedSubscript:@"language"];
  v21 = [v93 objectForKeyedSubscript:@"experimentId"];
  [*(*(&buf + 1) + 40) setObject:v21 forKeyedSubscript:@"experimentId"];

  v87 = [(DictationPersonalizationFidesPlugin *)self _modelVersionForLanguage:v88];
  [(FidesSelfHelper *)v84 setDatapackVersion:v87];
  if (!v88 || [v87 length])
  {
    v81 = [v93 objectForKeyedSubscript:@"modelVersions"];
    if (v88 && v81 && (!v87 || ([v81 containsObject:v87] & 1) == 0))
    {
      v24 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *v129 = 136315138;
        *&v129[4] = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s SEE: Rejected model", v129, 0xCu);
      }

      (v82[2])();
      goto LABEL_99;
    }

    v117 = 0;
    v116 = 0;
    v115 = 0;
    v22 = [(DictationPersonalizationFidesPlugin *)self _selectRecordsWithSession:v83 recordInfosOut:&v117 recordDatasOut:&v116 error:&v115];
    v94 = v117;
    v96 = v116;
    v23 = v115;
    v74 = v23;
    if (v23)
    {
      [v83 completeWithError:v23 completionHandler:0];
LABEL_98:

LABEL_99:
      goto LABEL_100;
    }

    if ((v22 & 1) == 0)
    {
      (v82[2])();
      goto LABEL_98;
    }

    v26 = [v94 allKeys];
    v86 = objc_opt_new();
    v92 = objc_opt_new();
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    obj = v26;
    v27 = [obj countByEnumeratingWithState:&v111 objects:v135 count:16];
    if (v27)
    {
      v28 = *v112;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v112 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v111 + 1) + 8 * i);
          v31 = AFSiriLogContextFides;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = [v94 objectForKeyedSubscript:v30];
            *v129 = 136315394;
            *&v129[4] = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
            *&v129[12] = 2112;
            *&v129[14] = v32;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "%s record info: %@", v129, 0x16u);
          }

          v33 = [v96 objectForKeyedSubscript:v30];
          if (v33)
          {
            v34 = [CESRFidesASRRecord recordFromData:v33];
            v35 = v34;
            if (v34)
            {
              v36 = [v34 correctedText];
              if ([v36 length])
              {
                v37 = [v35 samplingRate];
                v38 = AFSiriLogContextFides;
                if (v37 == &loc_3E80)
                {
                  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
                  {
                    *v129 = 136315394;
                    *&v129[4] = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
                    *&v129[12] = 2112;
                    *&v129[14] = v36;
                    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_INFO, "%s Retrieved corrected text: %@", v129, 0x16u);
                  }

                  if ([v92 count] < v90)
                  {
                    [v86 setObject:v33 forKeyedSubscript:v30];
                    [v92 setObject:v36 forKeyedSubscript:v30];
                  }
                }

                else
                {
                  v42 = AFSiriLogContextFides;
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    v43 = [v35 samplingRate];
                    *v129 = 136315650;
                    *&v129[4] = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
                    *&v129[12] = 2048;
                    *&v129[14] = v43;
                    *&v129[22] = 2048;
                    v130 = &loc_3E80;
                    _os_log_error_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%s Sampling rate does not match, record sampling rate: %lu, downsampling rate: %lu", v129, 0x20u);
                  }
                }
              }

              else
              {
                v41 = AFSiriLogContextFides;
                if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
                {
                  *v129 = 136315138;
                  *&v129[4] = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
                  _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%s No corrected text in record, skipping TTS ASR pipeline", v129, 0xCu);
                }
              }
            }

            else
            {
              v40 = AFSiriLogContextFides;
              if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
              {
                *v129 = 136315138;
                *&v129[4] = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
                _os_log_error_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%s Unable to load localSpeechDESRecord", v129, 0xCu);
              }
            }
          }

          else
          {
            v39 = AFSiriLogContextFides;
            if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
            {
              *v129 = 136315138;
              *&v129[4] = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
              _os_log_error_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%s Nil record data", v129, 0xCu);
            }
          }
        }

        v27 = [obj countByEnumeratingWithState:&v111 objects:v135 count:16];
      }

      while (v27);
    }

    if (!v92 || ![v92 count])
    {
      v52 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *v129 = 136315138;
        *&v129[4] = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
        _os_log_impl(&dword_0, v52, OS_LOG_TYPE_INFO, "%s No corrected text found in sampled dodML records, exiting...", v129, 0xCu);
      }

      (v82[2])();
      goto LABEL_97;
    }

    v44 = val->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_6C18;
    block[3] = &unk_104B0;
    block[4] = val;
    dispatch_sync(v44, block);
    v45 = [v83 activity];

    if (v45)
    {
      objc_initWeak(location, val);
      v46 = [v83 activity];
      v108[5] = _NSConcreteStackBlock;
      v108[6] = 3221225472;
      v108[7] = sub_6C80;
      v108[8] = &unk_10578;
      objc_copyWeak(&v109, location);
      v91 = xpc_activity_add_eligibility_changed_handler();

      v47 = [v83 activity];
      should_defer = xpc_activity_should_defer(v47);

      if (should_defer)
      {
        v49 = AFSiriLogContextFides;
        if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
        {
          *v129 = 136315138;
          *&v129[4] = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_INFO, "%s SEE: Deferred", v129, 0xCu);
        }

        v133 = NSLocalizedDescriptionKey;
        v134 = @"Deferred";
        v50 = [NSDictionary dictionaryWithObjects:&v134 forKeys:&v133 count:1];
        v51 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1503 userInfo:v50];

        [v83 completeWithError:v51 completionHandler:0];
        objc_destroyWeak(&v109);
        objc_destroyWeak(location);
LABEL_95:
        if (v91)
        {
          xpc_activity_remove_eligibility_changed_handler();
        }

LABEL_97:

        goto LABEL_98;
      }

      objc_destroyWeak(&v109);
      objc_destroyWeak(location);
    }

    else
    {
      v91 = 0;
    }

    *v129 = 0;
    *&v129[8] = v129;
    *&v129[16] = 0x3032000000;
    v130 = sub_6B70;
    v131 = sub_6B80;
    v132 = 0;
    v53 = objc_alloc_init(SpeechModelTrainingClient);
    v54 = v53;
    if (v53)
    {
      v108[0] = _NSConcreteStackBlock;
      v108[1] = 3221225472;
      v108[2] = sub_6D68;
      v108[3] = &unk_105A0;
      v108[4] = v129;
      [v53 generateAudioWithTexts:v92 language:v88 completion:v108];
    }

    v55 = *(*&v129[8] + 40);
    if (v55 && [v55 count])
    {
      v89 = v54;
      if ([(DictationPersonalizationFidesPlugin *)val _invalidated])
      {
        v56 = AFSiriLogContextFides;
        if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
        {
          LODWORD(location[0]) = 136315138;
          *(location + 4) = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
          _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "%s SEE: Deferred", location, 0xCu);
        }

        v126 = NSLocalizedDescriptionKey;
        v127 = @"Deferred";
        v57 = [NSDictionary dictionaryWithObjects:&v127 forKeys:&v126 count:1];
        v58 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1503 userInfo:v57];

        [v83 completeWithError:v58 completionHandler:0];
      }

      else
      {
        v60 = +[NSMutableArray array];
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v61 = v86;
        v62 = [v61 countByEnumeratingWithState:&v104 objects:v125 count:16];
        if (v62)
        {
          v63 = *v105;
          do
          {
            for (j = 0; j != v62; j = j + 1)
            {
              if (*v105 != v63)
              {
                objc_enumerationMutation(v61);
              }

              v65 = [*(*&v129[8] + 40) objectForKeyedSubscript:*(*(&v104 + 1) + 8 * j)];
              v66 = v65 == 0;

              if (v66)
              {
                v67 = AFSiriLogContextFides;
                if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
                {
                  LODWORD(location[0]) = 136315138;
                  *(location + 4) = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
                  _os_log_impl(&dword_0, v67, OS_LOG_TYPE_INFO, "%s TTS failure when performing systematic error evaluation", location, 0xCu);
                }

                v68 = objc_opt_new();
                [v68 setValue:&off_11650 forKey:@"errorCode"];
                [v60 addObject:v68];
              }
            }

            v62 = [v61 countByEnumeratingWithState:&v104 objects:v125 count:16];
          }

          while (v62);
        }

        recognizer = val->_recognizer;
        v70 = *(*&v129[8] + 40);
        v97[0] = _NSConcreteStackBlock;
        v97[1] = 3221225472;
        v97[2] = sub_6E70;
        v97[3] = &unk_105C8;
        v99 = &buf;
        v58 = v60;
        v102 = v76;
        v103 = v75;
        v98 = v58;
        v100 = v78;
        v101 = v77;
        [CoreEmbeddedSpeechRecognizer runCorrectedTextEvaluationWithAudioDatas:"runCorrectedTextEvaluationWithAudioDatas:recordDatas:language:samplingRate:caseSensitive:skipLME:wordSenseAccessListSet:completion:" recordDatas:v70 language:v61 samplingRate:v88 caseSensitive:16000 skipLME:v79 wordSenseAccessListSet:v97 completion:?];
        if ([(DictationPersonalizationFidesPlugin *)val _invalidated])
        {
          v71 = AFSiriLogContextFides;
          if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
          {
            LODWORD(location[0]) = 136315138;
            *(location + 4) = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
            _os_log_impl(&dword_0, v71, OS_LOG_TYPE_INFO, "%s SEE: Deferred", location, 0xCu);
          }

          v123 = NSLocalizedDescriptionKey;
          v124 = @"Deferred";
          v72 = [NSDictionary dictionaryWithObjects:&v124 forKeys:&v123 count:1];
          v73 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1503 userInfo:v72];

          [v83 completeWithError:v73 completionHandler:0];
        }

        else
        {
          (v82[2])();
        }
      }

      v54 = v89;
    }

    else
    {
      v59 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 136315138;
        *(location + 4) = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
        _os_log_error_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "%s Failed to generate TTS audios", location, 0xCu);
      }

      (v82[2])();
    }

    _Block_object_dispose(v129, 8);
    goto LABEL_95;
  }

  v25 = AFSiriLogContextFides;
  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
  {
    *v129 = 136315138;
    *&v129[4] = "[DictationPersonalizationFidesPlugin performSystematicErrorEvaluation:]";
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%s SEE: No model installed", v129, 0xCu);
  }

  (v82[2])();
LABEL_100:

  _Block_object_dispose(&buf, 8);
}

- (BOOL)_redecodeWithSession:(id)a3 selectedRecordInfos:(id)a4 selectedRecordDatas:(id)a5 personalizedLMPath:(id)a6 personalizedLMTrainingAsset:(id)a7 optIn:(BOOL)a8 result:(id)a9 error:(id *)a10
{
  v53 = a8;
  v14 = a3;
  v60 = a4;
  v15 = a5;
  v56 = a6;
  v55 = a7;
  v50 = a9;
  v52 = v14;
  v16 = [v14 recipe];
  v57 = [v16 recipeUserInfo];

  v17 = objc_alloc_init(NSMutableDictionary);
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v18 = v15;
  v19 = [v18 countByEnumeratingWithState:&v86 objects:v95 count:16];
  if (v19)
  {
    v20 = *v87;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v87 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v86 + 1) + 8 * i);
        v23 = [v60 objectForKeyedSubscript:v22];
        v24 = [v23 objectForKeyedSubscript:@"language"];

        v25 = [v17 objectForKeyedSubscript:v24];
        LODWORD(v23) = v25 == 0;

        if (v23)
        {
          v26 = objc_alloc_init(NSMutableDictionary);
          [v17 setObject:v26 forKeyedSubscript:v24];
        }

        v27 = [v18 objectForKeyedSubscript:v22];
        v28 = [v17 objectForKeyedSubscript:v24];
        [v28 setObject:v27 forKeyedSubscript:v22];
      }

      v19 = [v18 countByEnumeratingWithState:&v86 objects:v95 count:16];
    }

    while (v19);
  }

  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = sub_6B70;
  v84 = sub_6B80;
  v85 = objc_alloc_init(NSMutableArray);
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = sub_6B70;
  v78 = sub_6B80;
  v79 = objc_alloc_init(NSMutableArray);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7CA4;
  block[3] = &unk_104B0;
  block[4] = self;
  dispatch_sync(queue, block);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v30 = v17;
  v31 = [v30 countByEnumeratingWithState:&v69 objects:v94 count:16];
  if (v31)
  {
    v58 = *v70;
    v54 = !v53;
    v32 = &FidesSelfHelper__metaData;
    v33 = &FidesSelfHelper__metaData;
LABEL_12:
    v34 = 0;
    base_props = v32[23].base_props;
    v51 = *&v33[24].flags;
    while (1)
    {
      if (*v70 != v58)
      {
        objc_enumerationMutation(v30);
      }

      v36 = *(*(&v69 + 1) + 8 * v34);
      v63 = 0;
      v64 = &v63;
      v65 = 0x3032000000;
      v66 = sub_6B70;
      v67 = sub_6B80;
      v68 = 0;
      v37 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v91 = "[DictationPersonalizationFidesPlugin _redecodeWithSession:selectedRecordInfos:selectedRecordDatas:personalizedLMPath:personalizedLMTrainingAsset:optIn:result:error:]";
        v92 = 2112;
        v93 = v36;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "%s Run evaluation using embeddedspeech recognizer for language %@", buf, 0x16u);
      }

      recognizer = self->_recognizer;
      v39 = objc_opt_respondsToSelector();
      v40 = self->_recognizer;
      if (v39)
      {
        break;
      }

      v44 = self->_recognizer;
      if (objc_opt_respondsToSelector())
      {
        v45 = self->_recognizer;
        v41 = [v30 objectForKeyedSubscript:v36];
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_7EC4;
        v61[3] = &unk_10528;
        v61[4] = v36;
        v61[5] = &v63;
        v61[6] = &v80;
        v61[7] = &v74;
        [(CoreEmbeddedSpeechRecognizer *)v45 runEvaluationWithDESRecordDatas:v41 language:v36 recipe:v57 fidesPersonalizedLMPath:v56 fidesPersonalizedLMTrainingAsset:v55 scrubResult:v54 completion:v61];
        goto LABEL_21;
      }

LABEL_22:
      if (v64[5])
      {
        v47 = AFSiriLogContextFides;
        if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v91 = "[DictationPersonalizationFidesPlugin _redecodeWithSession:selectedRecordInfos:selectedRecordDatas:personalizedLMPath:personalizedLMTrainingAsset:optIn:result:error:]";
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "%s Evaluation failure", buf, 0xCu);
        }

        if (a10)
        {
          *a10 = v64[5];
        }

        _Block_object_dispose(&v63, 8);

        v46 = 0;
        goto LABEL_31;
      }

      _Block_object_dispose(&v63, 8);

      if (v31 == ++v34)
      {
        v31 = [v30 countByEnumeratingWithState:&v69 objects:v94 count:16];
        v32 = &FidesSelfHelper__metaData;
        v33 = &FidesSelfHelper__metaData;
        if (v31)
        {
          goto LABEL_12;
        }

        goto LABEL_25;
      }
    }

    v41 = [v30 objectForKeyedSubscript:v36];
    v42 = [v52 recipe];
    v43 = [v42 attachments];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_7D0C;
    v62[3] = &unk_10528;
    v62[4] = v36;
    v62[5] = &v63;
    v62[6] = &v80;
    v62[7] = &v74;
    LOBYTE(v49) = v54;
    [(CoreEmbeddedSpeechRecognizer *)v40 runEvaluationWithDESRecordDatas:v41 language:v36 recipe:v57 attachments:v43 fidesPersonalizedLMPath:v56 fidesPersonalizedLMTrainingAsset:v55 scrubResult:v49 completion:v62];

LABEL_21:
    goto LABEL_22;
  }

LABEL_25:

  [v50 setObject:v81[5] forKeyedSubscript:@"audioResults"];
  [v50 setObject:v75[5] forKeyedSubscript:@"languageMetadata"];
  v46 = 1;
LABEL_31:
  _Block_object_dispose(&v74, 8);

  _Block_object_dispose(&v80, 8);
  return v46;
}

- (BOOL)_trainPersonalizedLMWithSession:(id)a3 directory:(id)a4 trainingAssetOut:(id *)a5 resultOut:(id *)a6 error:(id *)a7
{
  v63 = self;
  v8 = a3;
  v68 = a4;
  v69 = v8;
  v9 = [v8 recipe];
  v70 = [v9 recipeUserInfo];

  v72 = [v70 objectForKeyedSubscript:@"language"];
  v71 = objc_alloc_init(NSMutableDictionary);
  if ([v72 length])
  {
    *v92 = 0;
    *&v92[8] = v92;
    *&v92[16] = 0x3032000000;
    v93 = sub_6B70;
    v94 = sub_6B80;
    v95 = 0;
    v10 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_8D58;
    v75[3] = &unk_10618;
    v77 = v92;
    v12 = v11;
    v76 = v12;
    [v10 getOfflineDictationStatusWithCompletion:v75];
    v13 = dispatch_time(0, 10000000000);
    dispatch_group_wait(v12, v13);
    v14 = *(*&v92[8] + 40);
    v15 = objc_alloc_init(NSMutableSet);
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v78 objects:v96 count:16];
    if (v17)
    {
      v18 = *v79;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v79 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v78 + 1) + 8 * i);
          v21 = [v16 objectForKeyedSubscript:{v20, v63}];
          IsInstalled = AFOfflineDictationStatusStringIsInstalled();

          if (IsInstalled)
          {
            [v15 addObject:v20];
          }
        }

        v17 = [v16 countByEnumeratingWithState:&v78 objects:v96 count:16];
      }

      while (v17);
    }

    v23 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v87 = "getPersonalizedLMUserLanguage";
      v88 = 2112;
      v89 = v15;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%s PLM: installedLanguages=%@", buf, 0x16u);
    }

    if (![v15 count])
    {
      v25 = 0;
      goto LABEL_33;
    }

    if ([v15 count] == &dword_0 + 1)
    {
      v24 = [v15 allObjects];
      v25 = [v24 firstObject];

      v26 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v87 = "getPersonalizedLMUserLanguage";
        v88 = 2112;
        v89 = v25;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_INFO, "%s PLM: Found one dictation language %@", buf, 0x16u);
      }

LABEL_33:

      _Block_object_dispose(v92, 8);
      [v71 setObject:v25 forKeyedSubscript:@"userLanguage"];
      v37 = AFSiriLogContextFides;
      if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
      {
        *v96 = 136315394;
        *&v96[4] = "[DictationPersonalizationFidesPlugin _trainPersonalizedLMWithSession:directory:trainingAssetOut:resultOut:error:]";
        *&v96[12] = 2112;
        *&v96[14] = v25;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_INFO, "%s PLM: user language: %@", v96, 0x16u);
      }

      if ([v25 isEqualToString:v72])
      {
        v38 = [v69 recipe];
        v39 = [v38 attachments];
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v40 = [v39 countByEnumeratingWithState:&v78 objects:v96 count:16];
        if (v40)
        {
          v41 = *v79;
          while (2)
          {
            for (j = 0; j != v40; j = j + 1)
            {
              if (*v79 != v41)
              {
                objc_enumerationMutation(v39);
              }

              v43 = *(*(&v78 + 1) + 8 * j);
              v44 = [v43 lastPathComponent];
              v45 = [v44 isEqualToString:@"lm-personalize.json"];

              if (v45)
              {
                v46 = v43;
                goto LABEL_51;
              }
            }

            v40 = [v39 countByEnumeratingWithState:&v78 objects:v96 count:16];
            if (v40)
            {
              continue;
            }

            break;
          }
        }

        v46 = 0;
LABEL_51:

        v49 = [v46 path];

        v50 = [v49 length];
        v28 = v50 != 0;
        if (v50)
        {
          *v96 = 0;
          *&v96[8] = v96;
          *&v96[16] = 0x3032000000;
          v97 = sub_6B70;
          v98 = sub_6B80;
          v99 = 0;
          *&v78 = 0;
          *(&v78 + 1) = &v78;
          *&v79 = 0x3032000000;
          *(&v79 + 1) = sub_6B70;
          *&v80 = sub_6B80;
          *(&v80 + 1) = 0;
          v51 = AFSiriLogContextFides;
          if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
          {
            *v92 = 136315138;
            *&v92[4] = "[DictationPersonalizationFidesPlugin _trainPersonalizedLMWithSession:directory:trainingAssetOut:resultOut:error:]";
            _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "%s PLM: Client start training", v92, 0xCu);
          }

          v52 = *(v64 + 8);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_8DB8;
          block[3] = &unk_104B0;
          block[4] = v64;
          dispatch_sync(v52, block);
          v53 = *(v64 + 24);
          v73[0] = _NSConcreteStackBlock;
          v73[1] = 3221225472;
          v73[2] = sub_8E10;
          v73[3] = &unk_10500;
          v73[4] = v96;
          v73[5] = &v78;
          [v53 trainPersonalizedLMWithLanguage:v72 configuration:v49 asset:0 directory:v68 completion:v73];
          v54 = *(*(&v78 + 1) + 40);
          if (v54)
          {
            v55 = AFSiriLogContextFides;
            if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
            {
              *v92 = 136315394;
              *&v92[4] = "[DictationPersonalizationFidesPlugin _trainPersonalizedLMWithSession:directory:trainingAssetOut:resultOut:error:]";
              *&v92[12] = 2112;
              *&v92[14] = v54;
              _os_log_impl(&dword_0, v55, OS_LOG_TYPE_INFO, "%s PLM: Client training failed: %@", v92, 0x16u);
              v54 = *(*(&v78 + 1) + 40);
            }

            v56 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v54 code]);
            [v71 setObject:v56 forKeyedSubscript:@"trainErrorCode"];

            v57 = [*(*(&v78 + 1) + 40) userInfo];
            v58 = [v57 objectForKeyedSubscript:NSLocalizedDescriptionKey];
            [v71 setObject:v58 forKeyedSubscript:@"trainErrorDescription"];
          }

          [v71 setObject:*(*&v96[8] + 40) forKeyedSubscript:@"train"];
          if (a6)
          {
            v59 = v71;
            *a6 = v71;
          }

          if (a5)
          {
            *a5 = [*(*&v96[8] + 40) objectForKeyedSubscript:@"asset"];
          }

          _Block_object_dispose(&v78, 8);

          _Block_object_dispose(v96, 8);
        }

        else
        {
          v60 = AFSiriLogContextFides;
          if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
          {
            *v96 = 136315138;
            *&v96[4] = "[DictationPersonalizationFidesPlugin _trainPersonalizedLMWithSession:directory:trainingAssetOut:resultOut:error:]";
            _os_log_impl(&dword_0, v60, OS_LOG_TYPE_INFO, "%s PLM: Recipe attachments missing configuration", v96, 0xCu);
          }

          if (a7)
          {
            v82 = NSLocalizedDescriptionKey;
            v83 = @"PLM: Recipe attachments missing configuration";
            v61 = [NSDictionary dictionaryWithObjects:&v83 forKeys:&v82 count:1];
            *a7 = [NSError errorWithDomain:kAFAssistantErrorDomain code:1501 userInfo:v61];
          }
        }
      }

      else
      {
        v47 = AFSiriLogContextFides;
        if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
        {
          *v96 = 136315650;
          *&v96[4] = "[DictationPersonalizationFidesPlugin _trainPersonalizedLMWithSession:directory:trainingAssetOut:resultOut:error:]";
          *&v96[12] = 2112;
          *&v96[14] = v25;
          *&v96[22] = 2112;
          v97 = v72;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_INFO, "%s PLM: User language (%@) does not match recipe language (%@)", v96, 0x20u);
        }

        if (a6)
        {
          v48 = v71;
          *a6 = v71;
        }

        v28 = 1;
      }

      goto LABEL_68;
    }

    v29 = +[AFPreferences sharedPreferences];
    v30 = [v29 languageCode];

    v31 = AFOfflineDictationLanguageForKeyboardLanguage();
    v32 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v87 = "getPersonalizedLMUserLanguage";
      v88 = 2112;
      v89 = v30;
      v90 = 2112;
      v91 = v31;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "%s PLM: Trying Siri language %@ result %@", buf, 0x20u);
    }

    if ([v31 length])
    {
      v33 = v30;
    }

    else
    {
      v34 = +[NSLocale currentLocale];
      v33 = [v34 localeIdentifier];

      v35 = AFOfflineDictationLanguageForKeyboardLanguage();

      v36 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v87 = "getPersonalizedLMUserLanguage";
        v88 = 2112;
        v89 = v33;
        v90 = 2112;
        v91 = v35;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_INFO, "%s PLM: Trying system language %@ result %@", buf, 0x20u);
      }

      if (![v35 length])
      {
        v25 = 0;
        goto LABEL_32;
      }

      v31 = v35;
    }

    v35 = v31;
    v25 = v35;
LABEL_32:

    goto LABEL_33;
  }

  v27 = AFSiriLogContextFides;
  if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
  {
    *v96 = 136315138;
    *&v96[4] = "[DictationPersonalizationFidesPlugin _trainPersonalizedLMWithSession:directory:trainingAssetOut:resultOut:error:]";
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_INFO, "%s PLM: Recipe missing language", v96, 0xCu);
  }

  if (a7)
  {
    v84 = NSLocalizedDescriptionKey;
    v85 = @"PLM: Recipe missing language";
    v25 = [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    [NSError errorWithDomain:kAFAssistantErrorDomain code:1501 userInfo:v25];
    *a7 = v28 = 0;
LABEL_68:

    goto LABEL_69;
  }

  v28 = 0;
LABEL_69:

  return v28;
}

- (BOOL)_selectRecordsWithSession:(id)a3 recordInfosOut:(id *)a4 recordDatasOut:(id *)a5 error:(id *)a6
{
  v6 = a3;
  v7 = [v6 recipe];
  v8 = [v7 recipeUserInfo];

  v9 = [v8 objectForKeyedSubscript:@"minAudio"];
  v38 = [v9 unsignedIntegerValue];

  v10 = [v8 objectForKeyedSubscript:@"maxAudio"];
  v46 = [v10 unsignedIntegerValue];

  v42 = v8;
  v11 = [v8 objectForKeyedSubscript:@"language"];
  v45 = v6;
  v12 = [v6 matchingRecordSet];
  v13 = [v12 nativeRecordInfo];

  v47 = v13;
  v14 = [v13 allKeys];
  v15 = [v14 mutableCopy];

  v16 = [v15 count];
  if (v16 >= 2)
  {
    do
    {
      v17 = (v16 - 1);
      [v15 exchangeObjectAtIndex:v16 - 1 withObjectAtIndex:arc4random_uniform(v16)];
      v16 = v17;
    }

    while (v17 > 1);
  }

  v18 = objc_alloc_init(NSMutableDictionary);
  v43 = objc_alloc_init(NSMutableDictionary);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v15;
  v19 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v50;
LABEL_5:
    v22 = 0;
    while (1)
    {
      if (*v50 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v49 + 1) + 8 * v22);
      if ([v18 count] >= v46)
      {
        break;
      }

      v24 = [v47 objectForKeyedSubscript:v23];
      v25 = v24;
      if (!v11 || ([v24 objectForKeyedSubscript:@"language"], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v11, "isEqualToString:", v26), v26, v27))
      {
        v28 = [v45 matchingRecordSet];
        v48 = 0;
        v29 = [v28 nativeRecordDataForRecordUUID:v23 error:&v48];
        v30 = v48;

        if (v29)
        {
          v31 = [v23 UUIDString];
          [v18 setObject:v25 forKeyedSubscript:v31];
          [v43 setObject:v29 forKeyedSubscript:v31];
        }

        else
        {
          v32 = AFSiriLogContextFides;
          if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v54 = "[DictationPersonalizationFidesPlugin _selectRecordsWithSession:recordInfosOut:recordDatasOut:error:]";
            v55 = 2112;
            v56 = v30;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_INFO, "%s Nil record data: %@", buf, 0x16u);
          }
        }
      }

      if (v20 == ++v22)
      {
        v20 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (v20)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  if (a4)
  {
    v33 = v18;
    *a4 = v18;
  }

  if (a5)
  {
    v34 = v43;
    *a5 = v43;
  }

  v35 = [v18 count];
  v36 = v35 >= v39;

  return v36;
}

- (id)_modelVersionForLanguage:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [[CoreEmbeddedSpeechRecognizer alloc] initWithDelegate:0 instanceUUID:&CoreEmbeddedSpeechRecognizerInstanceUUIDBackground];
    v5 = [[SFEntitledAssetConfig alloc] initWithLanguage:v3 assetType:3];
    v13 = 0;
    v6 = [v4 modelPropertiesForAssetConfig:v5 error:&v13];
    v7 = v13;
    [v4 invalidate];
    v8 = AFSiriLogContextFides;
    if (os_log_type_enabled(AFSiriLogContextFides, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [v6 modelVersion];
      *buf = 136315906;
      v15 = "[DictationPersonalizationFidesPlugin _modelVersionForLanguage:]";
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%s language: %@ modelVersion: %@ error: %@", buf, 0x2Au);
    }

    v11 = [v6 modelVersion];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_invalidated
{
  queue = self->_queue;
  if (!queue)
  {
    __assert_rtn("[DictationPersonalizationFidesPlugin _invalidated]", "DictationPersonalizationFidesPlugin.m", 158, "_queue");
  }

  dispatch_assert_queue_not_V2(queue);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_9568;
  v7[3] = &unk_104D8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);
  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)_invalidate
{
  queue = self->_queue;
  if (!queue)
  {
    __assert_rtn("[DictationPersonalizationFidesPlugin _invalidate]", "DictationPersonalizationFidesPlugin.m", 148, "_queue");
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9614;
  block[3] = &unk_104B0;
  block[4] = self;
  dispatch_async(queue, block);
}

@end