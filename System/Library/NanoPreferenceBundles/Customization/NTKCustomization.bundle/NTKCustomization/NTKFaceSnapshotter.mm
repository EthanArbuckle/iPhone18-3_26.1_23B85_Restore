@interface NTKFaceSnapshotter
+ (id)defaultModernSnapshotOptions;
- (NTKFaceSnapshotter)init;
- (id)viewControllerForFace:(id)face withOptions:(id)options;
- (void)_hideSnapshotWindow;
- (void)_mainQueue_serviceRequest:(id)request metrics:(id)metrics completion:(id)completion;
- (void)_queue_serviceRequestIfIdle;
- (void)_setupNotificationForCollectionLoadForDevice:(id)device completion:(id)completion;
- (void)_showSnapshotWindowForDevice:(id)device;
- (void)complicationCollectionDidLoad:(id)load;
- (void)dealloc;
- (void)provideSnapshotOfFace:(id)face completion:(id)completion;
- (void)provideSnapshotOfFace:(id)face options:(id)options completion:(id)completion;
- (void)requestSnapshotOfFace:(id)face options:(id)options completion:(id)completion;
@end

@implementation NTKFaceSnapshotter

+ (id)defaultModernSnapshotOptions
{
  v4[0] = @"NTKSnapshotUnadornedContentKey";
  v4[1] = @"NTKSnapshotUIOnlyKey";
  v5[0] = &__kCFBooleanFalse;
  v5[1] = &__kCFBooleanFalse;
  v4[2] = @"NTKSnapshotUseCanonicalContentKey";
  v4[3] = @"NTKSnapshotIgnoreSnapshotImages";
  v5[2] = &__kCFBooleanTrue;
  v5[3] = &__kCFBooleanTrue;
  v4[4] = @"NTKSnapshotPersistableKey";
  v4[5] = @"NTKSnapshotShouldUseSampleComplicationTemplatesKey";
  v5[4] = &__kCFBooleanTrue;
  v5[5] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:6];

  return v2;
}

- (NTKFaceSnapshotter)init
{
  v8.receiver = self;
  v8.super_class = NTKFaceSnapshotter;
  v2 = [(NTKFaceSnapshotter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    snapshotWindow = v2->_snapshotWindow;
    v2->_snapshotWindow = 0;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_796C;
    block[3] = &unk_20890;
    v7 = v3;
    if (qword_277B8 != -1)
    {
      dispatch_once(&qword_277B8, block);
    }
  }

  return v3;
}

- (void)_setupNotificationForCollectionLoadForDevice:(id)device completion:(id)completion
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7CF0;
  block[3] = &unk_20940;
  deviceCopy = device;
  selfCopy = self;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = deviceCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)provideSnapshotOfFace:(id)face options:(id)options completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_7EDC;
  v9[3] = &unk_20968;
  completionCopy = completion;
  v8 = completionCopy;
  [(NTKFaceSnapshotter *)self requestSnapshotOfFace:face options:options completion:v9];
}

- (void)requestSnapshotOfFace:(id)face options:(id)options completion:(id)completion
{
  faceCopy = face;
  optionsCopy = options;
  completionCopy = completion;
  v9 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "dispatching to face snapshotter queue", buf, 2u);
  }

  v10 = [optionsCopy objectForKey:@"NTKSnapshotMetricsKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [optionsCopy copy];
    v12 = v10;
  }

  else
  {
    v13 = [optionsCopy mutableCopy];
    v12 = [NTKFaceSnapshotServiceTaskResult rootTaskNamed:@"SnapshotterMetrics"];
    [v13 setObject:v12 forKey:@"NTKSnapshotMetricsKey"];
    v11 = [v13 copy];
  }

  v40 = 0;
  v14 = [v12 childTaskNamed:@"FaceSnapshot" error:&v40];
  v15 = v40;
  if (!v14)
  {
    v16 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_F69C();
    }
  }

  device = [faceCopy device];
  if (device)
  {
    v27 = optionsCopy;
    v39 = 0;
    v18 = [v12 childTaskNamed:@"CollectionLoad" error:&v39];
    v19 = v39;
    if (!v18)
    {
      v20 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_F704();
      }
    }

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_82D0;
    v36[3] = &unk_20868;
    v37 = v18;
    selfCopy = self;
    v21 = v18;
    [(NTKFaceSnapshotter *)self _setupNotificationForCollectionLoadForDevice:device completion:v36];

    optionsCopy = v27;
  }

  v22 = qword_277C8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_83C4;
  block[3] = &unk_209F8;
  v31 = faceCopy;
  v32 = v11;
  selfCopy2 = self;
  v35 = completionCopy;
  v33 = v14;
  v23 = completionCopy;
  v24 = v14;
  v25 = v11;
  v26 = faceCopy;
  dispatch_async(v22, block);
}

- (void)_queue_serviceRequestIfIdle
{
  dispatch_assert_queue_V2(qword_277C8);
  if ([qword_277D0 count])
  {
    if (byte_277D8 == 1)
    {
      v3 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v4 = "Already servicing a face snapshot request.";
LABEL_10:
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 2u);
      }
    }

    else
    {
      v5 = [qword_277D0 indexOfObjectPassingTest:&stru_20A38];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v6 = v5;
        v7 = [qword_277D0 objectAtIndex:v5];
        byte_277D8 = 1;
        [qword_277D0 removeObjectAtIndex:v6];
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_8998;
        v8[3] = &unk_20868;
        v9 = v7;
        selfCopy = self;
        v3 = v7;
        dispatch_async(&_dispatch_main_q, v8);

        goto LABEL_12;
      }

      v3 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v4 = "No complication snapshot requests are ready.";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v3 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = "No face snapshot requests to service.";
      goto LABEL_10;
    }
  }

LABEL_12:
}

- (void)provideSnapshotOfFace:(id)face completion:(id)completion
{
  completionCopy = completion;
  v12 = @"NTKSnapshotUIOnlyKey";
  v13 = &__kCFBooleanTrue;
  faceCopy = face;
  v8 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_8D2C;
  v10[3] = &unk_20A60;
  v11 = completionCopy;
  v9 = completionCopy;
  [(NTKFaceSnapshotter *)self provideSnapshotOfFace:faceCopy options:v8 completion:v10];
}

- (id)viewControllerForFace:(id)face withOptions:(id)options
{
  optionsCopy = options;
  faceCopy = face;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setRootViewController:0];
  [(NTKFaceSnapshotter *)self _hideSnapshotWindow];
  deepCopy = [faceCopy deepCopy];

  v9 = [NTKFaceViewController alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_8E54;
  v13[3] = &unk_20A88;
  v14 = optionsCopy;
  v10 = optionsCopy;
  v11 = [v9 initWithFace:deepCopy configuration:v13];
  [v11 freeze];

  return v11;
}

- (void)_mainQueue_serviceRequest:(id)request metrics:(id)metrics completion:(id)completion
{
  requestCopy = request;
  metricsCopy = metrics;
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  face = [requestCopy face];
  dailySnapshotKey = [face dailySnapshotKey];
  unsafeDailySnapshotKey = [face unsafeDailySnapshotKey];
  options = [requestCopy options];
  v69 = [face description];
  v11 = _NTKLoggingObjectForDomain();
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v69;
    _os_signpost_emit_with_name_impl(&dword_0, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FaceSnapshot", "%@", &buf, 0xCu);
  }

  v62 = v12;

  Current = CFAbsoluteTimeGetCurrent();
  v16 = [options objectForKeyedSubscript:@"NTKSnapshotOverrideDateKey"];
  if (v16)
  {
    v17 = NTKRoundDateDownToNearestSecond();

    NTKSetIdealizedDate();
    CLKSetCompanionDisplayDate();
  }

  else
  {
    v17 = 0;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v120 = 0x3032000000;
  v121 = sub_9BB0;
  v122 = sub_9BC0;
  v123 = 0;
  v61 = +[NTKFaceSnapshotContext currentContext];
  v117[0] = 0;
  v117[1] = v117;
  v117[2] = 0x2020000000;
  v118 = 0;
  v116 = 0;
  v71 = [metricsCopy childTaskNamed:@"FVC-Load" error:&v116];
  v18 = v116;
  v19 = v18;
  if (metricsCopy && v18)
  {
    v20 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_F8AC();
    }
  }

  v21 = objc_autoreleasePoolPush();
  v22 = +[NTKFaceViewRenderingContext sharedRenderingContext];
  device = [face device];
  [v22 setDevice:device];

  v24 = [(NTKFaceSnapshotter *)self viewControllerForFace:face withOptions:options];
  v25 = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v24;

  v26 = *(*(&buf + 1) + 40);
  v115[0] = _NSConcreteStackBlock;
  v115[1] = 3221225472;
  v115[2] = sub_9BC8;
  v115[3] = &unk_20AB0;
  v115[4] = v117;
  [v26 enumerateComplicationControllersAndDisplaysWithBlock:v115];
  device2 = [face device];
  [(NTKFaceSnapshotter *)self _showSnapshotWindowForDevice:device2];

  [*(*(&buf + 1) + 40) prepareForSnapshotting];
  v28 = +[UIColor clearColor];
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setBackgroundColor:v28];

  _UIAppSetStatusBarOrientation();
  _UIAppSetStatusBarHeight();
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setRootViewController:*(*(&buf + 1) + 40)];
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setHidden:0];
  faceView = [*(*(&buf + 1) + 40) faceView];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setNeedsLayout];
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow layoutIfNeeded];
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setNeedsDisplay];
  [faceView setNeedsRender];
  +[CATransaction commit];
  +[CATransaction flush];

  objc_autoreleasePoolPop(v21);
  v114 = v19;
  LOBYTE(faceView) = [v71 finishWithError:&v114];
  v30 = v114;

  if (!(faceView & 1 | (metricsCopy == 0)))
  {
    v31 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_F914();
    }
  }

  objc_initWeak(&location, self);
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = sub_9BB0;
  v111 = sub_9BC0;
  v112 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = sub_9D14;
  v105 = sub_9D40;
  v106 = 0;
  v86[0] = _NSConcreteStackBlock;
  v86[1] = 3221225472;
  v86[2] = sub_9D48;
  v86[3] = &unk_20AD8;
  v60 = v17;
  v87 = v60;
  objc_copyWeak(v100, &location);
  v100[1] = *&Current;
  v97 = v117;
  v59 = v69;
  v88 = v59;
  v32 = v14;
  v100[2] = v62;
  v70 = v32;
  v89 = v32;
  v98 = &v107;
  v33 = metricsCopy;
  v90 = v33;
  v58 = face;
  v91 = v58;
  v63 = dailySnapshotKey;
  v92 = v63;
  v66 = unsafeDailySnapshotKey;
  v93 = v66;
  v34 = v61;
  v94 = v34;
  v35 = requestCopy;
  v95 = v35;
  p_buf = &buf;
  v68 = completionCopy;
  v96 = v68;
  v36 = objc_retainBlock(v86);
  v37 = v102[5];
  v102[5] = v36;

  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = sub_9D14;
  v84[4] = sub_9D40;
  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_A680;
  v83[3] = &unk_20B00;
  v83[4] = &v101;
  v85 = objc_retainBlock(v83);
  v38 = dispatch_time(0, 20000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A718;
  block[3] = &unk_20B28;
  block[4] = &v101;
  block[5] = v84;
  dispatch_after(v38, &_dispatch_main_q, block);

  v80[0] = _NSConcreteStackBlock;
  v80[1] = 3221225472;
  v80[2] = sub_A7C8;
  v80[3] = &unk_20BA0;
  v80[4] = &buf;
  v80[5] = &v107;
  v80[6] = &v101;
  objc_copyWeak(&v81, &location);
  v80[7] = v84;
  v39 = objc_retainBlock(v80);
  options2 = [v35 options];
  v41 = [options2 valueForKey:@"NTKSnapshotPerformPrewarmRoutineKey"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    options3 = [v35 options];
    v44 = [options3 valueForKey:@"NTKSnapshotPerformPrewarmRoutineKey"];

    bOOLValue = [v44 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v79 = v30;
  v46 = [v33 childTaskNamed:@"Finalize" error:&v79];
  v47 = v79;

  v48 = v108[5];
  v108[5] = v46;

  if (v108[5] && v47)
  {
    v49 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_F97C();
    }
  }

  if (bOOLValue)
  {
    v50 = v108[5];
    v78 = v47;
    v51 = [v50 childTaskNamed:@"Prewarm" error:&v78];
    v52 = metricsCopy != 0;
    v53 = v78;

    if (v53)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0;
    }

    if (v54)
    {
      v55 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        sub_F9E4();
      }
    }

    v56 = *(*(&buf + 1) + 40);
    v73[0] = _NSConcreteStackBlock;
    v73[1] = 3221225472;
    v73[2] = sub_AB50;
    v73[3] = &unk_20BF0;
    v57 = v51;
    v74 = v57;
    v75 = v33;
    v77 = &v101;
    v76 = v39;
    [v56 performPrewarmRoutine:v73];

    v47 = v53;
  }

  else
  {
    (v39[2])(v39);
  }

  objc_destroyWeak(&v81);
  _Block_object_dispose(v84, 8);

  objc_destroyWeak(v100);
  _Block_object_dispose(&v101, 8);

  _Block_object_dispose(&v107, 8);
  objc_destroyWeak(&location);

  _Block_object_dispose(v117, 8);
  _Block_object_dispose(&buf, 8);
}

- (void)_showSnapshotWindowForDevice:(id)device
{
  deviceCopy = device;
  snapshotWindow = self->_snapshotWindow;
  v8 = deviceCopy;
  if (!snapshotWindow)
  {
    v6 = objc_alloc_init(NTKFaceSnapshottingWindow);
    v7 = self->_snapshotWindow;
    self->_snapshotWindow = v6;

    deviceCopy = v8;
    snapshotWindow = self->_snapshotWindow;
  }

  [(NTKFaceSnapshottingWindow *)snapshotWindow updateForDevice:deviceCopy];
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setHidden:0];
}

- (void)_hideSnapshotWindow
{
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setHidden:1];
  snapshotWindow = self->_snapshotWindow;
  self->_snapshotWindow = 0;
}

- (void)dealloc
{
  [(NTKFaceSnapshottingWindow *)self->_snapshotWindow setHidden:1];
  v3.receiver = self;
  v3.super_class = NTKFaceSnapshotter;
  [(NTKFaceSnapshotter *)&v3 dealloc];
}

- (void)complicationCollectionDidLoad:(id)load
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_AEA4;
  block[3] = &unk_20890;
  block[4] = self;
  dispatch_async(qword_277C8, block);
}

@end