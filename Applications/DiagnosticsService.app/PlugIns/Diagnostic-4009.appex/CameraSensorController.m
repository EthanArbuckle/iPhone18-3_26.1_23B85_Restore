@interface CameraSensorController
- (BOOL)enableCameraMaxDataRate:(id)a3 error:(id *)a4;
- (BOOL)enableCameraTestPatternPN9:(id)a3 error:(id *)a4;
- (BOOL)setCameraMinimumFrameRate:(id)a3 frameRate:(id)a4 error:(id *)a5;
- (BOOL)setCameraProperties:(id)a3 error:(id *)a4;
- (BOOL)streamCamera:(id)a3 error:(id *)a4;
- (BOOL)syncAndStreamCameras:(id)a3 bravo:(id)a4 error:(id *)a5;
- (void)disableAttentionDetection;
- (void)restoreAttentionDetection;
- (void)runCameraTest;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)teardown;
@end

@implementation CameraSensorController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  [(CameraSensorController *)self setInputs:a3, a4];

  [(CameraSensorController *)self setExclavesStatus:0];
}

- (void)start
{
  [(CameraSensorController *)self disableAttentionDetection];
  v3 = dispatch_queue_create("com.apple.DiagnosticsService.Diagnostic-4009.testQueue", 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003068;
  block[3] = &unk_100010578;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)teardown
{
  v3 = [(CameraSensorController *)self alphaCamera];

  if (v3)
  {
    v4 = [(CameraSensorController *)self alphaCamera];
    [v4 deactivate];
  }

  v5 = [(CameraSensorController *)self bravoCamera];

  if (v5)
  {
    v6 = [(CameraSensorController *)self alphaCamera];
    [v6 deactivate];
  }

  [(CameraSensorController *)self restoreAttentionDetection];
}

- (void)runCameraTest
{
  v3 = MGGetBoolAnswer();
  v4 = MGGetBoolAnswer();
  [(CameraSensorController *)self setAlphaCamera:0];
  [(CameraSensorController *)self setBravoCamera:0];
  v5 = [(CameraSensorController *)self inputs];
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:@"Front"];

  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 2;
    goto LABEL_10;
  }

  v11 = [(CameraSensorController *)self inputs];
  v12 = [v11 identifier];
  v13 = [v12 isEqualToString:@"FrontSuperWide"];

  if (v13)
  {
    v8 = 0;
    v9 = 0;
    v10 = 5;
    goto LABEL_10;
  }

  v14 = [(CameraSensorController *)self inputs];
  v15 = [v14 identifier];
  v16 = [v15 isEqualToString:@"Rear"];

  if (v16)
  {
    v8 = 0;
    v9 = 0;
LABEL_7:
    v10 = 1;
    goto LABEL_10;
  }

  v17 = [(CameraSensorController *)self inputs];
  v18 = [v17 identifier];
  v19 = [v18 isEqualToString:@"RearTelephoto"] & v3;

  if (v19)
  {
    v8 = 0;
    v9 = 0;
    v10 = 3;
    goto LABEL_10;
  }

  v68 = [(CameraSensorController *)self inputs];
  v69 = [v68 identifier];
  v70 = [v69 isEqualToString:@"RearSynced"] & v3;

  if (v70)
  {
    v8 = 1;
    v9 = 3;
    goto LABEL_7;
  }

  v79 = [(CameraSensorController *)self inputs];
  v80 = [v79 identifier];
  v81 = [v80 isEqualToString:@"RearSuperWide"] & v4;

  if (v81)
  {
    v8 = 0;
    v9 = 0;
    v10 = 4;
LABEL_10:
    v20 = +[OSDCameraCenter sharedCenter];
    v88 = 0;
    v21 = [v20 cameraForSource:v10 error:&v88];
    v22 = v88;
    [(CameraSensorController *)self setAlphaCamera:v21];

    v23 = [(CameraSensorController *)self alphaCamera];

    if (v23)
    {
      if (!v8)
      {
        goto LABEL_14;
      }

      v24 = +[OSDCameraCenter sharedCenter];
      v87 = v22;
      v25 = [v24 cameraForSource:v9 error:&v87];
      v26 = v87;

      [(CameraSensorController *)self setBravoCamera:v25];
      v27 = [(CameraSensorController *)self bravoCamera];

      if (v27)
      {
        v22 = v26;
LABEL_14:
        [(CameraSensorController *)self setSoloFrameCount:0];
        [(CameraSensorController *)self setAlphaSyncFrameCount:0];
        [(CameraSensorController *)self setBravoSyncFrameCount:0];
        [(CameraSensorController *)self setStreamTime:0.0];
        v28 = [(CameraSensorController *)self alphaCamera];
        v86 = v22;
        v29 = [(CameraSensorController *)self setCameraProperties:v28 error:&v86];
        v30 = v86;

        if (!v29)
        {
          goto LABEL_28;
        }

        v31 = [(CameraSensorController *)self inputs];
        v32 = [v31 identifier];
        v33 = [v32 isEqualToString:@"RearSynced"];

        v34 = [(CameraSensorController *)self alphaCamera];
        if (v33)
        {
          v35 = [(CameraSensorController *)self bravoCamera];
          v85 = v30;
          v36 = [(CameraSensorController *)self syncAndStreamCameras:v34 bravo:v35 error:&v85];
          v37 = v85;

          v30 = v37;
          if ((v36 & 1) == 0)
          {
LABEL_28:
            if (v30)
            {
              v61 = DiagnosticLogHandleForCategory();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                sub_100008330(v30, v61, v62, v63, v64, v65, v66, v67);
              }
            }

            return;
          }
        }

        else
        {
          v84 = v30;
          v39 = [(CameraSensorController *)self streamCamera:v34 error:&v84];
          v37 = v84;

          v30 = v37;
          if (!v39)
          {
            goto LABEL_28;
          }
        }

        v40 = objc_alloc_init(NSMutableDictionary);
        v41 = [(CameraSensorController *)self exclavesStatus];

        if (v41)
        {
          v42 = [(CameraSensorController *)self exclavesStatus];
          [v40 addEntriesFromDictionary:v42];
        }

        v43 = [(CameraSensorController *)self inputs];
        v44 = [v43 identifier];
        v45 = [v44 isEqualToString:@"RearSynced"];

        if (v45)
        {
          v46 = [(CameraSensorController *)self alphaSyncFrameCount];
          v47 = [(CameraSensorController *)self inputs];
          v48 = [v47 framesToSample];

          v82 = [(CameraSensorController *)self bravoSyncFrameCount];
          v49 = [(CameraSensorController *)self inputs];
          v50 = [v49 framesToSample];

          v91[0] = @"alphaSyncFrameCount";
          v51 = [NSNumber numberWithInt:[(CameraSensorController *)self alphaSyncFrameCount]];
          v92[0] = v51;
          v91[1] = @"bravoSyncFrameCount";
          v52 = [NSNumber numberWithInt:[(CameraSensorController *)self bravoSyncFrameCount]];
          v92[1] = v52;
          v91[2] = @"streamTime";
          [(CameraSensorController *)self streamTime];
          v53 = [NSNumber numberWithDouble:?];
          v92[2] = v53;
          v54 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:3];
          [v40 addEntriesFromDictionary:v54];

          v55 = [v40 copy];
          v56 = [(CameraSensorController *)self result];
          [v56 setData:v55];

          if (v46 >= v48 && v82 >= v50)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v71 = [(CameraSensorController *)self soloFrameCount];
          v72 = [(CameraSensorController *)self inputs];
          v73 = [v72 framesToSample];

          v89[0] = @"soloFrameCount";
          v74 = [NSNumber numberWithInt:[(CameraSensorController *)self soloFrameCount]];
          v89[1] = @"streamTime";
          v90[0] = v74;
          [(CameraSensorController *)self streamTime];
          v75 = [NSNumber numberWithDouble:?];
          v90[1] = v75;
          v76 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:2];
          [v40 addEntriesFromDictionary:v76];

          v77 = [v40 copy];
          v78 = [(CameraSensorController *)self result];
          [v78 setData:v77];

          if (v71 >= v73)
          {
LABEL_25:
            v57 = [(CameraSensorController *)self exclavesStatus];
            v58 = [DAExclavesSupport testResultOverrideForExclavesStatus:v57 originalResult:&off_1000111F8];
            v59 = [(CameraSensorController *)self result];
            [v59 setStatusCode:v58];

LABEL_37:
            return;
          }
        }

        v57 = [(CameraSensorController *)self result];
        [v57 setStatusCode:&off_100011210];
        goto LABEL_37;
      }

      v38 = &off_1000111E0;
      v22 = v26;
    }

    else
    {
      v38 = &off_1000111C8;
    }

    v60 = [(CameraSensorController *)self result];
    [v60 setStatusCode:v38];

    v30 = v22;
    goto LABEL_28;
  }

  v83 = [(CameraSensorController *)self result];
  [v83 setStatusCode:&off_1000111B0];
}

- (BOOL)setCameraProperties:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CameraSensorController *)self inputs];
  if ([v7 enableMaxDataRate])
  {
  }

  else
  {
    v8 = [(CameraSensorController *)self inputs];
    v9 = [v8 enableTestPatternPN9];

    if (!v9)
    {
      v14 = 1;
      goto LABEL_14;
    }
  }

  if ([v6 activate:a4])
  {
    v10 = [(CameraSensorController *)self inputs];
    v11 = [v10 enableMaxDataRate];

    if (v11 && ![(CameraSensorController *)self enableCameraMaxDataRate:v6 error:a4])
    {
      v14 = 0;
    }

    else
    {
      v12 = [(CameraSensorController *)self inputs];
      v13 = [v12 enableTestPatternPN9];

      if (v13)
      {
        v14 = [(CameraSensorController *)self enableCameraTestPatternPN9:v6 error:a4];
      }

      else
      {
        v14 = 1;
      }
    }

    [v6 deactivate];
  }

  else
  {
    v15 = [(CameraSensorController *)self result];
    [v15 setStatusCode:&off_100011228];

    v14 = 0;
  }

LABEL_14:
  v16 = [(CameraSensorController *)self inputs];
  v17 = [v16 minimumFrameRate];

  if (v14 && v17)
  {
    if ([v6 activate:a4])
    {
      LOBYTE(v14) = [(CameraSensorController *)self setCameraMinimumFrameRate:v6 frameRate:v17 error:a4];
    }

    else
    {
      v18 = [(CameraSensorController *)self result];
      [v18 setStatusCode:&off_100011228];

      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

- (BOOL)enableCameraMaxDataRate:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![v6 enableAgileClocking:0 error:a4])
  {
    v9 = &off_100011240;
    goto LABEL_7;
  }

  v7 = [v6 useMaxAvailableDataRate:a4];

  if (!v7)
  {
    v9 = &off_100011258;
    goto LABEL_7;
  }

  v8 = 1;
  if (([v6 enableAgileClocking:1 error:a4] & 1) == 0)
  {
    v9 = &off_100011270;
LABEL_7:
    v10 = [(CameraSensorController *)self result];
    [v10 setStatusCode:v9];

    v8 = 0;
  }

  return v8;
}

- (BOOL)enableCameraTestPatternPN9:(id)a3 error:(id *)a4
{
  v5 = [a3 enableTestPatternPN9:1 error:a4];
  if ((v5 & 1) == 0)
  {
    v6 = [(CameraSensorController *)self result];
    [v6 setStatusCode:&off_100011288];
  }

  return v5;
}

- (BOOL)setCameraMinimumFrameRate:(id)a3 frameRate:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 supportedFormats:a5];
  v11 = v10;
  if (v10)
  {
    v36 = self;
    v37 = a5;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      v16 = kFigSupportedFormat_VideoMinFrameRate;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v39 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [*(*(&v38 + 1) + 8 * v17) objectForKeyedSubscript:{v16, v36}];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 intValue];
          if (v20 <= [v9 intValue])
          {
            break;
          }
        }

        if (v14 == ++v17)
        {
          v14 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      if ([v8 setMinimumFrameRate:v9 error:v37])
      {
        v34 = 1;
        goto LABEL_19;
      }

      v21 = [(CameraSensorController *)v36 result];
      [v21 setStatusCode:&off_1000112A0];
    }

    else
    {
LABEL_11:

      v21 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10000839C(v9, v21, v22, v23, v24, v25, v26, v27);
      }
    }
  }

  else
  {
    v21 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100008408(a5, v21, v28, v29, v30, v31, v32, v33);
    }
  }

  v34 = 0;
LABEL_19:

  return v34;
}

- (BOOL)streamCamera:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = dispatch_group_create();
  if ([v6 activate:a4])
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000040B4;
    v21 = &unk_1000105A0;
    v22 = self;
    v8 = v7;
    v23 = v8;
    v9 = objc_retainBlock(&v18);
    [v6 setFrameHandler:{v9, v18, v19, v20, v21, v22}];
    v10 = [v6 startStreamingWithOptions:0 error:a4];
    if (v10)
    {
      v11 = +[NSDate date];
      dispatch_group_enter(v8);
      v12 = [(CameraSensorController *)self inputs];
      [v12 frameSampleTimeout];
      v14 = dispatch_time(0, (v13 * 1000000000.0));
      dispatch_group_wait(v8, v14);

      [v6 stopStreaming:a4];
      v15 = +[NSDate date];
      [v15 timeIntervalSinceDate:v11];
      [(CameraSensorController *)self setStreamTime:?];
    }

    else
    {
      v11 = [(CameraSensorController *)self result];
      [v11 setStatusCode:&off_1000112B8];
    }

    [v6 deactivate];
  }

  else
  {
    v16 = [(CameraSensorController *)self result];
    [v16 setStatusCode:&off_100011228];

    v10 = 0;
  }

  return v10;
}

- (BOOL)syncAndStreamCameras:(id)a3 bravo:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = dispatch_group_create();
  if ([v9 activate:a5])
  {
    if (![v8 activate:a5])
    {
      v15 = [(CameraSensorController *)self result];
      [v15 setStatusCode:&off_100011228];

      v13 = 0;
LABEL_15:
      [v9 deactivate];
      goto LABEL_16;
    }

    if (![OSDCameraCenter syncCameras:v8 slave:v9 skipSlaveFrames:1 enableSlaveOutput:1 error:a5])
    {
      v16 = [(CameraSensorController *)self result];
      [v16 setStatusCode:&off_1000112E8];

      v13 = 0;
LABEL_14:
      [v8 deactivate];
      goto LABEL_15;
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000044A0;
    v31[3] = &unk_1000105A0;
    v31[4] = self;
    v11 = v10;
    v32 = v11;
    [v8 setFrameHandler:v31];
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100004574;
    v28 = &unk_1000105A0;
    v29 = self;
    v12 = v11;
    v30 = v12;
    [v9 setFrameHandler:&v25];
    if ([v8 startStreamingWithOptions:0 error:{a5, v25, v26, v27, v28, v29}])
    {
      if ([v9 startStreamingWithOptions:0 error:a5])
      {
        v13 = 1;
LABEL_13:
        v19 = +[NSDate date];
        dispatch_group_enter(v12);
        dispatch_group_enter(v12);
        v20 = [(CameraSensorController *)self inputs];
        [v20 frameSampleTimeout];
        v22 = dispatch_time(0, (v21 * 1000000000.0));
        dispatch_group_wait(v12, v22);

        [v9 stopStreaming:a5];
        [v8 stopStreaming:a5];
        v23 = +[NSDate date];
        [v23 timeIntervalSinceDate:v19];
        [(CameraSensorController *)self setStreamTime:?];

        goto LABEL_14;
      }

      v17 = &off_100011300;
    }

    else
    {
      v17 = &off_1000112B8;
    }

    v18 = [(CameraSensorController *)self result];
    [v18 setStatusCode:v17];

    v13 = 0;
    goto LABEL_13;
  }

  v14 = [(CameraSensorController *)self result];
  [v14 setStatusCode:&off_1000112D0];

  [v8 deactivate];
  v13 = 0;
LABEL_16:

  return v13;
}

- (void)disableAttentionDetection
{
  [(CameraSensorController *)self setAttentionDetectionSetting:_AXSAttentionAwarenessFeaturesEnabled() != 0];

  __AXSSetAttentionAwarenessFeaturesEnabled(0);
}

- (void)restoreAttentionDetection
{
  v2 = [(CameraSensorController *)self attentionDetectionSetting];

  __AXSSetAttentionAwarenessFeaturesEnabled(v2);
}

@end