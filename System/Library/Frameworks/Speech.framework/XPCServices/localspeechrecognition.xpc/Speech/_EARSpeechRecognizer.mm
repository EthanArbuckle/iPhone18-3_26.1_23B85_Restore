@interface _EARSpeechRecognizer
+ (id)_speechRecognizerWithLanguage:(id)language overrides:(id)overrides anyConfiguration:(BOOL)configuration taskConfiguration:(id)taskConfiguration modelRoot:(id)root error:(id *)error modelLoadTime:(double *)time;
- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files language:(id)language activeConfiguration:(id)activeConfiguration modelLoadingOptions:(id)options enableSpeakerCodeTraining:(BOOL)training supportEmojiRecognition:(BOOL)self0 modelContextDelegate:(id)self1 enableItn:(BOOL)self2;
@end

@implementation _EARSpeechRecognizer

- (_EARSpeechRecognizer)initWithConfiguration:(id)configuration overrides:(id)overrides overrideConfigFiles:(id)files language:(id)language activeConfiguration:(id)activeConfiguration modelLoadingOptions:(id)options enableSpeakerCodeTraining:(BOOL)training supportEmojiRecognition:(BOOL)self0 modelContextDelegate:(id)self1 enableItn:(BOOL)self2
{
  LOBYTE(v14) = itn;
  LOWORD(v13) = __PAIR16__(recognition, training);
  return [(_EARSpeechRecognizer *)self initWithConfiguration:configuration overrides:overrides overrideConfigFiles:files language:language activeConfiguration:activeConfiguration modelLoadingOptions:options enableSpeakerCodeTraining:v13 supportEmojiRecognition:0 voiceCommandActiveSet:delegate modelContextDelegate:v14 enableItn:?];
}

+ (id)_speechRecognizerWithLanguage:(id)language overrides:(id)overrides anyConfiguration:(BOOL)configuration taskConfiguration:(id)taskConfiguration modelRoot:(id)root error:(id *)error modelLoadTime:(double *)time
{
  configurationCopy = configuration;
  languageCopy = language;
  overridesCopy = overrides;
  taskConfigurationCopy = taskConfiguration;
  rootCopy = root;
  if (rootCopy)
  {
    v18 = +[NSProcessInfo processInfo];
    [v18 systemUptime];
    v20 = v19;

    v21 = [rootCopy stringByAppendingPathComponent:@"mini.json"];
    v41 = languageCopy;
    if (configurationCopy)
    {
      v22 = +[_EARSpeechRecognitionActiveConfiguration activeConfigurationForEverything];
      if (!taskConfigurationCopy)
      {
LABEL_10:
        v29 = objc_alloc_init(NSMutableDictionary);
        if ([taskConfigurationCopy isEqualToString:kSFSpeechRecognizerTaskCaptioning])
        {
          [v29 setValue:@"YES" forKey:@"keepANEModelLoaded"];
        }

        LOBYTE(v40) = 1;
        LOWORD(v39) = 0;
        v30 = [[_EARSpeechRecognizer alloc] initWithConfig:v21 overrides:overridesCopy overrideConfigFiles:0 language:v41 activeConfiguration:v22 modelLoadingOptions:v29 enableSpeakerCodeTraining:v39 supportEmojiRecognition:0 voiceCommandActiveSet:0 modelContextDelegate:v40 enableItn:error error:?];
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

          if (time)
          {
            *time = v33;
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
          if (!error)
          {
            goto LABEL_21;
          }
        }

        else if (!error)
        {
LABEL_21:

          languageCopy = v41;
          goto LABEL_22;
        }

        v37 = [NSString stringWithFormat:@"Failed to create recognizer from=%@", v21];
        *error = [NSError lsr_errorWithCode:300 description:v37];

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
      if (!taskConfigurationCopy)
      {
        goto LABEL_10;
      }
    }

    v28 = [NSSet setWithObject:taskConfigurationCopy];
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