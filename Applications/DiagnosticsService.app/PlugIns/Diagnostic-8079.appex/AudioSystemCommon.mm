@interface AudioSystemCommon
+ (BOOL)setCode:(int64_t)code forError:(id *)error;
- (BOOL)isDeviceConnectedToAccessory;
- (BOOL)isSoundRecognitionRequired;
- (id)archiveNameTemplate;
- (id)createNewTestSequenceWithOutput:(id)output andStimulusFile:(id)file;
- (id)pathToSoundFile:(id)file;
- (id)testID;
- (id)writeCurrentResultsToJson;
- (void)cancel;
- (void)deleteTemporaryFiles;
- (void)downloadFilesWithResponder:(id)responder;
- (void)failedToExecuteWithError:(id)error;
- (void)parseTestResults:(id)results fromOutput:(id)output withFile:(id)file parsedResults:(id)parsedResults sequenceIndex:(id)index error:(id)error;
- (void)performAnalysisOnAVResult:(id)result fromOutput:(id)output withSourceSignalData:(id)data intoDKResult:(id)kResult error:(id)error;
- (void)receivedInterruptNotification:(id)notification;
- (void)restoreAccesibilityStateIfRequired;
- (void)restoreOriginalVolumes;
- (void)saveOriginalVolumes;
- (void)setAccessibilityStateIfRequired;
- (void)setUpEventNotifications;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)teardown;
- (void)testSequence:(id)sequence completionSemaphore:(id)semaphore;
@end

@implementation AudioSystemCommon

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  responderCopy = responder;
  inputsCopy = inputs;
  v8 = +[NSDate date];
  [v8 timeIntervalSince1970];
  [(AudioSystemCommon *)self setStartTime:?];

  [(AudioSystemCommon *)self setInputs:inputsCopy];
  [(AudioSystemCommon *)self setPreviousAudioChanged:0];
  [(AudioSystemCommon *)self setDiagnosticResponder:responderCopy];
  v9 = +[AVAudioSession sharedInstance];
  if ([v9 isOtherAudioPlaying])
  {
    isSoundRecognitionRequired = [(AudioSystemCommon *)self isSoundRecognitionRequired];

    if ((isSoundRecognitionRequired & 1) == 0)
    {
      v11 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Background audio is playing at the start of this test", buf, 2u);
      }

      v25 = NSLocalizedDescriptionKey;
      v26 = @"Audio is already playing in the background at the start of the test.";
      v12 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v13 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-56 userInfo:v12];

      goto LABEL_13;
    }
  }

  else
  {
  }

  v14 = MGCopyAnswer();
  [(AudioSystemCommon *)self setDeviceName:v14];

  deviceName = [(AudioSystemCommon *)self deviceName];
  -[AudioSystemCommon setIsDeviceiPhone:](self, "setIsDeviceiPhone:", [deviceName isEqualToString:@"iPhone"]);

  deviceName2 = [(AudioSystemCommon *)self deviceName];
  -[AudioSystemCommon setIsDeviceiPod:](self, "setIsDeviceiPod:", [deviceName2 isEqualToString:@"iPod touch"]);

  deviceName3 = [(AudioSystemCommon *)self deviceName];
  -[AudioSystemCommon setIsDeviceiPad:](self, "setIsDeviceiPad:", [deviceName3 isEqualToString:@"iPad"]);

  deviceName4 = [(AudioSystemCommon *)self deviceName];
  -[AudioSystemCommon setIsDeviceWatch:](self, "setIsDeviceWatch:", [deviceName4 isEqualToString:@"Apple Watch"]);

  if (![(AudioSystemCommon *)self isDeviceiPhone]&& ![(AudioSystemCommon *)self isDeviceiPod]&& ![(AudioSystemCommon *)self isDeviceiPad])
  {
LABEL_17:
    v21 = NSTemporaryDirectory();
    v22 = [NSURL fileURLWithPath:v21 isDirectory:1];
    [(AudioSystemCommon *)self setTmpdir:v22];

    [(AudioSystemCommon *)self downloadFilesWithResponder:responderCopy];
    goto LABEL_18;
  }

  inputs = [(AudioSystemCommon *)self inputs];
  if (![inputs isAccessoryDetectorActive])
  {

LABEL_15:
    [(AudioSystemCommon *)self setAccessibilityStateIfRequired];
    if ([responderCopy conformsToProtocol:&OBJC_PROTOCOL___DKVolumeHUDResponder])
    {
      [responderCopy enableVolumeHUD:0];
    }

    goto LABEL_17;
  }

  isDeviceConnectedToAccessory = [(AudioSystemCommon *)self isDeviceConnectedToAccessory];

  if (isDeviceConnectedToAccessory)
  {
    goto LABEL_15;
  }

  v23 = 0;
  [AudioSystemCommon setCode:-52 forError:&v23];
  v13 = v23;
LABEL_13:
  [(AudioSystemCommon *)self failedToExecuteWithError:v13];
  [(AudioSystemCommon *)self setFinished:1];

LABEL_18:
}

- (void)start
{
  v3 = objc_alloc_init([(AudioSystemCommon *)self avAudioDeviceTestClass]);
  [(AudioSystemCommon *)self setAudioTest:v3];

  audioTest = [(AudioSystemCommon *)self audioTest];
  [audioTest setProcessSequenceAsynchronously:1];

  inputs = [(AudioSystemCommon *)self inputs];
  saveRawRecording = [inputs saveRawRecording];

  if (saveRawRecording)
  {
    v7 = objc_alloc_init(NSMutableArray);
    [(AudioSystemCommon *)self setRawRecordings:v7];
  }

  if ([(AudioSystemCommon *)self isDeviceiPhone]|| [(AudioSystemCommon *)self isDeviceiPod]|| [(AudioSystemCommon *)self isDeviceiPad]|| [(AudioSystemCommon *)self isDeviceWatch])
  {
    [(AudioSystemCommon *)self setUpEventNotifications];
  }

  [(AudioSystemCommon *)self saveOriginalVolumes];
  v8 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-8079.audioQueue", 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004820;
  v9[3] = &unk_100014528;
  v9[4] = self;
  v10 = saveRawRecording;
  dispatch_async(v8, v9);
}

- (void)teardown
{
  [(AudioSystemCommon *)self restoreAccesibilityStateIfRequired];
  [(AudioSystemCommon *)self restoreOriginalVolumes];
  inputs = [(AudioSystemCommon *)self inputs];
  isMotionDetectorActive = [inputs isMotionDetectorActive];

  if (isMotionDetectorActive)
  {
    motionDetector = [(AudioSystemCommon *)self motionDetector];
    [motionDetector stop];
  }

  inputs2 = [(AudioSystemCommon *)self inputs];
  isAccessoryDetectorActive = [inputs2 isAccessoryDetectorActive];

  if (isAccessoryDetectorActive)
  {
    accessoryDisconnectDetector = [(AudioSystemCommon *)self accessoryDisconnectDetector];
    [accessoryDisconnectDetector stop];
  }

  inputs3 = [(AudioSystemCommon *)self inputs];
  isHeadphonesDetectorActive = [inputs3 isHeadphonesDetectorActive];

  if (isHeadphonesDetectorActive)
  {
    headphoneDetector = [(AudioSystemCommon *)self headphoneDetector];
    [headphoneDetector stop];
  }

  inputs4 = [(AudioSystemCommon *)self inputs];
  isOrientationDetectorActive = [inputs4 isOrientationDetectorActive];

  if (isOrientationDetectorActive)
  {
    orientationDetector = [(AudioSystemCommon *)self orientationDetector];
    [orientationDetector stop];
  }

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 removeObserver:self];

  diagnosticResponder = [(AudioSystemCommon *)self diagnosticResponder];
  v17 = [diagnosticResponder conformsToProtocol:&OBJC_PROTOCOL___DKVolumeHUDResponder];

  if (v17)
  {
    diagnosticResponder2 = [(AudioSystemCommon *)self diagnosticResponder];
    [diagnosticResponder2 enableVolumeHUD:1];
  }

  audioTest = [(AudioSystemCommon *)self audioTest];
  [audioTest cancel];
}

- (void)cancel
{
  audioTest = [(AudioSystemCommon *)self audioTest];
  [audioTest cancel];
}

- (void)failedToExecuteWithError:(id)error
{
  errorCopy = error;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "failedToExecuteWithError called for error %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000055F8;
  v8[3] = &unk_100014550;
  v8[4] = self;
  v9 = errorCopy;
  failedToExecuteOnceToken = self->_failedToExecuteOnceToken;
  v7 = errorCopy;
  if (failedToExecuteOnceToken != -1)
  {
    dispatch_once(&self->_failedToExecuteOnceToken, v8);
  }
}

- (void)setUpEventNotifications
{
  inputs = [(AudioSystemCommon *)self inputs];
  isMotionDetectorActive = [inputs isMotionDetectorActive];

  if (isMotionDetectorActive)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"receivedInterruptNotification:" name:@"MotionDetectedNotification" object:0];

    v6 = [DAMotionDetector alloc];
    inputs2 = [(AudioSystemCommon *)self inputs];
    motionDetectorThreshold = [inputs2 motionDetectorThreshold];
    v9 = [(DAMotionDetector *)v6 initWithThreshold:motionDetectorThreshold];
    [(AudioSystemCommon *)self setMotionDetector:v9];

    motionDetector = [(AudioSystemCommon *)self motionDetector];
    [motionDetector start];
  }

  inputs3 = [(AudioSystemCommon *)self inputs];
  isOrientationDetectorActive = [inputs3 isOrientationDetectorActive];

  if (isOrientationDetectorActive)
  {
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:self selector:"receivedInterruptNotification:" name:@"IncorrectOrientationNotification" object:0];

    v14 = [DAOrientationDetector alloc];
    inputs4 = [(AudioSystemCommon *)self inputs];
    orientationDetectorXThreshold = [inputs4 orientationDetectorXThreshold];
    inputs5 = [(AudioSystemCommon *)self inputs];
    orientationDetectorZThreshold = [inputs5 orientationDetectorZThreshold];
    v19 = [(DAOrientationDetector *)v14 initWithxThreshold:orientationDetectorXThreshold zThreshold:orientationDetectorZThreshold];
    [(AudioSystemCommon *)self setOrientationDetector:v19];

    orientationDetector = [(AudioSystemCommon *)self orientationDetector];
    [orientationDetector start];
  }

  inputs6 = [(AudioSystemCommon *)self inputs];
  isAccessoryDetectorActive = [inputs6 isAccessoryDetectorActive];

  if (isAccessoryDetectorActive)
  {
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:self selector:"receivedInterruptNotification:" name:@"AccessoryDisconnectedNotification" object:0];

    v24 = [DAAccessoryDisconnectDetector alloc];
    inputs7 = [(AudioSystemCommon *)self inputs];
    accessoryDetectorModelNumbers = [inputs7 accessoryDetectorModelNumbers];
    v27 = [(DAAccessoryDisconnectDetector *)v24 initWithModelNumbers:accessoryDetectorModelNumbers];
    [(AudioSystemCommon *)self setAccessoryDisconnectDetector:v27];

    accessoryDisconnectDetector = [(AudioSystemCommon *)self accessoryDisconnectDetector];
    [accessoryDisconnectDetector start];
  }

  inputs8 = [(AudioSystemCommon *)self inputs];
  isHeadphonesDetectorActive = [inputs8 isHeadphonesDetectorActive];

  if (isHeadphonesDetectorActive)
  {
    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:self selector:"receivedInterruptNotification:" name:@"HeadphonesConnectedNotification" object:0];

    v32 = objc_alloc_init(DAHeadphonesDetector);
    [(AudioSystemCommon *)self setHeadphoneDetector:v32];

    headphoneDetector = [(AudioSystemCommon *)self headphoneDetector];
    [headphoneDetector start];
  }
}

- (void)receivedInterruptNotification:(id)notification
{
  notificationCopy = notification;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Recieved interrupt notification %@", buf, 0xCu);
  }

  name = [notificationCopy name];
  v7 = [name isEqualToString:@"MotionDetectedNotification"];

  if (v7)
  {
    v21 = 0;
    v8 = &v21;
    v9 = &v21;
    v10 = -53;
  }

  else
  {
    name2 = [notificationCopy name];
    v12 = [name2 isEqualToString:@"IncorrectOrientationNotification"];

    if (v12)
    {
      v20 = 0;
      v8 = &v20;
      v9 = &v20;
      v10 = -61;
    }

    else
    {
      name3 = [notificationCopy name];
      v14 = [name3 isEqualToString:@"AccessoryDisconnectedNotification"];

      if (v14)
      {
        v19 = 0;
        v8 = &v19;
        v9 = &v19;
        v10 = -52;
      }

      else
      {
        name4 = [notificationCopy name];
        v16 = [name4 isEqualToString:@"HeadphonesConnectedNotification"];

        if (!v16)
        {
          v17 = 0;
          goto LABEL_12;
        }

        v18 = 0;
        v8 = &v18;
        v9 = &v18;
        v10 = -54;
      }
    }
  }

  [AudioSystemCommon setCode:v10 forError:v9, v18, v19, v20, v21];
  v17 = *v8;
LABEL_12:
  [(AudioSystemCommon *)self failedToExecuteWithError:v17];
}

- (BOOL)isDeviceConnectedToAccessory
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = +[EAAccessoryManager sharedAccessoryManager];
  connectedAccessories = [v3 connectedAccessories];

  v5 = [connectedAccessories countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(connectedAccessories);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        inputs = [(AudioSystemCommon *)self inputs];
        accessoryDetectorModelNumbers = [inputs accessoryDetectorModelNumbers];
        modelNumber = [v10 modelNumber];
        v14 = [accessoryDetectorModelNumbers containsObject:modelNumber];

        v7 |= v14;
      }

      v6 = [connectedAccessories countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

+ (BOOL)setCode:(int64_t)code forError:(id *)error
{
  if (error)
  {
    *error = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:code userInfo:0];
  }

  return error != 0;
}

- (void)downloadFilesWithResponder:(id)responder
{
  responderCopy = responder;
  [(AudioSystemCommon *)self deleteTemporaryFiles];
  v30 = dispatch_semaphore_create(0);
  v4 = +[NSMutableDictionary dictionary];
  [(AudioSystemCommon *)self setFileNameToURL:v4];

  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v43 = 0u;
  inputs = [(AudioSystemCommon *)self inputs];
  obj = [inputs sources];

  v6 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (!v6)
  {
    v9 = 0;
    goto LABEL_26;
  }

  v8 = 0;
  v9 = 0;
  v28 = *v44;
  *&v7 = 138412546;
  v26 = v7;
  while (2)
  {
    v10 = 0;
    v11 = v8;
    do
    {
      if (*v44 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v43 + 1) + 8 * v10);
      if (([(AudioSystemCommon *)self isCancelled]& 1) != 0)
      {
        v8 = v11;
        goto LABEL_25;
      }

      tmpdir = [(AudioSystemCommon *)self tmpdir];
      v8 = [tmpdir URLByAppendingPathComponent:v12];

      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = sub_100006354;
      v41 = sub_100006364;
      v42 = 0;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10000636C;
      v34[3] = &unk_100014578;
      v36 = &v37;
      v14 = v30;
      v35 = v14;
      [responderCopy getAsset:v12 completion:v34];
      inputs2 = [(AudioSystemCommon *)self inputs];
      fileDownloadTimeout = [inputs2 fileDownloadTimeout];
      v17 = dispatch_time(0, 1000000000 * [fileDownloadTimeout unsignedLongValue]);
      dispatch_semaphore_wait(v14, v17);

      if (!v38[5])
      {
        v24 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v48 = v12;
          _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to download asset: %@", buf, 0xCu);
        }

        v31 = v9;
        [AudioSystemCommon setCode:-1 forError:&v31];
        v21 = v31;

        [(AudioSystemCommon *)self failedToExecuteWithError:v21];
        [(AudioSystemCommon *)self setFinished:1];
        v23 = 0;
        goto LABEL_15;
      }

      v18 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v48 = v8;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Saving asset data to [%@]", buf, 0xCu);
      }

      v19 = v38[5];
      v33 = v9;
      v20 = [v19 writeToURL:v8 options:268435457 error:&v33];
      v21 = v33;

      if (v20)
      {
        fileNameToURL = [(AudioSystemCommon *)self fileNameToURL];
        [fileNameToURL setObject:v8 forKeyedSubscript:v12];

        v23 = 1;
LABEL_15:
        v9 = v21;
        goto LABEL_19;
      }

      v25 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = v26;
        v48 = v8;
        v49 = 2112;
        v50 = v21;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to save asset [%@]: %@", buf, 0x16u);
      }

      v32 = v21;
      [AudioSystemCommon setCode:-59 forError:&v32];
      v9 = v32;

      [(AudioSystemCommon *)self failedToExecuteWithError:v9];
      [(AudioSystemCommon *)self setFinished:1];
      v23 = 0;
LABEL_19:

      _Block_object_dispose(&v37, 8);
      if (!v23)
      {
        goto LABEL_25;
      }

      v10 = v10 + 1;
      v11 = v8;
    }

    while (v6 != v10);
    v6 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_25:

LABEL_26:
}

- (void)deleteTemporaryFiles
{
  v3 = +[NSFileManager defaultManager];
  tmpdir = [(AudioSystemCommon *)self tmpdir];
  v25 = 0;
  v19 = v3;
  v5 = [v3 contentsOfDirectoryAtURL:tmpdir includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v25];
  v6 = v25;

  if (v6)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000094B0(v6);
    }
  }

  v18 = v6;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        path = [v13 path];
        if (path)
        {
          v15 = +[NSFileManager defaultManager];
          v20 = 0;
          [v15 removeItemAtPath:path error:&v20];
          v16 = v20;

          if (v16)
          {
            v17 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10000953C(v26, v16, &v27, v17);
            }
          }
        }

        else
        {
          v16 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v13;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Temporary file %@ does not have a path we can use to clear it. Skipping.", buf, 0xCu);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v10);
  }
}

- (void)testSequence:(id)sequence completionSemaphore:(id)semaphore
{
  sequenceCopy = sequence;
  semaphoreCopy = semaphore;
  outputs = [sequenceCopy outputs];
  firstObject = [outputs firstObject];

  inputs = [(AudioSystemCommon *)self inputs];
  sources = [inputs sources];
  source = [firstObject source];
  v13 = [sources objectAtIndexedSubscript:{objc_msgSend(source, "integerValue")}];

  v14 = [(AudioSystemCommon *)self createNewTestSequenceWithOutput:firstObject andStimulusFile:v13];
  audioTest = [(AudioSystemCommon *)self audioTest];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100006818;
  v21[3] = &unk_1000145A0;
  v21[4] = self;
  v22 = v14;
  v23 = semaphoreCopy;
  v24 = firstObject;
  v25 = v13;
  v26 = sequenceCopy;
  v16 = sequenceCopy;
  v17 = v13;
  v18 = firstObject;
  v19 = semaphoreCopy;
  v20 = v14;
  [audioTest startWithSequence:v20 completion:v21];
}

- (id)pathToSoundFile:(id)file
{
  fileCopy = file;
  fileNameToURL = [(AudioSystemCommon *)self fileNameToURL];
  v6 = [fileNameToURL objectForKeyedSubscript:fileCopy];

  return v6;
}

- (id)writeCurrentResultsToJson
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v34 = @"sd";
  v32 = @"$date";
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = [NSNumber numberWithDouble:v5 * 1000.0];
  v33 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v35 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  [v3 setObject:v8 forKeyedSubscript:@"_id"];

  [v3 setObject:&off_1000154F8 forKeyedSubscript:@"d"];
  testID = [(AudioSystemCommon *)self testID];
  [v3 setObject:testID forKeyedSubscript:@"k"];

  [v3 setObject:&off_100015410 forKeyedSubscript:@"e"];
  v10 = +[NSDate date];
  [v10 timeIntervalSince1970];
  v12 = v11;
  [(AudioSystemCommon *)self startTime];
  v14 = [NSNumber numberWithDouble:v12 - v13];
  [v3 setObject:v14 forKeyedSubscript:@"t"];

  result = [(AudioSystemCommon *)self result];
  statusCode = [result statusCode];
  [v3 setObject:statusCode forKeyedSubscript:@"s"];

  result2 = [(AudioSystemCommon *)self result];
  data = [result2 data];
  [v3 setObject:data forKeyedSubscript:@"data"];

  v29 = 0;
  v19 = [NSJSONSerialization dataWithJSONObject:v3 options:1 error:&v29];
  v20 = v29;
  if (v20 || !v19)
  {
    v21 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Failed to convert result dictionary to JSON with error: [%@]", buf, 0xCu);
    }

    v25 = 0;
  }

  else
  {
    v21 = [[NSString alloc] initWithData:v19 encoding:4];
    tmpdir = [(AudioSystemCommon *)self tmpdir];
    v23 = [tmpdir URLByAppendingPathComponent:@"results.json"];

    v28 = 0;
    v24 = [v21 writeToURL:v23 atomically:1 encoding:4 error:&v28];
    v20 = v28;
    if (v20 || (v24 & 1) == 0)
    {
      v26 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v20;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to write result to file with error: [%@]", buf, 0xCu);
      }

      v25 = 0;
    }

    else
    {
      v25 = v23;
    }
  }

  return v25;
}

- (void)parseTestResults:(id)results fromOutput:(id)output withFile:(id)file parsedResults:(id)parsedResults sequenceIndex:(id)index error:(id)error
{
  resultsCopy = results;
  outputCopy = output;
  fileCopy = file;
  parsedResultsCopy = parsedResults;
  indexCopy = index;
  errorCopy = error;
  v57 = fileCopy;
  v18 = [(AudioSystemCommon *)self pathToSoundFile:fileCopy];
  absoluteString = [v18 absoluteString];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = resultsCopy;
  v54 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (!v54)
  {
    goto LABEL_33;
  }

  v55 = *v62;
  v19 = &EXDisplayPipeClose_ptr;
  selfCopy = self;
  v51 = outputCopy;
  while (2)
  {
    for (i = 0; i != v54; i = i + 1)
    {
      if (*v62 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v61 + 1) + 8 * i);
      v22 = v19[89];
      [v21 sampleRate];
      v23 = [v22 numberWithDouble:?];
      v60 = errorCopy;
      v24 = [AudioCrossCorrelation convertWAVtoNSDataWithFileStringURL:absoluteString withSampleRate:v23 error:&v60];
      v25 = v60;

      if (!v24)
      {
        if (v25)
        {
          if ([v25 code] == -70)
          {
            v47 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              sub_100009774(v57, outputCopy);
            }
          }
        }

        else
        {
          v25 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-66 userInfo:0];
        }

        [(AudioSystemCommon *)self failedToExecuteWithError:v25];
        goto LABEL_32;
      }

      inputs = [(AudioSystemCommon *)self inputs];
      inputValueToName = [inputs inputValueToName];
      v28 = [v19[89] numberWithInteger:{objc_msgSend(v21, "inputID")}];
      v29 = [inputValueToName objectForKey:v28];

      if (!v29)
      {
        v48 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_1000096F4(v21);
        }

        v71 = NSLocalizedDescriptionKey;
        v72 = @"Name missing for current microphone.";
        v49 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v50 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-68 userInfo:v49];

        [(AudioSystemCommon *)self failedToExecuteWithError:v50];
LABEL_32:
        errorCopy = v25;
        goto LABEL_33;
      }

      v30 = objc_alloc_init([(AudioSystemCommon *)self audioSystemResultClass]);
      [v30 setInput:v29];
      outputDevice = [outputCopy outputDevice];
      [v30 setOutput:outputDevice];

      [v30 setSource:v57];
      [(AudioSystemCommon *)self performAnalysisOnAVResult:v21 fromOutput:outputCopy withSourceSignalData:v24 intoDKResult:v30 error:v25];
      dictionaryValue = [v30 dictionaryValue];
      [parsedResultsCopy addObject:dictionaryValue];

      inputs2 = [(AudioSystemCommon *)self inputs];
      saveRawRecording = [inputs2 saveRawRecording];

      if (saveRawRecording)
      {
        output = [v30 output];
        source = [v30 source];
        indexCopy = [v29 stringByAppendingFormat:@"Mic-%@Speaker-File%@-Sequence%@.wav", output, source, indexCopy];

        if (([indexCopy containsString:@".wav"] & 1) == 0)
        {
          v38 = [indexCopy stringByAppendingString:@".wav"];

          indexCopy = v38;
        }

        tmpdir = [(AudioSystemCommon *)self tmpdir];
        v40 = [tmpdir URLByAppendingPathComponent:indexCopy];

        data = [v21 data];
        [AudioCrossCorrelation convertNSDataToWAV:data atURL:v40 error:v25];

        selfCopy2 = self;
        v43 = v25 == 0;
        if (v25)
        {
          v44 = DiagnosticLogHandleForCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v68 = v40;
            v69 = 2112;
            v70 = v25;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "ERROR save recording data [%@]: %@", buf, 0x16u);
          }

          v65 = NSLocalizedDescriptionKey;
          v66 = @"Failed to save recording data.";
          v45 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          errorCopy = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-60 userInfo:v45];

          [(AudioSystemCommon *)selfCopy failedToExecuteWithError:errorCopy];
        }

        else
        {
          rawRecordings = [(AudioSystemCommon *)selfCopy2 rawRecordings];
          [rawRecordings addObject:v40];

          errorCopy = 0;
        }

        outputCopy = v51;
      }

      else
      {
        v43 = 1;
        errorCopy = v25;
      }

      v19 = &EXDisplayPipeClose_ptr;
      if (!v43)
      {
        goto LABEL_33;
      }

      self = selfCopy;
    }

    v54 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_33:
}

- (void)performAnalysisOnAVResult:(id)result fromOutput:(id)output withSourceSignalData:(id)data intoDKResult:(id)kResult error:(id)error
{
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_100009820(v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

- (id)createNewTestSequenceWithOutput:(id)output andStimulusFile:(id)file
{
  fileCopy = file;
  outputCopy = output;
  v8 = objc_alloc_init([(AudioSystemCommon *)self avAudioDeviceTestSequenceClass]);
  inputs = [(AudioSystemCommon *)self inputs];
  outputSpecifications = [inputs outputSpecifications];
  outputDevice = [outputCopy outputDevice];
  v12 = [outputSpecifications objectForKeyedSubscript:outputDevice];
  channel = [v12 channel];
  [v8 setOutputID:{objc_msgSend(channel, "integerValue")}];

  volume = [outputCopy volume];
  [volume floatValue];
  [v8 setVolume:?];

  v15 = [(AudioSystemCommon *)self pathToSoundFile:fileCopy];

  [v8 setStimulusURL:v15];
  inputs2 = [(AudioSystemCommon *)self inputs];
  outputSpecifications2 = [inputs2 outputSpecifications];
  outputDevice2 = [outputCopy outputDevice];

  v19 = [outputSpecifications2 objectForKeyedSubscript:outputDevice2];
  mode = [v19 mode];
  [v8 setOutputMode:{objc_msgSend(mode, "integerValue")}];

  inputs3 = [(AudioSystemCommon *)self inputs];
  [v8 setCalculateCrossCorrelationPeak:{objc_msgSend(inputs3, "isUsingDBValuesFromSystem")}];

  inputs4 = [(AudioSystemCommon *)self inputs];
  isUsingMeasurementMode = [inputs4 isUsingMeasurementMode];
  v24 = &AVAudioSessionModeMeasurement;
  if (!isUsingMeasurementMode)
  {
    v24 = &AVAudioSessionModeRaw;
  }

  [v8 setMode:*v24];

  [v8 setParallelCrossCorrelationCalculation:{objc_msgSend(v8, "calculateCrossCorrelationPeak")}];

  return v8;
}

- (id)archiveNameTemplate
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100009858(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return @"com.apple.Diagnostics.AudioSystem.XXXXXXXX";
}

- (id)testID
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100009890(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return &off_1000153F8;
}

- (void)restoreAccesibilityStateIfRequired
{
  if ([(AudioSystemCommon *)self monoChanged])
  {
    [(AudioSystemCommon *)self isOriginallyMono];
    _AXSMonoAudioSetEnabled();
  }

  if ([(AudioSystemCommon *)self balanceChanged])
  {
    originalBalance = [(AudioSystemCommon *)self originalBalance];
    [originalBalance floatValue];
    _AXSSetLeftRightAudioBalance();
  }

  if ([(AudioSystemCommon *)self soundRecognitionChanged])
  {
    v5 = +[AXSDSettings sharedInstance];
    systemSoundDetectionState = [(AudioSystemCommon *)self systemSoundDetectionState];
    [v5 setSoundDetectionState:systemSoundDetectionState source:AXSDSettingsEventSourceInternal];
  }
}

- (BOOL)isSoundRecognitionRequired
{
  v2 = +[AXSDSettings sharedInstance];
  soundDetectionEnabled = [v2 soundDetectionEnabled];

  return soundDetectionEnabled;
}

- (void)setAccessibilityStateIfRequired
{
  [(AudioSystemCommon *)self setMonoChanged:0];
  [(AudioSystemCommon *)self setBalanceChanged:0];
  if ([(AudioSystemCommon *)self isMonoChangeRequired])
  {
    [(AudioSystemCommon *)self setIsOriginallyMono:1];
    _AXSMonoAudioSetEnabled();
    [(AudioSystemCommon *)self setMonoChanged:1];
  }

  if ([(AudioSystemCommon *)self isBalanceChangeRequired])
  {
    v3 = [NSNumber alloc];
    _AXSLeftRightAudioBalance();
    v4 = [v3 initWithFloat:?];
    [(AudioSystemCommon *)self setOriginalBalance:v4];

    _AXSSetLeftRightAudioBalance();
    [(AudioSystemCommon *)self setBalanceChanged:1];
  }

  if ([(AudioSystemCommon *)self isSoundRecognitionRequired])
  {
    v5 = +[AXSDSettings sharedInstance];
    -[AudioSystemCommon setSystemSoundDetectionState:](self, "setSystemSoundDetectionState:", [v5 soundDetectionState]);

    v7 = +[AXSDSettings sharedInstance];
    systemSoundDetectionState = [(AudioSystemCommon *)self systemSoundDetectionState];
    [v7 setSoundDetectionState:systemSoundDetectionState source:AXSDSettingsEventSourceInternal];
  }
}

- (void)saveOriginalVolumes
{
  v11 = 0;
  v3 = +[AVSystemController sharedAVSystemController];
  [v3 getVolume:&v11 + 4 forCategory:@"PlayAndRecord"];

  v4 = +[AVSystemController sharedAVSystemController];
  [v4 getVolume:&v11 forCategory:@"Audio/Video"];

  LODWORD(v5) = HIDWORD(v11);
  [(AudioSystemCommon *)self setPreviousDeviceVolumePlayAndRecord:v5];
  LODWORD(v6) = v11;
  [(AudioSystemCommon *)self setPreviousDeviceVolumeAudioVideo:v6];
  [(AudioSystemCommon *)self setPreviousAudioChanged:1];
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [(AudioSystemCommon *)self previousDeviceVolumePlayAndRecord];
    v9 = v8;
    [(AudioSystemCommon *)self previousDeviceVolumeAudioVideo];
    *buf = 134218240;
    v13 = v9;
    v14 = 2048;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Save original volumes previousDeviceVolumePlayAndRecord:%f, previousDeviceVolumeAudioVideo:%f", buf, 0x16u);
  }
}

- (void)restoreOriginalVolumes
{
  if ([(AudioSystemCommon *)self previousAudioChanged])
  {
    v3 = +[AVSystemController sharedAVSystemController];
    [(AudioSystemCommon *)self previousDeviceVolumePlayAndRecord];
    [v3 setVolumeTo:@"PlayAndRecord" forCategory:?];

    v4 = +[AVSystemController sharedAVSystemController];
    [(AudioSystemCommon *)self previousDeviceVolumeAudioVideo];
    [v4 setVolumeTo:@"Audio/Video" forCategory:?];

    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      [(AudioSystemCommon *)self previousDeviceVolumePlayAndRecord];
      v7 = v6;
      [(AudioSystemCommon *)self previousDeviceVolumeAudioVideo];
      v9 = 134218240;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restore original volumes to previousDeviceVolumePlayAndRecord:%f, previousDeviceVolumeAudioVideo:%f", &v9, 0x16u);
    }
  }
}

@end