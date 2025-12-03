@interface CameraSensorController
- (BOOL)enableCameraMaxDataRate:(id)rate error:(id *)error;
- (BOOL)enableCameraTestPatternPN9:(id)n9 error:(id *)error;
- (BOOL)setCameraMinimumFrameRate:(id)rate frameRate:(id)frameRate error:(id *)error;
- (BOOL)setCameraProperties:(id)properties error:(id *)error;
- (BOOL)streamCamera:(id)camera error:(id *)error;
- (BOOL)syncAndStreamCameras:(id)cameras bravo:(id)bravo error:(id *)error;
- (void)disableAttentionDetection;
- (void)restoreAttentionDetection;
- (void)runCameraTest;
- (void)setupWithInputs:(id)inputs responder:(id)responder;
- (void)start;
- (void)teardown;
@end

@implementation CameraSensorController

- (void)setupWithInputs:(id)inputs responder:(id)responder
{
  [(CameraSensorController *)self setInputs:inputs, responder];

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
  alphaCamera = [(CameraSensorController *)self alphaCamera];

  if (alphaCamera)
  {
    alphaCamera2 = [(CameraSensorController *)self alphaCamera];
    [alphaCamera2 deactivate];
  }

  bravoCamera = [(CameraSensorController *)self bravoCamera];

  if (bravoCamera)
  {
    alphaCamera3 = [(CameraSensorController *)self alphaCamera];
    [alphaCamera3 deactivate];
  }

  [(CameraSensorController *)self restoreAttentionDetection];
}

- (void)runCameraTest
{
  v3 = MGGetBoolAnswer();
  v4 = MGGetBoolAnswer();
  [(CameraSensorController *)self setAlphaCamera:0];
  [(CameraSensorController *)self setBravoCamera:0];
  inputs = [(CameraSensorController *)self inputs];
  identifier = [inputs identifier];
  v7 = [identifier isEqualToString:@"Front"];

  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 2;
    goto LABEL_10;
  }

  inputs2 = [(CameraSensorController *)self inputs];
  identifier2 = [inputs2 identifier];
  v13 = [identifier2 isEqualToString:@"FrontSuperWide"];

  if (v13)
  {
    v8 = 0;
    v9 = 0;
    v10 = 5;
    goto LABEL_10;
  }

  inputs3 = [(CameraSensorController *)self inputs];
  identifier3 = [inputs3 identifier];
  v16 = [identifier3 isEqualToString:@"Rear"];

  if (v16)
  {
    v8 = 0;
    v9 = 0;
LABEL_7:
    v10 = 1;
    goto LABEL_10;
  }

  inputs4 = [(CameraSensorController *)self inputs];
  identifier4 = [inputs4 identifier];
  v19 = [identifier4 isEqualToString:@"RearTelephoto"] & v3;

  if (v19)
  {
    v8 = 0;
    v9 = 0;
    v10 = 3;
    goto LABEL_10;
  }

  inputs5 = [(CameraSensorController *)self inputs];
  identifier5 = [inputs5 identifier];
  v70 = [identifier5 isEqualToString:@"RearSynced"] & v3;

  if (v70)
  {
    v8 = 1;
    v9 = 3;
    goto LABEL_7;
  }

  inputs6 = [(CameraSensorController *)self inputs];
  identifier6 = [inputs6 identifier];
  v81 = [identifier6 isEqualToString:@"RearSuperWide"] & v4;

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

    alphaCamera = [(CameraSensorController *)self alphaCamera];

    if (alphaCamera)
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
      bravoCamera = [(CameraSensorController *)self bravoCamera];

      if (bravoCamera)
      {
        v22 = v26;
LABEL_14:
        [(CameraSensorController *)self setSoloFrameCount:0];
        [(CameraSensorController *)self setAlphaSyncFrameCount:0];
        [(CameraSensorController *)self setBravoSyncFrameCount:0];
        [(CameraSensorController *)self setStreamTime:0.0];
        alphaCamera2 = [(CameraSensorController *)self alphaCamera];
        v86 = v22;
        v29 = [(CameraSensorController *)self setCameraProperties:alphaCamera2 error:&v86];
        v30 = v86;

        if (!v29)
        {
          goto LABEL_28;
        }

        inputs7 = [(CameraSensorController *)self inputs];
        identifier7 = [inputs7 identifier];
        v33 = [identifier7 isEqualToString:@"RearSynced"];

        alphaCamera3 = [(CameraSensorController *)self alphaCamera];
        if (v33)
        {
          bravoCamera2 = [(CameraSensorController *)self bravoCamera];
          v85 = v30;
          v36 = [(CameraSensorController *)self syncAndStreamCameras:alphaCamera3 bravo:bravoCamera2 error:&v85];
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
          v39 = [(CameraSensorController *)self streamCamera:alphaCamera3 error:&v84];
          v37 = v84;

          v30 = v37;
          if (!v39)
          {
            goto LABEL_28;
          }
        }

        v40 = objc_alloc_init(NSMutableDictionary);
        exclavesStatus = [(CameraSensorController *)self exclavesStatus];

        if (exclavesStatus)
        {
          exclavesStatus2 = [(CameraSensorController *)self exclavesStatus];
          [v40 addEntriesFromDictionary:exclavesStatus2];
        }

        inputs8 = [(CameraSensorController *)self inputs];
        identifier8 = [inputs8 identifier];
        v45 = [identifier8 isEqualToString:@"RearSynced"];

        if (v45)
        {
          alphaSyncFrameCount = [(CameraSensorController *)self alphaSyncFrameCount];
          inputs9 = [(CameraSensorController *)self inputs];
          framesToSample = [inputs9 framesToSample];

          bravoSyncFrameCount = [(CameraSensorController *)self bravoSyncFrameCount];
          inputs10 = [(CameraSensorController *)self inputs];
          framesToSample2 = [inputs10 framesToSample];

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
          result = [(CameraSensorController *)self result];
          [result setData:v55];

          if (alphaSyncFrameCount >= framesToSample && bravoSyncFrameCount >= framesToSample2)
          {
            goto LABEL_25;
          }
        }

        else
        {
          soloFrameCount = [(CameraSensorController *)self soloFrameCount];
          inputs11 = [(CameraSensorController *)self inputs];
          framesToSample3 = [inputs11 framesToSample];

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
          result2 = [(CameraSensorController *)self result];
          [result2 setData:v77];

          if (soloFrameCount >= framesToSample3)
          {
LABEL_25:
            exclavesStatus3 = [(CameraSensorController *)self exclavesStatus];
            v58 = [DAExclavesSupport testResultOverrideForExclavesStatus:exclavesStatus3 originalResult:&off_1000111F8];
            result3 = [(CameraSensorController *)self result];
            [result3 setStatusCode:v58];

LABEL_37:
            return;
          }
        }

        exclavesStatus3 = [(CameraSensorController *)self result];
        [exclavesStatus3 setStatusCode:&off_100011210];
        goto LABEL_37;
      }

      v38 = &off_1000111E0;
      v22 = v26;
    }

    else
    {
      v38 = &off_1000111C8;
    }

    result4 = [(CameraSensorController *)self result];
    [result4 setStatusCode:v38];

    v30 = v22;
    goto LABEL_28;
  }

  result5 = [(CameraSensorController *)self result];
  [result5 setStatusCode:&off_1000111B0];
}

- (BOOL)setCameraProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  inputs = [(CameraSensorController *)self inputs];
  if ([inputs enableMaxDataRate])
  {
  }

  else
  {
    inputs2 = [(CameraSensorController *)self inputs];
    enableTestPatternPN9 = [inputs2 enableTestPatternPN9];

    if (!enableTestPatternPN9)
    {
      v14 = 1;
      goto LABEL_14;
    }
  }

  if ([propertiesCopy activate:error])
  {
    inputs3 = [(CameraSensorController *)self inputs];
    enableMaxDataRate = [inputs3 enableMaxDataRate];

    if (enableMaxDataRate && ![(CameraSensorController *)self enableCameraMaxDataRate:propertiesCopy error:error])
    {
      v14 = 0;
    }

    else
    {
      inputs4 = [(CameraSensorController *)self inputs];
      enableTestPatternPN92 = [inputs4 enableTestPatternPN9];

      if (enableTestPatternPN92)
      {
        v14 = [(CameraSensorController *)self enableCameraTestPatternPN9:propertiesCopy error:error];
      }

      else
      {
        v14 = 1;
      }
    }

    [propertiesCopy deactivate];
  }

  else
  {
    result = [(CameraSensorController *)self result];
    [result setStatusCode:&off_100011228];

    v14 = 0;
  }

LABEL_14:
  inputs5 = [(CameraSensorController *)self inputs];
  minimumFrameRate = [inputs5 minimumFrameRate];

  if (v14 && minimumFrameRate)
  {
    if ([propertiesCopy activate:error])
    {
      LOBYTE(v14) = [(CameraSensorController *)self setCameraMinimumFrameRate:propertiesCopy frameRate:minimumFrameRate error:error];
    }

    else
    {
      result2 = [(CameraSensorController *)self result];
      [result2 setStatusCode:&off_100011228];

      LOBYTE(v14) = 0;
    }
  }

  return v14;
}

- (BOOL)enableCameraMaxDataRate:(id)rate error:(id *)error
{
  rateCopy = rate;
  if (![rateCopy enableAgileClocking:0 error:error])
  {
    v9 = &off_100011240;
    goto LABEL_7;
  }

  v7 = [rateCopy useMaxAvailableDataRate:error];

  if (!v7)
  {
    v9 = &off_100011258;
    goto LABEL_7;
  }

  v8 = 1;
  if (([rateCopy enableAgileClocking:1 error:error] & 1) == 0)
  {
    v9 = &off_100011270;
LABEL_7:
    result = [(CameraSensorController *)self result];
    [result setStatusCode:v9];

    v8 = 0;
  }

  return v8;
}

- (BOOL)enableCameraTestPatternPN9:(id)n9 error:(id *)error
{
  v5 = [n9 enableTestPatternPN9:1 error:error];
  if ((v5 & 1) == 0)
  {
    result = [(CameraSensorController *)self result];
    [result setStatusCode:&off_100011288];
  }

  return v5;
}

- (BOOL)setCameraMinimumFrameRate:(id)rate frameRate:(id)frameRate error:(id *)error
{
  rateCopy = rate;
  frameRateCopy = frameRate;
  v10 = [rateCopy supportedFormats:error];
  v11 = v10;
  if (v10)
  {
    selfCopy = self;
    errorCopy = error;
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

        v18 = [*(*(&v38 + 1) + 8 * v17) objectForKeyedSubscript:{v16, selfCopy}];
        v19 = v18;
        if (v18)
        {
          intValue = [v18 intValue];
          if (intValue <= [frameRateCopy intValue])
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

      if ([rateCopy setMinimumFrameRate:frameRateCopy error:errorCopy])
      {
        v34 = 1;
        goto LABEL_19;
      }

      result = [(CameraSensorController *)selfCopy result];
      [result setStatusCode:&off_1000112A0];
    }

    else
    {
LABEL_11:

      result = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(result, OS_LOG_TYPE_ERROR))
      {
        sub_10000839C(frameRateCopy, result, v22, v23, v24, v25, v26, v27);
      }
    }
  }

  else
  {
    result = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(result, OS_LOG_TYPE_ERROR))
    {
      sub_100008408(error, result, v28, v29, v30, v31, v32, v33);
    }
  }

  v34 = 0;
LABEL_19:

  return v34;
}

- (BOOL)streamCamera:(id)camera error:(id *)error
{
  cameraCopy = camera;
  v7 = dispatch_group_create();
  if ([cameraCopy activate:error])
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000040B4;
    v21 = &unk_1000105A0;
    selfCopy = self;
    v8 = v7;
    v23 = v8;
    v9 = objc_retainBlock(&v18);
    [cameraCopy setFrameHandler:{v9, v18, v19, v20, v21, selfCopy}];
    v10 = [cameraCopy startStreamingWithOptions:0 error:error];
    if (v10)
    {
      result = +[NSDate date];
      dispatch_group_enter(v8);
      inputs = [(CameraSensorController *)self inputs];
      [inputs frameSampleTimeout];
      v14 = dispatch_time(0, (v13 * 1000000000.0));
      dispatch_group_wait(v8, v14);

      [cameraCopy stopStreaming:error];
      v15 = +[NSDate date];
      [v15 timeIntervalSinceDate:result];
      [(CameraSensorController *)self setStreamTime:?];
    }

    else
    {
      result = [(CameraSensorController *)self result];
      [result setStatusCode:&off_1000112B8];
    }

    [cameraCopy deactivate];
  }

  else
  {
    result2 = [(CameraSensorController *)self result];
    [result2 setStatusCode:&off_100011228];

    v10 = 0;
  }

  return v10;
}

- (BOOL)syncAndStreamCameras:(id)cameras bravo:(id)bravo error:(id *)error
{
  camerasCopy = cameras;
  bravoCopy = bravo;
  v10 = dispatch_group_create();
  if ([bravoCopy activate:error])
  {
    if (![camerasCopy activate:error])
    {
      result = [(CameraSensorController *)self result];
      [result setStatusCode:&off_100011228];

      v13 = 0;
LABEL_15:
      [bravoCopy deactivate];
      goto LABEL_16;
    }

    if (![OSDCameraCenter syncCameras:camerasCopy slave:bravoCopy skipSlaveFrames:1 enableSlaveOutput:1 error:error])
    {
      result2 = [(CameraSensorController *)self result];
      [result2 setStatusCode:&off_1000112E8];

      v13 = 0;
LABEL_14:
      [camerasCopy deactivate];
      goto LABEL_15;
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000044A0;
    v31[3] = &unk_1000105A0;
    v31[4] = self;
    v11 = v10;
    v32 = v11;
    [camerasCopy setFrameHandler:v31];
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100004574;
    v28 = &unk_1000105A0;
    selfCopy = self;
    v12 = v11;
    v30 = v12;
    [bravoCopy setFrameHandler:&v25];
    if ([camerasCopy startStreamingWithOptions:0 error:{error, v25, v26, v27, v28, selfCopy}])
    {
      if ([bravoCopy startStreamingWithOptions:0 error:error])
      {
        v13 = 1;
LABEL_13:
        v19 = +[NSDate date];
        dispatch_group_enter(v12);
        dispatch_group_enter(v12);
        inputs = [(CameraSensorController *)self inputs];
        [inputs frameSampleTimeout];
        v22 = dispatch_time(0, (v21 * 1000000000.0));
        dispatch_group_wait(v12, v22);

        [bravoCopy stopStreaming:error];
        [camerasCopy stopStreaming:error];
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

    result3 = [(CameraSensorController *)self result];
    [result3 setStatusCode:v17];

    v13 = 0;
    goto LABEL_13;
  }

  result4 = [(CameraSensorController *)self result];
  [result4 setStatusCode:&off_1000112D0];

  [camerasCopy deactivate];
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
  attentionDetectionSetting = [(CameraSensorController *)self attentionDetectionSetting];

  __AXSSetAttentionAwarenessFeaturesEnabled(attentionDetectionSetting);
}

@end