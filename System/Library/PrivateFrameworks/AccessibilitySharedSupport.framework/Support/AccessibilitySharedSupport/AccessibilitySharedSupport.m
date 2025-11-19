void sub_1000017B0(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  [*(a1 + 32) set_xpcConnections:v2];

  v3 = +[NSMutableArray array];
  [*(a1 + 32) set_trackingXPCConnections:v3];
}

void sub_100001CA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 112));
  _Unwind_Resume(a1);
}

void sub_100001CE0(uint64_t a1)
{
  v2 = AXSSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100029554();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) _handleConnectionClosedOnBackgroundThread:WeakRetained];
  }
}

void sub_100001D4C(uint64_t a1)
{
  v2 = AXSSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100029590();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [*(a1 + 32) _handleConnectionClosedOnBackgroundThread:WeakRetained];
  }
}

void sub_100001DB8(uint64_t a1)
{
  v2 = [*(a1 + 32) _xpcConnections];
  [v2 addObject:*(a1 + 40)];
}

void sub_100001F6C(uint64_t a1)
{
  v2 = [*(a1 + 32) _trackingXPCConnections];
  v3 = [v2 containsObject:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v4 = [*(a1 + 32) _trackingXPCConnections];
    [v4 addObject:*(a1 + 40)];
  }
}

void sub_1000021A8(uint64_t a1)
{
  v2 = [*(a1 + 32) _trackingXPCConnections];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) _trackingXPCConnections];
    [v4 removeObject:*(a1 + 40)];
  }
}

void sub_10000234C(uint64_t a1)
{
  v1 = [*(a1 + 32) _lookAtPointTracker];
  [v1 recalibrateFace];
}

BOOL sub_1000024CC(uint64_t a1)
{
  v1 = [*(a1 + 32) _lookAtPointTracker];
  v2 = v1 != 0;

  return v2;
}

uint64_t sub_100002504(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_100002608(uint64_t a1)
{
  if (([*(a1 + 32) _showDebugOverlay] & 1) == 0)
  {
    [*(a1 + 32) set_showDebugOverlay:1];
    v2 = [*(a1 + 32) _lookAtPointTracker];
    [v2 setDebugOverlayEnabled:1];
  }
}

void sub_10000274C(uint64_t a1)
{
  if ([*(a1 + 32) _showDebugOverlay])
  {
    [*(a1 + 32) set_showDebugOverlay:0];
    v2 = [*(a1 + 32) _lookAtPointTracker];
    [v2 setDebugOverlayEnabled:0];
  }
}

void sub_1000028D0(uint64_t a1)
{
  if ([*(a1 + 32) _motionTrackingMode] != *(a1 + 40))
  {
    [*(a1 + 32) set_motionTrackingMode:?];
    v2 = *(a1 + 40);
    v3 = [*(a1 + 32) _lookAtPointTracker];
    [v3 setMotionTrackingMode:v2];
  }
}

void sub_100002A5C(uint64_t a1)
{
  [*(a1 + 32) set_sensitivity:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _lookAtPointTracker];
  [v3 setSensitivity:v2];
}

id sub_100002BE8(uint64_t a1)
{
  [*(a1 + 32) set_inputConfiguration:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _inputManager];
  [v3 setConfiguration:v2];

  v4 = *(a1 + 32);

  return [v4 _startOrUpdateTrackerIfNeeded];
}

void sub_100002D7C(uint64_t a1)
{
  [*(a1 + 32) set_expressionConfiguration:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _lookAtPointTracker];
  [v3 setExpressionConfiguration:v2];
}

void sub_100002EE4(uint64_t a1)
{
  [*(a1 + 32) set_joystickModeMovementThreshold:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) _lookAtPointTracker];
  [v3 setJoystickModeMovementThreshold:v2];
}

void sub_100002FC0(uint64_t a1)
{
  v2 = [*(a1 + 32) _state];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) _state];
    v5 = [v4 error];

    if (!v5)
    {
      v6 = [*(a1 + 32) _state];
      v7 = [v6 copy];

      [v7 setLookAtPoint:{*(a1 + 40), *(a1 + 48)}];
      [*(a1 + 32) _updateState:v7];
    }
  }

  v8 = AXSSLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromPoint(*(a1 + 40));
    v12 = 136315394;
    v13 = "[AXMTDaemon setLookAtPoint:]_block_invoke";
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AXMTDaemon: %s: %@", &v12, 0x16u);
  }

  v10 = [*(a1 + 32) _lookAtPointTracker];

  if (v10)
  {
    v11 = [*(a1 + 32) _lookAtPointTracker];
    [v11 updateTrackedOnScreenPoint:{*(a1 + 40), *(a1 + 48)}];
  }
}

void sub_1000032F4(uint64_t a1)
{
  v2 = +[AXMTVideoFilePlayManager shared];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000033AC;
  v5[3] = &unk_100048A50;
  v6 = *(a1 + 48);
  [v2 playVideoAtURL:v3 onMotionTrackingVideoFileInput:v4 completionHandler:v5];
}

void sub_1000035E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000035FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003614(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 _trackingXPCConnections];
  }

  else
  {
    [v3 _xpcConnections];
  }
  v5 = ;
  v4 = [v5 copy];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
}

uint64_t sub_100003698(uint64_t a1, void *a2)
{
  [a2 remoteObjectProxyWithErrorHandler:&stru_100048B08];
  objc_claimAutoreleasedReturnValue();
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }

  return _objc_release_x1();
}

void sub_100003704(id a1, NSError *a2)
{
  v2 = a2;
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1000295CC();
  }
}

void sub_1000038F4(uint64_t a1)
{
  v2 = [*(a1 + 32) _trackingXPCConnections];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) _trackingXPCConnections];
    [v4 removeObject:*(a1 + 40)];
  }

  v5 = [*(a1 + 32) _xpcConnections];
  v6 = [v5 containsObject:*(a1 + 40)];

  if (v6)
  {
    v7 = [*(a1 + 32) _xpcConnections];
    [v7 removeObject:*(a1 + 40)];
  }
}

void sub_100003ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003AE4(uint64_t a1)
{
  v2 = [*(a1 + 32) _trackingXPCConnections];
  v3 = [v2 count];

  if (!v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void *sub_1000046A0(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1000544A0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1000047E0;
    v5[4] = &unk_100048BE0;
    v5[5] = v5;
    v6 = off_100048BC8;
    v7 = 0;
    qword_1000544A0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1000544A0;
    if (qword_1000544A0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1000544A0;
LABEL_5:
  result = dlsym(v2, "AXDevicePrimeDisplayManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100054498 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000047E0()
{
  result = _sl_dlopen();
  qword_1000544A0 = result;
  return result;
}

uint64_t start()
{
  v0 = AXSSLogForCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    sub_1000297B8(v0);
  }

  v1 = objc_opt_new();
  [v1 startDaemon];
  v2 = AXSSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1000297FC(v2);
  }

  return 0;
}

id sub_100004EF8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1000544A8;
  v7 = qword_1000544A8;
  if (!qword_1000544A8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000082F4;
    v3[3] = &unk_100048BA8;
    v3[4] = &v4;
    sub_1000082F4(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100004FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000082F4(uint64_t a1)
{
  sub_10000834C();
  result = objc_getClass("ARFaceTrackingConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000544A8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100008A78();
    return sub_10000834C();
  }

  return result;
}

uint64_t sub_10000834C()
{
  v3[0] = 0;
  if (!qword_1000544B0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10000844C;
    v3[4] = &unk_100048BE0;
    v3[5] = v3;
    v4 = off_100048C00;
    v5 = 0;
    qword_1000544B0 = _sl_dlopen();
  }

  v0 = qword_1000544B0;
  v1 = v3[0];
  if (!qword_1000544B0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_10000844C()
{
  result = _sl_dlopen();
  qword_1000544B0 = result;
  return result;
}

Class sub_1000084C0(uint64_t a1)
{
  sub_10000834C();
  result = objc_getClass("ARSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000544B8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100008AA0();
    return sub_100008518(v3);
  }

  return result;
}

Class sub_100008518(uint64_t a1)
{
  sub_10000834C();
  result = objc_getClass("ARFaceAnchor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000544C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = sub_100008AC8();
    return sub_100008570(v3);
  }

  return result;
}

void *sub_100008570(uint64_t a1)
{
  v2 = sub_10000834C();
  result = dlsym(v2, "ARNoseRidgeTip");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000544C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000085C0(uint64_t a1)
{
  v2 = sub_10000834C();
  result = dlsym(v2, "ARBlendShapeLocationTongueOut");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000544D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100008610(uint64_t a1)
{
  v2 = sub_10000834C();
  result = dlsym(v2, "ARBlendShapeLocationMouthSmileLeft");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000544D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100008660(uint64_t a1)
{
  v2 = sub_10000834C();
  result = dlsym(v2, "ARBlendShapeLocationMouthSmileRight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000544E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000086B0(uint64_t a1)
{
  v2 = sub_10000834C();
  result = dlsym(v2, "ARBlendShapeLocationJawOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000544E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100008700(uint64_t a1)
{
  v2 = sub_10000834C();
  result = dlsym(v2, "ARBlendShapeLocationMouthClose");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000544F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100008750(uint64_t a1)
{
  v2 = sub_10000834C();
  result = dlsym(v2, "ARBlendShapeLocationBrowOuterUpLeft");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000544F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000087A0(uint64_t a1)
{
  v2 = sub_10000834C();
  result = dlsym(v2, "ARBlendShapeLocationBrowOuterUpRight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054500 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000087F0(uint64_t a1)
{
  v2 = sub_10000834C();
  result = dlsym(v2, "ARBlendShapeLocationMouthPucker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054508 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100008840(uint64_t a1)
{
  v2 = sub_10000834C();
  result = dlsym(v2, "ARBlendShapeLocationEyeBlinkLeft");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054510 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100008890(uint64_t a1)
{
  v2 = sub_10000834C();
  result = dlsym(v2, "ARBlendShapeLocationEyeBlinkRight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054518 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000088F4()
{
  sub_1000088E0();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "ARKitCameraInputSource:_captureSessionRuntimeErrorNotification: userInfo: %@, error: %@", v2, 0x16u);
}

void sub_100008970(void *a1, uint64_t a2, NSObject *a3)
{
  [a1 _avCaptureSessionInterruptionReason];
  sub_1000088E0();
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "ARKitCameraInputSource:_captureSessionWasInterruptedNotification: sessionInterruptionReason: %ld, systemPressureState: %@", v5, 0x16u);
}

void sub_100008A00(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ARKitCameraInputSource:session:didFailWithError: %@", &v2, 0xCu);
}

void sub_100009A44(uint64_t a1)
{
  v2 = +[AXMTUtilities sharedInstance];
  [v2 screenBoundsAccountingForInterfaceOrientation];
  v6 = AXMTConstrainPointWithinBounds(*(a1 + 40), *(a1 + 48), v3, v4, v5);
  v8 = v7;

  v9 = AXSSLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 134218240;
    v12 = v6;
    v13 = 2048;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "arKitCameraInputSource: didReceivePoint: point is (%f, %f)", &v11, 0x16u);
  }

  v10 = [*(a1 + 32) delegate];
  [v10 lookAtPointTracker:*(a1 + 32) trackedOnScreenPoint:{v6, v8}];
}

void sub_100009BE4(uint64_t a1)
{
  v2 = AXSSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = AXSSHumanReadableDescriptionForMotionTrackingFacialExpression();
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "arKitCameraInputSource: didReceiveExpressionStart: called for expression: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 lookAtPointTracker:*(a1 + 32) expressionStarted:*(a1 + 40)];
}

void sub_100009D38(uint64_t a1)
{
  v2 = AXSSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = AXSSHumanReadableDescriptionForMotionTrackingFacialExpression();
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "arKitCameraInputSource:didReceiveExpressionEnd: called for expression: %@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 lookAtPointTracker:*(a1 + 32) expressionEnded:*(a1 + 40)];
}

void sub_100009E8C(uint64_t a1)
{
  v2 = AXSSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A23C(v2);
  }

  v3 = [*(a1 + 32) delegate];
  [v3 lookAtPointTrackerWasInterrupted:*(a1 + 32)];
}

void sub_100009F08(id a1)
{
  v1 = AXSSLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A280(v1);
  }
}

void sub_100009FE8(uint64_t a1)
{
  v2 = AXSSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A2C4(a1, v2);
  }

  v3 = [*(a1 + 40) delegate];
  [v3 lookAtPointTracker:*(a1 + 40) didFailToTrackFaceWithError:*(a1 + 32)];
}

void sub_10000A2C4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "arKitCameraInputSource: didFailToTrackFaceWithError: %@", &v3, 0xCu);
}

id sub_10000AB28(uint64_t a1)
{
  result = [*(a1 + 32) _videoPreviewBounds];
  v6 = v5;
  v8 = v7;
  if (v3 != CGSizeZero.width || v4 != CGSizeZero.height)
  {
    v10 = v3;
    v11 = v4;
    +[CATransaction begin];
    [CATransaction setValue:&__kCFBooleanTrue forKey:kCATransactionDisableActions];
    v40.origin.x = NSZeroRect.origin.x;
    v40.origin.y = NSZeroRect.origin.y;
    v40.size.width = NSZeroRect.size.width;
    v40.size.height = NSZeroRect.size.height;
    if (NSEqualRects(*(a1 + 40), v40))
    {
      v12 = [*(a1 + 32) _trackingAreaShapeLayer];
      [v12 setPath:0];
    }

    else
    {
      v39 = VNImageRectForNormalizedRect(*(a1 + 40), v10, v11);
      v13 = CGPathCreateWithRect(v39, 0);
      if (v13)
      {
        v14 = v13;
        v15 = [*(a1 + 32) _trackingAreaShapeLayer];
        [v15 setPath:v14];

        CFRelease(v14);
      }
    }

    v16 = [*(a1 + 32) _multiPointsOfInterest];
    [v16 removeAllObjects];

    v17 = [*(a1 + 32) _multiPointsOfInterestShapeLayers];
    [v17 makeObjectsPerformSelector:"removeFromSuperlayer"];

    v18 = [*(a1 + 32) _multiPointsOfInterestShapeLayers];
    [v18 removeAllObjects];

    v38.x = NSZeroPoint.x;
    v38.y = NSZeroPoint.y;
    v19 = NSEqualPoints(*(a1 + 72), v38);
    v20 = *(a1 + 32);
    if (v19)
    {
      v21 = [v20 _previousPointsOfInterest];
      [v21 removeAllObjects];

      v22 = [*(a1 + 32) _previousPointOfInterestShapeLayers];
      [v22 makeObjectsPerformSelector:"removeFromSuperlayer"];

      v23 = [*(a1 + 32) _previousPointOfInterestShapeLayers];
      [v23 removeAllObjects];

      v24 = [*(a1 + 32) _pointOfInterestShapeLayer];
      [v24 setHidden:1];
    }

    else
    {
      v25 = [v20 _pointOfInterestShapeLayer];
      [v25 setHidden:0];

      v26 = v10 * *(a1 + 72);
      v27 = v11 * *(a1 + 80);
      v28 = [*(a1 + 32) _pointOfInterestShapeLayer];
      [v28 setPosition:{v26, v27}];

      v29 = [*(a1 + 32) _previousPointsOfInterest];
      v30 = [v29 count];

      if (v30 == 20)
      {
        v31 = [*(a1 + 32) _previousPointsOfInterest];
        [v31 removeObjectAtIndex:0];
      }

      v32 = [*(a1 + 32) _previousPointsOfInterest];
      v33 = [NSValue valueWithPoint:*(a1 + 72), *(a1 + 80)];
      [v32 addObject:v33];

      v34 = [*(a1 + 32) _previousPointOfInterestShapeLayers];
      [v34 makeObjectsPerformSelector:"removeFromSuperlayer"];

      v35 = [*(a1 + 32) _previousPointOfInterestShapeLayers];
      [v35 removeAllObjects];

      v36 = [*(a1 + 32) _previousPointsOfInterest];
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10000AEA0;
      v37[3] = &unk_100048C60;
      v37[4] = *(a1 + 32);
      v37[5] = v6;
      v37[6] = v8;
      *&v37[7] = v10;
      *&v37[8] = v11;
      [v36 enumerateObjectsUsingBlock:v37];
    }

    return +[CATransaction commit];
  }

  return result;
}

void sub_10000AEA0(uint64_t a1, void *a2)
{
  [a2 pointValue];
  v7 = [objc_opt_class() _layerForPointOfInterestAtPosition:1 previous:v3 bounds:{v4, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v5 = [*(a1 + 32) _previousPointOfInterestShapeLayers];
  [v5 addObject:v7];

  v6 = [*(a1 + 32) _detectedFaceRectangleShapeLayer];
  [v6 addSublayer:v7];
}

id sub_10000AFE8(uint64_t a1)
{
  v2 = &NSStringFromCGRect_ptr;
  +[CATransaction begin];
  [CATransaction setValue:&__kCFBooleanTrue forKey:kCATransactionDisableActions];
  v3 = [*(a1 + 32) _previousPointsOfInterest];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) _previousPointOfInterestShapeLayers];
  [v4 makeObjectsPerformSelector:"removeFromSuperlayer"];

  v5 = [*(a1 + 32) _previousPointOfInterestShapeLayers];
  [v5 removeAllObjects];

  v6 = [*(a1 + 32) _multiPointsOfInterestShapeLayers];
  [v6 makeObjectsPerformSelector:"removeFromSuperlayer"];

  v7 = [*(a1 + 32) _multiPointsOfInterestShapeLayers];
  [v7 removeAllObjects];

  v8 = [*(a1 + 32) _multiPointsOfInterest];
  [v8 removeAllObjects];

  v9 = *(a1 + 32);
  if (*(a1 + 40))
  {
    [v9 _videoPreviewBounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [*(a1 + 32) _detectedFaceRectangleShapeLayer];
    [v18 setFrame:{v11, v13, v15, v17}];

    Mutable = CGPathCreateMutable();
    [*(a1 + 40) imageSize];
    v21 = v20;
    v23 = v22;
    [*(a1 + 40) boundingBoxInImageCoordinates];
    v25 = v24 / v21;
    v27 = v26 / v23;
    v29 = v28 / v21;
    v31 = v30 / v23;
    [*(a1 + 32) _videoPreviewBounds];
    v106.origin.x = v25 * v32;
    v106.origin.y = v27 * v33;
    v106.size.width = v29 * v32;
    v106.size.height = v31 * v33;
    CGPathAddRect(Mutable, 0, v106);
    v34 = [*(a1 + 32) _detectedFaceRectangleShapeLayer];
    [v34 setPath:Mutable];

    CFRelease(Mutable);
    v35 = [*(a1 + 40) landmarkPointsInImageCoordinates];
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = sub_10000B5E8;
    v100[3] = &unk_100048CB0;
    v103 = v21;
    v104 = v23;
    v36 = *(a1 + 40);
    v37 = *(a1 + 32);
    v101 = v36;
    v102 = v37;
    [v35 enumerateObjectsUsingBlock:v100];

    [*(a1 + 40) pose];
    LODWORD(v21) = AXMTYawUsingPose(v38, v39, v40);
    [*(a1 + 40) pose];
    LODWORD(v23) = AXMTPitchUsingPose(v41, v42, v43);
    [*(a1 + 40) pose];
    LODWORD(v25) = AXMTRollUsingPose(v44, v45);
    v46 = [*(a1 + 32) _yawPitchRollTextLayer];
    v47 = [NSString stringWithFormat:@"Yaw: %.05f, Pitch: %.05f, Roll: %.05f", *&v21, *&v23, *&v25];
    [v46 setString:v47];

    v48 = +[NSMutableString string];
    v49 = [*(a1 + 40) expressions];
    v50 = [v49 allKeys];
    v51 = [v50 sortedArrayUsingSelector:"compare:"];

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v52 = v51;
    v53 = [v52 countByEnumeratingWithState:&v96 objects:v105 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v97;
      do
      {
        v56 = 0;
        do
        {
          if (*v97 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v96 + 1) + 8 * v56);
          [*(a1 + 40) expressions];
          v59 = v58 = a1;
          v60 = [v59 objectForKeyedSubscript:v57];
          [v60 floatValue];
          v62 = v61;

          a1 = v58;
          v63 = [NSString stringWithFormat:@"%@: %.05f\n", v57, v62];
          [v48 appendString:v63];

          v56 = v56 + 1;
        }

        while (v54 != v56);
        v54 = [v52 countByEnumeratingWithState:&v96 objects:v105 count:16];
      }

      while (v54);
    }

    v64 = [*(a1 + 32) _expressionValuesTextLayer];
    [v64 setString:v48];

    v65 = [*(a1 + 32) _detectedFaceRectangleShapeLayer];
    [v65 frame];
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = [*(a1 + 32) _expressionValuesTextLayer];
    [v74 setFrame:{v67, v69, v71, v73}];

    v75 = [*(a1 + 32) _detectedFaceRectangleShapeLayer];
    [v75 frame];
    v77 = v76;
    v78 = [*(a1 + 32) _detectedFaceRectangleShapeLayer];
    [v78 frame];
    v80 = v79 + -50.0;
    v81 = [*(a1 + 32) _detectedFaceRectangleShapeLayer];
    [v81 frame];
    v83 = v82;
    [*(a1 + 32) _detectedFaceRectangleShapeLayer];
    v85 = v84 = a1;
    [v85 frame];
    v87 = v86;
    v88 = [*(v84 + 32) _yawPitchRollTextLayer];
    [v88 setFrame:{v77, v80, v83, v87}];

    v89 = [*(v84 + 32) _detectedFaceRectangleShapeLayer];
    [v89 bounds];
    MidX = CGRectGetMidX(v107);
    v91 = [*(v84 + 32) _detectedFaceRectangleShapeLayer];
    [v91 bounds];
    MinY = CGRectGetMinY(v108);
    v93 = [*(v84 + 32) _expressionValuesTextLayer];
    [v93 setPosition:{MidX, MinY}];

    [*(v84 + 32) _updateLayerGeometry];
    v2 = &NSStringFromCGRect_ptr;
  }

  else
  {
    v94 = [v9 _detectedFaceRectangleShapeLayer];
    [v94 setPath:0];
  }

  return [v2[239] commit];
}

uint64_t sub_10000B5E8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 pointValue];
  v5 = v4 / *(a1 + 48);
  v7 = 1.0 - v6 / *(a1 + 56);
  v8 = [*(a1 + 32) pointForLandmark:@"NoseBaseCenter"];
  v9 = [v3 isEqualToValue:v8];

  v10 = objc_opt_class();
  [*(a1 + 40) _videoPreviewBounds];
  v15 = [v10 _layerForPointOfInterestAtPosition:v9 ^ 1 previous:v5 bounds:{v7, v11, v12, v13, v14}];
  if (v15)
  {
    v21 = v15;
    v16 = [*(a1 + 40) _multiPointsOfInterest];
    v17 = [NSValue valueWithPoint:v5, v7];
    [v16 addObject:v17];

    v18 = [*(a1 + 40) _multiPointsOfInterestShapeLayers];
    [v18 addObject:v21];

    v19 = [*(a1 + 40) _detectedFaceRectangleShapeLayer];
    [v19 addSublayer:v21];
  }

  return _objc_release_x1();
}

void sub_10000BE34(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[AXMTVideoPreviewLayer drawSample:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: invalid sample! test: %@", &v2, 0x16u);
}

uint64_t AXMTConvertFromDeviceToInterfaceOrientation(uint64_t result)
{
  if ((result - 1) >= 4)
  {
    return 0;
  }

  return result;
}

double AXMTConstrainPointWithinBounds(double result, double a2, double a3, double a4, double a5)
{
  if (result < a3)
  {
    result = a3;
  }

  v5 = a3 + a5;
  if (result >= v5)
  {
    return v5;
  }

  return result;
}

__n128 AXMTVector3FromArray(void *a1)
{
  v1 = a1;
  v2 = [v1 objectAtIndexedSubscript:0];
  [v2 floatValue];
  v11 = v3;
  v4 = [v1 objectAtIndexedSubscript:1];
  [v4 floatValue];
  v10 = v5;
  v6 = [v1 objectAtIndexedSubscript:2];

  [v6 floatValue];
  v9 = v7;

  result.n128_u32[0] = v11;
  result.n128_u32[1] = v10;
  result.n128_u32[2] = v9;
  return result;
}

__n128 AXMTMatrix3x3FromArray(void *a1)
{
  v1 = a1;
  v2 = [v1 objectAtIndexedSubscript:0];
  v8 = AXMTVector3FromArray(v2);
  v3 = [v1 objectAtIndexedSubscript:1];
  v7 = AXMTVector3FromArray(v3);
  v4 = [v1 objectAtIndexedSubscript:2];

  v6 = AXMTVector3FromArray(v4).n128_u32[0];
  result.n128_u64[0] = vzip1q_s32(v8, v7).u64[0];
  result.n128_u32[2] = v6;
  return result;
}

double AXMTEulerAnglesFromMatrix(__n128 a1, __n128 a2, __n128 a3)
{
  if (a3.n128_f32[1] >= 1.0)
  {
    atan2f(-a1.n128_f32[2], -a2.n128_f32[2]);
    LODWORD(v3) = -1077342245;
LABEL_6:
    HIDWORD(v3) = 0;
    return v3;
  }

  if (a3.n128_f32[1] <= -1.0)
  {
    atan2f(a1.n128_f32[2], a2.n128_f32[2]);
    LODWORD(v3) = 1070141403;
    goto LABEL_6;
  }

  v6 = a3;
  v7 = a2.n128_f32[1];
  v5 = a1.n128_f32[1];
  v8 = asinf(-a3.n128_f32[1]);
  v6.n128_u32[0] = atan2f(v6.n128_f32[0], v6.n128_f32[2]);
  atan2f(v5, v7);
  return COERCE_DOUBLE(__PAIR64__(v6.n128_u32[0], LODWORD(v8)));
}

id AXMTLookAtPointTrackerClass(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if (([v1 isCamera] & 1) != 0 || objc_msgSend(v2, "isVideoFile"))
    {
      v3 = AXSSLogForCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "AXMTLookAtPointTrackerClass: using AXMTCameraBasedLookAtPointTracker", v7, 2u);
      }
    }

    else if (![v2 isHIDDevice])
    {
      v4 = 0;
      goto LABEL_8;
    }

    v4 = objc_opt_class();
LABEL_8:
    v5 = v4;
    goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

id AXMTCreateLookAtPointTracker(void *a1, uint64_t a2)
{
  v3 = a1;
  if ((v3 || _AXSMossdeepEnabled()) && (v4 = AXMTLookAtPointTrackerClass(v3)) != 0)
  {
    v5 = [[v4 alloc] initWithInput:v3 trackingType:a2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

CGFloat AXMTScreenPointForHIDPoint(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  if (a1 == 0x7FFFFFFF && a2 == 0x7FFFFFFF)
  {
    if (a3)
    {
      *a3 = [NSError errorWithDomain:AXSSMotionTrackingErrorDomain code:1 userInfo:0];
    }

    return NSZeroPoint.x;
  }

  else
  {
    v11 = fmin(fmax(a4, 0.0), 1.0);
    if (a1 == 0x7FFFFFFF)
    {
      v11 = a6;
    }

    return a10 * v11;
  }
}

void AXMTLogFPS()
{
  if (qword_100054530 != -1)
  {
    sub_10000F9E8();
  }

  v1 = [NSString stringWithFormat:@"AXMTLogFPS: recorded FPS: %ld", qword_100054528];
  if ([qword_100054520 logString:v1])
  {
    v0 = 0;
  }

  else
  {
    v0 = qword_100054528 + 1;
  }

  qword_100054528 = v0;
}

void sub_10000CA68(id a1)
{
  v1 = [AXSSRateLimitingLogger alloc];
  v4 = AXSSLogForCategory();
  v2 = [v1 initWithLogLevel:1 categoryLog:v4 timeInterval:1.0];
  v3 = qword_100054520;
  qword_100054520 = v2;
}

void sub_10000CB28(id a1)
{
  v1 = [NSUserDefaults alloc];
  qword_100054538 = [v1 initWithSuiteName:AXSSMotionTrackingPreferenceDomain];

  _objc_release_x1();
}

uint64_t sub_10000CC14()
{
  qword_100054550 = objc_opt_new();

  return _objc_release_x1();
}

void sub_10000CF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000CFB8()
{
  v0 = dispatch_time(0, 3000000000);

  dispatch_after(v0, &_dispatch_main_q, &stru_100048E48);
}

void sub_10000D7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D804(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = AXSSLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000FCC8();
    }
  }

  else
  {
    [*(a1 + 32) _handleAccelerometerDataUpdate:a2];
  }
}

void sub_10000D880(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000D92C;
  v6[3] = &unk_100048948;
  v6[4] = WeakRetained;
  v7 = v3;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

id sub_10000D92C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) orientation];

  return [v1 _interfaceOrientationChanged:v2];
}

void sub_10000DCB0(id a1)
{
  v1 = [NSUserDefaults alloc];
  qword_100054558 = [v1 initWithSuiteName:AXSSMotionTrackingPreferenceDomain];

  _objc_release_x1();
}

void sub_10000E440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000E464(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained orientationLocked];
  [WeakRetained _checkBackboardOrientationLockStatus];
  if (v2 && ([WeakRetained orientationLocked] & 1) == 0)
  {
    v3 = AXSSLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10000FF18(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = [WeakRetained _motionManager];
    v12 = [v11 accelerometerData];
    [WeakRetained _handleAccelerometerDataUpdate:v12];
  }
}

void sub_10000E76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000E790(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _checkBackboardEffectiveDeviceOrientation];
}

void sub_10000F098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}

void sub_10000F0EC(id a1)
{
  v1 = qword_100054568;
  qword_100054568 = &off_100049F58;
}

void sub_10000F104(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 objectForKeyedSubscript:sub_10000F1E8()];

  if (v6)
  {
    v7 = [v11 objectForKeyedSubscript:sub_10000F1E8()];
    *(*(*(a1 + 32) + 8) + 24) = [v7 intValue];

    v8 = *(*(*(a1 + 32) + 8) + 24);
    if (v8 == 4)
    {
      v9 = *(*(a1 + 40) + 8);
      v10 = 2;
    }

    else
    {
      if (v8 != 2)
      {
        goto LABEL_8;
      }

      v9 = *(*(a1 + 40) + 8);
      v10 = 1;
    }

    *(v9 + 24) = v10;
  }

  else
  {
    *a4 = 1;
  }

LABEL_8:
}

uint64_t sub_10000F1E8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1000545B0;
  v7 = qword_1000545B0;
  if (!qword_1000545B0)
  {
    v1 = sub_10000F6E8();
    v5[3] = dlsym(v1, "kCVAFaceTracking_FailureType");
    qword_1000545B0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

id sub_10000F2DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  result = [a2 integerValue];
  if (v3 == result)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a1 + 40);
  }

  return result;
}

void *sub_10000F480(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_100054580)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10000F5C0;
    v5[4] = &unk_100048BE0;
    v5[5] = v5;
    v6 = off_100048E30;
    v7 = 0;
    qword_100054580 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_100054580;
    if (qword_100054580)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_100054580;
LABEL_5:
  result = dlsym(v2, "AXDeviceGetMainScreenBounds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100054578 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000F5C0()
{
  result = _sl_dlopen();
  qword_100054580 = result;
  return result;
}

void sub_10000F634(id a1)
{
  v1 = AXSSLogForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    sub_1000100F4(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = +[AXMTUtilities sharedInstance];
  [v9 _updateScreenBounds];
}

void *sub_10000F698(uint64_t a1)
{
  v2 = sub_10000F6E8();
  result = dlsym(v2, "kCVAFaceTracking_DataFailure");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054588 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000F6E8()
{
  v3[0] = 0;
  if (!qword_100054590)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10000F7E8;
    v3[4] = &unk_100048BE0;
    v3[5] = v3;
    v4 = off_100048E68;
    v5 = 0;
    qword_100054590 = _sl_dlopen();
  }

  v0 = qword_100054590;
  v1 = v3[0];
  if (!qword_100054590)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_10000F7E8()
{
  result = _sl_dlopen();
  qword_100054590 = result;
  return result;
}

void *sub_10000F85C(uint64_t a1)
{
  v2 = sub_10000F6E8();
  result = dlsym(v2, "kCVAFaceTracking_DataFailureImageTooDark");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054598 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10000F8AC(uint64_t a1)
{
  v2 = sub_10000F6E8();
  result = dlsym(v2, "kCVAFaceTracking_DataFailureSensorCovered");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000545A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10000F8FC(uint64_t a1)
{
  v2 = sub_10000F6E8();
  result = dlsym(v2, "kCVAFaceTracking_TrackedFacesArray");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000545A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10000F94C(uint64_t a1)
{
  v2 = sub_10000F6E8();
  result = dlsym(v2, "kCVAFaceTracking_FailureType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000545B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10000F9AC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_10000FA10(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 88);
  v3 = 136315394;
  v4 = "[AXMTUtilities init]";
  v5 = 2048;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s: overriding _currentDeviceOrientation to effective orientation: %ld", &v3, 0x16u);
}

void sub_10000FAA0()
{
  sub_10000F9C8();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "AXMTUtilities:registerListener: %@, needsPhysicalOrientationEvents: %@", v2, 0x16u);
}

void sub_10000FBBC(void *a1)
{
  [a1 bksEffectiveOrientation];
  v2 = [a1 _motionManager];
  v3 = [v2 accelerometerData];
  [a1 orientationLocked];
  sub_10000F99C();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_10000FCC8()
{
  sub_10000F9D4();
  sub_100004860();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_10000FDC0(void *a1)
{
  [a1 currentDeviceOrientation];
  sub_10000F99C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_10000FE58(void *a1)
{
  [a1 currentInterfaceOrientation];
  sub_10000F9C8();
  sub_10000F99C();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10000FFD0(double a1, double a2, double a3, double a4)
{
  v4 = NSStringFromCGRect(*&a1);
  sub_10000F9D4();
  sub_10000F99C();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

double AXMTGeometryCentroidOfPoints(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  x = CGPointZero.x;
  y = CGPointZero.y;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v1;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v13 + 1) + 8 * v9) pointValue];
        x = x + v10;
        y = y + v11;
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return x / v2;
}

double AXMTGeometryStandardDeviationOfPointsWithPrecalculatedCentroid(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [v5 count];
  if (v6)
  {
    v7 = v6;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      v12 = 0.0;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v18 + 1) + 8 * i) pointValue];
          v12 = v12 + (a3 - v15) * (a3 - v15) + (a2 - v14) * (a2 - v14);
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    else
    {
      v12 = 0.0;
    }

    v16 = sqrt(v12 / v7);
  }

  else
  {
    v16 = 0.0;
  }

  return v16;
}

uint64_t sub_100012458(uint64_t a1, void *a2)
{
  v3 = [a2 nextTimedMetadataGroup];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return _objc_release_x1();
}

void sub_1000124B8(uint64_t a1)
{
  v2 = AXSSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100012980(a1);
  }

  [*(a1 + 32) _playbackFinished];
  [*(a1 + 32) _tearDown];
  v3 = +[AXMTVideoFilePlayManager shared];
  v4 = [*(a1 + 32) input];
  [v3 videoPlayedWithInput:v4 success:1 error:0];
}

void sub_100012700(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_100012790(void *a1)
{
  v2 = [a1 _fileURL];
  v8 = [a1 _assetReader];
  sub_10000F99C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_10001285C(void *a1)
{
  v1 = [a1 _fileURL];
  sub_10000F9D4();
  sub_10000F99C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1000128F4()
{
  v3[0] = 136315650;
  sub_10000F9D4();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s: Stopping playing because one of these is nil: sampleBufferRef: %@, timedMetadataGroups:%@", v3, 0x20u);
}

void sub_100012980(uint64_t a1)
{
  v1 = [*(a1 + 32) _fileURL];
  sub_10000F9D4();
  sub_10000F99C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100014204(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 hasFace])
    {
      [*(a1 + 40) set_hasFace:1];
      v3 = +[AXMTUtilities sharedInstance];
      v4 = [v3 currentInterfaceOrientation];

      [*(a1 + 32) projectedPoint];
      v7 = v6;
      v8 = 0.0;
      if (v4 <= 2)
      {
        if (v4 >= 2)
        {
          if (v4 == 2)
          {
            v10 = 0.05365;
            v11 = -1162.523;
            v12 = 3.61744;
            v8 = -2517.86;
            v9 = v5;
            goto LABEL_22;
          }

          goto LABEL_19;
        }
      }

      else if ((v4 - 5) >= 2)
      {
        if (v4 == 3)
        {
          v9 = v6;
          v7 = -v5;
          v10 = -0.453;
          v11 = 422.247;
          v12 = 1.26958;
          v8 = -957.091;
LABEL_22:
          v24 = +[AXMTUtilities sharedInstance];
          [v24 screenBoundsAccountingForInterfaceOrientation];
          v26 = v25;
          v28 = v27;

          v29 = *(a1 + 40);
          [*(a1 + 32) pose];
          v60 = v31;
          v61 = v30;
          v58 = v33;
          v59 = v32;
          [*(a1 + 32) poseTranslation];
          [v29 _handleDetectedFaceWithProjectedPoint:v7 + v11 + v26 * v10 pose:v9 + v8 + v28 * v12 poseTranslation:{v61, v60, v59, v58, v34}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = *(a1 + 32);
            v36 = [v35 expressions];
            v37 = [*(a1 + 40) _previousExpressions];
            v38 = [*(a1 + 40) expressionConfiguration];
            v74 = 0;
            v75 = 0;
            v39 = [AXSSMotionTrackingExpressionConfiguration processIncomingExpressions:v36 previousExpressions:v37 expressionConfiguration:v38 startExpressionsOutSet:&v75 endExpressionsOutSet:&v74];
            v40 = v75;
            v41 = v74;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v40 = 0;
              v41 = 0;
              v39 = 0;
LABEL_31:
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v13 = v40;
              v43 = [v13 countByEnumeratingWithState:&v66 objects:v77 count:16];
              if (v43)
              {
                v44 = v43;
                v45 = *v67;
                do
                {
                  for (i = 0; i != v44; i = i + 1)
                  {
                    if (*v67 != v45)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v47 = *(*(&v66 + 1) + 8 * i);
                    v48 = [*(a1 + 40) delegate];
                    [v48 lookAtPointTracker:*(a1 + 40) expressionStarted:{objc_msgSend(v47, "unsignedIntegerValue")}];
                  }

                  v44 = [v13 countByEnumeratingWithState:&v66 objects:v77 count:16];
                }

                while (v44);
              }

              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
              v49 = v41;
              v50 = [v49 countByEnumeratingWithState:&v62 objects:v76 count:16];
              if (v50)
              {
                v51 = v50;
                v52 = *v63;
                do
                {
                  for (j = 0; j != v51; j = j + 1)
                  {
                    if (*v63 != v52)
                    {
                      objc_enumerationMutation(v49);
                    }

                    v54 = *(*(&v62 + 1) + 8 * j);
                    v55 = [*(a1 + 40) delegate];
                    [v55 lookAtPointTracker:*(a1 + 40) expressionEnded:{objc_msgSend(v54, "unsignedIntegerValue")}];
                  }

                  v51 = [v49 countByEnumeratingWithState:&v62 objects:v76 count:16];
                }

                while (v51);
              }

              v56 = [v39 copy];
              [*(a1 + 40) set_previousExpressions:v56];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v57 = [*(a1 + 40) _videoPreviewLayer];
                [v57 renderFaceKitResult:*(a1 + 32)];
              }

              goto LABEL_48;
            }

            v42 = *(a1 + 32);
            v36 = v42;
            if (v42)
            {
              [v42 expressions];
            }

            else
            {
              v73 = 0;
              memset(v72, 0, sizeof(v72));
            }

            v37 = [*(a1 + 40) _previousExpressions];
            v38 = [*(a1 + 40) expressionConfiguration];
            v70 = 0;
            v71 = 0;
            v39 = [AXSSMotionTrackingExpressionConfiguration processExclaveDetectedExpressions:v72 previousExpressions:v37 expressionConfiguration:v38 startExpressionsOutSet:&v71 endExpressionsOutSet:&v70];
            v40 = v71;
            v41 = v70;
          }

          goto LABEL_31;
        }

        if (v4 == 4)
        {
          v9 = -v6;
          v10 = 0.11439;
          v11 = -1271.67;
          v12 = 1.596754;
          v8 = -290.996;
LABEL_20:
          v7 = v5;
          goto LABEL_22;
        }

LABEL_19:
        v12 = 0.0;
        v11 = 0.0;
        v10 = 0.0;
        v9 = v6;
        goto LABEL_20;
      }

      v7 = -v6;
      v9 = -v5;
      v10 = 0.00271;
      v11 = -157.7;
      v12 = 0.228648;
      v8 = 786.2;
      goto LABEL_22;
    }

    v13 = [*(a1 + 32) error];
    if ([*(a1 + 40) _hasFace])
    {
      v14 = AXSSLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_100016CD0(v13, v14, v15, v16, v17, v18, v19, v20);
      }

      [*(a1 + 40) set_hasFace:0];
    }

    else
    {
      v21 = [*(a1 + 40) _error];
      v22 = [v21 isEqual:v13];

      if (v22)
      {
LABEL_14:
        [*(a1 + 40) _clearVideoPreviewLayer];
LABEL_48:

        return;
      }
    }

    [*(a1 + 40) set_error:v13];
    v23 = [*(a1 + 40) delegate];
    [v23 lookAtPointTrackerLostFace:*(a1 + 40) error:v13];

    goto LABEL_14;
  }
}

void sub_10001495C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _signalTrackedUnboundedOnScreenPoint:0 boundPoint:*(a1 + 32) error:{*(a1 + 48), *(a1 + 56)}];
}

void sub_100014CC0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _signalTrackedImageRelativePoint:*(a1 + 40) inBounds:{*(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

void sub_100015218(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _signalTrackedUnboundedOnScreenPoint:1 boundPoint:{*(a1 + 40), *(a1 + 48)}];
}

void sub_100015534(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _signalTrackedUnboundedOnScreenPoint:1 boundPoint:{*(a1 + 40), *(a1 + 48)}];
}

void sub_100015958(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _signalTrackedUnboundedOnScreenPoint:1 boundPoint:{*(a1 + 40), *(a1 + 48)}];
}

void sub_100016240(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = AXSSLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100016DBC(a1);
  }

  [WeakRetained _signalTrackedUnboundedOnScreenPoint:1 boundPoint:{*(a1 + 40), *(a1 + 48)}];
}

void sub_1000163A8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _signalTrackedUnboundedOnScreenPoint:1 boundPoint:{*(a1 + 40), *(a1 + 48)}];
}

void sub_10001682C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_10001685C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_100016A50(void *a1)
{
  [a1 floatValue];
  sub_10001684C();
  sub_10001682C(&_mh_execute_header, v1, v2, "%s: using yaw: %f", v3, v4, v5, v6, 2u);
}

void sub_100016ADC(void *a1)
{
  [a1 floatValue];
  sub_10001684C();
  sub_10001682C(&_mh_execute_header, v1, v2, "%s: using pitch: %f", v3, v4, v5, v6, 2u);
}

void sub_100016B68(void *a1, NSObject *a2)
{
  v4 = [a1 _calibratedYaw];
  [v4 floatValue];
  v6 = v5;
  v7 = [a1 _calibratedPitch];
  [v7 floatValue];
  v10[0] = 136315650;
  sub_10001684C();
  v11 = v6;
  v12 = v8;
  v13 = v9;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s: storing yaw: %f, pitch: %f", v10, 0x20u);
}

void sub_100016C4C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[AXMTCameraBasedLookAtPointTracker _storeCalibrationValuesToDefaults]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: uniqueIdentifier was nil, could not store calibration values", &v1, 0xCu);
}

void sub_100016D3C()
{
  v1[0] = 136315394;
  sub_10000F9D4();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s: AXMTCameraBasedLookAtPointTracker: lost face %@", v1, 0x16u);
}

void sub_100016DBC(uint64_t a1)
{
  v1 = NSStringFromPoint(*(a1 + 40));
  sub_10000F9D4();
  sub_10001682C(&_mh_execute_header, v2, v3, "%s: %@", v4, v5, v6, v7, 2u);
}

double AXMTMathStandardDeviationOfValuesWithPrecalculatedMean(void *a1, double a2)
{
  v3 = a1;
  v4 = 0.0;
  if ([v3 count] >= 2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v9) doubleValue];
          v4 = v4 + (v10 - a2) * (v10 - a2);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    v4 = sqrt(v4 / [v5 count]);
  }

  return v4;
}

id sub_1000171D4(uint64_t a1)
{
  [*(a1 + 32) _updateLookAtPoint:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 32);

  return [v2 _stateUpdated];
}

id sub_1000172C0(uint64_t a1)
{
  [*(a1 + 32) _updateLookAtPoint:{*(a1 + 48), *(a1 + 56)}];
  if (*(a1 + 40))
  {
    [*(a1 + 32) set_error:?];
    v2 = AXSSLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_1000181CC();
    }
  }

  return [*(a1 + 32) _stateUpdated];
}

void sub_10001746C(uint64_t a1)
{
  v2 = [*(a1 + 32) _expressions];
  v6 = [v2 mutableCopy];

  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  [v6 addObject:v3];

  v4 = *(a1 + 32);
  v5 = [v6 copy];
  [v4 _updateExpressions:v5];

  [*(a1 + 32) _stateUpdated];
}

void sub_100017648(uint64_t a1)
{
  v2 = [*(a1 + 32) _expressions];
  v6 = [v2 mutableCopy];

  v3 = [NSNumber numberWithUnsignedInteger:*(a1 + 40)];
  [v6 removeObject:v3];

  v4 = *(a1 + 32);
  v5 = [v6 copy];
  [v4 _updateExpressions:v5];

  [*(a1 + 32) _stateUpdated];
}

void sub_100017814(uint64_t a1)
{
  v8 = *(a1 + 32);
  [*(a1 + 40) _updateLookAtPoint:{AXSSMotionTrackingInvalidPoint[0], AXSSMotionTrackingInvalidPoint[1]}];
  v2 = v8;
  if (!v8)
  {
    v3 = [NSError alloc];
    v2 = [v3 initWithDomain:AXSSMotionTrackingErrorDomain code:0 userInfo:0];
  }

  v9 = v2;
  v4 = [*(a1 + 40) _error];
  if (!v4 || (v5 = v4, [*(a1 + 40) _error], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", v9), v6, v5, (v7 & 1) == 0))
  {
    [*(a1 + 40) _updateError:v9];
  }

  [*(a1 + 40) _stateUpdated];
}

id sub_1000179CC(uint64_t a1)
{
  [*(a1 + 32) _updateError:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _stateUpdated];
}

void sub_100017AB8(uint64_t a1)
{
  v2 = [*(a1 + 32) _error];

  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = [NSError alloc];
    v5 = [v4 initWithDomain:AXSSMotionTrackingErrorDomain code:10 userInfo:0];
    [v3 _updateError:v5];

    v6 = *(a1 + 32);

    [v6 _stateUpdated];
  }
}

void sub_1000188F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100018954(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _deviceNotification:v5 added:a3];
}

void sub_1000189C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _elementUpdated:v5 forDevice:v6];
}

void sub_100018D80(uint64_t a1)
{
  v2 = [NSNumber numberWithInteger:*(*(*(a1 + 40) + 8) + 24)];
  [*(a1 + 32) _setCurrentFrequency:v2];
}

void sub_100018EFC(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v3 = [*(a1 + 32) _currentStatus];
  if (*(*(*(a1 + 40) + 8) + 24) <= 4uLL && v2 != v3)
  {
    v5 = AXSSLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) _currentStatus];
      v7 = *(*(*(a1 + 40) + 8) + 24);
      v16 = 136315650;
      v17 = "[AXMTHIDBasedLookAtPointTracker _statusHIDElementUpdated:forDevice:]_block_invoke";
      v18 = 2048;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s: changing status from %lu to %lu", &v16, 0x20u);
    }

    [*(a1 + 32) _setCurrentStatus:*(*(*(a1 + 40) + 8) + 24)];
    v8 = *(*(*(a1 + 40) + 8) + 24);
    if (v8 == 2)
    {
      v9 = [*(a1 + 32) _initializationTimer];
      v10 = [v9 isValid];

      if (!v10)
      {
        v13 = AXSSMotionTrackingErrorDomain;
        v14 = 14;
LABEL_17:
        v15 = [NSError errorWithDomain:v13 code:v14 userInfo:0];
        [*(a1 + 32) _failedToTrackFaceWithErrorOnBackgroundThread:v15];

        return;
      }

      v8 = *(*(*(a1 + 40) + 8) + 24);
    }

    if (v8 == 1)
    {
      v11 = [*(a1 + 32) _initializationTimer];

      if (v11)
      {
        v12 = [*(a1 + 32) _initializationTimer];
        [v12 invalidate];

        [*(a1 + 32) set_initializationTimer:0];
        return;
      }

      v8 = *(*(*(a1 + 40) + 8) + 24);
    }

    if (!v8)
    {
      v13 = AXSSMotionTrackingErrorDomain;
      v14 = 15;
      goto LABEL_17;
    }
  }
}

id sub_1000194B4(uint64_t a1)
{
  v2 = AXSSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = @"NO";
    if (*(a1 + 48))
    {
      v4 = @"YES";
    }

    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "AXMTHIDBasedLookAtPointTracker:_deviceNotification: %@, added: %@", &v7, 0x16u);
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    return [*(a1 + 40) _inputSourceWasInterruptedOnMainThread];
  }

  v5 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 40) target:"_initializationTimerFired:" selector:0 userInfo:0 repeats:5.0];
  [*(a1 + 40) set_initializationTimer:v5];

  return [*(a1 + 40) _setUpPowerAssertionIfNecessary];
}

void sub_1000199E8(uint64_t a1)
{
  v2 = +[AXMTUtilities sharedInstance];
  [v2 screenBoundsAccountingForInterfaceOrientation];
  v6 = AXMTConstrainPointWithinBounds(*(a1 + 40), *(a1 + 48), v3, v4, v5);
  v8 = v7;

  v9 = [*(a1 + 32) delegate];
  [v9 lookAtPointTracker:*(a1 + 32) trackedOnScreenPoint:{v6, v8}];
}

void sub_100019B98(uint64_t a1)
{
  v2 = AXSSLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_10001A310(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = [*(a1 + 40) delegate];
  [v9 lookAtPointTracker:*(a1 + 40) didFailToTrackFaceWithError:*(a1 + 32)];
}

void *sub_100019E24(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1000545C0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100019F64;
    v5[4] = &unk_100048BE0;
    v5[5] = v5;
    v6 = off_100048FE8;
    v7 = 0;
    qword_1000545C0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1000545C0;
    if (qword_1000545C0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1000545C0;
LABEL_5:
  result = dlsym(v2, "AXMachTimeToNanoseconds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000545B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100019F64()
{
  result = _sl_dlopen();
  qword_1000545C0 = result;
  return result;
}

void sub_100019FD8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "AXMTHIDBasedLookAtPointTracker: initWithInput: %@ is not of type HID!", &v2, 0xCu);
}

void sub_10001A050(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "AXMTHIDBasedLookAtPointTracker: initWithInput: %@ is not MFi authenticated!", &v2, 0xCu);
}

void sub_10001A0C8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "AXMTHIDBasedLookAtPointTracker:_elementUpdated:forDevice: HIDElement %@ was nil for device %@", &v3, 0x16u);
}

void sub_10001A150(int a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[AXMTHIDBasedLookAtPointTracker _setUpPowerAssertionIfNecessary]";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Failed to create PM Assertion with error = 0x%i", &v2, 0x12u);
}

id sub_10001AD40(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  [v2 resolution];

  return [v1 videoCapturer:v2 didUpdateVideoResolution:?];
}

id sub_10001AD80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  [v2 fieldOfView];

  return [v1 videoCapturer:v2 didUpdateFieldOfView:?];
}

void sub_10001B2E4(uint64_t a1)
{
  [*(a1 + 32) _configureCaptureSession];
  v2 = [*(a1 + 32) captureSession];

  if (v2)
  {
    [STDynamicActivityAttributionPublisher setCurrentAttributionKey:0 andApp:AXUIServerAngelProcessIdentifier];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:*(a1 + 32) selector:"_avCaptureSessionDidStopRunningNotification:" name:AVCaptureSessionDidStopRunningNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:"_avCaptureSessionRuntimeErrorNotification:" name:AVCaptureSessionRuntimeErrorNotification object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:*(a1 + 32) selector:"_avCaptureSessionWasInterruptedNotification:" name:AVCaptureSessionWasInterruptedNotification object:0];

    v6 = [*(a1 + 32) captureSession];
    [v6 startRunning];

    v7 = AXSSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) captureSession];
      v9 = 136315394;
      v10 = "[AXMTVideoCapturer start]_block_invoke";
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s: capture session started: %@", &v9, 0x16u);
    }
  }
}

void sub_10001BC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001BD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001BD90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001BDA8(uint64_t a1, void *a2)
{
  v9 = a2;
  [v9 maxFrameRate];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  if (v6)
  {
    v7 = v4;
    [v6 maxFrameRate];
    if (v7 <= v8)
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v5 + 40), a2);
LABEL_5:
}

void sub_10001BF1C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isVideoBinned])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void *sub_10001D000(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1000545D0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10001D140;
    v5[4] = &unk_100048BE0;
    v5[5] = v5;
    v6 = off_100049078;
    v7 = 0;
    qword_1000545D0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1000545D0;
    if (qword_1000545D0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1000545D0;
LABEL_5:
  result = dlsym(v2, "AXMachTimeToNanoseconds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000545C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10001D140()
{
  result = _sl_dlopen();
  qword_1000545D0 = result;
  return result;
}

void sub_10001D1B4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_10001D1D0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_10001D1EC(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_10001D20C(void *a1)
{
  v1 = [a1 formats];
  sub_10000F9C8();
  sub_10000F99C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10001D300(void *a1)
{
  v1 = [a1 activeFormat];
  sub_10000F9C8();
  sub_10000F99C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_10001D3C0(void *a1)
{
  v1 = [a1 _captureDevice];
  sub_10000F9C8();
  sub_10000F99C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001D50C(void *a1)
{
  v1 = [a1 captureSession];
  sub_10000F9D4();
  sub_10000F99C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001D60C()
{
  v2 = 136315650;
  sub_10000F9D4();
  sub_10001D1EC(&_mh_execute_header, v0, v1, "%s: Failed to add AVCaptureDeviceInput instance %@ to capture session %@", v2);
}

void sub_10001D688()
{
  v1[0] = 136315394;
  sub_10000F9D4();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s: Couldn't lock capture device: %@", v1, 0x16u);
}

void sub_10001D708(void *a1)
{
  v1 = [a1 _captureDevice];
  v2 = [v1 activeFormat];
  sub_10000F9D4();
  sub_10000F99C();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10001D7B8()
{
  v2 = 136315650;
  sub_10000F9D4();
  sub_10001D1EC(&_mh_execute_header, v0, v1, "%s: Failed to add AVCaptureVideoDataOutput instance %@ to capture session %@", v2);
}

void sub_10001D914(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 availableMetadataObjectTypes];
  v6 = 136315650;
  v7 = "[AXMTVideoCapturer _configureMetadataOutputWithObjectType:forCaptureSession:addFaceTracking:]";
  v8 = 2112;
  v9 = a1;
  v10 = 2112;
  v11 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s: metadataOutput's available metadata types does not contain: %@, availableMetadataObjectTypes: %@", &v6, 0x20u);
}

void sub_10001D9D8(void *a1)
{
  v1 = [a1 metadataObjectTypes];
  sub_10000F9D4();
  sub_10000F99C();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10001DA70(void *a1, NSObject *a2)
{
  v3 = [a1 userInfo];
  v4 = [v3 objectForKeyedSubscript:AVCaptureSessionErrorKey];
  v5[0] = 136315394;
  sub_10000F9D4();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: AVCaptureSession runtime error %@", v5, 0x16u);
}

void sub_10001E5F8(double a1, double a2)
{
  v2 = NSStringFromPoint(*&a1);
  v3 = 136315394;
  v4 = "[AXMTVelocityBasedPointMapper resetToPoint:]";
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: %@", &v3, 0x16u);
}

void sub_10001E980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001E9B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001E9CC(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if ([v6 isEqual:VNComputeStageMain])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
            objc_storeStrong((*(*(a1 + 40) + 8) + 40), v12);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

void sub_10001F270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Unwind_Resume(a1);
}

void sub_10001F2F0(uint64_t a1, void *a2)
{
  v9 = a2;
  v4 = [v9 type];

  if (v4 == AVMetadataObjectTypeFace)
  {
    [v9 bounds];
    v6 = v5;
    [v9 bounds];
    v8 = *(*(a1 + 32) + 8);
    if (v6 * v7 > *(v8 + 24))
    {
      *(v8 + 24) = v6 * v7;
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

void *sub_100020608(uint64_t a1)
{
  v5[0] = 0;
  if (!qword_1000545E0)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_100020748;
    v5[4] = &unk_100048BE0;
    v5[5] = v5;
    v6 = off_1000490E0;
    v7 = 0;
    qword_1000545E0 = _sl_dlopen();
    v3 = v5[0];
    v2 = qword_1000545E0;
    if (qword_1000545E0)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = qword_1000545E0;
LABEL_5:
  result = dlsym(v2, "AXMachTimeToNanoseconds");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000545D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100020748()
{
  result = _sl_dlopen();
  qword_1000545E0 = result;
  return result;
}

void sub_1000207BC(void *a1, NSObject *a2)
{
  [a1 _cameraOffsetInCM];
  v5 = v4;
  [a1 _cameraOffsetInCM];
  v7 = v6;
  [a1 _screenSizeInCM];
  v9 = v8;
  [a1 _screenSizeInCM];
  v11 = 136316162;
  v12 = "[AXMTVisionKitEyeTracker _computeScreenAndCameraPositions]";
  v13 = 2048;
  v14 = v5;
  v15 = 2048;
  v16 = v7;
  v17 = 2048;
  v18 = v9;
  v19 = 2048;
  v20 = v10;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s offset %f, %f; screen size: %f * %f", &v11, 0x34u);
}

void sub_1000208AC(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[AXMTVisionKitEyeTracker processSampleBuffer:metadata:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: Failed to process screen gaze request %@!", &v2, 0x16u);
}

void sub_100020C88(id a1)
{
  qword_1000545E8 = objc_alloc_init(AXMTVideoFilePlayManager);

  _objc_release_x1();
}

void sub_100021544()
{
  v1[0] = 136315394;
  sub_10000F9D4();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s: Cancelling existing play %@!", v1, 0x16u);
}

void sub_1000215C4()
{
  v3[0] = 136315650;
  sub_10000F9D4();
  v4 = v0;
  v5 = v1;
  _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s: Starting play %@ %@", v3, 0x20u);
}

void sub_100021650(os_log_t log)
{
  v1 = 136315138;
  v2 = "[AXMTVideoFilePlayManager pausePlaybackForCurrentVideo]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: Pausing current video", &v1, 0xCu);
}

void sub_10002202C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100022044(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10002205C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v7 = [v8 type];

  if (v7 == AVMetadataObjectTypeFace)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_100022200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100022218(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 type];
  v8 = AVMetadataObjectTypeTrackedFaces;

  if (v7 == v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

intptr_t sub_100022658(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _processFaceKitResults:a2 withSampleBuffer:*(a1 + 48)];
  v3 = *(a1 + 40);

  return dispatch_semaphore_signal(v3);
}

void sub_100022B78(id a1)
{
  v21 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v1 = off_1000546B0;
  v30 = off_1000546B0;
  if (!off_1000546B0)
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10002800C;
    v25 = &unk_100048BA8;
    v26 = &v27;
    v2 = sub_100027DF8();
    v28[3] = dlsym(v2, "CVAFaceTrackingCopySemantics");
    off_1000546B0 = *(v26[1] + 24);
    v1 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v1)
  {
    sub_100029794();
    goto LABEL_18;
  }

  if (v1(0, &v21))
  {
    v3 = 1;
  }

  else
  {
    v3 = v21 == 0;
  }

  if (!v3)
  {
    v5 = qword_1000545F8;
    qword_1000545F8 = v21;

    v6 = qword_1000545F8;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v7 = qword_1000546B8;
    v30 = qword_1000546B8;
    if (!qword_1000546B8)
    {
      v22 = _NSConcreteStackBlock;
      v23 = 3221225472;
      v24 = sub_10002805C;
      v25 = &unk_100048BA8;
      v26 = &v27;
      v8 = sub_100027DF8();
      v9 = dlsym(v8, "kCVAFaceTracking_BlendshapeNames");
      *(v26[1] + 24) = v9;
      qword_1000546B8 = *(v26[1] + 24);
      v7 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (v7)
    {
      v4 = [v6 objectForKeyedSubscript:*v7];
      v31[0] = @"mouthSmile_L";
      v31[1] = @"mouthSmile_R";
      v31[2] = @"mouthClose";
      v31[3] = @"jawOpen";
      v31[4] = @"browOuterUp_L";
      v31[5] = @"browOuterUp_R";
      v31[6] = @"eyeBlink_R";
      v31[7] = @"eyeBlink_L";
      v31[8] = @"noseSneer_R";
      v31[9] = @"noseSneer_L";
      v31[10] = @"mouthRight";
      v31[11] = @"mouthLeft";
      v31[12] = @"mouthPucker";
      v10 = [NSArray arrayWithObjects:v31 count:13];
      +[NSMutableDictionary dictionary];
      v15 = _NSConcreteStackBlock;
      v16 = 3221225472;
      v17 = sub_100022F28;
      v18 = &unk_1000491C8;
      v20 = v19 = v10;
      v11 = v20;
      v12 = v10;
      [v4 enumerateObjectsUsingBlock:&v15];
      v13 = [v11 copy];
      v14 = qword_100054600;
      qword_100054600 = v13;

      goto LABEL_15;
    }

    sub_100029794();
LABEL_18:
    __break(1u);
  }

  v4 = AXSSLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100029070();
  }

LABEL_15:
}

void sub_100022F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100022F28(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v5 = [NSNumber numberWithUnsignedInteger:a3];
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

uint64_t sub_100022FAC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1000546C0;
  v7 = qword_1000546C0;
  if (!qword_1000546C0)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTracking_TrackedFacesArray");
    qword_1000546C0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t sub_1000230A0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1000546C8;
  v7 = qword_1000546C8;
  if (!qword_1000546C8)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTracking_SmoothData");
    qword_1000546C8 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

void sub_1000238BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000238F4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1000546E0;
  v7 = qword_1000546E0;
  if (!qword_1000546E0)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTrackingLiteFilter_SharedData");
    qword_1000546E0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t sub_100023F84()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100054740;
  v7 = qword_100054740;
  if (!qword_100054740)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionMouthPuckerCenter");
    qword_100054740 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t sub_100024078()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100054748;
  v7 = qword_100054748;
  if (!qword_100054748)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionMouthPuckerRight");
    qword_100054748 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t sub_10002416C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100054750;
  v7 = qword_100054750;
  if (!qword_100054750)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionMouthPuckerLeft");
    qword_100054750 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

void sub_100024934(id a1)
{
  v3[0] = @"tongue_out";
  v3[1] = @"mouthSmile_L";
  v4[0] = AXMTBlendShapeTongueOut;
  v4[1] = AXMTBlendShapeMouthSmileLeft;
  v3[2] = @"mouthSmile_R";
  v3[3] = @"jawOpen";
  v4[2] = AXMTBlendShapeMouthSmileRight;
  v4[3] = AXMTBlendShapeJawOpen;
  v3[4] = @"mouthClose";
  v3[5] = @"browOuterUp_L";
  v4[4] = AXMTBlendShapeMouthClose;
  v4[5] = AXMTBlendShapeBrowOuterUpLeft;
  v3[6] = @"browOuterUp_R";
  v3[7] = @"eyeBlink_R";
  v4[6] = AXMTBlendShapeBrowOuterUpRight;
  v4[7] = AXMTBlendShapeEyeBlinkRight;
  v3[8] = @"eyeBlink_L";
  v3[9] = @"noseSneer_R";
  v4[8] = AXMTBlendShapeEyeBlinkLeft;
  v4[9] = AXMTBlendShapeNoseSneerRight;
  v3[10] = @"noseSneer_L";
  v3[11] = @"mouthRight";
  v4[10] = AXMTBlendShapeNoseSneerLeft;
  v4[11] = AXMTBlendShapeMouthRight;
  v3[12] = @"mouthLeft";
  v3[13] = @"mouthPucker";
  v4[12] = AXMTBlendShapeMouthLeft;
  v4[13] = AXMTBlendShapeMouthPucker;
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:14];
  v2 = qword_100054610;
  qword_100054610 = v1;
}

void sub_1000259C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100025A00()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100054770;
  v7 = qword_100054770;
  if (!qword_100054770)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTracking_Rotation");
    qword_100054770 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t sub_100025AF4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100054778;
  v7 = qword_100054778;
  if (!qword_100054778)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTracking_Translation");
    qword_100054778 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t sub_100025BE8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100054780;
  v7 = qword_100054780;
  if (!qword_100054780)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTracking_Extrinsics");
    qword_100054780 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t sub_100025CDC()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100054788;
  v7 = qword_100054788;
  if (!qword_100054788)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTracking_Intrinsics");
    qword_100054788 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t sub_100025DD0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_100054790;
  v7 = qword_100054790;
  if (!qword_100054790)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTracking_CameraColor");
    qword_100054790 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

uint64_t sub_100025EC4()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1000547A0;
  v7 = qword_1000547A0;
  if (!qword_1000547A0)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTracking_DetectedFaceRect");
    qword_1000547A0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

void sub_1000263C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100026438(id a1)
{
  v1 = qword_100054620;
  qword_100054620 = &off_10004A030;
}

double sub_100026B40(float32x4_t _Q0)
{
  _S4 = _Q0.u32[1];
  _S5 = _Q0.u32[2];
  __asm { FMLS            S3, S5, V0.S[2] }

  _S6 = _Q0.u32[3];
  __asm { FMLA            S3, S6, V0.S[3] }

  v10 = vmuls_lane_f32(_Q0.f32[2], _Q0, 3);
  __asm
  {
    FMLA            S2, S4, V0.S[1]
    FMLA            S2, S6, V0.S[3]
    FMLA            S2, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
  }

  *(&_D3 + 1) = (v10 + (_Q0.f32[0] * _Q0.f32[1])) + (v10 + (_Q0.f32[0] * _Q0.f32[1]));
  __asm { FMLS            S5, S4, V0.S[1] }

  return _D3;
}

void sub_100026DE4(id a1)
{
  v1 = [NSUserDefaults alloc];
  v3 = [v1 initWithSuiteName:AXSSMotionTrackingPreferenceDomain];
  v2 = [v3 BOOLForKey:@"ShouldLogIntrinsics"];
  if (v2)
  {
    LOBYTE(v2) = AXSSIsAppleInternalBuild();
  }

  byte_100054630 = v2;
}

uint64_t sub_100027528()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = qword_1000547F8;
  v7 = qword_1000547F8;
  if (!qword_1000547F8)
  {
    v1 = sub_100027DF8();
    v5[3] = dlsym(v1, "kCVAFaceTracking_Pose");
    qword_1000547F8 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = sub_100029794();
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return *v0;
}

void *sub_100027DA8(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "CVAFaceTrackingCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100054690 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100027DF8()
{
  v3[0] = 0;
  if (!qword_100054698)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100027EF8;
    v3[4] = &unk_100048BE0;
    v3[5] = v3;
    v4 = off_1000492C8;
    v5 = 0;
    qword_100054698 = _sl_dlopen();
  }

  v0 = qword_100054698;
  v1 = v3[0];
  if (!qword_100054698)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t sub_100027EF8()
{
  result = _sl_dlopen();
  qword_100054698 = result;
  return result;
}

void *sub_100027F6C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "CVAFaceTrackingLiteFilterCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000546A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100027FBC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "CVAFaceTrackingProcess");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000546A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002800C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "CVAFaceTrackingCopySemantics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1000546B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002805C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_BlendshapeNames");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000546B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000280AC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_TrackedFacesArray");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000546C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000280FC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_SmoothData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000546C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002814C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_Animation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000546D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002819C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_AnimationBlendshapes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000546D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000281EC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilter_SharedData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000546E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002823C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilter_ClientData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000546E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002828C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilter_ClientDataAccessibility");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000546F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000282DC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilterClientAccessibility_Expressions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000546F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002832C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilterClientAccessibility_Landmarks");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054700 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002837C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilterClientAccessibility_LandmarkNoseBaseCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054708 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000283CC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionBrowsUp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054710 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002841C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionJawOpen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054718 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002846C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionSmile");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054720 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000284BC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionTongueOut");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054728 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002850C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionEyeBlink");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054730 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002855C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionNoseSneer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054738 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000285AC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionMouthPuckerCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054740 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000285FC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionMouthPuckerRight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054748 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002864C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTrackingLiteFilterClientAccessibility_ExpressionMouthPuckerLeft");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054750 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002869C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "CVAFaceTrackingLiteFilterProcessVanilla");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100054758 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000286EC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "CVAFaceTrackingLiteFilterCopyDecodedOutput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100054760 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002873C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "CVAFaceTrackingLiteFilterGetOutput");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_100054768 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002878C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_Rotation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054770 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000287DC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_Translation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054778 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002882C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_Extrinsics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054780 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002887C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_Intrinsics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054788 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000288CC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_CameraColor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054790 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002891C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_DetectedFaceFaceID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054798 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_10002896C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_DetectedFaceRect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000547A0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1000289BC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_DetectedFaceAngleInfoRoll");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000547A8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100028A0C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_DetectedFacesArray");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000547B0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100028A5C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_Color");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000547B8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100028AAC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_Timestamp");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000547C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100028AFC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_Callback");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000547C8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100028B4C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_AddMesh");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000547D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100028B9C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_ColorOnly");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000547D8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100028BEC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_NumTrackedFaces");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000547E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100028C3C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_UseRecognition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000547E8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100028C8C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_NetworkFailureThresholdMultiplier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000547F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100028CDC(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_Pose");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000547F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100028D2C(uint64_t a1)
{
  v2 = sub_100027DF8();
  result = dlsym(v2, "kCVAFaceTracking_LandmarkNames");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100054800 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100028E34(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "AXMTFaceKitFaceTracker: FaceKit ready @ %p", &v3, 0xCu);
}

void sub_100028F24(uint64_t a1, void *a2, NSObject *a3)
{
  v4 = 136315650;
  v5 = "[AXMTFaceKitFaceTracker _videoFrameisValidForProcessing:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = [a2 _faceKitRef];
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s: one of these is NULL! sampleBuffer: %@, self._faceKitRef: %@", &v4, 0x20u);
}

void sub_100028FD4(uint64_t a1, int a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "AXMTFaceKitFaceTracker: FaceKit processing failure on %p: %d!", &v3, 0x12u);
}

void sub_100029518()
{
  sub_100004854();
  sub_100004860();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029554()
{
  sub_100004854();
  sub_100004860();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029590()
{
  sub_100004854();
  sub_100004860();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100029680(void *a1, NSObject *a2)
{
  v4 = [a1 _inputConfiguration];
  v5 = [a1 _inputManager];
  v6 = [v5 inputToUse];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Can't find a tracker class for inputConfiguration %@, inputToUse %@", &v7, 0x16u);
}

uint64_t sub_100029794()
{
  dlerror();
  v0 = abort_report_np();
  return sub_1000297B8(v0);
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}