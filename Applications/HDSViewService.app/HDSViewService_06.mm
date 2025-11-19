id sub_100090FD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupProgressBarView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000910C8()
{
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressViewConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabelConstraints) = 0;
  v1 = OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViewsGuide;
  *(v0 + v1) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_imageViews) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_progressView) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService27HomePodSetupProgressBarView_bodyLabel) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100091194(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

Swift::Int sub_1000911E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100091258()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unsigned __int8 *sub_10009129C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 1;
  if (v2 > 1)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

id sub_1000913E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreviewView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100091590()
{
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine) = 0;
  v1 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView;
  type metadata accessor for PreviewView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_setupSucceeded) = 0;
  v2 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session;
  *(v0 + v2) = [objc_allocWithZone(AVCaptureSession) init];
  v3 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_feedbackGenerator;
  *(v0 + v3) = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  v4 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_output;
  *(v0 + v4) = [objc_allocWithZone(AVCaptureVideoDataOutput) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_videoDeviceInput) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController__videoDevice) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_startIngesting) = 0;
  v5 = (v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1000916E8(char a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine] = 0;
  v3 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView;
  type metadata accessor for PreviewView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_setupSucceeded] = 0;
  v4 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session;
  *&v1[v4] = [objc_allocWithZone(AVCaptureSession) init];
  v5 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_feedbackGenerator;
  *&v1[v5] = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  v6 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_output;
  *&v1[v6] = [objc_allocWithZone(AVCaptureVideoDataOutput) init];
  *&v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_videoDeviceInput] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController__videoDevice] = 0;
  v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_startIngesting] = 0;
  v7 = &v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler];
  *v7 = 0;
  v7[1] = 0;
  v1[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_deviceModel] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SVSHomePodIDViewController();
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

Swift::Void __swiftcall SVSHomePodIDViewController.viewDidLoad()()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for SVSHomePodIDViewController();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView];
  v2 = *&v0[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session];
  v3 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setSession:v2];

  sub_100092BD0();
  [*&v0[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_feedbackGenerator] prepare];
  v4 = [v1 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setVideoGravity:AVLayerVideoGravityResizeAspectFill];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview:v1];

    v7 = [v1 layer];
    v8 = [v0 view];
    if (v8)
    {
      v9 = v8;
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [v7 setFrame:{v11, v13, v15, v17}];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall SVSHomePodIDViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v47 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v55 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v46 - v19;
  __chkstk_darwin(v18);
  v22 = &v46 - v21;
  v23 = type metadata accessor for SVSHomePodIDViewController();
  v67.receiver = v2;
  v67.super_class = v23;
  objc_msgSendSuper2(&v67, "viewWillAppear:", a1);
  [*&v2[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session] startRunning];
  v48 = sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v57 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v14 + 8);
  v24(v20, v13);
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  v65 = sub_1000930CC;
  v66 = v25;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_100091194;
  v64 = &unk_1000F18E8;
  v26 = _Block_copy(&aBlock);
  v53 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  v27 = sub_100014530();
  v28 = sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  v51 = sub_100014588();
  v52 = v28;
  v54 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = v57;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v26);

  v30 = *(v60 + 8);
  v56 = v7;
  v31 = v7;
  v32 = v47;
  v57 = v4;
  v33 = v24;
  v60 += 8;
  v50 = v30;
  v30(v31, v4);
  v34 = *(v59 + 8);
  v59 += 8;
  v49 = v34;
  v34(v12, v58);
  v24(v22, v32);
  v35 = static OS_dispatch_queue.main.getter();
  v36 = v55;
  v37 = v35;
  static DispatchTime.now()();
  if (qword_1001016E8 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for DispatchTimeInterval();
  sub_100012AAC(v38, HomePodViewfinderCircleAnimationDelay);
  + infix(_:_:)();
  v33(v36, v32);
  + infix(_:_:)();
  v33(v20, v32);
  v39 = swift_allocObject();
  v40 = v53;
  *(v39 + 16) = v53;
  v65 = sub_100093108;
  v66 = v39;
  aBlock = _NSConcreteStackBlock;
  v62 = 1107296256;
  v63 = sub_100091194;
  v64 = &unk_1000F1938;
  v41 = _Block_copy(&aBlock);
  v42 = v40;

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  v43 = v32;
  v44 = v56;
  v45 = v57;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v41);

  v50(v44, v45);
  v49(v12, v58);
  v33(v22, v43);
}

Swift::Void __swiftcall SVSHomePodIDViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SVSHomePodIDViewController();
  v19.receiver = v2;
  v19.super_class = v14;
  objc_msgSendSuper2(&v19, "viewDidDisappear:", a1);
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100093120;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F1988;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014530();
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

void sub_1000923E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session);

    [v2 stopRunning];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine);

    [v5 reset];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine];
    *&v6[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine] = 0;
  }
}

Swift::Void __swiftcall SVSHomePodIDViewController.viewDidLayoutSubviews()()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SVSHomePodIDViewController();
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView] layer];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame:{v5, v7, v9, v11}];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SVSHomePodIDViewController.configureEngine()()
{
  v1 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine;
  if (!*(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_deviceModel);
    if (v2 == 1)
    {
      v3 = v0;
      v4 = [objc_allocWithZone(AnalysisEngine) initForType:1];
      if (v4)
      {
LABEL_7:
        v5 = v4;
        sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
        v6 = v5;
        v7 = static OS_dispatch_queue.main.getter();
        [v6 setDispatchQueue:v7];

        v8 = v3;
        v9 = *(v3 + v1);
        *(v8 + v1) = v6;
        v10 = v6;

        [v10 setUseRecognizer:1];
        LODWORD(v11) = 1045220557;
        [v10 setMotionRotationThreshold:v11];
        [v10 setUsingM7Motion:0];
        LODWORD(v12) = 1024416809;
        [v10 setMotionAccelerationThreshold:v12];
        v13 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = v13;
        v17[4] = sub_1000931A0;
        v17[5] = v15;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 1107296256;
        v17[2] = sub_100091194;
        v17[3] = &unk_1000F1A00;
        v16 = _Block_copy(v17);

        [v10 setRecognizingCompletionHandlerBlock:v16];

        _Block_release(v16);
        return;
      }

      __break(1u);
    }

    if (!v2)
    {
      v3 = v0;
      v4 = [objc_allocWithZone(AnalysisEngine) initForType:0];
      if (v4)
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }
}

void sub_100092984()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong recognizingCompletionHandlerBlock];

    if (v2)
    {
      _Block_release(v2);
      swift_beginAccess();
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        [v3 setRecognizingCompletionHandlerBlock:0];
      }

      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        [v5 reset];
      }

      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = *&v7[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine];
        *&v7[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine] = 0;
      }

      swift_beginAccess();
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        v11 = *(v9 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_feedbackGenerator);

        [v11 notificationOccurred:0];
      }

      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      if (v12)
      {
        v13 = *(v12 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler);
        v14 = v12;
        sub_100061704(v13);

        if (v13)
        {
          v13();
          sub_100061714(v13);
        }
      }
    }
  }
}

void sub_100092BD0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session);
  [v2 beginConfiguration];
  v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_output);
  [v3 setAlwaysDiscardsLateVideoFrames:1];
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v4 = static OS_dispatch_queue.main.getter();
  [v3 setSampleBufferDelegate:v1 queue:v4];

  [v2 addOutput:v3];
  value = AVCaptureSessionPresetHigh;
  [v2 setSessionPreset:AVCaptureSessionPresetHigh];
  v6 = objc_opt_self();
  v7 = [v6 defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInDualCamera mediaType:AVMediaTypeVideo position:1];
  v8 = v7;
  if (!v7)
  {
    v9 = [v6 defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera mediaType:AVMediaTypeVideo position:1];
    if (!v9)
    {
      v19 = 0;
      goto LABEL_8;
    }

    v8 = v9;
  }

  v10 = objc_allocWithZone(AVCaptureDeviceInput);
  v35.value = 0;
  v11 = v8;
  v12 = v7;
  v13 = [v10 initWithDevice:v11 error:&v35];
  if (!v13)
  {
    v33 = v35.value;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
LABEL_23:
    v34 = value;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = v35.value;

  if (![v2 canAddInput:v14])
  {
    __break(1u);
  }

  [v2 addInput:v14];
  v16 = *(v1 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_videoDeviceInput);
  *(v1 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_videoDeviceInput) = v14;
  v17 = v14;

  v18 = *(v1 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController__videoDevice);
  *(v1 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController__videoDevice) = v11;
  v19 = v11;

  [v2 setSessionPreset:AVCaptureSessionPresetHigh];
  v35.value = 0;
  v20 = [v19 lockForConfiguration:&v35];
  value = v35.value;
  if ((v20 & 1) == 0)
  {
    goto LABEL_23;
  }

  v21 = v35.value;
  v36 = CMTime.init(value:timescale:)(10, 300);
  v22 = v36.value;
  timescale = v36.timescale;
  epoch = v36.epoch;
  v35 = v36;
  v25 = HIDWORD(*&v36.timescale);
  [v19 setActiveVideoMinFrameDuration:&v35];
  v35.value = v22;
  *&v35.timescale = __PAIR64__(v25, timescale);
  v35.epoch = epoch;
  [v19 setActiveVideoMaxFrameDuration:&v35];
  [v19 unlockForConfiguration];

LABEL_8:
  v26 = [v3 connectionWithMediaType:AVMediaTypeVideo];
  if (v26)
  {
    v27 = v26;
    if ([v26 isVideoStabilizationSupported])
    {
      [v27 setPreferredVideoStabilizationMode:-1];
    }
  }

  v28 = [*(v1 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView) layer];
  objc_opt_self();
  v29 = [swift_dynamicCastObjCClassUnconditional() connection];

  if (v29)
  {
    if ([v29 isVideoOrientationSupported])
    {
      v30 = [objc_opt_self() sharedApplication];
      v31 = [v30 activeInterfaceOrientation];

      if ((v31 - 2) >= 3)
      {
        v32 = 1;
      }

      else
      {
        v32 = v31;
      }

      [v29 setVideoOrientation:v32];
    }
  }

  [v2 commitConfiguration];
}

uint64_t sub_100093094()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000930F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100093128()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100093160()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000931A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100092984();
}

id SVSHomePodIDViewController.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session] stopRunning];
  v1 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine;
  v2 = *&v0[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine];
  if (v2)
  {
    [v2 reset];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v5.receiver = v0;
  v5.super_class = type metadata accessor for SVSHomePodIDViewController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

Swift::Void __swiftcall SVSHomePodIDViewController.captureOutput(_:didOutput:from:)(AVCaptureOutput _, CMSampleBufferRef didOutput, AVCaptureConnection from)
{
  if (*(v3 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_startIngesting) == 1)
  {
    _.super.isa = *(v3 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine);
    if (_.super.isa)
    {
      [(objc_class *)_.super.isa ingestVideoFrame:_._outputInternal, from.super.isa, from._internal];
    }
  }
}

unint64_t sub_10009340C()
{
  result = qword_1001044B8;
  if (!qword_1001044B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001044B8);
  }

  return result;
}

void sub_100093460()
{
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine) = 0;
  v1 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_preView;
  type metadata accessor for PreviewView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_setupSucceeded) = 0;
  v2 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_session;
  *(v0 + v2) = [objc_allocWithZone(AVCaptureSession) init];
  v3 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_feedbackGenerator;
  *(v0 + v3) = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  v4 = OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_output;
  *(v0 + v4) = [objc_allocWithZone(AVCaptureVideoDataOutput) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_videoDeviceInput) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController__videoDevice) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_startIngesting) = 0;
  v5 = (v0 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000935A0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100093610(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_10003AE18(0, &qword_100104620, UIImage_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_100093860()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_1001044D0);
  v1 = sub_100012AAC(v0, qword_1001044D0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100093928()
{
  v1 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___disclaimerLabel;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___disclaimerLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___disclaimerLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(PRXLabel) initWithStyle:3];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1000939A0()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v75 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = (&v75 - v12);
  v14 = type metadata accessor for HomePodSetupSoundRecognitionViewController();
  v78.receiver = v1;
  v78.super_class = v14;
  objc_msgSendSuper2(&v78, "viewDidLoad");
  v15 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(&v1[v15], v5, &qword_100103420, &unk_1000BCE90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000EBA4(v5, &qword_100103420, &unk_1000BCE90);
    if (qword_1001016F0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_1001044D0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetupSoundRecognitionViewController: viewDidLoad failed because viewModel not set.", v19, 2u);
    }
  }

  else
  {
    sub_100012BAC(v5, v13, type metadata accessor for HomePodSetupViewModel);
    if (qword_1001016F0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100012AAC(v20, qword_1001044D0);
    sub_100012AE4(v13, v11);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v77 = v24;
      *v23 = 136315138;
      v25 = v13;
      v26 = *v11;
      v27 = v11[1];

      sub_100012C14(v11, type metadata accessor for HomePodSetupViewModel);
      v28 = sub_1000B08A0(v26, v27, &v77);
      v13 = v25;

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupSoundRecognitionViewController: viewDidLoad with title %s", v23, 0xCu);
      sub_10000E70C(v24);
    }

    else
    {

      sub_100012C14(v11, type metadata accessor for HomePodSetupViewModel);
    }

    sub_1000945D8(v13);
    v29 = *(v13 + v6[10]);
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v29, sub_1000951D8, v30);

    if ((*(v13 + v6[19]) & 2) == 0)
    {
      v31 = (v13 + v6[20]);
      if (v31[1])
      {
        v33 = v31[6];
        v32 = v31[7];
        v35 = v31[4];
        v34 = v31[5];
        v37 = v31[2];
        v36 = v31[3];
        v38 = *v31;
        v39 = String._bridgeToObjectiveC()();
        v40 = String._bridgeToObjectiveC()();
        v41 = String._bridgeToObjectiveC()();
        v42 = String._bridgeToObjectiveC()();
        v43 = [v1 dismissalConfirmationActionWithTitle:v39 message:v40 confirmButtonTitle:v41 cancelButtonTitle:v42];

        [v1 setDismissButtonAction:v43];
      }
    }

    v44 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_myContentView;
    [*&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_myContentView] setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = [v1 contentView];
    [v45 addSubview:*&v1[v44]];

    v46 = sub_100093928();
    v47 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
    [v46 setFont:v47];

    v76 = v13;
    v48 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___disclaimerLabel;
    [*&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___disclaimerLabel] setAdjustsFontSizeToFitWidth:1];
    [*&v1[v48] setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = [v1 contentView];
    [v49 addSubview:*&v1[v48]];

    v50 = [v1 contentView];
    v51 = [v50 mainContentGuide];

    v75 = objc_opt_self();
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1000BEC10;
    v53 = [*&v1[v44] topAnchor];
    v54 = [v51 topAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];

    *(v52 + 32) = v55;
    v56 = [*&v1[v44] leadingAnchor];
    v57 = [v51 leadingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    *(v52 + 40) = v58;
    v59 = [*&v1[v44] trailingAnchor];
    v60 = [v51 trailingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v52 + 48) = v61;
    v62 = [*&v1[v44] bottomAnchor];
    v63 = [*&v1[v48] topAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:-20.0];

    *(v52 + 56) = v64;
    v65 = [*&v1[v48] leadingAnchor];
    v66 = [v51 leadingAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];

    *(v52 + 64) = v67;
    v68 = [*&v1[v48] trailingAnchor];
    v69 = [v51 trailingAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];

    *(v52 + 72) = v70;
    v71 = [*&v1[v48] bottomAnchor];
    v72 = [v51 bottomAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];

    *(v52 + 80) = v73;
    sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v75 activateConstraints:isa];

    sub_100012C14(v76, type metadata accessor for HomePodSetupViewModel);
  }
}

uint64_t sub_100094328(char *a1)
{
  v1 = *a1;
  if (qword_1001016F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_1001044D0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = sub_10000FEC4(v1);
    v9 = sub_1000B08A0(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupSoundRecognitionViewController: User tapped on button: %s", v5, 0xCu);
    sub_10000E70C(v6);
  }

  v15 = 0;
  memset(v14, 0, sizeof(v14));
  memset(v17, 0, sizeof(v17));
  LOBYTE(v16) = v1;
  sub_100012DA0(v14, v17, &qword_1001025D0, &unk_1000BD010);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      sub_10007A070(&v16);
      swift_unknownObjectRelease();
    }
  }

  return sub_100012E08(&v16);
}

id sub_1000945D8(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for AdjustedImage(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = a1[1];
  v15 = String._bridgeToObjectiveC()();
  [v2 setTitle:v15];

  v16 = a1[2];
  v17 = a1[3];
  v18 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v18];

  v19 = sub_100093928();
  v20 = type metadata accessor for HomePodSetupViewModel(0);
  v21 = (a1 + v20[8]);
  v22 = *v21;
  v23 = v21[1];
  v24 = String._bridgeToObjectiveC()();
  [v19 setText:v24];

  [v2 setDismissalType:*(a1 + v20[19])];
  v25 = *(a1 + v20[11]);
  if (v25 >> 62)
  {
    if (v25 < 0)
    {
      v27 = *(a1 + v20[11]);
    }

    v28 = *(a1 + v20[11]);
    v29 = _CocoaArrayWrapper.endIndex.getter();
    v25 = v28;
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_9:
    sub_10000F25C(a1 + v20[28], v7, &unk_100102610, &unk_1000BD130);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      return sub_10000EBA4(v7, &unk_100102610, &unk_1000BD130);
    }

    sub_100012BAC(v7, v12, type metadata accessor for AdjustedImage);
    v30 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:*v12];
    sub_100083828(v12 + *(v8 + 20));
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = *&v2[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_myContentView];
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000BCE00;
    *(v32 + 32) = v30;
    v33 = *&v31[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews];
    *&v31[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews] = v32;
    v34 = v31;
    v35 = v30;
    sub_10004781C(v33);

    return sub_100012C14(v12, type metadata accessor for AdjustedImage);
  }

  if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_3:

  return sub_10009494C(v25);
}

id sub_10009494C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_images;
  v4 = *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_images];

  v6 = sub_100093610(v5, a1);

  if ((v6 & 1) == 0)
  {
    v8 = *&v1[v3];
    *&v1[v3] = a1;

    result = [v1 isViewLoaded];
    if (result)
    {
      v15 = _swiftEmptyArrayStorage;
      v9 = *&v1[v3];
      v10 = v1;

      sub_100094D10(v11, v10, &v15);

      v12 = *&v10[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_myContentView];
      v13 = *&v12[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews];
      *&v12[OBJC_IVAR____TtC14HDSViewService27HomePodSetupIconContentView_imageViews] = v15;
      v14 = v12;

      sub_10004781C(v13);
    }
  }

  return result;
}

id sub_100094AB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupSoundRecognitionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupSoundRecognitionViewController()
{
  result = qword_100104528;
  if (!qword_100104528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100094BE8()
{
  sub_100012108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100094CBC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_100094D10(unint64_t a1, uint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v12 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_style;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [objc_allocWithZone(PRXImageView) initWithStyle:*(a2 + v12)];
      [v10 setImage:v8];
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      ++v6;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

id sub_100094E9C(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  if (qword_1001016F0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_1001044D0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "HomePodSetupSoundRecognitionViewController: presenter:didUpdate viewModel", v11, 2u);
  }

  sub_100012AE4(a1, v7);
  v12 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v7, v2 + v13, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v2 isViewLoaded];
  if (result)
  {
    return sub_1000945D8(a1);
  }

  return result;
}

id sub_100095084(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_viewModel;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_termsManager] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___moreInfoButton] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController____lazy_storage___disclaimerLabel] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_images] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_myContentView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for HomePodSetupIconContentView()) initWithCardStyle:0];
  *&v1[OBJC_IVAR____TtC14HDSViewService42HomePodSetupSoundRecognitionViewController_style] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HomePodSetupSoundRecognitionViewController();
  return objc_msgSendSuper2(&v7, "initWithContentView:", a1);
}

uint64_t sub_1000951A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000951E0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000534EC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000952D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10009880C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000988AC(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_1000953C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_titleLabel;
  *&v3[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_valueLabel;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  if (a3)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for HomePodInfoTableCell();
  v9 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a1, v8);

  v10 = v9;
  sub_1000955A0();

  return v10;
}

id sub_1000954C4(void *a1)
{
  v3 = OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_titleLabel;
  *&v1[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_valueLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v9.receiver = v1;
  v9.super_class = type metadata accessor for HomePodInfoTableCell();
  v5 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1000955A0();
  }

  return v6;
}

void sub_1000955A0()
{
  v1 = OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_titleLabel;
  [*&v0[OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[v1] setNumberOfLines:0];
  v2 = *&v0[v1];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 labelColor];
  [v4 setTextColor:v5];

  v6 = [v0 contentView];
  [v6 addSubview:*&v0[v1]];

  v7 = OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_valueLabel;
  [*&v0[OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_valueLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[v7] setTextAlignment:2];
  [*&v0[v7] setNumberOfLines:0];
  v8 = *&v0[v7];
  v9 = [v3 secondaryLabelColor];
  [v8 setTextColor:v9];

  v10 = [v0 contentView];
  [v10 addSubview:*&v0[v7]];

  v33 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000BD420;
  v12 = [*&v0[v1] centerYAnchor];
  v13 = [v0 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v11 + 32) = v14;
  v15 = [*&v0[v1] leadingAnchor];
  v16 = [v0 leadingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v11 + 40) = v17;
  v18 = [*&v0[v1] trailingAnchor];
  v19 = [*&v0[v7] leadingAnchor];
  v20 = [v18 constraintLessThanOrEqualToAnchor:v19];

  *(v11 + 48) = v20;
  v21 = [*&v0[v7] centerYAnchor];
  v22 = [v0 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v11 + 56) = v23;
  v24 = [*&v0[v7] trailingAnchor];
  v25 = [v0 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v11 + 64) = v26;
  sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v33 activateConstraints:isa];

  v28 = *&v0[v1];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 _preferredFontForTextStyle:UIFontTextStyleFootnote variant:1024];
  [v30 setFont:v31];

  v32 = *&v0[v7];
  v34 = [v29 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v32 setFont:v34];
}

id sub_100095AE0()
{
  [v0 setDelegate:v0];
  [v0 setDataSource:v0];
  [v0 setRowHeight:UITableViewAutomaticDimension];
  [v0 setEstimatedRowHeight:44.0];
  [v0 setAlwaysBounceVertical:0];
  type metadata accessor for HomePodInfoTableCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = String._bridgeToObjectiveC()();
  [v0 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v2];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 frame];
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v7 = CGRectGetWidth(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGRectGetHeight(v15);
  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, v7, 1.0}];
  [v0 setTableFooterView:v8];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;

  return [v0 setSeparatorInset:{UIEdgeInsetsZero.top, left, bottom, right}];
}

uint64_t sub_100095C9C(uint64_t *a1)
{
  sub_10000E6C4(&qword_100104638, qword_1000BED58);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000BD070;
  v4 = String._bridgeToObjectiveC()();
  v5 = sub_100006658(v4);

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v10 = *a1;
  v9 = a1[1];
  *(v3 + 32) = v6;
  *(v3 + 40) = v8;
  *(v3 + 48) = v10;
  *(v3 + 56) = v9;

  v11 = String._bridgeToObjectiveC()();
  v12 = sub_100006658(v11);

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v17 = a1[2];
  v16 = a1[3];
  *(v3 + 64) = v13;
  *(v3 + 72) = v15;
  *(v3 + 80) = v17;
  *(v3 + 88) = v16;

  v18 = String._bridgeToObjectiveC()();
  v19 = sub_100006658(v18);

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = a1[4];
  v24 = a1[5];
  v25 = String.uppercased()();
  *(v3 + 96) = v20;
  *(v3 + 104) = v22;
  *(v3 + 112) = v25;
  v26 = *(v1 + OBJC_IVAR____TtC14HDSViewService29HomePodSetupWiFiInfoTableView_elements);
  *(v1 + OBJC_IVAR____TtC14HDSViewService29HomePodSetupWiFiInfoTableView_elements) = v3;

  return sub_100095E28();
}

uint64_t sub_100095E28()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v1 - 8);
  v2 = *(v15 + 64);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v5 = *(v14 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003AE18(0, &qword_1001025F0, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_100098B20;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F1BB8;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014530();
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100098B70(&qword_100104300, &unk_100102600, &qword_1000BE4E0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v15 + 8))(v4, v1);
  return (*(v5 + 8))(v8, v14);
}

unint64_t sub_100096100(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithIdentifier:v3 forIndexPath:isa];

  type metadata accessor for HomePodInfoTableCell();
  v6 = swift_dynamicCastClassUnconditional();
  v7 = *(v6 + OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_titleLabel);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = OBJC_IVAR____TtC14HDSViewService29HomePodSetupWiFiInfoTableView_elements;
  v10 = *(v1 + OBJC_IVAR____TtC14HDSViewService29HomePodSetupWiFiInfoTableView_elements);
  if (result >= *(v10 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = v10 + 32 * result;
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);

  v14 = String._bridgeToObjectiveC()();

  [v7 setText:v14];

  v15 = *(v6 + OBJC_IVAR____TtC14HDSViewService20HomePodInfoTableCell_valueLabel);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = *(v1 + v9);
  if (result < *(v16 + 16))
  {
    v17 = v16 + 32 * result;
    v18 = *(v17 + 48);
    v19 = *(v17 + 56);

    v20 = String._bridgeToObjectiveC()();

    [v15 setText:v20];

    return v6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_10009652C()
{
  v1 = v0;
  v2 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_100098720;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009878C;
  aBlock[3] = &unk_1000F1B68;
  v3 = _Block_copy(aBlock);
  v4 = [v2 initWithDynamicProvider:v3];
  _Block_release(v3);

  v5 = objc_opt_self();
  v6 = [v5 configurationWithHierarchicalColor:v4];

  v7 = objc_opt_self();
  v8 = [v7 systemBlueColor];
  v9 = [v5 configurationWithHierarchicalColor:v8];

  v10 = *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_rssi] + 77.5;
  v11 = fabsf(sqrtf((v10 * v10) + 450.0));
  sub_100097F90(((v10 / (v11 + v11)) + 0.5));
  v13 = v12;
  v213.is_nil = sub_10003AE18(0, &qword_100104620, UIImage_ptr);
  v14._countAndFlagsBits = 1768319351;
  v14._object = 0xE400000000000000;
  v213.value.super.isa = 0;
  v15 = UIImage.init(systemName:variableValue:configuration:)(v14, v13 / 3.0, v213);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = [objc_allocWithZone(UIImage) init];
    v15 = 0;
  }

  v209 = v7;
  v17 = v15;
  v18 = [v16 imageByApplyingSymbolConfiguration:v6];

  if (!v18)
  {
    v18 = [objc_allocWithZone(UIImage) init];
  }

  v211 = v18;
  v19 = String._bridgeToObjectiveC()();
  v20 = objc_opt_self();
  v21 = [v20 _systemImageNamed:v19];

  v22 = v21;
  if (!v21)
  {
    v22 = [objc_allocWithZone(UIImage) init];
  }

  v23 = v21;
  v208 = v6;
  v24 = [v22 imageByApplyingSymbolConfiguration:v6];

  if (!v24)
  {
    v24 = [objc_allocWithZone(UIImage) init];
  }

  v25 = v24;
  v26 = String._bridgeToObjectiveC()();
  v27 = [v20 _systemImageNamed:v26];

  v28 = v27;
  if (!v27)
  {
    v28 = [objc_allocWithZone(UIImage) init];
  }

  v29 = v27;
  v207 = v9;
  v30 = [v28 imageByApplyingSymbolConfiguration:v9];

  if (!v30)
  {
    v30 = [objc_allocWithZone(UIImage) init];
  }

  v31 = v30;
  [v1 setSelectionStyle:0];
  v32 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_separatorView;
  v210 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_separatorView;
  v33 = *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_separatorView];
  v34 = [v1 traitCollection];
  v35 = [v34 userInterfaceStyle];

  v36 = &selRef_systemGray4Color;
  if (v35 != 2)
  {
    v36 = &selRef_systemGray6Color;
  }

  v37 = [v7 *v36];
  [v33 setBackgroundColor:v37];

  [*&v1[v32] setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = [objc_allocWithZone(UIImageView) initWithImage:v25];
  v206 = v25;

  v39 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_passwordProtectedImageView;
  v40 = *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_passwordProtectedImageView];
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_passwordProtectedImageView] = v38;

  v41 = [objc_allocWithZone(UIImageView) initWithImage:v211];
  v42 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_wifiIconImageView;
  v43 = *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_wifiIconImageView];
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_wifiIconImageView] = v41;

  v44 = [objc_allocWithZone(UIImageView) initWithImage:v31];
  v205 = v31;

  v45 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_selectedImageView;
  v46 = *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_selectedImageView];
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_selectedImageView] = v44;

  [*&v1[v39] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v39] setContentMode:4];
  [*&v1[v39] setHidden:v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_hideLockIcon]];
  [*&v1[v42] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v42] setContentMode:4];
  [*&v1[v45] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v45] setContentMode:4];
  v47 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel;
  [*&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v47] setNumberOfLines:1];
  v48 = *&v1[v47];
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 preferredFontForTextStyle:UIFontTextStyleBody];
  [v50 setFont:v51];

  v52 = *&v1[v47];
  v53 = [v209 labelColor];
  [v52 setTextColor:v53];

  v54 = v45;
  v55 = [v1 contentView];
  [v55 addSubview:*&v1[v39]];

  v56 = [v1 contentView];
  [v56 addSubview:*&v1[v42]];

  v57 = [v1 contentView];
  [v57 addSubview:*&v1[v45]];

  v58 = [v1 contentView];
  [v58 addSubview:*&v1[v210]];

  v59 = v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_isReachable];
  aBlock[0] = _swiftEmptyArrayStorage;
  if (v59 == 1)
  {
    v202 = v45;
    v203 = v39;
    v204 = v42;
    v60 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_subTitleLabel;
    [*&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_subTitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v1[v60] setNumberOfLines:1];
    v61 = *&v1[v60];
    v62 = [v49 preferredFontForTextStyle:UIFontTextStyleCaption1];
    [v61 setFont:v62];

    [*&v1[v60] setAdjustsFontSizeToFitWidth:0];
    v63 = *&v1[v60];
    v64 = [v209 secondaryLabelColor];
    [v63 setTextColor:v64];

    v65 = *&v1[v60];
    v66 = String._bridgeToObjectiveC()();
    v67 = sub_100006658(v66);

    if (!v67)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = String._bridgeToObjectiveC()();
    }

    [v65 setText:v67];

    v68 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_labelStackView;
    [*&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_labelStackView] addSubview:*&v1[v47]];
    [*&v1[v68] addSubview:*&v1[v60]];
    v201 = objc_opt_self();
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1000BEC10;
    v70 = [*&v1[v47] leadingAnchor];
    v71 = [*&v1[v68] leadingAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    *(v69 + 32) = v72;
    v73 = [*&v1[v47] trailingAnchor];
    v74 = [*&v1[v68] trailingAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];

    *(v69 + 40) = v75;
    v76 = [*&v1[v47] topAnchor];
    v77 = [*&v1[v68] topAnchor];
    v78 = [v76 constraintEqualToAnchor:v77];

    *(v69 + 48) = v78;
    v79 = [*&v1[v47] bottomAnchor];
    v80 = [*&v1[v60] topAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];

    *(v69 + 56) = v81;
    v82 = [*&v1[v60] leadingAnchor];
    v83 = [*&v1[v68] leadingAnchor];
    v84 = [v82 constraintEqualToAnchor:v83];

    *(v69 + 64) = v84;
    v85 = [*&v1[v60] trailingAnchor];
    v86 = [*&v1[v68] trailingAnchor];
    v87 = [v85 constraintEqualToAnchor:v86];

    *(v69 + 72) = v87;
    v88 = [*&v1[v60] bottomAnchor];
    v89 = [*&v1[v68] bottomAnchor];
    v90 = [v88 constraintEqualToAnchor:v89 constant:0.0];

    *(v69 + 80) = v90;
    sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v201 activateConstraints:isa];

    v92 = v68;
    [*&v1[v68] setAlignment:1];
    [*&v1[v68] setAxis:1];
    [*&v1[v68] setDistribution:2];
    [*&v1[v68] setTranslatesAutoresizingMaskIntoConstraints:0];
    v93 = [v1 contentView];
    [v93 addSubview:*&v1[v68]];

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BECA0;
    v95 = [*&v1[v202] leadingAnchor];
    v96 = [v1 leadingAnchor];
    v97 = [v95 constraintEqualToAnchor:v96 constant:20.0];

    *(inited + 32) = v97;
    v98 = [*&v1[v202] centerYAnchor];
    v99 = [v1 centerYAnchor];
    v100 = [v98 constraintEqualToAnchor:v99 constant:0.0];

    *(inited + 40) = v100;
    v101 = [*&v1[v202] widthAnchor];
    v102 = [v101 constraintEqualToConstant:10.0];

    *(inited + 48) = v102;
    v103 = [*&v1[v202] heightAnchor];
    v104 = [v103 constraintEqualToConstant:10.0];

    *(inited + 56) = v104;
    v105 = [*&v1[v68] leadingAnchor];
    v106 = [*&v1[v202] trailingAnchor];
    v107 = [v105 constraintEqualToAnchor:v106 constant:16.0];

    *(inited + 64) = v107;
    v108 = [*&v1[v68] centerYAnchor];
    v109 = [v1 centerYAnchor];
    v110 = [v108 constraintEqualToAnchor:v109 constant:0.0];

    *(inited + 72) = v110;
    v111 = [*&v1[v68] trailingAnchor];
    v112 = [*&v1[v203] leadingAnchor];
    v113 = [v111 constraintEqualToAnchor:v112 constant:-10.0];

    *(inited + 80) = v113;
    v114 = [*&v1[v203] centerYAnchor];
    v115 = [v1 centerYAnchor];
    v116 = [v114 constraintEqualToAnchor:v115 constant:0.0];

    *(inited + 88) = v116;
    v117 = [*&v1[v203] widthAnchor];
    v118 = [v117 constraintEqualToConstant:10.0];

    *(inited + 96) = v118;
    v119 = [*&v1[v203] heightAnchor];
    v120 = [v119 constraintEqualToConstant:10.0];

    *(inited + 104) = v120;
    v121 = [*&v1[v203] trailingAnchor];
    v122 = [*&v1[v204] leadingAnchor];
    v123 = [v121 constraintEqualToAnchor:v122 constant:-15.0];

    *(inited + 112) = v123;
    v124 = [*&v1[v204] centerYAnchor];
    v125 = [v1 centerYAnchor];
    v126 = [v124 constraintEqualToAnchor:v125 constant:0.0];

    *(inited + 120) = v126;
    v127 = [*&v1[v204] widthAnchor];
    v128 = [v127 constraintEqualToConstant:10.0];

    *(inited + 128) = v128;
    v129 = [*&v1[v204] heightAnchor];
    v130 = [v129 constraintEqualToConstant:10.0];

    *(inited + 136) = v130;
    v131 = [*&v1[v204] trailingAnchor];
    v132 = [v1 trailingAnchor];
    v133 = [v131 constraintEqualToAnchor:v132 constant:-30.0];

    *(inited + 144) = v133;
    v134 = v210;
    v135 = [*&v1[v210] leadingAnchor];
    v136 = [*&v1[v92] leadingAnchor];
    v137 = [v135 constraintEqualToAnchor:v136];

    *(inited + 152) = v137;
    v138 = [*&v1[v210] bottomAnchor];
    v139 = [v1 bottomAnchor];
    v140 = [v138 constraintEqualToAnchor:v139];

    *(inited + 160) = v140;
    v141 = [*&v1[v210] heightAnchor];
    v142 = &selRef_initWithSystemImageNamed_;
    v143 = [v141 constraintEqualToConstant:1.0];

    *(inited + 168) = v143;
    v144 = (inited + 176);
  }

  else
  {
    v145 = [v1 contentView];
    [v145 addSubview:*&v1[v47]];

    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BEC90;
    v146 = [*&v1[v45] leadingAnchor];
    v147 = [v1 leadingAnchor];
    v148 = [v146 constraintEqualToAnchor:v147 constant:20.0];

    *(inited + 32) = v148;
    v149 = [*&v1[v54] centerYAnchor];
    v150 = [v1 centerYAnchor];
    v151 = [v149 constraintEqualToAnchor:v150 constant:0.0];

    *(inited + 40) = v151;
    v152 = [*&v1[v54] widthAnchor];
    v153 = [v152 constraintEqualToConstant:10.0];

    *(inited + 48) = v153;
    v154 = [*&v1[v54] heightAnchor];
    v155 = [v154 constraintEqualToConstant:10.0];

    *(inited + 56) = v155;
    v156 = [*&v1[v47] leadingAnchor];
    v157 = [*&v1[v54] trailingAnchor];
    v158 = [v156 constraintEqualToAnchor:v157 constant:16.0];

    *(inited + 64) = v158;
    v159 = [*&v1[v47] topAnchor];
    v160 = [v1 topAnchor];
    v161 = [v159 constraintEqualToAnchor:v160];

    *(inited + 72) = v161;
    v162 = [*&v1[v47] bottomAnchor];
    v163 = [v1 bottomAnchor];
    v164 = [v162 constraintEqualToAnchor:v163];

    *(inited + 80) = v164;
    v165 = [*&v1[v47] trailingAnchor];
    v166 = [*&v1[v39] leadingAnchor];
    v167 = [v165 constraintEqualToAnchor:v166 constant:-15.0];

    *(inited + 88) = v167;
    v168 = [*&v1[v39] centerYAnchor];
    v169 = [v1 centerYAnchor];
    v170 = [v168 constraintEqualToAnchor:v169 constant:0.0];

    *(inited + 96) = v170;
    v171 = [*&v1[v39] widthAnchor];
    v172 = [v171 constraintEqualToConstant:10.0];

    *(inited + 104) = v172;
    v173 = [*&v1[v39] heightAnchor];
    v174 = [v173 constraintEqualToConstant:10.0];

    *(inited + 112) = v174;
    v175 = [*&v1[v39] trailingAnchor];
    v176 = [*&v1[v42] leadingAnchor];
    v177 = [v175 constraintEqualToAnchor:v176 constant:-15.0];

    *(inited + 120) = v177;
    v178 = [*&v1[v42] centerYAnchor];
    v179 = [v1 centerYAnchor];
    v180 = [v178 constraintEqualToAnchor:v179 constant:0.0];

    *(inited + 128) = v180;
    v181 = [*&v1[v42] widthAnchor];
    v182 = [v181 constraintEqualToConstant:10.0];

    *(inited + 136) = v182;
    v183 = [*&v1[v42] heightAnchor];
    v184 = [v183 constraintEqualToConstant:10.0];

    *(inited + 144) = v184;
    v185 = [*&v1[v42] trailingAnchor];
    v186 = [v1 trailingAnchor];
    v187 = [v185 constraintEqualToAnchor:v186 constant:-30.0];

    *(inited + 152) = v187;
    v134 = v210;
    v188 = [*&v1[v210] leadingAnchor];
    v189 = [*&v1[v47] leadingAnchor];
    v190 = [v188 constraintEqualToAnchor:v189];

    *(inited + 160) = v190;
    v191 = [*&v1[v210] bottomAnchor];
    v192 = [v1 bottomAnchor];
    v193 = [v191 constraintEqualToAnchor:v192];

    *(inited + 168) = v193;
    v194 = [*&v1[v210] heightAnchor];
    v195 = [v194 constraintEqualToConstant:1.0];

    *(inited + 176) = v195;
    v144 = (inited + 184);
    v142 = &selRef_initWithSystemImageNamed_;
  }

  v196 = [*&v1[v134] trailingAnchor];
  v197 = [v1 trailingAnchor];
  v198 = [v196 constraintGreaterThanOrEqualToAnchor:v197 constant:-20.0];

  *v144 = v198;
  sub_1000952D4(inited);
  v199 = objc_opt_self();
  sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
  v200 = Array._bridgeToObjectiveC()().super.isa;

  [v199 v142[216]];
}

void sub_100097F90(double a1)
{
  if (a1 >= 0.0 && a1 <= 1.0)
  {
    v2 = a1;
    v3 = ceilf(v2 * 3.0);
    if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v3 > -9.2234e18)
    {
      if (v3 < 9.2234e18)
      {
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }
}

id sub_100098028(char a1, char a2)
{
  v16.receiver = v2;
  v16.super_class = type metadata accessor for HomePodWiFiTableCell();
  objc_msgSendSuper2(&v16, "setSelected:animated:", a1 & 1, a2 & 1);
  [v2 setBackgroundColor:0];
  v5 = *&v2[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_selectedImageView];
  if (a1)
  {
    [v5 setHidden:0];
    v6 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel;
    [*&v2[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel] setMinimumScaleFactor:0.0];
    [*&v2[v6] setAdjustsFontSizeToFitWidth:1];
  }

  else
  {
    [v5 setHidden:1];
    v7 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel;
    [*&v2[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel] setAdjustsFontSizeToFitWidth:0];
    v8 = *&v2[v7];
    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
    [v10 setFont:v11];

    [*&v2[v7] setMinimumScaleFactor:1.0];
    v12 = *&v2[v7];
    v13 = [v12 text];
    [v12 setText:v13];
  }

  v14 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel;
  [*&v2[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel] setNeedsDisplay];
  [*&v2[v14] layoutSubviews];
  [*&v2[v14] setNeedsLayout];
  return [*&v2[v14] layoutIfNeeded];
}

id sub_100098264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_separatorView;
  *&v3[v6] = [objc_allocWithZone(UIView) init];
  v7 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel;
  *&v3[v7] = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_subTitleLabel;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_labelStackView;
  *&v3[v9] = [objc_allocWithZone(UIStackView) init];
  v10 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_selectedImageView;
  *&v3[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_passwordProtectedImageView;
  *&v3[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_wifiIconImageView;
  *&v3[v12] = [objc_allocWithZone(UIImageView) init];
  v3[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_isReachable] = 0;
  *&v3[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_rssi] = 0;
  v3[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_hideLockIcon] = 0;
  if (a3)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for HomePodWiFiTableCell();
  v14 = objc_msgSendSuper2(&v16, "initWithStyle:reuseIdentifier:", a1, v13);

  return v14;
}

uint64_t sub_100098410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a5(a3, a4, v8);
}

id sub_10009846C(void *a1)
{
  v3 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_separatorView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel;
  *&v1[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_subTitleLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_labelStackView;
  *&v1[v6] = [objc_allocWithZone(UIStackView) init];
  v7 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_selectedImageView;
  *&v1[v7] = [objc_allocWithZone(UIImageView) init];
  v8 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_passwordProtectedImageView;
  *&v1[v8] = [objc_allocWithZone(UIImageView) init];
  v9 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_wifiIconImageView;
  *&v1[v9] = [objc_allocWithZone(UIImageView) init];
  v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_isReachable] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_rssi] = 0;
  v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_hideLockIcon] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for HomePodWiFiTableCell();
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

id sub_100098618(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100098720(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemWhiteColor;
  if (v1 != 2)
  {
    v3 = &selRef_systemBlackColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_10009878C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_1000987F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009880C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1000988AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100098B70(&qword_100104630, &qword_100104628, &unk_1000BED48);
          for (i = 0; i != v6; ++i)
          {
            sub_10000E6C4(&qword_100104628, &unk_1000BED48);
            v9 = sub_100098A60(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_100098A60(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100098AE0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100098AE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100098B20()
{
  v1 = *(v0 + 16);
  [v1 setSeparatorStyle:1];

  return [v1 reloadData];
}

uint64_t sub_100098B70(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000145EC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100098BC0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1 & 1) != 0 && (a4)
  {
    v6 = String._bridgeToObjectiveC()();
    v7 = sub_100006658(v6);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000E6C4(&qword_100102388, qword_1000BE250);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1000BD050;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100039F8C();
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;

    a2 = String.init(format:_:)();
  }

  else
  {
  }

  return a2;
}

unint64_t sub_100098CC8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_10000D778(_swiftEmptyArrayStorage);
  AnyHashable.init<A>(_:)();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100054E0C(0x6974704F6D6F6F52, 0xEA00000000006E6FLL, v16, isUniquelyReferenced_nonNull_native);
  sub_10000EA04(v16);
  AnyHashable.init<A>(_:)();

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_100054E0C(a2, a3, v16, v10);
  sub_10000EA04(v16);
  v17 = v8;
  AnyHashable.init<A>(_:)();
  if (a1)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (a1)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  sub_10000F550(v11, v12, v16);
  AnyHashable.init<A>(_:)();
  if (a4)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (a4)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  sub_10000F550(v13, v14, v16);
  return v17;
}

uint64_t sub_100098ED4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = 0x676E697473697865;
  if (*v0)
  {
    v3 = 0x6574736567677573;
  }

  v6 = v3;

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  String.append(_:)(v4);

  return v6;
}

uint64_t sub_100098F7C(char a1, uint64_t a2, void *a3, char a4)
{
  swift_bridgeObjectRetain_n();

  v8._countAndFlagsBits = a2;
  v8._object = a3;
  String.append(_:)(v8);

  v9._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 32;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 1031365995;
  strcpy(&v26, "<RoomOption ");
  v11._object = 0xE400000000000000;
  String.append(_:)(v11);

  countAndFlagsBits = v26._countAndFlagsBits;
  _StringGuts.grow(_:)(16);

  strcpy(&v26, "displayValue=");
  HIWORD(v26._object) = -4864;
  if (a1 & 1) != 0 && (a4)
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = sub_100006658(v13);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000E6C4(&qword_100102388, qword_1000BE250);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1000BD050;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100039F8C();
    *(v15 + 32) = a2;
    *(v15 + 40) = a3;
    String.init(format:_:)();
  }

  v16._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);

  String.append(_:)(v26);

  strcpy(&v26, "roomName=");
  WORD1(v26._object) = 0;
  HIDWORD(v26._object) = -385875968;
  v18._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  String.append(_:)(v26);

  strcpy(&v26, "isSuggested=");
  HIWORD(v26._object) = -5120;
  v20._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 32;
  v21._object = 0xE100000000000000;
  String.append(_:)(v21);

  String.append(_:)(v26);

  strcpy(&v26, "shouldMark=");
  HIDWORD(v26._object) = -352321536;
  v22._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);

  String.append(_:)(v26);

  v24._countAndFlagsBits = 62;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);

  return countAndFlagsBits;
}

uint64_t sub_100099428(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  sub_1000A303C(v11, 0x72206E776F6B6E75, 0xEF656D614E6D6F6FLL, a1);

  sub_10000EA04(v11);
  AnyHashable.init<A>(_:)();
  v2 = sub_1000A303C(v11, 0x65736C6166, 0xE500000000000000, a1);
  v4 = v3;

  sub_10000EA04(v11);
  if (v2 == 1702195828 && v4 == 0xE400000000000000)
  {

    v5 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 & 1;
  }

  AnyHashable.init<A>(_:)();
  v7 = sub_1000A303C(v11, 1702195828, 0xE400000000000000, a1);
  v9 = v8;

  sub_10000EA04(v11);
  if (v7 == 1702195828 && v9 == 0xE400000000000000)
  {
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5;
}

__n128 sub_100099674(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100099688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000996D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100099724(void *a1)
{
  v2 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField;
  v3 = *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField];
  *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setSecureTextEntry:v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_isSecureText]];
    [v6 setSemanticContentAttribute:0];
    [v1 addSubview:v6];
    [v1 setNeedsUpdateConstraints];
  }

LABEL_4:
}

char *sub_100099820(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textViewConstraints] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_labelConstraints] = 0;
  v3 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_viewsGuide;
  *&v1[v3] = [objc_allocWithZone(UILayoutGuide) init];
  v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_isSecureText] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_label] = 0;
  v28.receiver = v1;
  v28.super_class = type metadata accessor for HomePodSetupTextFieldView();
  v4 = objc_msgSendSuper2(&v28, "initWithCardStyle:", a1);
  v5 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_viewsGuide;
  v6 = *&v4[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_viewsGuide];
  v7 = v4;
  [v7 addLayoutGuide:v6];
  v8 = [v7 mainContentGuide];
  v27 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000BD420;
  v10 = [*&v4[v5] topAnchor];
  v11 = [v8 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [*&v4[v5] leadingAnchor];
  v14 = [v8 leadingAnchor];
  v15 = [v13 constraintGreaterThanOrEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [*&v4[v5] trailingAnchor];
  v17 = [v8 trailingAnchor];
  v18 = [v16 constraintLessThanOrEqualToAnchor:v17];

  *(v9 + 48) = v18;
  v19 = [*&v4[v5] centerXAnchor];
  v20 = [v8 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v9 + 56) = v21;
  v22 = [*&v4[v5] bottomAnchor];
  v23 = [v8 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor:v23];

  *(v9 + 64) = v24;
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  return v7;
}

void sub_100099BD0()
{
  v1 = v0;
  v69.receiver = v0;
  v69.super_class = type metadata accessor for HomePodSetupTextFieldView();
  objc_msgSendSuper2(&v69, "updateConstraints");
  v2 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField;
  v3 = *&v0[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField];
  v4 = &_s10Foundation3URLVs23CustomStringConvertibleAAMc_ptr;
  v5 = &selRef_initWithSystemImageNamed_;
  if (v3)
  {
    v6 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textViewConstraints;
    if (*&v0[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textViewConstraints])
    {
      v7 = _swiftEmptyArrayStorage;
    }

    else
    {
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1000BD0A0;
      v9 = v3;
      v10 = [v9 leadingAnchor];
      v11 = v1;
      v12 = [v1 mainContentGuide];
      v13 = [v12 leadingAnchor];

      v14 = [v10 constraintEqualToAnchor:v13];
      *(v8 + 32) = v14;
      v15 = [v9 trailingAnchor];
      v16 = [v11 mainContentGuide];
      v17 = [v16 trailingAnchor];

      v5 = &selRef_initWithSystemImageNamed_;
      v18 = [v15 constraintEqualToAnchor:v17];

      v4 = &_s10Foundation3URLVs23CustomStringConvertibleAAMc_ptr;
      *(v8 + 40) = v18;
      v19 = objc_opt_self();
      sub_1000163D8();
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v19 activateConstraints:isa];

      v1 = v11;
      v21 = *&v11[v6];
      *&v11[v6] = v8;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v64 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v7 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v22 = *&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_label];
  if (v22)
  {
    v23 = *&v1[v2];
    if (v23)
    {
      v24 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_labelConstraints;
      if (!*&v1[OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_labelConstraints])
      {
        sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1000BD430;
        v26 = v22;
        v67 = v23;
        v27 = v1;
        v28 = [v26 leadingAnchor];
        v29 = [v27 mainContentGuide];
        v30 = [v29 leadingAnchor];

        v31 = [v28 constraintEqualToAnchor:v30];
        *(v25 + 32) = v31;
        v32 = [v26 trailingAnchor];
        v33 = [v27 mainContentGuide];
        v34 = [v33 trailingAnchor];

        v35 = [v32 constraintEqualToAnchor:v34];
        *(v25 + 40) = v35;
        v36 = [v26 topAnchor];
        v37 = [v67 bottomAnchor];
        v38 = [v36 constraintEqualToAnchor:v37];

        *(v25 + 48) = v38;
        v39 = objc_opt_self();
        sub_1000163D8();
        v40 = Array._bridgeToObjectiveC()().super.isa;
        v41 = v39;
        v1 = v27;
        [v41 v5[216]];

        v42 = *&v27[v24];
        *&v27[v24] = v25;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v65 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v7 = _swiftEmptyArrayStorage;
        v4 = &_s10Foundation3URLVs23CustomStringConvertibleAAMc_ptr;
      }
    }
  }

  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v43 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v43)
    {
      goto LABEL_16;
    }

LABEL_32:

    v7 = 0;
    goto LABEL_33;
  }

  v43 = _CocoaArrayWrapper.endIndex.getter();
  if (!v43)
  {
    goto LABEL_32;
  }

LABEL_16:
  if (v43 < 1)
  {
    __break(1u);
  }

  else
  {
    v68 = v1;
    v44 = 0;
    v45 = 0;
    v66 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_viewsGuide;
    v46 = PRXMainContentMargin;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v50 = _swiftEmptyArrayStorage[v45 + 4];
      }

      v51 = v50;
      if (v44)
      {
        v47 = [v50 topAnchor];
        v48 = [v44 bottomAnchor];
        v49 = [v47 constraintEqualToAnchor:v48 constant:v46];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v55 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
        v52 = [v50 topAnchor];
        v53 = [*&v68[v66] bottomAnchor];
        v54 = [v52 constraintEqualToAnchor:v53 constant:v46];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v56 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v45;
      v44 = v51;
    }

    while (v43 != v45);

    v7 = v51;
    v57 = [v7 bottomAnchor];
    v58 = [v68 mainContentGuide];
    v59 = [v58 bottomAnchor];

    v60 = [v57 constraintLessThanOrEqualToAnchor:v59];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) < *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_30;
    }
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_30:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v5 = &selRef_initWithSystemImageNamed_;
  v4 = &_s10Foundation3URLVs23CustomStringConvertibleAAMc_ptr;
LABEL_33:
  v61 = v4[14];
  v62 = objc_opt_self();
  sub_1000163D8();
  v63 = Array._bridgeToObjectiveC()().super.isa;

  [v62 v5[216]];
}

id sub_10009A4A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupTextFieldView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10009A574()
{
  *(v0 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textViewConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_labelConstraints) = 0;
  v1 = OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_viewsGuide;
  *(v0 + v1) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_isSecureText) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_label) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10009A634()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_1001046F8);
  v1 = sub_100012AAC(v0, qword_1001046F8);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10009A6FC()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v48 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = (&v48 - v12);
  v14 = type metadata accessor for HomePodSetupProgressViewController();
  v51.receiver = v1;
  v51.super_class = v14;
  objc_msgSendSuper2(&v51, "viewDidLoad");
  v15 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(&v1[v15], v5, &qword_100103420, &unk_1000BCE90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000EBA4(v5, &qword_100103420, &unk_1000BCE90);
    if (qword_1001016F8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_1001046F8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetupProgress: failed in viewDidLoad because viewModel not set.", v19, 2u);
    }
  }

  else
  {
    sub_100016310(v5, v13);
    v20 = v13 + v6[18];
    if (v20[4])
    {
      v21 = 0;
    }

    else
    {
      v21 = *v20;
    }

    sub_10009BEA0(v21);
    v22 = String.init(cString:)();
    v24 = v23;
    if (qword_1001016F8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100012AAC(v25, qword_1001046F8);
    sub_100012AE4(v13, v11);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v28 = 136315394;
      v48 = v22;
      v29 = *v11;
      v30 = v11[1];

      sub_100016374(v11);
      v31 = sub_1000B08A0(v29, v30, &v50);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2080;
      v32 = sub_1000B08A0(v48, v24, &v50);

      *(v28 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "HomePodSetupProgress: viewDidLoad called with title %s progressEvent=%s", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100016374(v11);
    }

    sub_10006FF20(v13);
    sub_10009AEF4();
    if ((*(v13 + v6[19]) & 2) == 0)
    {
      v33 = (v13 + v6[20]);
      if (v33[1])
      {
        v35 = v33[6];
        v34 = v33[7];
        v37 = v33[4];
        v36 = v33[5];
        v39 = v33[2];
        v38 = v33[3];
        v40 = *v33;
        v41 = String._bridgeToObjectiveC()();
        v42 = String._bridgeToObjectiveC()();
        v43 = String._bridgeToObjectiveC()();
        v44 = String._bridgeToObjectiveC()();
        v45 = [v1 dismissalConfirmationActionWithTitle:v41 message:v42 confirmButtonTitle:v43 cancelButtonTitle:v44];

        [v1 setDismissButtonAction:v45];
      }
    }

    if ((*(v13 + v6[17]) & 1) != 0 && isInternalBuild())
    {
      v46 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:"handleTimer:" selector:0 userInfo:1 repeats:0.1];
      v47 = *&v1[OBJC_IVAR____TtC14HDSViewService34HomePodSetupProgressViewController_timer];
      *&v1[OBJC_IVAR____TtC14HDSViewService34HomePodSetupProgressViewController_timer] = v46;
    }

    sub_100016374(v13);
  }
}

uint64_t sub_10009ACB0(char a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100104750, &unk_1000BEE60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for HomePodSetupProgressViewController();
  v13.receiver = v2;
  v13.super_class = v8;
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }

  Date.init()();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtC14HDSViewService34HomePodSetupProgressViewController_startDate;
  swift_beginAccess();
  sub_10009CBCC(v7, v2 + v10);
  return swift_endAccess();
}

void sub_10009AECC(void *a1)
{
  sub_10006FF20(a1);

  sub_10009AEF4();
}

void sub_10009AEF4()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v44 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v11, v5, &qword_100103420, &unk_1000BCE90);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_100016310(v5, v10);
    v16 = &v10[*(v6 + 72)];
    if (v16[4])
    {
      if (qword_1001016F8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100012AAC(v17, qword_1001046F8);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "HomePodSetupProgressViewController updatetTitleForProgressUI: progressEvent is nil", v20, 2u);
      }

      goto LABEL_68;
    }

    v21 = *v16;
    sub_10009BEA0(*v16);
    v22 = String.init(cString:)();
    v24 = v23;
    if (qword_1001016F8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100012AAC(v25, qword_1001046F8);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v44 = v29;
      *v28 = 136315138;
      v30 = sub_1000B08A0(v22, v24, &v44);

      *(v28 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v26, v27, "HomePodSetupProgressViewController updatetTitleForProgressUI: %s", v28, 0xCu);
      sub_10000E70C(v29);
    }

    else
    {
    }

    if (v21 <= 209)
    {
      if (v21 <= 119)
      {
        if (v21 != 40 && v21 != 60)
        {
          if (v21 == 80)
          {
            v33 = String._bridgeToObjectiveC()();
            v32 = sub_100006658(v33);

            if (!v32)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v32 = String._bridgeToObjectiveC()();
            }

            goto LABEL_60;
          }

          goto LABEL_69;
        }
      }

      else
      {
        if (v21 <= 123)
        {
          if (v21 != 120 && v21 != 122)
          {
            goto LABEL_69;
          }

          goto LABEL_62;
        }

        if (v21 != 124)
        {
          if (v21 == 200)
          {
            v34 = String._bridgeToObjectiveC()();
            v32 = sub_100006658(v34);

            if (!v32)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v32 = String._bridgeToObjectiveC()();
            }

            goto LABEL_60;
          }

          goto LABEL_69;
        }
      }
    }

    else
    {
      if (v21 <= 249)
      {
        if (v21 <= 229)
        {
          if (v21 == 210)
          {
            v37 = String._bridgeToObjectiveC()();
            v32 = sub_100006658(v37);

            if (!v32)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v32 = String._bridgeToObjectiveC()();
            }

            goto LABEL_60;
          }

          if (v21 == 220)
          {
            v31 = String._bridgeToObjectiveC()();
            v32 = sub_100006658(v31);

            if (!v32)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v32 = String._bridgeToObjectiveC()();
            }

LABEL_60:
            [v1 hideActivityIndicator];
            [v1 reloadInputViews];
            v38 = sub_100006658(v32);
            goto LABEL_65;
          }

LABEL_69:
          sub_100016374(v10);
          return;
        }

        if (v21 != 230)
        {
          if (v21 == 234)
          {
            v35 = String._bridgeToObjectiveC()();
            v32 = sub_100006658(v35);

            if (!v32)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v32 = String._bridgeToObjectiveC()();
            }

            goto LABEL_60;
          }

          goto LABEL_69;
        }

LABEL_62:
        v10[*(v6 + 68)];
        v10[*(v6 + 68)];
        [v1 hideActivityIndicator];
        [v1 reloadInputViews];
        v43 = String._bridgeToObjectiveC()();

        v18 = sub_100006658(v43);

        if (!v18)
        {
          goto LABEL_66;
        }

        goto LABEL_67;
      }

      if (v21 > 911)
      {
        if (v21 != 912)
        {
          if (v21 == 913)
          {
            v36 = String._bridgeToObjectiveC()();
            v32 = sub_100006658(v36);

            if (!v32)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v32 = String._bridgeToObjectiveC()();
            }

            goto LABEL_60;
          }

          goto LABEL_69;
        }
      }

      else
      {
        if (v21 == 250)
        {
          [v1 hideActivityIndicator];
          v39 = [objc_opt_self() configurationWithPointSize:40.0];
          v40 = String._bridgeToObjectiveC()();
          v41 = [objc_opt_self() systemImageNamed:v40 withConfiguration:v39];

          v18 = [objc_allocWithZone(UIImageView) initWithImage:v41];
          v42 = [objc_opt_self() systemGreenColor];
          [v18 setTintColor:v42];

          [v1 setBottomTrayImageView:v18];
LABEL_68:

          goto LABEL_69;
        }

        if (v21 != 906)
        {
          goto LABEL_69;
        }
      }
    }

    [v1 hideActivityIndicator];
    [v1 reloadInputViews];
    v32 = String._bridgeToObjectiveC()();
    v38 = sub_100006658(v32);
LABEL_65:
    v18 = v38;

    if (!v18)
    {
LABEL_66:
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();
    }

LABEL_67:
    [v1 showActivityIndicatorWithStatus:v18];
    goto LABEL_68;
  }

  sub_10000EBA4(v5, &qword_100103420, &unk_1000BCE90);
  [v1 hideActivityIndicator];
  if (qword_1001016F8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100012AAC(v12, qword_1001046F8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "HomePodSetupProgress: failed to updatet progress UI because viewModel not set.", v15, 2u);
  }
}

id sub_10009BCD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupProgressViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupProgressViewController()
{
  result = qword_100104738;
  if (!qword_100104738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009BDAC()
{
  sub_10009BE48();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10009BE48()
{
  if (!qword_100104748)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100104748);
    }
  }
}

const char *sub_10009BEA0(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}

uint64_t sub_10009C734()
{
  v1 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v33 - v3;
  v35 = type metadata accessor for HomePodSetupViewModel(0);
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v35);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000E6C4(&qword_100104750, &unk_1000BEE60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v33 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v33 - v17;
  v19 = OBJC_IVAR____TtC14HDSViewService34HomePodSetupProgressViewController_startDate;
  swift_beginAccess();
  sub_10000F25C(v0 + v19, v11, &qword_100104750, &unk_1000BEE60);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10000EBA4(v11, &qword_100104750, &unk_1000BEE60);
  }

  (*(v13 + 32))(v18, v11, v12);
  v21 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v0 + v21, v4, &qword_100103420, &unk_1000BCE90);
  v22 = v35;
  v23 = v18;
  if ((*(v5 + 48))(v4, 1, v35) == 1)
  {
    (*(v13 + 8))(v18, v12);
    return sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
  }

  v24 = v34;
  sub_100016310(v4, v34);
  if (*(v24 + *(v22 + 68)) != 1 || !isInternalBuild())
  {
    sub_100016374(v24);
    return (*(v13 + 8))(v18, v12);
  }

  v25 = v0;
  v37 = 0x3A64657370616C45;
  v38 = 0xE900000000000020;
  v26 = v33;
  Date.init()();
  Date.timeIntervalSince(_:)();
  v28 = v27;
  v29 = v27;
  v30 = *(v13 + 8);
  result = v30(v26, v12);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v28 > -9.22337204e18)
  {
    if (v28 < 9.22337204e18)
    {
      v36 = v28;
      v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v31);

      v32 = String._bridgeToObjectiveC()();

      [v25 setSubtitle:v32];

      sub_100016374(v24);
      return v30(v23, v12);
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_10009CBCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&qword_100104750, &unk_1000BEE60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009CC3C()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_10000E6C4(&qword_1001036C8, &unk_1000BEEA0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10009D080(v5);
    return 0;
  }
}

void *sub_10009CCFC(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BaseProxFlowViewController();
  objc_msgSendSuper2(&v6, "viewDidAppear:", a1 & 1);
  v3 = sub_10009CC3C();
  if (v3)
  {
    [v3 setStatusBarHidden:1 withDuration:0.3];
    swift_unknownObjectRelease();
  }

  v4 = sub_10009CC3C();
  if (v4)
  {
    [v4 setAllowsBanners:1];
    swift_unknownObjectRelease();
  }

  result = sub_10009CC3C();
  if (result)
  {
    [result setDesiredHardwareButtonEvents:16 * (SFDeviceHomeButtonType() != 3)];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10009D028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseProxFlowViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10009D080(uint64_t a1)
{
  v2 = sub_10000E6C4(&qword_1001036C0, &unk_1000BEE90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009D0E8()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100104780);
  v1 = sub_100012AAC(v0, qword_100104780);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10009D1B0(void *a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_myContentView;
  *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_myContentView] = 0;
  v4 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_viewModel;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_style] = 0;
  v6 = [objc_allocWithZone(type metadata accessor for HomePodSetupTextFieldView()) initWithCardStyle:0];
  v7 = *&v1[v3];
  *&v1[v3] = v6;
  v8 = v6;

  v9 = *&v1[v3];
  if (v9)
  {
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v12.receiver = v1;
  v12.super_class = type metadata accessor for HomePodSetupTextFieldViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithContentView:", v8);

  return v10;
}

void sub_10009D308()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v50 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = (&v50 - v12);
  v14 = type metadata accessor for HomePodSetupTextFieldViewController();
  v51.receiver = v1;
  v51.super_class = v14;
  objc_msgSendSuper2(&v51, "viewDidLoad");
  v15 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_viewModel;
  swift_beginAccess();
  sub_100016238(v1 + v15, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000162A8(v5);
    if (qword_100101700 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100104780);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetupIconContent: viewDidLoad failed because viewModel not set.", v19, 2u);
    }
  }

  else
  {
    sub_100016310(v5, v13);
    if (qword_100101700 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100012AAC(v20, qword_100104780);
    sub_100012AE4(v13, v11);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v50 = v24;
      *v23 = 136315138;
      v25 = *v11;
      v26 = v11[1];

      sub_100016374(v11);
      v27 = sub_1000B08A0(v25, v26, &v50);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupIconContent: viewDidLoad with title %s", v23, 0xCu);
      sub_10000E70C(v24);
    }

    else
    {

      sub_100016374(v11);
    }

    v28 = *v13;
    v29 = v13[1];
    v30 = String._bridgeToObjectiveC()();
    [v1 setTitle:v30];

    v31 = v13[2];
    v32 = v13[3];
    v33 = String._bridgeToObjectiveC()();
    [v1 setSubtitle:v33];

    v34 = *(v13 + v6[19]);
    [v1 setDismissalType:v34];
    v35 = *(v13 + v6[10]);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v35, sub_10009E8BC, v36);

    if ((v34 & 2) == 0)
    {
      v37 = (v13 + v6[20]);
      if (v37[1])
      {
        v39 = v37[6];
        v38 = v37[7];
        v41 = v37[4];
        v40 = v37[5];
        v43 = v37[2];
        v42 = v37[3];
        v44 = *v37;
        v45 = String._bridgeToObjectiveC()();
        v46 = String._bridgeToObjectiveC()();
        v47 = String._bridgeToObjectiveC()();
        v48 = String._bridgeToObjectiveC()();
        v49 = [v1 dismissalConfirmationActionWithTitle:v45 message:v46 confirmButtonTitle:v47 cancelButtonTitle:v48];

        [v1 setDismissButtonAction:v49];
      }
    }

    sub_10009E11C(*(v13 + v6[46]));
    sub_100016374(v13);
  }
}

void sub_10009D86C(char *a1)
{
  v1 = *a1;
  if (qword_100101700 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100104780);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315138;
    v7 = sub_10000FEC4(v1);
    v9 = sub_1000B08A0(v7, v8, &v28);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupIconContent: User tapped on button: %s", v5, 0xCu);
    sub_10000E70C(v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *&Strong[OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_myContentView];
    if (v11 && (v12 = *(v11 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField)) != 0)
    {
      v13 = Strong;
      v14 = [v12 text];
      if (v14)
      {
        v15 = v14;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        if (String.count.getter() <= 0)
        {
        }

        else
        {
          swift_bridgeObjectRetain_n();
          v19 = Logger.logObject.getter();
          v20 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            *v21 = 136315394;
            v22 = sub_10000FEC4(v1);
            v24 = sub_1000B08A0(v22, v23, &v28);

            *(v21 + 4) = v24;
            *(v21 + 12) = 2080;
            v25 = sub_1000B08A0(v16, v18, &v28);

            *(v21 + 14) = v25;
            _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupPicker: User tapped on button: %s with selected option '%s'", v21, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v27[3] = &type metadata for SimpleOption;
          v27[4] = &off_1000EF0B8;
          v26 = swift_allocObject();
          v27[0] = v26;
          v26[2] = v16;
          v26[3] = v18;
          v26[4] = v16;
          v26[5] = v18;
          v26[6] = v16;
          v26[7] = v18;
          memset(v29, 0, sizeof(v29));
          LOBYTE(v28) = v1;
          sub_100012DA0(v27, v29, &qword_1001025D0, &unk_1000BD010);
          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_10007A070(&v28);
            swift_unknownObjectRelease();
          }

          sub_100012E08(&v28);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_10009DC28(char a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for HomePodSetupTextFieldViewController();
  v15.receiver = v2;
  v15.super_class = v8;
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }

  v9 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_viewModel;
  swift_beginAccess();
  sub_100016238(&v2[v9], v7);
  v10 = type metadata accessor for HomePodSetupViewModel(0);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    sub_1000162A8(v7);
  }

  else
  {
    v13 = *&v7[*(v10 + 216)];
    sub_1000162A8(v7);
    if (v13)
    {
      sub_10009DDB4();
      return;
    }
  }

  v11 = *&v2[OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_myContentView];
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_textField);
    if (v12)
    {
      [v12 becomeFirstResponder];
    }
  }
}

void sub_10009DDB4()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = sub_100006658(v1);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();
  v4 = sub_100006658(v3);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v11 = v7;
  v12 = String._bridgeToObjectiveC()();

  v15[4] = sub_100012D88;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10003DFD0;
  v15[3] = &unk_1000F1CF8;
  v13 = _Block_copy(v15);

  v14 = [objc_opt_self() actionWithTitle:v12 style:0 handler:v13];
  _Block_release(v13);

  [v11 addAction:v14];
  [v11 setPreferredAction:v14];
  [v0 presentViewController:v11 animated:1 completion:0];
}

void sub_10009E11C(char a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_myContentView;
  v4 = *(v1 + OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_myContentView);
  if (v4)
  {
    *(v4 + OBJC_IVAR____TtC14HDSViewService25HomePodSetupTextFieldView_isSecureText) = a1 & 1;
  }

  v9 = [objc_allocWithZone(PRXTextField) init];
  sub_10009E268(0, 0);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = String._bridgeToObjectiveC()();
  v6 = sub_100006658(v5);

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v9 setPlaceholder:v6];

  v7 = *(v2 + v3);
  v8 = v9;
  if (v7)
  {
    v8 = v7;
    sub_100099724(v9);
  }
}

void sub_10009E268(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = objc_allocWithZone(NSLocale);
    v4 = String._bridgeToObjectiveC()();
    v8 = [v3 initWithLocaleIdentifier:v4];

    v5 = v8;
  }

  else
  {
    v5 = [objc_opt_self() currentLocale];
    if (!v5)
    {
      __break(1u);
      return;
    }
  }

  v9 = v5;
  v6 = [v5 languageCode];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  v7 = [objc_opt_self() characterDirectionForLanguage:v6] == 2;

  [v2 setTextAlignment:2 * v7];
}

id sub_10009E394()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupTextFieldViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupTextFieldViewController()
{
  result = qword_1001047D0;
  if (!qword_1001047D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009E47C()
{
  sub_100012108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10009E52C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_10009E580(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  if (qword_100101700 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_100104780);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "HomePodSetupIconContent: presenter:didUpdate viewModel", v11, 2u);
  }

  sub_100012AE4(a1, v7);
  v12 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupTextFieldViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v7, v1 + v13, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v1 isViewLoaded];
  if (result)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupIconContent: configureUI", v17, 2u);
    }

    v18 = *a1;
    v19 = a1[1];
    v20 = String._bridgeToObjectiveC()();
    [v2 setTitle:v20];

    v21 = a1[2];
    v22 = a1[3];
    v23 = String._bridgeToObjectiveC()();
    [v2 setSubtitle:v23];

    return [v2 setDismissalType:*(a1 + *(v12 + 76))];
  }

  return result;
}

uint64_t sub_10009E834()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E86C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009E884()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009E8C4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10009E9C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupDoneViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupDoneViewController()
{
  result = qword_100104808;
  if (!qword_100104808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009EA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v3;
    v19 = v22;
    v20 = objc_opt_self();
    v9 = (a1 + 56);
    do
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *(v9 - 1);
      v13 = *v9;
      v9 += 32;
      v14 = swift_allocObject();
      *(v14 + 16) = v10;
      *(v14 + 24) = v11;
      *(v14 + 32) = v12;
      *(v14 + 40) = v13;
      *(v14 + 48) = a2;
      *(v14 + 56) = a3;
      swift_bridgeObjectRetain_n();

      v15 = String._bridgeToObjectiveC()();

      v22[2] = sub_1000A27BC;
      v22[3] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v22[0] = sub_10003DFD0;
      v22[1] = &unk_1000F1DE8;
      v16 = _Block_copy(aBlock);
      v17 = [v20 actionWithTitle:v15 style:v12 handler:{v16, v19}];

      _Block_release(v16);

      v18 = [v5 addAction:v17];

      --v4;
    }

    while (v4);
  }
}

uint64_t sub_10009EC3C()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100104820);
  v1 = sub_100012AAC(v0, qword_100104820);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10009ED04(void *a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options] = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_viewModel;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_defaultIconImage] = 0;
  v5 = &v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_selectedIndex];
  *v5 = 0;
  v5[8] = 1;
  v6 = [objc_allocWithZone(type metadata accessor for HomePodSetupIconContentView()) initWithCardStyle:0];
  *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_myContentView] = v6;
  v7 = v6;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_contentTableView] = [objc_allocWithZone(type metadata accessor for HomePodWiFiTableView()) initWithCardStyle:0];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for HomePodSetupTableViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithContentView:", v7);

  return v8;
}

void sub_10009EE90()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v43 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = type metadata accessor for HomePodSetupTableViewController();
  v44.receiver = v1;
  v44.super_class = v14;
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v15 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v15, v5, &qword_100103420, &unk_1000BCE90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000EBA4(v5, &qword_100103420, &unk_1000BCE90);
    if (qword_100101708 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100104820);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetupTableViewController: viewDidLoad failed because viewModel not set.", v19, 2u);
    }
  }

  else
  {
    sub_100016310(v5, v13);
    if (qword_100101708 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100012AAC(v20, qword_100104820);
    sub_100012AE4(v13, v11);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43 = v24;
      *v23 = 136315138;
      v25 = *v11;
      v26 = v11[1];

      sub_100016374(v11);
      v27 = sub_1000B08A0(v25, v26, &v43);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupTableViewController: viewDidLoad with title %s", v23, 0xCu);
      sub_10000E70C(v24);
    }

    else
    {

      sub_100016374(v11);
    }

    sub_1000A0DC0();
    sub_1000A0A18(v13);
    v28 = *&v13[v6[10]];
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v28, sub_1000A2774, v29);

    if ((v13[v6[19]] & 2) == 0)
    {
      v30 = &v13[v6[20]];
      if (*(v30 + 1))
      {
        v32 = *(v30 + 6);
        v31 = *(v30 + 7);
        v34 = *(v30 + 4);
        v33 = *(v30 + 5);
        v36 = *(v30 + 2);
        v35 = *(v30 + 3);
        v37 = *v30;
        v38 = String._bridgeToObjectiveC()();
        v39 = String._bridgeToObjectiveC()();
        v40 = String._bridgeToObjectiveC()();
        v41 = String._bridgeToObjectiveC()();
        v42 = [v1 dismissalConfirmationActionWithTitle:v38 message:v39 confirmButtonTitle:v40 cancelButtonTitle:v41];

        [v1 setDismissButtonAction:v42];
      }
    }

    [v1 setDismissalType:1];
    sub_100016374(v13);
  }
}

void sub_10009F384(char *a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&unk_100104950, &qword_1000BD280);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v74 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(*(Strong + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_contentTableView) + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
    if (!v19)
    {

      (*(v12 + 56))(v10, 1, 1, v11);
LABEL_9:
      sub_10000EBA4(v10, &unk_100104950, &qword_1000BD280);
      return;
    }

    v20 = [v19 indexPathForSelectedRow];
    if (v20)
    {
      v21 = v20;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    (*(v12 + 56))(v8, v22, 1, v11);
    sub_1000A2838(v8, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      goto LABEL_9;
    }

    (*(v12 + 32))(v15, v10, v11);
    v23 = IndexPath.row.getter();
    strcpy(&v86, "hds_hp_scn_nn");
    HIWORD(v86) = -4864;
    AnyHashable.init<A>(_:)();
    if ((v23 & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }

    v24 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options;
    v25 = *&v18[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options];
    if (v23 >= *(v25 + 16))
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v26 = *(v25 + 8 * v23 + 32);
    if (*(v26 + 16))
    {

      v27 = sub_100053B3C(&v91);
      if (v28)
      {
        sub_10000F25C(*(v26 + 56) + 32 * v27, &v93, &qword_1001036C0, &unk_1000BEE90);
        sub_10000EA04(&v91);

        v88 = v93;
        v89 = v94;
        if (!*(&v94 + 1))
        {
          (*(v12 + 8))(v15, v11);

          sub_10000EBA4(&v88, &qword_1001036C0, &unk_1000BEE90);
          return;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          (*(v12 + 8))(v15, v11);

          return;
        }

        v79 = v24;
        v80 = v86;
        v29 = qword_100101708;
        swift_bridgeObjectRetain_n();
        if (v29 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100012AAC(v30, qword_100104820);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.default.getter();

        v77 = v32;
        v33 = os_log_type_enabled(v31, v32);
        v78 = v15;
        if (v33)
        {
          v34 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v91 = v76;
          *v34 = 136315394;
          v35 = sub_10000FEC4(v16);
          v37 = sub_1000B08A0(v35, v36, &v91);
          v75 = v31;
          v38 = v37;
          v39 = *(&v80 + 1);

          *(v34 + 4) = v38;
          *(v34 + 12) = 2080;
          v40 = v80;
          v41 = sub_1000B08A0(v80, v39, &v91);

          *(v34 + 14) = v41;
          v42 = v75;
          _os_log_impl(&_mh_execute_header, v75, v77, "HomePodSetupTableViewController: User tapped on button: %s with selected option '%s'", v34, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v40 = v80;
        }

        v43 = v79;
        *(&v89 + 1) = &type metadata for SimpleOption;
        v90 = &off_1000EF0B8;
        v44 = swift_allocObject();
        *&v88 = v44;
        v45 = *(&v80 + 1);
        v44[2] = v40;
        v44[3] = v45;
        v44[4] = v40;
        v44[5] = v45;
        v44[6] = v40;
        v44[7] = v45;
        memset(v92, 0, sizeof(v92));
        LOBYTE(v91) = v16;
        sub_100012DA0(&v88, v92, &qword_1001025D0, &unk_1000BD010);
        v46 = *&v18[v43];
        v47 = *(v46 + 16);
        if (v47)
        {
          *(&v80 + 1) = v18;

          v48 = 0;
          v15 = &qword_1001036C0;
          v18 = &unk_1000BEE90;
          v81 = v12;
          v82 = v11;
          while (v48 < *(v46 + 16))
          {
            v49 = *(v46 + 8 * v48 + 32);
            strcpy(v85, "hds_hp_scn_re");
            v85[7] = -4864;

            AnyHashable.init<A>(_:)();
            if (*(v49 + 16) && (v50 = sub_100053B3C(&v88), (v51 & 1) != 0))
            {
              sub_10000F25C(*(v49 + 56) + 32 * v50, &v86, &qword_1001036C0, &unk_1000BEE90);
              sub_10000EA04(&v88);

              v93 = v86;
              v94 = v87;
              if (*(&v87 + 1))
              {
                if (swift_dynamicCast())
                {
                  v12 = v81;
                  v11 = v82;
                  if (LOBYTE(v85[0]) == 1)
                  {
                    v73 = 1;
LABEL_41:

                    v15 = v78;
                    v18 = *(&v80 + 1);
                    goto LABEL_43;
                  }
                }

                else
                {
                  v12 = v81;
                  v11 = v82;
                }
              }

              else
              {
                sub_10000EBA4(&v93, &qword_1001036C0, &unk_1000BEE90);
                v11 = v82;
                v12 = v81;
              }
            }

            else
            {

              sub_10000EA04(&v88);
            }

            if (v47 == ++v48)
            {
              v73 = 0;
              goto LABEL_41;
            }
          }

          __break(1u);
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v73 = 0;
        v15 = v78;
LABEL_43:
        swift_beginAccess();
        v52 = swift_unknownObjectWeakLoadStrong();
        if (!v52)
        {
          goto LABEL_58;
        }

        v53 = v52;
        v54 = IndexPath.row.getter();
        v55 = *&v53[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options];

        if ((v54 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v54 < *(v55 + 16))
        {
          v56 = *(v55 + 8 * v54 + 32);

          strcpy(v84, "hds_hp_scn_re");
          HIWORD(v84[1]) = -4864;
          AnyHashable.init<A>(_:)();
          if (*(v56 + 16))
          {
            v57 = sub_100053B3C(&v88);
            if (v58)
            {
              sub_10000F25C(*(v56 + 56) + 32 * v57, &v86, &qword_1001036C0, &unk_1000BEE90);
              sub_10000EA04(&v88);
              v93 = v86;
              v94 = v87;
              if (!*(&v87 + 1))
              {

                goto LABEL_78;
              }

              if ((swift_dynamicCast() & 1) == 0)
              {

                goto LABEL_58;
              }

              v59 = LOBYTE(v84[0]);
              strcpy(v84, "hds_hp_scn_nn");
              HIWORD(v84[1]) = -4864;
              AnyHashable.init<A>(_:)();
              if (*(v56 + 16))
              {
                v60 = sub_100053B3C(&v88);
                if (v61)
                {
                  sub_10000F25C(*(v56 + 56) + 32 * v60, &v86, &qword_1001036C0, &unk_1000BEE90);
                  sub_10000EA04(&v88);

                  v93 = v86;
                  v94 = v87;
                  if (*(&v87 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      a2 = v84[1];
                      if (((v59 | v73 ^ 1) & 1) == 0)
                      {
LABEL_85:
                        v69 = v84[0];
                        goto LABEL_68;
                      }

                      if (swift_unknownObjectWeakLoadStrong())
                      {
LABEL_74:
                        sub_10007A070(&v91);

                        swift_unknownObjectRelease();
                        goto LABEL_76;
                      }

LABEL_75:

                      goto LABEL_76;
                    }

LABEL_58:
                    swift_beginAccess();
                    v62 = swift_unknownObjectWeakLoadStrong();
                    if (!v62)
                    {
                      goto LABEL_70;
                    }

                    v63 = v62;
                    v64 = IndexPath.row.getter();
                    strcpy(v83, "hds_hp_scn_nn");
                    v83[7] = -4864;
                    AnyHashable.init<A>(_:)();
                    v65 = *&v63[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options];

                    if ((v64 & 0x8000000000000000) == 0)
                    {
                      if (v64 < *(v65 + 16))
                      {
                        v66 = *(v65 + 8 * v64 + 32);

                        if (*(v66 + 16))
                        {
                          v67 = sub_100053B3C(&v88);
                          if (v68)
                          {
                            sub_10000F25C(*(v66 + 56) + 32 * v67, &v86, &qword_1001036C0, &unk_1000BEE90);
                            sub_10000EA04(&v88);

                            if (*(&v87 + 1) != 1)
                            {
                              v93 = v86;
                              v94 = v87;
                              if (*(&v87 + 1))
                              {
                                if (swift_dynamicCast())
                                {
                                  a2 = *(&v88 + 1);
                                  if (v73)
                                  {
                                    v69 = v88;
LABEL_68:
                                    sub_10009FFE8(&v91, v69, a2);

LABEL_76:
                                    (*(v12 + 8))(v15, v11);
                                    sub_100012E08(&v91);
                                    return;
                                  }
                                }

LABEL_73:
                                if (swift_unknownObjectWeakLoadStrong())
                                {
                                  goto LABEL_74;
                                }

                                goto LABEL_75;
                              }

                              v70 = &qword_1001036C0;
                              v71 = &unk_1000BEE90;
                              v72 = &v93;
LABEL_72:
                              sub_10000EBA4(v72, v70, v71);
                              goto LABEL_73;
                            }

LABEL_71:
                            v70 = &unk_100104960;
                            v71 = &unk_1000BEFB8;
                            v72 = &v86;
                            goto LABEL_72;
                          }
                        }

                        sub_10000EA04(&v88);
LABEL_70:
                        v86 = 0uLL;
                        *&v87 = 0;
                        *(&v87 + 1) = 1;
                        goto LABEL_71;
                      }

                      goto LABEL_90;
                    }

LABEL_89:
                    __break(1u);
LABEL_90:
                    __break(1u);
                    return;
                  }

LABEL_78:
                  sub_10000EBA4(&v93, &qword_1001036C0, &unk_1000BEE90);
                  goto LABEL_58;
                }
              }
            }
          }

          sub_10000EA04(&v88);
          goto LABEL_58;
        }

        __break(1u);
        goto LABEL_89;
      }
    }

    else
    {
    }

    sub_10000EA04(&v91);
    (*(v12 + 8))(v15, v11);
  }
}

void sub_10009FFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD050;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_100039F8C();
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;

  sub_100038F50(inited, &aBlock);
  swift_setDeallocating();
  v8 = *(inited + 16);
  sub_10000E6C4(&qword_1001023D8, &unk_1000BD290);
  swift_arrayDestroy();
  v9 = String._bridgeToObjectiveC()();
  v10 = sub_100006658(v9);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  v14 = String._bridgeToObjectiveC()();
  v15 = sub_100006658(v14);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000161DC(a1, &aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  v17 = v32;
  *(v16 + 24) = aBlock;
  *(v16 + 40) = v17;
  *(v16 + 56) = v33;
  *(v16 + 72) = v34;
  v18 = v3;
  v19 = String._bridgeToObjectiveC()();

  v30[4] = sub_1000A2940;
  v30[5] = v16;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 1107296256;
  v30[2] = sub_10003DFD0;
  v30[3] = &unk_1000F1E60;
  v20 = _Block_copy(v30);

  v21 = objc_opt_self();
  v22 = [v21 actionWithTitle:v19 style:1 handler:v20];
  _Block_release(v20);

  v23 = String._bridgeToObjectiveC()();
  v24 = sub_100006658(v23);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = swift_allocObject();
  *(v25 + 16) = v13;
  v26 = v13;
  v27 = String._bridgeToObjectiveC()();

  *&v33 = sub_100012D88;
  *(&v33 + 1) = v25;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v32 = sub_10003DFD0;
  *(&v32 + 1) = &unk_1000F1EB0;
  v28 = _Block_copy(&aBlock);

  v29 = [v21 actionWithTitle:v27 style:0 handler:v28];
  _Block_release(v28);

  [v26 addAction:v29];
  [v26 addAction:v22];
  [v26 setPreferredAction:v29];
  [v18 presentViewController:v26 animated:1 completion:0];
}

void sub_1000A04C4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HomePodSetupTableViewController();
  v15.receiver = v2;
  v15.super_class = v9;
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007EA04();
    swift_unknownObjectRelease();
  }

  v10 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_contentTableView;
  [*(*&v2[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_contentTableView] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView) reloadData];
  sub_1000A066C();
  if ((v11 & 1) == 0)
  {
    v12 = *(*&v2[v10] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
    if (v12)
    {
      v13 = v12;
      IndexPath.init(row:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v5 + 8))(v8, v4);
      [v13 selectRowAtIndexPath:isa animated:1 scrollPosition:1];
    }
  }
}

uint64_t sub_1000A066C()
{
  v1 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v5 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v0 + v5, v4, &qword_100103420, &unk_1000BCE90);
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6))
  {
    sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
    return -1;
  }

  v8 = &v4[*(v6 + 220)];
  v9 = *v8;
  v17 = *(v8 + 1);
  v18 = v9;

  sub_10000EBA4(v4, &qword_100103420, &unk_1000BCE90);
  v10 = *(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options);
  v11 = *(v10 + 16);

  if (!v11)
  {
LABEL_18:

    return 0;
  }

  v7 = 0;
  v19 = v11;
  while (v7 < *(v10 + 16))
  {
    v13 = *(v10 + 8 * v7 + 32);
    strcpy(v20, "hds_hp_scn_nn");
    HIWORD(v20[1]) = -4864;

    AnyHashable.init<A>(_:)();
    if (*(v13 + 16) && (v14 = sub_100053B3C(v21), (v15 & 1) != 0))
    {
      sub_10000F25C(*(v13 + 56) + 32 * v14, &v22, &qword_1001036C0, &unk_1000BEE90);
      sub_10000EA04(v21);

      v24[0] = v22;
      v24[1] = v23;
      if (!*(&v23 + 1))
      {
        result = sub_10000EBA4(v24, &qword_1001036C0, &unk_1000BEE90);
LABEL_17:
        v11 = v19;
        goto LABEL_6;
      }

      result = swift_dynamicCast();
      if ((result & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v20[0] == v18 && v20[1] == v17)
      {

        goto LABEL_21;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v11 = v19;
      if (v16)
      {

LABEL_21:

        return v7;
      }
    }

    else
    {

      result = sub_10000EA04(v21);
    }

LABEL_6:
    if (v11 == ++v7)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void sub_1000A0A18(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v10];

  v11 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options;
  v12 = *&v2[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options];
  *&v2[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options] = *(a1 + *(v4 + 52));

  if (qword_100101708 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100012AAC(v13, qword_100104820);
  v14 = v2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v43 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v42 = v14;
    v20 = v19;
    v44 = v19;
    *v18 = 136315138;
    v21 = *&v2[v11];

    sub_10000E6C4(&unk_100104940, &qword_1000BEAC0);
    v22 = Array.description.getter();
    v24 = v23;

    v25 = sub_1000B08A0(v22, v24, &v44);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupTableViewController: options %s", v18, 0xCu);
    sub_10000E70C(v20);
    v14 = v42;

    v4 = v43;
  }

  sub_100012AE4(a1, v7);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v44 = v29;
    *v28 = 136315138;
    v30 = &v7[*(v4 + 188)];
    v31 = *v30;
    v32 = v30[1];

    sub_100016374(v7);
    v33 = sub_1000B08A0(v31, v32, &v44);

    *(v28 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "HomePodSetupTableViewController: systemNameIconForPickerView %s", v28, 0xCu);
    sub_10000E70C(v29);
  }

  else
  {

    sub_100016374(v7);
  }

  v34 = (a1 + *(v4 + 188));
  v35 = *v34;
  v36 = v34[1];
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v39 = [objc_opt_self() systemImageNamed:v38];
  }

  else
  {
    v39 = 0;
  }

  v40 = *&v14[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_defaultIconImage];
  *&v14[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_defaultIconImage] = v39;
}

void sub_1000A0DC0()
{
  v1 = v0;
  v2 = type metadata accessor for HomePodSetupViewModel(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v75 - v9;
  v11 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_contentTableView;
  v12 = *&v0[OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_contentTableView];
  v13 = objc_allocWithZone(PRXLabel);
  v14 = v12;
  sub_100051AE4([v13 initWithStyle:0]);

  v15 = *&v1[v11];
  v16 = *&v15[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_mainTitleLabel];
  if (v16)
  {
    v17 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_viewModel;
    swift_beginAccess();
    sub_10000F25C(&v1[v17], v10, &qword_100103420, &unk_1000BCE90);
    if ((*(v3 + 48))(v10, 1, v2))
    {
      v18 = v16;
      sub_10000EBA4(v10, &qword_100103420, &unk_1000BCE90);
      v19 = 0;
    }

    else
    {
      sub_100012AE4(v10, v6);
      v18 = v16;
      sub_10000EBA4(v10, &qword_100103420, &unk_1000BCE90);
      v20 = *v6;
      v21 = v6[1];

      sub_100016374(v6);
      v19 = String._bridgeToObjectiveC()();
    }

    [v18 setText:v19];

    v15 = *&v1[v11];
  }

  v22 = objc_allocWithZone(UITableView);
  v23 = v15;
  sub_100051AF0([v22 init]);

  v24 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
  if (v24)
  {
    [v24 setDelegate:v1];
    v25 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
    if (v25)
    {
      [v25 setDataSource:v1];
      v26 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
      if (v26)
      {
        [v26 setClipsToBounds:1];
        v27 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
        if (v27)
        {
          v28 = [v27 layer];
          [v28 setMasksToBounds:1];

          v29 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
          if (v29)
          {
            v30 = [v29 layer];
            [v30 setCornerRadius:30.0];

            v31 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
            if (v31)
            {
              v32 = v31;
              v33 = [v1 traitCollection];
              v34 = [v33 userInterfaceStyle];

              v35 = objc_opt_self();
              v36 = &selRef_systemGray5Color;
              if (v34 != 2)
              {
                v36 = &selRef_systemGray6Color;
              }

              v37 = [v35 *v36];
              [v32 setBackgroundColor:v37];

              v38 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView);
              if (v38)
              {
                [v38 setSeparatorStyle:0];
              }
            }
          }
        }
      }
    }
  }

  v39 = [v1 contentView];
  [v39 addSubview:*&v1[v11]];

  v40 = [v1 contentView];
  v41 = [v40 mainContentGuide];

  v42 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1000BD460;
  v44 = [*&v1[v11] topAnchor];
  v45 = [v41 topAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v43 + 32) = v46;
  v47 = [*&v1[v11] bottomAnchor];
  v48 = [v41 bottomAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v43 + 40) = v49;
  v50 = [*&v1[v11] leadingAnchor];
  v51 = [v41 leadingAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v43 + 48) = v52;
  v53 = [*&v1[v11] trailingAnchor];
  v54 = [v41 trailingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v43 + 56) = v55;
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints:isa];

  v57 = *&v1[v11];
  v58 = objc_allocWithZone(UILabel);
  v59 = v57;
  sub_100051BD0([v58 init]);

  v60 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label);
  if (v60)
  {
    v61 = v60;
    v62 = String._bridgeToObjectiveC()();
    v63 = sub_100006658(v62);

    if (!v63)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = String._bridgeToObjectiveC()();
    }

    [v61 setText:v63];

    v64 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label);
    if (v64)
    {
      [v64 setTranslatesAutoresizingMaskIntoConstraints:0];
      v65 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label);
      if (v65)
      {
        [v65 setNumberOfLines:0];
        v66 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label);
        if (v66)
        {
          v67 = objc_opt_self();
          v68 = v66;
          v69 = [v67 preferredFontForTextStyle:UIFontTextStyleCaption1];
          [v68 setFont:v69];

          v70 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label);
          if (v70)
          {
            [v70 setAdjustsFontSizeToFitWidth:0];
            v71 = *(*&v1[v11] + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label);
            if (v71)
            {
              v72 = objc_opt_self();
              v73 = v71;
              v74 = [v72 secondaryLabelColor];
              [v73 setTextColor:v74];
            }
          }
        }
      }
    }
  }
}

void sub_1000A1760(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_selectedIndex);
  if ((*(v1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_selectedIndex + 8) & 1) == 0)
  {
    v9 = *v8;
    if (v9 != IndexPath.row.getter())
    {
      IndexPath.init(row:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v4 + 8))(v7, v3);
      [a1 deselectRowAtIndexPath:isa animated:1];
    }
  }

  *v8 = IndexPath.row.getter();
  *(v8 + 8) = 0;
  v11 = IndexPath._bridgeToObjectiveC()().super.isa;
  v12 = [a1 cellForRowAtIndexPath:v11];

  if (v12)
  {
    [v12 setSelected:1 animated:1];
  }
}

uint64_t sub_1000A1904(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v4 = [a1 cellForRowAtIndexPath:isa];

  if (v4)
  {
    [v4 setSelected:0 animated:1];
  }

  v5 = v1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_selectedIndex;
  v6 = *(v1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_selectedIndex);
  v7 = *(v1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_selectedIndex + 8);
  result = IndexPath.row.getter();
  if ((v7 & 1) == 0 && v6 == result)
  {
    *v5 = 0;
    *(v5 + 8) = 1;
  }

  return result;
}

uint64_t sub_1000A19C8(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a1;
  a5(v13, v12);

  return (*(v9 + 8))(v12, v8);
}

id sub_1000A1BDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupTableViewController()
{
  result = qword_100104930;
  if (!qword_100104930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A1D04()
{
  sub_100012108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000A1DD0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1000A1E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10007A070(a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000A1E84(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v5 = *(a2 + 24);

  a3(&v5);
}

void sub_1000A1EE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  if (qword_100101708 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_100104820);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "HomePodSetupTableViewController: presenter:didUpdate viewModel", v11, 2u);
  }

  sub_100012AE4(a1, v7);
  v12 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v7, v2 + v13, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  if ([v2 isViewLoaded])
  {
    sub_1000A0A18(a1);
  }
}

unint64_t sub_1000A20C8()
{
  type metadata accessor for HomePodWiFiTableCell();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options);
  if (result >= *(v3 + 16))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v4 = *(v3 + 8 * result + 32);
  v5 = objc_opt_self();

  v6 = v1;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  strcpy(v20, "hds_hp_scn_nn");
  HIWORD(v20[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v8 = sub_100053B3C(v21), (v9 & 1) != 0))
  {
    sub_10000F25C(*(v4 + 56) + 32 * v8, &v22, &qword_1001036C0, &unk_1000BEE90);
    sub_10000EA04(v21);
    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast())
      {
        v10 = *&v6[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel];
        v11 = String._bridgeToObjectiveC()();

        goto LABEL_10;
      }
    }

    else
    {
      sub_10000EBA4(&v24, &qword_1001036C0, &unk_1000BEE90);
    }
  }

  else
  {
    sub_10000EA04(v21);
  }

  v10 = *&v6[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_titleLabel];
  v11 = String._bridgeToObjectiveC()();
LABEL_10:
  [v10 setText:v11];

  strcpy(v20, "hds_hp_scn_re");
  HIWORD(v20[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v12 = sub_100053B3C(v21), (v13 & 1) != 0))
  {
    sub_10000F25C(*(v4 + 56) + 32 * v12, &v22, &qword_1001036C0, &unk_1000BEE90);
    sub_10000EA04(v21);
    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast())
      {
        v6[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_isReachable] = v20[0];
      }
    }

    else
    {
      sub_10000EBA4(&v24, &qword_1001036C0, &unk_1000BEE90);
    }
  }

  else
  {
    sub_10000EA04(v21);
  }

  v20[0] = 0x735F70685F736468;
  v20[1] = 0xEF697373725F6E63;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v14 = sub_100053B3C(v21), (v15 & 1) != 0))
  {
    sub_10000F25C(*(v4 + 56) + 32 * v14, &v22, &qword_1001036C0, &unk_1000BEE90);
    sub_10000EA04(v21);
    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast())
      {
        *&v6[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_rssi] = v20[0];
      }
    }

    else
    {
      sub_10000EBA4(&v24, &qword_1001036C0, &unk_1000BEE90);
    }
  }

  else
  {
    sub_10000EA04(v21);
  }

  strcpy(v20, "hds_hp_scn_io");
  HIWORD(v20[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(v4 + 16) && (v16 = sub_100053B3C(v21), (v17 & 1) != 0))
  {
    sub_10000F25C(*(v4 + 56) + 32 * v16, &v22, &qword_1001036C0, &unk_1000BEE90);
    sub_10000EA04(v21);

    v24 = v22;
    v25 = v23;
    if (*(&v23 + 1))
    {
      if (swift_dynamicCast())
      {
        isa = Int._bridgeToObjectiveC()().super.super.isa;
        v19 = [(objc_class *)isa BOOLValue];

        v6[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableCell_hideLockIcon] = v19;
      }
    }

    else
    {
      sub_10000EBA4(&v24, &qword_1001036C0, &unk_1000BEE90);
    }
  }

  else
  {

    sub_10000EA04(v21);
  }

  sub_10009652C();
  return v6;
}

unint64_t sub_1000A25D8()
{
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupTableViewController_options);
  if (result >= *(v2 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v3 = *(v2 + 8 * result + 32);
  strcpy(v6, "hds_hp_scn_re");
  v6[7] = -4864;

  AnyHashable.init<A>(_:)();
  if (*(v3 + 16) && (v4 = sub_100053B3C(v7), (v5 & 1) != 0))
  {
    sub_10000F25C(*(v3 + 56) + 32 * v4, &v8, &qword_1001036C0, &unk_1000BEE90);
    sub_10000EA04(v7);

    v10[0] = v8;
    v10[1] = v9;
    if (*(&v9 + 1))
    {
      return swift_dynamicCast();
    }

    else
    {
      return sub_10000EBA4(v10, &qword_1001036C0, &unk_1000BEE90);
    }
  }

  else
  {

    return sub_10000EA04(v7);
  }
}

uint64_t sub_1000A273C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A277C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A27BC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 40);

  v2(&v4);
}

uint64_t sub_1000A2820(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A2838(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&unk_100104950, &qword_1000BD280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A28A8()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000A28F0()
{
  if (*(v0 + 56))
  {
    sub_10000E70C((v0 + 32));
  }

  v1 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000A294C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A2994(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    v8 = [v5 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = UUID.uuidString.getter();
    v11 = v10;
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  v14[0] = 0x5F656D6F68;
  v14[1] = 0xE500000000000000;
  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  return v14[0];
}

uint64_t sub_1000A2AD4()
{
  if (!*v0)
  {
    return 7104878;
  }

  v1 = [*v0 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_1000A2B4C(void *a1)
{
  v2 = 7104878;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[0] = 1031365995;
  v38[1] = 0xE400000000000000;
  if (a1)
  {
    v8 = [a1 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = UUID.uuidString.getter();
    v11 = v10;
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v11 = 0xE300000000000000;
    v9 = 7104878;
  }

  v36 = 0x5F656D6F68;
  v37 = 0xE500000000000000;
  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v38[0];
  v16 = v38[1];
  strcpy(v38, "<HomeOption ");
  BYTE5(v38[1]) = 0;
  HIWORD(v38[1]) = -5120;
  v15._object = v16;
  String.append(_:)(v15);

  v18 = v38[0];
  v17 = v38[1];
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v38, "displayValue=");
  HIWORD(v38[1]) = -4864;
  if (a1)
  {
    v19 = [a1 name];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  v36 = v2;
  v37 = v21;
  v22._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  v24 = v38[0];
  v25 = v38[1];
  v38[0] = v18;
  v38[1] = v17;

  v26._countAndFlagsBits = v24;
  v26._object = v25;
  String.append(_:)(v26);

  v28 = v38[0];
  v27 = v38[1];
  v38[0] = 0x3D656D6F68;
  v38[1] = 0xE500000000000000;
  v36 = a1;
  sub_10000E6C4(&qword_100104968, &qword_1000BEFE8);
  v29._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v29);

  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31 = v38[0];
  v32 = v38[1];
  v38[0] = v28;
  v38[1] = v27;

  v33._countAndFlagsBits = v31;
  v33._object = v32;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 62;
  v34._object = 0xE100000000000000;
  String.append(_:)(v34);

  return v38[0];
}

uint64_t sub_1000A2EA0(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1000A2EB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000A2F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1000A2F74()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100104970);
  v1 = sub_100012AAC(v0, qword_100104970);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000A303C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) && (v7 = sub_100053B3C(a1), (v8 & 1) != 0))
  {
    v9 = (*(a4 + 56) + 16 * v7);
    a2 = *v9;
    v10 = v9[1];
  }

  else
  {
    if (qword_100101710 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100012AAC(v11, qword_100104970);
    sub_10000FCF4(a1, v24);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v14 = 136315394;
      v15 = AnyHashable.description.getter();
      v17 = v16;
      sub_10000EA04(v24);
      v18 = sub_1000B08A0(v15, v17, &v23);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = Dictionary.description.getter();
      v21 = sub_1000B08A0(v19, v20, &v23);

      *(v14 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "Couldn't get value for key %s from %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000EA04(v24);
    }
  }

  return a2;
}

uint64_t sub_1000A3260(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1000A32B4()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100104988);
  v1 = sub_100012AAC(v0, qword_100104988);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000A337C()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = [objc_allocWithZone(CUSystemMonitor) init];
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1000A33E8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = objc_allocWithZone(NSUserDefaults);
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 initWithSuiteName:v4];

    if (!v5)
    {
      v5 = [objc_opt_self() standardUserDefaults];
    }

    v6 = *(v0 + 72);
    *(v0 + 72) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

uint64_t *sub_1000A34AC(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[2] = 0;
  v1[3] = 0x4072C00000000000;
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 56) = 0;
  v1[8] = 0;
  v1[9] = 0;
  v1[12] = 0;
  v1[13] = 0;
  v1[11] = 0;
  *(v1 + 112) = 1;
  swift_unknownObjectWeakInit();
  v1[17] = 0;
  v1[19] = &_swiftEmptySetSingleton;
  *(v1 + 160) = 0;
  *(v1 + 41) = 0;
  v1[21] = [objc_allocWithZone(AppleMusicServiceUtilities) init];
  *(v1 + 88) = 0;
  v10 = type metadata accessor for HomePodSetupModel();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();

  v1[6] = sub_10004B1D8(v13);
  v1[18] = [objc_allocWithZone(SFDeviceAssetManager) init];
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = result;
  v51 = v4;
  v16 = [result aa_primaryAppleAccount];

  if (v16)
  {
    v17 = [v16 username];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v23 = v2[6];
        v24 = *(v23 + 24);
        *(v23 + 16) = v19;
        *(v23 + 24) = v21;
      }
    }
  }

  v25 = v2[6];

  *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_viewAppearedTicks) = mach_absolute_time();

  v26 = v2[6];

  *(v26 + 69) = sub_1000065B8();

  if (IsAppleInternalBuild())
  {
    v53 = 0x6172615074736574;
    v54 = 0xEA0000000000736DLL;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v27 = sub_100053B3C(aBlock), (v28 & 1) != 0))
    {
      sub_10000EA58(*(a1 + 56) + 32 * v27, v55);
      sub_10000EA04(aBlock);
      if (swift_dynamicCast())
      {
        v29 = v53;
        v30 = v54;
LABEL_16:
        if (qword_100101608 != -1)
        {
          v49 = v29;
          swift_once();
          v29 = v49;
        }

        sub_10003BE34(v29, v30);

        sub_10003D768(a1);
        goto LABEL_19;
      }
    }

    else
    {
      sub_10000EA04(aBlock);
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    goto LABEL_16;
  }

LABEL_19:

  v31 = [objc_allocWithZone(HDSSetupSession) init];
  v2[10] = v31;
  type metadata accessor for HomePodSetupPreAuthFetcher();
  swift_allocObject();
  v32 = v31;
  v33 = sub_100014370(v32);

  v2[16] = v33;
  v34 = swift_allocObject();
  swift_weakInit();

  sub_100013918(sub_1000B3E1C, v34);

  v35 = [objc_allocWithZone(SFDevice) init];
  (*(v6 + 16))(v9, v2[6] + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceIdentifier, v5);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);
  [v35 setIdentifier:isa];

  [v35 setOsVersion:*(v2[6] + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_osVersion)];
  [v35 setDeviceModelCode:*(v2[6] + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode)];
  sub_1000A3D58(v35);
  [v2[10] preflight];
  if (IsAppleInternalBuild())
  {
    if (*(v2[6] + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoCounterpartColor))
    {
      LOBYTE(aBlock[0]) = *(v2[6] + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoCounterpartColor);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      sub_1000A5B90(v37, v38);
    }

    if (qword_100101608 != -1)
    {
      swift_once();
    }

    v39 = *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode + 8);
    v40 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v40 = *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode) & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {
      v41 = v2[10];

      v42 = String._bridgeToObjectiveC()();

      [v41 forcePassCode:v42];
    }
  }

  v43 = v2[21];
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = v43;

  v46 = swift_allocObject();
  v47 = v51;
  *(v46 + 16) = v44;
  *(v46 + 24) = v47;
  aBlock[4] = sub_1000B3E5C;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A3260;
  aBlock[3] = &unk_1000F2430;
  v48 = _Block_copy(aBlock);

  [v45 serviceEnabled:v48];
  _Block_release(v48);

  return v2;
}

uint64_t sub_1000A3BD8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = v7;
    v31 = v6;
    v10 = v4;
    v11 = v2;
    v12 = *(Strong + 48);
    v13 = v5;
    v14 = v3;

    v15 = (v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation);
    v16 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation);
    v28 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 16);
    v29 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 8);
    v27 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 24);
    v26 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 32);
    v17 = v8;
    v18 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 40);
    v19 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 48);
    *v15 = v11;
    v15[1] = v14;
    v15[2] = v10;
    v15[3] = v13;
    v15[4] = v31;
    v15[5] = v30;
    v15[6] = v17;
    sub_100014634(a1, v32);
    sub_10001466C(v16, v29);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(result + 48);

    v23 = *a1;
    v22 = a1[1];
    v24 = (v21 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber);
    v25 = *(v21 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber + 8);
    *v24 = v23;
    v24[1] = v22;
  }

  return result;
}

void sub_1000A3D58(uint64_t a1)
{
  v3 = *(v1 + 80);
  sub_10000E6C4(&qword_1001019C8, &unk_1000BD3E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000BD050;
  v176 = 0x734D67697274;
  v177 = 0xE600000000000000;
  v5 = v3;
  AnyHashable.init<A>(_:)();
  v6 = 1000 * *(*(v1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_triggerSeconds);
  if (v6 == v6)
  {
    *(v4 + 96) = &type metadata for Int32;
    *(v4 + 72) = v6;
    sub_10000D8A8(v4);
    swift_setDeallocating();
    sub_10000EBA4(v4 + 32, &qword_100101970, &unk_1000BC240);
    swift_deallocClassInstance();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v5 setAdditionalMetrics:{isa, v176, v177}];

    [*(v1 + 80) setPeerDevice:a1];
    [*(v1 + 80) setTestFlags:0];
    [*(v1 + 80) setTouchRemoteEnabled:1];
    v8 = *(v1 + 80);
    Strong = swift_unknownObjectWeakLoadStrong();
    [v8 setPresentingViewController:Strong];

    v10 = *(v1 + 80);
    v11 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3E64;
    v181 = v11;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AADC8;
    v179 = &unk_1000F2458;
    v12 = _Block_copy(&v176);
    v13 = v10;

    [v13 setProgressHandler:v12];
    _Block_release(v12);

    v14 = [*(v1 + 80) sysDropSession];
    v15 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3E88;
    v181 = v15;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AADC8;
    v179 = &unk_1000F2480;
    v16 = _Block_copy(&v176);

    [v14 setProgressHandler:v16];
    _Block_release(v16);

    v17 = [*(v1 + 80) sysDropSession];
    v18 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3EAC;
    v181 = v18;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AB1E4;
    v179 = &unk_1000F24A8;
    v19 = _Block_copy(&v176);

    [v17 setSysdropFinishedHandler:v19];
    _Block_release(v19);

    v20 = *(v1 + 80);
    v21 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3EB4;
    v181 = v21;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AB430;
    v179 = &unk_1000F24D0;
    v22 = _Block_copy(&v176);
    v23 = v20;

    [v23 setPromptForAppleMusicHandler:v22];
    _Block_release(v22);

    v24 = *(v1 + 80);
    v25 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3EBC;
    v181 = v25;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AB744;
    v179 = &unk_1000F24F8;
    v26 = _Block_copy(&v176);
    v27 = v24;

    [v27 setPromptForHomeHandler:v26];
    _Block_release(v26);

    v28 = *(v1 + 80);
    v29 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3EC4;
    v181 = v29;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_10007DB0C;
    v179 = &unk_1000F2520;
    v30 = _Block_copy(&v176);
    v31 = v28;

    [v31 setPromptForHomeNameCreationHandler:v30];
    _Block_release(v30);

    v32 = *(v1 + 80);
    v33 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3ECC;
    v181 = v33;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AB1E4;
    v179 = &unk_1000F2548;
    v34 = _Block_copy(&v176);
    v35 = v32;

    [v35 setPromptForHomeInSameLocationHandler:v34];
    _Block_release(v34);

    v36 = *(v1 + 80);
    v37 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3ED4;
    v181 = v37;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2570;
    v38 = _Block_copy(&v176);
    v39 = v36;

    [v39 setPromptForHomeiCloudHandler:v38];
    _Block_release(v38);

    v40 = *(v1 + 80);
    v41 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F00;
    v181 = v41;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2598;
    v42 = _Block_copy(&v176);
    v43 = v40;

    [v43 setPromptForiTunesSignInHandler:v42];
    _Block_release(v42);

    v44 = *(v1 + 80);
    v45 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F2C;
    v181 = v45;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000A3260;
    v179 = &unk_1000F25C0;
    v46 = _Block_copy(&v176);
    v47 = v44;

    [v47 setPromptForLocationAlreadyEnabledHandler:v46];
    _Block_release(v46);

    v48 = *(v1 + 80);
    v49 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F34;
    v181 = v49;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F25E8;
    v50 = _Block_copy(&v176);
    v51 = v48;

    [v51 setPromptForLocationEnableHandler:v50];
    _Block_release(v50);

    v52 = *(v1 + 80);
    v53 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F60;
    v181 = v53;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2610;
    v54 = _Block_copy(&v176);
    v55 = v52;

    [v55 setPromptForPersonalRequestsHandler:v54];
    _Block_release(v54);

    v56 = *(v1 + 80);
    v57 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F68;
    v181 = v57;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000ABEEC;
    v179 = &unk_1000F2638;
    v58 = _Block_copy(&v176);
    v59 = v56;

    [v59 setPromptForPINHandler:v58];
    _Block_release(v58);

    v60 = *(v1 + 80);
    v61 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F70;
    v181 = v61;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AC398;
    v179 = &unk_1000F2660;
    v62 = _Block_copy(&v176);
    v63 = v60;

    [v63 setPromptForRoomHandlerDetailed:v62];
    _Block_release(v62);

    v64 = *(v1 + 80);
    v65 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F78;
    v181 = v65;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AC72C;
    v179 = &unk_1000F2688;
    v66 = _Block_copy(&v176);
    v67 = v64;

    [v67 setPromptForWiFiPickerHandler:v66];
    _Block_release(v66);

    v68 = *(v1 + 80);
    v69 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F80;
    v181 = v69;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F26B0;
    v70 = _Block_copy(&v176);
    v71 = v68;

    [v71 setPromptForSiriEnableHandler:v70];
    _Block_release(v70);

    v72 = *(v1 + 80);
    v73 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F88;
    v181 = v73;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000ACB60;
    v179 = &unk_1000F26D8;
    v74 = _Block_copy(&v176);
    v75 = v72;

    [v75 setPromptForSiriLanguageHandler:v74];
    _Block_release(v74);

    v76 = *(v1 + 80);
    v77 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3F90;
    v181 = v77;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2700;
    v78 = _Block_copy(&v176);
    v79 = v76;

    [v79 setPromptForTermsHandler:v78];
    _Block_release(v78);

    v80 = *(v1 + 80);
    v81 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3FB8;
    v181 = v81;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2728;
    v82 = _Block_copy(&v176);
    v83 = v80;

    [v83 setPromptForTermsAndConditionsV2Disagree:v82];
    _Block_release(v82);

    v84 = *(v1 + 80);
    v85 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3FC0;
    v181 = v85;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2750;
    v86 = _Block_copy(&v176);
    v87 = v84;

    [v87 setPromptForHomePodSoftwareUpdateNonSetupAck:v86];
    _Block_release(v86);

    v88 = *(v1 + 80);
    v89 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B3FE8;
    v181 = v89;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2778;
    v90 = _Block_copy(&v176);
    v91 = v88;

    [v91 setPromptForHomePodSoftwareUpdateNonSetupCompleted:v90];
    _Block_release(v90);

    v92 = *(v1 + 80);
    v93 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4010;
    v181 = v93;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F27A0;
    v94 = _Block_copy(&v176);
    v95 = v92;

    [v95 setPromptForHomePodSoftwareUpdateNonSetupCancelled:v94];
    _Block_release(v94);

    v96 = *(v1 + 80);
    v97 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4038;
    v181 = v97;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F27C8;
    v98 = _Block_copy(&v176);
    v99 = v96;

    [v99 setPromptForSoundRecognitionHandler:v98];
    _Block_release(v98);

    v100 = *(v1 + 80);
    v101 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4060;
    v181 = v101;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F27F0;
    v102 = _Block_copy(&v176);
    v103 = v100;

    [v103 setPromptForAutomaticSoftwareUpdateHandler:v102];
    _Block_release(v102);

    v104 = *(v1 + 80);
    v105 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4088;
    v181 = v105;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2818;
    v106 = _Block_copy(&v176);
    v107 = v104;

    [v107 setPromptForSoftwareUpdateHandler:v106];
    _Block_release(v106);

    v108 = *(v1 + 80);
    v109 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B40B0;
    v181 = v109;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2840;
    v110 = _Block_copy(&v176);
    v111 = v108;

    [v111 setPromptForCaptiveNetworkHandler:v110];
    _Block_release(v110);

    v112 = *(v1 + 80);
    v113 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B40D8;
    v181 = v113;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2868;
    v114 = _Block_copy(&v176);
    v115 = v112;

    [v115 setPromptForTVAudioHandler:v114];
    _Block_release(v114);

    v116 = *(v1 + 80);
    v117 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4100;
    v181 = v117;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2890;
    v118 = _Block_copy(&v176);
    v119 = v116;

    [v119 setPromptForHH2UpsellHandler:v118];
    _Block_release(v118);

    v120 = *(v1 + 80);
    v121 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4128;
    v181 = v121;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F28B8;
    v122 = _Block_copy(&v176);
    v123 = v120;

    [v123 setPromptToInstallHomeAppHandler:v122];
    _Block_release(v122);

    v124 = *(v1 + 80);
    v125 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4154;
    v181 = v125;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000ACFE0;
    v179 = &unk_1000F28E0;
    v126 = _Block_copy(&v176);
    v127 = v124;

    [v127 setPromptToShareSettingsHandler:v126];
    _Block_release(v126);

    v128 = *(v1 + 80);
    v129 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B415C;
    v181 = v129;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2908;
    v130 = _Block_copy(&v176);
    v131 = v128;

    [v131 setPromptForStereoRoleHandler:v130];
    _Block_release(v130);

    v132 = *(v1 + 80);
    v133 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4164;
    v181 = v133;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AD410;
    v179 = &unk_1000F2930;
    v134 = _Block_copy(&v176);
    v135 = v132;

    [v135 setPromptForStereoMultipleHandler:v134];
    _Block_release(v134);

    v136 = *(v1 + 80);
    v137 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B416C;
    v181 = v137;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000A3260;
    v179 = &unk_1000F2958;
    v138 = _Block_copy(&v176);
    v139 = v136;

    [v139 setPromptForVoiceRecognitionHandler:v138];
    _Block_release(v138);

    v140 = *(v1 + 80);
    v141 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B4174;
    v181 = v141;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2980;
    v142 = _Block_copy(&v176);
    v143 = v140;

    [v143 setPromptForWiFiPasswordHandler:v142];
    _Block_release(v142);

    v144 = *(v1 + 80);
    v145 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B419C;
    v181 = v145;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AD76C;
    v179 = &unk_1000F29A8;
    v146 = _Block_copy(&v176);
    v147 = v144;

    [v147 setPromptForWiFiSummaryHandler:v146];
    _Block_release(v146);

    v148 = *(v1 + 80);
    v149 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41A4;
    v181 = v149;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AD76C;
    v179 = &unk_1000F29D0;
    v150 = _Block_copy(&v176);
    v151 = v148;

    [v151 setPromptForWiFiFailedHandler:v150];
    _Block_release(v150);

    v152 = *(v1 + 80);
    v153 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41AC;
    v181 = v153;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000ADB48;
    v179 = &unk_1000F29F8;
    v154 = _Block_copy(&v176);
    v155 = v152;

    [v155 setPromptForSiriVoiceSelectionHandler:v154];
    _Block_release(v154);

    v156 = *(v1 + 80);
    v157 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41B4;
    v181 = v157;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_100091194;
    v179 = &unk_1000F2A20;
    v158 = _Block_copy(&v176);
    v159 = v156;

    [v159 setPromptForLoggingProfileTransferAck:v158];
    _Block_release(v158);

    v160 = *(v1 + 80);
    v161 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41DC;
    v181 = v161;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000ADEBC;
    v179 = &unk_1000F2A48;
    v162 = _Block_copy(&v176);
    v163 = v160;

    [v163 setPromptForWiFiSetupComplete:v162];
    _Block_release(v162);

    v164 = *(v1 + 80);
    v165 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41E4;
    v181 = v165;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AE218;
    v179 = &unk_1000F2A70;
    v166 = _Block_copy(&v176);
    v167 = v164;

    [v167 setPromptForDataAndPrivacyHandler:v166];
    _Block_release(v166);

    v168 = *(v1 + 80);
    v169 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41EC;
    v181 = v169;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AE598;
    v179 = &unk_1000F2A98;
    v170 = _Block_copy(&v176);
    v171 = v168;

    [v171 setPromptForSetLanguageHandler:v170];
    _Block_release(v170);

    v172 = *(v1 + 80);
    v173 = swift_allocObject();
    swift_weakInit();
    v180 = sub_1000B41F4;
    v181 = v173;
    v176 = _NSConcreteStackBlock;
    v177 = 1107296256;
    v178 = sub_1000AB1E4;
    v179 = &unk_1000F2AC0;
    v174 = _Block_copy(&v176);
    v175 = v172;

    [v175 setDeviceColorFoundHandler:v174];
    _Block_release(v174);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000A5B90(uint64_t a1, unint64_t a2)
{
  if (*(*(v2 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) != 5)
  {
    return;
  }

  v4 = HIBYTE(a2) & 0xF;
  v5 = a1 & 0xFFFFFFFFFFFFLL;
  if (!((a2 & 0x2000000000000000) != 0 ? v4 : a1 & 0xFFFFFFFFFFFFLL))
  {
    return;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v9 = sub_1000B12D4(a1, a2, 10);

    if ((v9 & 0x100) != 0)
    {
      return;
    }

    goto LABEL_64;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    aBlock = a1;
    v40 = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (v4)
      {
        if (--v4)
        {
          LOBYTE(v9) = 0;
          v16 = &aBlock + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            if (((10 * v9) & 0xF00) != 0)
            {
              break;
            }

            v9 = (10 * v9) + v17;
            if ((v9 >> 8))
            {
              break;
            }

            ++v16;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_81:
      __break(1u);
      return;
    }

    if (a1 != 45)
    {
      if (v4)
      {
        LOBYTE(v9) = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v20 = *p_aBlock - 48;
          if (v20 > 9)
          {
            break;
          }

          if (((10 * v9) & 0xF00) != 0)
          {
            break;
          }

          v9 = (10 * v9) + v20;
          if ((v9 >> 8))
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v4)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    if (v4)
    {
      if (--v4)
      {
        LOBYTE(v9) = 0;
        v12 = &aBlock + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (((10 * v9) & 0xF00) != 0)
          {
            break;
          }

          v9 = (10 * v9) - v13;
          if ((v9 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v12;
          if (!--v4)
          {
            goto LABEL_63;
          }
        }
      }

      goto LABEL_62;
    }

    goto LABEL_79;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v7 = _StringObject.sharedUTF8.getter();
  }

  v8 = *v7;
  if (v8 == 43)
  {
    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v9 = 0;
        if (v7)
        {
          v14 = v7 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              goto LABEL_62;
            }

            if (((10 * v9) & 0xF00) != 0)
            {
              goto LABEL_62;
            }

            v9 = (10 * v9) + v15;
            if ((v9 >> 8))
            {
              goto LABEL_62;
            }

            ++v14;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_54;
      }

      goto LABEL_62;
    }

    goto LABEL_80;
  }

  if (v8 == 45)
  {
    if (v5 >= 1)
    {
      v4 = v5 - 1;
      if (v5 != 1)
      {
        v9 = 0;
        if (v7)
        {
          v10 = v7 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_62;
            }

            if (((10 * v9) & 0xF00) != 0)
            {
              goto LABEL_62;
            }

            v9 = (10 * v9) - v11;
            if ((v9 & 0xFFFFFF00) != 0)
            {
              goto LABEL_62;
            }

            ++v10;
            if (!--v4)
            {
              goto LABEL_63;
            }
          }
        }

LABEL_54:
        LOBYTE(v4) = 0;
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v5)
  {
    v9 = 0;
    if (v7)
    {
      while (1)
      {
        v18 = *v7 - 48;
        if (v18 > 9)
        {
          goto LABEL_62;
        }

        if (((10 * v9) & 0xF00) != 0)
        {
          goto LABEL_62;
        }

        v9 = (10 * v9) + v18;
        if ((v9 >> 8))
        {
          goto LABEL_62;
        }

        ++v7;
        if (!--v5)
        {
          goto LABEL_54;
        }
      }
    }

    goto LABEL_54;
  }

LABEL_62:
  v9 = 0;
  LOBYTE(v4) = 1;
LABEL_63:
  v45[1] = v4;
  if (v4)
  {
    return;
  }

LABEL_64:
  swift_beginAccess();
  if (!sub_1000AFBB0(v9, *(v2 + 152)))
  {
    if ((*(v2 + 160) & 1) == 0)
    {
      *(v2 + 160) = 1;
      [*(v2 + 144) activate];
    }

    v38 = v2;
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100012AAC(v21, qword_100104988);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 16777472;
      v24[4] = v9;
      _os_log_impl(&_mh_execute_header, v22, v23, "Found device with color: %hhu", v24, 5u);
    }

    swift_beginAccess();
    sub_1000B18A8(v45, v9);
    swift_endAccess();
    v25 = [objc_allocWithZone(SFDeviceAssetQuery) initWithSingleHomePodColor:v9 version:5];
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v9;
    *(v27 + 24) = v26;
    v28 = objc_allocWithZone(SFDeviceAssetRequestConfiguration);
    v43 = sub_1000B3DF0;
    v44 = v27;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_1000B0760;
    v42 = &unk_1000F2390;
    v29 = _Block_copy(&aBlock);

    v30 = [v28 initWithQueryResultHandler:v29];
    _Block_release(v29);

    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v9;
    *(v32 + 24) = v31;
    v43 = sub_1000B3DFC;
    v44 = v32;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_1000B06D4;
    v42 = &unk_1000F23E0;
    v33 = _Block_copy(&aBlock);

    [v30 setDownloadCompletionHandler:v33];
    _Block_release(v33);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 16777472;
      v36[4] = v9;
      _os_log_impl(&_mh_execute_header, v34, v35, "Starting single stereo image lookup for %hhu", v36, 5u);
    }

    [*(v38 + 144) getAssetBundleForDeviceQuery:v25 withRequestConfiguration:v30];
  }
}

uint64_t sub_1000A6274(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_1000A33E8();
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 BOOLForKey:v5];

    if (v6)
    {
      if (qword_100101718 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100012AAC(v7, qword_100104988);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupInteractor: forceMusicSubscription is true", v10, 2u);
      }

      a1 = 1;
    }

    v11 = *(v3 + 48);

    *(v11 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_subscribedToMusicService) = a1 & 1;
  }

  return result;
}

void sub_1000A640C()
{
  v1 = v0;
  *(v0 + 160) = 1;
  [*(v0 + 144) activate];
  [*(v0 + 80) setPauseAfterPreAuth:0];
  v2 = *(v0 + 80);
  Strong = swift_unknownObjectWeakLoadStrong();
  [v2 setPresentingViewController:Strong];

  [*(v1 + 80) activate];
  v4 = sub_1000A337C();
  [v4 setMeDeviceUseFindMyLocate:1];

  v5 = *(v1 + 64);
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F2340;
  v6 = _Block_copy(aBlock);
  v7 = v5;
  [v7 setMeDeviceChangedHandler:v6];
  _Block_release(v6);

  [*(v1 + 64) activateWithCompletion:0];
  if ((*(*(v1 + 48) + 68) & 1) == 0)
  {
    [*(v1 + 80) skipAudioPasscode];
  }

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_100104988);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v18 = *(*(v1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceColorCode);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = sub_1000B08A0(v13, v14, aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "HomePodSetupInteractor sessionStart device color %s", v11, 0xCu);
    sub_10000E70C(v12);
  }

  LOBYTE(aBlock[0]) = *(*(v1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceColorCode);
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  sub_1000A5B90(v16, v17);

  sub_1000A8984();
}

uint64_t sub_1000A670C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100104988);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = *(v3 + 80);
    *(v9 + 4) = v11;
    *v10 = v11;
    v12 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "HomePodSetupInteractor: preAuth requested for session: %@", v9, 0xCu);
    sub_10000EBA4(v10, &qword_100101E38, &unk_1000BCF80);
  }

  v13 = *(v3 + 128);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;

  v16 = sub_100013918(sub_1000B3D54, v15);

  return v16 & 1;
}

uint64_t sub_1000A68EC(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v29 = a1[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 48);
    v28 = v10;
    v13 = v9;
    v14 = v8;
    v15 = v7;
    v16 = v6;
    v17 = v5;

    v18 = (v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation);
    v19 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation);
    v26 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 16);
    v27 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 8);
    v25 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 24);
    v23 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 40);
    v24 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 32);
    v20 = a3;
    v21 = *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 48);
    *v18 = v17;
    v18[1] = v16;
    v18[2] = v15;
    v18[3] = v14;
    v18[4] = v13;
    v18[5] = v28;
    v18[6] = v29;
    sub_100014634(a1, v30);
    a3 = v20;
    sub_10001466C(v19, v27);
  }

  return a3(a1);
}

void sub_1000A6A30(uint64_t a1, void **a2)
{
  v3 = v2[6][5];
  if (!v3)
  {
    return;
  }

  v22 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
    goto LABEL_34;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (v5)
  {
    v6 = 0;
    v19 = v2;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_4;
      }

      v11 = v5;
      v12 = [v8 name];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v2 = v14;

      if (v13 == a1 && v2 == a2)
      {

        v5 = v11;
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v5 = v11;
        if ((v16 & 1) == 0)
        {

          goto LABEL_8;
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v7 = v22[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = &v22;
      specialized ContiguousArray._endMutation()();
LABEL_8:
      ++v6;
      if (v10 == v5)
      {
        v17 = v22;
        v2 = v19;
        goto LABEL_23;
      }
    }
  }

  v17 = _swiftEmptyArrayStorage;
LABEL_23:

  if ((v17 & 0x8000000000000000) != 0 || (v17 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_26;
    }

LABEL_36:

    return;
  }

  if (!*(v17 + 16))
  {
    goto LABEL_36;
  }

LABEL_26:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v17 + 16))
    {
      __break(1u);
      return;
    }

    v18 = *(v17 + 32);
  }

  v21 = v18;

  [v2[10] homeKitSelectHome:v21];
}

void sub_1000A6CC0()
{
  v1 = *(v0 + 80);
  v2 = String._bridgeToObjectiveC()();
  [v1 homeKitSelectRoom:v2];

  v3 = *(v0 + 48);
  v4 = *(v0 + 80);

  v5 = [v4 acceptedMusicTerms];
  *(v3 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_acceptedMusicTerms) = v5;

  v6 = [*(v0 + 80) selectedHome];
  if (v6)
  {
    v7 = v6;
    v8 = *(v0 + 48);

    v9 = [v7 isUpdatedToROAR];
    *(v8 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedHomeIsROAR) = v9;

    v10 = *(v0 + 48);

    v11 = [v7 isLocationServicesEnabled];
    *(v10 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasLocationEnabled) = v11;

    v12 = *(v0 + 48);

    *(v12 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasExistingHomePods) = sub_1000B3A88(v7);

    v13 = *(v0 + 48);

    v14 = [v7 name];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = (v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName);
    v19 = *(v13 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeName + 8);
    *v18 = v15;
    v18[1] = v17;

    v20 = *(v0 + 48);
    if (*(v20 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedHomeIsROAR))
    {
      v21 = 7562585;
    }

    else
    {
      v21 = 28494;
    }

    if (*(v20 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedHomeIsROAR))
    {
      v22 = 0xE300000000000000;
    }

    else
    {
      v22 = 0xE200000000000000;
    }

    if (*(v20 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasLocationEnabled))
    {
      v23 = 7562585;
    }

    else
    {
      v23 = 28494;
    }

    if (*(v20 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasLocationEnabled))
    {
      v24 = 0xE300000000000000;
    }

    else
    {
      v24 = 0xE200000000000000;
    }

    v25 = *(v20 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homeHasExistingHomePods);
    if (v25)
    {
      v26 = 7562585;
    }

    else
    {
      v26 = 28494;
    }

    if (v25)
    {
      v27 = 0xE300000000000000;
    }

    else
    {
      v27 = 0xE200000000000000;
    }

    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100012AAC(v28, qword_100104988);

    oslog = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v29))
    {
      v30 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v30 = 136315650;
      v31 = sub_1000B08A0(v21, v22, &v35);

      *(v30 + 4) = v31;
      *(v30 + 12) = 2080;
      v32 = sub_1000B08A0(v23, v24, &v35);

      *(v30 + 14) = v32;
      *(v30 + 22) = 2080;
      v33 = sub_1000B08A0(v26, v27, &v35);

      *(v30 + 24) = v33;
      _os_log_impl(&_mh_execute_header, oslog, v29, "HomePodSetupInteractor: houseWasSelected isROAR:%s loc:%s hasHomePods:%s", v30, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

id sub_1000A7110(const char *a1, const char **a2)
{
  v5 = v2;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100104988);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = *(v5 + 80);
  v11 = *a2;

  return [v10 v11];
}

id sub_1000A7210(char a1)
{
  v2 = v1;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100104988);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x656C62616E65;
    }

    else
    {
      v9 = 0x656C6261736964;
    }

    if (a1)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    v11 = sub_1000B08A0(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "User chose to %s TV Audio", v7, 0xCu);
    sub_10000E70C(v8);
  }

  v12 = *(v2 + 80);

  return [v12 tvAudioEnabled:a1 & 1];
}

id sub_1000A73A8(uint64_t a1)
{
  v2 = v1;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100104988);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "User chose Siri Voice", v7, 2u);
  }

  v8 = *(v2 + 80);

  return [v8 siriVoicePicked:a1];
}

id sub_1000A74B0()
{
  [*(v0 + 80) invalidate];
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100012AAC(v1, qword_100104988);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "HomePodSetup: 'Hello Siri' trigger re-enabled because cancelDeviceSetup was called.", v4, 2u);
  }

  v5 = objc_opt_self();

  return [v5 requestPhraseSpotterBypassing:0 timeout:0.0];
}

void sub_1000A75C4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  *(*(v1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole) = a1;
  [*(v1 + 80) stereoRolePicked:a1];
  v4 = *(v1 + 48);
  v5 = *(v2 + 80);

  v6 = [v5 stereoCounterpartColor];
  *(v4 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoCounterpartColor) = v6;

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100104988);

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v3;
    *(v9 + 8) = 256;
    *(v9 + 10) = [*(v2 + 80) stereoCounterpartColor];

    _os_log_impl(&_mh_execute_header, oslog, v8, "HomePodSetupInteractor stereoRoleSelected: role = %d | stereoCounterpartColor = %hhu", v9, 0xBu);
  }

  else
  {
  }
}

void sub_1000A778C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v8 = (*(v4 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode);
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100012AAC(v10, qword_100104988);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000B08A0(a3, a4, &v17);
    _os_log_impl(&_mh_execute_header, v11, v12, "HomePodSetupInteractor: siri language: %s", v13, 0xCu);
    sub_10000E70C(v14);
  }

  v15 = *(v5 + 80);
  v16 = String._bridgeToObjectiveC()();
  [v15 siriLanguagePicked:v16];
}

id sub_1000A7984()
{
  v1 = v0;
  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100104988);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupInteractor: siriLanguagePicked user selected 'Don't Use Siri'", v5, 2u);
  }

  v6 = *(v1 + 80);

  return [v6 siriLanguagePicked:0];
}

void sub_1000A7A80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 48);
  v5 = *(v3 + 80);

  v6 = [v5 selectedSiriLanguageCode];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = sub_10004DEE8(v8, v10);
  v13 = v12;

  v14 = [objc_opt_self() sharedInstance];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
    v17 = String._bridgeToObjectiveC()();
    v18 = String._bridgeToObjectiveC()();
    v19 = [objc_opt_self() mainBundle];
    v20 = String._bridgeToObjectiveC()();
    v21 = [v16 localizedStringForKey:v17 table:v18 bundle:v19 languageCode:v20];

    if (v21)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100012AAC(v22, qword_100104988);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315138;

    v27 = sub_1000B08A0(v11, v13, aBlock);

    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "HomePodSetup: Speak Pincode with instructions in language %s", v25, 0xCu);
    sub_10000E70C(v26);
  }

  v28 = *(v3 + 80);
  v29 = String._bridgeToObjectiveC()();

  v30 = String._bridgeToObjectiveC()();

  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F2200;
  v31 = _Block_copy(aBlock);

  [v28 speakPasscodeWithInstructions:v29 languageCode:v30 completion:v31];
  _Block_release(v31);
}

void sub_1000A7E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 48);
  v7 = *(v3 + 80);

  v8 = [v7 selectedSiriLanguageCode];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_10004DEE8(v10, v12);
  v15 = v14;

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100012AAC(v16, qword_100104988);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1000B08A0(v13, v15, v24);
    _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetup: Speak Pincode in language (%s", v19, 0xCu);
    sub_10000E70C(v20);
  }

  v21 = *(v3 + 80);
  v22 = String._bridgeToObjectiveC()();

  v24[4] = a1;
  v24[5] = a2;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1107296256;
  v24[2] = sub_100091194;
  v24[3] = &unk_1000F21D8;
  v23 = _Block_copy(v24);

  [v21 speakPasscodeWithLanguageCode:v22 completion:v23];
  _Block_release(v23);
}

void sub_1000A80E4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (isInternalBuild())
  {
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100012AAC(v6, qword_100104988);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1000B08A0(a1, a2, &v16);
      _os_log_impl(&_mh_execute_header, v7, v8, "HomePodSetup: Pincode %s was entered.", v9, 0xCu);
      sub_10000E70C(v10);

LABEL_10:
    }
  }

  else
  {
    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100012AAC(v11, qword_100104988);
    v7 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v12, "HomePodSetup: A pincode was entered.", v13, 2u);
      goto LABEL_10;
    }
  }

  v14 = *(v3 + 80);
  v15 = String._bridgeToObjectiveC()();
  [v14 pairSetupTryPIN:v15];
}

uint64_t sub_1000A8320()
{
  sub_100012E5C(v0 + 32);
  v1 = *(v0 + 48);

  v2 = *(v0 + 96);

  swift_unknownObjectWeakDestroy();
  v3 = *(v0 + 128);

  v4 = *(v0 + 152);

  return v0;
}

uint64_t sub_1000A83A0()
{
  sub_1000A8320();

  return swift_deallocClassInstance();
}

uint64_t sub_1000A83F8()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v3 = *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceActionType);
  if (sub_1000B3E08(v3))
  {
    v4 = *(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode);
    if (v3 == 11)
    {
      if (*(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode))
      {
        if (qword_100101718 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_100012AAC(v5, qword_100104988);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "HomePodSetupInteractor: Requires an upgrade becasue Legacy Setup and HomePod mini.", v8, 2u);
        }

        return 1;
      }

      return 0;
    }

    if (v4 < 9 && ((0x161u >> v4) & 1) != 0)
    {
      return 0;
    }

    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100012AAC(v15, qword_100104988);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 16777472;
      v12[4] = *(*(v1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode);

      v13 = "HomePodSetupInteractor: Requires an upgrade because device %hhu is not known.";
      goto LABEL_20;
    }

LABEL_21:

    return 1;
  }

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100012AAC(v9, qword_100104988);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_21;
  }

  v12 = swift_slowAlloc();
  *v12 = 16777472;
  v12[4] = *(*(v1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceActionType);

  v13 = "HomePodSetupInteractor: Requires an upgrade becasue setup action %hhu not HomePodSetup.";
LABEL_20:
  _os_log_impl(&_mh_execute_header, v10, v11, v13, v12, 5u);

  return 1;
}

uint64_t sub_1000A86D8()
{
  v1 = v0;
  if (qword_100101608 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);

  v3 = sub_10003D3B8(0, v2);
  v5 = v4;

  if (!v5)
  {
    return 70;
  }

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100104988);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_10007869C(v3);
    v13 = sub_1000B08A0(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "HomePodSetupInteractor: initialStateBasedOnTesting because testMode / testFlags next screen is: %s ", v9, 0xCu);
    sub_10000E70C(v10);
  }

  v14 = *(v1 + 48);
  *(v1 + 48) = v5;

  return v3;
}

void sub_1000A88B8(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(v4 + 48);
  *(v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_allowsRandomVoiceSelection) = a1;
  v7 = (v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSiriLanguageCode);
  v8 = *(v6 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preferredSiriLanguageCode + 8);
  *v7 = a2;
  v7[1] = a3;

  v9 = *(v4 + 48);
  v11 = *(v9 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sfSession);
  *(v9 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sfSession) = a4;

  v10 = a4;
}

void sub_1000A8984()
{
  v1 = v0;
  v2 = *(v0 + 168);
  v3 = (*(v0 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber);
  v4 = *v3;
  v5 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  *(*(v1 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode);
  v7 = String._bridgeToObjectiveC()();

  v8 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1000B3D60;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000A3260;
  v10[3] = &unk_1000F2278;
  v9 = _Block_copy(v10);

  [v2 registerDevice:v6 model:v7 callback:v9];
  _Block_release(v9);
}

void sub_1000A8B18(uint64_t a1, char a2)
{
  if (*(v2 + 177))
  {
    return;
  }

  *(v2 + 177) = 1;
  v5 = *(v2 + 80);
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v6 = _convertErrorToNSError(_:)();

    if (*(v2 + 96))
    {
LABEL_4:
      v9 = *(v2 + 88);

      v10 = String._bridgeToObjectiveC()();

      goto LABEL_7;
    }
  }

  else
  {
    v11 = v5;
    if (*(v2 + 96))
    {
      goto LABEL_4;
    }
  }

  v10 = 0;
LABEL_7:
  if (*(v2 + 112))
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v2 + 104);
  }

  [v5 logMetricsForDismissal:v6 dismissType:a1 cardName:v10 cardDuration:v12];

  if (a2 != 70)
  {
    if (sub_10007869C(a2) != 0xD00000000000001BLL || 0x80000001000C0C80 != v13)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
        goto LABEL_16;
      }

      if (sub_10007869C(a2) != 0x6B63695069666977 || v16 != 0xEA00000000007265)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          return;
        }

        goto LABEL_16;
      }
    }

LABEL_16:
    v15 = *(v2 + 80);

    [v15 reportMetricsOnWiFiDismissal];
  }
}

void sub_1000A8CFC(int a1)
{
  if ((*(v1 + 176) & 1) == 0)
  {
    *(v1 + 176) = 1;
    LODWORD(v22) = a1;
    dispatch thunk of CustomStringConvertible.description.getter();
    v2 = objc_allocWithZone(NSString);
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 initWithString:v3];

    sub_1000A83F8();
    sub_10000E6C4(&qword_100104DE0, &qword_1000BF1C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BF0A0;
    *(inited + 32) = 0x6574656C706D6F63;
    *(inited + 40) = 0xE900000000000064;
    sub_10003AE18(0, &unk_1001036D0, NSNumber_ptr);
    *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(0);
    *(inited + 56) = 0x73736563637573;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(0);
    *(inited + 80) = 0x62614C726F727265;
    *(inited + 88) = 0xEA00000000006C65;
    v6 = objc_allocWithZone(NSString);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithString:v7];

    *(inited + 96) = v8;
    *(inited + 104) = 0xD000000000000014;
    *(inited + 112) = 0x80000001000C8250;
    *(inited + 120) = v4;
    *(inited + 128) = 0x6D6F44726F727265;
    *(inited + 136) = 0xEB000000006E6961;
    *(inited + 144) = NSOSStatusErrorDomain;
    *(inited + 152) = 0xD000000000000011;
    *(inited + 160) = 0x80000001000C8270;
    v9 = v4;
    v10 = NSOSStatusErrorDomain;
    *(inited + 168) = Bool._bridgeToObjectiveC()();
    strcpy((inited + 176), "setupErrorCode");
    *(inited + 191) = -18;
    *(inited + 192) = Int32._bridgeToObjectiveC()();
    sub_10000E880(inited);
    swift_setDeallocating();
    sub_10000E6C4(&qword_100104DE8, &unk_1000BF1D0);
    swift_arrayDestroy();
    v11 = String._bridgeToObjectiveC()();
    sub_10003AE18(0, &qword_100104DF0, NSObject_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    sub_10000891C(v11, isa);

    if (qword_100101718 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100012AAC(v13, qword_100104988);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = Dictionary.description.getter();
      v20 = v19;

      v21 = sub_1000B08A0(v18, v20, &v22);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "HomePodSetupInteractor: logRequiresUpdate %s", v16, 0xCu);
      sub_10000E70C(v17);
    }

    else
    {
    }
  }
}

void sub_1000A9170(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    return;
  }

  v3 = v2;
  sub_1000B4318(a1);
  v150 = String.init(cString:)();
  v7 = v6;
  if (a2)
  {
    v148 = Dictionary.description.getter();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v148 = 7104878;
  }

  if (qword_100101718 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100012AAC(v10, qword_100104988);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_1000B08A0(v150, v7, &v152);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_1000B08A0(v148, v9, &v152);
    _os_log_impl(&_mh_execute_header, v11, v12, "<loom:ViewService:matchSessionHandleProgress> HomePodSetupInteractor: progressHandler inEvent:%s and info:%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressEvent) = a1;
  if (a1 <= 199)
  {
    switch(a1)
    {
      case 20:

        v30 = [*(v3 + 80) bonjourTestState];
        *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_bonjourTestState) = v30;
        v31 = [*(v3 + 80) siriDataSharingEnabled];
        *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_siriDataSharingEnabled) = v31;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v32, v33))
        {
          goto LABEL_64;
        }

        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = "Setup finalized";
        goto LABEL_63;
      case 30:

        if (!a2)
        {
          v154 = 0u;
          v155 = 0u;
          sub_10000EBA4(&v154, &qword_1001036C0, &unk_1000BEE90);
          goto LABEL_136;
        }

        AnyHashable.init<A>(_:)();
        if (*(a2 + 16) && (v36 = sub_100053B3C(&v152), (v37 & 1) != 0))
        {
          sub_10000EA58(*(a2 + 56) + 32 * v36, &v154);
          sub_10000EA04(&v152);
          if (*(&v155 + 1))
          {
            if (swift_dynamicCast())
            {
              v38 = v153;
              v39 = (*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSSID);
              v40 = v39[1];
              *v39 = v152;
              v39[1] = v38;
            }

            goto LABEL_117;
          }
        }

        else
        {
          sub_10000EA04(&v152);
          v154 = 0u;
          v155 = 0u;
        }

        sub_10000EBA4(&v154, &qword_1001036C0, &unk_1000BEE90);
LABEL_117:
        AnyHashable.init<A>(_:)();
        if (*(a2 + 16))
        {
          v99 = sub_100053B3C(&v152);
          if (v100)
          {
            sub_10000EA58(*(a2 + 56) + 32 * v99, &v154);
            sub_10000EA04(&v152);
            if (*(&v155 + 1))
            {
              sub_10003AE18(0, &qword_100104E08, NSError_ptr);
              if ((swift_dynamicCast() & 1) == 0)
              {
                return;
              }

              v101 = v10;
              v102 = v152;
              v103 = *(v3 + 16);
              *(v3 + 16) = v152;
              v104 = v102;

              v105 = v104;
              v106 = Logger.logObject.getter();
              v107 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v106, v107))
              {
                v108 = swift_slowAlloc();
                v109 = swift_slowAlloc();
                *v108 = 138412290;
                *(v108 + 4) = v105;
                *v109 = v102;
                v110 = v105;
                _os_log_impl(&_mh_execute_header, v106, v107, "### Setup failed: %@", v108, 0xCu);
                sub_10000EBA4(v109, &qword_100101E38, &unk_1000BCF80);
              }

              v111 = v105;
              v112 = _convertErrorToNSError(_:)();

              v113 = NSErrorToOSStatus();
              AnyHashable.init<A>(_:)();
              if (*(a2 + 16) && (v114 = sub_100053B3C(&v152), (v115 & 1) != 0))
              {
                sub_10000EA58(*(a2 + 56) + 32 * v114, &v154);
                sub_10000EA04(&v152);
                if (*(&v155 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v149 = v152;
                    v151 = v3;
                    Strong = swift_unknownObjectWeakLoadStrong();
                    if (!Strong)
                    {

LABEL_169:
                      *(v151 + 164) = v113;
                      return;
                    }

                    v117 = Strong;
                    v147 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed;
                    if (*(Strong + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed) == 1)
                    {
                      if (qword_1001016D0 != -1)
                      {
                        swift_once();
                      }

                      sub_100012AAC(v101, qword_100103DD0);
                      v118 = Logger.logObject.getter();
                      v119 = static os_log_type_t.debug.getter();
                      if (os_log_type_enabled(v118, v119))
                      {
                        v120 = swift_slowAlloc();
                        *v120 = 67109120;
                        *(v120 + 4) = v113;
                        _os_log_impl(&_mh_execute_header, v118, v119, "HomePodSetupPresenter: didUpdateStatus called with a new status %d after final screen.", v120, 8u);
                      }

                      goto LABEL_168;
                    }

                    if (qword_1001016D0 != -1)
                    {
                      swift_once();
                    }

                    sub_100012AAC(v101, qword_100103DD0);
                    v135 = Logger.logObject.getter();
                    v136 = static os_log_type_t.default.getter();
                    if (os_log_type_enabled(v135, v136))
                    {
                      v137 = swift_slowAlloc();
                      v138 = swift_slowAlloc();
                      v152 = v138;
                      *v137 = 67109378;
                      *(v137 + 4) = v113;
                      *(v137 + 8) = 2080;
                      *(v137 + 10) = sub_1000B08A0(1702195828, 0xE400000000000000, &v152);
                      _os_log_impl(&_mh_execute_header, v135, v136, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: Interactor called with a new status %d and final: %s", v137, 0x12u);
                      sub_10000E70C(v138);
                    }

                    v139 = *(v151 + 48);
                    *(v139 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status) = v113;
                    v140 = *(v139 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error);
                    *(v139 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error) = v102;
                    v118 = v111;

                    if (v149 == 1)
                    {
                      AnyHashable.init<A>(_:)();
                      if (*(a2 + 16) && (v141 = sub_100053B3C(&v152), (v142 & 1) != 0))
                      {
                        sub_10000EA58(*(a2 + 56) + 32 * v141, &v154);
                        sub_10000EA04(&v152);
                        if (*(&v155 + 1))
                        {
                          if (swift_dynamicCast())
                          {
                            v143 = v153;
                            v144 = (*(v151 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_errorSSID);
                            v145 = v144[1];
                            *v144 = v152;
                            v144[1] = v143;
                          }

                          goto LABEL_167;
                        }
                      }

                      else
                      {
                        sub_10000EA04(&v152);
                        v154 = 0u;
                        v155 = 0u;
                      }

                      sub_10000EBA4(&v154, &qword_1001036C0, &unk_1000BEE90);
                    }

LABEL_167:
                    *(*(v151 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_errorCardType) = v149;
                    *(v117 + v147) = 1;
                    v146 = sub_100081B50(v113);
                    sub_10007E65C(v146);
LABEL_168:

                    swift_unknownObjectRelease();
                    goto LABEL_169;
                  }

LABEL_140:
                  v121 = swift_unknownObjectWeakLoadStrong();
                  if (v121)
                  {
                    v122 = v121;
                    v123 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed;
                    if (*(v121 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed) == 1)
                    {
                      if (qword_1001016D0 != -1)
                      {
                        swift_once();
                      }

                      sub_100012AAC(v101, qword_100103DD0);
                      v124 = Logger.logObject.getter();
                      v125 = static os_log_type_t.debug.getter();
                      if (os_log_type_enabled(v124, v125))
                      {
                        v126 = swift_slowAlloc();
                        *v126 = 67109120;
                        *(v126 + 4) = v113;
                        _os_log_impl(&_mh_execute_header, v124, v125, "HomePodSetupPresenter: didUpdateStatus called with a new status %d after final screen.", v126, 8u);
                      }
                    }

                    else
                    {
                      if (qword_1001016D0 != -1)
                      {
                        swift_once();
                      }

                      sub_100012AAC(v101, qword_100103DD0);
                      v127 = Logger.logObject.getter();
                      v128 = static os_log_type_t.default.getter();
                      if (os_log_type_enabled(v127, v128))
                      {
                        v129 = swift_slowAlloc();
                        v130 = v3;
                        v131 = swift_slowAlloc();
                        v152 = v131;
                        *v129 = 67109378;
                        *(v129 + 4) = v113;
                        *(v129 + 8) = 2080;
                        *(v129 + 10) = sub_1000B08A0(1702195828, 0xE400000000000000, &v152);
                        _os_log_impl(&_mh_execute_header, v127, v128, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: Interactor called with a new status %d and final: %s", v129, 0x12u);
                        sub_10000E70C(v131);
                        v3 = v130;
                      }

                      v132 = *(v3 + 48);
                      *(v132 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status) = v113;
                      v133 = *(v132 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error);
                      *(v132 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error) = v102;
                      v124 = v111;

                      *(v122 + v123) = 1;
                      v134 = sub_100081B50(v113);
                      sub_10007E65C(v134);
                    }

                    swift_unknownObjectRelease();
                    *(v3 + 164) = v113;
                  }

                  else
                  {

                    *(v3 + 164) = v113;
                  }

                  return;
                }
              }

              else
              {
                sub_10000EA04(&v152);
                v154 = 0u;
                v155 = 0u;
              }

              sub_10000EBA4(&v154, &qword_1001036C0, &unk_1000BEE90);
              goto LABEL_140;
            }

LABEL_137:
            sub_10000EBA4(&v154, &qword_1001036C0, &unk_1000BEE90);
            return;
          }
        }

        sub_10000EA04(&v152);
LABEL_136:
        v154 = 0u;
        v155 = 0u;
        goto LABEL_137;
      case 40:
      case 60:
      case 124:
        goto LABEL_34;
      case 50:
        v28 = [*(v3 + 80) homePodProductVersion] - 1;
        if (v28 <= 3)
        {
          v29 = (&off_1000F2AE8)[v28];
        }

        v61 = String.init(cString:)();
        v63 = v62;
        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = v3;
          v68 = swift_slowAlloc();
          v152 = v68;
          *v66 = 136315138;
          v69 = sub_1000B08A0(v61, v63, &v152);

          *(v66 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v64, v65, "HomePodSetupInteractor sessionHandleProgress: setting homePodProductVersion = %s", v66, 0xCu);
          sub_10000E70C(v68);
          v3 = v67;
        }

        else
        {
        }

        v70 = *(v3 + 48);
        v71 = *(v3 + 80);

        v72 = [v71 homePodProductVersion];
        *(v70 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_homePodProductVersion) = v72;

        v73 = Logger.logObject.getter();
        v74 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 67109120;
          *(v75 + 4) = [*(v3 + 80) forceSoftwareUpdateForADP];

          _os_log_impl(&_mh_execute_header, v73, v74, "HomePodSetupInteractor sessionHandleProgress: setting forcedADPSoftwareUpdate = %{BOOL}d", v75, 8u);
        }

        else
        {
        }

        v76 = *(v3 + 48);
        v77 = *(v3 + 80);

        v78 = [v77 forceSoftwareUpdateForADP];
        *(v76 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_forcedADPSoftwareUpdate) = v78;

        return;
      case 55:

        if (!swift_unknownObjectWeakLoadStrong())
        {
          return;
        }

        v27 = 18;
        goto LABEL_76;
      case 70:

        *(v3 + 56) = 1;
        return;
      case 80:

        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 67109120;
          *(v51 + 4) = [*(v3 + 80) userOptedToHH2];

          _os_log_impl(&_mh_execute_header, v49, v50, "HomePodSetupInteractor sessionHandleProgress: setting homePodProductVersion = %{BOOL}d", v51, 8u);
        }

        else
        {
        }

        v79 = *(v3 + 48);
        v80 = *(v3 + 80);

        v81 = [v80 userOptedToHH2];
        *(v79 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_isHomeInHH2) = v81;

        v82 = [*(v3 + 80) homePodSUState];
        if (v82 <= 3)
        {
          v83 = (&off_1000F2B08)[v82];
        }

        v84 = String.init(cString:)();
        v86 = v85;
        v87 = [*(v3 + 80) homePodProductVersion];

        v88 = Logger.logObject.getter();
        v89 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = v3;
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v152 = v92;
          *v91 = 136315138;
          v93 = sub_1000B08A0(v84, v86, &v152);

          *(v91 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v88, v89, "HomePodSetupInteractor sessionHandleProgress: setting showHomepodSoftwareUpdate = %s", v91, 0xCu);
          sub_10000E70C(v92);

          v3 = v90;
        }

        else
        {
        }

        *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_showHomepodSoftwareUpdate) = v87 == 1;

        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v152 = v97;
          *v96 = 136315138;
          v98 = sub_1000B08A0(v150, v7, &v152);

          *(v96 + 4) = v98;
          _os_log_impl(&_mh_execute_header, v94, v95, "HomePodSetupInteractor sessionHandleProgress: setting up event = %s", v96, 0xCu);
          sub_10000E70C(v97);
        }

        else
        {
        }

        v17 = 80;
        goto LABEL_39;
      case 96:

        v41 = [*(v3 + 80) bonjourTestState];
        *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_bonjourTestState) = v41;
        v42 = [*(v3 + 80) siriDataSharingEnabled];
        *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_siriDataSharingEnabled) = v42;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v32, v33))
        {
          goto LABEL_64;
        }

        v34 = swift_slowAlloc();
        *v34 = 0;
        v35 = "Setup completed";
LABEL_63:
        _os_log_impl(&_mh_execute_header, v32, v33, v35, v34, 2u);

LABEL_64:

        v43 = swift_unknownObjectWeakLoadStrong();
        if (v43)
        {
          v44 = v43;
          v45 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed;
          if (*(v43 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_finalScreenOfSetupFlowDisplayed) == 1)
          {
            if (qword_1001016D0 != -1)
            {
              swift_once();
            }

            sub_100012AAC(v10, qword_100103DD0);
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              *v48 = 67109120;
              _os_log_impl(&_mh_execute_header, v46, v47, "HomePodSetupPresenter: didUpdateStatus called with a new status %d after final screen.", v48, 8u);
            }

            swift_unknownObjectRelease();
          }

          else
          {
            if (qword_1001016D0 != -1)
            {
              swift_once();
            }

            sub_100012AAC(v10, qword_100103DD0);
            v52 = Logger.logObject.getter();
            v53 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v52, v53))
            {
              v54 = swift_slowAlloc();
              v55 = swift_slowAlloc();
              v152 = v55;
              *v54 = 67109378;
              *(v54 + 8) = 2080;
              *(v54 + 10) = sub_1000B08A0(1702195828, 0xE400000000000000, &v152);
              _os_log_impl(&_mh_execute_header, v52, v53, "<loom:ViewService:matchHomePodSetupPresenterProgress> HomePodSetupPresenter: Interactor called with a new status %d and final: %s", v54, 0x12u);
              sub_10000E70C(v55);
            }

            v56 = *(v3 + 48);
            *(v56 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_status) = 0;
            v57 = *(v56 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error);
            *(v56 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error) = 0;

            *(v44 + v45) = 1;
            v58 = *(*(v44 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48);

            v59 = sub_10004B0F0();

            if (v59)
            {
              v60 = 52;
            }

            else
            {
              v60 = 49;
            }

            sub_10007E65C(v60);
            swift_unknownObjectRelease();
          }
        }

        sub_1000AED38();
        return;
      case 120:
      case 122:
        goto LABEL_18;
      case 140:

        if (!swift_unknownObjectWeakLoadStrong())
        {
          return;
        }

        v27 = 25;
        goto LABEL_76;
      case 150:

        if (!swift_unknownObjectWeakLoadStrong())
        {
          return;
        }

        v27 = 12;
LABEL_76:
        sub_10007E65C(v27);
        goto LABEL_77;
      default:
        goto LABEL_24;
    }
  }

  if (a1 > 900)
  {
    if (a1 > 908)
    {
      if ((a1 - 912) < 2)
      {
        goto LABEL_34;
      }

      if (a1 == 909)
      {

        v18 = "HomePodSetupInteractor: updateProgressForSysDropRPFileTransferProgress event:%u";
        v19 = sub_1000B3164;
        v20 = 909;
      }

      else
      {
        if (a1 != 910)
        {
          goto LABEL_24;
        }

        v18 = "HomePodSetupInteractor: updateProgressForSysDropRPFileTransferProgress event:%u";
        v19 = sub_1000B3164;
        v20 = 910;
      }
    }

    else if (a1 <= 905)
    {
      if (a1 != 901 && a1 != 905)
      {
        goto LABEL_24;
      }

      v18 = "HomePodSetupInteractor: updateProgressForHomePodSU event:%u";
      v19 = sub_1000B2350;
      v20 = a1;
    }

    else if (a1 == 906)
    {

      v18 = "HomePodSetupInteractor: updateProgressForSysDropAirDrop event:%u";
      v19 = sub_1000B27AC;
      v20 = 906;
    }

    else
    {
      if (a1 != 907)
      {
        goto LABEL_24;
      }

      v18 = "HomePodSetupInteractor: updateProgressForSysDropSysdiagnose event:%u";
      v19 = sub_1000B2D1C;
      v20 = 907;
    }

    sub_1000AEF40(v20, a2, v18, v19);
    return;
  }

  if (a1 <= 499)
  {
    v14 = (a1 - 200);
    if (v14 <= 0x32)
    {
      if (((1 << (a1 + 56)) & 0x400100401) == 0)
      {
        if (v14 != 30)
        {
          if (v14 == 50)
          {

            v15 = [*(v3 + 80) bonjourTestState];
            *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_bonjourTestState) = v15;
            v16 = [*(v3 + 80) siriDataSharingEnabled];
            *(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_siriDataSharingEnabled) = v16;
            v17 = 250;
LABEL_39:

            sub_1000AEE04(v17);
            return;
          }

          goto LABEL_24;
        }

LABEL_18:

        if (*(*(v3 + 48) + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressDetail) != 1)
        {
          return;
        }

LABEL_38:
        v17 = a1;
        goto LABEL_39;
      }

LABEL_34:

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v152 = v24;
        *v23 = 136315138;
        v25 = sub_1000B08A0(v150, v7, &v152);

        *(v23 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupInteractor sessionHandleProgress: setting up event = %s", v23, 0xCu);
        sub_10000E70C(v24);
      }

      else
      {
      }

      goto LABEL_38;
    }

LABEL_24:

    return;
  }

  if (a1 != 500 && a1 != 510)
  {
    if (a1 == 900)
    {
      goto LABEL_34;
    }

    goto LABEL_24;
  }

  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    sub_100081FB0(v3, a1, a2, v26);
LABEL_77:

    swift_unknownObjectRelease();
  }
}