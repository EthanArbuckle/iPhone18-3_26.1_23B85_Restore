@interface ARSessionMetrics
+ (id)getRenderEngineString:(id)string;
+ (void)recordAltitudeLookupAttemptWithDuration:(double)duration andResult:(id)result;
+ (void)recordHitTest:(unint64_t)test;
+ (void)recordReplayMetrics:(id)metrics;
+ (void)setRenderType:(unint64_t)type;
- (ARSessionMetrics)init;
- (ARSessionMetrics)initWithReporter:(id)reporter;
- (void)_processFrameProperties:(id)properties;
- (void)_recordBadFramePercentageFinal:(BOOL)final;
- (void)_recordSessionEnd;
- (void)recordCoachingOverlayUsage:(int)usage;
- (void)recordHiResFrameCapture;
- (void)recordRaycast:(id)raycast tracked:(BOOL)tracked;
- (void)recordSaveMap:(int64_t)map numberOfFeaturePoints:(unint64_t)points;
- (void)recordTrueNorthUnavailable;
- (void)reportSessionFailure:(id)failure;
- (void)sessionDidUpdateFrame:(id)frame;
- (void)sessionStarted:(id)started withConfiguration:(id)configuration;
- (void)sessionStopped;
- (void)sessionUpdateThermalState:(int64_t)state;
@end

@implementation ARSessionMetrics

- (ARSessionMetrics)init
{
  v3 = objc_opt_new();
  v4 = [(ARSessionMetrics *)self initWithReporter:v3];

  return v4;
}

- (ARSessionMetrics)initWithReporter:(id)reporter
{
  reporterCopy = reporter;
  v10.receiver = self;
  v10.super_class = ARSessionMetrics;
  v6 = [(ARSessionMetrics *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reporter, reporter);
    v7->_sessionWasThrottled = 0;
    s_isSessionStopped = 1;
    v8 = s_replayStats;
    s_replayStats = 0;

    v7->_sessionDidFailWithError = 0;
    v7->_coachingOverlayGoal = 0;
    v7->_coachingOverlayActivationCount = 0;
  }

  return v7;
}

+ (void)setRenderType:(unint64_t)type
{
  v3 = s_reportedRendererString;
  if (type - 1 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E817E6D0[type - 1];
  }

  s_reportedRendererString = v4;
}

+ (void)recordHitTest:(unint64_t)test
{
  v4 = reportingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__ARSessionMetrics_recordHitTest___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = test;
  dispatch_async(v4, block);
}

void __34__ARSessionMetrics_recordHitTest___block_invoke(uint64_t a1)
{
  if ((s_isSessionStopped & 1) == 0)
  {
    v3 = hitTestReportingMap();
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
    }

    else
    {
      v6 = &unk_1F4258CC8;
    }

    v8 = v6;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
    [v3 setObject:v8 forKey:v7];
  }
}

+ (void)recordReplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  v4 = reportingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__ARSessionMetrics_recordReplayMetrics___block_invoke;
  block[3] = &unk_1E817BFE8;
  v7 = metricsCopy;
  v5 = metricsCopy;
  dispatch_async(v4, block);
}

+ (void)recordAltitudeLookupAttemptWithDuration:(double)duration andResult:(id)result
{
  resultCopy = result;
  v6 = reportingQueue();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__ARSessionMetrics_recordAltitudeLookupAttemptWithDuration_andResult___block_invoke;
  v8[3] = &unk_1E817BDD8;
  durationCopy = duration;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(v6, v8);
}

void __70__ARSessionMetrics_recordAltitudeLookupAttemptWithDuration_andResult___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  AnalyticsSendEventLazy();
}

id __70__ARSessionMetrics_recordAltitudeLookupAttemptWithDuration_andResult___block_invoke_2(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"duration";
  v2 = *(a1 + 40);
  *&v2 = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v9[0] = v3;
  v8[1] = @"bundleID";
  v4 = bundleID();
  v8[2] = @"result";
  v5 = *(a1 + 32);
  v9[1] = v4;
  v9[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (void)recordTrueNorthUnavailable
{
  v3 = reportingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__ARSessionMetrics_recordTrueNorthUnavailable__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __46__ARSessionMetrics_recordTrueNorthUnavailable__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 241) = 1;
  v2 = _ARLogSession_1();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: True North was not available during the session - as reported by CoreMotion", &v6, 0x16u);
  }
}

+ (id)getRenderEngineString:(id)string
{
  stringCopy = string;
  isKindOfClass = NSClassFromString(&cfstr_Fapplearkitses.isa);
  v5 = NSClassFromString(&cfstr_Unityarsession.isa);
  v6 = NSVersionOfRunTimeLibrary("RealityKit");
  if (isKindOfClass)
  {
    delegate = [stringCopy delegate];
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = @"Unreal";
      goto LABEL_14;
    }
  }

  if (v5)
  {
    isKindOfClass = [stringCopy delegate];
    if (objc_opt_isKindOfClass())
    {

LABEL_10:
      v8 = @"Unity3d";
      goto LABEL_14;
    }
  }

  v9 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.unity3d.framework"];

  if (v5)
  {
  }

  if (v9)
  {
    goto LABEL_10;
  }

  if (v6 == -1)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = @"RealityKit";
  }

LABEL_14:

  return v8;
}

- (void)sessionStarted:(id)started withConfiguration:(id)configuration
{
  startedCopy = started;
  configurationCopy = configuration;
  v8 = reportingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ARSessionMetrics_sessionStarted_withConfiguration___block_invoke;
  block[3] = &unk_1E817E538;
  block[4] = self;
  v12 = configurationCopy;
  v13 = startedCopy;
  v9 = startedCopy;
  v10 = configurationCopy;
  dispatch_async(v8, block);
}

void __53__ARSessionMetrics_sessionStarted_withConfiguration___block_invoke(id *a1)
{
  s_isSessionStopped = 0;
  *(a1[4] + 202) = 0;
  v2 = *(a1[4] + 7);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = v4;
  if (v2)
  {
    v6 = v3 == v4;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (!v2)
    {
      [*(a1[4] + 1) postDarwinNotification:@"com.apple.arkit.session.run"];
    }
  }

  else
  {
    [a1[4] _recordSessionEnd];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ARSessionMetrics_sessionStarted_withConfiguration___block_invoke_2;
  block[3] = &unk_1E817BFE8;
  v23 = a1[6];
  if (s_rendererString_block_invoke_onceToken != -1)
  {
    dispatch_once(&s_rendererString_block_invoke_onceToken, block);
  }

  if ([a1[5] isKindOfConfiguration:objc_opt_class()])
  {
    v7 = [a1[5] getAsKindOfConfiguration:objc_opt_class()];
    v8 = [v7 initialWorldMap];
    v9 = v8 != 0;

    v10 = a1[4];
    if (*(v10 + 200) != v9)
    {
      if (*(v10 + 200))
      {
        v11 = v10[1];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __53__ARSessionMetrics_sessionStarted_withConfiguration___block_invoke_3;
        v21[3] = &unk_1E817E510;
        v21[4] = v10;
        [v11 sendEvent:@"com.apple.arkit.ARWorldMap.loading" dictionary:v21];
        v10 = a1[4];
      }

      *(v10 + 200) = v9;
    }
  }

  if (v3 != v5)
  {
    *(a1[4] + 5) = objc_opt_class();
    v12 = [a1[5] copy];
    v13 = a1[4];
    v14 = v13[6];
    v13[6] = v12;

    v15 = [MEMORY[0x1E695DF00] date];
    v16 = a1[4];
    v17 = v16[7];
    v16[7] = v15;

    objc_storeStrong(a1[4] + 8, *(a1[4] + 7));
    *(a1[4] + 9) = 0;
    *(a1[4] + 11) = 0;
    *(a1[4] + 12) = 0;
    *(a1[4] + 112) = 0;
    *(a1[4] + 26) = 0;
    *(a1[4] + 27) = 0;
    *(a1[4] + 240) = 0;
    *(a1[4] + 241) = 0;
    *(a1[4] + 33) = 0;
    *(a1[4] + 34) = 0;
    *(a1[4] + 35) = 0;
    *(a1[4] + 37) = 0;
    *(a1[4] + 31) = 0;
    *(a1[4] + 32) = 0;
    *(a1[4] + 38) = 0;
    *(a1[4] + 39) = 0;
    *(a1[4] + 40) = 0;
    *(a1[4] + 41) = 0;
    *(a1[4] + 42) = 0;
    *(a1[4] + 43) = 0;
    *(a1[4] + 44) = 0;
    *(a1[4] + 45) = 0;
    *(a1[4] + 46) = 0;
    *(a1[4] + 47) = 0;
    *(a1[4] + 48) = 0;
    *(a1[4] + 49) = 0;
    *(a1[4] + 50) = 0;
    *(a1[4] + 51) = 0;
    v18 = hitTestReportingMap();
    [v18 removeAllObjects];
    *(a1[4] + 16) = 1;
    if (objc_opt_respondsToSelector())
    {
      *(a1[4] + 16) = [a1[5] performSelector:sel_isAutoFocusEnabled] != 0;
    }

    if ([a1[5] isKindOfConfiguration:objc_opt_class()])
    {
      v19 = [a1[5] getAsKindOfConfiguration:objc_opt_class()];
      v20 = [v19 initialWorldMap];
      *(a1[4] + 200) = v20 != 0;
    }
  }
}

void __53__ARSessionMetrics_sessionStarted_withConfiguration___block_invoke_2(uint64_t a1)
{
  if (!s_reportedRendererString)
  {
    v3 = [ARSessionMetrics getRenderEngineString:*(a1 + 32), v1];
    v4 = s_rendererString;
    s_rendererString = v3;
  }
}

id __53__ARSessionMetrics_sessionStarted_withConfiguration___block_invoke_3(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E695E110];
  v7[0] = @"success";
  v7[1] = @"duration";
  v1 = MEMORY[0x1E696AD98];
  [*(*(a1 + 32) + 56) timeIntervalSinceNow];
  *&v2 = v2;
  *&v2 = -*&v2;
  v3 = [v1 numberWithFloat:v2];
  v8[1] = v3;
  v7[2] = @"bundleID";
  v4 = bundleID();
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (void)sessionDidUpdateFrame:(id)frame
{
  frameCopy = frame;
  v5 = [[ARSessionMetricsFrameProperties alloc] initWithFrame:frameCopy];

  [(ARSessionMetrics *)self _processFrameProperties:v5];
}

- (void)_processFrameProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = reportingQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__ARSessionMetrics__processFrameProperties___block_invoke;
  v7[3] = &unk_1E817BEC8;
  v7[4] = self;
  v8 = propertiesCopy;
  v6 = propertiesCopy;
  dispatch_async(v5, v7);
}

void __44__ARSessionMetrics__processFrameProperties___block_invoke(uint64_t a1)
{
  v178 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 56))
  {
    v3 = [*(a1 + 40) anchors];
    v4 = *(a1 + 32);
    v5 = *(v4 + 160);
    *(v4 + 160) = v3;

    v6 = [*(a1 + 40) location];
    v7 = *(a1 + 32);
    v8 = *(v7 + 168);
    *(v7 + 168) = v6;

    v9 = [*(a1 + 40) camera];
    if (([*(*(a1 + 32) + 48) isKindOfConfiguration:objc_opt_class()] & 1) != 0 || objc_msgSend(*(*v1 + 6), "isKindOfConfiguration:", objc_opt_class()))
    {
      if (![v9 trackingState] || objc_msgSend(v9, "trackingState") == 1 && objc_msgSend(v9, "trackingStateReason") == 1)
      {
        *(*v1 + 80) = 1;
        *(*v1 + 201) = 1;
LABEL_146:

        return;
      }

      v10 = *v1;
      if (*(*v1 + 80) == 1)
      {
        v10[80] = 0;
        [*(*v1 + 7) timeIntervalSinceNow];
        *(*v1 + 13) = -v11;
        v12 = _ARLogSession_1();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          v15 = *v1;
          v16 = *(*v1 + 13);
          *buf = 138543874;
          v169 = v14;
          v170 = 2048;
          v171 = v15;
          v172 = 2048;
          v173 = v16;
          _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: It took %f seconds to initialize vio", buf, 0x20u);
        }

        v17 = [MEMORY[0x1E695DF00] date];
        v18 = *(*v1 + 8);
        *(*v1 + 8) = v17;

        v10 = *v1;
      }

      if (v10[200] == 1)
      {
        if ([v9 trackingState] == 1 && objc_msgSend(v9, "trackingStateReason") == 4)
        {
          *(*v1 + 201) = 1;
        }

        else if ([v9 trackingState] == 2 && *(*v1 + 201) == 1)
        {
          *(*v1 + 201) = 0;
          v36 = *v1;
          v37 = *(*v1 + 1);
          v167[0] = MEMORY[0x1E69E9820];
          v167[1] = 3221225472;
          v167[2] = __44__ARSessionMetrics__processFrameProperties___block_invoke_449;
          v167[3] = &unk_1E817E510;
          v167[4] = v36;
          [v37 sendEvent:@"com.apple.arkit.ARWorldMap.loading" dictionary:v167];
        }
      }

      [v9 transform];
      v39 = *v1;
      if ((*(*v1 + 112) & 1) == 0)
      {
        v39[8] = v38;
        *(*v1 + 9) = v38;
        *(*v1 + 112) = 1;
        v39 = *v1;
      }

      v40 = v39[8];
      if ((vmovn_s32(vcgtq_f32(v38, v40)).u8[0] & 1) == 0)
      {
        v40.f32[0] = v38.f32[0];
      }

      v39[8].i32[0] = v40.i32[0];
      v41 = *(*v1 + 33);
      if (v41 >= v38.f32[1])
      {
        v41 = v38.f32[1];
      }

      *(*v1 + 33) = v41;
      v42 = *(*v1 + 34);
      if (v42 >= v38.f32[2])
      {
        v42 = v38.f32[2];
      }

      *(*v1 + 34) = v42;
      v43 = *(*v1 + 9);
      if (vmovn_s32(vcgtq_f32(v38, v43)).u8[0])
      {
        v43.f32[0] = v38.f32[0];
      }

      *(*v1 + 36) = v43.i32[0];
      v44 = *(*v1 + 37);
      if (v44 < v38.f32[1])
      {
        v44 = v38.f32[1];
      }

      *(*v1 + 37) = v44;
      v45 = *(*v1 + 38);
      if (v45 < v38.f32[2])
      {
        v45 = v38.f32[2];
      }

      *(*v1 + 38) = v45;
    }

    else if ([*(*v1 + 6) isKindOfConfiguration:objc_opt_class()])
    {
      v19 = [*(a1 + 40) geoTrackingStatus];
      v20 = v19;
      if (v19)
      {
        if (*(*v1 + 31) == 0.0 && [v19 state] != 1 && objc_msgSend(v20, "state"))
        {
          [*(*v1 + 7) timeIntervalSinceNow];
          *(*v1 + 31) = -v21;
          v22 = _ARLogSession_1();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            v25 = *v1;
            v26 = *(*v1 + 31);
            *buf = 138543874;
            v169 = v24;
            v170 = 2048;
            v171 = v25;
            v172 = 2048;
            v173 = v26;
            _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Attempting to localize geo tracking after %f seconds", buf, 0x20u);
          }
        }

        v27 = [v20 state];
        v28 = *v1;
        if (v27 == 3)
        {
          if ((v28[240] & 1) == 0)
          {
            v28[240] = 1;
            ++*(*v1 + 36);
            if (*(*v1 + 32) == 0.0)
            {
              [*(*v1 + 7) timeIntervalSinceNow];
              *(*v1 + 32) = -v29;
              v30 = _ARLogSession_1();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                v31 = objc_opt_class();
                v32 = NSStringFromClass(v31);
                v33 = *v1;
                v34 = *(*v1 + 32);
                *buf = 138543874;
                v169 = v32;
                v170 = 2048;
                v171 = v33;
                v172 = 2048;
                v173 = v34;
                _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Geo tracking successful localized after %f seconds", buf, 0x20u);
              }
            }
          }

          v35 = [v20 accuracy];
          switch(v35)
          {
            case 3:
              ++*(*v1 + 35);
              break;
            case 2:
              ++*(*v1 + 34);
              break;
            case 1:
              ++*(*v1 + 33);
              break;
          }
        }

        else
        {
          v28[240] = 0;
        }

        if ([v20 state] == 2 || objc_msgSend(v20, "state") == 1)
        {
          *(*v1 + 37) |= [v20 failureReasons];
        }

        else
        {
          *(*v1 + 37) = [v20 failureReasons];
        }

        v46 = [*(a1 + 40) location];
        v47 = v46;
        if (*(*(a1 + 32) + 304) == 0.0)
        {
          [v46 horizontalAccuracy];
          v49 = v48;
          [MEMORY[0x1E69E0300] maximumHorizontalAccuracyThreshold];
          if (v49 < v50 && [v47 type] == 1)
          {
            [*(*v1 + 7) timeIntervalSinceNow];
            *(*v1 + 38) = -v51;
            v52 = _ARLogSession_1();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              v53 = objc_opt_class();
              v54 = NSStringFromClass(v53);
              v55 = *v1;
              v56 = *(*v1 + 38);
              *buf = 138543874;
              v169 = v54;
              v170 = 2048;
              v171 = v55;
              v172 = 2048;
              v173 = v56;
              _os_log_impl(&dword_1C241C000, v52, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CL first GPS %f seconds", buf, 0x20u);
            }
          }
        }

        if (*(*v1 + 39) == 0.0)
        {
          [v47 horizontalAccuracy];
          v58 = v57;
          [MEMORY[0x1E69E0300] maximumHorizontalAccuracyThreshold];
          if (v58 < v59 && [v47 type] != 6 && objc_msgSend(v47, "type") != 10)
          {
            [*(*v1 + 7) timeIntervalSinceNow];
            *(*v1 + 39) = -v60;
            v61 = _ARLogSession_1();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
            {
              v62 = objc_opt_class();
              v63 = NSStringFromClass(v62);
              v64 = *v1;
              v65 = *(*v1 + 39);
              v66 = [v47 type];
              *buf = 138544130;
              v169 = v63;
              v170 = 2048;
              v171 = v64;
              v172 = 2048;
              v173 = v65;
              v174 = 1024;
              LODWORD(v175) = v66;
              _os_log_impl(&dword_1C241C000, v61, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CL first non-GPS %f seconds, type %i", buf, 0x26u);
            }
          }
        }

        if (*(*v1 + 40) == 0.0 && [ARLocationData isAltitudeValid:v47])
        {
          [*(*v1 + 7) timeIntervalSinceNow];
          *(*v1 + 40) = -v67;
          v68 = _ARLogSession_1();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
          {
            v69 = objc_opt_class();
            v70 = NSStringFromClass(v69);
            v71 = *v1;
            v72 = *(*v1 + 40);
            *buf = 138543874;
            v169 = v70;
            v170 = 2048;
            v171 = v71;
            v172 = 2048;
            v173 = v72;
            _os_log_impl(&dword_1C241C000, v68, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CL first DEM value %f seconds", buf, 0x20u);
          }
        }

        [v9 transform];
        v74 = acosf(-v73) * 0.318309886 * 180.0;
        *&v74 = v74;
        v75 = [ARGeoTrackingTechnique isCameraUp:v74];
        v76 = v75;
        v77 = *v1;
        v78 = *(*v1 + 41);
        if (v78 == 0.0 && v75)
        {
          [v77[7] timeIntervalSinceNow];
          *(*v1 + 41) = -v79;
          v80 = _ARLogSession_1();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
          {
            v81 = objc_opt_class();
            v82 = NSStringFromClass(v81);
            v83 = *v1;
            v84 = *(*v1 + 41);
            *buf = 138543874;
            v169 = v82;
            v170 = 2048;
            v171 = v83;
            v172 = 2048;
            v173 = v84;
            _os_log_impl(&dword_1C241C000, v80, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Camera first up %f seconds", buf, 0x20u);
          }

          v77 = *v1;
          v78 = *(*v1 + 41);
        }

        if (v78 > 0.0)
        {
          [v77[7] timeIntervalSinceNow];
          v86 = *(*v1 + 42) != 0.0;
          if (-v85 - *(*v1 + 41) <= 1.0)
          {
            v86 = 1;
          }

          if (!v86 && !v76)
          {
            [*(*v1 + 7) timeIntervalSinceNow];
            *(*v1 + 42) = -v87;
            v88 = _ARLogSession_1();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
            {
              v89 = objc_opt_class();
              v90 = NSStringFromClass(v89);
              v91 = *v1;
              v92 = *(*v1 + 42);
              *buf = 138543874;
              v169 = v90;
              v170 = 2048;
              v171 = v91;
              v172 = 2048;
              v173 = v92;
              _os_log_impl(&dword_1C241C000, v88, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Camera down again %f seconds", buf, 0x20u);
            }
          }
        }

        v93 = [*(a1 + 40) vlState];
        v94 = [v93 hasStartedAvailabilityCheck];
        v95 = *(a1 + 32);
        if (*(v95 + 344) == 0.0 && v94)
        {
          [*(v95 + 56) timeIntervalSinceNow];
          *(*v1 + 43) = -v96;
          v97 = _ARLogSession_1();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_DEBUG))
          {
            v98 = objc_opt_class();
            v99 = NSStringFromClass(v98);
            v100 = *v1;
            v101 = *(*v1 + 43);
            *buf = 138543874;
            v169 = v99;
            v170 = 2048;
            v171 = v100;
            v172 = 2048;
            v173 = v101;
            _os_log_impl(&dword_1C241C000, v97, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Called VL available started %f seconds", buf, 0x20u);
          }
        }

        v102 = [v93 hasReturnedAvailabilityCheck];
        if (*(*v1 + 44) == 0.0 && v102)
        {
          [*(*v1 + 7) timeIntervalSinceNow];
          *(*v1 + 44) = -v103;
          v104 = _ARLogSession_1();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
          {
            v105 = objc_opt_class();
            v106 = NSStringFromClass(v105);
            v107 = *v1;
            v108 = *(*v1 + 43);
            *buf = 138543874;
            v169 = v106;
            v170 = 2048;
            v171 = v107;
            v172 = 2048;
            v173 = v108;
            _os_log_impl(&dword_1C241C000, v104, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Called VL available returned %f seconds", buf, 0x20u);
          }
        }

        v109 = [v93 hasStartedLocalization];
        if (*(*v1 + 45) == 0.0 && v109)
        {
          [*(*v1 + 7) timeIntervalSinceNow];
          *(*v1 + 45) = -v110;
          v111 = _ARLogSession_1();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
          {
            v112 = objc_opt_class();
            v113 = NSStringFromClass(v112);
            v114 = *v1;
            v115 = *(*v1 + 45);
            *buf = 138543874;
            v169 = v113;
            v170 = 2048;
            v171 = v114;
            v172 = 2048;
            v173 = v115;
            _os_log_impl(&dword_1C241C000, v111, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Called VL localization started %f seconds", buf, 0x20u);
          }
        }

        v116 = [v93 hasReturnedLocalization];
        if (*(*v1 + 46) == 0.0 && v116)
        {
          [*(*v1 + 7) timeIntervalSinceNow];
          *(*v1 + 46) = -v117;
          v118 = _ARLogSession_1();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
          {
            v119 = objc_opt_class();
            v120 = NSStringFromClass(v119);
            v121 = *v1;
            v122 = *(*v1 + 46);
            *buf = 138543874;
            v169 = v120;
            v170 = 2048;
            v171 = v121;
            v172 = 2048;
            v173 = v122;
            _os_log_impl(&dword_1C241C000, v118, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Called VL localization returned %f seconds", buf, 0x20u);
          }
        }

        v123 = [v20 failureReasons];
        if (*(*v1 + 47) == 0.0 && (v123 & 0x10) != 0)
        {
          [*(*v1 + 7) timeIntervalSinceNow];
          *(*v1 + 47) = -v124;
          v125 = _ARLogSession_1();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
          {
            v126 = objc_opt_class();
            v127 = NSStringFromClass(v126);
            v128 = *v1;
            v129 = *(*v1 + 47);
            *buf = 138543874;
            v169 = v127;
            v170 = 2048;
            v171 = v128;
            v172 = 2048;
            v173 = v129;
            _os_log_impl(&dword_1C241C000, v125, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VL failed to localize after %f seconds", buf, 0x20u);
          }
        }

        v130 = [v9 trackingState] != 2 && objc_msgSend(v9, "trackingState") != 1;
        if (*(*v1 + 48) == 0.0 && !v130)
        {
          [*(*v1 + 7) timeIntervalSinceNow];
          *(*v1 + 48) = -v131;
          v132 = _ARLogSession_1();
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEBUG))
          {
            v133 = objc_opt_class();
            v134 = NSStringFromClass(v133);
            v135 = *v1;
            v136 = *(*v1 + 48);
            *buf = 138543874;
            v169 = v134;
            v170 = 2048;
            v171 = v135;
            v172 = 2048;
            v173 = v136;
            _os_log_impl(&dword_1C241C000, v132, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VIO first pose after %f seconds", buf, 0x20u);
          }
        }

        v137 = [v9 trackingState];
        v138 = v137;
        v139 = *v1;
        v140 = *(*v1 + 49);
        if (v140 == 0.0 && v137 == 2)
        {
          [v139[7] timeIntervalSinceNow];
          *(*v1 + 49) = -v141;
          v142 = _ARLogSession_1();
          if (os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
          {
            v143 = objc_opt_class();
            v144 = NSStringFromClass(v143);
            v145 = *v1;
            v146 = *(*v1 + 49);
            *buf = 138543874;
            v169 = v144;
            v170 = 2048;
            v171 = v145;
            v172 = 2048;
            v173 = v146;
            _os_log_impl(&dword_1C241C000, v142, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VIO first normal pose after %f seconds", buf, 0x20u);
          }

          v139 = *v1;
          v140 = *(*v1 + 49);
        }

        if (v140 > 0.0)
        {
          [v139[7] timeIntervalSinceNow];
          v148 = *v1;
          if (*(*v1 + 50) == 0.0 && -v147 - *(v148 + 49) > 1.0 && v138 != 2)
          {
            [v148[7] timeIntervalSinceNow];
            *(*v1 + 50) = -v149;
            v150 = _ARLogSession_1();
            if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
            {
              v151 = objc_opt_class();
              v152 = NSStringFromClass(v151);
              v153 = *v1;
              v154 = *(*v1 + 50);
              *buf = 138543874;
              v169 = v152;
              v170 = 2048;
              v171 = v153;
              v172 = 2048;
              v173 = v154;
              _os_log_impl(&dword_1C241C000, v150, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VIO not normal after %f seconds", buf, 0x20u);
            }
          }
        }

        [v9 imageResolution];
        v156 = v155;
        [v9 imageResolution];
        if (*(*v1 + 51) == 0.0)
        {
          v158 = v157;
          if (v156 * v157 > 0.0)
          {
            [*(*v1 + 7) timeIntervalSinceNow];
            *(*v1 + 51) = -v159;
            v160 = _ARLogSession_1();
            if (os_log_type_enabled(v160, OS_LOG_TYPE_DEBUG))
            {
              v161 = objc_opt_class();
              v162 = NSStringFromClass(v161);
              v163 = *v1;
              v164 = *(*v1 + 51);
              *buf = 138544386;
              v169 = v162;
              v170 = 2048;
              v171 = v163;
              v172 = 2048;
              v173 = v164;
              v174 = 2048;
              v175 = v156;
              v176 = 2048;
              v177 = v158;
              _os_log_impl(&dword_1C241C000, v160, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: first image after %f seconds (%f x %f)", buf, 0x34u);
            }
          }
        }
      }
    }

    v165 = [*(a1 + 40) worldTrackingState];
    v166 = v165;
    if (v165)
    {
      *(*v1 + 22) = [v165 currentVIOMapSize];
      *(*v1 + 23) = [v166 numberOfCameraSwitches];
      *(*v1 + 24) = [v166 reinitializationAttempts];
    }

    ++*(*v1 + 11);
    if ([v9 trackingState] != 2)
    {
      ++*(*v1 + 12);
    }

    if ([*(*v1 + 6) isKindOfConfiguration:objc_opt_class()])
    {
      [*v1 _recordBadFramePercentageFinal:0];
    }

    goto LABEL_146;
  }
}

id __44__ARSessionMetrics__processFrameProperties___block_invoke_449(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v8[0] = MEMORY[0x1E695E118];
  v7[0] = @"success";
  v7[1] = @"duration";
  v1 = MEMORY[0x1E696AD98];
  [*(*(a1 + 32) + 56) timeIntervalSinceNow];
  *&v2 = v2;
  *&v2 = -*&v2;
  v3 = [v1 numberWithFloat:v2];
  v8[1] = v3;
  v7[2] = @"bundleID";
  v4 = bundleID();
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (void)sessionUpdateThermalState:(int64_t)state
{
  if (state >= 2 && !self->_sessionWasThrottled)
  {
    startDate = self->_startDate;
    if (startDate)
    {
      [(NSDate *)startDate timeIntervalSinceNow];
      *&v5 = v5;
      v6 = -*&v5;
    }

    else
    {
      v6 = 0.0;
    }

    self->_timeUntilThrottling = v6;
    self->_sessionWasThrottled = 1;
  }
}

- (void)recordSaveMap:(int64_t)map numberOfFeaturePoints:(unint64_t)points
{
  v7 = reportingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__ARSessionMetrics_recordSaveMap_numberOfFeaturePoints___block_invoke;
  block[3] = &unk_1E817C010;
  block[4] = self;
  block[5] = map;
  block[6] = points;
  dispatch_async(v7, block);
}

uint64_t __56__ARSessionMetrics_recordSaveMap_numberOfFeaturePoints___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__ARSessionMetrics_recordSaveMap_numberOfFeaturePoints___block_invoke_2;
  v3[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  v4 = *(a1 + 40);
  return [v1 sendEvent:@"com.apple.arkit.ARWorldMap.saving" dictionary:v3];
}

id __56__ARSessionMetrics_recordSaveMap_numberOfFeaturePoints___block_invoke_2(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"mappingStatus";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v8[0] = v2;
  v7[1] = @"numberOfFeaturePoints";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  v8[1] = v3;
  v7[2] = @"bundleID";
  v4 = bundleID();
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (void)recordRaycast:(id)raycast tracked:(BOOL)tracked
{
  raycastCopy = raycast;
  v7 = reportingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__ARSessionMetrics_recordRaycast_tracked___block_invoke;
  block[3] = &unk_1E817CD90;
  block[4] = self;
  v10 = raycastCopy;
  trackedCopy = tracked;
  v8 = raycastCopy;
  dispatch_async(v7, block);
}

void __42__ARSessionMetrics_recordRaycast_tracked___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__ARSessionMetrics_recordRaycast_tracked___block_invoke_2;
  v3[3] = &unk_1E817E580;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 sendEvent:@"com.apple.arkit.ARRaycast" dictionary:v3];
  ++*(*(a1 + 32) + 208);
}

id __42__ARSessionMetrics_recordRaycast_tracked___block_invoke_2(uint64_t a1)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"target";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "target")}];
  v9[0] = v2;
  v8[1] = @"alignment";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "targetAlignment")}];
  v9[1] = v3;
  v8[2] = @"isTracked";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v9[2] = v4;
  v8[3] = @"bundleID";
  v5 = bundleID();
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (void)recordHiResFrameCapture
{
  v3 = reportingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__ARSessionMetrics_recordHiResFrameCapture__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)recordCoachingOverlayUsage:(int)usage
{
  v5 = reportingQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__ARSessionMetrics_recordCoachingOverlayUsage___block_invoke;
  v6[3] = &unk_1E817E5A8;
  v6[4] = self;
  usageCopy = usage;
  dispatch_async(v5, v6);
}

uint64_t __47__ARSessionMetrics_recordCoachingOverlayUsage___block_invoke(uint64_t result)
{
  *(*(result + 32) + 224) = *(result + 40);
  ++*(*(result + 32) + 232);
  return result;
}

- (void)reportSessionFailure:(id)failure
{
  failureCopy = failure;
  v5 = reportingQueue();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__ARSessionMetrics_reportSessionFailure___block_invoke;
  v7[3] = &unk_1E817BEC8;
  v7[4] = self;
  v8 = failureCopy;
  v6 = failureCopy;
  dispatch_async(v5, v7);
}

void __41__ARSessionMetrics_reportSessionFailure___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 202) = 1;
  v2 = [*(a1 + 40) userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  [*(*(a1 + 32) + 56) timeIntervalSinceNow];
  v5 = -v4;
  v6 = *(*(a1 + 32) + 8);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__ARSessionMetrics_reportSessionFailure___block_invoke_2;
  v8[3] = &unk_1E817E5D0;
  v9 = *(a1 + 40);
  v10 = v3;
  v11 = v5;
  v7 = v3;
  [v6 sendEvent:@"com.apple.arkit.ARSessionError" dictionary:v8];
}

id __41__ARSessionMetrics_reportSessionFailure___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v12[0] = @"errorCode";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v16 = v3;
  v12[1] = @"underlyingErrorCode";
  v4 = *(a1 + 40);
  if (v4)
  {
    v1 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
    v5 = *(a1 + 40);
    v17 = v1;
    v13 = @"underlyingErrorDomain";
    if (v5)
    {
      v6 = [v5 domain];
      v7 = 0;
    }

    else
    {
      v6 = &stru_1F4208A80;
      v7 = 1;
    }
  }

  else
  {
    v17 = &unk_1F4258CE0;
    v13 = @"underlyingErrorDomain";
    v6 = &stru_1F4208A80;
    v7 = 1;
  }

  v18 = v6;
  v14 = @"duration";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v19 = v8;
  v15 = @"bundleID";
  v9 = bundleID();
  v20 = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:v12 count:5];

  if ((v7 & 1) == 0)
  {
  }

  if (v4)
  {
  }

  return v10;
}

- (void)sessionStopped
{
  v3 = reportingQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__ARSessionMetrics_sessionStopped__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __34__ARSessionMetrics_sessionStopped__block_invoke(uint64_t a1)
{
  s_isSessionStopped = 1;
  result = *(a1 + 32);
  if (*(result + 56) && (*(result + 202) & 1) == 0)
  {
    [result _recordSessionEnd];
    v3 = *(*(a1 + 32) + 8);

    return [v3 postDarwinNotification:@"com.apple.arkit.session.pause"];
  }

  return result;
}

- (void)_recordSessionEnd
{
  selfCopy = self;
  v149 = *MEMORY[0x1E69E9840];
  [(NSDate *)self->_startDate timeIntervalSinceNow];
  v4 = -v3;
  v5 = _ARLogSession_1();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543874;
    v144 = v7;
    v145 = 2048;
    v146 = selfCopy;
    v147 = 2048;
    v148 = v4;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ARSession duration seconds: %f", buf, 0x20u);
  }

  startDate = selfCopy->_startDate;
  selfCopy->_startDate = 0;

  v9 = &off_1C25C8000;
  if ([(ARConfiguration *)selfCopy->_currentConfiguration isKindOfConfiguration:objc_opt_class()]&& ![(ARConfiguration *)selfCopy->_currentConfiguration isKindOfConfiguration:objc_opt_class()])
  {
    v23 = [(ARConfiguration *)selfCopy->_currentConfiguration getAsKindOfConfiguration:objc_opt_class()];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    [(ARSessionMetrics *)selfCopy _recordBadFramePercentageFinal:1];
    if (selfCopy->_hasInitialWorldMap && selfCopy->_relocalizingToInitialWorldMap)
    {
      reporter = selfCopy->_reporter;
      v139[0] = MEMORY[0x1E69E9820];
      v139[1] = 3221225472;
      v139[2] = __37__ARSessionMetrics__recordSessionEnd__block_invoke;
      v139[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
      *&v139[4] = v4;
      [(ARSessionMetricsReporting *)reporter sendEvent:@"com.apple.arkit.ARWorldMap.loading" dictionary:v139];
    }

    v28 = 0;
    v26.i64[0] = 0;
    if (selfCopy->_positionInitialized)
    {
      v29 = vsubq_f32(*selfCopy->_maxPos, *selfCopy->_minPos);
      v26 = vextq_s8(v29, v29, 8uLL);
      *v26.i8 = vmul_f32(*v29.i8, *v26.i8);
      v28 = v29.i32[1];
    }

    v99 = v25;
    if ([v23 isCollaborationEnabled])
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v30 = selfCopy->_lastUpdatedFrameAnchors;
      v31 = [(NSArray *)v30 countByEnumeratingWithState:&v135 objects:v142 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = 0;
        v34 = *v136;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v136 != v34)
            {
              objc_enumerationMutation(v30);
            }

            objc_opt_class();
            v33 += objc_opt_isKindOfClass() & 1;
          }

          v32 = [(NSArray *)v30 countByEnumeratingWithState:&v135 objects:v142 count:16];
        }

        while (v32);
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v64 = selfCopy->_lastUpdatedFrameAnchors;
    v65 = [(NSArray *)v64 countByEnumeratingWithState:&v131 objects:v141 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = 0;
      v68 = *v132;
      do
      {
        for (j = 0; j != v66; ++j)
        {
          if (*v132 != v68)
          {
            objc_enumerationMutation(v64);
          }

          objc_opt_class();
          v67 += objc_opt_isKindOfClass() & 1;
        }

        v66 = [(NSArray *)v64 countByEnumeratingWithState:&v131 objects:v141 count:16];
      }

      while (v66);
    }

    else
    {
      v67 = 0;
    }

    v70 = selfCopy->_reporter;
    v124[0] = MEMORY[0x1E69E9820];
    v9 = &off_1C25C8000;
    v124[1] = 3221225472;
    v124[2] = __37__ARSessionMetrics__recordSessionEnd__block_invoke_2;
    v124[3] = &unk_1E817E618;
    v124[4] = selfCopy;
    v125 = v23;
    v129 = v98;
    v130 = v28;
    v126 = v33;
    v127 = v67;
    v128 = v4;
    v71 = v23;
    [(ARSessionMetricsReporting *)v70 sendEvent:@"com.apple.arkit.ARWorldTracking" dictionary:v124];

    goto LABEL_69;
  }

  v10 = [(ARConfiguration *)selfCopy->_currentConfiguration isKindOfConfiguration:objc_opt_class()];
  currentConfiguration = selfCopy->_currentConfiguration;
  if (v10)
  {
    v12 = [(ARConfiguration *)currentConfiguration getAsKindOfConfiguration:objc_opt_class()];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = selfCopy->_reporter;
    v122[0] = MEMORY[0x1E69E9820];
    v122[1] = 3221225472;
    v122[2] = __37__ARSessionMetrics__recordSessionEnd__block_invoke_3;
    v122[3] = &unk_1E817E510;
    v123 = v12;
    v16 = v12;
    [(ARSessionMetricsReporting *)v15 sendEvent:@"com.apple.arkit.ARImageTracking" dictionary:v122];
    v17 = v123;
LABEL_25:

    goto LABEL_70;
  }

  v18 = [(ARConfiguration *)currentConfiguration isKindOfConfiguration:objc_opt_class()];
  v19 = selfCopy->_currentConfiguration;
  if (v18)
  {
    v20 = [(ARConfiguration *)v19 getAsKindOfConfiguration:objc_opt_class()];
    v21 = objc_opt_class();
    v14 = NSStringFromClass(v21);
    v22 = selfCopy->_reporter;
    v120[0] = MEMORY[0x1E69E9820];
    v120[1] = 3221225472;
    v120[2] = __37__ARSessionMetrics__recordSessionEnd__block_invoke_4;
    v120[3] = &unk_1E817E510;
    v121 = v20;
    v16 = v20;
    [(ARSessionMetricsReporting *)v22 sendEvent:@"com.apple.arkit.ARFaceTracking" dictionary:v120];
    v17 = v121;
    goto LABEL_25;
  }

  v36 = [(ARConfiguration *)v19 isKindOfConfiguration:objc_opt_class()];
  v37 = selfCopy->_currentConfiguration;
  if (v36)
  {
    v38 = [(ARConfiguration *)v37 getAsKindOfConfiguration:objc_opt_class()];
    v39 = objc_opt_class();
    v14 = NSStringFromClass(v39);
    v40 = selfCopy->_reporter;
    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3221225472;
    v118[2] = __37__ARSessionMetrics__recordSessionEnd__block_invoke_5;
    v118[3] = &unk_1E817E510;
    v119 = v38;
    v16 = v38;
    [(ARSessionMetricsReporting *)v40 sendEvent:@"com.apple.arkit.ARBodyTracking" dictionary:v118];
    v17 = v119;
    goto LABEL_25;
  }

  if ([(ARConfiguration *)v37 isKindOfConfiguration:objc_opt_class()])
  {
    v41 = objc_opt_class();
    v42 = NSStringFromClass(v41);
    v14 = v42;
    if (!selfCopy->_frameCount)
    {
      goto LABEL_70;
    }

    v99 = v42;
    v100 = selfCopy->_lastUpdatedFrameLocation;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v43 = selfCopy->_lastUpdatedFrameAnchors;
    v44 = [(NSArray *)v43 countByEnumeratingWithState:&v114 objects:v140 count:16];
    if (v44)
    {
      v45 = v44;
      v97 = selfCopy;
      v46 = 0;
      v47 = 0;
      v48 = *v115;
      v49 = 0.0;
      v50 = 1.79769313e308;
      v51 = 0.0;
      do
      {
        for (k = 0; k != v45; ++k)
        {
          if (*v115 != v48)
          {
            objc_enumerationMutation(v43);
          }

          v53 = *(*(&v114 + 1) + 8 * k);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v54 = v53;
            v55 = objc_alloc(MEMORY[0x1E6985C40]);
            if (v54)
            {
              [v54 locationLLA];
              v56 = v113;
              [v54 locationLLA];
              *&v57 = vextq_s8(v112, v112, 8uLL).u64[0];
            }

            else
            {
              v56 = 0.0;
              v57 = 0.0;
            }

            v58 = [v55 initWithLatitude:v56 longitude:{v57, v97}];
            [(CLLocation *)v100 distanceFromLocation:v58];
            v60 = v59;

            if ([v54 altitudeSource] == 3)
            {
              ++v46;
            }

            v51 = v51 + v60;
            if (v50 >= v60)
            {
              v50 = v60;
            }

            if (v49 < v60)
            {
              v49 = v60;
            }

            ++v47;
          }
        }

        v45 = [(NSArray *)v43 countByEnumeratingWithState:&v114 objects:v140 count:16];
      }

      while (v45);

      if (v47)
      {
        v61 = v47;
      }

      else
      {
        v61 = 0;
      }

      if (v47)
      {
        v62 = v50;
      }

      else
      {
        v62 = 0.0;
      }

      if (v47)
      {
        v63 = v51 / v47;
      }

      else
      {
        v63 = v51;
      }

      selfCopy = v97;
      v9 = &off_1C25C8000;
    }

    else
    {

      v61 = 0;
      v46 = 0;
      v49 = 0.0;
      v62 = 0.0;
      v63 = 0.0;
    }

    geoTrackingTrueNorthUnavailable = selfCopy->_geoTrackingTrueNorthUnavailable;
    v84 = _ARLogSession_1();
    v85 = os_log_type_enabled(v84, OS_LOG_TYPE_INFO);
    if (geoTrackingTrueNorthUnavailable)
    {
      if (v85)
      {
        v86 = objc_opt_class();
        v87 = NSStringFromClass(v86);
        *buf = 138543618;
        v144 = v87;
        v145 = 2048;
        v146 = selfCopy;
        v88 = "%{public}@ <%p>: True North was not available during the session";
LABEL_89:
        _os_log_impl(&dword_1C241C000, v84, OS_LOG_TYPE_INFO, v88, buf, 0x16u);
      }
    }

    else if (v85)
    {
      v89 = objc_opt_class();
      v87 = NSStringFromClass(v89);
      *buf = 138543618;
      v144 = v87;
      v145 = 2048;
      v146 = selfCopy;
      v88 = "%{public}@ <%p>: True North was available during the session";
      goto LABEL_89;
    }

    v90 = *&selfCopy->_geoTrackingLowAccuracyFrameCount;
    geoTrackingHighAccuracyFrameCount = selfCopy->_geoTrackingHighAccuracyFrameCount;
    v92 = vaddvq_s64(v90) + geoTrackingHighAccuracyFrameCount;
    v93 = 0.0;
    v94 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(vdivq_f64(vcvtq_f64_u64(v90), vdupq_lane_s64(COERCE__INT64(v92), 0)), vdupq_n_s64(0x4059000000000000uLL))));
    v95 = selfCopy->_reporter;
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = *(v9 + 110);
    v110[2] = __37__ARSessionMetrics__recordSessionEnd__block_invoke_465;
    v110[3] = &unk_1E817E640;
    v110[4] = selfCopy;
    *&v110[5] = v4;
    if (v92)
    {
      v96 = geoTrackingHighAccuracyFrameCount / v92 * 100.0;
      v93 = v96;
    }

    v110[6] = v61;
    v110[7] = v46;
    if (!v92)
    {
      v94 = 0.0;
    }

    *&v110[8] = v62;
    *&v110[9] = v49;
    *&v110[10] = v63;
    *&v110[11] = v94;
    v111 = v93;
    [(ARSessionMetricsReporting *)v95 sendEvent:@"com.apple.arkit.ARGeoTracking" dictionary:v110, v97];

LABEL_69:
    v14 = v99;
    goto LABEL_70;
  }

  if ([(ARConfiguration *)selfCopy->_currentConfiguration isKindOfConfiguration:objc_opt_class()]|| [(ARConfiguration *)selfCopy->_currentConfiguration isKindOfConfiguration:objc_opt_class()]|| [(ARConfiguration *)selfCopy->_currentConfiguration isKindOfConfiguration:objc_opt_class()])
  {
    v82 = objc_opt_class();
    v14 = NSStringFromClass(v82);
  }

  else
  {
    v14 = 0;
  }

LABEL_70:
  v72 = selfCopy->_reporter;
  v107[0] = MEMORY[0x1E69E9820];
  v73 = *(v9 + 110);
  v107[1] = v73;
  v107[2] = __37__ARSessionMetrics__recordSessionEnd__block_invoke_2_469;
  v107[3] = &unk_1E817E5D0;
  v107[4] = selfCopy;
  v74 = v14;
  v108 = v74;
  v109 = v4;
  [(ARSessionMetricsReporting *)v72 sendEvent:@"com.apple.arkit.session" dictionary:v107];
  videoFormat = [(ARConfiguration *)selfCopy->_currentConfiguration videoFormat];
  v76 = videoFormat;
  if (videoFormat)
  {
    v77 = selfCopy->_reporter;
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = v73;
    v103[2] = __37__ARSessionMetrics__recordSessionEnd__block_invoke_3_470;
    v103[3] = &unk_1E817E668;
    v104 = videoFormat;
    v105 = v74;
    v106 = selfCopy;
    [(ARSessionMetricsReporting *)v77 sendEvent:@"com.apple.arkit.videoformat" dictionary:v103];
  }

  if (s_replayStats)
  {
    [(ARSessionMetricsReporting *)selfCopy->_reporter sendEvent:@"com.apple.arkit.ARReplay" dictionary:&__block_literal_global_111];
  }

  if (selfCopy->_coachingOverlayActivationCount)
  {
    v78 = selfCopy->_reporter;
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = v73;
    v102[2] = __37__ARSessionMetrics__recordSessionEnd__block_invoke_5_476;
    v102[3] = &unk_1E817E510;
    v102[4] = selfCopy;
    [(ARSessionMetricsReporting *)v78 sendEvent:@"com.apple.arkit.ARCoachingOverlay" dictionary:v102];
  }

  v79 = hitTestReportingMap();
  if ([v79 count])
  {
    v101[0] = MEMORY[0x1E69E9820];
    v101[1] = v73;
    v101[2] = __37__ARSessionMetrics__recordSessionEnd__block_invoke_6;
    v101[3] = &unk_1E817E6B0;
    v101[4] = selfCopy;
    *&v101[5] = v4;
    [v79 enumerateKeysAndObjectsUsingBlock:v101];
  }

  v80 = selfCopy->_currentConfiguration;
  selfCopy->_currentConfiguration = 0;

  selfCopy->_sessionWasThrottled = 0;
  v81 = s_replayStats;
  s_replayStats = 0;

  selfCopy->_coachingOverlayActivationCount = 0;
}

id __37__ARSessionMetrics__recordSessionEnd__block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E695E110];
  v6[0] = @"success";
  v6[1] = @"duration";
  v1 = *(a1 + 32);
  *&v1 = v1;
  v2 = [MEMORY[0x1E696AD98] numberWithFloat:v1];
  v7[1] = v2;
  v6[2] = @"bundleID";
  v3 = bundleID();
  v7[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

id __37__ARSessionMetrics__recordSessionEnd__block_invoke_2(uint64_t a1, double a2)
{
  v48[27] = *MEMORY[0x1E69E9840];
  v47[0] = @"area";
  LODWORD(a2) = *(a1 + 72);
  v46 = [MEMORY[0x1E696AD98] numberWithFloat:a2];
  v48[0] = v46;
  v47[1] = @"badFramePercentage10s";
  LODWORD(v3) = *(*(a1 + 32) + 24);
  v45 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v48[1] = v45;
  v47[2] = @"badFramePercentage60s";
  LODWORD(v4) = *(*(a1 + 32) + 28);
  v44 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v48[2] = v44;
  v47[3] = @"badFramePercentageMoreThan60s";
  LODWORD(v5) = *(*(a1 + 32) + 32);
  v43 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v48[3] = v43;
  v47[4] = @"collaborativeSessionEnabled";
  v42 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "isCollaborationEnabled")}];
  v48[4] = v42;
  v47[5] = @"collaborativeSessionMaximumNumberOfUsers";
  v41 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v48[5] = v41;
  v47[6] = @"environmentTexturingHdrEnabled";
  v40 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "wantsHDREnvironmentTextures")}];
  v48[6] = v40;
  v47[7] = @"environmentTexturingMode";
  v39 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "environmentTexturing")}];
  v48[7] = v39;
  v47[8] = @"frameSemantics";
  v38 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "frameSemantics")}];
  v48[8] = v38;
  v47[9] = @"heightDelta";
  LODWORD(v6) = *(a1 + 76);
  v37 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v48[9] = v37;
  v47[10] = @"maximumNumberOfTrackedImages";
  v36 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "maximumNumberOfTrackedImages")}];
  v48[10] = v36;
  v47[11] = @"numberOfDetectedPlanes";
  *&v7 = *(a1 + 56);
  v35 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v48[11] = v35;
  v47[12] = @"numberOfDetectionImages";
  v8 = MEMORY[0x1E696AD98];
  v34 = [*(a1 + 40) detectionImages];
  *&v9 = [v34 count];
  v33 = [v8 numberWithFloat:v9];
  v48[12] = v33;
  v47[13] = @"numberOfDetectionObjects";
  v10 = MEMORY[0x1E696AD98];
  v32 = [*(a1 + 40) detectionObjects];
  *&v11 = [v32 count];
  v31 = [v10 numberWithFloat:v11];
  v48[13] = v31;
  v47[14] = @"numberOfRaycasts";
  v30 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 208)];
  v48[14] = v30;
  v47[15] = @"planeDetectionMode";
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "planeDetection")}];
  v48[15] = v29;
  v47[16] = @"sceneReconstruction";
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "sceneReconstruction")}];
  v48[16] = v28;
  v47[17] = @"userFaceTrackingEnabled";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "userFaceTrackingEnabled")}];
  v48[17] = v27;
  v47[18] = @"vioInitializationTime";
  v12 = *(*(a1 + 32) + 104);
  *&v12 = v12;
  v26 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v48[18] = v26;
  v47[19] = @"automaticImageScaleEstimationEnabled";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "automaticImageScaleEstimationEnabled")}];
  v48[19] = v13;
  v47[20] = @"bundleID";
  v14 = bundleID();
  v48[20] = v14;
  v47[21] = @"numberOfCameraSwitches";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 32) + 184)];
  v48[21] = v15;
  v47[22] = @"numberOfReinitializationAttempts";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 32) + 192)];
  v48[22] = v16;
  v47[23] = @"vioMapSize";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 32) + 176)];
  v48[23] = v17;
  v47[24] = @"timeToThrottle";
  v18 = *(a1 + 32);
  LODWORD(v19) = -1.0;
  if (*(v18 + 17) == 1)
  {
    LODWORD(v19) = *(v18 + 20);
  }

  v20 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v48[24] = v20;
  v47[25] = @"duration";
  v21 = *(a1 + 64);
  *&v21 = v21;
  v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
  v48[25] = v22;
  v47[26] = @"appClipCodeTrackingEnabled";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 40), "appClipCodeTrackingEnabled")}];
  v48[26] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:27];

  return v24;
}

id __37__ARSessionMetrics__recordSessionEnd__block_invoke_3(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"numberOfTrackingImages";
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) trackingImages];
  *&v4 = [v3 count];
  v5 = [v2 numberWithFloat:v4];
  v11[0] = v5;
  v10[1] = @"maximumNumberOfTrackedImages";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "maximumNumberOfTrackedImages")}];
  v11[1] = v6;
  v10[2] = @"bundleID";
  v7 = bundleID();
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

id __37__ARSessionMetrics__recordSessionEnd__block_invoke_4(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"maximumNumberOfTrackedFaces";
  v2 = MEMORY[0x1E696AD98];
  *&v3 = [*(a1 + 32) maximumNumberOfTrackedFaces];
  v4 = [v2 numberWithFloat:v3];
  v10[0] = v4;
  v9[1] = @"worldTrackingEnabled";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "isWorldTrackingEnabled")}];
  v10[1] = v5;
  v9[2] = @"bundleID";
  v6 = bundleID();
  v10[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

id __37__ARSessionMetrics__recordSessionEnd__block_invoke_5(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"automaticSkeletonScaleEstimationEnabled";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "automaticSkeletonScaleEstimationEnabled")}];
  v5[1] = @"bundleID";
  v6[0] = v1;
  v2 = bundleID();
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

id __37__ARSessionMetrics__recordSessionEnd__block_invoke_465(uint64_t a1)
{
  v58[30] = *MEMORY[0x1E69E9840];
  v57[0] = @"localized";
  v56 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 256) > 0.0];
  v58[0] = v56;
  v57[1] = @"trueNorthUnavailable";
  v55 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 241)];
  v58[1] = v55;
  v57[2] = @"failureReason";
  v54 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 296)];
  v58[2] = v54;
  v57[3] = @"initializationTime";
  v2 = *(*(a1 + 32) + 248);
  *&v2 = v2;
  v53 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v58[3] = v53;
  v57[4] = @"localizationTime";
  v3 = *(*(a1 + 32) + 256);
  *&v3 = v3;
  v52 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
  v58[4] = v52;
  v57[5] = @"clFirstGps";
  v4 = *(*(a1 + 32) + 304);
  *&v4 = v4;
  v51 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  v58[5] = v51;
  v57[6] = @"clFirstNonGps";
  v5 = *(*(a1 + 32) + 312);
  *&v5 = v5;
  v50 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v58[6] = v50;
  v57[7] = @"clFirstDem";
  v6 = *(*(a1 + 32) + 320);
  *&v6 = v6;
  v49 = [MEMORY[0x1E696AD98] numberWithFloat:v6];
  v58[7] = v49;
  v57[8] = @"angleFirstUp";
  v7 = *(*(a1 + 32) + 328);
  *&v7 = v7;
  v48 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v58[8] = v48;
  v57[9] = @"angleBackToDown";
  v8 = *(*(a1 + 32) + 336);
  *&v8 = v8;
  v47 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v58[9] = v47;
  v57[10] = @"vlBeforeAvailabilityCall";
  v9 = *(*(a1 + 32) + 344);
  *&v9 = v9;
  v46 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  v58[10] = v46;
  v57[11] = @"vlAfterAvailabilityCall";
  v10 = *(*(a1 + 32) + 352);
  *&v10 = v10;
  v45 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v58[11] = v45;
  v57[12] = @"vlBeforeLocalizationCall";
  v11 = *(*(a1 + 32) + 360);
  *&v11 = v11;
  v44 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v58[12] = v44;
  v57[13] = @"vlAfterLocalizationCall";
  v12 = *(*(a1 + 32) + 368);
  *&v12 = v12;
  v43 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v58[13] = v43;
  v57[14] = @"vlFirstNonLocalized";
  v13 = *(*(a1 + 32) + 376);
  *&v13 = v13;
  v42 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v58[14] = v42;
  v57[15] = @"vioFirstPose";
  v14 = *(*(a1 + 32) + 384);
  *&v14 = v14;
  v41 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  v58[15] = v41;
  v57[16] = @"vioFirstNormalPose";
  v15 = *(*(a1 + 32) + 392);
  *&v15 = v15;
  v40 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v58[16] = v40;
  v57[17] = @"vioBackToLimited";
  v16 = *(*(a1 + 32) + 400);
  *&v16 = v16;
  v39 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
  v58[17] = v39;
  v57[18] = @"firstImage";
  v17 = *(*(a1 + 32) + 408);
  *&v17 = v17;
  v38 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  v58[18] = v38;
  v57[19] = @"sessionEnd";
  v18 = *(a1 + 40);
  *&v18 = v18;
  v37 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  v58[19] = v37;
  v57[20] = @"numberOfLocalizations";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 288)];
  v58[20] = v19;
  v57[21] = @"numberOfGeoAnchors";
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 48)];
  v58[21] = v20;
  v57[22] = @"numberOfGeoAnchorsWithUserDefinedAltitude";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 56)];
  v58[22] = v21;
  v57[23] = @"minGeoAnchorDistance";
  v22 = *(a1 + 64);
  *&v22 = v22;
  v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  v58[23] = v23;
  v57[24] = @"maxGeoAnchorDistance";
  v24 = *(a1 + 72);
  *&v24 = v24;
  v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
  v58[24] = v25;
  v57[25] = @"meanGeoAnchorDistance";
  v26 = *(a1 + 80);
  *&v26 = v26;
  v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  v58[25] = v27;
  v57[26] = @"lowAccuracyFramePercentage";
  LODWORD(v28) = *(a1 + 88);
  v29 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
  v58[26] = v29;
  v57[27] = @"mediumAccuracyFramePercentage";
  LODWORD(v30) = *(a1 + 92);
  v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
  v58[27] = v31;
  v57[28] = @"highAccuracyFramePercentage";
  LODWORD(v32) = *(a1 + 96);
  v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
  v58[28] = v33;
  v57[29] = @"bundleID";
  v34 = bundleID();
  v58[29] = v34;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:30];

  return v36;
}

id __37__ARSessionMetrics__recordSessionEnd__block_invoke_2_469(uint64_t a1)
{
  v17[7] = *MEMORY[0x1E69E9840];
  v16[0] = @"autofocus";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(*(a1 + 32) + 16)];
  v17[0] = v2;
  v16[1] = @"configuration";
  v3 = *(a1 + 40);
  v4 = v3;
  if (!v3)
  {
    v4 = NSStringFromClass(*(*(a1 + 32) + 40));
  }

  v17[1] = v4;
  v16[2] = @"duration";
  v5 = *(a1 + 48);
  *&v5 = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v7 = v6;
  v8 = s_reportedRendererString;
  if (!s_reportedRendererString)
  {
    v8 = s_rendererString;
  }

  v17[2] = v6;
  v17[3] = v8;
  v16[3] = @"renderer";
  v16[4] = @"bundleID";
  v9 = bundleID();
  v17[4] = v9;
  v16[5] = @"frameSemantics";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(a1 + 32) + 48), "frameSemantics")}];
  v17[5] = v10;
  v16[6] = @"timeToThrottle";
  v11 = *(a1 + 32);
  LODWORD(v12) = -1.0;
  if (*(v11 + 17) == 1)
  {
    LODWORD(v12) = *(v11 + 20);
  }

  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v17[6] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:7];

  if (!v3)
  {
  }

  return v14;
}

id __37__ARSessionMetrics__recordSessionEnd__block_invoke_3_470(uint64_t a1)
{
  v19[9] = *MEMORY[0x1E69E9840];
  v18[0] = @"captureDevicePosition";
  v17 = NSStringFromAVCaptureDevicePosition([*(a1 + 32) captureDevicePosition]);
  v19[0] = v17;
  v18[1] = @"configuration";
  v2 = *(a1 + 40);
  v3 = v2;
  if (!v2)
  {
    v3 = NSStringFromClass(*(*(a1 + 48) + 40));
  }

  v19[1] = v3;
  v18[2] = @"imageResolution";
  v4 = MEMORY[0x1E696AEC0];
  [*(a1 + 32) imageResolution];
  v6 = v5;
  [*(a1 + 32) imageResolution];
  v8 = [v4 stringWithFormat:@"%.0fx%.0f", v6, v7];
  v19[2] = v8;
  v18[3] = @"framesPerSecond";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "framesPerSecond")}];
  v19[3] = v9;
  v18[4] = @"videoHDRSupported";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isVideoHDRSupported")}];
  v19[4] = v10;
  v18[5] = @"nonBinned";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isRecommendedForHighResolutionFrameCapturing")}];
  v19[5] = v11;
  v18[6] = @"hiResFrameCaptureCount";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(a1 + 48) + 216)];
  v19[6] = v12;
  v18[7] = @"colorSpace";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "defaultColorSpace")}];
  v19[7] = v13;
  v18[8] = @"bundleID";
  v14 = bundleID();
  v19[8] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:9];

  if (!v2)
  {
  }

  return v15;
}

id __37__ARSessionMetrics__recordSessionEnd__block_invoke_4_475()
{
  v10[6] = *MEMORY[0x1E69E9840];
  v9[0] = @"format";
  v0 = [s_replayStats recordingFormat];
  if (v0 > 7)
  {
    v1 = @"Unknown";
  }

  else
  {
    v1 = off_1E817E6E8[v0];
  }

  v10[0] = v1;
  v9[1] = @"recordingDevice";
  v2 = [s_replayStats deviceModel];
  v10[1] = v2;
  v9[2] = @"recordingARKitVersion";
  v3 = [s_replayStats arkitVersion];
  v10[2] = v3;
  v9[3] = @"recordingOSVersion";
  v4 = [s_replayStats osVersion];
  v10[3] = v4;
  v9[4] = @"fileName";
  v5 = [s_replayStats fileName];
  v10[4] = v5;
  v9[5] = @"bundleID";
  v6 = bundleID();
  v10[5] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];

  return v7;
}

id __37__ARSessionMetrics__recordSessionEnd__block_invoke_5_476(uint64_t a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v7[0] = @"activationCount";
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 232)];
  v8[0] = v2;
  v7[1] = @"goal";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(a1 + 32) + 224)];
  v8[1] = v3;
  v7[2] = @"bundleID";
  v4 = bundleID();
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void __37__ARSessionMetrics__recordSessionEnd__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__ARSessionMetrics__recordSessionEnd__block_invoke_7;
  v10[3] = &unk_1E817E5D0;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  [v7 sendEvent:@"com.apple.arkit.ARHitTest" dictionary:v10];
}

id __37__ARSessionMetrics__recordSessionEnd__block_invoke_7(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v12[0] = v3;
  v11[0] = @"type";
  v11[1] = @"numberOfHitTestsPerSecond";
  v4 = MEMORY[0x1E696AD98];
  [v2 floatValue];
  v6 = v5 / *(a1 + 48);
  *&v6 = v6;
  v7 = [v4 numberWithFloat:v6];
  v12[1] = v7;
  v11[2] = @"bundleID";
  v8 = bundleID();
  v12[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (void)_recordBadFramePercentageFinal:(BOOL)final
{
  if (self->_frameCount >= 0xA)
  {
    [(NSDate *)self->_frameStartDate timeIntervalSinceNow];
    if (v5 < -10.0)
    {
      p_sessionTimeForLastBadFrameRecording = &self->_sessionTimeForLastBadFrameRecording;
      if (self->_sessionTimeForLastBadFrameRecording < 10.0)
      {
        v7 = 24;
LABEL_8:
        *p_sessionTimeForLastBadFrameRecording = -v5;
LABEL_9:
        v8 = self->_badFrameCount / self->_frameCount * 100.0;
        *(&self->super.isa + v7) = v8;
        return;
      }
    }

    if (v5 >= -60.0)
    {
      return;
    }

    p_sessionTimeForLastBadFrameRecording = &self->_sessionTimeForLastBadFrameRecording;
    if (self->_sessionTimeForLastBadFrameRecording < 60.0)
    {
      v7 = 28;
      goto LABEL_8;
    }

    if (final)
    {
      v7 = 32;
      goto LABEL_9;
    }
  }
}

@end