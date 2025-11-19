@interface AudioSystemCommon
+ (BOOL)setCode:(int64_t)a3 forError:(id *)a4;
- (BOOL)isDeviceConnectedToAccessory;
- (BOOL)isSoundRecognitionRequired;
- (id)archiveNameTemplate;
- (id)createNewTestSequenceWithOutput:(id)a3 andStimulusFile:(id)a4;
- (id)pathToSoundFile:(id)a3;
- (id)testID;
- (id)writeCurrentResultsToJson;
- (void)cancel;
- (void)deleteTemporaryFiles;
- (void)downloadFilesWithResponder:(id)a3;
- (void)failedToExecuteWithError:(id)a3;
- (void)parseTestResults:(id)a3 fromOutput:(id)a4 withFile:(id)a5 parsedResults:(id)a6 sequenceIndex:(id)a7 error:(id)a8;
- (void)performAnalysisOnAVResult:(id)a3 fromOutput:(id)a4 withSourceSignalData:(id)a5 intoDKResult:(id)a6 error:(id)a7;
- (void)receivedInterruptNotification:(id)a3;
- (void)restoreAccesibilityStateIfRequired;
- (void)restoreOriginalVolumes;
- (void)saveOriginalVolumes;
- (void)setAccessibilityStateIfRequired;
- (void)setUpEventNotifications;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)teardown;
- (void)testSequence:(id)a3 completionSemaphore:(id)a4;
@end

@implementation AudioSystemCommon

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSDate date];
  [v8 timeIntervalSince1970];
  [(AudioSystemCommon *)self setStartTime:?];

  [(AudioSystemCommon *)self setInputs:v7];
  [(AudioSystemCommon *)self setPreviousAudioChanged:0];
  [(AudioSystemCommon *)self setDiagnosticResponder:v6];
  v9 = +[AVAudioSession sharedInstance];
  if ([v9 isOtherAudioPlaying])
  {
    v10 = [(AudioSystemCommon *)self isSoundRecognitionRequired];

    if ((v10 & 1) == 0)
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

  v15 = [(AudioSystemCommon *)self deviceName];
  -[AudioSystemCommon setIsDeviceiPhone:](self, "setIsDeviceiPhone:", [v15 isEqualToString:@"iPhone"]);

  v16 = [(AudioSystemCommon *)self deviceName];
  -[AudioSystemCommon setIsDeviceiPod:](self, "setIsDeviceiPod:", [v16 isEqualToString:@"iPod touch"]);

  v17 = [(AudioSystemCommon *)self deviceName];
  -[AudioSystemCommon setIsDeviceiPad:](self, "setIsDeviceiPad:", [v17 isEqualToString:@"iPad"]);

  v18 = [(AudioSystemCommon *)self deviceName];
  -[AudioSystemCommon setIsDeviceWatch:](self, "setIsDeviceWatch:", [v18 isEqualToString:@"Apple Watch"]);

  if (![(AudioSystemCommon *)self isDeviceiPhone]&& ![(AudioSystemCommon *)self isDeviceiPod]&& ![(AudioSystemCommon *)self isDeviceiPad])
  {
LABEL_17:
    v21 = NSTemporaryDirectory();
    v22 = [NSURL fileURLWithPath:v21 isDirectory:1];
    [(AudioSystemCommon *)self setTmpdir:v22];

    [(AudioSystemCommon *)self downloadFilesWithResponder:v6];
    goto LABEL_18;
  }

  v19 = [(AudioSystemCommon *)self inputs];
  if (![v19 isAccessoryDetectorActive])
  {

LABEL_15:
    [(AudioSystemCommon *)self setAccessibilityStateIfRequired];
    if ([v6 conformsToProtocol:&OBJC_PROTOCOL___DKVolumeHUDResponder])
    {
      [v6 enableVolumeHUD:0];
    }

    goto LABEL_17;
  }

  v20 = [(AudioSystemCommon *)self isDeviceConnectedToAccessory];

  if (v20)
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

  v4 = [(AudioSystemCommon *)self audioTest];
  [v4 setProcessSequenceAsynchronously:1];

  v5 = [(AudioSystemCommon *)self inputs];
  v6 = [v5 saveRawRecording];

  if (v6)
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
  v9[2] = sub_100008104;
  v9[3] = &unk_10001C5D8;
  v9[4] = self;
  v10 = v6;
  dispatch_async(v8, v9);
}

- (void)teardown
{
  [(AudioSystemCommon *)self restoreAccesibilityStateIfRequired];
  [(AudioSystemCommon *)self restoreOriginalVolumes];
  v3 = [(AudioSystemCommon *)self inputs];
  v4 = [v3 isMotionDetectorActive];

  if (v4)
  {
    v5 = [(AudioSystemCommon *)self motionDetector];
    [v5 stop];
  }

  v6 = [(AudioSystemCommon *)self inputs];
  v7 = [v6 isAccessoryDetectorActive];

  if (v7)
  {
    v8 = [(AudioSystemCommon *)self accessoryDisconnectDetector];
    [v8 stop];
  }

  v9 = [(AudioSystemCommon *)self inputs];
  v10 = [v9 isHeadphonesDetectorActive];

  if (v10)
  {
    v11 = [(AudioSystemCommon *)self headphoneDetector];
    [v11 stop];
  }

  v12 = [(AudioSystemCommon *)self inputs];
  v13 = [v12 isOrientationDetectorActive];

  if (v13)
  {
    v14 = [(AudioSystemCommon *)self orientationDetector];
    [v14 stop];
  }

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 removeObserver:self];

  v16 = [(AudioSystemCommon *)self diagnosticResponder];
  v17 = [v16 conformsToProtocol:&OBJC_PROTOCOL___DKVolumeHUDResponder];

  if (v17)
  {
    v18 = [(AudioSystemCommon *)self diagnosticResponder];
    [v18 enableVolumeHUD:1];
  }

  v19 = [(AudioSystemCommon *)self audioTest];
  [v19 cancel];
}

- (void)cancel
{
  v2 = [(AudioSystemCommon *)self audioTest];
  [v2 cancel];
}

- (void)failedToExecuteWithError:(id)a3
{
  v4 = a3;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "failedToExecuteWithError called for error %@", buf, 0xCu);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008EDC;
  v8[3] = &unk_10001C600;
  v8[4] = self;
  v9 = v4;
  failedToExecuteOnceToken = self->_failedToExecuteOnceToken;
  v7 = v4;
  if (failedToExecuteOnceToken != -1)
  {
    dispatch_once(&self->_failedToExecuteOnceToken, v8);
  }
}

- (void)setUpEventNotifications
{
  v3 = [(AudioSystemCommon *)self inputs];
  v4 = [v3 isMotionDetectorActive];

  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"receivedInterruptNotification:" name:@"MotionDetectedNotification" object:0];

    v6 = [DAMotionDetector alloc];
    v7 = [(AudioSystemCommon *)self inputs];
    v8 = [v7 motionDetectorThreshold];
    v9 = [(DAMotionDetector *)v6 initWithThreshold:v8];
    [(AudioSystemCommon *)self setMotionDetector:v9];

    v10 = [(AudioSystemCommon *)self motionDetector];
    [v10 start];
  }

  v11 = [(AudioSystemCommon *)self inputs];
  v12 = [v11 isOrientationDetectorActive];

  if (v12)
  {
    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:self selector:"receivedInterruptNotification:" name:@"IncorrectOrientationNotification" object:0];

    v14 = [DAOrientationDetector alloc];
    v15 = [(AudioSystemCommon *)self inputs];
    v16 = [v15 orientationDetectorXThreshold];
    v17 = [(AudioSystemCommon *)self inputs];
    v18 = [v17 orientationDetectorZThreshold];
    v19 = [(DAOrientationDetector *)v14 initWithxThreshold:v16 zThreshold:v18];
    [(AudioSystemCommon *)self setOrientationDetector:v19];

    v20 = [(AudioSystemCommon *)self orientationDetector];
    [v20 start];
  }

  v21 = [(AudioSystemCommon *)self inputs];
  v22 = [v21 isAccessoryDetectorActive];

  if (v22)
  {
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:self selector:"receivedInterruptNotification:" name:@"AccessoryDisconnectedNotification" object:0];

    v24 = [DAAccessoryDisconnectDetector alloc];
    v25 = [(AudioSystemCommon *)self inputs];
    v26 = [v25 accessoryDetectorModelNumbers];
    v27 = [(DAAccessoryDisconnectDetector *)v24 initWithModelNumbers:v26];
    [(AudioSystemCommon *)self setAccessoryDisconnectDetector:v27];

    v28 = [(AudioSystemCommon *)self accessoryDisconnectDetector];
    [v28 start];
  }

  v29 = [(AudioSystemCommon *)self inputs];
  v30 = [v29 isHeadphonesDetectorActive];

  if (v30)
  {
    v31 = +[NSNotificationCenter defaultCenter];
    [v31 addObserver:self selector:"receivedInterruptNotification:" name:@"HeadphonesConnectedNotification" object:0];

    v32 = objc_alloc_init(DAHeadphonesDetector);
    [(AudioSystemCommon *)self setHeadphoneDetector:v32];

    v33 = [(AudioSystemCommon *)self headphoneDetector];
    [v33 start];
  }
}

- (void)receivedInterruptNotification:(id)a3
{
  v4 = a3;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Recieved interrupt notification %@", buf, 0xCu);
  }

  v6 = [v4 name];
  v7 = [v6 isEqualToString:@"MotionDetectedNotification"];

  if (v7)
  {
    v21 = 0;
    v8 = &v21;
    v9 = &v21;
    v10 = -53;
  }

  else
  {
    v11 = [v4 name];
    v12 = [v11 isEqualToString:@"IncorrectOrientationNotification"];

    if (v12)
    {
      v20 = 0;
      v8 = &v20;
      v9 = &v20;
      v10 = -61;
    }

    else
    {
      v13 = [v4 name];
      v14 = [v13 isEqualToString:@"AccessoryDisconnectedNotification"];

      if (v14)
      {
        v19 = 0;
        v8 = &v19;
        v9 = &v19;
        v10 = -52;
      }

      else
      {
        v15 = [v4 name];
        v16 = [v15 isEqualToString:@"HeadphonesConnectedNotification"];

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
  v4 = [v3 connectedAccessories];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(AudioSystemCommon *)self inputs];
        v12 = [v11 accessoryDetectorModelNumbers];
        v13 = [v10 modelNumber];
        v14 = [v12 containsObject:v13];

        v7 |= v14;
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

+ (BOOL)setCode:(int64_t)a3 forError:(id *)a4
{
  if (a4)
  {
    *a4 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:a3 userInfo:0];
  }

  return a4 != 0;
}

- (void)downloadFilesWithResponder:(id)a3
{
  v29 = a3;
  [(AudioSystemCommon *)self deleteTemporaryFiles];
  v30 = dispatch_semaphore_create(0);
  v4 = +[NSMutableDictionary dictionary];
  [(AudioSystemCommon *)self setFileNameToURL:v4];

  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v43 = 0u;
  v5 = [(AudioSystemCommon *)self inputs];
  obj = [v5 sources];

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

      v13 = [(AudioSystemCommon *)self tmpdir];
      v8 = [v13 URLByAppendingPathComponent:v12];

      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = sub_100009C38;
      v41 = sub_100009C48;
      v42 = 0;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100009C50;
      v34[3] = &unk_10001C628;
      v36 = &v37;
      v14 = v30;
      v35 = v14;
      [v29 getAsset:v12 completion:v34];
      v15 = [(AudioSystemCommon *)self inputs];
      v16 = [v15 fileDownloadTimeout];
      v17 = dispatch_time(0, 1000000000 * [v16 unsignedLongValue]);
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
        v22 = [(AudioSystemCommon *)self fileNameToURL];
        [v22 setObject:v8 forKeyedSubscript:v12];

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
  v4 = [(AudioSystemCommon *)self tmpdir];
  v25 = 0;
  v19 = v3;
  v5 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:&__NSArray0__struct options:0 error:&v25];
  v6 = v25;

  if (v6)
  {
    v7 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000FD8C(v6);
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
        v14 = [v13 path];
        if (v14)
        {
          v15 = +[NSFileManager defaultManager];
          v20 = 0;
          [v15 removeItemAtPath:v14 error:&v20];
          v16 = v20;

          if (v16)
          {
            v17 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_10000FE18(v26, v16, &v27, v17);
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

- (void)testSequence:(id)a3 completionSemaphore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 outputs];
  v9 = [v8 firstObject];

  v10 = [(AudioSystemCommon *)self inputs];
  v11 = [v10 sources];
  v12 = [v9 source];
  v13 = [v11 objectAtIndexedSubscript:{objc_msgSend(v12, "integerValue")}];

  v14 = [(AudioSystemCommon *)self createNewTestSequenceWithOutput:v9 andStimulusFile:v13];
  v15 = [(AudioSystemCommon *)self audioTest];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000A0FC;
  v21[3] = &unk_10001C650;
  v21[4] = self;
  v22 = v14;
  v23 = v7;
  v24 = v9;
  v25 = v13;
  v26 = v6;
  v16 = v6;
  v17 = v13;
  v18 = v9;
  v19 = v7;
  v20 = v14;
  [v15 startWithSequence:v20 completion:v21];
}

- (id)pathToSoundFile:(id)a3
{
  v4 = a3;
  v5 = [(AudioSystemCommon *)self fileNameToURL];
  v6 = [v5 objectForKeyedSubscript:v4];

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

  [v3 setObject:&off_10001DAB0 forKeyedSubscript:@"d"];
  v9 = [(AudioSystemCommon *)self testID];
  [v3 setObject:v9 forKeyedSubscript:@"k"];

  [v3 setObject:&off_10001D7E8 forKeyedSubscript:@"e"];
  v10 = +[NSDate date];
  [v10 timeIntervalSince1970];
  v12 = v11;
  [(AudioSystemCommon *)self startTime];
  v14 = [NSNumber numberWithDouble:v12 - v13];
  [v3 setObject:v14 forKeyedSubscript:@"t"];

  v15 = [(AudioSystemCommon *)self result];
  v16 = [v15 statusCode];
  [v3 setObject:v16 forKeyedSubscript:@"s"];

  v17 = [(AudioSystemCommon *)self result];
  v18 = [v17 data];
  [v3 setObject:v18 forKeyedSubscript:@"data"];

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
    v22 = [(AudioSystemCommon *)self tmpdir];
    v23 = [v22 URLByAppendingPathComponent:@"results.json"];

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

- (void)parseTestResults:(id)a3 fromOutput:(id)a4 withFile:(id)a5 parsedResults:(id)a6 sequenceIndex:(id)a7 error:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v56 = a6;
  v52 = a7;
  v17 = a8;
  v57 = v16;
  v18 = [(AudioSystemCommon *)self pathToSoundFile:v16];
  v58 = [v18 absoluteString];

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v14;
  v54 = [obj countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (!v54)
  {
    goto LABEL_33;
  }

  v55 = *v62;
  v19 = &DKTemporaryDirectoryURL_ptr;
  v59 = self;
  v51 = v15;
  while (2)
  {
    for (i = 0; i != v54; i = i + 1)
    {
      if (*v62 != v55)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v61 + 1) + 8 * i);
      v22 = v19[140];
      [v21 sampleRate];
      v23 = [v22 numberWithDouble:?];
      v60 = v17;
      v24 = [AudioCrossCorrelation convertWAVtoNSDataWithFileStringURL:v58 withSampleRate:v23 error:&v60];
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
              sub_100010050(v57, v15);
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

      v26 = [(AudioSystemCommon *)self inputs];
      v27 = [v26 inputValueToName];
      v28 = [v19[140] numberWithInteger:{objc_msgSend(v21, "inputID")}];
      v29 = [v27 objectForKey:v28];

      if (!v29)
      {
        v48 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          sub_10000FFD0(v21);
        }

        v71 = NSLocalizedDescriptionKey;
        v72 = @"Name missing for current microphone.";
        v49 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v50 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-68 userInfo:v49];

        [(AudioSystemCommon *)self failedToExecuteWithError:v50];
LABEL_32:
        v17 = v25;
        goto LABEL_33;
      }

      v30 = objc_alloc_init([(AudioSystemCommon *)self audioSystemResultClass]);
      [v30 setInput:v29];
      v31 = [v15 outputDevice];
      [v30 setOutput:v31];

      [v30 setSource:v57];
      [(AudioSystemCommon *)self performAnalysisOnAVResult:v21 fromOutput:v15 withSourceSignalData:v24 intoDKResult:v30 error:v25];
      v32 = [v30 dictionaryValue];
      [v56 addObject:v32];

      v33 = [(AudioSystemCommon *)self inputs];
      v34 = [v33 saveRawRecording];

      if (v34)
      {
        v35 = [v30 output];
        v36 = [v30 source];
        v37 = [v29 stringByAppendingFormat:@"Mic-%@Speaker-File%@-Sequence%@.wav", v35, v36, v52];

        if (([v37 containsString:@".wav"] & 1) == 0)
        {
          v38 = [v37 stringByAppendingString:@".wav"];

          v37 = v38;
        }

        v39 = [(AudioSystemCommon *)self tmpdir];
        v40 = [v39 URLByAppendingPathComponent:v37];

        v41 = [v21 data];
        [AudioCrossCorrelation convertNSDataToWAV:v41 atURL:v40 error:v25];

        v42 = self;
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
          v17 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:-60 userInfo:v45];

          [(AudioSystemCommon *)v59 failedToExecuteWithError:v17];
        }

        else
        {
          v46 = [(AudioSystemCommon *)v42 rawRecordings];
          [v46 addObject:v40];

          v17 = 0;
        }

        v15 = v51;
      }

      else
      {
        v43 = 1;
        v17 = v25;
      }

      v19 = &DKTemporaryDirectoryURL_ptr;
      if (!v43)
      {
        goto LABEL_33;
      }

      self = v59;
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

- (void)performAnalysisOnAVResult:(id)a3 fromOutput:(id)a4 withSourceSignalData:(id)a5 intoDKResult:(id)a6 error:(id)a7
{
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    sub_1000100FC(v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

- (id)createNewTestSequenceWithOutput:(id)a3 andStimulusFile:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init([(AudioSystemCommon *)self avAudioDeviceTestSequenceClass]);
  v9 = [(AudioSystemCommon *)self inputs];
  v10 = [v9 outputSpecifications];
  v11 = [v7 outputDevice];
  v12 = [v10 objectForKeyedSubscript:v11];
  v13 = [v12 channel];
  [v8 setOutputID:{objc_msgSend(v13, "integerValue")}];

  v14 = [v7 volume];
  [v14 floatValue];
  [v8 setVolume:?];

  v15 = [(AudioSystemCommon *)self pathToSoundFile:v6];

  [v8 setStimulusURL:v15];
  v16 = [(AudioSystemCommon *)self inputs];
  v17 = [v16 outputSpecifications];
  v18 = [v7 outputDevice];

  v19 = [v17 objectForKeyedSubscript:v18];
  v20 = [v19 mode];
  [v8 setOutputMode:{objc_msgSend(v20, "integerValue")}];

  v21 = [(AudioSystemCommon *)self inputs];
  [v8 setCalculateCrossCorrelationPeak:{objc_msgSend(v21, "isUsingDBValuesFromSystem")}];

  v22 = [(AudioSystemCommon *)self inputs];
  v23 = [v22 isUsingMeasurementMode];
  v24 = &AVAudioSessionModeMeasurement;
  if (!v23)
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
    sub_100010134(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return @"com.apple.Diagnostics.AudioSystem.XXXXXXXX";
}

- (id)testID
{
  v2 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_10001016C(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return &off_10001D7D0;
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
    v3 = [(AudioSystemCommon *)self originalBalance];
    [v3 floatValue];
    _AXSSetLeftRightAudioBalance();
  }

  if ([(AudioSystemCommon *)self soundRecognitionChanged])
  {
    v5 = +[AXSDSettings sharedInstance];
    v4 = [(AudioSystemCommon *)self systemSoundDetectionState];
    [v5 setSoundDetectionState:v4 source:AXSDSettingsEventSourceInternal];
  }
}

- (BOOL)isSoundRecognitionRequired
{
  v2 = +[AXSDSettings sharedInstance];
  v3 = [v2 soundDetectionEnabled];

  return v3;
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
    v6 = [(AudioSystemCommon *)self systemSoundDetectionState];
    [v7 setSoundDetectionState:v6 source:AXSDSettingsEventSourceInternal];
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