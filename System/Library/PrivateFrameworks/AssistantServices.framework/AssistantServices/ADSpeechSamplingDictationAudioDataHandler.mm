@interface ADSpeechSamplingDictationAudioDataHandler
- (ADSpeechSamplingDictationAudioDataHandler)initWithFilePaths:(id)paths ignoreMinimumSampleAge:(BOOL)age permitMonitor:(id)monitor completionHandler:(id)handler;
- (void)adSpeechRecognitionDidFail:(id)fail sessionUUID:(id)d;
- (void)adSpeechRecognized:(id)recognized usingSpeechModel:(id)model sessionUUID:(id)d;
- (void)adSpeechRecognizedSynchronous:(id)synchronous usingSpeechModel:(id)model sessionUUID:(id)d;
- (void)adSpeechRecordingDidFail:(id)fail context:(id)context;
- (void)addAudioSamplesOnQueue:(id)queue;
- (void)dealloc;
- (void)sendAudioDataToServer;
@end

@implementation ADSpeechSamplingDictationAudioDataHandler

- (void)adSpeechRecordingDidFail:(id)fail context:(id)context
{
  failCopy = fail;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10027101C;
  v8[3] = &unk_10051E010;
  v8[4] = self;
  v9 = failCopy;
  v7 = failCopy;
  dispatch_async(queue, v8);
}

- (void)adSpeechRecognizedSynchronous:(id)synchronous usingSpeechModel:(id)model sessionUUID:(id)d
{
  synchronousCopy = synchronous;
  modelCopy = model;
  dCopy = d;
  v11 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    audioFilePath = self->_audioFilePath;
    v18 = 136315394;
    v19 = "[ADSpeechSamplingDictationAudioDataHandler adSpeechRecognizedSynchronous:usingSpeechModel:sessionUUID:]";
    v20 = 2112;
    v21 = audioFilePath;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s Dictation Sampling: Finished uploading audio sample: %@", &v18, 0x16u);
  }

  v13 = [(NSDictionary *)self->_audioMetadataDict valueForKey:@"dictationUIInteractionIdentifier"];
  sub_100271208(2, v13, 0);

  v14 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    v15 = self->_audioFilePath;
    v18 = 136315394;
    v19 = "[ADSpeechSamplingDictationAudioDataHandler adSpeechRecognizedSynchronous:usingSpeechModel:sessionUUID:]";
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s Dictation Sampling: Deleting uploaded audio sample: %@", &v18, 0x16u);
  }

  folderPath = self->_folderPath;
  lastPathComponent = [(NSString *)self->_audioFilePath lastPathComponent];
  sub_10026FCAC(folderPath, lastPathComponent, 0);

  [(NSMutableArray *)self->_filePaths removeObjectAtIndex:0];
  sub_1002714FC(self->_filePaths, 0, self->_ignoreMinimumSampleAge, self->_permitMonitor, self->_completionHandler);
}

- (void)adSpeechRecognized:(id)recognized usingSpeechModel:(id)model sessionUUID:(id)d
{
  recognizedCopy = recognized;
  modelCopy = model;
  dCopy = d;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100271B2C;
  v15[3] = &unk_10051DB18;
  v15[4] = self;
  v16 = recognizedCopy;
  v17 = modelCopy;
  v18 = dCopy;
  v12 = dCopy;
  v13 = modelCopy;
  v14 = recognizedCopy;
  dispatch_async(queue, v15);
}

- (void)adSpeechRecognitionDidFail:(id)fail sessionUUID:(id)d
{
  failCopy = fail;
  dCopy = d;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100271C04;
  block[3] = &unk_10051DB68;
  block[4] = self;
  v12 = dCopy;
  v13 = failCopy;
  v9 = failCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)addAudioSamplesOnQueue:(id)queue
{
  queueCopy = queue;
  v5 = 0;
  v6 = 0;
  *&v7 = 136315906;
  v22 = v7;
  while (1)
  {
    v8 = v5;
    v25 = 0;
    v5 = [queueCopy readDataUpToLength:0x8000 error:{&v25, v22}];
    v9 = v25;

    if (!v5 || v9)
    {
      break;
    }

    if (![v5 length])
    {
      goto LABEL_13;
    }

    v10 = AFSiriLogContextSpeech;
    if (self->_shouldStopAddingSamples)
    {
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "[ADSpeechSamplingDictationAudioDataHandler addAudioSamplesOnQueue:]";
        v28 = 2048;
        v29 = v6;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Stopping adding audio samples after adding %ld bytes since _shouldStopAddingSamples was set.", buf, 0x16u);
      }

      v9 = 0;
LABEL_19:
      [queueCopy closeFile];
      v18 = AFSiriLogContextSpeech;
      if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v27 = "[ADSpeechSamplingDictationAudioDataHandler addAudioSamplesOnQueue:]";
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Failed reading audio file and adding audio samples.", buf, 0xCu);
      }

      v19 = +[ADCommandCenter sharedCommandCenter];
      [v19 cancelSpeechForDelegate:self];

      goto LABEL_22;
    }

    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
      v13 = [v5 length];
      maxChunkSize = self->_maxChunkSize;
      *buf = v22;
      v27 = "[ADSpeechSamplingDictationAudioDataHandler addAudioSamplesOnQueue:]";
      v28 = 2048;
      v29 = v13;
      v30 = 2048;
      v31 = 0x8000;
      v32 = 2048;
      v33 = maxChunkSize;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Dictation Sampling: Uploading audio data of size: %ld, chunkSize: %ld, maxChunkSize: %ld", buf, 0x2Au);
    }

    v11 = +[ADCommandCenter sharedCommandCenter];
    [v11 addRecordedSpeechSampleData:v5 delegate:self];

    v6 += [v5 length];
    if (v6 >= self->_maxChunkSize)
    {
      v20 = dispatch_time(0, 5000000000);
      v21 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100272224;
      block[3] = &unk_10051E010;
      block[4] = self;
      v24 = queueCopy;
      dispatch_after(v20, v21, block);

      goto LABEL_22;
    }
  }

  if (v9)
  {
    v15 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[ADSpeechSamplingDictationAudioDataHandler addAudioSamplesOnQueue:]";
      v28 = 2112;
      v29 = v9;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Failed to read audio file, error: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

LABEL_13:
  [queueCopy closeFile];
  v16 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v27 = "[ADSpeechSamplingDictationAudioDataHandler addAudioSamplesOnQueue:]";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s Dictation Sampling: Done reading audio file and adding audio samples.", buf, 0xCu);
  }

  v17 = +[ADCommandCenter sharedCommandCenter];
  [v17 stopSpeechWithOptions:0 forDelegate:self];

LABEL_22:
}

- (void)sendAudioDataToServer
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002722A4;
  block[3] = &unk_10051DFE8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)dealloc
{
  v3 = AFSiriLogContextSpeech;
  if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[ADSpeechSamplingDictationAudioDataHandler dealloc]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s Dictation Sampling: Deallocating instance: %p", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = ADSpeechSamplingDictationAudioDataHandler;
  [(ADSpeechSamplingDictationAudioDataHandler *)&v4 dealloc];
}

- (ADSpeechSamplingDictationAudioDataHandler)initWithFilePaths:(id)paths ignoreMinimumSampleAge:(BOOL)age permitMonitor:(id)monitor completionHandler:(id)handler
{
  pathsCopy = paths;
  monitorCopy = monitor;
  handlerCopy = handler;
  if (![pathsCopy count])
  {
    v33 = AFSiriLogContextSpeech;
    if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v38 = "[ADSpeechSamplingDictationAudioDataHandler initWithFilePaths:ignoreMinimumSampleAge:permitMonitor:completionHandler:]";
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Cannot initialize the audio data handler because the filePaths array is empty.", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v36.receiver = self;
  v36.super_class = ADSpeechSamplingDictationAudioDataHandler;
  self = [(ADSpeechSamplingDictationAudioDataHandler *)&v36 init];
  if (self)
  {
    v13 = [pathsCopy mutableCopy];
    filePaths = self->_filePaths;
    self->_filePaths = v13;

    firstObject = [(NSMutableArray *)self->_filePaths firstObject];
    stringByDeletingLastPathComponent = [firstObject stringByDeletingLastPathComponent];
    folderPath = self->_folderPath;
    self->_folderPath = stringByDeletingLastPathComponent;

    v18 = [firstObject stringByAppendingPathExtension:@"pcm"];
    audioFilePath = self->_audioFilePath;
    self->_audioFilePath = v18;

    if ([AFDictationSamplingUtilities fileExistsAndNotEmpty:self->_audioFilePath samplingComponent:@"Dictation"])
    {
      self->_ignoreMinimumSampleAge = age;
      if (age || [AFDictationSamplingUtilities isFileOlderThanAgeInSeconds:self->_audioFilePath filePath:@"Dictation" samplingComponent:900.0])
      {
        lastPathComponent = [firstObject lastPathComponent];
        v21 = sub_100270550(self->_folderPath, lastPathComponent, 0);
        audioMetadataDict = self->_audioMetadataDict;
        self->_audioMetadataDict = v21;

        if (self->_audioMetadataDict)
        {
          v23 = objc_alloc_init(ADDictationSessionTracker);
          sessionTracker = self->_sessionTracker;
          self->_sessionTracker = v23;

          v25 = objc_alloc_init(AFDictationOptions);
          dictationOptions = self->_dictationOptions;
          self->_dictationOptions = v25;

          objc_storeStrong(&self->_permitMonitor, monitor);
          v27 = [handlerCopy copy];
          completionHandler = self->_completionHandler;
          self->_completionHandler = v27;

          v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
          v30 = dispatch_queue_create("com.apple.siri.speech.sampling.upload", v29);
          queue = self->_queue;
          self->_queue = v30;

          goto LABEL_8;
        }

        v34 = AFSiriLogContextSpeech;
        if (os_log_type_enabled(AFSiriLogContextSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v38 = "[ADSpeechSamplingDictationAudioDataHandler initWithFilePaths:ignoreMinimumSampleAge:permitMonitor:completionHandler:]";
          v39 = 2112;
          v40 = lastPathComponent;
          _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s Dictation Sampling: Failed to read metadata for audio sample: %@", buf, 0x16u);
        }
      }
    }

LABEL_15:
    selfCopy = 0;
    goto LABEL_16;
  }

LABEL_8:
  self = self;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

@end