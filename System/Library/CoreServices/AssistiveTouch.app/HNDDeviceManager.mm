@interface HNDDeviceManager
+ (id)sharedManager;
- (BOOL)_shouldProcessState:(id)a3;
- (BOOL)mainDeviceIsMotionTracker;
- (BOOL)mainDeviceIsOnDeviceEyeTracker;
- (BOOL)mainDeviceIsPointer;
- (BOOL)mainDeviceIsThirdPartyTracker;
- (CGPoint)convertPointToDeviceOrientation:(CGPoint)a3;
- (CGPoint)delayedHeadTrackingPointForExpressions;
- (CGPoint)lastSeenLookAtPoint;
- (CGRect)rotatedScreenBounds;
- (HNDDeviceManager)init;
- (HNDHandManager)handManager;
- (id)_currentPointSmoother;
- (id)_smoothingBufferSizeForCurrentActiveEyeTracker;
- (int64_t)deviceCount;
- (int64_t)deviceCountWithSecondaryButtons;
- (void)_checkBackboardEffectiveDeviceOrientation;
- (void)_headTrackingToggled;
- (void)_motionTrackerInputSourceFailedToTrackFaceWithErrorCode:(int64_t)a3;
- (void)_motionTrackerInputSourceTrackedFaceAtPoint:(CGPoint)a3;
- (void)_motionTrackerInputSourceTrackedFaceWithExpressions:(id)a3;
- (void)_notifyDisplayManagerDeviceCountChanged;
- (void)_onDeviceEyeTrackingToggled;
- (void)_processCameraStolenError;
- (void)_processMotionTrackerErrorsForOnDeviceEyeTrackingWithErrorCode:(int64_t)a3;
- (void)_resetCalibrationTimer;
- (void)_resetMotionTrackerErrorAndTimer;
- (void)_startMonitoringEffectiveDeviceOrientation;
- (void)_startTrackingMotionInput:(id)a3;
- (void)_stopMonitoringEffectiveDeviceOrientation;
- (void)_stopTrackingMotionInput;
- (void)_updateHeadTrackingPointsMovingWindowWithNormalizedPoint:(CGPoint)a3;
- (void)_updateMotionTrackerActionConfig;
- (void)_updateMotionTrackerExpressionConfig;
- (void)_updateMotionTrackerMode;
- (void)addDevice:(id)a3;
- (void)addOnDeviceEyeTrackingAsInput;
- (void)dealloc;
- (void)device:(id)a3 didPostEvent:(id)a4;
- (void)device:(id)a3 didUnload:(BOOL)a4;
- (void)deviceDetector:(id)a3 didFindDevice:(__IOHIDDevice *)a4;
- (void)deviceDetector:(id)a3 unloadDevicesPassingTest:(id)a4;
- (void)disableMotionTrackingDevices;
- (void)enableMotionTrackingDevices;
- (void)hidDeviceDidStartConfiguring:(BOOL)a3;
- (void)motionTracker:(id)a3 updatedState:(id)a4;
- (void)motionTrackingInputManager:(id)a3 updatedInputToUse:(id)a4;
- (void)mousePointerDevicesDidConnect:(id)a3;
- (void)mousePointerDevicesDidDisconnect:(id)a3;
- (void)removeAllDevices;
- (void)removeDevice:(id)a3;
- (void)removeOnDeviceEyeTrackingAsInput;
- (void)restartDeviceDetection;
- (void)setDetectDevices:(BOOL)a3;
- (void)setHidDeviceSentReservedStatus:(BOOL)a3;
- (void)setIsTrackingInputActive:(BOOL)a3;
@end

@implementation HNDDeviceManager

+ (id)sharedManager
{
  v2 = +[HNDHandManager sharedManager];
  v3 = [v2 deviceManager];

  return v3;
}

- (HNDDeviceManager)init
{
  v119.receiver = self;
  v119.super_class = HNDDeviceManager;
  v2 = [(HNDDeviceManager *)&v119 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 24) = vdupq_n_s64(0xC1E6CEAF20000000);
    *(v2 + 5) = 0x3FE0000000000000;
    v4 = [[AXDispatchTimer alloc] initWithTargetSerialQueue:&_dispatch_main_q];
    scrollHysteresisTimer = v3->_scrollHysteresisTimer;
    v3->_scrollHysteresisTimer = v4;

    v6 = +[NSMutableArray array];
    devices = v3->_devices;
    v3->_devices = v6;

    v8 = objc_alloc_init(AXSSMotionTrackingInputConfiguration);
    v9 = +[AXSettings sharedInstance];
    v10 = [v9 assistiveTouchHeadTrackingEnabled];

    v63 = [NSMutableSet setWithObject:&off_1001E4FB0];
    if (v10)
    {
      [v63 addObject:&off_1001E4FC8];
    }

    if (AXDeviceSupportsOnDeviceEyeTracking())
    {
      v11 = +[ASTUIGazeEnrollmentManager sharedManager];
      gazeEnrollmentManager = v3->_gazeEnrollmentManager;
      v3->_gazeEnrollmentManager = v11;

      objc_initWeak(&location, v3);
      v13 = +[AXSettings sharedInstance];
      v115[0] = _NSConcreteStackBlock;
      v115[1] = 3221225472;
      v115[2] = sub_10000500C;
      v115[3] = &unk_1001D3438;
      objc_copyWeak(&v117, &location);
      v14 = v3;
      v116 = v14;
      [v13 registerUpdateBlock:v115 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingEnabled" withListener:v14];

      objc_destroyWeak(&v117);
      v15 = +[AXSettings sharedInstance];
      v112[0] = _NSConcreteStackBlock;
      v112[1] = 3221225472;
      v112[2] = sub_100005060;
      v112[3] = &unk_1001D3438;
      objc_copyWeak(&v114, &location);
      v16 = v14;
      v113 = v16;
      [v15 registerUpdateBlock:v112 forRetrieveSelector:"switchControlOnDeviceEyeTrackingEnabled" withListener:v16];

      objc_destroyWeak(&v114);
      v17 = +[AXSettings sharedInstance];
      v110[0] = _NSConcreteStackBlock;
      v110[1] = 3221225472;
      v110[2] = sub_1000050B4;
      v110[3] = &unk_1001D3460;
      objc_copyWeak(&v111, &location);
      [v17 registerUpdateBlock:v110 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints" withListener:v16];

      objc_destroyWeak(&v111);
      v18 = +[AXSettings sharedInstance];
      [v16[15] setUseGaussianBlur:{objc_msgSend(v18, "assistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur")}];

      v19 = +[AXSettings sharedInstance];
      v108[0] = _NSConcreteStackBlock;
      v108[1] = 3221225472;
      v108[2] = sub_100005124;
      v108[3] = &unk_1001D3460;
      objc_copyWeak(&v109, &location);
      [v19 registerUpdateBlock:v108 forRetrieveSelector:"assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints" withListener:v16];

      objc_destroyWeak(&v109);
      v20 = +[AXSettings sharedInstance];
      v106[0] = _NSConcreteStackBlock;
      v106[1] = 3221225472;
      v106[2] = sub_1000051A0;
      v106[3] = &unk_1001D3460;
      objc_copyWeak(&v107, &location);
      [v20 registerUpdateBlock:v106 forRetrieveSelector:"assistiveTouchOnDeviceEyeTrackingShouldUseMotionFilter" withListener:v16];

      objc_destroyWeak(&v107);
      v21 = +[AXSettings sharedInstance];
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_10000521C;
      v104[3] = &unk_1001D3460;
      objc_copyWeak(&v105, &location);
      [v21 registerUpdateBlock:v104 forRetrieveSelector:"assistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur" withListener:v16];

      objc_destroyWeak(&v105);
      objc_destroyWeak(&location);
    }

    [v8 setAllowedTrackingTypes:{v63, v63}];
    v22 = [[AXSSMotionTrackingInputManager alloc] initWithConfiguration:v8];
    motionTrackingInputManager = v3->_motionTrackingInputManager;
    v3->_motionTrackingInputManager = v22;

    [(AXSSMotionTrackingInputManager *)v3->_motionTrackingInputManager setDelegate:v3];
    if (AXDeviceSupportsOnDeviceEyeTracking())
    {
      v24 = +[AXSettings sharedInstance];
      v25 = [v24 assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize];

      v3->_shouldSmoothOnDeviceEyeTrackingPoints = v25 >= kAXSAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizeMinUserPreference;
      objc_initWeak(&location, v3);
      v26 = +[AXSettings sharedInstance];
      v102[0] = _NSConcreteStackBlock;
      v102[1] = 3221225472;
      v102[2] = sub_100005298;
      v102[3] = &unk_1001D3460;
      objc_copyWeak(&v103, &location);
      [v26 registerUpdateBlock:v102 forRetrieveSelector:"assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize" withListener:v3];

      objc_destroyWeak(&v103);
      objc_destroyWeak(&location);
    }

    v27 = [(HNDDeviceManager *)v3 _smoothingBufferSizeForCurrentActiveEyeTracker];
    v28 = v27;
    if (v27)
    {
      v29 = [v27 unsignedIntegerValue];
      v30 = v29 > kAXSAssistiveTouchMotionTrackerSmoothingBufferSizeDefault;
    }

    else
    {
      v30 = 0;
    }

    v3->_shouldSmoothPoints = v30;
    objc_initWeak(&location, v3);
    v31 = +[AXSettings sharedInstance];
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_10000543C;
    v99[3] = &unk_1001D3438;
    objc_copyWeak(&v101, &location);
    v32 = v3;
    v100 = v32;
    [v31 registerUpdateBlock:v99 forRetrieveSelector:"assistiveTouchEyeTrackerCustomizedSettings" withListener:v32];

    objc_destroyWeak(&v101);
    v33 = +[AXSettings sharedInstance];
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_1000055E0;
    v96[3] = &unk_1001D3438;
    objc_copyWeak(&v98, &location);
    v34 = v32;
    v97 = v34;
    [v33 registerUpdateBlock:v96 forRetrieveSelector:"assistiveTouchMotionTrackerSmoothingBufferSize" withListener:v34];

    objc_destroyWeak(&v98);
    v35 = +[AXSettings sharedInstance];
    v94[0] = _NSConcreteStackBlock;
    v94[1] = 3221225472;
    v94[2] = sub_100005790;
    v94[3] = &unk_1001D3460;
    objc_copyWeak(&v95, &location);
    [v35 registerUpdateBlock:v94 forRetrieveSelector:"assistiveTouchMotionTrackerSmoothingMaxDelta" withListener:v34];

    objc_destroyWeak(&v95);
    v36 = +[AXSettings sharedInstance];
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_1000058D8;
    v92[3] = &unk_1001D3460;
    objc_copyWeak(&v93, &location);
    [v36 registerUpdateBlock:v92 forRetrieveSelector:"assistiveTouchMotionTrackerXNormalizationOrder" withListener:v34];

    objc_destroyWeak(&v93);
    v37 = +[AXSettings sharedInstance];
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_100005A20;
    v90[3] = &unk_1001D3460;
    objc_copyWeak(&v91, &location);
    [v37 registerUpdateBlock:v90 forRetrieveSelector:"assistiveTouchMotionTrackerYNormalizationOrder" withListener:v34];

    objc_destroyWeak(&v91);
    v38 = +[AXSettings sharedInstance];
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_100005B68;
    v88[3] = &unk_1001D3460;
    objc_copyWeak(&v89, &location);
    [v38 registerUpdateBlock:v88 forRetrieveSelector:"assistiveTouchMotionTrackerXNormalizationOffset" withListener:v34];

    objc_destroyWeak(&v89);
    v39 = +[AXSettings sharedInstance];
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_100005CB0;
    v86[3] = &unk_1001D3460;
    objc_copyWeak(&v87, &location);
    [v39 registerUpdateBlock:v86 forRetrieveSelector:"assistiveTouchMotionTrackerYNormalizationOffset" withListener:v34];

    objc_destroyWeak(&v87);
    v40 = +[AXSettings sharedInstance];
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_100005DF8;
    v84[3] = &unk_1001D3460;
    objc_copyWeak(&v85, &location);
    [v40 registerUpdateBlock:v84 forRetrieveSelector:"assistiveTouchMotionTrackerShouldOffsetBufferPoints" withListener:v34];

    objc_destroyWeak(&v85);
    v41 = +[AXSettings sharedInstance];
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_100005F40;
    v82[3] = &unk_1001D3460;
    objc_copyWeak(&v83, &location);
    [v41 registerUpdateBlock:v82 forRetrieveSelector:"assistiveTouchForceEyeTrackerExperience" withListener:v34];

    objc_destroyWeak(&v83);
    v42 = +[AXSettings sharedInstance];
    v34->_forceEyeTrackerExperience = [v42 assistiveTouchForceEyeTrackerExperience];

    v43 = objc_opt_new();
    pointSmoothers = v34->_pointSmoothers;
    v34->_pointSmoothers = v43;

    v45 = +[AXSettings sharedInstance];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100005FAC;
    v79[3] = &unk_1001D3438;
    objc_copyWeak(&v81, &location);
    v46 = v34;
    v80 = v46;
    [v45 registerUpdateBlock:v79 forRetrieveSelector:"assistiveTouchHeadTrackingEnabled" withListener:v46];

    objc_destroyWeak(&v81);
    v47 = +[AXSettings sharedInstance];
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_100006000;
    v77[3] = &unk_1001D3460;
    objc_copyWeak(&v78, &location);
    [v47 registerUpdateBlock:v77 forRetrieveSelector:"assistiveTouchHeadTrackingSensitivity" withListener:v46];

    objc_destroyWeak(&v78);
    v48 = +[AXSettings sharedInstance];
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_100006070;
    v74[3] = &unk_1001D3438;
    objc_copyWeak(&v76, &location);
    v49 = v46;
    v75 = v49;
    [v48 registerUpdateBlock:v74 forRetrieveSelector:"assistiveTouchHeadTrackingMode" withListener:v49];

    objc_destroyWeak(&v76);
    v50 = +[AXSettings sharedInstance];
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1000060C4;
    v72[3] = &unk_1001D3460;
    objc_copyWeak(&v73, &location);
    [v50 registerUpdateBlock:v72 forRetrieveSelector:"assistiveTouchHeadTrackingMovementToleranceInJoystickMode" withListener:v49];

    objc_destroyWeak(&v73);
    v51 = +[AXSettings sharedInstance];
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100006134;
    v69[3] = &unk_1001D3438;
    objc_copyWeak(&v71, &location);
    v52 = v49;
    v70 = v52;
    [v51 registerUpdateBlock:v69 forRetrieveSelector:"assistiveTouchHeadTrackingExpressionToSensitivityMapping" withListener:v52];

    objc_destroyWeak(&v71);
    v53 = +[AXSettings sharedInstance];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100006188;
    v66[3] = &unk_1001D3438;
    objc_copyWeak(&v68, &location);
    v54 = v52;
    v67 = v54;
    [v53 registerUpdateBlock:v66 forRetrieveSelector:"assistiveTouchHeadTrackingExpressionToActionMapping" withListener:v54];

    objc_destroyWeak(&v68);
    [(HNDDeviceManager *)v54 _updateMotionTrackerActionConfig];
    v55 = +[AXSettings sharedInstance];
    v56 = [v55 assistiveTouchHeadTrackingEnabled];

    if (v56)
    {
      [(HNDDeviceManager *)v54 _headTrackingToggled];
    }

    if (sub_100042C64())
    {
      v57 = +[NSMutableSet set];
      connectedPointerDevices = v54->_connectedPointerDevices;
      v54->_connectedPointerDevices = v57;

      v65 = v54;
      AXPerformBlockAsynchronouslyOnMainThread();
    }

    v59 = objc_alloc_init(HNDDeviceDetector);
    deviceDetector = v54->_deviceDetector;
    v54->_deviceDetector = v59;

    if (AXDeviceSupportsOnDeviceEyeTracking())
    {
      v61 = +[AXSettings sharedInstance];
      -[HNDDeviceManager setShouldShowUncalibratedPoints:](v54, "setShouldShowUncalibratedPoints:", [v61 assistiveTouchMouseOnDeviceEyeTrackingShouldShowUncalibratedPoints]);

      [(HNDDeviceManager *)v54 _onDeviceEyeTrackingToggled];
    }

    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  [(HNDDeviceManager *)self setDetectDevices:0];
  [(HNDDeviceManager *)self _stopMonitoringEffectiveDeviceOrientation];
  [(BSInvalidatable *)self->_pointerDeviceObserver invalidate];
  v3.receiver = self;
  v3.super_class = HNDDeviceManager;
  [(HNDDeviceManager *)&v3 dealloc];
}

- (void)setDetectDevices:(BOOL)a3
{
  v3 = a3;
  v5 = ASTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    *buf = 136315394;
    v23 = "[HNDDeviceManager setDetectDevices:]";
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: %@", buf, 0x16u);
  }

  if (self->_detectDevices != v3)
  {
    self->_detectDevices = v3;
    v7 = [(HNDDeviceManager *)self deviceDetector];
    v8 = v7;
    if (self->_detectDevices)
    {
      [v7 setDelegate:self];
      [v8 setDetectDevices:1];
      v9 = dispatch_time(0, 500000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000064FC;
      block[3] = &unk_1001D3488;
      block[4] = self;
      dispatch_after(v9, &_dispatch_main_q, block);
    }

    else
    {
      [v7 setDelegate:0];
      [v8 setDetectDevices:0];
      v10 = [(NSMutableArray *)self->_devices copy];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          v15 = 0;
          do
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [*(*(&v16 + 1) + 8 * v15) unload];
            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v13);
      }

      [(NSMutableArray *)self->_devices removeAllObjects];
      [(HNDDeviceManager *)self disableMotionTrackingDevices];
    }
  }
}

- (void)restartDeviceDetection
{
  v3 = [(HNDDeviceManager *)self detectDevices];
  [(HNDDeviceManager *)self setDetectDevices:0];

  [(HNDDeviceManager *)self setDetectDevices:v3];
}

- (void)deviceDetector:(id)a3 didFindDevice:(__IOHIDDevice *)a4
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_devices;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if ([*(*(&v20 + 1) + 8 * v10) containsHIDDevice:a4])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v11 = [HNDDevice createNewDevice:a4];
    v6 = v11;
    if (v11)
    {
      [(NSMutableArray *)v11 setDelegate:self];
      if ([(NSMutableArray *)v6 load])
      {
        v12 = ASTLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Adding device: %@", buf, 0xCu);
        }

        [(NSMutableArray *)self->_devices addObject:v6];
        [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
        if ([(NSMutableArray *)v6 wheel]& 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          _AXSSetAccessibilityEnabled();
          _AXSApplicationAccessibilitySetEnabled();
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && (sub_100042C64() & 1) == 0)
        {
          v13 = [AXCustomizableMouse mouseForHIDDevice:a4];
          v14 = v13;
          if (v13)
          {
            v15 = [v13 customActionForButtonNumber:1];

            if (!v15)
            {
              [v14 setDefaultActionForButtonNumber:1];
            }

            if ([(NSMutableArray *)v6 secondaryButton])
            {
              v16 = [v14 customActionForButtonNumber:2];

              if (!v16)
              {
                [v14 setDefaultActionForButtonNumber:2];
              }
            }

            if ([(NSMutableArray *)v6 tertiaryButton])
            {
              v17 = [v14 customActionForButtonNumber:3];

              if (!v17)
              {
                [v14 setDefaultActionForButtonNumber:3];
              }
            }

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100006960;
            block[3] = &unk_1001D3488;
            v19 = v14;
            dispatch_async(&_dispatch_main_q, block);
          }
        }
      }
    }
  }
}

- (void)deviceDetector:(id)a3 unloadDevicesPassingTest:(id)a4
{
  v5 = a4;
  devices = self->_devices;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100006ABC;
  v11[3] = &unk_1001D34B0;
  v7 = v5;
  v12 = v7;
  v8 = [(NSMutableArray *)devices indexesOfObjectsPassingTest:v11];
  if ([v8 count])
  {
    v9 = ASTLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100127F3C(v8, v9);
    }

    v10 = [(NSMutableArray *)self->_devices objectsAtIndexes:v8];
    [v10 makeObjectsPerformSelector:"unload"];
  }
}

- (void)device:(id)a3 didUnload:(BOOL)a4
{
  if (a4)
  {
    [(NSMutableArray *)self->_devices removeObject:a3];

    [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
  }
}

- (void)device:(id)a3 didPostEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ASTLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100127FB4(v6, v7, v8);
  }

  v9 = [(HNDDeviceManager *)self handManager];
  if ([v9 shouldHideSystemPointerForFingersView])
  {
    v10 = 0;
  }

  else
  {
    v10 = [v9 shouldHandleSystemPointerButtonEvent:v7];
  }

  if (!sub_100042C64() || (v10 & 1) != 0 || ([v7 isGamepadEvent] & 1) != 0 || (objc_msgSend(v7, "isVirtualTrackpadEvent") & 1) != 0 || !+[HNDVirtualHIDMouse handleEvent:](HNDVirtualHIDMouse, "handleEvent:", v7))
  {
    [v9 touchSpeedMultiplier];
    v12 = v11;
    v13 = [v7 type];
    if (v13 - 1 < 2)
    {
      [v9 handleButtonEvent:v7];
    }

    else if (v13 == 4)
    {
      [v7 deltaY];
      [v7 setDeltaY:v22 * 25.0];
      [v7 deltaY];
      self->_scrollAmount = (v23 + self->_scrollAmount);
      if (([(AXDispatchTimer *)self->_scrollHysteresisTimer isPending]& 1) == 0)
      {
        v24 = [(HNDDeviceManager *)self handManager];
        v25 = [v24 currentDisplayManager];
        [v25 screenPoint];
        v27 = v26;
        v29 = v28;

        v35[0] = 0;
        v35[1] = v35;
        v35[2] = 0x3032000000;
        v35[3] = sub_100006E80;
        v35[4] = sub_100006E90;
        v36 = [AXUIElement uiApplicationAtCoordinate:v27, v29];
        scrollHysteresisTimer = self->_scrollHysteresisTimer;
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_100006E98;
        v34[3] = &unk_1001D34D8;
        *&v34[6] = v27;
        *&v34[7] = v29;
        v34[4] = self;
        v34[5] = v35;
        [(AXDispatchTimer *)scrollHysteresisTimer afterDelay:v34 processBlock:0.025];
        _Block_object_dispose(v35, 8);
      }
    }

    else if (v13 == 3)
    {
      [v7 deltaX];
      [v7 setDeltaX:v14 * self->_allowedMoveRate];
      [v7 deltaY];
      [v7 setDeltaY:v15 * self->_allowedMoveRate];
      [v7 deltaX];
      [v7 setDeltaX:v12 * v16];
      [v7 deltaY];
      [v7 setDeltaY:v12 * v17];
      if ([(HNDDeviceManager *)self isTrackingInputActive])
      {
        v18 = [(HNDDeviceManager *)self handManager];
        [v7 deltaX];
        v20 = v19;
        [v7 deltaY];
        [v18 mouseEventRecordedWithDelta:{v20, v21}];
      }

      if ([v7 isVirtualTrackpadEvent])
      {
        [HNDVirtualHIDMouse handleEvent:v7];
      }

      else
      {
        [v7 deltaX];
        v32 = v31;
        [v7 deltaY];
        [v9 moveFingerByDelta:{v32, v33}];
      }
    }
  }
}

- (int64_t)deviceCountWithSecondaryButtons
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_devices;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) secondaryButton];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addDevice:(id)a3
{
  [(NSMutableArray *)self->_devices addObject:a3];

  [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
}

- (void)removeDevice:(id)a3
{
  [(NSMutableArray *)self->_devices removeObject:a3];

  [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
}

- (void)removeAllDevices
{
  [(NSMutableArray *)self->_devices removeAllObjects];

  [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
}

- (void)enableMotionTrackingDevices
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[HNDDeviceManager enableMotionTrackingDevices]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager startMonitoring];
}

- (void)disableMotionTrackingDevices
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[HNDDeviceManager disableMotionTrackingDevices]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v4, 0xCu);
  }

  [(HNDDeviceManager *)self _stopTrackingMotionInput];
  [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager stopMonitoring];
}

- (void)_startTrackingMotionInput:(id)a3
{
  v4 = a3;
  v5 = ASTLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v50 = "[HNDDeviceManager _startTrackingMotionInput:]";
    v51 = 2112;
    v52 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: input: %@", buf, 0x16u);
  }

  v6 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
  v7 = [v6 allowedTrackingTypes];

  v8 = [v7 count];
  v9 = ![(HNDDeviceManager *)self headTrackingEnabled];
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if ((v9 & 1) == 0 && v8)
  {
    v10 = [(HNDDeviceManager *)self headTrackingEnabled];
  }

  if (AXDeviceSupportsOnDeviceEyeTracking() && self->_isOnDeviceEyeTrackingEnabled)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass & v10)
    {
      LOBYTE(v10) = self->_isOnDeviceEyeTrackingEnabled;
    }

    else
    {
      LOBYTE(v10) = (isKindOfClass ^ 1) & v10;
    }
  }

  if (!self->_motionTracker && (v10 & 1) != 0)
  {
    v12 = objc_alloc_init(AXSSMotionTracker);
    motionTracker = self->_motionTracker;
    self->_motionTracker = v12;

    [(AXSSMotionTracker *)self->_motionTracker setDelegate:self];
    if ([(HNDDeviceManager *)self headTrackingEnabled])
    {
      v14 = +[AXSettings sharedInstance];
      [v14 assistiveTouchHeadTrackingSensitivity];
      [(AXSSMotionTracker *)self->_motionTracker setSensitivity:?];

      v15 = +[AXSettings sharedInstance];
      -[AXSSMotionTracker setMotionTrackingMode:](self->_motionTracker, "setMotionTrackingMode:", [v15 assistiveTouchHeadTrackingMode]);

      v16 = +[AXSettings sharedInstance];
      [v16 assistiveTouchHeadTrackingMovementToleranceInJoystickMode];
      [(AXSSMotionTracker *)self->_motionTracker setJoystickModeMovementThreshold:?];

      [(HNDDeviceManager *)self _updateMotionTrackerExpressionConfig];
    }

    if (!v4)
    {
      goto LABEL_33;
    }

    v17 = objc_alloc_init(AXSSMotionTrackingInputConfiguration);
    [v17 setAllowedTrackingTypes:v7];
    v48 = v4;
    v18 = [NSArray arrayWithObjects:&v48 count:1];
    [v17 setOrderedInputPreference:v18];

    [(AXSSMotionTracker *)self->_motionTracker setInputConfiguration:v17];
    if (AXDeviceSupportsOnDeviceEyeTracking() && [v4 trackingType] == 3)
    {
      if (!self->_onDeviceEyeTrackingSmoother)
      {
        v19 = +[AXSettings sharedInstance];
        v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 assistiveTouchOnDeviceEyeTrackingSmoothingBufferSize]);

        if (v20)
        {
          v21 = [v20 unsignedIntegerValue];
          v22 = v21 >= kAXSAssistiveTouchOnDeviceEyeTrackingSmoothingBufferSizeMinUserPreference;
        }

        else
        {
          v22 = 0;
        }

        self->_shouldSmoothOnDeviceEyeTrackingPoints = v22;
        v39 = objc_opt_new();
        [v39 setDelegate:self];
        [v39 setBufferSize:{objc_msgSend(v20, "unsignedIntegerValue")}];
        v40 = +[AXSettings sharedInstance];
        [v39 setUseWeightedMovingAverage:{objc_msgSend(v40, "assistiveTouchOnDeviceEyeTrackingShouldUseWeightedAverages")}];

        v41 = +[AXSettings sharedInstance];
        [v39 setUseMedianFilter:{objc_msgSend(v41, "assistiveTouchOnDeviceEyeTrackingShouldUseMotionFilter")}];

        v42 = +[AXSettings sharedInstance];
        [v39 setUseGaussianBlur:{objc_msgSend(v42, "assistiveTouchOnDeviceEyeTrackingShouldUseGaussianBlur")}];

        onDeviceEyeTrackingSmoother = self->_onDeviceEyeTrackingSmoother;
        self->_onDeviceEyeTrackingSmoother = v39;
LABEL_31:
      }
    }

    else
    {
      pointSmoothers = self->_pointSmoothers;
      v24 = [v4 uniqueIdentifier];
      v25 = [(NSMutableDictionary *)pointSmoothers objectForKeyedSubscript:v24];

      if (!v25)
      {
        v26 = [(HNDDeviceManager *)self _smoothingBufferSizeForCurrentActiveEyeTracker];
        v20 = v26;
        v27 = 0;
        if (!self->_shouldSmoothOnDeviceEyeTrackingPoints && v26)
        {
          v28 = [v26 unsignedIntegerValue];
          v27 = v28 > kAXSAssistiveTouchMotionTrackerSmoothingBufferSizeDefault;
        }

        self->_shouldSmoothPoints = v27;
        onDeviceEyeTrackingSmoother = objc_opt_new();
        [onDeviceEyeTrackingSmoother setDelegate:self];
        v30 = [(HNDDeviceManager *)self _smoothingBufferSizeForCurrentActiveEyeTracker];
        [onDeviceEyeTrackingSmoother setBufferSize:{objc_msgSend(v30, "unsignedIntegerValue")}];

        v31 = +[AXSettings sharedInstance];
        [v31 assistiveTouchMotionTrackerSmoothingMaxDelta];
        [onDeviceEyeTrackingSmoother setSmoothingMaxDelta:?];

        v32 = +[AXSettings sharedInstance];
        [v32 assistiveTouchMotionTrackerXNormalizationOrder];
        [onDeviceEyeTrackingSmoother setXOrder:?];

        v33 = +[AXSettings sharedInstance];
        [v33 assistiveTouchMotionTrackerYNormalizationOrder];
        [onDeviceEyeTrackingSmoother setYOrder:?];

        v34 = +[AXSettings sharedInstance];
        [v34 assistiveTouchMotionTrackerXNormalizationOffset];
        [onDeviceEyeTrackingSmoother setXOffset:?];

        v35 = +[AXSettings sharedInstance];
        [v35 assistiveTouchMotionTrackerYNormalizationOffset];
        [onDeviceEyeTrackingSmoother setYOffset:?];

        v36 = +[AXSettings sharedInstance];
        [onDeviceEyeTrackingSmoother setShouldOffsetBufferPoints:{objc_msgSend(v36, "assistiveTouchMotionTrackerShouldOffsetBufferPoints")}];

        [onDeviceEyeTrackingSmoother setUseWeightedMovingAverage:1];
        v37 = self->_pointSmoothers;
        v38 = [v4 uniqueIdentifier];
        [(NSMutableDictionary *)v37 setObject:onDeviceEyeTrackingSmoother forKeyedSubscript:v38];

        goto LABEL_31;
      }
    }

LABEL_33:
    v43 = +[NSMutableArray array];
    [(HNDDeviceManager *)self setHeadTrackingPointsMovingWindow:v43];

    v44 = +[NSMutableArray array];
    [(HNDDeviceManager *)self setHeadTrackingTimestampsMovingWindow:v44];

    [(AXSSMotionTracker *)self->_motionTracker start];
    [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
    v45 = [v4 name];
    v46 = [NSString stringWithFormat:@"MotionTrackingInput: %@", v45];
    v47 = [HNDVirtualHIDMouse addActiveClientWithReason:v46];
    [(HNDDeviceManager *)self setVirtualMouseClientAssertionForActiveMotionTracker:v47];

    [(HNDDeviceManager *)self _startMonitoringEffectiveDeviceOrientation];
  }
}

- (void)_stopTrackingMotionInput
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[HNDDeviceManager _stopTrackingMotionInput]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v8, 0xCu);
  }

  [(HNDDeviceManager *)self _resetMotionTrackerErrorAndTimer];
  [(HNDDeviceManager *)self setIsTrackingInputActive:0];
  [(NSMutableDictionary *)self->_pointSmoothers removeAllObjects];
  onDeviceEyeTrackingSmoother = self->_onDeviceEyeTrackingSmoother;
  self->_onDeviceEyeTrackingSmoother = 0;

  [(HNDDeviceManager *)self hidDeviceDidStartConfiguring:0];
  [(HNDDeviceManager *)self setHidDeviceSentReservedStatus:0];
  motionTracker = self->_motionTracker;
  if (motionTracker)
  {
    [(AXSSMotionTracker *)motionTracker stop];
    [(AXSSMotionTracker *)self->_motionTracker invalidate];
    v6 = self->_motionTracker;
    self->_motionTracker = 0;

    [(HNDDeviceManager *)self _notifyDisplayManagerDeviceCountChanged];
    [(HNDDeviceManager *)self _stopMonitoringEffectiveDeviceOrientation];
    v7 = [(HNDDeviceManager *)self virtualMouseClientAssertionForActiveMotionTracker];
    [v7 invalidate];
  }
}

- (void)_startMonitoringEffectiveDeviceOrientation
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100007BF4;
  v9 = &unk_1001D3500;
  objc_copyWeak(&v10, &location);
  v4 = notify_register_dispatch("com.apple.backboardd.orientation", &self->_notifyToken, &_dispatch_main_q, &v6);

  if (v4)
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012803C(v5);
    }
  }

  [(HNDDeviceManager *)self _checkBackboardEffectiveDeviceOrientation:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_checkBackboardEffectiveDeviceOrientation
{
  if (notify_register_check("com.apple.backboardd.orientation", &dword_100214EF0))
  {
    v3 = 1;
  }

  else
  {
    v3 = dword_100214EF0 == -1;
  }

  if (!v3)
  {
    state64 = 0;
    notify_get_state(dword_100214EF0, &state64);
    [(HNDDeviceManager *)self setCurrentDeviceOrientation:state64];
    v4 = ASTLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(HNDDeviceManager *)self currentDeviceOrientation];
      *buf = 134217984;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Detected device orientation: %ld", buf, 0xCu);
    }
  }
}

- (void)_stopMonitoringEffectiveDeviceOrientation
{
  if (notify_is_valid_token([(HNDDeviceManager *)self notifyToken]))
  {
    notify_cancel([(HNDDeviceManager *)self notifyToken]);
  }

  [(HNDDeviceManager *)self setNotifyToken:0xFFFFFFFFLL];
}

- (void)setIsTrackingInputActive:(BOOL)a3
{
  if (self->_isTrackingInputActive != a3)
  {
    v3 = a3;
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100128080(v3, v5);
    }

    self->_isTrackingInputActive = v3;
    v6 = [(HNDDeviceManager *)self handManager];
    [v6 eyeTrackerIsActivelyTracking:v3];
  }
}

- (id)_smoothingBufferSizeForCurrentActiveEyeTracker
{
  v3 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  if (![v5 isHIDDevice])
  {
    v8 = 0;
    goto LABEL_7;
  }

  v6 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  v7 = [v6 trackingType];

  if (v7 != 2)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  v5 = +[AXSettings sharedInstance];
  v8 = [v5 smoothingBufferSizeForEyeTracker:v4];
LABEL_7:

LABEL_8:

  return v8;
}

- (CGRect)rotatedScreenBounds
{
  v2 = [(HNDDeviceManager *)self handManager];
  v3 = [v2 mainDisplayManager];
  [v3 screenBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)motionTrackingInputManager:(id)a3 updatedInputToUse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ASTLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 configuration];
    v10 = [v9 allowedTrackingTypes];
    *buf = 136315650;
    *&buf[4] = "[HNDDeviceManager motionTrackingInputManager:updatedInputToUse:]";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 2112;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: input: %@, allowedTrackingTypes: %@", buf, 0x20u);
  }

  [(HNDDeviceManager *)self _stopTrackingMotionInput];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = +[AXSettings sharedInstance];
    v13 = [v12 assistiveTouchHeadTrackingEnabled];
  }

  else
  {
    v13 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && AXDeviceSupportsOnDeviceEyeTracking())
  {
    v14 = +[AXSettings sharedInstance];
    v15 = [v14 onDeviceEyeTrackingEnabled];

    v16 = isKindOfClass | v15 | v13;
    if (v7 && (v16 & 1) != 0)
    {
      if (v15)
      {
        v17 = [v6 compatibleInputs];
        v18 = [v17 count] > 1;

        if (v18)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v29 = sub_100006E80;
          v30 = sub_100006E90;
          v31 = 0;
          v19 = [v6 compatibleInputs];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100008334;
          v25[3] = &unk_1001D3528;
          v7 = v7;
          v26 = v7;
          v27 = buf;
          [v19 enumerateObjectsUsingBlock:v25];

          v20 = *(*&buf[8] + 40);
          if (v20)
          {
            v21 = v20;

            v7 = v21;
          }

          _Block_object_dispose(buf, 8);
        }
      }

      goto LABEL_17;
    }
  }

  else
  {
    v16 = isKindOfClass | v13;
    if (v7 && (v16 & 1) != 0)
    {
LABEL_17:
      v22 = ASTLogCommon();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "MotionTrackingInputManager updatedInputToUse: %@", buf, 0xCu);
      }

      [(HNDDeviceManager *)self _startTrackingMotionInput:v7];
      goto LABEL_25;
    }
  }

  v23 = ASTLogCommon();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = @"NO";
    if (v16)
    {
      v24 = @"YES";
    }

    *buf = 138412546;
    *&buf[4] = v24;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "MotionTrackingInputManager not starting motion tracking. shouldStartTracking: %@, input: %@", buf, 0x16u);
  }

LABEL_25:
}

- (void)motionTracker:(id)a3 updatedState:(id)a4
{
  v5 = a4;
  if ([v5 hasFace])
  {
    v6 = [v5 error];
    [(HNDDeviceManager *)self setIsTrackingInputActive:v6 == 0];
  }

  else
  {
    [(HNDDeviceManager *)self setIsTrackingInputActive:0];
  }

  if ([(HNDDeviceManager *)self _shouldProcessState:v5])
  {
    [v5 lookAtPoint];
    [(HNDDeviceManager *)self _motionTrackerInputSourceTrackedFaceAtPoint:?];
    if ([(HNDDeviceManager *)self headTrackingEnabled])
    {
      v7 = [v5 expressions];
      [(HNDDeviceManager *)self _motionTrackerInputSourceTrackedFaceWithExpressions:v7];
LABEL_17:
    }
  }

  else
  {
    v8 = [v5 error];

    if (v8)
    {
      v9 = [v5 error];
      v10 = [v9 code];

      motionTrackerError = self->_motionTrackerError;
      if (!motionTrackerError || [(NSError *)motionTrackerError code]!= v10)
      {
        v12 = +[AXAccessQueue mainAccessQueue];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1000085E8;
        v17[3] = &unk_1001D3488;
        v17[4] = self;
        [v12 performSynchronousWritingBlock:v17];

        [(HNDDeviceManager *)self _resetMotionTrackerErrorAndTimer];
        v13 = [v5 error];
        v14 = [v13 copy];
        v15 = self->_motionTrackerError;
        self->_motionTrackerError = v14;

        if (v10 == 15)
        {
          [(HNDDeviceManager *)self setHidDeviceSentReservedStatus:1];
        }

        else if (v10 == 14)
        {
          [(HNDDeviceManager *)self hidDeviceDidStartConfiguring:1];
        }

        else
        {
          [(HNDDeviceManager *)self _motionTrackerInputSourceFailedToTrackFaceWithErrorCode:v10];
        }
      }

      if ([(HNDDeviceManager *)self headTrackingEnabled])
      {
        v16 = +[NSMutableArray array];
        [(HNDDeviceManager *)self setHeadTrackingPointsMovingWindow:v16];

        v7 = +[NSMutableArray array];
        [(HNDDeviceManager *)self setHeadTrackingTimestampsMovingWindow:v7];
        goto LABEL_17;
      }
    }
  }
}

- (BOOL)_shouldProcessState:(id)a3
{
  v4 = a3;
  v5 = [v4 error];
  if (v5 && (v6 = v5, v7 = [v4 hasFace], v6, v7) && (objc_msgSend(v4, "error"), v8 = objc_claimAutoreleasedReturnValue(), v9 = -[HNDDeviceManager _isTrackingErrorWithFaceImportant:](self, "_isTrackingErrorWithFaceImportant:", objc_msgSend(v8, "code")), v8, (v9 & 1) != 0) || !objc_msgSend(v4, "hasFace"))
  {
    v12 = 0;
  }

  else if (AXDeviceSupportsOnDeviceEyeTracking() && self->_isOnDeviceEyeTrackingEnabled && self->_currentEyeTrackingErrorCode && (+[ASTUIGazeEnrollmentManager sharedManager](ASTUIGazeEnrollmentManager, "sharedManager"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 enrollmentComplete], v10, (v11 & 1) == 0))
  {
    self->_currentEyeTrackingErrorCode = 0;
    v14 = [(HNDDeviceManager *)self handManager];
    v15 = [v14 mainDisplayManager];
    v12 = 1;
    [v15 setNeedsRecalibration:1];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_motionTrackerInputSourceTrackedFaceWithExpressions:(id)a3
{
  v4 = a3;
  [(HNDDeviceManager *)self headTrackingExpressionToActionMapping];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100008980;
  v5 = v24[3] = &unk_1001D3578;
  v25 = v5;
  v26 = self;
  v6 = objc_retainBlock(v24);
  v7 = [(HNDDeviceManager *)self currentFacialExpressions];

  if (!v7)
  {
    v8 = +[NSSet set];
    [(HNDDeviceManager *)self setCurrentFacialExpressions:v8];
  }

  v9 = [(HNDDeviceManager *)self currentFacialExpressions];
  v10 = [v9 isEqual:v4];

  if ((v10 & 1) == 0)
  {
    v11 = [(HNDDeviceManager *)self currentFacialExpressions];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100008C7C;
    v21[3] = &unk_1001D35A0;
    v12 = v4;
    v22 = v12;
    v13 = v6;
    v23 = v13;
    [v11 enumerateObjectsUsingBlock:v21];

    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_100008CE8;
    v18 = &unk_1001D35A0;
    v19 = self;
    v20 = v13;
    [v12 enumerateObjectsUsingBlock:&v15];
    v14 = [v12 copy];
    [(HNDDeviceManager *)self setCurrentFacialExpressions:v14];
  }
}

- (void)_motionTrackerInputSourceTrackedFaceAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(HNDDeviceManager *)self _resetMotionTrackerErrorAndTimer];
  [(HNDDeviceManager *)self hidDeviceDidStartConfiguring:0];
  [(HNDDeviceManager *)self setHidDeviceSentReservedStatus:0];
  if ([(HNDDeviceManager *)self headTrackingEnabled]&& [(HNDDeviceManager *)self ignoreMovementDuringFacialExpressionActivation])
  {
    return;
  }

  v6 = [(HNDDeviceManager *)self handManager];
  v7 = [v6 mainDisplayManager];
  v82 = 0;
  v83 = &v82;
  v84 = 0x3010000000;
  v85 = &unk_100179B77;
  v86 = x;
  v87 = y;
  v8 = self->_shouldSmoothPoints && !self->_shouldSmoothOnDeviceEyeTrackingPoints;
  v9 = [(HNDDeviceManager *)self motionTrackingQuitCurrentAppTimer];
  [v9 invalidate];

  if (v8)
  {
    v10 = +[AXAccessQueue mainAccessQueue];
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_1000093F0;
    v77[3] = &unk_1001D35C8;
    v77[4] = self;
    v80 = x;
    v81 = y;
    v78 = v6;
    v79 = &v82;
    [v10 performSynchronousWritingBlock:v77];
  }

  v11 = AXDeviceSupportsOnDeviceEyeTracking();
  v12 = CGPointZero.y;
  v13 = v12;
  v14 = CGPointZero.x;
  if (v11)
  {
    v13 = CGPointZero.y;
    v14 = CGPointZero.x;
    if (self->_isOnDeviceEyeTrackingEnabled)
    {
      [(HNDDeviceManager *)self _resetCalibrationTimer];
      if (self->_shouldSmoothOnDeviceEyeTrackingPoints)
      {
        v15 = +[AXAccessQueue mainAccessQueue];
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_1000094D8;
        v76[3] = &unk_1001D34D8;
        *&v76[6] = x;
        *&v76[7] = y;
        v76[4] = self;
        v76[5] = &v82;
        [v15 performSynchronousWritingBlock:v76];
      }

      if ([v7 isShowingCalibrationUI])
      {
        self->_lastSeenLookAtPoint = v83[2];
      }

      shouldShowUncalibratedPoints = self->_shouldShowUncalibratedPoints;
      if (shouldShowUncalibratedPoints)
      {
LABEL_15:
        [v7 setNeedsRecalibration:!shouldShowUncalibratedPoints];
        v13 = v12;
        v14 = CGPointZero.x;
        goto LABEL_20;
      }

      if (![(ASTUIGazeEnrollmentManager *)self->_gazeEnrollmentManager enrollmentComplete])
      {
        v13 = v12;
        v14 = CGPointZero.x;
        if ([v7 isShowingCalibrationUI])
        {
          goto LABEL_20;
        }

        v19 = [v6 mainDisplayManager];
        v20 = [v19 didForceDimissCalibration];

        v13 = v12;
        v14 = CGPointZero.x;
        if (v20)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      [(ASTUIGazeEnrollmentManager *)self->_gazeEnrollmentManager calibratedGazePointForGazePoint:v83[2].x, v83[2].y];
      v14 = v17;
      v13 = v18;
    }
  }

LABEL_20:
  v21 = [v6 shouldIgnoreHIDDeviceMovementWhileMouseActive];
  if (v21 & 1 | ((sub_100042C64() & 1) == 0) || (-[HNDDeviceManager handManager](self, "handManager"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 dwellControlPaused], v22, (v23 & 1) != 0))
  {
    if ((v21 & 1) == 0)
    {
      [v6 setLastMoveWasMouse:0];
      [v6 moveFingerToPoint:{v83[2].x, v83[2].y}];
    }
  }

  else
  {
    v24 = [v6 systemPointerController];

    if (v24)
    {
      v25 = [v6 systemPointerController];
      [v25 currentAbsoluteSystemPointerPoint];
    }

    else
    {
      v25 = [v6 mainDisplayManager];
      [v25 screenPoint];
    }

    [v7 convertPointToPortraitUpOrientation:?];
    v27 = v26;
    v29 = v28;

    if (v14 == CGPointZero.x && v13 == v12)
    {
      [v7 convertPointToPortraitUpOrientation:{v83[2].x, v83[2].y}];
    }

    else
    {
      [v7 convertPointToPortraitUpOrientation:{v14, v13}];
    }

    v32 = v30;
    v33 = v31;
    if (AXDeviceSupportsOnDeviceEyeTracking())
    {
      v34 = +[AXSettings sharedInstance];
      v35 = [v34 onDeviceEyeTrackingEnabled];

      if (v35)
      {
        v75 = v27;
        v36 = [v6 currentDisplayManager];
        [v36 portraitUpScreenBounds];
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v44 = v43;

        v88.origin.x = v38;
        v88.origin.y = v40;
        v88.size.width = v42;
        v88.size.height = v44;
        MinX = CGRectGetMinX(v88);
        v89.origin.x = v38;
        v89.origin.y = v40;
        v89.size.width = v42;
        v89.size.height = v44;
        v46 = CGRectGetMaxX(v89) + -10.0;
        if (v32 < v46)
        {
          v46 = v32;
        }

        if (MinX + 10.0 >= v46)
        {
          v32 = MinX + 10.0;
        }

        else
        {
          v32 = v46;
        }

        v90.origin.x = v38;
        v90.origin.y = v40;
        v90.size.width = v42;
        v90.size.height = v44;
        MinY = CGRectGetMinY(v90);
        v91.origin.x = v38;
        v91.origin.y = v40;
        v91.size.width = v42;
        v91.size.height = v44;
        v48 = CGRectGetMaxY(v91) + -10.0;
        if (v33 < v48)
        {
          v48 = v33;
        }

        if (MinY + 10.0 >= v48)
        {
          v33 = MinY + 10.0;
        }

        else
        {
          v33 = v48;
        }

        v27 = v75;
      }
    }

    [(HNDDeviceManager *)self convertPointToDeviceOrientation:v32, v33];
    v50 = v49;
    v52 = v51;
    [(HNDDeviceManager *)self convertPointToDeviceOrientation:v27, v29];
    v54 = v53;
    v56 = v55;
    v57 = [(HNDDeviceManager *)self handManager];
    v58 = [v57 mainDisplayManager];
    v59 = [v58 isViewZoomed];

    if (v59)
    {
      v60 = [(HNDDeviceManager *)self handManager];
      v61 = [v60 mainDisplayManager];
      [v61 zoomConvertToReplicatedViewFromTargetPoint:{v50, v52}];
      v50 = v62;
      v52 = v63;
    }

    if ([(HNDDeviceManager *)self headTrackingEnabled])
    {
      v64 = [(HNDDeviceManager *)self handManager];
      v65 = [v64 currentDisplayManager];
      [v65 portraitUpScreenBounds];
      v67 = v66;
      v69 = v68;

      v70 = [(HNDDeviceManager *)self deviceOrientionIsLandscape];
      if (v70)
      {
        v71 = v69;
      }

      else
      {
        v71 = v67;
      }

      if (v70)
      {
        v72 = v67;
      }

      else
      {
        v72 = v69;
      }

      v73 = v50 / v71;
      v74 = v52 / v72;
      [(HNDDeviceManager *)self _updateHeadTrackingPointsMovingWindowWithNormalizedPoint:v50 / v71, v52 / v72];
      [HNDVirtualHIDMouse handleHeadTrackingMovementWithPoint:v73, v74];
    }

    else
    {
      [HNDVirtualHIDMouse handleEyeTrackingMovementWithDelta:v50 - v54, v52 - v56];
    }
  }

  _Block_object_dispose(&v82, 8);
}

- (void)_updateHeadTrackingPointsMovingWindowWithNormalizedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(HNDDeviceManager *)self headTrackingPointsMovingWindow];
  if (!v6 || (v7 = v6, [(HNDDeviceManager *)self headTrackingTimestampsMovingWindow], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v9 = +[NSMutableArray array];
    [(HNDDeviceManager *)self setHeadTrackingPointsMovingWindow:v9];

    v10 = +[NSMutableArray array];
    [(HNDDeviceManager *)self setHeadTrackingTimestampsMovingWindow:v10];
  }

  v11 = [(HNDDeviceManager *)self headTrackingPointsMovingWindow];
  v12 = [NSValue valueWithPoint:x, y];
  [v11 addObject:v12];

  v13 = mach_absolute_time();
  v14 = [(HNDDeviceManager *)self headTrackingTimestampsMovingWindow];
  v15 = [NSNumber numberWithUnsignedLongLong:v13];
  [v14 addObject:v15];

  v16 = [(HNDDeviceManager *)self headTrackingPointsMovingWindow];
  v17 = [v16 count];

  if (v17)
  {
    while (1)
    {
      v18 = [(HNDDeviceManager *)self headTrackingTimestampsMovingWindow];
      v25 = [v18 firstObject];

      [v25 unsignedLongLongValue];
      if (AXMachTimeToNanoseconds() / 1000000000.0 <= 0.2)
      {
        break;
      }

      v19 = [(HNDDeviceManager *)self headTrackingPointsMovingWindow];
      v20 = [v19 firstObject];

      v21 = [(HNDDeviceManager *)self headTrackingPointsMovingWindow];
      [v21 removeObjectAtIndex:0];

      v22 = [(HNDDeviceManager *)self headTrackingTimestampsMovingWindow];
      [v22 removeObjectAtIndex:0];

      [v20 pointValue];
      [(HNDDeviceManager *)self setDelayedHeadTrackingPointForExpressions:?];

      v23 = [(HNDDeviceManager *)self headTrackingPointsMovingWindow];
      v24 = [v23 count];

      if (!v24)
      {
        return;
      }
    }
  }
}

- (CGPoint)convertPointToDeviceOrientation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(HNDDeviceManager *)self handManager];
  v7 = [v6 currentDisplayManager];
  [v7 portraitUpScreenBounds];
  v9 = v8;
  v11 = v10;

  v12 = [(HNDDeviceManager *)self currentDeviceOrientation];
  v13 = v11 - y;
  v14 = v9 - x;
  if (v12 == 2)
  {
    v15 = v9 - x;
  }

  else
  {
    v15 = x;
  }

  if (v12 == 2)
  {
    v16 = v11 - y;
  }

  else
  {
    v16 = y;
  }

  if (v12 == 3)
  {
    v15 = y;
  }

  else
  {
    v14 = v16;
  }

  if (v12 == 4)
  {
    v14 = x;
  }

  else
  {
    v13 = v15;
  }

  result.y = v14;
  result.x = v13;
  return result;
}

- (void)_processCameraStolenError
{
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&stru_1001D3608 block:5.0];
  [(HNDDeviceManager *)self setMotionTrackingQuitCurrentAppTimer:v3];
}

- (void)_processMotionTrackerErrorsForOnDeviceEyeTrackingWithErrorCode:(int64_t)a3
{
  if (self->_currentEyeTrackingErrorCode != a3)
  {
    self->_currentEyeTrackingErrorCode = a3;
    [(HNDDeviceManager *)self _resetCalibrationTimer];
  }

  v5 = 60.0;
  v6 = a3 - 2;
  if (a3 == 11)
  {
    v7 = 0;
  }

  else
  {
    v5 = 60.0;
    v7 = 1;
  }

  if (a3 == 4)
  {
    v5 = 5.0;
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v6 >= 2)
  {
    v9 = v5;
  }

  else
  {
    v9 = 5.0;
  }

  if (v6 >= 2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(HNDDeviceManager *)self handManager:v5];
  v12 = [v11 mainDisplayManager];
  if ([v12 isShowingCalibrationUI] && (-[ASTUIGazeEnrollmentManager enrollmentComplete](self->_gazeEnrollmentManager, "enrollmentComplete") & 1) == 0)
  {

    if (a3 == 11)
    {
      goto LABEL_20;
    }

    v13 = [(HNDDeviceManager *)self handManager];
    v14 = [v13 mainDisplayManager];
    [v14 dismissCalibrationUI];

    v11 = [(HNDDeviceManager *)self handManager];
    v12 = [v11 mainDisplayManager];
    [v12 setNeedsRecalibration:v10];
  }

LABEL_20:
  if (!self->_eyeTrackingRecalibrationTimer)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100009AFC;
    v17[3] = &unk_1001D3630;
    v17[4] = self;
    v18 = v10;
    v15 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v17 block:v9];
    eyeTrackingRecalibrationTimer = self->_eyeTrackingRecalibrationTimer;
    self->_eyeTrackingRecalibrationTimer = v15;
  }
}

- (void)_motionTrackerInputSourceFailedToTrackFaceWithErrorCode:(int64_t)a3
{
  if (a3 == 11)
  {
    v5 = 5.0;
  }

  else
  {
    v5 = 1.0;
  }

  AXSSHumanReadableDescriptionForMotionTrackingErrorCode();
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100009D08;
  v17 = &unk_1001D3658;
  v6 = v18 = self;
  v19 = v6;
  v7 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:&v14 block:v5];
  motionTrackerErrorTimer = self->_motionTrackerErrorTimer;
  self->_motionTrackerErrorTimer = v7;

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    v9 = [AXSettings sharedInstance:v14];
    if ([v9 onDeviceEyeTrackingEnabled])
    {
      v10 = 1;
    }

    else
    {
      v11 = +[AXSettings sharedInstance];
      v10 = [v11 switchControlOnDeviceEyeTrackingEnabled];
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = [AXSettings sharedInstance:v14];
  v13 = [v12 assistiveTouchHeadTrackingEnabled];

  if (a3 == 7)
  {
    if ((v10 | v13))
    {
      [(HNDDeviceManager *)self _processCameraStolenError];
    }
  }

  else if (v10)
  {
    [(HNDDeviceManager *)self _processMotionTrackerErrorsForOnDeviceEyeTrackingWithErrorCode:a3];
  }
}

- (void)hidDeviceDidStartConfiguring:(BOOL)a3
{
  if (self->_hidDeviceIsConfiguring != a3)
  {
    self->_hidDeviceIsConfiguring = a3;
    v6 = [(HNDDeviceManager *)self handManager];
    v9 = v6;
    if (a3)
    {
      [v6 prepareForHIDDeviceConfiguration];

      [(NSError *)self->_motionTrackerError code];
      v9 = AXSSHumanReadableDescriptionForMotionTrackingErrorCode();
      v7 = [(HNDDeviceManager *)self handManager];
      v8 = [v7 mainDisplayManager];
      [v8 showBubbleNotificationWithError:v9 duration:5.0];
    }

    else
    {
      [v6 didCompleteHIDDeviceConfiguration];
    }
  }
}

- (void)setHidDeviceSentReservedStatus:(BOOL)a3
{
  if (self->_hidDeviceSentReservedStatus != a3)
  {
    self->_hidDeviceSentReservedStatus = a3;
    v5 = [(HNDDeviceManager *)self handManager];
    v6 = v5;
    if (a3)
    {
      [v5 hideUIForEyeTracker];
    }

    else
    {
      [v5 showUIForEyeTracker];
    }
  }
}

- (void)_resetMotionTrackerErrorAndTimer
{
  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    self->_currentEyeTrackingErrorCode = 0;
  }

  motionTrackerError = self->_motionTrackerError;
  self->_motionTrackerError = 0;

  [(NSTimer *)self->_motionTrackerErrorTimer invalidate];
  motionTrackerErrorTimer = self->_motionTrackerErrorTimer;
  self->_motionTrackerErrorTimer = 0;

  v6 = [(HNDDeviceManager *)self handManager];
  v5 = [v6 mainDisplayManager];
  [v5 hideBubbleNotification];
}

- (id)_currentPointSmoother
{
  if (AXDeviceSupportsOnDeviceEyeTracking() && ([(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse], v3 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v3, (isKindOfClass & 1) != 0))
  {
    v5 = self->_onDeviceEyeTrackingSmoother;
  }

  else
  {
    v6 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
    v7 = [v6 uniqueIdentifier];

    if (v7)
    {
      v5 = [(NSMutableDictionary *)self->_pointSmoothers objectForKeyedSubscript:v7];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (int64_t)deviceCount
{
  v3 = [(HNDDeviceManager *)self mainDeviceIsMotionTracker];
  v4 = [(NSMutableSet *)self->_connectedPointerDevices count]+ v3;
  return [(NSMutableArray *)self->_devices count]+ v4;
}

- (BOOL)mainDeviceIsPointer
{
  v3 = [(NSMutableArray *)self->_devices indexesOfObjectsPassingTest:&stru_1001D3698];
  if (-[HNDDeviceManager mainDeviceIsMotionTracker](self, "mainDeviceIsMotionTracker") || -[NSMutableSet count](self->_connectedPointerDevices, "count") || [v3 count] && (v6 = -[HNDDeviceManager deviceCount](self, "deviceCount"), v6 == objc_msgSend(v3, "count")))
  {
    v4 = ![(HNDDeviceManager *)self shouldDisableMainPointerStatusForUnitTesting];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)mainDeviceIsMotionTracker
{
  if ([(HNDDeviceManager *)self forceEyeTrackerExperience])
  {
    isOnDeviceEyeTrackingEnabled = 1;
  }

  else if (AXDeviceSupportsOnDeviceEyeTracking() && [(HNDDeviceManager *)self mainDeviceIsOnDeviceEyeTracker])
  {
    isOnDeviceEyeTrackingEnabled = self->_isOnDeviceEyeTrackingEnabled;
  }

  else
  {
    v4 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
    if (v4)
    {
      isOnDeviceEyeTrackingEnabled = [(AXSSMotionTracker *)self->_motionTracker isTracking];
    }

    else
    {
      isOnDeviceEyeTrackingEnabled = 0;
    }
  }

  return isOnDeviceEyeTrackingEnabled & 1;
}

- (BOOL)mainDeviceIsThirdPartyTracker
{
  v3 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v7 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  v8 = [v7 trackingType] == 2;

  return v8;
}

- (BOOL)mainDeviceIsOnDeviceEyeTracker
{
  if (!AXDeviceSupportsOnDeviceEyeTracking())
  {
    return 0;
  }

  v3 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v7 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager inputToUse];
  v8 = [v7 trackingType] == 3;

  return v8;
}

- (void)_onDeviceEyeTrackingToggled
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 onDeviceEyeTrackingEnabled];

  if (v4 != [(HNDDeviceManager *)self isOnDeviceEyeTrackingEnabled]&& AXDeviceSupportsOnDeviceEyeTracking())
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (v4)
      {
        v6 = @"YES";
      }

      v9 = 136315394;
      v10 = "[HNDDeviceManager _onDeviceEyeTrackingToggled]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: onDeviceEyeTrackingEnabled: %@", &v9, 0x16u);
    }

    [(HNDDeviceManager *)self setIsOnDeviceEyeTrackingEnabled:v4];
    v7 = [(HNDDeviceManager *)self handManager];
    v8 = [v7 mainDisplayManager];
    if ([v8 shouldShowFaceGuidance] & 1) != 0 || ((v4 ^ 1))
    {
      if ((v4 & 1) == 0)
      {
        [(HNDDeviceManager *)self removeOnDeviceEyeTrackingAsInput];
      }
    }

    else
    {
      [(HNDDeviceManager *)self addOnDeviceEyeTrackingAsInput];
    }
  }
}

- (void)removeOnDeviceEyeTrackingAsInput
{
  v3 = ASTLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[HNDDeviceManager removeOnDeviceEyeTrackingAsInput]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    v4 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
    v5 = [v4 allowedTrackingTypes];
    v6 = [v5 mutableCopy];

    [v6 removeObject:&off_1001E4FE0];
    [v6 addObject:&off_1001E4FB0];
    v7 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
    v8 = [v6 copy];
    [v7 setAllowedTrackingTypes:v8];

    [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager setConfiguration:v7];
    motionTrackingInputManager = self->_motionTrackingInputManager;
    v10 = [(AXSSMotionTrackingInputManager *)motionTrackingInputManager inputToUse];
    [(HNDDeviceManager *)self motionTrackingInputManager:motionTrackingInputManager updatedInputToUse:v10];
  }
}

- (void)addOnDeviceEyeTrackingAsInput
{
  v3 = ASTLogDeviceManager();
  v4 = os_signpost_id_generate(v3);

  if (AXDeviceSupportsOnDeviceEyeTracking())
  {
    v5 = ASTLogDeviceManager();
    v6 = v5;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Add Device Tracking As Input", "", &v17, 2u);
    }

    v7 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
    v8 = [v7 allowedTrackingTypes];
    v9 = [v8 mutableCopy];

    [v9 addObject:&off_1001E4FE0];
    [v9 removeObject:&off_1001E4FC8];
    [v9 removeObject:&off_1001E4FB0];
    v10 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
    v11 = [v9 copy];
    [v10 setAllowedTrackingTypes:v11];

    [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager setConfiguration:v10];
    v12 = ASTLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v17 = 136315394;
      v18 = "[HNDDeviceManager addOnDeviceEyeTrackingAsInput]";
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s allowedTrackingTypes: %@", &v17, 0x16u);
    }

    motionTrackingInputManager = self->_motionTrackingInputManager;
    v14 = [(AXSSMotionTrackingInputManager *)motionTrackingInputManager inputToUse];
    [(HNDDeviceManager *)self motionTrackingInputManager:motionTrackingInputManager updatedInputToUse:v14];

    v15 = ASTLogDeviceManager();
    v16 = v15;
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_END, v4, "Add Device Tracking As Input", "", &v17, 2u);
    }
  }
}

- (void)_resetCalibrationTimer
{
  [(NSTimer *)self->_eyeTrackingRecalibrationTimer invalidate];
  eyeTrackingRecalibrationTimer = self->_eyeTrackingRecalibrationTimer;
  self->_eyeTrackingRecalibrationTimer = 0;

  self->_hasExceededRecalibrationTimeThreshold = 0;
}

- (void)_headTrackingToggled
{
  v3 = ASTLogDeviceManager();
  v4 = os_signpost_id_generate(v3);

  v5 = ASTLogDeviceManager();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Head Tracking Toggled", "", &v20, 2u);
  }

  v7 = +[AXSettings sharedInstance];
  v8 = [v7 assistiveTouchHeadTrackingEnabled];

  if (v8 != [(HNDDeviceManager *)self headTrackingEnabled])
  {
    v9 = ASTLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      if (v8)
      {
        v10 = @"YES";
      }

      v20 = 136315394;
      v21 = "[HNDDeviceManager _headTrackingToggled]";
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: headTrackingEnabled: %@", &v20, 0x16u);
    }

    [(HNDDeviceManager *)self setHeadTrackingEnabled:v8];
    v11 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
    v12 = [v11 allowedTrackingTypes];
    v13 = [v12 mutableCopy];

    if (v8)
    {
      [v13 addObject:&off_1001E4FC8];
      [v13 removeObject:&off_1001E4FE0];
      [v13 removeObject:&off_1001E4FB0];
    }

    else
    {
      [v13 removeObject:&off_1001E4FC8];
      [v13 addObject:&off_1001E4FB0];
    }

    v14 = [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager configuration];
    v15 = [v13 copy];
    [v14 setAllowedTrackingTypes:v15];

    [(AXSSMotionTrackingInputManager *)self->_motionTrackingInputManager setConfiguration:v14];
    motionTrackingInputManager = self->_motionTrackingInputManager;
    v17 = [(AXSSMotionTrackingInputManager *)motionTrackingInputManager inputToUse];
    [(HNDDeviceManager *)self motionTrackingInputManager:motionTrackingInputManager updatedInputToUse:v17];
  }

  v18 = ASTLogDeviceManager();
  v19 = v18;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(v20) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, v4, "Head Tracking Toggled", "", &v20, 2u);
  }
}

- (void)_updateMotionTrackerMode
{
  v3 = +[AXSettings sharedInstance];
  -[AXSSMotionTracker setMotionTrackingMode:](self->_motionTracker, "setMotionTrackingMode:", [v3 assistiveTouchHeadTrackingMode]);
}

- (void)_updateMotionTrackerExpressionConfig
{
  motionTracker = self->_motionTracker;
  if (motionTracker)
  {
    v4 = [(AXSSMotionTracker *)motionTracker expressionConfiguration];
    v5 = [v4 copy];

    if (!v5)
    {
      v5 = +[AXSSMotionTrackingExpressionConfiguration defaultExpressionConfiguration];
    }

    v6 = +[AXSettings sharedInstance];
    v7 = [v6 assistiveTouchHeadTrackingExpressionToSensitivityMapping];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v19;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [v8 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i), v18}];
          v15 = [v14 unsignedIntegerValue];
          v16 = AXAssistiveTouchAXSSFacialExpressionForHeadTrackingExpression();
          if (v15)
          {
            v17 = v16;
            if ([v5 sensitivityForFacialExpression:v16]!= v15)
            {
              [v5 setSensitivity:v15 forFacialExpression:v17];
              v11 = 1;
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);

      if (v11)
      {
        [(AXSSMotionTracker *)self->_motionTracker setExpressionConfiguration:v5];
      }
    }

    else
    {
    }
  }

  else
  {
    v5 = ASTLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10012811C(v5);
    }
  }
}

- (void)_updateMotionTrackerActionConfig
{
  v4 = +[AXSettings sharedInstance];
  v3 = [v4 assistiveTouchHeadTrackingExpressionToActionMapping];
  [(HNDDeviceManager *)self setHeadTrackingExpressionToActionMapping:v3];
}

- (void)_notifyDisplayManagerDeviceCountChanged
{
  v3 = [(HNDDeviceManager *)self handManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000AE78;
  v4[3] = &unk_1001D36C0;
  v4[4] = self;
  [v3 enumerateDisplayManagersWithBlock:v4];
}

- (void)mousePointerDevicesDidConnect:(id)a3
{
  v4 = a3;
  v3 = v4;
  AXPerformBlockOnMainThread();
}

- (void)mousePointerDevicesDidDisconnect:(id)a3
{
  v4 = a3;
  v3 = v4;
  AXPerformBlockOnMainThread();
}

- (CGPoint)lastSeenLookAtPoint
{
  x = self->_lastSeenLookAtPoint.x;
  y = self->_lastSeenLookAtPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (HNDHandManager)handManager
{
  WeakRetained = objc_loadWeakRetained(&self->_handManager);

  return WeakRetained;
}

- (CGPoint)delayedHeadTrackingPointForExpressions
{
  x = self->_delayedHeadTrackingPointForExpressions.x;
  y = self->_delayedHeadTrackingPointForExpressions.y;
  result.y = y;
  result.x = x;
  return result;
}

@end