@interface LegacyAudioSystemController
+ (BOOL)setCode:(int64_t)a3 forError:(id *)a4;
- (BOOL)confirmDeviceDocked;
- (BOOL)isDockRequired;
- (void)cancel;
- (void)cleanUpPlayResults;
- (void)failedToExecuteWithError:(id)a3;
- (void)receivedNotification:(id)a3;
- (void)restoreAccesibilityStateIfRequired;
- (void)restoreOriginalVolumes;
- (void)saveOriginalVolumes;
- (void)setAccessibilityStateIfRequired;
- (void)setUpEventNotifications;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)teardown;
@end

@implementation LegacyAudioSystemController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v31 = v6;
  [(LegacyAudioSystemController *)self setInputs:v6];
  v36 = v7;
  [(LegacyAudioSystemController *)self setDiagnosticResponder:v7];
  if ([(LegacyAudioSystemController *)self isDockRequired]&& ![(LegacyAudioSystemController *)self confirmDeviceDocked])
  {
    v53 = 0;
    [LegacyAudioSystemController setCode:-52 forError:&v53];
    v14 = v53;
    [(LegacyAudioSystemController *)self failedToExecuteWithError:v14];
  }

  else
  {
    [(LegacyAudioSystemController *)self setAccessibilityStateIfRequired];
    [v7 enableVolumeHUD:0];
    v34 = dispatch_semaphore_create(0);
    v8 = +[NSMutableDictionary dictionary];
    [(LegacyAudioSystemController *)self setFileNameToURL:v8];

    v9 = NSTemporaryDirectory();
    v35 = [NSURL fileURLWithPath:v9 isDirectory:1];

    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v49 = 0u;
    v10 = [(LegacyAudioSystemController *)self inputs];
    obj = [v10 requiredFiles];

    v11 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v11)
    {
      v13 = 0;
      v14 = 0;
      v33 = *v50;
      *&v12 = 138412546;
      v30 = v12;
      while (2)
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v50 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v49 + 1) + 8 * v15);
          if (([(LegacyAudioSystemController *)self isCancelled]& 1) != 0)
          {
            v13 = v16;
            goto LABEL_27;
          }

          v18 = +[NSUUID UUID];
          v19 = [v18 UUIDString];
          v13 = [v35 URLByAppendingPathComponent:v19];

          v43 = 0;
          v44 = &v43;
          v45 = 0x3032000000;
          v46 = sub_100002C54;
          v47 = sub_100002C64;
          v48 = 0;
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_100002C6C;
          v40[3] = &unk_100010428;
          v42 = &v43;
          v20 = v34;
          v41 = v20;
          [v36 getAsset:v17 completion:v40];
          dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
          if (v44[5])
          {
            v21 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v55 = v13;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Saving asset data to [%@]", buf, 0xCu);
            }

            v22 = v44[5];
            v39 = v14;
            v23 = [v22 writeToURL:v13 options:268435457 error:&v39];
            v24 = v39;

            if (v23)
            {
              v25 = [(LegacyAudioSystemController *)self fileNameToURL];
              [v25 setObject:v13 forKeyedSubscript:v17];

              v26 = 1;
              v14 = v24;
            }

            else
            {
              v29 = DiagnosticLogHandleForCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = v30;
                v55 = v13;
                v56 = 2112;
                v57 = v24;
                _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to save asset [%@]: %@", buf, 0x16u);
              }

              v38 = v24;
              [LegacyAudioSystemController setCode:-59 forError:&v38];
              v14 = v38;

              [(LegacyAudioSystemController *)self failedToExecuteWithError:v14];
              v26 = 0;
            }
          }

          else
          {
            v27 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v55 = v17;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to download asset: %@", buf, 0xCu);
            }

            v37 = v14;
            [LegacyAudioSystemController setCode:-1 forError:&v37];
            v28 = v37;

            [(LegacyAudioSystemController *)self failedToExecuteWithError:v28];
            v26 = 0;
            v14 = v28;
          }

          _Block_object_dispose(&v43, 8);
          if (!v26)
          {
            goto LABEL_27;
          }

          v15 = v15 + 1;
          v16 = v13;
        }

        while (v11 != v15);
        v11 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_27:
    }

    else
    {
      v14 = 0;
    }
  }
}

- (void)start
{
  [(LegacyAudioSystemController *)self setUpEventNotifications];
  [(LegacyAudioSystemController *)self saveOriginalVolumes];
  v3 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-3909.audioQueue", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002D68;
  block[3] = &unk_100010450;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)failedToExecuteWithError:(id)a3
{
  v4 = a3;
  v5 = [(LegacyAudioSystemController *)self result];
  [v5 setData:&__NSDictionary0__struct];

  v6 = [v4 code];
  v7 = [NSNumber numberWithInteger:v6];
  v8 = [(LegacyAudioSystemController *)self result];
  [v8 setStatusCode:v7];

  [(LegacyAudioSystemController *)self cancel];

  [(LegacyAudioSystemController *)self setFinished:1];
}

- (void)cleanUpPlayResults
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(LegacyAudioSystemController *)self playResults];
  v2 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v18;
          do
          {
            for (j = 0; j != v9; j = j + 1)
            {
              if (*v18 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v17 + 1) + 8 * j);
              if ([v12 count])
              {
                v13 = 0;
                do
                {
                  v14 = [v12 objectAtIndexedSubscript:v13];
                  v15 = v14;
                  if (!v13)
                  {
                    [v14 freeSourceData];
                  }

                  [v15 freeReceivedData];

                  ++v13;
                }

                while ([v12 count] > v13);
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v9);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v3);
  }
}

- (void)setUpEventNotifications
{
  v3 = [[DAMotionDetector alloc] initWithThreshold:&off_1000108D0];
  [(LegacyAudioSystemController *)self setMotionDetector:v3];

  v4 = objc_alloc_init(DAAudioSessionInterruptDetector);
  [(LegacyAudioSystemController *)self setAudioSessionInterruptDetector:v4];

  v5 = [DAAccessoryDisconnectDetector alloc];
  v6 = [(LegacyAudioSystemController *)self inputs];
  v7 = [v6 accessoryModelNumbers];
  v8 = [(DAAccessoryDisconnectDetector *)v5 initWithModelNumbers:v7];
  [(LegacyAudioSystemController *)self setAccessoryDisconnectDetector:v8];

  v9 = objc_alloc_init(DAHeadphonesDetector);
  [(LegacyAudioSystemController *)self setHeadphoneDetector:v9];

  v10 = [(LegacyAudioSystemController *)self inputs];
  v11 = [v10 xComponentAccelThreshold];

  if (v11)
  {
    v12 = [DAOrientationDetector alloc];
    v13 = [(LegacyAudioSystemController *)self inputs];
    v14 = [v13 xComponentAccelThreshold];
    v15 = [(DAOrientationDetector *)v12 initWithxThreshold:v14 zThreshold:&off_100010870];
    [(LegacyAudioSystemController *)self setOrientationDetector:v15];
  }

  v16 = +[NSNotificationCenter defaultCenter];
  v33[0] = @"MotionDetectedNotification";
  v33[1] = @"HeadphonesConnectedNotification";
  v33[2] = @"AccessoryDisconnectedNotification";
  v33[3] = @"AudioSessionInterruptNotification";
  v33[4] = @"IncorrectOrientationNotification";
  [NSArray arrayWithObjects:v33 count:5];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v31 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [v16 addObserver:self selector:"receivedNotification:" name:*(*(&v28 + 1) + 8 * i) object:{0, v28}];
      }

      v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  v22 = [(LegacyAudioSystemController *)self motionDetector];
  [v22 start];

  v23 = [(LegacyAudioSystemController *)self audioSessionInterruptDetector];
  [v23 start];

  v24 = [(LegacyAudioSystemController *)self accessoryDisconnectDetector];
  [v24 start];

  v25 = [(LegacyAudioSystemController *)self headphoneDetector];
  [v25 start];

  v26 = [(LegacyAudioSystemController *)self orientationDetector];

  if (v26)
  {
    v27 = [(LegacyAudioSystemController *)self orientationDetector];
    [v27 start];
  }
}

- (void)receivedNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:@"HeadphonesConnectedNotification"];

  if (v6)
  {
    v33 = 0;
    [LegacyAudioSystemController setCode:-54 forError:&v33];
    v7 = v33;
    goto LABEL_21;
  }

  v8 = [v4 name];
  v9 = [v8 isEqualToString:@"MotionDetectedNotification"];

  if (v9)
  {
    v32 = 0;
    [LegacyAudioSystemController setCode:-53 forError:&v32];
    v7 = v32;
    goto LABEL_21;
  }

  v10 = [v4 name];
  if (![v10 isEqualToString:@"AccessoryDisconnectedNotification"])
  {

LABEL_17:
    v20 = [v4 name];
    v21 = [v20 isEqualToString:@"AudioSessionInterruptNotification"];

    if (v21)
    {
      v26 = 0;
      [LegacyAudioSystemController setCode:-56 forError:&v26];
      v7 = v26;
    }

    else
    {
      v22 = [v4 name];
      v23 = [v22 isEqualToString:@"IncorrectOrientationNotification"];

      if (!v23)
      {
        v13 = 0;
        goto LABEL_22;
      }

      v25 = 0;
      [LegacyAudioSystemController setCode:-61 forError:&v25];
      v7 = v25;
    }

LABEL_21:
    v13 = v7;
LABEL_22:
    [(LegacyAudioSystemController *)self failedToExecuteWithError:v13];
    goto LABEL_23;
  }

  v11 = [(LegacyAudioSystemController *)self isDockRequired];

  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = [v4 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"accessoryModelNumber"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [(LegacyAudioSystemController *)self inputs];
  v15 = [v14 accessoryModelNumbers];

  v16 = [v15 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    while (2)
    {
      v19 = 0;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if ([*(*(&v28 + 1) + 8 * v19) isEqualToString:v13])
        {
          v27 = 0;
          [LegacyAudioSystemController setCode:-52 forError:&v27];
          v24 = v27;

          v13 = v24;
          goto LABEL_22;
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:
}

- (BOOL)confirmDeviceDocked
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
        v11 = [(LegacyAudioSystemController *)self inputs];
        v12 = [v11 accessoryModelNumbers];
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

- (BOOL)isDockRequired
{
  v2 = [(LegacyAudioSystemController *)self inputs];
  v3 = [v2 accessoryModelNumbers];
  v4 = [v3 count] != 0;

  return v4;
}

+ (BOOL)setCode:(int64_t)a3 forError:(id *)a4
{
  if (a4)
  {
    *a4 = [NSError errorWithDomain:@"DAAudioQualityErrorDomain" code:a3 userInfo:0];
  }

  return a4 != 0;
}

- (void)cancel
{
  v2 = [(LegacyAudioSystemController *)self audioDevice];
  [v2 cancel];
}

- (void)teardown
{
  [(LegacyAudioSystemController *)self restoreAccesibilityStateIfRequired];
  [(LegacyAudioSystemController *)self restoreOriginalVolumes];
  v3 = [(LegacyAudioSystemController *)self motionDetector];

  if (v3)
  {
    v4 = [(LegacyAudioSystemController *)self motionDetector];
    [v4 stop];

    [(LegacyAudioSystemController *)self setMotionDetector:0];
  }

  v5 = [(LegacyAudioSystemController *)self audioSessionInterruptDetector];

  if (v5)
  {
    v6 = [(LegacyAudioSystemController *)self audioSessionInterruptDetector];
    [v6 stop];

    [(LegacyAudioSystemController *)self setAudioSessionInterruptDetector:0];
  }

  v7 = [(LegacyAudioSystemController *)self orientationDetector];

  if (v7)
  {
    v8 = [(LegacyAudioSystemController *)self orientationDetector];
    [v8 stop];

    [(LegacyAudioSystemController *)self setOrientationDetector:0];
  }

  v9 = [(LegacyAudioSystemController *)self accessoryDisconnectDetector];

  if (v9)
  {
    v10 = [(LegacyAudioSystemController *)self accessoryDisconnectDetector];
    [v10 stop];

    [(LegacyAudioSystemController *)self setAccessoryDisconnectDetector:0];
  }

  v11 = [(LegacyAudioSystemController *)self headphoneDetector];

  if (v11)
  {
    v12 = [(LegacyAudioSystemController *)self headphoneDetector];
    [v12 stop];

    [(LegacyAudioSystemController *)self setHeadphoneDetector:0];
  }

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 removeObserver:self];

  [(LegacyAudioSystemController *)self cleanUpPlayResults];
  v14 = [(LegacyAudioSystemController *)self diagnosticResponder];
  [v14 enableVolumeHUD:1];
}

- (void)restoreAccesibilityStateIfRequired
{
  if ([(LegacyAudioSystemController *)self monoChanged])
  {
    [(LegacyAudioSystemController *)self isOriginallyMono];
    _AXSMonoAudioSetEnabled();
  }

  if ([(LegacyAudioSystemController *)self balanceChanged])
  {
    v3 = [(LegacyAudioSystemController *)self originalBalance];
    [v3 floatValue];
    _AXSSetLeftRightAudioBalance();
  }
}

- (void)setAccessibilityStateIfRequired
{
  [(LegacyAudioSystemController *)self setMonoChanged:0];
  [(LegacyAudioSystemController *)self setBalanceChanged:0];
  if ([(LegacyAudioSystemController *)self isMonoChangeRequired])
  {
    [(LegacyAudioSystemController *)self setIsOriginallyMono:1];
    _AXSMonoAudioSetEnabled();
    [(LegacyAudioSystemController *)self setMonoChanged:1];
  }

  if ([(LegacyAudioSystemController *)self isBalanceChangeRequired])
  {
    v3 = [NSNumber alloc];
    _AXSLeftRightAudioBalance();
    v4 = [v3 initWithFloat:?];
    [(LegacyAudioSystemController *)self setOriginalBalance:v4];

    _AXSSetLeftRightAudioBalance();

    [(LegacyAudioSystemController *)self setBalanceChanged:1];
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
  [(LegacyAudioSystemController *)self setPreviousDeviceVolumePlayAndRecord:v5];
  LODWORD(v6) = v11;
  [(LegacyAudioSystemController *)self setPreviousDeviceVolumeAudioVideo:v6];
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    [(LegacyAudioSystemController *)self previousDeviceVolumePlayAndRecord];
    v9 = v8;
    [(LegacyAudioSystemController *)self previousDeviceVolumeAudioVideo];
    *buf = 134218240;
    v13 = v9;
    v14 = 2048;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Save original volumes previousDeviceVolumePlayAndRecord:%f, previousDeviceVolumeAudioVideo:%f", buf, 0x16u);
  }
}

- (void)restoreOriginalVolumes
{
  v3 = +[AVSystemController sharedAVSystemController];
  [(LegacyAudioSystemController *)self previousDeviceVolumePlayAndRecord];
  [v3 setVolumeTo:@"PlayAndRecord" forCategory:?];

  v4 = +[AVSystemController sharedAVSystemController];
  [(LegacyAudioSystemController *)self previousDeviceVolumeAudioVideo];
  [v4 setVolumeTo:@"Audio/Video" forCategory:?];

  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [(LegacyAudioSystemController *)self previousDeviceVolumePlayAndRecord];
    v7 = v6;
    [(LegacyAudioSystemController *)self previousDeviceVolumeAudioVideo];
    v9 = 134218240;
    v10 = v7;
    v11 = 2048;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Restore original volumes to previousDeviceVolumePlayAndRecord:%f, previousDeviceVolumeAudioVideo:%f", &v9, 0x16u);
  }
}

@end