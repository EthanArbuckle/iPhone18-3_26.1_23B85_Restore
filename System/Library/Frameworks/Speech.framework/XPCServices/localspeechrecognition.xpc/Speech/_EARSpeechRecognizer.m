@interface _EARSpeechRecognizer
+ (id)_speechRecognizerWithLanguage:(id)a3 overrides:(id)a4 anyConfiguration:(BOOL)a5 taskConfiguration:(id)a6 modelRoot:(id)a7 error:(id *)a8 modelLoadTime:(double *)a9;
- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 language:(id)a6 activeConfiguration:(id)a7 modelLoadingOptions:(id)a8 enableSpeakerCodeTraining:(BOOL)a9 supportEmojiRecognition:(BOOL)a10 modelContextDelegate:(id)a11 enableItn:(BOOL)a12;
@end

@implementation _EARSpeechRecognizer

- (_EARSpeechRecognizer)initWithConfiguration:(id)a3 overrides:(id)a4 overrideConfigFiles:(id)a5 language:(id)a6 activeConfiguration:(id)a7 modelLoadingOptions:(id)a8 enableSpeakerCodeTraining:(BOOL)a9 supportEmojiRecognition:(BOOL)a10 modelContextDelegate:(id)a11 enableItn:(BOOL)a12
{
  LOBYTE(v14) = a12;
  LOWORD(v13) = __PAIR16__(a10, a9);
  return [(_EARSpeechRecognizer *)self initWithConfiguration:a3 overrides:a4 overrideConfigFiles:a5 language:a6 activeConfiguration:a7 modelLoadingOptions:a8 enableSpeakerCodeTraining:v13 supportEmojiRecognition:0 voiceCommandActiveSet:a11 modelContextDelegate:v14 enableItn:?];
}

+ (id)_speechRecognizerWithLanguage:(id)a3 overrides:(id)a4 anyConfiguration:(BOOL)a5 taskConfiguration:(id)a6 modelRoot:(id)a7 error:(id *)a8 modelLoadTime:(double *)a9
{
  v12 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  if (v17)
  {
    v18 = +[NSProcessInfo processInfo];
    [v18 systemUptime];
    v20 = v19;

    v21 = [v17 stringByAppendingPathComponent:@"mini.json"];
    v41 = v14;
    if (v12)
    {
      v22 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
      if (!v16)
      {
LABEL_10:
        v29 = objc_alloc_init(NSMutableDictionary);
        if ([v16 isEqualToString:kSFSpeechRecognizerTaskCaptioning])
        {
          [v29 setValue:@"YES" forKey:@"keepANEModelLoaded"];
        }

        LOBYTE(v40) = 1;
        LOWORD(v39) = 0;
        v30 = [[_EARSpeechRecognizer alloc] initWithConfig:v21 overrides:v15 overrideConfigFiles:0 language:v41 activeConfiguration:v22 modelLoadingOptions:v29 enableSpeakerCodeTraining:v39 supportEmojiRecognition:0 voiceCommandActiveSet:0 modelContextDelegate:v40 enableItn:a8 error:?];
        v24 = v30;
        if (v30)
        {
          [v30 setDetectUtterances:1];
          [v24 setRecognizeEagerCandidates:1];
          [v24 setConcatenateUtterances:1];
          [v24 setEnableSpeakerCodeTraining:0];
          v31 = +[NSProcessInfo processInfo];
          [v31 systemUptime];
          v33 = v32 - v20;

          v34 = SFLogConnection;
          if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v43 = "+[_EARSpeechRecognizer(LSRConnection) _speechRecognizerWithLanguage:overrides:anyConfiguration:taskConfiguration:modelRoot:error:modelLoadTime:]";
            v44 = 2048;
            v45 = v33;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "%s Created Recognizer in %lf sec", buf, 0x16u);
          }

          if (a9)
          {
            *a9 = v33;
          }

          v35 = v24;
          goto LABEL_21;
        }

        v36 = SFLogConnection;
        if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v43 = "+[_EARSpeechRecognizer(LSRConnection) _speechRecognizerWithLanguage:overrides:anyConfiguration:taskConfiguration:modelRoot:error:modelLoadTime:]";
          v44 = 2112;
          v45 = *&v21;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s Failed to create recognizer from: %@", buf, 0x16u);
          if (!a8)
          {
            goto LABEL_21;
          }
        }

        else if (!a8)
        {
LABEL_21:

          v14 = v41;
          goto LABEL_22;
        }

        v37 = [NSString stringWithFormat:@"Failed to create recognizer from=%@", v21];
        *a8 = [NSError lsr_errorWithCode:300 description:v37];

        goto LABEL_21;
      }
    }

    else
    {
      v22 = objc_alloc_init(_EARSpeechRecognitionActiveConfiguration);
      v25 = +[NSSet set];
      [v22 setSamplingRateFilter:v25];

      v26 = +[NSSet set];
      [v22 setTaskTypeFilter:v26];

      v27 = +[NSSet set];
      [v22 setFarFieldFilter:v27];

      [v22 setDeviceIdFilter:0];
      [v22 setAtypicalSpeechFilter:0];
      if (!v16)
      {
        goto LABEL_10;
      }
    }

    v28 = [NSSet setWithObject:v16];
    [v22 setTaskTypeFilter:v28];

    goto LABEL_10;
  }

  v23 = SFLogConnection;
  if (os_log_type_enabled(SFLogConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v43 = "+[_EARSpeechRecognizer(LSRConnection) _speechRecognizerWithLanguage:overrides:anyConfiguration:taskConfiguration:modelRoot:error:modelLoadTime:]";
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s Could not locate asset.", buf, 0xCu);
  }

  v24 = 0;
LABEL_22:

  return v24;
}

@end