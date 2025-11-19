id sub_1001820CC(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10018212C()
{
  v0 = sub_10014EA98(&qword_1003AAA90);
  __chkstk_darwin(v0 - 8, v1);
  v3 = &v24 - v2;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.filled()();
  (*(v5 + 104))(v8, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  UIButton.Configuration.cornerStyle.setter();
  UIButton.Configuration.contentInsets.setter();
  v14 = objc_opt_self();
  v15 = [v14 systemWhiteColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v16 = [v14 systemBlackColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000064BC(0, &qword_1003AAA98);
  sub_1001FFAD8();
  UIButton.Configuration.image.setter();
  v17 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v18 = [objc_opt_self() buttonWithType:1];
  (*(v10 + 16))(v3, v13, v9);
  sub_100006848(v3, 0, 1, v9);
  UIButton.configuration.setter();
  v19 = v18;
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = v19;
  v21 = sub_1001FD1F8(0x49565F4553554150, 0xEB000000004F4544);
  sub_1001E56EC(v21, v22, v20);

  [v20 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  (*(v10 + 8))(v13, v9);
  return v20;
}

id sub_100182494()
{
  v0 = [objc_allocWithZone(UILabel) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() systemFontOfSize:20.0];
  [v0 setFont:v1];

  [v0 setNumberOfLines:0];
  [v0 setTextAlignment:1];
  v2 = objc_opt_self();
  v3 = [v2 dynamicLabelColor];
  [v0 setTextColor:v3];

  v4 = [v2 clearColor];
  [v0 setBackgroundColor:v4];

  return v0;
}

id sub_1001825D0()
{
  v0 = [objc_opt_self() effectWithStyle:1];
  v1 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v0];

  v2 = v1;
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v2 layer];
  [v3 setCornerRadius:10.0];

  v4 = [v2 layer];
  [v4 setMasksToBounds:1];

  return v2;
}

id sub_1001826BC()
{
  v0 = [objc_allocWithZone(UIView) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() darkGrayColor];
  [v0 setBackgroundColor:v1];

  return v0;
}

id sub_100182744()
{
  sub_1000064BC(0, &qword_1003AAA98);
  v0 = [objc_opt_self() configurationWithScale:3];
  v1 = sub_100182884(0xD00000000000001DLL, 0x80000001002A78B0, v0);
  v2 = [objc_allocWithZone(UIImageView) initWithImage:v1];

  v3 = v2;
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  v5 = [v4 darkGrayColor];
  [v3 setBackgroundColor:v5];

  v6 = [v4 whiteColor];
  [v3 setTintColor:v6];

  return v3;
}

id sub_100182884(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

void sub_1001828F4()
{
  sub_100005D28();
  v1 = v0;
  v77 = v2;
  v75 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v75 - 8);
  __chkstk_darwin(v75, v4);
  sub_100005BD0();
  v7 = v6 - v5;
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8, v9);
  sub_100005BD0();
  v10 = type metadata accessor for DispatchQoS();
  v11 = sub_100005568(v10);
  __chkstk_darwin(v11, v12);
  sub_100005BD0();
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR___EmergencyWebRTCViewController_shouldHideControls] = 0;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_webViewEventsHelper] = 0;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_currentState] = 0;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView] = 0;
  v76 = OBJC_IVAR___EmergencyWebRTCViewController_videoStreamingRequest;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_videoStreamingRequest] = 0;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_actionButtonsWaitingView] = 0;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_avCaptureDevice] = 0;
  v74 = OBJC_IVAR___EmergencyWebRTCViewController_avCaptureQueue;
  sub_1000064BC(0, &qword_1003AAAB0);
  static DispatchQoS.unspecified.getter();
  *&v81 = &_swiftEmptyArrayStorage;
  sub_100190714();
  sub_100190500(v13, v14);
  sub_10014EA98(&qword_1003ABA10);
  sub_10018FB38();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v75);
  *&v0[v74] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = OBJC_IVAR___EmergencyWebRTCViewController_zoomStateMachine;
  v16 = objc_allocWithZone(type metadata accessor for ZoomStateMachine());
  *&v0[v15] = sub_10003444C();
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBottomAnchor] = 0;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonRTTBottomAnchor] = 0;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_webViewRTCViewControllerWaitingStataTopAnchor] = 0;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_lastZoomFactor] = 0x3FF0000000000000;
  v0[OBJC_IVAR___EmergencyWebRTCViewController_hasPendingStartVideoPreviewRequest] = 0;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_appliedFrameRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_appliedBitRate] = 0xBFF0000000000000;
  v0[OBJC_IVAR___EmergencyWebRTCViewController_showWebRTCQualityLabel] = 0;
  v17 = OBJC_IVAR___EmergencyWebRTCViewController_waitingStateTitlelabel;
  sub_100190A40("SHARE_LIVE_VIDEO_TITLE");
  v18 = objc_allocWithZone(type metadata accessor for EEWaitingStateTitleLabel());
  sub_1001909F0();
  *&v0[v17] = EEWaitingStateTitleLabel.init(titleString:)();
  v19 = OBJC_IVAR___EmergencyWebRTCViewController_waitingStateSubtitlelabel;
  sub_1001FD1F8(0xD000000000000019, 0x80000001002A7860);
  v20 = objc_allocWithZone(type metadata accessor for EEWaitingStateSubtitleLabel());
  sub_1001909F0();
  *&v0[v19] = EEWaitingStateSubtitleLabel.init(titleString:)();
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___liveLabel] = 0;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___callNumberLabel] = 0;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___webRTCQualityLabel] = 0;
  v21 = OBJC_IVAR___EmergencyWebRTCViewController_flashButton;
  *&v0[v21] = sub_100180990();
  v22 = OBJC_IVAR___EmergencyWebRTCViewController_flashButtonBackdropView;
  v23 = type metadata accessor for ButtonBackgroundViewEffectView();
  v24 = [objc_allocWithZone(v23) init];
  [v24 setUserInteractionEnabled:0];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v1[v22] = v24;
  v25 = OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonBackdropView;
  v26 = [objc_allocWithZone(v23) init];
  [v26 setUserInteractionEnabled:0];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v1[v25] = v26;
  v27 = OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBackdropView;
  v28 = [objc_allocWithZone(v23) init];
  [v28 setUserInteractionEnabled:0];
  sub_100190920();

  *&v1[v27] = v28;
  v29 = OBJC_IVAR___EmergencyWebRTCViewController_zoomButton;
  *&v1[v29] = sub_100180CC4();
  v30 = OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton;
  *&v1[v30] = sub_100181128();
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttAudioRouteButton] = 0;
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttCallControlsButton] = 0;
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttVideoButton] = 0;
  v31 = OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel;
  *&v1[v31] = sub_100182494();
  v32 = OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView;
  *&v1[v32] = sub_1001825D0();
  v33 = OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView;
  *&v1[v33] = sub_1001826BC();
  v34 = OBJC_IVAR___EmergencyWebRTCViewController_exclamationImageView;
  *&v1[v34] = sub_100182744();
  v35 = OBJC_IVAR___EmergencyWebRTCViewController_titleLabelScrollView;
  v36 = objc_allocWithZone(UIScrollView);
  v37 = sub_1001908F0();
  sub_100190824([v38 v39]);
  *&v1[v35] = v28;
  v40 = OBJC_IVAR___EmergencyWebRTCViewController_titleLabelScrollViewContentView;
  sub_100190824([objc_allocWithZone(UIView) init]);
  *&v1[v40] = v28;
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController_viewControllerWaitingStateHeightConstraint] = 0;
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWaitingStateTopConstraint] = 0;
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWaitingStateTrailingConstraint] = 0;
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonSharingStateBottomConstraint] = 0;
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonSharingStateTrailingConstraint] = 0;
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWidthConstraint] = 0;
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonWidthConstraint] = 0;
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController_flashButtonWidthConstraint] = 0;
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController_webViewWaitingStateConstraints] = &_swiftEmptyArrayStorage;
  v41 = *&v1[v76];
  *&v1[v76] = v77;
  v42 = v77;

  v43 = type metadata accessor for EmergencyWebRTCViewController();
  v83.receiver = v1;
  v83.super_class = v43;
  v44 = objc_msgSendSuper2(&v83, "initWithNibName:bundle:", 0, 0);
  v45 = qword_1003A9F40;
  v46 = v44;
  if (v45 != -1)
  {
    sub_10000755C();
  }

  v47 = type metadata accessor for Logger();
  sub_100008A14(v47, &unk_1003B8820);
  v48 = v42;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = sub_100190988();
    v52 = swift_slowAlloc();
    *v51 = 138412546;
    *(v51 + 4) = v46;
    *(v51 + 12) = 2112;
    *(v51 + 14) = v48;
    *v52 = v46;
    v52[1] = v77;
    v53 = v48;
    v54 = v46;
    _os_log_impl(&_mh_execute_header, v49, v50, "EnhancedEmergency: created EmergencyWebRTCViewController: %@, videoStreamingRequest: %@", v51, 0x16u);
    sub_10014EA98(&qword_1003B0230);
    swift_arrayDestroy();
    sub_100005BB8();
    sub_1000053DC();
  }

  v55 = [objc_allocWithZone(type metadata accessor for PHSOSUIWebViewEventsHelper()) init];
  *&v55[OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF126PHSOSUIWebViewEventsHelper_delegate + 8] = &off_10035C3B0;
  swift_unknownObjectWeakAssign();
  v56 = *&v46[OBJC_IVAR___EmergencyWebRTCViewController_webViewEventsHelper];
  *&v46[OBJC_IVAR___EmergencyWebRTCViewController_webViewEventsHelper] = v55;
  v57 = v46;
  v58 = v55;

  v59 = objc_allocWithZone(type metadata accessor for SOSUIWebRTCView());
  v60 = v58;
  sub_1001908F0();
  v61 = SOSUIWebRTCView.init(frame:delegate:)();
  v62 = OBJC_IVAR___EmergencyWebRTCViewController_webRTCView;
  v63 = *&v57[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  *&v57[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView] = v61;

  v64 = objc_allocWithZone(type metadata accessor for EmergencyActionButtonsWaitingView());
  v65 = sub_100009598();
  v66 = sub_1001E41C0(v65);
  v67 = *&v57[OBJC_IVAR___EmergencyWebRTCViewController_actionButtonsWaitingView];
  *&v57[OBJC_IVAR___EmergencyWebRTCViewController_actionButtonsWaitingView] = v66;

  *(&v82 + 1) = v43;
  *&v81 = v57;
  v68 = objc_allocWithZone(UIPinchGestureRecognizer);
  v69 = sub_10018F91C(&v81, "pinch:");
  v70 = *&v57[v62];
  if (v70)
  {
    [v70 addGestureRecognizer:v69];
  }

  v71 = String._bridgeToObjectiveC()();
  v72 = String._bridgeToObjectiveC()();
  v73 = PHPreferencesGetValueInDomain();

  if (v73)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {

    v79 = 0u;
    v80 = 0u;
  }

  v81 = v79;
  v82 = v80;
  if (*(&v80 + 1))
  {
    if (swift_dynamicCast())
    {
      v57[OBJC_IVAR___EmergencyWebRTCViewController_showWebRTCQualityLabel] = v78;
    }
  }

  else
  {

    sub_1000306A4(&v81, &unk_1003AAF50);
  }

  sub_100007B28();
}

void sub_100183248()
{
  sub_100005D28();
  v1 = v0;
  v41 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41, v3);
  sub_100005BD0();
  v6 = v5 - v4;
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7, v8);
  sub_100005BD0();
  v9 = type metadata accessor for DispatchQoS();
  v10 = sub_100005568(v9);
  __chkstk_darwin(v10, v11);
  sub_100005BD0();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_shouldHideControls) = 0;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_webViewEventsHelper) = 0;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_currentState) = 0;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_webRTCView) = 0;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_videoStreamingRequest) = 0;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_actionButtonsWaitingView) = 0;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_avCaptureDevice) = 0;
  v40 = OBJC_IVAR___EmergencyWebRTCViewController_avCaptureQueue;
  sub_1000064BC(0, &qword_1003AAAB0);
  static DispatchQoS.unspecified.getter();
  sub_100190714();
  sub_100190500(v12, v13);
  sub_10014EA98(&qword_1003ABA10);
  sub_10018FB38();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v41);
  *(v0 + v40) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = OBJC_IVAR___EmergencyWebRTCViewController_zoomStateMachine;
  v15 = objc_allocWithZone(type metadata accessor for ZoomStateMachine());
  *(v0 + v14) = sub_10003444C();
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBottomAnchor) = 0;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonRTTBottomAnchor) = 0;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_webViewRTCViewControllerWaitingStataTopAnchor) = 0;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_lastZoomFactor) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_hasPendingStartVideoPreviewRequest) = 0;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_appliedFrameRate) = 0xBFF0000000000000;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_appliedBitRate) = 0xBFF0000000000000;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_showWebRTCQualityLabel) = 0;
  v16 = OBJC_IVAR___EmergencyWebRTCViewController_waitingStateTitlelabel;
  sub_100190A40("SHARE_LIVE_VIDEO_TITLE");
  v17 = objc_allocWithZone(type metadata accessor for EEWaitingStateTitleLabel());
  *(v0 + v16) = EEWaitingStateTitleLabel.init(titleString:)();
  v18 = OBJC_IVAR___EmergencyWebRTCViewController_waitingStateSubtitlelabel;
  sub_1001FD1F8(0xD000000000000019, 0x80000001002A7860);
  v19 = objc_allocWithZone(type metadata accessor for EEWaitingStateSubtitleLabel());
  *(v0 + v18) = EEWaitingStateSubtitleLabel.init(titleString:)();
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___liveLabel) = 0;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___callNumberLabel) = 0;
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___webRTCQualityLabel) = 0;
  v20 = OBJC_IVAR___EmergencyWebRTCViewController_flashButton;
  *(v1 + v20) = sub_100180990();
  v21 = OBJC_IVAR___EmergencyWebRTCViewController_flashButtonBackdropView;
  v22 = type metadata accessor for ButtonBackgroundViewEffectView();
  v23 = [objc_allocWithZone(v22) init];
  [v23 setUserInteractionEnabled:0];
  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v21) = v23;
  v24 = OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonBackdropView;
  v25 = [objc_allocWithZone(v22) init];
  [v25 setUserInteractionEnabled:0];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v1 + v24) = v25;
  v26 = OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBackdropView;
  v27 = [objc_allocWithZone(v22) init];
  [v27 setUserInteractionEnabled:0];
  sub_100190920();

  *(v1 + v26) = v27;
  v28 = OBJC_IVAR___EmergencyWebRTCViewController_zoomButton;
  *(v1 + v28) = sub_100180CC4();
  v29 = OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton;
  *(v1 + v29) = sub_100181128();
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttAudioRouteButton) = 0;
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttCallControlsButton) = 0;
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___rttVideoButton) = 0;
  v30 = OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel;
  *(v1 + v30) = sub_100182494();
  v31 = OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView;
  *(v1 + v31) = sub_1001825D0();
  v32 = OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView;
  *(v1 + v32) = sub_1001826BC();
  v33 = OBJC_IVAR___EmergencyWebRTCViewController_exclamationImageView;
  *(v1 + v33) = sub_100182744();
  v34 = OBJC_IVAR___EmergencyWebRTCViewController_titleLabelScrollView;
  v35 = objc_allocWithZone(UIScrollView);
  v36 = sub_1001908F0();
  sub_100190824([v37 v38]);
  *(v1 + v34) = v33;
  v39 = OBJC_IVAR___EmergencyWebRTCViewController_titleLabelScrollViewContentView;
  sub_100190824([objc_allocWithZone(UIView) init]);
  *(v1 + v39) = v33;
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_viewControllerWaitingStateHeightConstraint) = 0;
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWaitingStateTopConstraint) = 0;
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWaitingStateTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonSharingStateBottomConstraint) = 0;
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonSharingStateTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWidthConstraint) = 0;
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonWidthConstraint) = 0;
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_flashButtonWidthConstraint) = 0;
  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_webViewWaitingStateConstraints) = &_swiftEmptyArrayStorage;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100183948(char a1)
{
  v2 = v1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for EmergencyWebRTCViewController();
  objc_msgSendSuper2(&v13, "viewDidAppear:", a1 & 1);
  v4 = OBJC_IVAR___EmergencyWebRTCViewController_hasPendingStartVideoPreviewRequest;
  if (*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_hasPendingStartVideoPreviewRequest) == 1)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v5 = type metadata accessor for Logger();
    sub_1000058D0(v5, &unk_1003B8820);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (sub_100005908(v7))
    {
      v8 = sub_100005924();
      sub_10000539C(v8);
      sub_100007B68();
      sub_10019093C(v9, v10, v11, v12);
      sub_10000558C();
    }

    *(v2 + v4) = 0;
    sub_100189284();
  }
}

id sub_100183A84(uint64_t a1)
{
  v3 = v1;
  v45.receiver = v3;
  v45.super_class = type metadata accessor for EmergencyWebRTCViewController();
  objc_msgSendSuper2(&v45, "traitCollectionDidChange:", a1);
  v5 = OBJC_IVAR___EmergencyWebRTCViewController_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = [Strong videoStreamingState];
    swift_unknownObjectRelease();
    if (v7 == 1)
    {
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v8 = type metadata accessor for Logger();
      sub_1000058D0(v8, &unk_1003B8820);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (sub_100005908(v10))
      {
        v11 = sub_100005924();
        sub_10000539C(v11);
        sub_100007B68();
        sub_10019093C(v12, v13, v14, v15);
        sub_10000558C();
      }

      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        [v16 requestToReorderWebView];
        swift_unknownObjectRelease();
      }
    }
  }

  v17 = [v3 traitCollection];
  v18 = [v17 preferredContentSizeCategory];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000C15C();
  sub_100009D24();
  v20 = v20 && v2 == v19;
  if (v20)
  {
    goto LABEL_41;
  }

  sub_100025A9C();
  sub_100190840();

  if ((v5 & 1) == 0)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10000C15C();
    sub_100009D24();
    if (!v20 || v2 != v21)
    {
      sub_100025A9C();
      sub_100190840();

      if (v5)
      {
        goto LABEL_14;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_10000C15C();
      sub_100009D24();
      if (!v20 || v2 != v23)
      {
        sub_100025A9C();
        sub_100190840();

        if (v5)
        {
          goto LABEL_14;
        }

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_10000C15C();
        sub_100009D24();
        if (!v20 || v2 != v25)
        {
          sub_100025A9C();
          sub_100190840();

          if (v5)
          {
            goto LABEL_14;
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_10000C15C();
          sub_100009D24();
          if (!v20 || v2 != v27)
          {
            sub_100025A9C();
            sub_100190840();

            if (v5)
            {
              goto LABEL_14;
            }

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_10000C15C();
            sub_100009D24();
            if (v20 && v2 == v29)
            {

              goto LABEL_45;
            }

            sub_100025A9C();
            sub_100190840();

            if (v5)
            {

LABEL_45:
              v31 = 59.4;
              v32 = 45.9;
              goto LABEL_43;
            }

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_10000C15C();
            sub_100009D24();
            if (v20 && v2 == v35)
            {

              goto LABEL_53;
            }

            sub_100025A9C();
            sub_100190840();

            if (v5)
            {

LABEL_53:
              v31 = 54.56;
              v32 = 42.16;
              goto LABEL_43;
            }

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_10000C15C();
            sub_100009D24();
            if (v20 && v2 == v37)
            {

              goto LABEL_61;
            }

            sub_100025A9C();
            sub_100190840();

            if (v5)
            {

LABEL_61:
              v31 = 49.28;
              v32 = 38.08;
              goto LABEL_43;
            }

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_10000C15C();
            sub_100009D24();
            if (!v20 || v2 != v39)
            {
              sub_100025A9C();
              sub_100190840();

              if (v5)
              {
LABEL_67:

LABEL_80:
                v31 = 44.0;
                v32 = 34.0;
                goto LABEL_43;
              }

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_10000C15C();
              sub_100009D24();
              if (!v20 || v2 != v41)
              {
                sub_100025A9C();
                sub_100190840();

                if (v5)
                {
                  goto LABEL_67;
                }

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                sub_10000C15C();
                sub_100009D24();
                if (!v20 || v2 != v43)
                {
                  sub_100025A9C();
                  sub_100190840();

                  if ((v5 & 1) == 0)
                  {
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                    static String._unconditionallyBridgeFromObjectiveC(_:)();
                  }

                  goto LABEL_67;
                }
              }
            }

            goto LABEL_80;
          }
        }
      }
    }

LABEL_41:

    goto LABEL_42;
  }

LABEL_14:

LABEL_42:
  v31 = 66.0;
  v32 = 51.0;
LABEL_43:
  [*&v3[OBJC_IVAR___EmergencyWebRTCViewController_flashButtonWidthConstraint] setConstant:v31];
  [*&v3[OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonWidthConstraint] setConstant:v32];
  [*&v3[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWidthConstraint] setConstant:v31];
  [*&v3[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton] layoutIfNeeded];
  [*&v3[OBJC_IVAR___EmergencyWebRTCViewController_zoomButton] layoutIfNeeded];
  [*&v3[OBJC_IVAR___EmergencyWebRTCViewController_flashButton] layoutIfNeeded];
  v33 = v31 * 0.5;
  [*&v3[OBJC_IVAR___EmergencyWebRTCViewController_flashButtonBackdropView] _setCornerRadius:v33];
  [*&v3[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonBackdropView] _setCornerRadius:v33];
  return [*&v3[OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBackdropView] _setCornerRadius:v32 * 0.5];
}

void sub_100184098()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 frontmostAudioOrVideoCall];

  v2 = sub_1001808D8();
  if (v1)
  {
    v3 = [v1 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = sub_1001808B8();
  v6 = sub_1001FD1F8(1163282764, 0xE400000000000000);
  sub_10021BFD8(v6, v7, v5);

  v8 = sub_1001808F8();
  sub_10021BFD8(0x202C412F4E3A5246, 0xEE00412F4E3A5242, v8);
}

void sub_10018423C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100190A04();
  v23 = v22;
  v24 = *&v22[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (v24 && (v25 = *&v22[OBJC_IVAR___EmergencyWebRTCViewController_actionButtonsWaitingView]) != 0)
  {
    v26 = v24;
    v100 = v25;
    sub_100190920();
    v27 = [v26 layer];
    [v27 setCornerRadius:10.0];

    v28 = [v26 layer];
    [v28 setMasksToBounds:1];

    v29 = sub_10019080C();
    if (!v29)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v30 = v29;
    [v29 addSubview:v26];

    v31 = OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView;
    v32 = [*&v23[OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView] layer];
    [v32 setCornerRadius:10.0];

    v33 = [*&v23[v31] layer];
    [v33 setMasksToBounds:1];

    v34 = sub_10019080C();
    if (!v34)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v35 = v34;
    [v34 addSubview:*&v23[v31]];

    v36 = v26;
    [v36 setIsAccessibilityElement:1];
    v37 = sub_1001FD1F8(0x4449565F4556494CLL, 0xEF444545465F4F45);
    sub_1001E56EC(v37, v38, v36);

    [v100 setTranslatesAutoresizingMaskIntoConstraints:0];
    swift_unknownObjectWeakAssign();
    v39 = sub_10019080C();
    if (!v39)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v40 = v39;
    [v39 addSubview:v100];

    v41 = sub_10019080C();
    if (!v41)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v42 = v41;
    v43 = OBJC_IVAR___EmergencyWebRTCViewController_flashButton;
    [v41 addSubview:*&v23[OBJC_IVAR___EmergencyWebRTCViewController_flashButton]];

    v44 = OBJC_IVAR___EmergencyWebRTCViewController_flashButtonBackdropView;
    [*&v23[v43] addSubview:*&v23[OBJC_IVAR___EmergencyWebRTCViewController_flashButtonBackdropView]];
    [*&v23[v43] sendSubviewToBack:*&v23[v44]];
    v45 = sub_10019080C();
    if (!v45)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v46 = v45;
    v47 = OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton;
    [v45 addSubview:*&v23[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton]];

    v48 = OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonBackdropView;
    [*&v23[v47] addSubview:*&v23[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonBackdropView]];
    [*&v23[v47] sendSubviewToBack:*&v23[v48]];
    v49 = sub_10019080C();
    if (!v49)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v50 = v49;
    v51 = OBJC_IVAR___EmergencyWebRTCViewController_zoomButton;
    [v49 addSubview:*&v23[OBJC_IVAR___EmergencyWebRTCViewController_zoomButton]];

    v52 = OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBackdropView;
    [*&v23[v51] addSubview:*&v23[OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBackdropView]];
    [*&v23[v51] sendSubviewToBack:*&v23[v52]];
    v53 = sub_10019080C();
    if (!v53)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v54 = v53;
    v99 = OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView;
    [v53 addSubview:*&v23[OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView]];

    v55 = sub_10019080C();
    if (!v55)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v56 = v55;
    v57 = OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel;
    [v55 addSubview:*&v23[OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel]];

    v58 = sub_10019080C();
    if (!v58)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v59 = v58;
    v60 = sub_1001808B8();
    sub_1001907D4(v60);

    v61 = sub_10019080C();
    if (!v61)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v62 = v61;
    v63 = sub_1001808D8();
    sub_1001907D4(v63);

    v64 = sub_10019080C();
    if (!v64)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v65 = v64;
    v66 = sub_1001808F8();
    sub_1001907D4(v66);

    v67 = sub_10019080C();
    if (!v67)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v68 = v67;
    v69 = *&v23[OBJC_IVAR___EmergencyWebRTCViewController_titleLabelScrollView];
    [v67 addSubview:v69];

    v70 = *&v23[OBJC_IVAR___EmergencyWebRTCViewController_titleLabelScrollViewContentView];
    [v69 addSubview:v70];
    [v70 addSubview:*&v23[OBJC_IVAR___EmergencyWebRTCViewController_waitingStateTitlelabel]];
    [v70 addSubview:*&v23[OBJC_IVAR___EmergencyWebRTCViewController_waitingStateSubtitlelabel]];
    sub_1001907F4(*&v23[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___liveLabel]);
    sub_100016FBC(OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___callNumberLabel);
    sub_100016FBC(OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___webRTCQualityLabel);
    sub_1001907F4(*&v23[v43]);
    sub_1001907F4(*&v23[v51]);
    sub_1001907F4(*&v23[v57]);
    sub_100016FBC(v99);
    sub_10019096C(*&v23[v43], v71, v72, "flashButtonTapped");
    sub_10019096C(*&v23[v47], v73, v74, "flipCameraButtonTapped");
    sub_10019096C(*&v23[v51], v75, v76, "zoomButtonTapped");
    v77 = sub_10019080C();
    if (!v77)
    {
LABEL_38:
      __break(1u);
      return;
    }

    v78 = v77;
    v79 = [v77 topAnchor];

    v80 = [v36 topAnchor];
    v81 = [v79 constraintEqualToAnchor:v80];

    v82 = *&v23[OBJC_IVAR___EmergencyWebRTCViewController_viewControllerWaitingStateHeightConstraint];
    *&v23[OBJC_IVAR___EmergencyWebRTCViewController_viewControllerWaitingStateHeightConstraint] = v81;

    v83 = [*&v23[v47] topAnchor];
    v84 = [v36 topAnchor];
    v85 = [v83 constraintEqualToAnchor:v84 constant:10.0];

    v86 = *&v23[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWaitingStateTopConstraint];
    *&v23[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWaitingStateTopConstraint] = v85;

    v87 = [*&v23[v47] trailingAnchor];
    v88 = [v36 trailingAnchor];

    v89 = [v87 constraintEqualToAnchor:v88 constant:-10.0];
    v90 = *&v23[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWaitingStateTrailingConstraint];
    *&v23[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWaitingStateTrailingConstraint] = v89;

    sub_100184C18();
    v91 = v100;
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v92 = type metadata accessor for Logger();
    sub_1000058D0(v92, &unk_1003B8820);
    v91 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v91, v93))
    {
      v94 = sub_100005924();
      sub_10000539C(v94);
      sub_10019093C(&_mh_execute_header, v91, v93, "EnhancedEmergency: Trying to configure webView, but view is nil");
      sub_10000558C();
    }
  }

  v95 = [v23 view];
  if (!v95)
  {
    __break(1u);
    goto LABEL_26;
  }

  v96 = v95;
  [v95 setBackgroundColor:{objc_msgSend(objc_opt_self(), "blackColor")}];

  sub_100007F98();
}

void sub_1001849BC()
{
  v1 = [*(v0 + OBJC_IVAR___EmergencyWebRTCViewController_flashButton) widthAnchor];
  v2 = [v1 constraintEqualToConstant:44.0];

  v3 = OBJC_IVAR___EmergencyWebRTCViewController_flashButtonWidthConstraint;
  v4 = *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_flashButtonWidthConstraint);
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_flashButtonWidthConstraint) = v2;

  v5 = [*(v0 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButton) widthAnchor];
  v6 = [v5 constraintEqualToConstant:34.0];

  v7 = OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonWidthConstraint;
  v8 = *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonWidthConstraint);
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonWidthConstraint) = v6;

  v9 = [*(v0 + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton) widthAnchor];
  v10 = [v9 constraintEqualToConstant:44.0];

  v11 = OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWidthConstraint;
  v12 = *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWidthConstraint);
  *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWidthConstraint) = v10;

  v13 = *(v0 + v3);
  if (v13)
  {
    v14 = *(v0 + v7);
    if (v14)
    {
      v15 = *(v0 + v11);
      if (v15)
      {
        v16 = objc_opt_self();
        sub_10014EA98(&unk_1003AAAA0);
        sub_100030224();
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1002FAD40;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        *(v17 + 48) = v15;
        sub_1000064BC(0, &qword_1003AAF70);
        v18 = v13;
        v19 = v14;
        v20 = v15;
        v21 = v18;
        v22 = v19;
        v23 = v20;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v16 activateConstraints:isa];
      }
    }
  }
}

void sub_100184C18()
{
  v1 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (!v1 || (v2 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_actionButtonsWaitingView]) == 0)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v309 = type metadata accessor for Logger();
    sub_1000058D0(v309, &unk_1003B8820);
    v321 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100005E00();
    if (os_log_type_enabled(v321, v310))
    {
      v311 = sub_100005924();
      sub_100006810(v311);
      _os_log_impl(&_mh_execute_header, v321, v1, "EnhancedEmergency: Trying to set up constraint for webView, but view is nil", v0, 2u);
      sub_1000088EC();
    }

    v308 = v321;
    goto LABEL_35;
  }

  v3 = objc_opt_self();
  v4 = v1;
  v5 = v2;
  v6 = [v3 mainScreen];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  if (v10 > v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  v12 = objc_opt_self();
  [v12 inComingCallAndInCallControlsBottomPaddingRatio];
  v14 = v13;
  [v12 inCallControlButtonSizeRatio];
  v16 = v15;
  [v12 inCallControlButtonVerticalSpacingRatio];
  v18 = v17;
  v315 = OBJC_IVAR___EmergencyWebRTCViewController_zoomButton;
  v19 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController_zoomButton] bottomAnchor];
  v20 = [(uint8_t *)v0 view];
  if (!v20)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v21 = v20;
  v22 = v11 * v14;
  if (v8 >= v10)
  {
    v8 = v10;
  }

  v23 = [v20 bottomAnchor];

  v24 = [v19 constraintEqualToAnchor:v23 constant:-(v22 + v8 * v16 + v8 * v16 + v11 * v18 + 26.0)];
  v25 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBottomAnchor];
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBottomAnchor] = v24;
  v26 = v24;

  sub_10014EA98(&unk_1003AAAA0);
  sub_100190880();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1002FB360;
  v28 = v4;
  v29 = [v28 heightAnchor];
  v30 = [v29 constraintEqualToConstant:v11 * 0.39];

  *(v27 + 32) = v30;
  v31 = [v28 widthAnchor];
  v32 = [v31 constraintEqualToConstant:v8 * 0.39];

  *(v27 + 40) = v32;
  v33 = [v28 topAnchor];
  v34 = [(uint8_t *)v0 view];
  if (!v34)
  {
    goto LABEL_39;
  }

  v35 = v34;
  v316 = v5;
  v313 = v26;
  v36 = [v34 topAnchor];

  v37 = [v33 constraintEqualToAnchor:v36 constant:22.0];
  *(v27 + 48) = v37;
  v38 = [v28 centerXAnchor];
  v39 = [(uint8_t *)v0 view];
  if (!v39)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v40 = v39;
  v41 = [v39 centerXAnchor];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v27 + 56) = v42;
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_webViewWaitingStateConstraints] = v27;

  v319 = objc_opt_self();
  v43 = sub_1000064BC(0, &qword_1003AAF70);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v319 activateConstraints:isa];

  sub_100190880();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1002FB360;
  v46 = OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView;
  v47 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView] topAnchor];
  v48 = [v28 topAnchor];
  v49 = v28;
  v50 = [v47 constraintEqualToAnchor:v48];

  *(v45 + 32) = v50;
  v51 = [*&v0[v46] bottomAnchor];
  v52 = sub_100190774([v49 bottomAnchor]);

  *(v45 + 40) = v52;
  v53 = [*&v0[v46] leadingAnchor];
  v54 = sub_100190774([v49 leadingAnchor]);

  *(v45 + 48) = v54;
  v55 = [*&v0[v46] trailingAnchor];
  v56 = sub_100190774([v49 trailingAnchor]);

  *(v45 + 56) = v56;
  v312 = v43;
  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v319 activateConstraints:v57];

  sub_1001849BC();
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1002FC460;
  v59 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_titleLabelScrollView];
  v60 = [v59 topAnchor];
  v320 = v49;
  v61 = [v49 bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:24.0];

  *(v58 + 32) = v62;
  v63 = [v59 leadingAnchor];
  v64 = [(uint8_t *)v0 view];
  if (!v64)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v65 = v64;
  v66 = [v64 leadingAnchor];

  v67 = sub_1001909C4();
  v69 = [v67 v68];

  *(v58 + 40) = v69;
  v70 = [v59 trailingAnchor];
  v71 = [(uint8_t *)v0 view];
  if (!v71)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v72 = v71;
  v73 = [v71 trailingAnchor];

  v74 = sub_1001909C4();
  v76 = [v74 v75];

  *(v58 + 48) = v76;
  v77 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_titleLabelScrollViewContentView];
  v78 = [v77 topAnchor];
  v79 = [v59 contentLayoutGuide];
  v80 = [v79 topAnchor];

  v81 = sub_100007DE0();
  v83 = [v81 v82];

  *(v58 + 56) = v83;
  v84 = [v77 leadingAnchor];
  v85 = sub_1001908D4();
  v86 = [v85 leadingAnchor];

  v87 = sub_100190694();
  v89 = [v87 v88];

  *(v58 + 64) = v89;
  v90 = [v77 trailingAnchor];
  v91 = sub_1001908D4();
  v92 = [v91 trailingAnchor];

  v93 = sub_100190694();
  v95 = [v93 v94];

  *(v58 + 72) = v95;
  v96 = [v77 bottomAnchor];
  v97 = sub_1001908D4();
  v98 = [v97 bottomAnchor];

  v99 = sub_100190694();
  v101 = [v99 v100];

  *(v58 + 80) = v101;
  v102 = [v77 widthAnchor];
  v103 = [v59 frameLayoutGuide];
  v104 = [v103 widthAnchor];

  v105 = sub_100190694();
  v107 = [v105 v106];

  *(v58 + 88) = v107;
  v108 = OBJC_IVAR___EmergencyWebRTCViewController_waitingStateTitlelabel;
  v109 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController_waitingStateTitlelabel] topAnchor];
  v110 = sub_100190674([v77 topAnchor]);

  *(v58 + 96) = v110;
  v111 = [*&v0[v108] leadingAnchor];
  v112 = sub_100190674([v77 leadingAnchor]);

  *(v58 + 104) = v112;
  v113 = [*&v0[v108] trailingAnchor];
  v114 = sub_100190674([v77 trailingAnchor]);

  *(v58 + 112) = v114;
  v115 = OBJC_IVAR___EmergencyWebRTCViewController_waitingStateSubtitlelabel;
  v116 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController_waitingStateSubtitlelabel] topAnchor];
  v117 = [sub_1001906FC() bottomAnchor];
  v118 = sub_100007DE0();
  v120 = [v118 v119];

  *(v58 + 120) = v120;
  v121 = [*&v0[v115] leadingAnchor];
  v122 = sub_100190674([v77 leadingAnchor]);

  *(v58 + 128) = v122;
  v123 = [*&v0[v115] trailingAnchor];
  v124 = sub_100190674([v77 trailingAnchor]);

  *(v58 + 136) = v124;
  v125 = [*&v0[v115] bottomAnchor];
  v126 = [v77 bottomAnchor];
  v127 = sub_100007DE0();
  v129 = [v127 v128];

  *(v58 + 144) = v129;
  v130 = v316;
  v131 = [v130 bottomAnchor];
  v132 = [(uint8_t *)v0 view];
  if (!v132)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v133 = v132;
  v134 = [v132 safeAreaLayoutGuide];

  v135 = [v134 bottomAnchor];
  v136 = [v131 constraintEqualToAnchor:v135 constant:-16.0];

  *(v58 + 152) = v136;
  v137 = [v130 leadingAnchor];
  v138 = [(uint8_t *)v0 view];
  if (!v138)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v139 = v138;
  v140 = [v138 leadingAnchor];

  v141 = sub_1001909C4();
  v143 = [v141 v142];

  *(v58 + 160) = v143;
  v144 = [v130 trailingAnchor];
  v145 = [(uint8_t *)v0 view];
  if (!v145)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v146 = v145;
  v147 = [v145 trailingAnchor];

  v148 = sub_1001909C4();
  v150 = [v148 v149];

  *(v58 + 168) = v150;
  v151 = [v130 topAnchor];
  v317 = v130;

  v152 = [v59 bottomAnchor];
  v153 = sub_100025EA8();
  v155 = [v153 v154];

  *(v58 + 176) = v155;
  v156 = sub_1001808B8();
  v157 = [v156 topAnchor];

  v158 = [(uint8_t *)v0 view];
  if (!v158)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v159 = v158;
  v160 = [v158 topAnchor];

  v161 = sub_1001906E4();
  v163 = [v161 v162];

  *(v58 + 184) = v163;
  v164 = OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___liveLabel;
  v165 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___liveLabel] centerXAnchor];
  v166 = [(uint8_t *)v0 view];
  if (!v166)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v167 = v166;
  v168 = [v166 centerXAnchor];

  v169 = sub_1001906E4();
  v171 = [v169 v170];

  *(v58 + 192) = v171;
  v172 = sub_1001808D8();
  v173 = [v172 topAnchor];

  v174 = [*&v0[v164] bottomAnchor];
  v175 = sub_1001906E4();
  v177 = [v175 v176];

  *(v58 + 200) = v177;
  v178 = OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___callNumberLabel;
  v179 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___callNumberLabel] centerXAnchor];
  v180 = [(uint8_t *)v0 view];
  if (!v180)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v181 = v180;
  v182 = [v180 centerXAnchor];

  v183 = sub_1001906E4();
  v185 = [v183 v184];

  *(v58 + 208) = v185;
  v186 = sub_1001808F8();
  v187 = [v186 topAnchor];

  v188 = [*&v0[v178] bottomAnchor];
  v189 = sub_1001906E4();
  v191 = [v189 v190];

  *(v58 + 216) = v191;
  v192 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController____lazy_storage___webRTCQualityLabel] centerXAnchor];
  v193 = [(uint8_t *)v0 view];
  if (!v193)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v194 = v193;
  v195 = [v193 centerXAnchor];

  v196 = sub_1001906E4();
  v198 = [v196 v197];

  *(v58 + 224) = v198;
  v199 = OBJC_IVAR___EmergencyWebRTCViewController_flashButton;
  v200 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController_flashButton] centerYAnchor];
  v201 = [sub_1001906FC() bottomAnchor];
  v202 = sub_100025EA8();
  v204 = [v202 v203];

  *(v58 + 232) = v204;
  v205 = [*&v0[v199] leadingAnchor];
  v206 = [(uint8_t *)v0 view];
  if (!v206)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v207 = v206;
  v208 = [v206 leadingAnchor];

  v209 = sub_1001906E4();
  v211 = [v209 v210];

  *(v58 + 240) = v211;
  v212 = [*&v0[v199] heightAnchor];
  v213 = [sub_10000CDC0() widthAnchor];
  v214 = sub_100030204(v213);

  *(v58 + 248) = v214;
  v215 = OBJC_IVAR___EmergencyWebRTCViewController_flashButtonBackdropView;
  v216 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController_flashButtonBackdropView] leadingAnchor];
  v217 = [sub_10000CDC0() leadingAnchor];
  v218 = sub_100030204(v217);

  *(v58 + 256) = v218;
  v219 = [*&v0[v215] trailingAnchor];
  v220 = [sub_10000CDC0() trailingAnchor];
  v221 = sub_100030204(v220);

  *(v58 + 264) = v221;
  v222 = [*&v0[v215] topAnchor];
  v223 = [sub_10000CDC0() topAnchor];
  v224 = sub_100030204(v223);

  *(v58 + 272) = v224;
  v225 = [*&v0[v215] bottomAnchor];
  v318 = v199;
  v226 = sub_100030204([*&v0[v199] bottomAnchor]);

  *(v58 + 280) = v226;
  v227 = OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton;
  v228 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton] heightAnchor];
  v229 = [sub_1001906FC() widthAnchor];
  v230 = sub_100030204(v229);

  *(v58 + 288) = v230;
  v231 = OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonBackdropView;
  v232 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonBackdropView] leadingAnchor];
  v233 = [sub_1001906FC() leadingAnchor];
  v234 = sub_100030204(v233);

  *(v58 + 296) = v234;
  v235 = [*&v0[v231] trailingAnchor];
  v236 = [sub_1001906FC() trailingAnchor];
  v237 = sub_100030204(v236);

  *(v58 + 304) = v237;
  v238 = [*&v0[v231] topAnchor];
  v239 = [sub_1001906FC() topAnchor];
  v240 = sub_100030204(v239);

  *(v58 + 312) = v240;
  v241 = [*&v0[v231] bottomAnchor];
  v242 = [sub_1001906FC() bottomAnchor];
  v243 = sub_100030204(v242);

  *(v58 + 320) = v243;
  v244 = OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel;
  v245 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel] centerXAnchor];
  v246 = sub_100030204([v320 centerXAnchor]);

  *(v58 + 328) = v246;
  v247 = [*&v0[v244] centerYAnchor];
  v248 = [v320 centerYAnchor];

  v249 = sub_100025EA8();
  v251 = [v249 v250];

  *(v58 + 336) = v251;
  v252 = OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView;
  v253 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView] topAnchor];
  v254 = [sub_10000CDC0() topAnchor];
  v255 = sub_100025EA8();
  v257 = [v255 v256];

  *(v58 + 344) = v257;
  v258 = [*&v0[v252] leadingAnchor];
  v259 = [sub_10000CDC0() leadingAnchor];
  v260 = sub_100025EA8();
  v262 = [v260 v261];

  *(v58 + 352) = v262;
  v263 = [*&v0[v252] trailingAnchor];
  v264 = [sub_10000CDC0() trailingAnchor];
  v265 = sub_100025EA8();
  v267 = [v265 v266];

  *(v58 + 360) = v267;
  v268 = [*&v0[v252] bottomAnchor];
  v269 = [sub_10000CDC0() bottomAnchor];
  v270 = sub_100025EA8();
  v272 = [v270 v271];

  *(v58 + 368) = v272;
  *(v58 + 376) = v313;
  v273 = *&v0[v315];
  v314 = v313;
  v274 = [v273 centerXAnchor];
  v275 = [(uint8_t *)v0 view];
  if (!v275)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    return;
  }

  v276 = v275;
  v277 = [v275 centerXAnchor];

  v278 = [v274 constraintEqualToAnchor:v277];
  *(v58 + 384) = v278;
  v279 = [*&v0[v315] heightAnchor];
  v280 = [sub_100190898() widthAnchor];
  v281 = sub_100190634(v280);

  *(v58 + 392) = v281;
  v282 = OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBackdropView;
  v283 = [*&v0[OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBackdropView] leadingAnchor];
  v284 = [sub_100190898() leadingAnchor];
  v285 = sub_100190634(v284);

  *(v58 + 400) = v285;
  v286 = [*&v0[v282] trailingAnchor];
  v287 = [sub_100190898() trailingAnchor];
  v288 = sub_100190634(v287);

  *(v58 + 408) = v288;
  v289 = [*&v0[v282] topAnchor];
  v290 = [sub_100190898() topAnchor];
  v291 = sub_100190634(v290);

  *(v58 + 416) = v291;
  v292 = [*&v0[v282] bottomAnchor];
  v293 = [sub_100190898() bottomAnchor];
  v294 = sub_100190634(v293);

  *(v58 + 424) = v294;
  v295 = Array._bridgeToObjectiveC()().super.isa;

  [v319 activateConstraints:v295];

  v296 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWaitingStateTopConstraint];
  if (v296)
  {
    [v296 setActive:1];
  }

  v297 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonWaitingStateTrailingConstraint];
  if (v297)
  {
    [v297 setActive:1];
  }

  v298 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_viewControllerWaitingStateHeightConstraint];
  if (v298)
  {
    [v298 setActive:1];
  }

  v299 = [*&v0[v227] bottomAnchor];
  v300 = [*&v0[v318] bottomAnchor];
  v301 = [v299 constraintEqualToAnchor:v300];

  v302 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonSharingStateBottomConstraint];
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonSharingStateBottomConstraint] = v301;

  v303 = [*&v0[v227] trailingAnchor];
  v304 = [(uint8_t *)v0 view];
  if (!v304)
  {
    goto LABEL_52;
  }

  v305 = v304;
  v306 = [v304 trailingAnchor];

  v307 = [v303 constraintEqualToAnchor:v306 constant:-20.0];
  v308 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonSharingStateTrailingConstraint];
  *&v0[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonSharingStateTrailingConstraint] = v307;
LABEL_35:
}

void sub_10018671C()
{
  v1 = sub_10014EA98(&qword_1003AA7B0);
  sub_100005568(v1);
  sub_100005BE0();
  __chkstk_darwin(v2, v3);
  sub_10000B44C();
  v4 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (v4)
  {
    v5 = v4;
    static TaskPriority.userInitiated.getter();
    v6 = type metadata accessor for TaskPriority();
    sub_100009560(v6);
    v7 = v5;
    v8 = v0;
    v9 = static MainActor.shared.getter();
    sub_1001906BC();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v7;
    v10[5] = v8;
    sub_1000072DC();
    sub_1001621BC();
  }
}

uint64_t sub_10018681C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  v5[5] = type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v8 = (&async function pointer to dispatch thunk of SOSUIWebRTCView.getCapabilities() + async function pointer to dispatch thunk of SOSUIWebRTCView.getCapabilities());
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_1001868E4;

  return v8();
}

uint64_t sub_1001868E4()
{
  sub_100006880();
  v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 64) = v0;

  if (v0)
  {
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
    v9 = sub_100186CB0;
  }

  else
  {
    *(v4 + 72) = v3;
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v10;
    v9 = sub_100186A58;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_100186A58()
{
  v1 = v0[9];

  v2 = SOSUIWebtRTCCapabilities.zoom.getter();

  if (v2)
  {
    v3 = v2;
    SOSUIWebtRTCDoubleRange.min.getter();
    v5 = v4;

    v6 = v3;
    SOSUIWebtRTCDoubleRange.max.getter();
    v8 = v7;

    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = 0.0;
    v8 = -1.0;
    v10 = 0.0;
  }

  v11 = v0[4];
  v12 = OBJC_IVAR___EmergencyWebRTCViewController_zoomStateMachine;
  v13 = *(*(v11 + OBJC_IVAR___EmergencyWebRTCViewController_zoomStateMachine) + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_currentZoom);
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v14 = type metadata accessor for Logger();
  sub_1000058D0(v14, &unk_1003B8820);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (sub_100005908(v16))
  {
    v17 = swift_slowAlloc();
    v18 = sub_100190874(v17, 3.8522e-34);
    v19 = sub_100034FBC(v18);
    *(v19 + 14) = v8;
    *(v19 + 22) = v20;
    *(v19 + 24) = v13;
    sub_100007F88();
    _os_log_impl(v21, v22, v23, v24, v25, 0x20u);
    sub_100005340();
  }

  if (v2)
  {
    if (v10 > 0.0)
    {
      v26 = v9 > 0.0 && v10 < v9;
      v27 = !v26 || v10 > v13;
      if (!v27 && v13 <= v9)
      {
        v29 = *(v11 + v12);
        *(v29 + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_minZoom) = round(v10 * 10.0) / 10.0;
        *(v29 + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_maxZoom) = round(v9 * 10.0) / 10.0;
        *(v29 + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_midZoom) = round(v13 * 10.0) / 10.0;
        *(v29 + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_isZoomSupported) = 1;
        v0[2] = 0;
        v0[3] = 0xE000000000000000;
        Double.write<A>(to:)();
        sub_100190A60();
        sub_100186DE4(v0[2], v0[3]);
      }
    }
  }

  sub_10000535C();

  return v30();
}

uint64_t sub_100186CB0()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_100186DE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10014EA98(&qword_1003ABA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002FB510;
  *(inited + 32) = NSFontAttributeName;
  v7 = sub_1000064BC(0, &qword_1003ABA38);

  v8 = NSFontAttributeName;
  *(inited + 40) = static UIFont.preferredFont(forTextStyle:weight:)();
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  v9 = objc_opt_self();
  v10 = NSForegroundColorAttributeName;
  v11 = [v9 yellowColor];
  *(inited + 104) = sub_1000064BC(0, &qword_1003B0520);
  *(inited + 80) = v11;
  type metadata accessor for Key(0);
  sub_100190500(&qword_1003AA500, type metadata accessor for Key);
  v12 = Dictionary.init(dictionaryLiteral:)();
  v13 = objc_allocWithZone(NSAttributedString);
  v14 = sub_10018FA60(a1, a2, v12);
  [*(v3 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButton) setAttributedTitle:v14 forState:0];
}

void sub_100186FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = v22;
  v24 = OBJC_IVAR___EmergencyWebRTCViewController_actionButtonsWaitingView;
  v25 = *&v22[OBJC_IVAR___EmergencyWebRTCViewController_actionButtonsWaitingView];
  if (v25)
  {
    v26 = v25;
    sub_1001E549C();

    v27 = *&v23[v24];
    if (v27)
    {
      [v27 removeFromSuperview];
      v25 = *&v23[v24];
    }

    else
    {
      v25 = 0;
    }
  }

  *&v23[v24] = 0;

  [*&v23[OBJC_IVAR___EmergencyWebRTCViewController_waitingStateTitlelabel] removeFromSuperview];
  [*&v23[OBJC_IVAR___EmergencyWebRTCViewController_waitingStateSubtitlelabel] removeFromSuperview];
  v28 = OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton;
  [*&v23[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton] removeFromSuperview];
  v29 = [v23 view];
  if (v29)
  {
    v30 = v29;
    [v29 addSubview:*&v23[v28]];

    v38 = *&v23[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonSharingStateBottomConstraint];
    if (v38)
    {
      [v38 setActive:1];
    }

    v39 = *&v23[OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonSharingStateTrailingConstraint];
    if (v39)
    {
      LODWORD(v39) = [v39 setActive:1];
    }

    sub_1001870FC(v39, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001870FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100190A04();
  v23 = *(v22 + OBJC_IVAR___EmergencyWebRTCViewController_webRTCView);
  if (!v23)
  {
    sub_100007F98();
    return;
  }

  v24 = *(v22 + OBJC_IVAR___EmergencyWebRTCViewController_viewControllerWaitingStateHeightConstraint);
  v25 = v23;
  if (v24)
  {
    [v24 setActive:0];
  }

  v26 = objc_opt_self();
  sub_1000064BC(0, &qword_1003AAF70);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 deactivateConstraints:isa];

  sub_10014EA98(&unk_1003AAAA0);
  sub_100190880();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1002FB360;
  v61 = v23;
  v29 = [v61 topAnchor];
  v30 = sub_100190AA8();
  if (!v30)
  {
    __break(1u);
    goto LABEL_15;
  }

  v31 = v30;
  v32 = [v30 topAnchor];

  v33 = sub_100007DE0();
  v35 = [v33 v34];

  *(v28 + 32) = v35;
  v36 = [v61 bottomAnchor];
  v37 = sub_100190AA8();
  if (!v37)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38 = v37;
  v39 = [v37 bottomAnchor];

  v40 = sub_100007DE0();
  v42 = [v40 v41];

  *(v28 + 40) = v42;
  v43 = [v61 leadingAnchor];
  v44 = sub_100190AA8();
  if (!v44)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v45 = v44;
  v46 = [v44 leadingAnchor];

  v47 = sub_100007DE0();
  v49 = [v47 v48];

  *(v28 + 48) = v49;
  v50 = [v61 trailingAnchor];

  v51 = sub_100190AA8();
  if (!v51)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v52 = v51;
  v53 = [v51 trailingAnchor];

  v54 = sub_100007DE0();
  v56 = [v54 v55];

  *(v28 + 56) = v56;
  v57 = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:v57];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong runAnimationToFullScreenWebView];
    swift_unknownObjectRelease();
  }

  sub_100007F98();
}

void sub_100187458()
{
  v1 = [*(v0 + OBJC_IVAR___EmergencyWebRTCViewController_flashButton) isSelected];
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_10000FFB4(v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    v5[1] = v1;
    sub_10000712C();
    _os_log_impl(v6, v7, v8, v9, v10, 8u);
    sub_100005340();
  }

  sub_10018B174();

  sub_100187594();
}

void sub_100187594()
{
  sub_100005D28();
  v2 = v1;
  v3 = sub_10014EA98(&qword_1003AAA90);
  v4 = sub_100005568(v3);
  v6 = __chkstk_darwin(v4, v5);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v32[-v11];
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v32[-v15];
  __chkstk_darwin(v14, v17);
  v19 = &v32[-v18];
  v20 = OBJC_IVAR___EmergencyWebRTCViewController_flashButton;
  [*(v0 + OBJC_IVAR___EmergencyWebRTCViewController_flashButton) setSelected:(v2 & 1) == 0];
  v21 = *(v0 + v20);
  UIButton.configuration.getter();
  v22 = type metadata accessor for UIButton.Configuration();
  v23 = sub_100006AC0(v19, 1, v22);
  v33 = v2;
  if (v23)
  {
    sub_100158DE8(v19, v8);
    UIButton.configuration.setter();

    sub_1000306A4(v19, &qword_1003AAA90);
  }

  else
  {
    v24 = objc_opt_self();
    v25 = &selRef_systemBlackColor;
    if (v2)
    {
      v25 = &selRef_systemWhiteColor;
    }

    v26 = [v24 *v25];
    UIButton.Configuration.baseForegroundColor.setter();
    UIButton.configuration.setter();
  }

  v27 = *(v0 + v20);
  UIButton.configuration.getter();
  if (sub_100006AC0(v16, 1, v22))
  {
    sub_100158DE8(v16, v8);
    UIButton.configuration.setter();

    sub_1000306A4(v16, &qword_1003AAA90);
  }

  else
  {
    v28 = objc_opt_self();
    v29 = &selRef_clearColor;
    if ((v33 & 1) == 0)
    {
      v29 = &selRef_systemWhiteColor;
    }

    v30 = [v28 *v29];
    UIButton.Configuration.baseBackgroundColor.setter();
    UIButton.configuration.setter();
  }

  v31 = *(v0 + v20);
  UIButton.configuration.getter();
  if (sub_100006AC0(v12, 1, v22))
  {
    sub_100158DE8(v12, v8);
    UIButton.configuration.setter();

    sub_1000306A4(v12, &qword_1003AAA90);
  }

  else
  {
    sub_1000064BC(0, &qword_1003AAA98);
    sub_1001FFAD8();
    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }

  sub_100007B28();
}

void sub_1001878E0()
{
  v1 = sub_10014EA98(&qword_1003AA7B0);
  sub_100005568(v1);
  sub_100005BE0();
  __chkstk_darwin(v2, v3);
  sub_10000B44C();
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v4 = type metadata accessor for Logger();
  sub_1000058D0(v4, &unk_1003B8820);
  v5 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1001906A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_100005924();
    sub_1001906F0(v7);
    sub_10003035C();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    sub_1000053DC();
  }

  v13 = *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_webRTCView);
  if (v13 && (v14 = *(v0 + OBJC_IVAR___EmergencyWebRTCViewController_videoStreamingRequest)) != 0)
  {
    v15 = v13;
    v16 = v14;
    static TaskPriority.userInitiated.getter();
    v17 = type metadata accessor for TaskPriority();
    sub_100009560(v17);
    v18 = v15;
    v19 = v16;
    v20 = sub_1001909A0();
    sub_1001906BC();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v18;
    v21[5] = v16;
    sub_1000072DC();
    sub_1001621BC();
  }

  else
  {
    v27 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005E00();
    if (os_log_type_enabled(v27, v22))
    {
      v23 = sub_100005924();
      sub_100006810(v23);
      sub_100190654(&_mh_execute_header, v24, v25, "EnhancedEmergency: trying to stream video, but webView or request is nil");
      sub_1000088EC();
    }

    v26 = sub_10019088C();
  }
}

uint64_t sub_100187ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100187B74, v7, v6);
}

uint64_t sub_100187B74()
{
  v1 = v0[3];
  v2 = [v1 streamingURL];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v0[7] = v5;
  v6 = [v1 token];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v0[8] = v9;
  sub_100014240(&async function pointer to dispatch thunk of SOSUIWebRTCView.startVideoStream(endpoint:token:));
  v13 = v10;
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  sub_1001906AC(v11);

  return v13(v3, v5, v7, v9);
}

uint64_t sub_100187C90()
{
  sub_100006610();
  v2 = *v1;
  sub_1000058F8();
  *v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  v2[10] = v0;

  if (v0)
  {
    v6 = v2[5];
    v7 = v2[6];
    v8 = sub_100187DF8;
  }

  else
  {

    v6 = v2[5];
    v7 = v2[6];
    v8 = sub_100187DA0;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100187DA0()
{
  sub_100006610();

  sub_10000535C();

  return v0();
}

uint64_t sub_100187DF8()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100187F70()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v3 = (&async function pointer to dispatch thunk of SOSUIWebRTCView.endVideoStream() + async function pointer to dispatch thunk of SOSUIWebRTCView.endVideoStream());
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100188034;

  return v3();
}

uint64_t sub_100188034()
{
  sub_1000058A8();
  sub_1000361D4();
  sub_1000085E4();
  *v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  *(v6 + 40) = v0;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100190708();
  if (v0)
  {
    v9 = sub_1001881C8;
  }

  else
  {
    v9 = sub_100188170;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100188170()
{
  sub_100006610();

  sub_10000535C();

  return v0();
}

uint64_t sub_1001881C8()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_1001882FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10014EA98(&qword_1003AA7B0);
  sub_100005568(v6);
  sub_100005BE0();
  __chkstk_darwin(v7, v8);
  v10 = &v31 - v9;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v11 = type metadata accessor for Logger();
  sub_1000058D0(v11, &unk_1003B8820);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    *sub_100005924() = 0;
    sub_100190A20(&_mh_execute_header, v14, v15, "EnhancedEmergency: webview request to unpause streaming video");
    sub_100005BB8();
  }

  v16 = *&v2[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (v16)
  {
    v17 = v16;
    static TaskPriority.userInitiated.getter();
    v18 = type metadata accessor for TaskPriority();
    sub_100005C14(v10, v19, v20, v18);
    v21 = v17;
    v22 = v3;
    v23 = sub_1000055C0();
    sub_10017A4B4(v23);
    v24 = static MainActor.shared.getter();
    sub_100190880();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = &protocol witness table for MainActor;
    v25[4] = v21;
    v25[5] = v22;
    v25[6] = a1;
    v25[7] = a2;
    sub_1000072DC();
    sub_1001621BC();
  }

  else
  {
    v32 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005E00();
    if (os_log_type_enabled(v32, v26))
    {
      v27 = sub_100005924();
      sub_100006810(v27);
      sub_100190794(&_mh_execute_header, v28, v29, "EnhancedEmergency: trying to unpause video stream, but webView is nil");
      sub_1000088EC();
    }

    v30 = v32;
  }
}

uint64_t sub_10018851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v7[5] = type metadata accessor for MainActor();
  v7[6] = static MainActor.shared.getter();
  v10 = (&async function pointer to dispatch thunk of SOSUIWebRTCView.unpauseVideo() + async function pointer to dispatch thunk of SOSUIWebRTCView.unpauseVideo());
  v8 = swift_task_alloc();
  v7[7] = v8;
  *v8 = v7;
  v8[1] = sub_1001885E8;

  return v10();
}

uint64_t sub_1001885E8()
{
  sub_1000058A8();
  sub_1000361D4();
  sub_1000085E4();
  *v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  *(v6 + 64) = v0;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100190708();
  if (v0)
  {
    v9 = sub_1001887C0;
  }

  else
  {
    v9 = sub_100188724;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100188724()
{
  sub_100006610();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong videoStreamingAboutToStart];
    Strong = swift_unknownObjectRelease();
  }

  v2 = *(v0 + 24);
  if (v2)
  {
    v2(Strong);
  }

  sub_10000535C();

  return v3();
}

uint64_t sub_1001887C0()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_1001888F4()
{
  sub_100005D28();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_10014EA98(&qword_1003AA7B0);
  sub_100005568(v6);
  sub_100005BE0();
  __chkstk_darwin(v7, v8);
  sub_10000B44C();
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v9 = type metadata accessor for Logger();
  sub_1000058D0(v9, &unk_1003B8820);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    *sub_100005924() = 0;
    sub_100190A20(&_mh_execute_header, v12, v13, "EnhancedEmergency: webview request to pause streaming video");
    sub_100005BB8();
  }

  v14 = OBJC_IVAR___EmergencyWebRTCViewController_webRTCView;
  v15 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (v15)
  {
    v16 = v15;
    sub_100190954();
    v17 = type metadata accessor for TaskPriority();
    sub_100009560(v17);
    v18 = v0;
    sub_10017A4B4(v5);
    v19 = static MainActor.shared.getter();
    sub_100030224();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;
    v20[5] = v5;
    v20[6] = v3;
    sub_1000072DC();
    sub_1001621BC();
  }

  else
  {
    v19 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (sub_10000FFB4(v21))
    {
      v22 = sub_100005924();
      sub_1000089E0(v22);
      sub_10000712C();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      sub_100005340();
    }
  }

  v28 = *&v1[v14];
  if (v28)
  {
    v29 = v28;
    sub_100190954();
    v30 = type metadata accessor for TaskPriority();
    sub_100009560(v30);
    v31 = v19;
    v32 = static MainActor.shared.getter();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = &protocol witness table for MainActor;
    v33[4] = v31;
    sub_1000072DC();
    sub_1001621BC();
  }

  sub_100007B28();
}

uint64_t sub_100188B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v9 = (&async function pointer to dispatch thunk of SOSUIWebRTCView.pauseVideo() + async function pointer to dispatch thunk of SOSUIWebRTCView.pauseVideo());
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_100188C04;

  return v9();
}

uint64_t sub_100188C04()
{
  sub_1000058A8();
  sub_1000361D4();
  sub_1000085E4();
  *v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  *(v6 + 56) = v0;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100190708();
  if (v0)
  {
    v9 = sub_100188DAC;
  }

  else
  {
    v9 = sub_100188D40;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100188D40()
{
  sub_100006610();
  v1 = *(v0 + 16);

  if (v1)
  {
    (*(v0 + 16))(v2);
  }

  sub_10000535C();

  return v3();
}

uint64_t sub_100188DAC()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = sub_100190A78();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100188ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100188F70, v6, v5);
}

uint64_t sub_100188F70()
{
  sub_1000058A8();
  sub_1001FD1F8(0x564F5F4553554150, 0xED000059414C5245);
  *(v0 + 48) = v1;
  sub_100014240(&async function pointer to dispatch thunk of SOSUIWebRTCView.setPausedString(_:));
  v6 = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  sub_1001906AC(v3);
  v4 = sub_1000055C0();

  return v6(v4);
}

uint64_t sub_10018903C()
{
  sub_100006610();
  v2 = *v1;
  sub_1000058F8();
  *v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  v2[8] = v0;

  if (v0)
  {
    v6 = v2[4];
    v7 = v2[5];
    v8 = sub_100189144;
  }

  else
  {

    v6 = v2[4];
    v7 = v2[5];
    v8 = sub_100190630;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_100189144()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_100189284()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AA7B0);
  sub_100005568(v2);
  sub_100005BE0();
  __chkstk_darwin(v3, v4);
  v6 = &v41 - v5;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v7 = type metadata accessor for Logger();
  sub_1000058D0(v7, &unk_1003B8820);
  v8 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1001906A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = sub_100005924();
    sub_1001906F0(v10);
    sub_10003035C();
    _os_log_impl(v11, v12, v13, v14, v15, 2u);
    sub_1000053DC();
  }

  v16 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (v16)
  {
    v17 = v16;
    v18 = [v17 window];
    if (v18 && (v18, v19 = [objc_opt_self() sharedApplication], v20 = objc_msgSend(v19, "applicationState"), v19, v20 != 2))
    {
      static TaskPriority.userInitiated.getter();
      v34 = type metadata accessor for TaskPriority();
      sub_100005C14(v6, v35, v36, v34);
      v37 = v17;
      v38 = v0;
      v39 = static MainActor.shared.getter();
      sub_1001906BC();
      v40 = swift_allocObject();
      v40[2] = v39;
      v40[3] = &protocol witness table for MainActor;
      v40[4] = v37;
      v40[5] = v38;
      sub_1000072DC();
      sub_1001621BC();
    }

    else
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (sub_100005908(v22))
      {
        v23 = sub_100005924();
        sub_1000089E0(v23);
        sub_100007F88();
        _os_log_impl(v24, v25, v26, v27, v28, 2u);
        sub_100005340();
      }

      v1[OBJC_IVAR___EmergencyWebRTCViewController_hasPendingStartVideoPreviewRequest] = 1;
    }
  }

  else
  {
    v42 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005E00();
    if (os_log_type_enabled(v42, v29))
    {
      v30 = sub_100005924();
      sub_100006810(v30);
      sub_100190654(&_mh_execute_header, v31, v32, "EnhancedEmergency: trying to start video preview, but webView is nil");
      sub_1000088EC();
    }

    v33 = sub_10019088C();
  }
}

uint64_t sub_10018952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v8 = (&async function pointer to dispatch thunk of SOSUIWebRTCView.startVideoPreview() + async function pointer to dispatch thunk of SOSUIWebRTCView.startVideoPreview());
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_1001895F4;

  return v8();
}

uint64_t sub_1001895F4()
{
  sub_1000058A8();
  sub_1000361D4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v5 = *v1;
  sub_100006870();
  *v6 = v5;
  v3[7] = v0;

  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v8;
  v3[9] = v7;
  if (v0)
  {
    v9 = sub_100189C04;
  }

  else
  {
    v9 = sub_100189738;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_100189738()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = v1;
  v4 = Logger.logObject.getter();
  LOBYTE(v1) = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = *(v0 + 24);
    v6 = sub_100190988();
    *v6 = 134218240;
    *(v6 + 4) = *(v5 + OBJC_IVAR___EmergencyWebRTCViewController_appliedFrameRate);
    *(sub_100034FBC(v6) + 14) = *(v5 + OBJC_IVAR___EmergencyWebRTCViewController_appliedBitRate);
    sub_1001907B4(&_mh_execute_header, v7, v8, "EnhancedEmergency: startVideoPreview, setFrameRate:%f, setMaximumBitrate:%f");
    sub_100005368();
  }

  v9 = *(v0 + 24);

  v10 = *(v9 + OBJC_IVAR___EmergencyWebRTCViewController_appliedFrameRate);
  sub_100014240(&async function pointer to dispatch thunk of SOSUIWebRTCView.setFrameRate(_:));
  v15 = v11;
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  sub_1001906AC(v12);
  v13.n128_u64[0] = v10;

  return v15(v13);
}

uint64_t sub_1001898B0()
{
  sub_1000058A8();
  sub_1001909D0();
  sub_1000058F8();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 88) = v0;

  sub_1001909B8();
  v6 = *(v5 + 72);
  v7 = *(v1 + 64);
  if (v0)
  {
    v8 = sub_100189D34;
  }

  else
  {
    v8 = sub_1001899D8;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1001899D8()
{
  sub_1000058A8();
  v1 = *(*(v0 + 24) + OBJC_IVAR___EmergencyWebRTCViewController_appliedBitRate);
  sub_100014240(&async function pointer to dispatch thunk of SOSUIWebRTCView.setMaximumBitrate(_:));
  v6 = v2;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  sub_1001906AC(v3);
  v4.n128_u64[0] = v1;

  return v6(v4);
}

uint64_t sub_100189A84()
{
  sub_1000058A8();
  sub_1001909D0();
  sub_1000058F8();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 104) = v0;

  sub_1001909B8();
  v6 = *(v5 + 72);
  v7 = *(v1 + 64);
  if (v0)
  {
    v8 = sub_100189E64;
  }

  else
  {
    v8 = sub_100189BAC;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100189BAC()
{
  sub_100006610();

  sub_10000535C();

  return v0();
}

uint64_t sub_100189C04()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100189D34()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_100189E64()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_100189FC4()
{
  sub_100005D28();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_10014EA98(&qword_1003AA7B0);
  sub_100005568(v7);
  sub_100005BE0();
  __chkstk_darwin(v8, v9);
  v11 = &v28 - v10;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v12 = type metadata accessor for Logger();
  sub_1000058D0(v12, &unk_1003B8820);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = sub_100005924();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, v6, v15, 2u);
    sub_100005BB8();
  }

  v16 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (v16)
  {
    v17 = v16;
    static TaskPriority.userInitiated.getter();
    v18 = type metadata accessor for TaskPriority();
    sub_100005C14(v11, v19, v20, v18);
    v21 = v17;
    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v21;
    sub_1001621BC();

    sub_100007B28();
  }

  else
  {
    v29 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005E00();
    if (os_log_type_enabled(v29, v24))
    {
      v25 = sub_100005924();
      sub_100006810(v25);
      _os_log_impl(&_mh_execute_header, v29, v4, v2, v0, 2u);
      sub_1000088EC();
    }

    sub_100007B28();
  }
}

uint64_t sub_10018A1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10018A274, v6, v5);
}

uint64_t sub_10018A274()
{
  sub_1000303E4();
  sub_100006880();

  dispatch thunk of SOSUIWebRTCView.reset()();
  sub_10000535C();
  sub_100008BAC();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

void sub_10018A3D0(double a1, double a2)
{
  v3 = v2;
  v4 = OBJC_IVAR___EmergencyWebRTCViewController_appliedFrameRate;
  *&v2[OBJC_IVAR___EmergencyWebRTCViewController_appliedFrameRate] = a1;
  v5 = OBJC_IVAR___EmergencyWebRTCViewController_appliedBitRate;
  *&v2[OBJC_IVAR___EmergencyWebRTCViewController_appliedBitRate] = a2;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v6 = type metadata accessor for Logger();
  sub_1000058D0(v6, &unk_1003B8820);
  v7 = v2;
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = sub_100190988();
    *v9 = 134218240;
    *(v9 + 4) = *&v3[v4];
    *(sub_100034FBC(v9) + 14) = *&v3[v5];
    _os_log_impl(&_mh_execute_header, oslog, v8, "EnhancedEmergency: setFrameRateAndMaximumBitRate, stored frameRate: %f bitRate: %f", v9, 0x16u);
    sub_100005368();
  }
}

void sub_10018A4E4()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AA7B0);
  sub_100005568(v2);
  sub_100005BE0();
  __chkstk_darwin(v3, v4);
  sub_10000B44C();
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v5 = type metadata accessor for Logger();
  sub_100008A14(v5, &unk_1003B8820);
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1001906A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100005384();
    sub_100190874(v8, 3.852e-34);
    sub_1000085F4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1000053DC();
  }

  v14 = *&v1[OBJC_IVAR___EmergencyWebRTCViewController_currentState];
  if (v14)
  {
    v29 = v14;
    SOSUIWebRTCState.state.getter();
    SOSUIWebRTCStateName.rawValue.getter();
    sub_100009598();
    if (v29 == SOSUIWebRTCStateName.rawValue.getter() || (SOSUIWebRTCState.state.getter(), v6 = SOSUIWebRTCStateName.rawValue.getter(), v6 == SOSUIWebRTCStateName.rawValue.getter()))
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (sub_100007DC4(v16))
      {
        *sub_100005924() = 0;
        sub_100007F44(&_mh_execute_header, v17, v18, "EnhancedEmergency: setFrameRate, webview state is either NotLoaded or FatalError, can't set frame rate, early return");
        sub_100005368();
      }

      goto LABEL_11;
    }
  }

  v19 = *&v1[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (v19)
  {
    v20 = v19;
    sub_100190954();
    v21 = type metadata accessor for TaskPriority();
    sub_100009560(v21);
    v22 = v6;
    v23 = v1;
    sub_1001909A0();
    sub_100030224();
    v24 = swift_allocObject();
    sub_1001909DC(v24, &protocol witness table for MainActor);
    sub_1000072DC();
    sub_1001621BC();

    return;
  }

  v29 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100005E00();
  if (os_log_type_enabled(v29, v25))
  {
    v26 = sub_100005924();
    sub_100006810(v26);
    sub_100190794(&_mh_execute_header, v27, v28, "EnhancedEmergency: trying to set frameRate, but webView is nil");
    sub_1000088EC();
  }

LABEL_11:
}

uint64_t sub_10018A784(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  *(v6 + 16) = a1;
  *(v6 + 32) = type metadata accessor for MainActor();
  *(v6 + 40) = static MainActor.shared.getter();
  v11 = (&async function pointer to dispatch thunk of SOSUIWebRTCView.setFrameRate(_:) + async function pointer to dispatch thunk of SOSUIWebRTCView.setFrameRate(_:));
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_10018A858;
  v9.n128_f64[0] = a1;

  return v11(v9);
}

uint64_t sub_10018A858()
{
  sub_1000058A8();
  sub_1000361D4();
  sub_1000085E4();
  *v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  *(v6 + 56) = v0;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100190708();
  if (v0)
  {
    v9 = sub_10018AA00;
  }

  else
  {
    v9 = sub_10018A994;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10018A994()
{
  sub_100006610();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_appliedFrameRate) = v2;
  sub_10000535C();

  return v3();
}

uint64_t sub_10018AA00()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = sub_100190A78();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_10018AB2C()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AA7B0);
  sub_100005568(v2);
  sub_100005BE0();
  __chkstk_darwin(v3, v4);
  sub_10000B44C();
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v5 = type metadata accessor for Logger();
  sub_100008A14(v5, &unk_1003B8820);
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1001906A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100005384();
    sub_100190874(v8, 3.852e-34);
    sub_1000085F4();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1000053DC();
  }

  v14 = *&v1[OBJC_IVAR___EmergencyWebRTCViewController_currentState];
  if (v14)
  {
    v29 = v14;
    SOSUIWebRTCState.state.getter();
    SOSUIWebRTCStateName.rawValue.getter();
    sub_100009598();
    if (v29 == SOSUIWebRTCStateName.rawValue.getter() || (SOSUIWebRTCState.state.getter(), v6 = SOSUIWebRTCStateName.rawValue.getter(), v6 == SOSUIWebRTCStateName.rawValue.getter()))
    {
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (sub_100007DC4(v16))
      {
        *sub_100005924() = 0;
        sub_100007F44(&_mh_execute_header, v17, v18, "EnhancedEmergency: setBitRate, webview state is either NotLoaded or FatalError, can't set bit rate, early return");
        sub_100005368();
      }

      goto LABEL_11;
    }
  }

  v19 = *&v1[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (v19)
  {
    v20 = v19;
    sub_100190954();
    v21 = type metadata accessor for TaskPriority();
    sub_100009560(v21);
    v22 = v6;
    v23 = v1;
    sub_1001909A0();
    sub_100030224();
    v24 = swift_allocObject();
    sub_1001909DC(v24, &protocol witness table for MainActor);
    sub_1000072DC();
    sub_1001621BC();

    return;
  }

  v29 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100005E00();
  if (os_log_type_enabled(v29, v25))
  {
    v26 = sub_100005924();
    sub_100006810(v26);
    sub_100190794(&_mh_execute_header, v27, v28, "EnhancedEmergency: trying to set maximum bitRate, but webView is nil");
    sub_1000088EC();
  }

LABEL_11:
}

uint64_t sub_10018ADCC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  *(v6 + 16) = a1;
  *(v6 + 32) = type metadata accessor for MainActor();
  *(v6 + 40) = static MainActor.shared.getter();
  v11 = (&async function pointer to dispatch thunk of SOSUIWebRTCView.setMaximumBitrate(_:) + async function pointer to dispatch thunk of SOSUIWebRTCView.setMaximumBitrate(_:));
  v8 = swift_task_alloc();
  *(v6 + 48) = v8;
  *v8 = v6;
  v8[1] = sub_10018AEA0;
  v9.n128_f64[0] = a1;

  return v11(v9);
}

uint64_t sub_10018AEA0()
{
  sub_1000058A8();
  sub_1000361D4();
  sub_1000085E4();
  *v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  *(v6 + 56) = v0;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100190708();
  if (v0)
  {
    v9 = sub_10018B048;
  }

  else
  {
    v9 = sub_10018AFDC;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10018AFDC()
{
  sub_100006610();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_appliedBitRate) = v2;
  sub_10000535C();

  return v3();
}

uint64_t sub_10018B048()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = sub_100190A78();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_10018B174()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AA7B0);
  sub_100005568(v2);
  sub_100005BE0();
  __chkstk_darwin(v3, v4);
  sub_10000B44C();
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v5 = type metadata accessor for Logger();
  sub_1000058D0(v5, &unk_1003B8820);
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1001906A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100005924();
    sub_1001906F0(v8);
    sub_10003035C();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_1000053DC();
  }

  v14 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (v14)
  {
    v15 = v14;
    sub_100190954();
    v16 = type metadata accessor for TaskPriority();
    sub_100009560(v16);
    v17 = v0;
    v18 = v0;
    v19 = sub_1001909A0();
    sub_1001906BC();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v17;
    v20[5] = v1;
    sub_1000072DC();
    sub_1001621BC();
  }

  else
  {
    v26 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005E00();
    if (os_log_type_enabled(v26, v21))
    {
      v22 = sub_100005924();
      sub_100006810(v22);
      sub_100190654(&_mh_execute_header, v23, v24, "EnhancedEmergency: trying to toggle torch, but webView is nil");
      sub_1000088EC();
    }

    v25 = sub_10019088C();
  }
}

uint64_t sub_10018B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v8 = (&async function pointer to dispatch thunk of SOSUIWebRTCView.toggleTorch() + async function pointer to dispatch thunk of SOSUIWebRTCView.toggleTorch());
  v6 = swift_task_alloc();
  v5[5] = v6;
  *v6 = v5;
  v6[1] = sub_10018B414;

  return v8();
}

uint64_t sub_10018B414()
{
  sub_1000058A8();
  sub_1000361D4();
  sub_1000085E4();
  *v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  *(v6 + 48) = v0;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100190708();
  if (v0)
  {
    v9 = sub_10018B5FC;
  }

  else
  {
    v9 = sub_10018B550;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10018B550()
{
  sub_100006610();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong torchStateChangeTo:{objc_msgSend(*(*(v0 + 16) + OBJC_IVAR___EmergencyWebRTCViewController_flashButton), "isSelected")}];
    swift_unknownObjectRelease();
  }

  sub_10000535C();

  return v2();
}

uint64_t sub_10018B5FC()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_10018B730()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AA7B0);
  sub_100005568(v2);
  sub_100005BE0();
  __chkstk_darwin(v3, v4);
  sub_10000B44C();
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v5 = type metadata accessor for Logger();
  sub_1000058D0(v5, &unk_1003B8820);
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1001906A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100005924();
    sub_1001906F0(v8);
    sub_10003035C();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_1000053DC();
  }

  v14 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (v14)
  {
    v15 = v14;
    v16 = dispatch thunk of SOSUIWebRTCView.state.getter();
    SOSUIWebRTCState.cameraFacing.getter();

    v17 = SOSUIWebRTCCameraFacing.rawValue.getter();
    if (v17 == SOSUIWebRTCCameraFacing.rawValue.getter())
    {
      sub_1001907F4(*&v1[OBJC_IVAR___EmergencyWebRTCViewController_flashButton]);
      sub_1001907F4(*&v1[OBJC_IVAR___EmergencyWebRTCViewController_zoomButton]);
    }

    static TaskPriority.userInitiated.getter();
    v18 = type metadata accessor for TaskPriority();
    sub_100009560(v18);
    v19 = v15;
    v20 = v1;
    v21 = static MainActor.shared.getter();
    sub_1001906BC();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v19;
    v22[5] = v20;
    sub_1000072DC();
    sub_1001621BC();
  }

  else
  {
    v28 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005E00();
    if (os_log_type_enabled(v28, v23))
    {
      v24 = sub_100005924();
      sub_100006810(v24);
      sub_100190654(&_mh_execute_header, v25, v26, "EnhancedEmergency: trying to flip camera, but webView is nil");
      sub_1000088EC();
    }

    v27 = sub_10019088C();
  }
}

uint64_t sub_10018B96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v8 = (&async function pointer to dispatch thunk of SOSUIWebRTCView.flipCamera() + async function pointer to dispatch thunk of SOSUIWebRTCView.flipCamera());
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_10018BA34;

  return v8();
}

uint64_t sub_10018BA34()
{
  sub_1000058A8();
  sub_1000361D4();
  sub_1000085E4();
  *v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  *(v6 + 56) = v0;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100190708();
  if (v0)
  {
    v9 = sub_10018BC80;
  }

  else
  {
    v9 = sub_10018BB70;
  }

  return _swift_task_switch(v9, v8, v7);
}

uint64_t sub_10018BB70()
{
  sub_1000058A8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = dispatch thunk of SOSUIWebRTCView.state.getter();
    v4 = SOSUIWebRTCState.cameraFacing.getter();

    [v2 cameraFacingChange:v4];
    swift_unknownObjectRelease();
  }

  v5 = UIAccessibilityAnnouncementNotification;
  sub_10018FBA4(*(*(v0 + 24) + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton), &selRef_accessibilityValue);
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  UIAccessibilityPostNotification(v5, v7);
  swift_unknownObjectRelease();
  sub_10000535C();

  return v8();
}

uint64_t sub_10018BC80()
{
  sub_1000303E4();
  sub_100006880();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = sub_100190A78();
  sub_100008BFC(v0, &unk_1003B8820);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v2 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v3 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v3);
    sub_100007F88();
    _os_log_impl(v4, v5, v6, v7, v8, 0xCu);
    sub_1000306A4(v2, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

void sub_10018BDF4()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AA7B0);
  sub_100005568(v2);
  sub_100005BE0();
  __chkstk_darwin(v3, v4);
  sub_10000B44C();
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v5 = type metadata accessor for Logger();
  sub_1000058D0(v5, &unk_1003B8820);
  v6 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1001906A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100005924();
    sub_1001906F0(v8);
    sub_10003035C();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    sub_1000053DC();
  }

  v14 = *&v0[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (v14)
  {
    v15 = v14;
    sub_100190954();
    v16 = type metadata accessor for TaskPriority();
    sub_100009560(v16);
    v17 = v0;
    v18 = v0;
    v19 = sub_1001909A0();
    sub_1001906BC();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v1;
    v20[5] = v17;
    sub_1000072DC();
    sub_1001621BC();
  }

  else
  {
    v26 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005E00();
    if (os_log_type_enabled(v26, v21))
    {
      v22 = sub_100005924();
      sub_100006810(v22);
      sub_100190654(&_mh_execute_header, v23, v24, "EnhancedEmergency: trying to set zoom level, but webView is nil");
      sub_1000088EC();
    }

    v25 = sub_10019088C();
  }
}

uint64_t sub_10018BFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10018C064, v7, v6);
}

uint64_t sub_10018C064()
{
  sub_100006880();
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR___EmergencyWebRTCViewController_zoomStateMachine;
  *(v0 + 72) = OBJC_IVAR___EmergencyWebRTCViewController_zoomStateMachine;
  v3 = *(v1 + v2);
  v4 = *(v3 + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_currentZoom);
  v5 = *(v3 + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_midZoom);
  if (v4 >= v5)
  {
    v5 = *(v3 + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_maxZoom);
    if (v4 >= v5)
    {
      v5 = *(v3 + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_minZoom);
    }
  }

  *(v0 + 80) = v5;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v6 = type metadata accessor for Logger();
  *(v0 + 88) = sub_100008A14(v6, &unk_1003B8820);
  v7 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100005E00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_100190988();
    *v9 = 134218240;
    *(v9 + 4) = v4;
    *(sub_100034FBC(v9) + 14) = v5;
    sub_1001907B4(&_mh_execute_header, v10, v11, "EnhancedEmergency: current zoom level is %f, next zoom level is %f");
    sub_100005368();
  }

  sub_100014240(&async function pointer to dispatch thunk of SOSUIWebRTCView.setZoomLevel(zoom:));
  v16 = v12;
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_10018C200;
  v14.n128_f64[0] = v5;

  return v16(v14);
}

uint64_t sub_10018C200()
{
  sub_1000058A8();
  sub_1001909D0();
  sub_1000058F8();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 104) = v0;

  sub_1001909B8();
  v6 = *(v5 + 64);
  v7 = *(v1 + 56);
  if (v0)
  {
    v8 = sub_10018C448;
  }

  else
  {
    v8 = sub_10018C328;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10018C328()
{
  sub_100006880();
  v1 = *(v0 + 10);
  v2 = *(v0 + 9);
  v3 = *(v0 + 4);

  *(*(v3 + v2) + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_currentZoom) = v1;
  v0[2] = 0.0;
  v0[3] = -2.68156159e154;
  Double.write<A>(to:)();
  sub_100190A60();
  v4 = sub_1000055C0();
  sub_100186DE4(v4, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong zoomLevelChange:v0[10]];
    swift_unknownObjectRelease();
  }

  v7 = UIAccessibilityAnnouncementNotification;
  sub_1000055C0();
  v8 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v7, v8);

  sub_10000535C();

  return v9();
}

uint64_t sub_10018C448()
{
  sub_1000303E4();
  sub_100006880();

  swift_errorRetain();
  v0 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v1 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v2 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v2);
    sub_100007F88();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    sub_1000306A4(v1, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

void sub_10018C598(void *a1)
{
  v2 = *&v1[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
  if (v2)
  {
    v13 = v2;
    v4 = [a1 state];
    if ((v4 - 1) >= 2)
    {
      if (v4 == 3)
      {
        *&v1[OBJC_IVAR___EmergencyWebRTCViewController_lastZoomFactor] = *(*&v1[OBJC_IVAR___EmergencyWebRTCViewController_zoomStateMachine] + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_currentZoom);
        if (qword_1003A9F40 != -1)
        {
          sub_10000755C();
        }

        v8 = type metadata accessor for Logger();
        sub_1000058D0(v8, &unk_1003B8820);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (sub_100007DC4(v10))
        {
          *sub_100005924() = 0;
          sub_100007F44(&_mh_execute_header, v11, v12, "EnhancedEmergency: pinch session ended");
          sub_100005368();
        }
      }
    }

    else
    {
      [a1 scale];
      v6 = v5 * *&v1[OBJC_IVAR___EmergencyWebRTCViewController_lastZoomFactor];
      v7 = *&v1[OBJC_IVAR___EmergencyWebRTCViewController_zoomStateMachine];
      if (v6 <= *(v7 + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_minZoom))
      {
        v6 = *(v7 + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_minZoom);
      }

      if (*(v7 + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_maxZoom) < v6)
      {
        v6 = *(v7 + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_maxZoom);
      }

      sub_10018C724(v1, v13, v6);
    }
  }
}

uint64_t sub_10018C724(void *a1, void *a2, double a3)
{
  v6 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v16 - v8;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  sub_100006848(v9, 0, 1, v10);
  type metadata accessor for MainActor();
  v11 = a1;
  v12 = a2;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  *(v14 + 32) = v11;
  *(v14 + 40) = round(a3 * 100.0) / 100.0;
  *(v14 + 48) = v12;
  sub_1001621BC();
}

uint64_t sub_10018C86C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  *(v6 + 24) = a1;
  *(v6 + 16) = a5;
  type metadata accessor for MainActor();
  *(v6 + 40) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 48) = v8;
  *(v6 + 56) = v7;

  return _swift_task_switch(sub_10018C90C, v8, v7);
}

uint64_t sub_10018C90C()
{
  sub_100006880();
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[8] = sub_1000058D0(v2, &unk_1003B8820);
  v3 = v1;
  v4 = Logger.logObject.getter();
  LOBYTE(v1) = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = sub_100190988();
    *v7 = 134218240;
    *(v7 + 4) = *(*(v6 + OBJC_IVAR___EmergencyWebRTCViewController_zoomStateMachine) + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_currentZoom);
    *(sub_100034FBC(v7) + 14) = v5;
    sub_1001907B4(&_mh_execute_header, v8, v9, "EnhancedEmergency: Setting zoom level from pinch, current zoom level is %f, next zoom level is %f");
    sub_100005368();
  }

  sub_100014240(&async function pointer to dispatch thunk of SOSUIWebRTCView.setZoomLevel(zoom:));
  v14 = v10;
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_10018CA78;
  v12.n128_u64[0] = v0[3];

  return v14(v12);
}

uint64_t sub_10018CA78()
{
  sub_1000058A8();
  sub_1001909D0();
  sub_1000058F8();
  *v4 = v3;
  *v4 = *v2;
  *(v3 + 80) = v0;

  sub_1001909B8();
  v6 = *(v5 + 56);
  v7 = *(v1 + 48);
  if (v0)
  {
    v8 = sub_10018CC90;
  }

  else
  {
    v8 = sub_10018CBA0;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10018CBA0()
{
  sub_100006880();
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);

  *(*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_zoomStateMachine) + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_currentZoom) = v1;
  v7 = Double.description.getter();
  v8 = v3;
  sub_100190A60();
  sub_100186DE4(v7, v8);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong zoomLevelChange:*(v0 + 24)];
    swift_unknownObjectRelease();
  }

  sub_10000535C();

  return v5();
}

uint64_t sub_10018CC90()
{
  sub_1000303E4();
  sub_100006880();

  swift_errorRetain();
  v0 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_10019075C();
  if (sub_100190744())
  {
    sub_100005384();
    v1 = sub_100025300();
    sub_10019072C(5.7779e-34);
    v2 = _swift_stdlib_bridgeErrorToNSError();
    sub_100012AFC(v2);
    sub_100007F88();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
    sub_1000306A4(v1, &qword_1003B0230);
    sub_1000053DC();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_100008BAC();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

void sub_10018CE00()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_1000058D0(v0, &unk_1003B8820);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_100005908(v2))
  {
    v3 = sub_100005924();
    sub_10000539C(v3);
    sub_100007B68();
    sub_10019093C(v4, v5, v6, v7);
    sub_10000558C();
  }

  v8 = objc_opt_self();
  sub_100005C44();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_10018FC10;
  v18 = v9;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10002E570;
  v16 = &unk_10035C460;
  v10 = _Block_copy(&v13);

  sub_100005C44();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_10018FC18;
  v18 = v11;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100164920;
  v16 = &unk_10035C488;
  v12 = _Block_copy(&v13);

  [v8 animateWithDuration:v10 animations:v12 completion:0.2];
  _Block_release(v12);
  _Block_release(v10);
}

void sub_10018CFF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___EmergencyWebRTCViewController_currentState);
    v3 = v2;

    if (v2)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        sub_1001805FC();
      }
    }
  }
}

void sub_10018D09C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([*(Strong + OBJC_IVAR___EmergencyWebRTCViewController_flashButton) isSelected])
    {
      sub_10018B174();
      sub_10018B174();
    }
  }
}

void sub_10018D110()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005908(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_100007B68();
    sub_10019093C(v6, v7, v8, v9);
    sub_10000558C();
  }

  v10 = *(v1 + OBJC_IVAR___EmergencyWebRTCViewController_currentState);
  if (v10)
  {
    v11 = v10;
    sub_1001805FC();
  }
}

void sub_10018D1F8()
{
  sub_100190A04();
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005908(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_100007B68();
    sub_10019093C(v6, v7, v8, v9);
    sub_10000558C();
  }

  v10 = OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView;
  [*(v1 + OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView) setAlpha:1.0];
  sub_100016FBC(OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton);
  v11 = OBJC_IVAR___EmergencyWebRTCViewController_exclamationImageView;
  [*(v1 + v10) addSubview:*(v1 + OBJC_IVAR___EmergencyWebRTCViewController_exclamationImageView)];
  v12 = objc_opt_self();
  sub_10014EA98(&unk_1003AAAA0);
  sub_1001906BC();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002F96C0;
  v14 = [*(v1 + v11) centerXAnchor];
  v15 = [*(v1 + v10) centerXAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v13 + 32) = v16;
  v17 = [*(v1 + v11) centerYAnchor];
  v18 = [*(v1 + v10) centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v13 + 40) = v19;
  sub_1000064BC(0, &qword_1003AAF70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:isa];
  sub_100007F98();
}

void *sub_10018D7D8(const char *a1, SEL *a2)
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v6 = type metadata accessor for Logger();
  sub_1000058D0(v6, &unk_1003B8820);
  v7 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1001906A0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_100005924();
    sub_1001906F0(v9);
    _os_log_impl(&_mh_execute_header, v7, v2, a1, v3, 2u);
    sub_1000053DC();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10018D934(void *a1)
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = sub_100005384();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "EnhancedEmergency: encoutered a webRTC error: %@", v5, 0xCu);
    sub_1000306A4(v6, &qword_1003B0230);
    sub_10000558C();
    sub_100005368();
  }
}

void *sub_10018DA4C(uint64_t a1)
{
  v2 = SOSUIWebRTCQualityMessage.framesPerSecond.getter();
  sub_100008818(v2);
  v3 = -1.0;
  v4 = SOSUIWebRTCQualityMessage.bitrate.getter();
  v5 = sub_100008818(v4);
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = -1.0;
  }

  v8 = SOSUIWebRTCQualityMessage.packetLoss.getter();
  v9 = sub_100008818(v8);
  if (v6)
  {
    v10 = v9;
  }

  else
  {
    v10 = -1.0;
  }

  v11 = SOSUIWebRTCQualityMessage.jitter.getter();
  v12 = sub_100008818(v11);
  if (v6)
  {
    v3 = v12;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v13 = type metadata accessor for Logger();
  sub_1000058D0(v13, &unk_1003B8820);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (sub_10000FFB4(v15))
  {
    v16 = swift_slowAlloc();
    v17 = sub_100190874(v16, 3.8523e-34);
    v18 = sub_100034FBC(v17);
    *(v18 + 14) = v7;
    *(v18 + 22) = v19;
    *(v18 + 24) = v10;
    *(v18 + 32) = v19;
    *(v18 + 34) = v3;
    sub_10000712C();
    _os_log_impl(v20, v21, v22, v23, v24, 0x2Au);
    sub_100005340();
  }

  v25 = sub_1001808F8();
  v26._countAndFlagsBits = 3822150;
  v26._object = 0xE300000000000000;
  String.append(_:)(v26);
  Double.write<A>(to:)();
  v27._countAndFlagsBits = 0x3A5242202CLL;
  v27._object = 0xE500000000000000;
  String.append(_:)(v27);
  Double.write<A>(to:)();
  sub_10021BFD8(0, 0xE000000000000000, v25);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result videoStreamQuality:a1];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10018DC38()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  oslog = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100005E00();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = sub_100005924();
    sub_100006810(v4);
    _os_log_impl(&_mh_execute_header, oslog, v0, "EnhancedEmergency: encountered video stream lost", v1, 2u);
    sub_1000088EC();
  }
}

void sub_10018DCF0(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___EmergencyWebRTCViewController_currentState;
  v4 = *&v1[OBJC_IVAR___EmergencyWebRTCViewController_currentState];
  *&v1[OBJC_IVAR___EmergencyWebRTCViewController_currentState] = a1;
  v5 = a1;
  v6 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
  v7 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
  v8 = &selRef_countByEnumeratingWithState_objects_count_;
  v9 = &selRef_emergencyCall;
  switch(SOSUIWebRTCState.state.getter())
  {
    case 0:
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v10 = type metadata accessor for Logger();
      sub_1000058D0(v10, &unk_1003B8820);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      sub_10000FFB4(v12);
      sub_100190868();
      if (v13)
      {
        v14 = sub_100005924();
        sub_1000085CC(v14);
        sub_10000712C();
        _os_log_impl(v15, v16, v17, v18, v19, 2u);
        sub_10000A43C();
      }

      sub_1001907F4(*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel));
      sub_100016FBC(OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView);
      sub_100016FBC(OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView);
      break;
    case 1:
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v79 = type metadata accessor for Logger();
      v203 = sub_100008A14(v79, &unk_1003B8820);
      v80 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      sub_1001906A0();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = sub_100005924();
        sub_1001906F0(v82);
        sub_1000085F4();
        _os_log_impl(v83, v84, v85, v86, v87, 2u);
        sub_100005BB8();
      }

      v88 = *(v2 + OBJC_IVAR___EmergencyWebRTCViewController_flashButton);
      v89 = *(v2 + OBJC_IVAR___EmergencyWebRTCViewController_flashButtonBackdropView);
      [v88 frame];
      [v89 _setCornerRadius:v90 * 0.5];

      v91 = *(v2 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButton);
      v92 = *(v2 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButtonBackdropView);
      [v91 frame];
      [v92 _setCornerRadius:v93 * 0.5];

      sub_1001805FC();
      [*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView) setAlpha:0.0];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong cameraTurnedOnForRemoteSide];
        swift_unknownObjectRelease();
      }

      v95 = swift_unknownObjectWeakLoadStrong();
      v9 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
      if (v95 && (v96 = [v95 videoStreamingState], swift_unknownObjectRelease(), v96 == 3) || (v97 = swift_unknownObjectWeakLoadStrong()) != 0 && (v98 = objc_msgSend(v97, "videoStreamingState"), swift_unknownObjectRelease(), v98 == 7) || (v99 = swift_unknownObjectWeakLoadStrong()) != 0 && (v100 = objc_msgSend(v99, "videoStreamingState"), swift_unknownObjectRelease(), v100 == 4))
      {
        v101 = swift_unknownObjectWeakLoadStrong();
        if (v101)
        {
          [v101 videoStreamingAboutToStart];
          v101 = swift_unknownObjectRelease();
        }

        sub_100186FCC(v101, v102, v103, v104, v105, v106, v107, v108, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214, v215);
      }

      SOSUIWebRTCState.zoomLevel.getter();
      v110 = v109;
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.default.getter();
      if (sub_10000FFB4(v112))
      {
        v113 = sub_100005384();
        sub_100190874(v113, 3.852e-34);
        sub_10000712C();
        _os_log_impl(v114, v115, v116, v117, v118, 0xCu);
        sub_100005BB8();
      }

      v8 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
      *(*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_zoomStateMachine) + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_currentZoom) = v110;
      v204 = 0;
      v205 = 0xE000000000000000;
      Double.write<A>(to:)();
      sub_100190A60();
      v7 = 0xE000000000000000;
      sub_100186DE4(0, 0xE000000000000000);

      v119 = swift_unknownObjectWeakLoadStrong();
      v6 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
      if (v119)
      {
        [v119 zoomLevelChange:v110];
        goto LABEL_54;
      }

      break;
    case 2:
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v32 = type metadata accessor for Logger();
      sub_1000058D0(v32, &unk_1003B8820);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      sub_10000FFB4(v34);
      sub_100190868();
      if (v35)
      {
        v36 = sub_100005924();
        sub_1000085CC(v36);
        sub_10000712C();
        _os_log_impl(v37, v38, v39, v40, v41, 2u);
        sub_10000A43C();
      }

      v42 = sub_100190858(OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel);
      [v42 v43];
      sub_100005D64(OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView);
      v44 = sub_1001808D8();
      [v44 OBJC:1.0 IVAR:? :? :? ICSFallbackToTelephonyAlert:?cancelAction];

      v45 = sub_1001808B8();
      [v45 OBJC:1.0 IVAR:? :? :? ICSFallbackToTelephonyAlert:?cancelAction];

      v46 = sub_1001808F8();
      v47 = v46;
      if (*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_showWebRTCQualityLabel))
      {
        v48 = 1.0;
      }

      else
      {
        v48 = 0.0;
      }

      [v46 OBJC:v48 IVAR:? :? :? ICSFallbackToTelephonyAlert:?cancelAction];

      sub_100190904("addConstraints:");
      sub_100190904(OBJC_IVAR___EmergencyWebRTCViewController_zoomButton);
      sub_100005D64(OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView);
      v49 = swift_unknownObjectWeakLoadStrong();
      if (v49)
      {
        [v49 cameraTurnedOffForRemoteSide];
LABEL_54:
        swift_unknownObjectRelease();
      }

      break;
    case 3:
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v50 = type metadata accessor for Logger();
      sub_1000058D0(v50, &unk_1003B8820);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      v9 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
      if (sub_10000FFB4(v52))
      {
        v53 = sub_100005924();
        sub_1000089E0(v53);
        sub_10000712C();
        _os_log_impl(v54, v55, v56, v57, v58, 2u);
        sub_100005340();
      }

      sub_1000064BC(0, &qword_1003AAA98);
      v59 = sub_1001FFAD8();
      v60 = *(v2 + OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel);
      if (v59)
      {
        v61 = v60;
        v7 = v59;
      }

      else
      {
        v171 = objc_allocWithZone(UIImage);
        v172 = v60;
        v7 = [v171 init];
      }

      v173 = v59;
      sub_1001FD1F8(0xD000000000000013, 0x80000001002A79D0);
      sub_1001CC610(v7);

      sub_1001805FC();
      [*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView) setAlpha:0.0];

      v6 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
      goto LABEL_79;
    case 4:
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v20 = type metadata accessor for Logger();
      sub_1000058D0(v20, &unk_1003B8820);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      sub_10000FFB4(v22);
      sub_100190868();
      if (v23)
      {
        v24 = sub_100005924();
        sub_1000085CC(v24);
        sub_10000712C();
        _os_log_impl(v25, v26, v27, v28, v29, 2u);
        sub_10000A43C();
      }

      sub_100189284();
      v7 = *&sel_dismissInCallPresentationWithDismissalBlock_[v2];
      SOSUIWebRTCState.zoomLevel.getter();
      *(&v7->isa + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_currentZoom) = v30;

      v31 = swift_unknownObjectWeakLoadStrong();
      if (v31)
      {
        v7 = v31;
        SOSUIWebRTCState.zoomLevel.getter();
        [v7 zoomLevelChange:?];
        swift_unknownObjectRelease();
      }

      sub_10018671C();
      break;
    case 5:
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v120 = type metadata accessor for Logger();
      sub_1000058D0(v120, &unk_1003B8820);
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.default.getter();
      if (sub_10000FFB4(v122))
      {
        v123 = sub_100005924();
        sub_1000089E0(v123);
        sub_10000712C();
        _os_log_impl(v124, v125, v126, v127, v128, 2u);
        sub_100005340();
      }

      sub_1001908A4(*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel));
      sub_1001908A4(*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView));
      v129 = sub_1001808D8();
      sub_1001908A4(v129);

      v130 = sub_1001808B8();
      sub_1001908A4(v130);

      v131 = sub_1001808F8();
      sub_1001908A4(v131);

      sub_1001908A4(*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_flashButton));
      sub_1001908A4(*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_zoomButton));
      v132 = OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton;
      [*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButton) setAlpha:1.0];
      v133 = *(v2 + v132);
      v7 = *(v2 + OBJC_IVAR___EmergencyWebRTCViewController_flipCameraButtonBackdropView);
      [v133 frame];
      v9 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
      [v7 _setCornerRadius:v134 * 0.5];

      v6 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
      [*(v2 + OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView) setAlpha:0.0];
      v135 = *(v2 + OBJC_IVAR___EmergencyWebRTCViewController_actionButtonsWaitingView);
      v8 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
      if (v135)
      {
        v136 = v135;
        v7 = sub_1001E31FC();
        [v7 setUserInteractionEnabled:1];
      }

      break;
    case 6:
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v137 = type metadata accessor for Logger();
      sub_1000058D0(v137, &unk_1003B8820);
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.default.getter();
      sub_10000FFB4(v139);
      sub_100190868();
      if (v140)
      {
        v141 = sub_100005924();
        sub_1000085CC(v141);
        sub_10000712C();
        _os_log_impl(v142, v143, v144, v145, v146, 2u);
        sub_10000A43C();
      }

      v147 = sub_100190858(OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel);
      [v147 v148];
      sub_100005D64(OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView);
      sub_100005D64(OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView);
      v149 = sub_1001808B8();
      sub_1001906C8(v149);

      v150 = sub_1001808F8();
      sub_1001906C8(v150);

      v7 = OBJC_IVAR___EmergencyWebRTCViewController_actionButtonsWaitingView;
      v151 = *(v2 + OBJC_IVAR___EmergencyWebRTCViewController_actionButtonsWaitingView);
      if (v151)
      {
        v152 = v151;
        sub_1001E549C();
      }

      sub_100187594();
      v153 = *(&v7->isa + v2);
      if (v153)
      {
        v154 = v153;
        v7 = sub_1001E31FC();
        [v7 setUserInteractionEnabled:0];
      }

      v155 = swift_unknownObjectWeakLoadStrong();
      if (v155)
      {
        v7 = v155;
        v156 = SOSUIWebRTCState.error.getter();
        if (v156)
        {
          v157 = v156;
          v158 = SOSUIWebRTCErrorMessage.retryable.getter();
        }

        else
        {
          v158 = 0;
        }

        [v7 handleFatalErrorWithRetryable:v158 & 1];
        swift_unknownObjectRelease();
        v6 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
      }

      break;
    case 7:
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v62 = type metadata accessor for Logger();
      sub_1000058D0(v62, &unk_1003B8820);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      sub_10000FFB4(v64);
      sub_100190868();
      if (v65)
      {
        v66 = sub_100005924();
        sub_1000085CC(v66);
        sub_10000712C();
        _os_log_impl(v67, v68, v69, v70, v71, 2u);
        sub_10000A43C();
      }

      v72 = sub_100190858(OBJC_IVAR___EmergencyWebRTCViewController_cameraStateLabel);
      [v72 v73];
      sub_100005D64(OBJC_IVAR___EmergencyWebRTCViewController_cameraStateBackgroundView);
      v74 = sub_1001808D8();
      sub_1001906C8(v74);

      v75 = sub_1001808B8();
      sub_1001906C8(v75);

      v76 = sub_1001808F8();
      sub_1001906C8(v76);

      sub_100005D64(OBJC_IVAR___EmergencyWebRTCViewController_flashButton);
      sub_100005D64(OBJC_IVAR___EmergencyWebRTCViewController_zoomButton);
      sub_100190904("addConstraints:");
      sub_100005D64(OBJC_IVAR___EmergencyWebRTCViewController_webViewPlaceHolderView);
      v77 = *(v2 + OBJC_IVAR___EmergencyWebRTCViewController_actionButtonsWaitingView);
      if (v77)
      {
        v78 = v77;
        sub_1001E51A0();
      }

      break;
    default:
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v159 = type metadata accessor for Logger();
      sub_1000058D0(v159, &unk_1003B8820);
      v160 = v5;
      v7 = Logger.logObject.getter();
      v161 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v161))
      {
        v162 = sub_100005384();
        v163 = swift_slowAlloc();
        v204 = v163;
        *v162 = 136315138;
        SOSUIWebRTCState.state.getter();
        v164 = SOSUIWebRTCStateName.getValue()();
        v165 = sub_100008ADC(v164._countAndFlagsBits, v164._object, &v204);

        *(v162 + 4) = v165;
        sub_10003035C();
        _os_log_impl(v166, v167, v168, v169, v170, 0xCu);
        sub_100005B2C(v163);
        v9 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
        sub_100005BB8();
        v6 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
        sub_100005BB8();
      }

LABEL_79:
      v8 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
      break;
  }

  v174 = swift_unknownObjectWeakLoadStrong();
  if (v174)
  {
    [v174 webRTCstateChange:v5];
    swift_unknownObjectRelease();
  }

  if ((*(*(v2 + v8[257]) + OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_isZoomSupported) & 1) == 0)
  {
    [*(v2 + v6[275]) setAlpha:0.0];
  }

  v175 = swift_unknownObjectWeakLoadStrong();
  if (!v175 || (sub_100190A90(v175), sub_1000072EC(), swift_unknownObjectRelease(), v7))
  {
    SOSUIWebRTCState.state.getter();
    v176 = SOSUIWebRTCStateName.rawValue.getter();
    if (v176 == SOSUIWebRTCStateName.rawValue.getter() || (SOSUIWebRTCState.state.getter(), v177 = SOSUIWebRTCStateName.rawValue.getter(), v177 == SOSUIWebRTCStateName.rawValue.getter()))
    {
      v178 = swift_unknownObjectWeakLoadStrong();
      if (!v178 || (sub_100190A90(v178), sub_1000072EC(), swift_unknownObjectRelease(), v7 != 2))
      {
        v179 = swift_unknownObjectWeakLoadStrong();
        if (!v179 || (sub_100190A90(v179), sub_1000072EC(), swift_unknownObjectRelease(), v7 != 4))
        {
          v180 = swift_unknownObjectWeakLoadStrong();
          if (v180)
          {
            [v180 transitionToRTTState:2];
LABEL_103:
            swift_unknownObjectRelease();
          }
        }
      }
    }

    else
    {
      SOSUIWebRTCState.state.getter();
      v181 = SOSUIWebRTCStateName.rawValue.getter();
      if (v181 != SOSUIWebRTCStateName.rawValue.getter() || (v182 = swift_unknownObjectWeakLoadStrong()) == 0 || (v183 = [v182 isShownAboveCoverSheet], swift_unknownObjectRelease(), !v183) || (v184 = swift_unknownObjectWeakLoadStrong()) == 0 || (sub_100190A90(v184), sub_1000072EC(), swift_unknownObjectRelease(), v183 != 4))
      {
        v185 = swift_unknownObjectWeakLoadStrong();
        if (v185)
        {
          [v185 transitionToRTTState:1];
          goto LABEL_103;
        }
      }
    }
  }

  if (v4)
  {
    v186 = v4;
    v187 = SOSUIWebRTCState.state.getter();

    v188 = *(v2 + v3);
    if (!v188)
    {
      goto LABEL_115;
    }
  }

  else
  {
    v188 = *(v2 + v3);
    if (!v188)
    {
      goto LABEL_119;
    }

    v187 = 0;
  }

  v189 = v188;
  SOSUIWebRTCState.state.getter();

  if (v4)
  {
    SOSUIWebRTCStateName.rawValue.getter();
    sub_1000072EC();
    if (v187 == SOSUIWebRTCStateName.rawValue.getter())
    {
      goto LABEL_119;
    }
  }

  v190 = *(v2 + v3);
  if (v190)
  {
    v191 = v190;
    SOSUIWebRTCState.state.getter();

    v192 = SOSUIWebRTCStateName.rawValue.getter();
    if (v192 == SOSUIWebRTCStateName.rawValue.getter())
    {
      v193 = UIAccessibilityAnnouncementNotification;
      v194 = *(v2 + OBJC_IVAR___EmergencyWebRTCViewController_waitingStateTitlelabel);
      sub_10018FBA4(v194, &selRef_accessibilityLabel);
      if (v195)
      {
        v196 = String._bridgeToObjectiveC()();
      }

      else
      {
        v196 = 0;
      }

      UIAccessibilityPostNotification(v193, v196);
      swift_unknownObjectRelease();
      goto LABEL_118;
    }
  }

LABEL_115:
  v194 = 0;
LABEL_118:
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v194);

LABEL_119:
  v197 = *(v2 + v9[276]);
  SOSUIWebRTCState.cameraFacing.getter();
  SOSUIWebRTCCameraFacing.rawValue.getter();
  sub_100009598();
  if (v5 == SOSUIWebRTCCameraFacing.rawValue.getter())
  {
    v198 = 0x465F4152454D4143;
    v199 = 0xEC000000544E4F52;
  }

  else
  {
    v198 = 0x425F4152454D4143;
    v199 = 0xEB000000004B4341;
  }

  v200 = sub_1001FD1F8(v198, v199);
  sub_100158EC0(v200, v201, v197);
}

uint64_t sub_10018ED7C()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_100008BFC(v0, &unk_1003B8820);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_100005384();
    v4 = swift_slowAlloc();
    v16 = v4;
    *v3 = 136315138;
    v5 = Array.description.getter();
    v7 = sub_100008ADC(v5, v6, &v16);

    *(v3 + 4) = v7;
    sub_10000712C();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_100005B2C(v4);
    sub_1000053DC();
    sub_100005340();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v14 webRTCConnectedAddresses:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10018EF18()
{
  *&v0[OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF126PHSOSUIWebViewEventsHelper_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PHSOSUIWebViewEventsHelper();
  v1 = objc_msgSendSuper2(&v11, "init");
  v2 = qword_1003A9F40;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B8820);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v3;
    *v8 = v3;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency: created PHSOSUIWebViewEventsHelper: %@", v7, 0xCu);
    sub_1000306A4(v8, &qword_1003B0230);
  }

  return v3;
}

uint64_t sub_10018F0BC(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10018D934(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10018F204()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10018DC38();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10018F324(uint64_t a1)
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  swift_unknownObjectRelease();
  sub_1000064BC(0, &qword_1003ABA28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [ObjCClassFromMetadata validateServerCertificateChallenge:a1];
}

uint64_t sub_10018F40C(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a2(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10018F538(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_isZoomSupported] = 0;
  *&v4[OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_minZoom] = a1;
  *&v4[OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_maxZoom] = a2;
  *&v4[OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_midZoom] = a3;
  *&v4[OBJC_IVAR____TtC13InCallServiceP33_9515DAA0F91B8B6E1F143ED1CB3A5EF116ZoomStateMachine_currentZoom] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for ZoomStateMachine();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_10018F640()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ButtonBackgroundViewEffectView();
  v1 = objc_msgSendSuper2(&v10, "initWithEffect:", 0);
  v2 = [objc_opt_self() effectWithBlurRadius:100.0];
  if (v2)
  {
    isa = v2;
    v4 = [objc_opt_self() inCallControlsEmergencyCallButton];
    if (v4)
    {
      v5 = v4;
      sub_10014EA98(&unk_1003AAAA0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1002F96C0;
      *(v6 + 32) = isa;
      *(v6 + 40) = v5;
      sub_1000064BC(0, &unk_1003AAFA0);
      v7 = isa;
      v8 = v5;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v1 setBackgroundEffects:isa];
    }
  }

  return v1;
}

id sub_10018F8C0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_10018F91C(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = sub_100008878(a1, a1[3]);
    v7 = *(v4 - 8);
    __chkstk_darwin(v6, v6);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v4);
    sub_100005B2C(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

id sub_10018FA60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_100190500(&qword_1003AA500, type metadata accessor for Key);
    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6.super.isa];

  return v7;
}

unint64_t sub_10018FB38()
{
  result = qword_1003ABA18;
  if (!qword_1003ABA18)
  {
    sub_100155B7C(&qword_1003ABA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABA18);
  }

  return result;
}

uint64_t sub_10018FBA4(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_10018FC20()
{
  sub_100006880();
  sub_100034C14();
  v2 = swift_task_alloc();
  v3 = sub_100005B88(v2);
  *v3 = v4;
  v5 = sub_100006B80(v3);

  return sub_10018C86C(v1, v5, v6, v7, v8, v0);
}

uint64_t sub_10018FCBC()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100006B80(v1);
  sub_100008BAC();

  return sub_10018BFCC(v3, v4, v5, v6, v7);
}

uint64_t sub_10018FD4C()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100006B80(v1);
  sub_100008BAC();

  return sub_10018B96C(v3, v4, v5, v6, v7);
}

uint64_t sub_10018FDDC()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100006B80(v1);
  sub_100008BAC();

  return sub_10018B34C(v3, v4, v5, v6, v7);
}

uint64_t sub_10018FE6C()
{
  sub_100006880();
  sub_100034C14();
  v2 = swift_task_alloc();
  v3 = sub_100005B88(v2);
  *v3 = v4;
  v5 = sub_100006B80(v3);

  return sub_10018ADCC(v1, v5, v6, v7, v8, v0);
}

uint64_t sub_10018FF08()
{
  swift_unknownObjectRelease();

  sub_100030224();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10018FF4C()
{
  sub_100006880();
  sub_100034C14();
  v2 = swift_task_alloc();
  v3 = sub_100005B88(v2);
  *v3 = v4;
  v5 = sub_100006B80(v3);

  return sub_10018A784(v1, v5, v6, v7, v8, v0);
}

uint64_t sub_10018FFE8()
{
  sub_1000058A8();
  sub_100014314();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100005B88(v2);
  *v3 = v4;
  v5 = sub_100006D10(v3);

  return sub_10018A1DC(v5, v6, v7, v1);
}

uint64_t sub_10019007C()
{
  sub_100006610();
  v1 = *v0;
  sub_100006870();
  *v2 = v1;

  sub_10000535C();

  return v3();
}

uint64_t sub_100190160()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100006B80(v1);
  sub_100008BAC();

  return sub_10018952C(v3, v4, v5, v6, v7);
}

uint64_t sub_1001901F0()
{
  sub_1000058A8();
  sub_100014314();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_100005B88(v2);
  *v3 = v4;
  v5 = sub_100006D10(v3);

  return sub_100188ED8(v5, v6, v7, v1);
}

uint64_t sub_100190284()
{
  sub_100006880();
  sub_100014314();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = sub_100005B88(v3);
  *v4 = v5;
  v6 = sub_100006B80(v4);

  return sub_100188B3C(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_100190328()
{
  sub_100014314();
  v1 = v0[5];
  v3 = v0[6];
  v2 = v0[7];
  v4 = swift_task_alloc();
  v5 = sub_100005B88(v4);
  *v5 = v6;
  v7 = sub_100006B80(v5);

  return sub_10018851C(v7, v8, v9, v10, v1, v3, v2);
}

uint64_t sub_1001903DC()
{
  sub_1000058A8();
  sub_100014314();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100006D10(v1);

  return sub_100187F70();
}

uint64_t sub_100190470()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100006B80(v1);
  sub_100008BAC();

  return sub_100187ADC(v3, v4, v5, v6, v7);
}

uint64_t sub_100190500(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100190548()
{
  swift_unknownObjectRelease();

  sub_1001906BC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10019058C()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_100006B80(v1);
  sub_100008BAC();

  return sub_10018681C(v3, v4, v5, v6, v7);
}

id sub_100190634(uint64_t a1)
{
  v4 = *(v1 + 3328);

  return [v2 v4];
}

void sub_100190654(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 56);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

id sub_100190674(uint64_t a1)
{
  v4 = *(v1 + 3328);

  return [v2 v4];
}

id sub_1001906C8(void *a1)
{
  v3 = *(v1 + 1096);

  return [a1 v3];
}

uint64_t sub_10019072C(float a1)
{
  *v1 = a1;

  return swift_errorRetain();
}

BOOL sub_100190744()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10019075C()
{
}

id sub_100190774(uint64_t a1)
{
  v4 = *(v2 + 3328);

  return [v1 v4];
}

void sub_100190794(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 72);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

void sub_1001907B4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0x16u);
}

id sub_1001907D4(uint64_t a1)
{
  v4 = *(v2 + 2480);

  return [v1 v4];
}

id sub_1001907F4(void *a1)
{
  v3 = *(v1 + 1096);

  return [a1 v3];
}

id sub_10019080C()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

id sub_100190824(void *a1)
{
  v3 = *(v1 + 3944);

  return [a1 v3];
}

uint64_t sub_100190840()
{
}

uint64_t sub_100190874(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

id sub_1001908A4(void *a1)
{
  v3 = *(v1 + 1096);

  return [a1 v3];
}

id sub_1001908D4()
{
  v3 = *(v0 + 1352);

  return [v1 v3];
}

id sub_100190904@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + a1);
  v5 = *(v2 + 1096);

  return [v4 v5];
}

id sub_100190920()
{
  v3 = *(v1 + 3944);

  return [v0 v3];
}

void sub_10019093C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_100190954()
{

  return static TaskPriority.userInitiated.getter();
}

id sub_10019096C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v5 + 2496);

  return [a1 v7];
}

uint64_t sub_100190988()
{

  return swift_slowAlloc();
}

uint64_t sub_1001909A0()
{

  return static MainActor.shared.getter();
}

void *sub_1001909DC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[2] = v2;
  result[3] = a2;
  result[4] = v4;
  result[5] = v5;
  result[6] = v3;
  return result;
}

void sub_100190A20(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_100190A40@<X0>(uint64_t a1@<X8>)
{

  return sub_1001FD1F8(0xD000000000000016, (a1 - 32) | 0x8000000000000000);
}

void sub_100190A60()
{
  v1 = 38851;
  v2 = 0xA200000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_100190A78()
{

  return type metadata accessor for Logger();
}

id sub_100190A90(void *a1)
{
  v3 = *(v1 + 1192);

  return [a1 v3];
}

id sub_100190AA8()
{
  v3 = *(v1 + 3568);

  return [v0 v3];
}

void sub_100190B60(void *a1)
{
  swift_unknownObjectWeakAssign();
}

id sub_100190BA8()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    v2 = *(v0 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_backgroundContainer);

    return v2;
  }

  return result;
}

uint64_t sub_100190BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakAssign();
  v10 = (v5 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateNameVisiblity);
  v11 = *(v5 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateNameVisiblity);
  *v10 = a2;
  v10[1] = a3;
  sub_1000081F4(v11);
  v12 = (v5 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateButtonsVisibility);
  v13 = *(v5 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateButtonsVisibility);
  *v12 = a4;
  v12[1] = a5;

  sub_1000081F4(v13);
}

uint64_t sub_100190D8C(uint64_t result)
{
  v2 = result;
  if (*(v1 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_isLandscape) != (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_isLandscape) = result & 1;
    v3 = *(v1 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_landscapeConstraint);
    if (v3)
    {
      [v3 setActive:v2 & 1];
    }

    result = *(v1 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_portraitConstraint);
    if (result)
    {
      result = [result setActive:(v2 & 1) == 0];
    }
  }

  v4 = *(v1 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateNameVisiblity);
  if (v4)
  {

    v4((v2 & 1) == 0);

    return sub_1000081F4(v4);
  }

  return result;
}

void sub_100190EBC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  [Strong removeFromSuperview];
}

void sub_100190F34(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v65 = a4;
    v12 = sub_1001915D0();
    sub_10014EA98(&unk_1003AAAA0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1002FB360;
    v63 = a2;
    v14 = [v12 topAnchor];
    v15 = *(v5 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_backgroundContainer);
    v16 = [v15 topAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];

    *(v13 + 32) = v17;
    v18 = [v12 bottomAnchor];
    v19 = sub_1000076A0([v15 bottomAnchor]);

    *(v13 + 40) = v19;
    v20 = [v12 leadingAnchor];
    v21 = sub_1000076A0([v15 leadingAnchor]);

    *(v13 + 48) = v21;
    v22 = [v12 trailingAnchor];
    v61 = v15;
    v23 = sub_1000076A0([v15 trailingAnchor]);

    *(v13 + 56) = v23;
    [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v66 = v12;
    [v12 addSubview:a1];
    v24 = [a1 centerYAnchor];
    v25 = [v11 trailingPanelLayoutGuide];
    v26 = [v25 centerYAnchor];

    v27 = [v24 constraintEqualToAnchor:v26];
    v28 = [a1 bottomAnchor];
    v29 = [v11 bottomShelfLayoutGuide];
    v30 = [v29 bottomAnchor];

    v31 = [v28 constraintEqualToAnchor:v30];
    if (*(v5 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_isLandscape))
    {
      v32 = v27;
    }

    else
    {
      v32 = v31;
    }

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002F96C0;
    *(inited + 32) = v32;
    v62 = v32;
    v34 = [a1 centerXAnchor];
    v35 = [v11 trailingPanelLayoutGuide];
    v36 = [v35 centerXAnchor];

    v37 = [v34 constraintEqualToAnchor:v36];
    *(inited + 40) = v37;
    sub_1001D3C00(inited);
    if (v63)
    {
      [v61 bounds];
      if (v38 > v39)
      {
        v40 = v38;
      }

      else
      {
        v40 = v39;
      }

      v41 = v40 * 0.32;
      v42 = [a1 widthAnchor];
      v43 = [v42 constraintGreaterThanOrEqualToConstant:v41];

      LODWORD(v44) = 1144750080;
      [v43 setPriority:v44];
      v45 = swift_initStackObject();
      *(v45 + 16) = xmmword_1002FAD40;
      *(v45 + 32) = v43;
      v64 = v43;
      v46 = [a1 widthAnchor];
      v47 = [v46 constraintGreaterThanOrEqualToConstant:v41];

      *(v45 + 40) = v47;
      v48 = [a1 widthAnchor];
      v49 = [v11 trailingPanelLayoutGuide];
      v50 = [v49 widthAnchor];

      v51 = [v48 constraintLessThanOrEqualToAnchor:v50 constant:-40.0];
      *(v45 + 48) = v51;
      sub_1001D3C00(v45);
    }

    v52 = objc_opt_self();
    sub_1000064BC(0, &qword_1003AAF70);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v52 activateConstraints:isa];

    v54 = swift_unknownObjectWeakLoadStrong();
    if (!v54)
    {
      v54 = v61;
    }

    [v54 layoutIfNeeded];
    v55 = *(v5 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_landscapeConstraint);
    *(v5 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_landscapeConstraint) = v27;
    v56 = v27;

    v57 = *(v5 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_portraitConstraint);
    *(v5 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_portraitConstraint) = v31;
    v58 = v31;

    swift_unknownObjectWeakAssign();
    v59 = (v5 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_dismissHandler);
    v60 = *(v5 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_dismissHandler);
    *v59 = a3;
    v59[1] = v65;
    sub_1000081F4(v60);

    sub_1001916D8();
  }
}

id sub_1001915D0()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9[3] = ObjectType;
  v9[0] = v0;
  v3 = objc_allocWithZone(UITapGestureRecognizer);
  v4 = v0;
  v5 = sub_1001A70A0(v9, "dismissFloatingView");
  [v5 setDelegate:{v4, v9[0]}];
  [v2 addGestureRecognizer:v5];
  v6 = sub_100190BA8();
  [v6 addSubview:v2];

  v7 = v2;
  sub_100190EBC(v2);

  return v7;
}

void sub_1001916D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setAlpha:0.0];
  }

  v3 = v0[OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_isLandscape];
  v4 = objc_opt_self();
  v5 = sub_100190BA8();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = (v3 & 1) == 0;
  v9[4] = sub_10019260C;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10002E570;
  v9[3] = &unk_10035C820;
  v7 = _Block_copy(v9);
  v8 = v0;

  [v4 transitionWithView:v5 duration:0 options:v7 animations:0 completion:0.2];

  _Block_release(v7);
}

void sub_1001918D8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v2 = objc_opt_self();
    v3 = sub_100190BA8();
    sub_100005C44();
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v14 = sub_1001925F4;
    v15 = v4;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_10002E570;
    v13 = &unk_10035C708;
    v5 = _Block_copy(&v10);
    v6 = v0;

    sub_100005C44();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v14 = sub_1001925FC;
    v15 = v7;
    v10 = _NSConcreteStackBlock;
    v11 = 1107296256;
    v12 = sub_100164920;
    v13 = &unk_10035C758;
    v8 = _Block_copy(&v10);
    v9 = v6;

    [v2 transitionWithView:v3 duration:0 options:v5 animations:v8 completion:0.2];

    _Block_release(v8);
    _Block_release(v5);
  }
}

void sub_100191A8C(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setAlpha:0.0];
  }

  v4 = *(a1 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateNameVisiblity);
  if (v4)
  {

    v4(1);
    sub_1000081F4(v4);
  }

  v5 = *(a1 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateButtonsVisibility);
  if (v5)
  {

    v5(1);

    sub_1000081F4(v5);
  }
}

uint64_t sub_100191B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_dismissHandler);
  if (v2)
  {

    v2(v3);
    sub_1000081F4(v2);
  }

  return sub_100191BD0();
}

uint64_t sub_100191BD0()
{
  v1 = (v0 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_dismissHandler);
  v2 = *(v0 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_dismissHandler);
  *v1 = 0;
  v1[1] = 0;
  sub_1000081F4(v2);
  v3 = *(v0 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_landscapeConstraint);
  *(v0 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_landscapeConstraint) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_portraitConstraint);
  *(v0 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_portraitConstraint) = 0;

  sub_100190EBC(0);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v5 = (v0 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateNameVisiblity);
  v6 = *(v0 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateNameVisiblity);
  *v5 = 0;
  v5[1] = 0;
  sub_1000081F4(v6);
  v7 = (v0 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateButtonsVisibility);
  v8 = *(v0 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateButtonsVisibility);
  *v7 = 0;
  v7[1] = 0;

  return sub_1000081F4(v8);
}

void sub_100191CD8(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateNameVisiblity);
  if (v3)
  {

    v3(a2 & 1);
    sub_1000081F4(v3);
  }

  v5 = *(a1 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateButtonsVisibility);
  if (v5)
  {

    v5(0);
    sub_1000081F4(v5);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong setAlpha:1.0];
  }
}

id sub_100191DD0()
{
  v0 = [objc_allocWithZone(UIView) init];
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [objc_opt_self() effectWithStyle:16];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v2];
  v3 = objc_opt_self();
  sub_10014EA98(&unk_1003AAAA0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002FB360;
  v5 = [v2 topAnchor];
  v6 = [v0 topAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];

  *(v4 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v4 + 40) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v4 + 48) = v13;
  v14 = [v2 bottomAnchor];

  v15 = [v0 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v4 + 56) = v16;
  sub_1000064BC(0, &qword_1003AAF70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];

  return v0;
}

uint64_t sub_100192204(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v4 = Strong;
  [a1 locationInView:*(v1 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_backgroundContainer)];
  v6 = v5;
  v8 = v7;
  [v4 frame];
  v11.x = v6;
  v11.y = v8;
  v9 = CGRectContainsPoint(v12, v11);

  return !v9;
}

uint64_t sub_1001922F0()
{
  sub_1000064BC(0, &qword_1003AAAD0);
  static Animation.easeInOut.getter();
  static UIView.animate(_:changes:completion:)();
}

id sub_100192378(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_backgroundContainer);
  v3 = 1.0;
  if (!a2)
  {
    v3 = 0.0;
  }

  return [v2 setAlpha:v3];
}

id sub_1001923F4()
{
  ObjectType = swift_getObjectType();
  sub_100006D28();
  sub_100006D28();
  v2 = &v0[OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateNameVisiblity];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_updateButtonsVisibility];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_isLandscape] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_landscapeConstraint] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_portraitConstraint] = 0;
  v4 = &v0[OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_dismissHandler];
  *v4 = 0;
  v4[1] = 0;
  sub_100006D28();
  sub_100006D28();
  v5 = OBJC_IVAR____TtC13InCallService37iPadBackgroundFloatingViewsController_backgroundContainer;
  *&v0[v5] = sub_100191DD0();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

void sub_100192628(char a1)
{
  v2 = v1;
  v18.receiver = v1;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "viewWillAppear:", a1 & 1);
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 delegate];

  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      swift_unknownObjectRetain();
      v7 = ICSApplicationDelegate.bannerPresentationManager.getter();
      swift_unknownObjectRelease();
      v5 = v7;
      v8 = dispatch thunk of BannerPresentationManager.conversationControlsManager.getter();
    }

    else
    {
      swift_unknownObjectRelease();
      v8 = 0;
      v5 = 0;
    }
  }

  else
  {
    v8 = 0;
    v6 = 0;
  }

  v9 = objc_allocWithZone(type metadata accessor for ConversationControlsShareCardViewController());
  v10 = v8;
  v11 = ConversationControlsShareCardViewController.init(conversationControlsManager:)();
  sub_100192FA8();
  v12 = v2;
  ConversationControlsShareCardViewController.delegate.setter();
  v13 = [v11 sheetPresentationController];
  if (v13)
  {
    v14 = v13;
    sub_10014EA98(&unk_1003AAAA0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1002FBD90;
    *(v15 + 32) = [objc_opt_self() mediumDetent];
    sub_100192FFC();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 setDetents:isa];

    swift_allocObject();
    swift_unknownObjectWeakInit();

    ConversationControlsShareCardViewController.updateSheetDetent.setter();
  }

  [v12 presentViewController:v11 animated:1 completion:0];

  v17 = *&v12[OBJC_IVAR____TtC13InCallService34ShareCardRemoteAlertViewController_shareViewController];
  *&v12[OBJC_IVAR____TtC13InCallService34ShareCardRemoteAlertViewController_shareViewController] = v11;
}

uint64_t sub_10019291C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10014EA98(&unk_1003AAAA0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1002FBD90;
    *(v6 + 32) = a1;
    sub_100192FFC();
    v7 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v5 setDetents:isa];
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a1;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100193048;
    *(v12 + 24) = v11;
    v16[4] = sub_100193050;
    v16[5] = v12;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 1107296256;
    v16[2] = sub_100192BD0;
    v16[3] = &unk_10035C8C0;
    v13 = _Block_copy(v16);
    v14 = a1;

    [v10 animateChanges:v13];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100192B48(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 identifier];
    [v4 setSelectedDetentIdentifier:v5];
  }
}

uint64_t sub_100192C5C()
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
    sub_10014EA98(&qword_1003ABB50);
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
    sub_10015E258(v5);
    return 0;
  }
}

id sub_100192D1C(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC13InCallService34ShareCardRemoteAlertViewController_shareViewController] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_100192E24(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13InCallService34ShareCardRemoteAlertViewController_shareViewController] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void *sub_100192EF8()
{
  if (qword_1003A9F98 != -1)
  {
    sub_1000076C0();
  }

  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
  result = sub_100192C5C();
  if (result)
  {
    [result dismiss];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_100192FA8()
{
  result = qword_1003ABB58;
  if (!qword_1003ABB58)
  {
    type metadata accessor for ShareCardRemoteAlertViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABB58);
  }

  return result;
}

unint64_t sub_100192FFC()
{
  result = qword_1003ABB60;
  if (!qword_1003ABB60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003ABB60);
  }

  return result;
}

id sub_100193078(uint64_t a1)
{
  result = [v1 view];
  if (result)
  {
    v4 = result;
    [result addSubview:a1];

    return [v1 setupMiddleContentView:a1];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100193160(void *a1)
{
  v3 = [v1 layoutGuidesProvider];
  if (v3)
  {
    v4 = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v15 = sub_10019339C;
    v16 = v5;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_10002E570;
    v14 = &unk_10035C910;
    v6 = _Block_copy(&v11);
    v7 = a1;

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v15 = sub_1001933B0;
    v16 = v8;
    v11 = _NSConcreteStackBlock;
    v12 = 1107296256;
    v13 = sub_10002E570;
    v14 = &unk_10035C960;
    v9 = _Block_copy(&v11);
    v10 = v7;

    [v4 updateMiddleShelfStateWithIsOpen:0 animation:v6 completion:v9];
    _Block_release(v9);
    _Block_release(v6);
  }

  else
  {

    [a1 removeFromSuperview];
  }
}

uint64_t sub_1001933C8(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return __CocoaSet.count.getter();
  }

  else
  {
    return *(a1 + 16);
  }
}

NSString sub_1001933E8()
{
  result = String._bridgeToObjectiveC()();
  qword_1003B89D8 = result;
  return result;
}

NSString sub_100193420()
{
  result = String._bridgeToObjectiveC()();
  qword_1003B89E0 = result;
  return result;
}

NSString sub_100193458()
{
  result = String._bridgeToObjectiveC()();
  qword_1003B89E8 = result;
  return result;
}

NSString sub_100193490()
{
  result = String._bridgeToObjectiveC()();
  qword_1003B89F0 = result;
  return result;
}

NSString sub_1001934C8()
{
  result = String._bridgeToObjectiveC()();
  qword_1003B89F8 = result;
  return result;
}

uint64_t sub_1001935A4()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_100193620()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_tuCall);
  v2 = v1;
  return v1;
}

void sub_100193798()
{
  sub_100005D28();
  v33 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10000688C();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  sub_100005BD0();
  sub_1001A09DC();
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6, v7);
  sub_100005BD0();
  v8 = type metadata accessor for DispatchQoS();
  v9 = sub_100005568(v8);
  __chkstk_darwin(v9, v10);
  sub_100005BD0();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_tuCall] = 0;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController] = 0;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController] = 0;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_rttRecentMessageViewController] = 0;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_pipCoordinator] = 0;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper] = 0;
  v32 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestQueue;
  sub_1000064BC(0, &qword_1003AAAB0);
  static DispatchQoS.unspecified.getter();
  v35 = &_swiftEmptyArrayStorage;
  sub_1001A04EC(&qword_1003ABA08, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10014EA98(&qword_1003ABA10);
  sub_10002D9BC(&qword_1003ABA18, &qword_1003ABA10);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v1, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v33);
  *&v0[v32] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest] = 0;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaSet] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest] = 0;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_maxRequestCountPerRequestType] = 3;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation] = 0;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState] = 0;
  v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequestHasBeenAccepted] = 0;
  v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_shouldHideVideoStreamingControls] = 0;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingState] = 3;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadState] = 3;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector] = [objc_allocWithZone(type metadata accessor for EnhancedEmergencyDataCollector()) init];
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_streamingRequestCount] = 0;
  *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequestCount] = 0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for EnhancedEmergencyCoordinator();
  v11 = objc_msgSendSuper2(&v34, "init");
  v12 = *&v11[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestQueue];
  v13 = objc_allocWithZone(CLEEDRequestHelper);
  v14 = v11;
  v15 = [v13 initWithDelegate:v14 andQueue:v12];
  v16 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper;
  v17 = *&v14[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
  *&v14[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper] = v15;

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v18 = type metadata accessor for Logger();
  sub_1000058D0(v18, &unk_1003B8820);
  v19 = v14;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = sub_100190988();
    v23 = sub_1001A0AC8();
    v24 = sub_1001A0A44(v23, 5.778e-34);
    v25 = *&v14[v16];
    *(v22 + 14) = v25;
    v24[1] = v25;
    v26 = v19;
    v27 = v25;
    sub_1001A0980();
    _os_log_impl(v28, v29, v30, v31, v22, 0x16u);
    sub_10014EA98(&qword_1003B0230);
    sub_1001A0BAC();
    swift_arrayDestroy();
    sub_1000053DC();
    sub_10000558C();
  }

  sub_10019A6E0();
  sub_1001988F0();
  sub_10019A074();
  sub_10019A1AC();
  sub_100194108();

  sub_100007B28();
}

void sub_100193CA8()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 parentViewController];
    if (v3)
    {

      v4 = [v2 view];
      if (!v4)
      {
        __break(1u);
LABEL_12:
        __break(1u);
        return;
      }

      v5 = v4;
      v6 = [v4 window];

      if (v6)
      {

        goto LABEL_7;
      }

      if (sub_10001DB7C(*(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState), &off_10035A4A8))
      {
LABEL_7:
        v7 = [v2 view];

        if (v7)
        {
          [v7 alpha];

          return;
        }

        goto LABEL_12;
      }
    }
  }
}

void sub_100193E0C()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = [v2 parentViewController];
  if (!v3)
  {

    goto LABEL_7;
  }

  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = [v4 window];

  v2 = v5;
  if (v5)
  {
LABEL_7:
  }
}

void sub_100193FE4()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8820);
  v3 = v1;
  v4 = sub_1001A0D7C();
  v5 = static os_log_type_t.default.getter();
  if (sub_100005908(v5))
  {
    v6 = sub_100008A70();
    *v6 = 67109120;
    v6[1] = v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_shouldHideVideoStreamingControls];

    sub_100007F34();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
    sub_10000558C();
  }

  else
  {

    v4 = v0;
  }

  v12 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v12)
  {
    v13 = v12;
    v14 = sub_100008908();
    sub_1001808A0(v14);
    sub_100005D80();
  }

  else
  {
    sub_100005D80();
  }
}

void sub_100194108()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005908(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_100007F34();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_10000558C();
  }

  v11 = [objc_opt_self() defaultCenter];
  [v11 addObserver:v1 selector:"appWillResignActive" name:UIApplicationWillResignActiveNotification object:0];

  v12 = sub_100034FC8();
  v16 = v12;
  if (qword_1003A9FD0 != -1)
  {
    v12 = swift_once();
  }

  sub_10002531C(v12, v13, v14, v15, qword_1003B89D8);

  v17 = sub_100034FC8();
  v21 = v17;
  if (qword_1003A9FD8 != -1)
  {
    v17 = swift_once();
  }

  sub_10002531C(v17, v18, v19, v20, qword_1003B89E0);

  v22 = sub_100034FC8();
  v26 = v22;
  if (qword_1003A9FE0 != -1)
  {
    v22 = swift_once();
  }

  sub_10002531C(v22, v23, v24, v25, qword_1003B89E8);

  v27 = sub_100034FC8();
  v31 = v27;
  if (qword_1003A9FE8 != -1)
  {
    v27 = swift_once();
  }

  sub_10002531C(v27, v28, v29, v30, qword_1003B89F0);

  v32 = sub_100034FC8();
  v35 = v32;
  if (qword_1003A9FF0 != -1)
  {
    swift_once();
    v32 = v35;
  }

  [v32 addObserver:v1 selector:"handleBannerUploadRequestPickerDuringStreaming" name:qword_1003B89F8 object:0];
  sub_100005D80();
}

void sub_1001943E0()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8820);
  v3 = v1;
  v4 = sub_1001A0D7C();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100005384();
    v7 = sub_100008A70();
    *v6 = 138412290;
    v8 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    sub_100007F34();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_1000306A4(v7, &qword_1003B0230);
    sub_100005340();
    sub_10000558C();
  }

  v15 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper;
  v16 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
  if (v16)
  {
    [v16 cleanup];
    v17 = *&v0[v15];
  }

  else
  {
    v17 = 0;
  }

  *&v0[v15] = 0;

  v18 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v18)
  {
    v19 = v18;
    sub_100187F40();
  }

  v20 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector;
  v21 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector];
  sub_1001A46A8();

  *&v0[v20];
  sub_1001A58C0();
  sub_100005D80();
}

void sub_1001945BC()
{
  v1 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v1)
  {
    v2 = v0;
    v16 = v1;
    sub_100193CA8();
    if (v3)
    {
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v4 = type metadata accessor for Logger();
      sub_1000058D0(v4, &unk_1003B8820);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (sub_100005908(v6))
      {
        v7 = sub_100005924();
        sub_10000539C(v7);
        sub_100007F34();
        _os_log_impl(v8, v9, v10, v11, v12, 2u);
        sub_10000558C();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong removeWebRTCViewController:v16];
        swift_unknownObjectRelease();
      }

      sub_10016FC20();
      sub_1001888F4();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        [v14 hideWebRTCViewController:v16];
        swift_unknownObjectRelease();
      }

      [v2 transitionToRTTState:1];
      v15 = swift_unknownObjectWeakLoadStrong();
      if (v15)
      {
        [v15 requestToAddResumeCameraLabel];
        swift_unknownObjectRelease();
      }

      if (*&v2[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingState] == 3)
      {
        sub_100196E70();
      }
    }
  }
}

void sub_1001947B4()
{
  sub_100005D28();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  sub_10000688C();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  sub_100005BD0();
  v37 = v10 - v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong requestToPresentVideoStreamingRequestBanner];
    swift_unknownObjectRelease();
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    [v12 requestHapticForRequest];
    swift_unknownObjectRelease();
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    [v13 requestToEnableVideoStreamingButton];
    swift_unknownObjectRelease();
  }

  v14 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController;
  v15 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v15)
  {
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      [v16 removeWebRTCViewController:v15];
      swift_unknownObjectRelease();
    }

    v17 = *&v1[v14];
    *&v1[v14] = 0;
  }

  v18 = objc_allocWithZone(type metadata accessor for EmergencyWebRTCViewController());
  v19 = v3;
  sub_1001828F4();
  v21 = v20;
  sub_1001808A0(v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_shouldHideVideoStreamingControls]);
  v22 = *&v1[v14];
  *&v1[v14] = v21;
  v23 = v21;

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v24 = type metadata accessor for Logger();
  sub_1000058D0(v24, &unk_1003B8820);
  v25 = v1;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v36 = v4;
    v28 = sub_100190988();
    v29 = sub_1001A0AC8();
    *v28 = 138412546;
    *(v28 + 4) = v25;
    *(v28 + 12) = 2112;
    v30 = *&v1[v14];
    *(v28 + 14) = v30;
    *v29 = v25;
    v29[1] = v30;
    v31 = v25;
    v32 = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "EnhancedEmergency: emergencyCoordinator :%@ created webTRCViewController: %@", v28, 0x16u);
    sub_10014EA98(&qword_1003B0230);
    swift_arrayDestroy();
    sub_100005BB8();
    v4 = v36;
    sub_100005BB8();
  }

  swift_unknownObjectWeakAssign();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    [v33 addWebRTCViewController:v23];
    swift_unknownObjectRelease();
  }

  sub_100194B38();
  v34 = *&v25[OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector];
  v35 = [v19 ID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.uuidString.getter();
  sub_1001A0A80();
  (*(v6 + 8))(v37, v4);
  sub_1001A3CA4(v37, v19);

  sub_100007B28();
}

void sub_100194B38()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 streamingFPS];
    v4 = [v2 streamingBitrate];

    if ((v4 * 1000) >> 64 != (1000 * v4) >> 63)
    {
      __break(1u);
      return;
    }

    v5 = v3;
    v6 = (1000 * v4);
  }

  else
  {
    v5 = 24.0;
    v6 = 800000.0;
  }

  v7 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
  if (v7)
  {
    v8 = v7;
    sub_10018A3D0(v5, v6);
  }
}

void sub_100194C30()
{
  sub_1001A0D94();
  sub_1001A0D1C();
  sub_10000688C();
  __chkstk_darwin(v2, v3);
  sub_100005BD0();
  sub_1001A0A5C();
  v4 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController;
  v5 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
  if (v5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong removeMediaRequestViewController:v5];
      swift_unknownObjectRelease();
    }

    v7 = *(v1 + v4);
    *(v1 + v4) = 0;
  }

  v8 = [objc_allocWithZone(type metadata accessor for EmergencyMediaRequestViewController()) init];
  v9 = *(v1 + v4);
  *(v1 + v4) = v8;
  v10 = v8;

  *&v10[OBJC_IVAR___PHEmergencyMediaRequestViewController_delegate + 8] = &off_10035C988;
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    [v11 requestToPresentMediaUploadRequestBanner];
    swift_unknownObjectRelease();
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    [v12 requestHapticForRequest];
    swift_unknownObjectRelease();
  }

  sub_100193CA8();
  v14 = v13;
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    if (v15)
    {
      [v15 requestToPresentMediaUploadRequestBannerDuringStreaming];
      swift_unknownObjectRelease();
    }

    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v16 = type metadata accessor for Logger();
    sub_1000058D0(v16, &unk_1003B8820);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (sub_100014274(v18))
    {
      v19 = sub_100005924();
      *v19 = 0;
      sub_1000089EC();
      _os_log_impl(v20, v21, v22, v23, v19, 2u);
      sub_100005BB8();
    }
  }

  else if (v15)
  {
    [v15 addMediaRequestViewController:v10];
    swift_unknownObjectRelease();
  }

  v24 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
  v25 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest);
  v26 = v24;
  if (v25)
  {
    v27 = [v25 ID];
    sub_1001A0AF8();

    v25 = UUID.uuidString.getter();
    v29 = v28;
    v30 = sub_1000055C0();
    v31(v30);
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  sub_1001A3CA4(v25, v29);

  sub_1001A0B10();
}

id sub_100194F14()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v2)
  {
    v3 = v2;
    sub_10016FC20();
    sub_1001888F4();
  }

  return [v1 transitionToRTTState:1];
}

void sub_100194F78()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005908(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_100007F34();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_10000558C();
  }

  sub_100193CA8();
  if (v11)
  {

    [v1 cancelVideoStreamingRequest];
  }

  else
  {

    sub_10019505C();
  }
}

void sub_10019505C()
{
  sub_1001A0D94();
  sub_1001A0D1C();
  sub_10000688C();
  __chkstk_darwin(v2, v3);
  sub_100005BD0();
  sub_1001A0A5C();
  v4 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = qword_1003A9F40;
  v25 = v4;
  if (v5 != -1)
  {
    sub_10000755C();
  }

  v6 = type metadata accessor for Logger();
  sub_1000058D0(v6, &unk_1003B8820);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (sub_100014274(v8))
  {
    v9 = sub_100005924();
    sub_1001906F0(v9);
    sub_100007B74(&_mh_execute_header, v10, v11, "EnhancedEmergency: emergency coordinator gets notified cancelMediaUploadRequest");
    sub_1000053DC();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong removeMediaRequestViewController:v25];
    swift_unknownObjectRelease();
  }

  sub_100197388();
  sub_1001984A8();
  v13 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
  if (v13)
  {
    v14 = v13;
    if ([v14 uploadMigitation] == 2 && (v15 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      [v15 requestToAddPhotoMitigationLabel];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v16 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest);
  if (v16)
  {
    v17 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
    v18 = v16;
    v19 = v17;
    v20 = [v18 ID];
    sub_1001A0AF8();

    UUID.uuidString.getter();
    sub_1001A0A80();
    v21 = sub_1000055C0();
    v22(v21);
    sub_100016FD8();

LABEL_15:
    sub_1001A0B10();
    return;
  }

  sub_1001A0B10();
}

void sub_10019530C()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v1 = type metadata accessor for Logger();
  sub_1000058D0(v1, &unk_1003B8820);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_100005924();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "EnhancedEmergency: get notification that request to choose photo from Jindo action", v4, 2u);
    sub_100005340();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong hideRTTConversationIfNeeded];
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
  if (v6)
  {
    v7 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (sub_100005908(v9))
    {
      v10 = sub_100005924();
      sub_10000539C(v10);
      sub_100007F34();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      sub_10000558C();
    }

    v16 = [objc_opt_self() sharedInstance];
    if (v16)
    {
      v17 = v16;
      sub_100005C44();
      v18 = swift_allocObject();
      *(v18 + 16) = v7;
      aBlock[4] = sub_1001A08BC;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      sub_100008D60();
      aBlock[2] = v19;
      aBlock[3] = &unk_10035CFA0;
      v20 = _Block_copy(aBlock);
      v21 = v7;

      [v17 requestPasscodeUnlockWithCompletion:v20];
      _Block_release(v20);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005E00();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = sub_100005924();
      sub_100006810(v23);
      sub_100006D40(&_mh_execute_header, v24, v25, "EnhancedEmergency: get notification that request to choose photo from Jindo action, but mediaRequestViewController doesn't exist", v26, v27, v28, v29, v30, oslog);
      sub_1000088EC();
    }
  }
}

void sub_10019558C(char a1, void *a2)
{
  if (qword_1003A9F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B8820);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency: got passcode unlock %{BOOL}d", v7, 8u);
  }

  if (a1)
  {

    [a2 requestContinue];
  }

  else
  {
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "EnhancedEmergency: passcode unlock failed, not continuing with media request", v9, 2u);
    }
  }
}

void sub_1001957E4()
{
  sub_1001A0D94();
  sub_1001A0D1C();
  sub_10000688C();
  __chkstk_darwin(v1, v2);
  sub_100005BD0();
  sub_1001A0A5C();
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v3 = type metadata accessor for Logger();
  sub_1000058D0(v3, &unk_1003B8820);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = sub_100005924();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "EnhancedEmergency: handleBannerUploadRequestDismissDuringStreaming", v6, 2u);
    sub_100005BB8();
  }

  v7 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
  if (!v7)
  {
    goto LABEL_12;
  }

  v28 = v7;
  if ([v28 uploadMigitation] != 2)
  {

LABEL_12:
    sub_100197388();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong requestToEnableMediaUploadButton];
      swift_unknownObjectRelease();
    }

    v21 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest);
    if (!v21)
    {
      goto LABEL_17;
    }

    v22 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
    v15 = v21;
    v16 = v22;
    v23 = [v15 ID];
    sub_1001A0AF8();

    UUID.uuidString.getter();
    sub_1001A0A80();
    v24 = sub_1000055C0();
    v25(v24);
    sub_100016FD8();

LABEL_16:

LABEL_17:
    sub_1001A0B10();
    return;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (sub_100014274(v9))
  {
    v10 = sub_100005924();
    sub_1001906F0(v10);
    sub_100007B74(&_mh_execute_header, v11, v12, "EnhancedEmergency: handleBannerUploadRequestDismissDuringStreaming, ignore user's dismiss request due to upload mitigation to drop the request");
    sub_1000053DC();
  }

  v13 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest);
  if (v13)
  {
    v14 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
    v15 = v13;
    v16 = v14;
    v17 = [v15 ID];
    sub_1001A0AF8();

    UUID.uuidString.getter();
    sub_1001A0A80();
    v18 = sub_1000055C0();
    v19(v18);
    sub_100016FD8();

    goto LABEL_16;
  }

  sub_1001A0B10();
}

void sub_100195B44(char a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && (swift_beginAccess(), (v7 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
    if (v9)
    {
      v10 = v9;
      if ([v10 uploadMigitation]== 2)
      {
        if (qword_1003A9F40 != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        sub_100008A14(v11, &unk_1003B8820);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, v13, "EnhancedEmergency: handleBannerUploadRequestPickerDuringStreaming, cannot start upload request due to upload mitigation to drop request", v14, 2u);
        }

        v15 = *(&v8->isa + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest);
        if (v15)
        {
          v16 = *(&v8->isa + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
          v17 = v15;
          v18 = v16;
          v19 = [v17 ID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v20 = UUID.uuidString.getter();
          v22 = v21;
          (*(v3 + 8))(v6, v2);
          sub_1001A3CB0(v20, v22);

          v8 = v17;
        }

        else
        {

          v8 = v10;
        }

        goto LABEL_41;
      }
    }

    v26 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController;
    if (!*(&v8->isa + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController))
    {
      if (qword_1003A9F40 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100008A14(v27, &unk_1003B8820);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "EnhancedEmergency: handling media banner accept, didn't find an media request viewController, create a new one", v30, 2u);
      }

      v31 = [objc_allocWithZone(type metadata accessor for EmergencyMediaRequestViewController()) init];
      v32 = *(&v8->isa + v26);
      *(&v8->isa + v26) = v31;
      v33 = v31;

      v34 = v8;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v65 = v26;
        *v37 = 138412546;
        *(v37 + 4) = v34;
        *v38 = v8;
        *(v37 + 12) = 2112;
        v64 = v35;
        v39 = v33;
        v40 = *(&v8->isa + v65);
        *(v37 + 14) = v40;
        v38[1] = v40;
        v41 = v34;
        v42 = v40;
        v33 = v39;
        v35 = v64;
        _os_log_impl(&_mh_execute_header, v64, v36, "EnhancedEmergency: emergencyCoordinator :%@ created emegencyMediaRequestViewController: %@", v37, 0x16u);
        sub_10014EA98(&qword_1003B0230);
        swift_arrayDestroy();
        v26 = v65;
      }

      *(v33 + OBJC_IVAR___PHEmergencyMediaRequestViewController_delegate + 8) = &off_10035C988;
      swift_unknownObjectWeakAssign();
    }

    sub_100197388();
    v43 = *(&v8->isa + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest);
    if (v43)
    {
      v44 = *(&v8->isa + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
      v45 = v43;
      v46 = v44;
      v47 = [v45 ID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v48 = UUID.uuidString.getter();
      v50 = v49;
      (*(v3 + 8))(v6, v2);
      sub_1001A3CB0(v48, v50);
    }

    v51 = *(&v8->isa + v26);
    if (v51)
    {
      v52 = v51;
      sub_100193CA8();
      if (v53)
      {
        if (qword_1003A9F40 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_100008A14(v54, &unk_1003B8820);
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&_mh_execute_header, v55, v56, "EnhancedEmergency: we have an ongoing video streaming request, pause the video and handle media upload accept from banner", v57, 2u);
        }

        sub_100196364();
      }

      if (qword_1003A9F40 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_100008A14(v58, &unk_1003B8820);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "EnhancedEmergency: handling media upload accept from banner", v61, 2u);
      }

      [v52 requestContinue];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong addMediaRequestViewController:v52];
        swift_unknownObjectRelease();
      }

      sub_10023C99C();
    }
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008A14(v23, &unk_1003B8820);
    v8 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v8, v24, "EnhancedEmergency: handleBannerUploadRequestPickerDuringStreaming, but passcode unlock failed or self is nil, early return", v25, 2u);
    }
  }

LABEL_41:
}

void sub_100196364()
{
  v1 = v0;
  v2 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController;
  v3 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (!v3)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v15 = type metadata accessor for Logger();
    sub_100008A14(v15, &unk_1003B8820);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (sub_100014274(v17))
    {
      v18 = sub_100005924();
      *v18 = 0;
      sub_1001A0998();
      _os_log_impl(v19, v20, v21, v22, v18, 2u);
      sub_100005340();
    }

    v23 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest];
    v24 = objc_allocWithZone(type metadata accessor for EmergencyWebRTCViewController());
    v25 = v23;
    sub_1001828F4();
    v27 = v26;
    sub_1001808A0(v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_shouldHideVideoStreamingControls]);
    v28 = *&v1[v2];
    *&v1[v2] = v27;
    v29 = v27;

    v59 = v29;
    v30 = v1;
    v31 = sub_1001A0D7C();
    LOBYTE(v28) = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v31, v28))
    {
      v32 = sub_100190988();
      v33 = sub_1001A0AC8();
      *v32 = 138412546;
      *(v32 + 4) = v1;
      *(v32 + 12) = 2112;
      *(v32 + 14) = v59;
      *v33 = v1;
      v33[1] = v27;
      v34 = v59;
      v35 = v1;
      sub_1001A0980();
      _os_log_impl(v36, v37, v38, v39, v32, 0x16u);
      sub_10014EA98(&qword_1003B0230);
      sub_1001A0BAC();
      swift_arrayDestroy();
      sub_1000053DC();
      sub_100005368();
    }

    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong addWebRTCViewController:v59];
      swift_unknownObjectRelease();
    }

    sub_100194B38();
    goto LABEL_28;
  }

  v58 = v3;
  sub_100193CA8();
  if (v4)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v5 = type metadata accessor for Logger();
    sub_1000058D0(v5, &unk_1003B8820);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (sub_100005908(v7))
    {
      v8 = sub_100005924();
      sub_10000539C(v8);
      sub_100007F34();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      sub_10000558C();
    }

    sub_10016FC20();
    sub_1001888F4();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      [v14 hideWebRTCViewController:v58];
      swift_unknownObjectRelease();
    }

    sub_1001984D8();
    [v1 transitionToRTTState:1];
    goto LABEL_28;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v41 = type metadata accessor for Logger();
  sub_1000058D0(v41, &unk_1003B8820);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (sub_100005908(v43))
  {
    v44 = sub_100005924();
    sub_10000539C(v44);
    sub_100007F34();
    _os_log_impl(v45, v46, v47, v48, v49, 2u);
    sub_10000558C();
  }

  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    [v50 addWebRTCViewController:v58];
    swift_unknownObjectRelease();
  }

  v51 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingState];
  if (v51 == 7)
  {
    if (v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequestHasBeenAccepted] == 1)
    {
      sub_10016FC20();
      sub_1001878E0();
      goto LABEL_28;
    }
  }

  else if (v51 != 4)
  {
    v52 = sub_10016FC20();
    sub_1001882FC(v52, v53);
    [v1 transitionToRTTState:3];
LABEL_28:
    sub_100005D80();

    return;
  }

  sub_100189284();
  v56 = swift_unknownObjectWeakLoadStrong();
  if (!v56)
  {
    goto LABEL_28;
  }

  [v56 bringWebRTCViewControllerToFront:v58];

  sub_100005D80();

  swift_unknownObjectRelease();
}

void sub_100196850(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  if (v4)
  {
    v5 = v4;
    sub_100005C44();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11[4] = a1;
    v11[5] = v6;
    sub_100006C90();
    v11[1] = 1107296256;
    sub_100008D60();
    v11[2] = v7;
    v11[3] = a2;
    v8 = _Block_copy(v11);

    v9 = sub_1001A0C44();
    [v9 v10];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_100196924(char a1)
{
  if ((a1 & 1) != 0 && (swift_beginAccess(), (v1 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v2 = v1;
    v3 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController;
    v4 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
    if (v4)
    {
      goto LABEL_11;
    }

    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, &unk_1003B8820);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "EnhancedEmergency: handling media upload button events, didn't find an media request viewController, create a new one", v8, 2u);
    }

    v9 = [objc_allocWithZone(type metadata accessor for EmergencyMediaRequestViewController()) init];
    v10 = *&v2[v3];
    *&v2[v3] = v9;
    v11 = v9;

    v12 = v2;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412546;
      *(v15 + 4) = v12;
      *v16 = v2;
      *(v15 + 12) = 2112;
      v17 = *&v2[v3];
      *(v15 + 14) = v17;
      v16[1] = v17;
      v18 = v12;
      v19 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "EnhancedEmergency: emergencyCoordinator :%@ created emegencyMediaRequestViewController: %@", v15, 0x16u);
      sub_10014EA98(&qword_1003B0230);
      swift_arrayDestroy();
    }

    *&v11[OBJC_IVAR___PHEmergencyMediaRequestViewController_delegate + 8] = &off_10035C988;
    swift_unknownObjectWeakAssign();

    v4 = *&v2[v3];
    if (v4)
    {
LABEL_11:
      v12 = v4;
      sub_100193CA8();
      if (v20)
      {
        if (qword_1003A9F40 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100008A14(v21, &unk_1003B8820);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v22, v23, "EnhancedEmergency: we have an ongoing video streaming request, pause the video and handle handleMediaUploadButtonTapped", v24, 2u);
        }

        sub_100196364();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong addMediaRequestViewController:v12];
        swift_unknownObjectRelease();
      }

      if (qword_1003A9F40 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100008A14(v26, &unk_1003B8820);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "EnhancedEmergency: handling media upload button events", v29, 2u);
      }

      if (*&v2[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadState] == 1)
      {
        sub_10023C99C();
      }
    }
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008A14(v30, &unk_1003B8820);
    v12 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v12, v31, "EnhancedEmergency: wanna handle MediaUploadButtonTapped, but passcode unlock failed or self is nil", v32, 2u);
    }
  }
}

void sub_100196E70()
{
  sub_100005D28();
  v1 = v0;
  v3 = v2;
  type metadata accessor for UUID();
  sub_10000688C();
  __chkstk_darwin(v4, v5);
  sub_100005BD0();
  v8 = (v7 - v6);
  v9 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest];
  if (!v9)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v11 = type metadata accessor for Logger();
    sub_1000058D0(v11, &unk_1003B8820);
    v65 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v65, v12))
    {
      goto LABEL_27;
    }

    v13 = sub_100005384();
    v14 = sub_100005D4C();
    sub_1001A0B6C(v14);
    *v13 = 136315138;
    sub_1001A09FC();
    v15 = sub_1001A0A14();
    v17 = sub_1001A0D34(v15, v16);

    *(v13 + 4) = v17;
    sub_1001A0CE4(&_mh_execute_header, v18, v19, "EnhancedEmergency: trying to update state: %s for video streaming request but it's nil");
    sub_100005B2C(v8);
    sub_10000558C();
    sub_1000088EC();
LABEL_24:

    goto LABEL_25;
  }

  v65 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest];
  if (v3 == 1)
  {
    v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequestHasBeenAccepted] = 1;
    v10 = v9;
  }

  else
  {
    v20 = v9;
    if (![v0 isShownAboveCoverSheet] || *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState] != 4)
    {
      [v0 transitionToRTTState:1];
    }
  }

  v21 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingState;
  if (*&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingState] != v3)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v34 = type metadata accessor for Logger();
    sub_1000058D0(v34, &unk_1003B8820);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = sub_100005384();
      v38 = sub_100005D4C();
      v66[0] = v38;
      *v37 = 136315138;
      sub_1001A09FC();
      v39 = sub_1001A0A14();
      sub_1001A0CA4(v39, v40);
      sub_1001A0B78();

      *(v37 + 4) = &qword_1002F9000;
      sub_1001A0AE0(&_mh_execute_header, v35, v36, "EnhancedEmergency: set video streaming state to: %s");
      sub_100005B2C(v38);
      sub_1000088EC();
      sub_100005BB8();
    }

    *&v1[v21] = v3;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (sub_100014274(v42))
    {
      v43 = sub_100005384();
      v44 = sub_100005D4C();
      sub_1001A0B6C(v44);
      *v43 = 136315138;
      sub_1001A09FC();
      v45 = sub_1001A0A14();
      v47 = sub_100008ADC(v45, v46, v66);

      *(v43 + 4) = v47;
      sub_1001A0BD0();
      _os_log_impl(v48, v49, v50, v51, v43, 0xCu);
      sub_100005B2C(&qword_1002F9000);
      sub_10000558C();
      sub_1000053DC();
    }

    v52 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
    if (v52)
    {
      v53 = v52;
      v54 = [v65 ID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      UUID._bridgeToObjectiveC()();
      v55 = sub_1001A0A68();
      v56(v55);
      sub_100008C18();
      v57 = swift_allocObject();
      v57[2] = v3;
      v57[3] = v65;
      v57[4] = v1;
      sub_100014250(v57);
      sub_10003036C(COERCE_DOUBLE(1107296256));
      v66[2] = v58;
      v66[3] = &unk_10035CED8;
      v59 = _Block_copy(v66);
      v60 = v65;
      v61 = v1;

      sub_1001A0C84(v62, "handleResponse:forRequest:completion:");

      _Block_release(v59);
LABEL_25:
      sub_100007B28();
      return;
    }

    goto LABEL_24;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v22 = type metadata accessor for Logger();
  sub_1000058D0(v22, &unk_1003B8820);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (sub_100014274(v24))
  {
    v25 = sub_100005384();
    v26 = sub_100005D4C();
    v66[0] = v26;
    *v25 = 136315138;
    sub_1001A09FC();
    v27 = sub_1001A0A14();
    v29 = sub_1001A0D34(v27, v28);

    *(v25 + 4) = v29;
    sub_1001A0998();
    sub_1001A0D64(v30, v31, v32, v33);
    sub_100005B2C(v26);
    sub_100005340();
    sub_100005368();

    goto LABEL_24;
  }

LABEL_27:
  sub_100007B28();
}

void sub_100197388()
{
  sub_100005D28();
  v2 = v0;
  v4 = v3;
  type metadata accessor for UUID();
  sub_10000688C();
  __chkstk_darwin(v5, v6);
  sub_100005BD0();
  v9 = (v8 - v7);
  v10 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest];
  if (v10)
  {
    v11 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadState;
    v12 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadState];
    v13 = qword_1003A9F40;
    v74 = v10;
    if (v12 != v4)
    {
      v73 = v9;
      if (v13 != -1)
      {
        sub_10000755C();
      }

      v35 = type metadata accessor for Logger();
      sub_1000058D0(v35, &unk_1003B8820);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = sub_100005384();
        v72 = sub_100005D4C();
        v75[0] = v72;
        *v38 = 136315138;
        sub_1001A09FC();
        v39 = sub_1001A0A14();
        sub_1001A0CA4(v39, v40);
        sub_1001A0B78();

        *(v38 + 4) = v12;
        sub_1001A0AE0(&_mh_execute_header, v36, v37, "EnhancedEmergency: set media upload state to: %s");
        v12 = v72;
        sub_100005B2C(v72);
        sub_10000558C();
        sub_1001A0964();
      }

      *&v2[v11] = v4;
      if (v4 == 4)
      {
        v41 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequestCount;
        v42 = *&v2[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequestCount];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          __break(1u);
          return;
        }

        *&v2[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequestCount] = v44;
        v45 = v2;
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v12 = sub_100005384();
          *v12 = 134217984;
          *(v12 + 4) = *&v2[v41];

          _os_log_impl(&_mh_execute_header, v46, v47, "EnhancedEmergency: User has NotNow(ed) the media upload request. NotNow Request count: %ld", v12, 0xCu);
          sub_10000558C();
        }

        else
        {

          v46 = v45;
        }
      }

      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (sub_100014274(v51))
      {
        v52 = sub_100005384();
        v53 = sub_100005D4C();
        sub_1001A0B6C(v53);
        *v52 = 136315138;
        sub_1001A09FC();
        v54 = sub_1001A0A14();
        v56 = sub_100008ADC(v54, v55, v75);

        *(v52 + 4) = v56;
        sub_1001A0BD0();
        _os_log_impl(v57, v58, v59, v60, v52, 0xCu);
        sub_100005B2C(v12);
        sub_10000558C();
        sub_1000053DC();
      }

      v61 = *&v2[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
      if (v61)
      {
        v62 = v61;
        v63 = [v74 ID];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        UUID._bridgeToObjectiveC()();
        v64 = sub_1001A0A68();
        v65(v64);
        sub_100008C18();
        v66 = swift_allocObject();
        v66[2] = v4;
        v66[3] = v74;
        v66[4] = v2;
        sub_100014250(v66);
        sub_10003036C(COERCE_DOUBLE(1107296256));
        v75[2] = v67;
        v75[3] = &unk_10035CE88;
        v68 = _Block_copy(v75);
        v69 = v74;
        v70 = v2;

        sub_1001A0C84(v71, "handleResponse:forRequest:completion:");

        _Block_release(v68);
LABEL_30:
        sub_100007B28();
        return;
      }

LABEL_29:

      goto LABEL_30;
    }

    if (v13 != -1)
    {
      sub_10000755C();
    }

    v14 = type metadata accessor for Logger();
    sub_1000058D0(v14, &unk_1003B8820);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (sub_100014274(v16))
    {
      v17 = sub_100005384();
      v18 = sub_100005D4C();
      v75[0] = v18;
      *v17 = 136315138;
      sub_1001A09FC();
      v19 = sub_1001A0A14();
      v21 = sub_1001A0D34(v19, v20);

      *(v17 + 4) = v21;
      sub_1001A0998();
      sub_1001A0D64(v22, v23, v24, v25);
      sub_100005B2C(v18);
      sub_100005340();
      sub_100005368();

      goto LABEL_29;
    }
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v26 = type metadata accessor for Logger();
    sub_1000058D0(v26, &unk_1003B8820);
    v74 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v27))
    {
      v28 = sub_100005384();
      v29 = sub_100005D4C();
      sub_1001A0B6C(v29);
      *v28 = 136315138;
      sub_1001A09FC();
      v30 = sub_1001A0A14();
      v32 = sub_1001A0D34(v30, v31);

      *(v28 + 4) = v32;
      sub_1001A0CE4(&_mh_execute_header, v33, v34, "EnhancedEmergency: trying to update state: %s for media upload request but it's nil");
      sub_100005B2C(v1);
      sub_10000558C();
      sub_1000088EC();
      goto LABEL_29;
    }
  }

  sub_100007B28();
}

void sub_1001978E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, const char *a25)
{
  sub_100008E10();
  a23 = v25;
  a24 = v31;
  if (v32)
  {
    v33 = v29;
    v34 = v27;
    swift_errorRetain();
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v35 = type metadata accessor for Logger();
    sub_100008A14(v35, &unk_1003B8820);
    swift_errorRetain();
    v36 = v34;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = sub_100005D4C();
      v40 = sub_1001A0AC8();
      v41 = sub_100005D4C();
      a12 = v41;
      *v39 = 136315650;
      type metadata accessor for CLEEDRequestState(0);
      v42 = String.init<A>(reflecting:)();
      v44 = sub_100008ADC(v42, v43, &a12);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2112;
      *(v39 + 14) = v36;
      *v40 = v36;
      *(v39 + 22) = 2112;
      swift_errorRetain();
      v45 = v36;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 24) = v46;
      v40[1] = v46;
      sub_1000089EC();
      _os_log_impl(v47, v48, v49, v33, v39, 0x20u);
      sub_10014EA98(&qword_1003B0230);
      swift_arrayDestroy();
      sub_100005BB8();
      sub_100005B2C(v41);
      sub_1001A0964();
      sub_10000558C();

LABEL_12:
      sub_10000681C();
      return;
    }

    sub_10000681C();
  }

  else
  {
    v50 = v26;
    if (!v26)
    {
      goto LABEL_12;
    }

    v51 = v30;
    v52 = v28;
    v53 = a25;
    objc_opt_self();
    v54 = swift_dynamicCastObjCClass();
    if (!v54)
    {
      goto LABEL_12;
    }

    v55 = *v51;
    v56 = *&v52[*v51];
    *&v52[*v51] = v54;
    v75 = v50;

    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v57 = type metadata accessor for Logger();
    sub_1000058D0(v57, &unk_1003B8820);
    v58 = v52;
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = sub_100005D4C();
      v62 = sub_1001A0AC8();
      v63 = sub_100005D4C();
      a12 = v63;
      *v61 = 136315650;
      type metadata accessor for CLEEDRequestState(0);
      v64 = String.init<A>(reflecting:)();
      v66 = sub_100008ADC(v64, v65, &a12);

      *(v61 + 4) = v66;
      v67 = *&v52[v55];
      *(v61 + 12) = 2112;
      *(v61 + 14) = v67;
      *(v61 + 22) = 2112;
      *(v61 + 24) = 0;
      *v62 = v67;
      v62[1] = 0;
      v68 = v67;
      sub_1000089EC();
      _os_log_impl(v69, v70, v71, v53, v61, 0x20u);
      sub_10014EA98(&qword_1003B0230);
      swift_arrayDestroy();
      sub_1001A0964();
      sub_100005B2C(v63);
      sub_100005BB8();
      sub_100005340();

      goto LABEL_12;
    }

    sub_10000681C();
  }
}

void sub_100197C6C()
{
  sub_100005D28();
  v1 = v0;
  v3 = v2;
  type metadata accessor for UUID();
  sub_10000688C();
  __chkstk_darwin(v4, v5);
  sub_100005BD0();
  sub_1001A0A5C();
  if (!v3)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v8 = type metadata accessor for Logger();
    sub_1000058D0(v8, &unk_1003B8820);
    v61 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005E00();
    if (os_log_type_enabled(v61, v9))
    {
      v10 = sub_100005924();
      sub_100006810(v10);
      sub_1001A0C64(&_mh_execute_header, v11, v12, "EnhancedEmergency: new video streaming request is nil");
      sub_1000088EC();
    }

    goto LABEL_24;
  }

  v6 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation];
  if (v6)
  {
    v7 = v3;
    v60 = v6;
    if (([v60 newStreamingAllowed] & 1) == 0)
    {
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v31 = type metadata accessor for Logger();
      sub_1000058D0(v31, &unk_1003B8820);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (sub_100007DC4(v33))
      {
        v34 = sub_100005924();
        sub_100005DF4(v34);
        sub_100007F44(&_mh_execute_header, v35, v36, "EnhancedEmergency: setVideoStreamingRequest, new video streaming request not allowed due to mitigations in place, early return");
        sub_100005368();
      }

      goto LABEL_24;
    }
  }

  else
  {
    v13 = v3;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v14 = type metadata accessor for Logger();
  sub_100008A14(v14, &unk_1003B8820);
  v62 = v3;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_100005384();
    v18 = sub_100008A70();
    *v17 = 138412290;
    *(v17 + 4) = v62;
    *v18 = v3;
    v19 = v62;
    sub_1000089EC();
    sub_1001A0AE0(v20, v21, v22, v23);
    sub_1000306A4(v18, &qword_1003B0230);
    sub_100005BB8();
    sub_1001A0964();
  }

  sub_100193E0C();
  if (v24 & 1) != 0 || (sub_100193CA8(), (v25))
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (sub_100007DC4(v27))
    {
      v28 = sub_100005924();
      sub_100005DF4(v28);
      sub_100007F44(&_mh_execute_header, v29, v30, "EnhancedEmergency: we have an ongoing request, wait until it's finished before it can be opened");
      sub_100005368();
    }

LABEL_24:
    sub_100007B28();

    return;
  }

  v39 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_streamingRequestCount;
  v40 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_streamingRequestCount];
  v41 = __OFADD__(v40, 1);
  v42 = v40 + 1;
  if (v41)
  {
    __break(1u);
  }

  else
  {
    *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_streamingRequestCount] = v42;
    v43 = v1;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (sub_100014274(v45))
    {
      v46 = sub_100005384();
      *v46 = 134217984;
      *(v46 + 4) = *&v1[v39];

      sub_1001A0BD0();
      sub_1001A0AE0(v47, v48, v49, v50);
      sub_1001A0964();
    }

    else
    {

      v44 = v43;
    }

    v51 = *&v43[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest];
    *&v43[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest] = v3;
    v52 = v62;

    *&v43[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingState] = 3;
    v53 = *&v43[OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector];
    v54 = [v52 ID];
    sub_1001A0AF8();

    v55 = UUID.uuidString.getter();
    v57 = v56;
    v58 = sub_1000055C0();
    v59(v58);
    sub_1001A3BD8(1, v55, v57);

    sub_1001947B4();
    sub_100007B28();
  }
}

void sub_1001980D0()
{
  sub_100005D28();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  sub_10000688C();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  sub_100005BD0();
  v11 = v10 - v9;
  if (!v3)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v14 = type metadata accessor for Logger();
    sub_1000058D0(v14, &unk_1003B8820);
    v52 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005E00();
    if (os_log_type_enabled(v52, v15))
    {
      v16 = sub_100005924();
      sub_100006810(v16);
      sub_1001A0C64(&_mh_execute_header, v17, v18, "EnhancedEmergency: new media upload request is nil");
      sub_1000088EC();
    }

    goto LABEL_24;
  }

  v12 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
  if (v12)
  {
    v13 = v3;
    v51 = v12;
    if (([v51 newUploadAllowed] & 1) == 0)
    {
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v43 = type metadata accessor for Logger();
      sub_1000058D0(v43, &unk_1003B8820);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (sub_100007DC4(v45))
      {
        v46 = sub_100005924();
        sub_100005DF4(v46);
        sub_100007F44(&_mh_execute_header, v47, v48, "EnhancedEmergency: setMediaUploadRequest, new upload request not allowed due to mitigations in place, early return");
        sub_100005368();
      }

      goto LABEL_24;
    }
  }

  else
  {
    v19 = v3;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v20 = type metadata accessor for Logger();
  sub_100008A14(v20, &unk_1003B8820);
  v53 = v3;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = sub_100005384();
    v24 = sub_100008A70();
    *v23 = 138412290;
    *(v23 + 4) = v53;
    *v24 = v3;
    v25 = v53;
    sub_1001A0BD0();
    sub_1001A0AE0(v26, v27, v28, v29);
    sub_1000306A4(v24, &qword_1003B0230);
    sub_100005BB8();
    sub_1001A0964();
  }

  sub_100193E0C();
  if ((v30 & 1) == 0)
  {
    v36 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest);
    *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest) = v3;
    v37 = v53;

    *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadState) = 3;
    v38 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
    v39 = [v37 ID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v40 = UUID.uuidString.getter();
    v42 = v41;
    (*(v6 + 8))(v11, v4);
    sub_1001A3BD8(2, v40, v42);

    sub_100194C30();
    sub_100007B28();
    return;
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (sub_100007DC4(v32))
  {
    v33 = sub_100005924();
    sub_100005DF4(v33);
    sub_100007F44(&_mh_execute_header, v34, v35, "EnhancedEmergency: we have an ongoing request, wait until it's finished before it can be opened");
    sub_100005368();
  }

LABEL_24:
  sub_100007B28();
}

void sub_100198508()
{
  sub_100005D28();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v50 = v7;
  v51 = v6;
  __chkstk_darwin(v6, v8);
  sub_100005BD0();
  v48 = v10 - v9;
  sub_100008A4C();
  v49 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v47 = v11;
  __chkstk_darwin(v12, v13);
  sub_100005BD0();
  v46 = v15 - v14;
  sub_100008A4C();
  v45 = type metadata accessor for DispatchTime();
  sub_10000688C();
  v17 = v16;
  __chkstk_darwin(v18, v19);
  sub_10000693C();
  v22 = v20 - v21;
  __chkstk_darwin(v23, v24);
  v26 = &v44 - v25;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v27 = type metadata accessor for Logger();
  sub_1000058D0(v27, &unk_1003B8820);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (sub_100014274(v29))
  {
    v30 = sub_100005924();
    sub_100005DF4(v30);
    _os_log_impl(&_mh_execute_header, v28, v29, v31, v4, 2u);
    sub_100005BB8();
  }

  sub_1000064BC(0, &qword_1003AAAB0);
  v32 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v44 = *(v17 + 8);
  v33 = v45;
  v44(v22, v45);
  sub_100005C44();
  v34 = swift_allocObject();
  *(v34 + 16) = v5;
  v52[4] = v4;
  v52[5] = v34;
  sub_10000694C();
  sub_1000095A4(COERCE_DOUBLE(1107296256));
  v52[2] = v35;
  v52[3] = v2;
  v36 = _Block_copy(v52);
  v37 = v5;

  v38 = v46;
  static DispatchQoS.unspecified.getter();
  v52[0] = &_swiftEmptyArrayStorage;
  sub_100008604();
  sub_1001A04EC(v39, v40);
  sub_10014EA98(&unk_1003AAAC0);
  v41 = v33;
  sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0);
  v42 = v48;
  v43 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v36);

  (*(v50 + 8))(v42, v43);
  (*(v47 + 8))(v38, v49);
  v44(v26, v41);
  sub_100007B28();
}

void sub_1001988F0()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_1000058D0(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (sub_100005908(v4))
  {
    v5 = sub_100005924();
    sub_10000539C(v5);
    sub_100007F34();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    sub_10000558C();
  }

  if (*&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper])
  {
    sub_100005C44();
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v15[4] = sub_1001A07C8;
    v15[5] = v11;
    sub_100006C90();
    sub_1001A0AA4();
    v15[2] = sub_100199FD4;
    v15[3] = &unk_10035CC58;
    _Block_copy(v15);
    v12 = sub_1001A0D4C();
    v13 = v1;

    sub_1001A0D04(v14, "fetchAllPendingRequestsWithCompletion:");
    _Block_release(v3);
  }
}

void sub_100198A28(os_log_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v13 = __chkstk_darwin(v11, v12);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1003A9F40 == -1)
    {
LABEL_3:
      v17 = type metadata accessor for Logger();
      sub_100008A14(v17, &unk_1003B8820);
      swift_errorRetain();
      v67 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v67, v18))
      {
LABEL_6:
        v22 = v67;

        return;
      }

      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v67, v18, "EnhancedEmergency: trying to fetch all pending requests, but failed with error: %@", v19, 0xCu);
      sub_1000306A4(v20, &qword_1003B0230);

LABEL_5:

      goto LABEL_6;
    }

LABEL_35:
    swift_once();
    goto LABEL_3;
  }

  if (!a1)
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100008A14(v43, &unk_1003B8820);
    v67 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v67, v44))
    {
      goto LABEL_6;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v67, v44, "EnhancedEmergency: trying to fetch all pending requests, but requestSet is nil", v45, 2u);
    goto LABEL_5;
  }

  v59 = a3;
  v60 = v16;
  v61 = v10;
  v62 = v14;
  v63 = v13;
  v64 = v7;
  v65 = v6;
  v23 = a1 + 7;
  v24 = 1 << LOBYTE(a1[4].isa);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  isa = v25 & a1[7].isa;
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  *&v29 = 136315138;
  v66 = v29;
  v67 = a1;
  if (!isa)
  {
LABEL_14:
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v27)
      {

        return;
      }

      isa = v23[v30].isa;
      ++v28;
      if (isa)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  while (1)
  {
    v30 = v28;
LABEL_17:
    sub_10017039C(a1[6].isa + 40 * (__clz(__rbit64(isa)) | (v30 << 6)), v77);
    v75[0] = v77[0];
    v75[1] = v77[1];
    v76 = v78;
    v31.isa = AnyHashable._bridgeToObjectiveC()().isa;
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v46 = v32;
      sub_1000064BC(0, &qword_1003AAAB0);
      v47 = static OS_dispatch_queue.main.getter();
      v48 = swift_allocObject();
      v49 = v59;
      *(v48 + 16) = v59;
      *(v48 + 24) = v46;
      v72 = sub_1001A07D8;
      v73 = v48;
      aBlock = _NSConcreteStackBlock;
      v69 = 1107296256;
      v50 = &unk_10035CCF8;
      goto LABEL_33;
    }

    v31.isa = AnyHashable._bridgeToObjectiveC()().isa;
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      break;
    }

    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    isa &= isa - 1;
    v34 = type metadata accessor for Logger();
    sub_100008A14(v34, &unk_1003B8820);
    sub_10017039C(v75, &aBlock);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v74 = v38;
      *v37 = v66;
      v39 = AnyHashable.description.getter();
      v41 = v40;
      sub_10016FFB8(&aBlock);
      v42 = sub_100008ADC(v39, v41, &v74);

      *(v37 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v35, v36, "EnhancedEmergency: new pending request is nil or can't cast its type, request: %s", v37, 0xCu);
      sub_100005B2C(v38);
      a1 = v67;
    }

    else
    {

      sub_10016FFB8(&aBlock);
    }

    sub_10016FFB8(v75);
    v28 = v30;
    if (!isa)
    {
      goto LABEL_14;
    }
  }

  v51 = v33;
  sub_1000064BC(0, &qword_1003AAAB0);
  v47 = static OS_dispatch_queue.main.getter();
  v52 = swift_allocObject();
  v49 = v59;
  *(v52 + 16) = v59;
  *(v52 + 24) = v51;
  v72 = sub_1001A07D0;
  v73 = v52;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v50 = &unk_10035CCA8;
LABEL_33:
  v70 = sub_10002E570;
  v71 = v50;
  v53 = _Block_copy(&aBlock);
  v54 = v49;
  *&v66 = v31.isa;

  v55 = v60;
  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_1001A04EC(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags);
  sub_10014EA98(&unk_1003AAAC0);
  sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0);
  v56 = v61;
  v57 = v65;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();

  _Block_release(v53);

  (*(v64 + 8))(v56, v57);
  (*(v62 + 8))(v55, v63);
  sub_10016FFB8(v75);
}

void sub_10019929C(char *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_streamingRequestCount] >= 3)
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008A14(v9, &unk_1003B8820);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "EnhancedEmergency: fetchAllPendingRequest, pendingVideoStreamingRequest, reached maxRequestCountPerRequestType for streaming. Reject the new request", v12, 2u);
    }

    v13 = *&a1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
    if (v13)
    {
      v14 = v13;
      v15 = [a2 ID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v5 + 8))(v8, v4);
      v17 = swift_allocObject();
      *(v17 + 16) = a2;
      *(v17 + 24) = a1;
      aBlock[4] = sub_1001A07E0;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001A0960;
      aBlock[3] = &unk_10035CD48;
      v18 = _Block_copy(aBlock);
      v19 = a2;
      v20 = a1;

      [v14 handleResponse:0 forRequest:isa completion:v18];
      _Block_release(v18);
    }
  }

  else
  {
    sub_100197C6C();
  }
}