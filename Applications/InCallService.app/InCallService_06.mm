void sub_100199550(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, &unk_1003B8820);
    swift_errorRetain();
    v6 = a3;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v6;
      *v9 = v6;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v10 = v6;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      v9[1] = v11;
      _os_log_impl(&_mh_execute_header, oslog, v7, "EnhancedEmergency: fetchAllPendingRequest, pendingVideoStreamingRequest, EED returned error while updating state:Rejected for video streaming request: %@, error: %@", v8, 0x16u);
      sub_10014EA98(&qword_1003B0230);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (a1)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = *(a4 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest);
        *(a4 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest) = v14;
        v16 = a1;

        if (qword_1003A9F40 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100008A14(v17, &unk_1003B8820);
        v18 = a3;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412546;
          *(v21 + 4) = v18;
          *(v21 + 12) = 2112;
          *(v21 + 14) = 0;
          *v22 = v18;
          v22[1] = 0;
          v23 = v18;
          _os_log_impl(&_mh_execute_header, v19, v20, "EnhancedEmergency: fetchAllPendingRequest, pendingVideoStreamingRequest, finished updating state:Rejected for video streaming request: %@, error: %@", v21, 0x16u);
          sub_10014EA98(&qword_1003B0230);
          swift_arrayDestroy();
        }

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "EnhancedEmergency: fetchAllPendingRequest, pendingVideoStreamingRequest, reset videoStreamingRequest due to rate limiting", v26, 2u);
        }
      }
    }

    sub_1001984D8();
  }
}

void sub_100199938(char *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&a1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequestCount] >= 3)
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
      _os_log_impl(&_mh_execute_header, v10, v11, "EnhancedEmergency: fetchAllPendingRequest, reached maxRequestCountPerRequestType for media upload. Reject the new request", v12, 2u);
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
      aBlock[4] = sub_1001A07E8;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001A0960;
      aBlock[3] = &unk_10035CD98;
      v18 = _Block_copy(aBlock);
      v19 = a2;
      v20 = a1;

      [v14 handleResponse:0 forRequest:isa completion:v18];
      _Block_release(v18);
    }
  }

  else
  {
    sub_1001980D0();
  }
}

void sub_100199BEC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100008A14(v5, &unk_1003B8820);
    swift_errorRetain();
    v6 = a3;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412546;
      *(v8 + 4) = v6;
      *v9 = v6;
      *(v8 + 12) = 2112;
      swift_errorRetain();
      v10 = v6;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v11;
      v9[1] = v11;
      _os_log_impl(&_mh_execute_header, oslog, v7, "EnhancedEmergency: fetchAllPendingRequest, pendingMediaUploadRequest, EED returned error while updating state:Rejected for media upload request: %@, error: %@", v8, 0x16u);
      sub_10014EA98(&qword_1003B0230);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    if (a1)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = *(a4 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest);
        *(a4 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest) = v14;
        v16 = a1;

        if (qword_1003A9F40 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_100008A14(v17, &unk_1003B8820);
        v18 = a3;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412546;
          *(v21 + 4) = v18;
          *(v21 + 12) = 2112;
          *(v21 + 14) = 0;
          *v22 = v18;
          v22[1] = 0;
          v23 = v18;
          _os_log_impl(&_mh_execute_header, v19, v20, "EnhancedEmergency: fetchAllPendingRequest,pendingMediaUploadRequest, finished updating state:Rejected for media upload request: %@, error: %@", v21, 0x16u);
          sub_10014EA98(&qword_1003B0230);
          swift_arrayDestroy();
        }

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v24, v25, "EnhancedEmergency: fetchAllPendingRequest,pendingMediaUploadRequest, reset mediaUploadRequest due to rate limiting", v26, 2u);
        }
      }
    }

    sub_1001984A8();
  }
}

uint64_t sub_100199FD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_10019A074()
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
    v15[4] = sub_1001A074C;
    v15[5] = v11;
    sub_100006C90();
    sub_1001A0AA4();
    v15[2] = sub_1001A0960;
    v15[3] = &unk_10035CBB8;
    _Block_copy(v15);
    v12 = sub_1001A0D4C();
    v13 = v1;

    sub_1001A0D04(v14, "fetchCurrentStreamingRequestWithCompletion:");
    _Block_release(v3);
  }
}

void sub_10019A1AC()
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
    v15[4] = sub_1001A06D0;
    v15[5] = v11;
    sub_100006C90();
    sub_1001A0AA4();
    v15[2] = sub_1001A0960;
    v15[3] = &unk_10035CB18;
    _Block_copy(v15);
    v12 = sub_1001A0D4C();
    v13 = v1;

    sub_1001A0D04(v14, "fetchCurrentMediaUploadRequestWithCompletion:");
    _Block_release(v3);
  }
}

void sub_10019A2E4()
{
  sub_100005D28();
  v38 = v2;
  v40 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v13 = v12;
  __chkstk_darwin(v14, v15);
  sub_100005BD0();
  sub_1001A09DC();
  v16 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  __chkstk_darwin(v17, v18);
  sub_100005BD0();
  v22 = v21 - v20;
  if (v8)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v23 = type metadata accessor for Logger();
    sub_1000058D0(v23, &unk_1003B8820);
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v24))
    {
      v25 = sub_100005384();
      v26 = sub_100008A70();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v41, v24, v38, v25, 0xCu);
      sub_1000306A4(v26, &qword_1003B0230);
      sub_100005368();
      sub_1000088EC();
    }

    sub_100007B28();
  }

  else
  {
    v39 = v19;
    sub_1000064BC(0, &qword_1003AAAB0);
    v37 = static OS_dispatch_queue.main.getter();
    sub_100006BE8();
    v30 = swift_allocObject();
    *(v30 + 16) = v10;
    *(v30 + 24) = v6;
    v42[4] = v4;
    v42[5] = v30;
    sub_10000694C();
    sub_1000095A4(COERCE_DOUBLE(1107296256));
    v42[2] = v31;
    v42[3] = v40;
    v32 = _Block_copy(v42);
    v33 = v10;
    v34 = v6;

    static DispatchQoS.unspecified.getter();
    v42[0] = &_swiftEmptyArrayStorage;
    sub_100008604();
    sub_1001A04EC(v35, v36);
    sub_10014EA98(&unk_1003AAAC0);
    sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0);
    sub_1001A09C0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);

    (*(v13 + 8))(v0, v11);
    (*(v39 + 8))(v22, v16);
    sub_100007B28();
  }
}

void sub_10019A640(void *a1, uint64_t a2, void *a3, void *a4, SEL *a5)
{
  if (a1)
  {
    *(a2 + *a3) = 3;
    v6 = *(a2 + *a4);
    *(a2 + *a4) = a1;
    v8 = a1;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong *a5];
      swift_unknownObjectRelease();
    }
  }
}

void sub_10019A6E0()
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
    v15[4] = sub_1001A06C8;
    v15[5] = v11;
    sub_100006C90();
    sub_1001A0AA4();
    v15[2] = sub_1001A0960;
    v15[3] = &unk_10035CAC8;
    _Block_copy(v15);
    v12 = sub_1001A0D4C();
    v13 = v1;

    sub_1001A0D04(v14, "fetchMitigationsWithCompletion:");
    _Block_release(v3);
  }
}

void sub_10019A818(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008A14(v2, &unk_1003B8820);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      *v4 = 138412290;
      swift_errorRetain();
      v6 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v6;
      *v5 = v6;
      _os_log_impl(&_mh_execute_header, oslog, v3, "EnhancedEmergency: fetchMitigations, failed with error: %@", v4, 0xCu);
      sub_1000306A4(v5, &qword_1003B0230);

LABEL_6:
    }
  }

  else if (a1)
  {
    oslog = a1;
    sub_10019AAC4();
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008A14(v7, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "EnhancedEmergency: fetchMitigations, but mitigations is nil", v9, 2u);
      goto LABEL_6;
    }
  }
}

void sub_10019AA3C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  a2;
  v6 = a3;
  v5(a2, a3);

  sub_100005D80();
}

void sub_10019AAC4()
{
  sub_100005D28();
  v3 = v2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  sub_10000688C();
  v24 = v5;
  __chkstk_darwin(v6, v7);
  sub_100005BD0();
  sub_1001A09DC();
  v23 = type metadata accessor for DispatchQoS();
  sub_10000688C();
  v9 = v8;
  __chkstk_darwin(v10, v11);
  sub_100005BD0();
  v14 = v13 - v12;
  sub_1000064BC(0, &qword_1003AAAB0);
  v15 = static OS_dispatch_queue.main.getter();
  sub_100006BE8();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  *(v16 + 24) = v3;
  v25[4] = sub_1001A06C0;
  v25[5] = v16;
  sub_10000694C();
  sub_1000095A4(COERCE_DOUBLE(1107296256));
  v25[2] = v17;
  v25[3] = &unk_10035CA78;
  v18 = _Block_copy(v25);
  v19 = v0;
  v20 = v3;

  static DispatchQoS.unspecified.getter();
  v25[0] = &_swiftEmptyArrayStorage;
  sub_100008604();
  sub_1001A04EC(v21, v22);
  sub_10014EA98(&unk_1003AAAC0);
  sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0);
  sub_1001A09C0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v1, v4);
  (*(v9 + 8))(v14, v23);
  sub_100007B28();
}

void sub_10019AD1C(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
  *(a1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation) = a2;
  v3 = a2;

  sub_10019AD70(v3);
  sub_10019AEC4();
}

void sub_10019AD70(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
  if (v2)
  {
    v14 = v2;
    if ([a1 uploadMigitation] != 2)
    {
      goto LABEL_11;
    }

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
      [Strong requestToDisableMediaUploadButton];

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_11:
    }
  }
}

void sub_10019AEC4()
{
  sub_100190A04();
  v1 = v0;
  v3 = v2;
  if ([v2 dropStreaming])
  {
    sub_100193CA8();
    if (v4)
    {
      v5 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingState];
      if (v5 == 1)
      {
        if (qword_1003A9F40 != -1)
        {
          sub_10000755C();
        }

        v40 = type metadata accessor for Logger();
        sub_1000058D0(v40, &unk_1003B8820);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (sub_100005908(v42))
        {
          v43 = sub_100005924();
          sub_10000539C(v43);
          sub_100007F34();
          _os_log_impl(v44, v45, v46, v47, v48, 2u);
          sub_10000558C();
        }

        v49 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
        if (!v49)
        {
          goto LABEL_33;
        }

        v18 = v49;
        sub_100187F40();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong hideWebRTCViewController:v18];
          swift_unknownObjectRelease();
        }

        v51 = swift_unknownObjectWeakLoadStrong();
        if (!v51)
        {
          goto LABEL_32;
        }

        [v51 requestToAddMitigationLabel];

        swift_unknownObjectRelease();
      }

      else if (v5 == 3)
      {
        v6 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
        if (v6)
        {
          v7 = qword_1003A9F40;
          v8 = v6;
          if (v7 != -1)
          {
            sub_10000755C();
          }

          v9 = type metadata accessor for Logger();
          sub_1000058D0(v9, &unk_1003B8820);
          v10 = Logger.logObject.getter();
          v11 = static os_log_type_t.default.getter();
          if (sub_100014274(v11))
          {
            v12 = sub_100005924();
            *v12 = 0;
            sub_1001A0998();
            _os_log_impl(v13, v14, v15, v16, v12, 2u);
            sub_100005340();
          }

          sub_100187F40();
          sub_10018D1F8();
        }

        if (qword_1003A9F40 == -1)
        {
          goto LABEL_12;
        }

        goto LABEL_52;
      }

LABEL_33:
      v52 = swift_unknownObjectWeakLoadStrong();
      if (v52)
      {
        [v52 requestToDisableVideoStreamingButton];
        swift_unknownObjectRelease();
      }

      *(*&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector] + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingDropped) = 1;
      goto LABEL_36;
    }
  }

  v26 = [v3 dropStreaming];
  v27 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController;
  v28 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v26)
  {
    if (!v28)
    {
LABEL_36:
      sub_100007F98();
      return;
    }

    goto LABEL_33;
  }

  if (!v28)
  {
    goto LABEL_36;
  }

  v29 = v28;
  p_opt_class_meths = &OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource.opt_class_meths;
  if ([v3 streamingFPS] >= 1)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v31 = type metadata accessor for Logger();
    sub_1000058D0(v31, &unk_1003B8820);
    v32 = v3;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (sub_100014274(v34))
    {
      v35 = sub_100005384();
      *v35 = 134217984;
      *(v35 + 4) = [v32 streamingFPS];

      sub_1000089EC();
      _os_log_impl(v36, v37, v38, v39, v35, 0xCu);
      p_opt_class_meths = (&OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource + 48);
      sub_100005BB8();
    }

    else
    {

      v33 = v32;
    }

    [v32 streamingFPS];
    sub_10018A4E4();
  }

  v53 = *&v1[v27];
  if (!v53)
  {
    goto LABEL_36;
  }

  v53;
  if ([v3 streamingBitrate] >= 1)
  {
    if (p_opt_class_meths[488] != -1)
    {
      sub_10000755C();
    }

    v54 = type metadata accessor for Logger();
    sub_1000058D0(v54, &unk_1003B8820);
    v1 = v3;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (sub_100005908(v56))
    {
      v57 = sub_100005384();
      *v57 = 134217984;
      *(v57 + 4) = [v1 streamingBitrate];

      sub_100007F34();
      _os_log_impl(v58, v59, v60, v61, v62, 0xCu);
      sub_10000558C();
    }

    else
    {

      v55 = v1;
    }

    v63 = [v1 streamingBitrate];
    if ((v63 * 1000) >> 64 != (1000 * v63) >> 63)
    {
      __break(1u);
LABEL_52:
      sub_10000755C();
LABEL_12:
      v17 = type metadata accessor for Logger();
      sub_1000058D0(v17, &unk_1003B8820);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (sub_100005908(v19))
      {
        v20 = sub_100005924();
        sub_10000539C(v20);
        sub_100007F34();
        _os_log_impl(v21, v22, v23, v24, v25, 2u);
        sub_10000558C();
      }

LABEL_32:

      goto LABEL_33;
    }

    sub_10018AB2C();
  }

  sub_100007F98();
}

id sub_10019B3CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnhancedEmergencyCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10019B520()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
  if (v1 && *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState) != 4 && swift_unknownObjectWeakLoadStrong())
  {
    v2 = v1;
    v3 = sub_1001A0C44();
    [v3 v4];

    swift_unknownObjectRelease();
  }
}

void sub_10019B608()
{
  v1 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v1)
  {
    v2 = v0;
    v24 = v1;
    sub_100196E70();
    v3 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_tuCall];
    if (v3)
    {
      [v3 setHasEmergencyVideoStream:1];
    }

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

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong insertWebViewUnderButtonControls:v24];
        swift_unknownObjectRelease();
      }

      [v2 transitionToRTTState:2];
    }

    else
    {
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v15 = type metadata accessor for Logger();
      sub_1000058D0(v15, &unk_1003B8820);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (sub_100005908(v17))
      {
        v18 = sub_100005924();
        sub_10000539C(v18);
        sub_100007F34();
        _os_log_impl(v19, v20, v21, v22, v23, 2u);
        sub_10000558C();
      }

      sub_100194F14();
    }
  }
}

void sub_10019B820()
{
  sub_1001A0D94();
  sub_1001A0D1C();
  sub_10000688C();
  __chkstk_darwin(v2, v3);
  sub_100005BD0();
  sub_1001A0A5C();
  v4 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = qword_1003A9F40;
  v26 = v4;
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
    sub_100007B74(&_mh_execute_header, v10, v11, "EnhancedEmergency: emergency coordinator gets notified cancelVideoStreamingRequest");
    sub_1000053DC();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong hideWebRTCViewController:v26];
    swift_unknownObjectRelease();
  }

  sub_1001984D8();
  sub_100196E70();
  v13 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = v13;
  if (![v14 dropStreaming])
  {

LABEL_13:
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {
      goto LABEL_16;
    }

    [v16 requestToAddResumeCameraLabel];
    goto LABEL_15;
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    [v15 requestToAddMitigationLabel];

LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

LABEL_16:
  v17 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest);
  if (v17)
  {
    v18 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
    v19 = v17;
    v20 = v18;
    v21 = [v19 ID];
    sub_1001A0AF8();

    UUID.uuidString.getter();
    sub_1001A0A80();
    v22 = sub_1000055C0();
    v23(v22);
    sub_100016FD8();

LABEL_18:
    sub_1001A0B10();
    return;
  }

  sub_1001A0B10();
}

void sub_10019BAF4()
{
  sub_100005D28();
  v1 = v0;
  v2 = type metadata accessor for UUID();
  sub_10000688C();
  v4 = v3;
  __chkstk_darwin(v5, v6);
  sub_100005BD0();
  v9 = v8 - v7;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v10 = type metadata accessor for Logger();
  sub_100008A14(v10, &unk_1003B8820);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (sub_100014274(v12))
  {
    v13 = sub_100005924();
    *v13 = 0;
    sub_1000089EC();
    _os_log_impl(v14, v15, v16, v17, v13, 2u);
    sub_100005BB8();
  }

  v18 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_videoStreamingRequest);
  if (v18)
  {
    v19 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
    v20 = v18;
    v21 = v19;
    v22 = [v20 ID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = UUID.uuidString.getter();
    v25 = v24;
    (*(v4 + 8))(v9, v2);
    sub_1001A3CB0(v23, v25);
  }

  v26 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
  if (v26)
  {
    v27 = v26;
    if ([v27 dropStreaming])
    {
      v28 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
      if (v28)
      {
        v29 = v28;
        sub_100187F40();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          [Strong hideWebRTCViewController:v29];
          swift_unknownObjectRelease();
        }

        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          [v31 requestToAddMitigationLabel];
          swift_unknownObjectRelease();
        }

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (sub_100007DC4(v33))
        {
          v34 = sub_100005924();
          sub_100005DF4(v34);
          sub_100007F44(&_mh_execute_header, v35, v36, "EnhancedEmergency: continueVideoStreamingRequest, drop streaming because mitigation is being applied");
          sub_100005368();
        }
      }

      goto LABEL_22;
    }
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (sub_100005908(v38))
  {
    v39 = sub_100005924();
    sub_10000539C(v39);
    sub_100007F34();
    _os_log_impl(v40, v41, v42, v43, v44, 2u);
    sub_10000558C();
  }

  v45 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
  if (v45)
  {
    v27 = v45;
    sub_10016FC20();
    sub_1001878E0();
LABEL_22:
  }

  sub_100007B28();
}

void sub_10019BE4C()
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v0 = type metadata accessor for Logger();
  sub_1000058D0(v0, &unk_1003B8820);
  oslog = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100005E00();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = sub_100005924();
    sub_100006810(v2);
    sub_100006D40(&_mh_execute_header, v3, v4, "EnhancedEmergency: emergency coordinator gets notified camera is turned off for remote side", v5, v6, v7, v8, v9, oslog);
    sub_1000088EC();
  }
}

void *sub_10019BF30(const char *a1, SEL *a2)
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v5 = type metadata accessor for Logger();
  sub_1000058D0(v5, &unk_1003B8820);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (sub_100014274(v7))
  {
    v8 = sub_100005924();
    sub_1001906F0(v8);
    sub_1001A0980();
    _os_log_impl(v9, v10, v11, a1, v2, 2u);
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

void sub_10019C084()
{
  sub_100193CA8();
  if (v0)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v1 = type metadata accessor for Logger();
    sub_1000058D0(v1, &unk_1003B8820);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (sub_100005908(v3))
    {
      v4 = sub_100005924();
      sub_10000539C(v4);
      sub_100007F34();
      _os_log_impl(v5, v6, v7, v8, v9, 2u);
      sub_10000558C();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong requestAnimationToFullScreenWebView];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v11 = type metadata accessor for Logger();
    sub_1000058D0(v11, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100005E00();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = sub_100005924();
      sub_100006810(v13);
      sub_100006D40(&_mh_execute_header, v14, v15, "EnhancedEmergency: emergency coordinator gets notified to requestAnimationToFullScreenWebView, but webview is already removed", v16, v17, v18, v19, v20, oslog);
      sub_1000088EC();
    }
  }
}

void sub_10019C250()
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

  [v1 cameraTurnedOffForRemoteSide];
  v11 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController;
  v12 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v12)
  {
    v13 = v12;
    sub_100189F94();

    v14 = *&v1[v11];
    if (v14)
    {
      v17 = v14;
      sub_100196E70();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong hideWebRTCViewController:v17];
        swift_unknownObjectRelease();
      }

      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        [v16 requestToAddErrorLabelWithRetryable:1];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_10019C438()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
  v2 = sub_100008908();
  sub_1001A307C(v2);
}

void sub_10019C544()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
  v2 = sub_100008908();
  sub_1001A3474(v2);
}

void sub_10019C5EC()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
  sub_100008908();
  sub_1001A36EC();
}

void sub_10019C6A8()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
  v2 = sub_100008908();
  sub_1001A35C4(v2);
}

void sub_10019C750(uint64_t a1)
{
  v2 = v1;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v4 = type metadata accessor for Logger();
  sub_1000058D0(v4, &unk_1003B8820);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_100005384();
    v8 = sub_100005D4C();
    v17 = v8;
    *v7 = 136315138;
    v9 = Array.description.getter();
    v11 = sub_100008ADC(v9, v10, &v17);

    *(v7 + 4) = v11;
    sub_1001A0998();
    _os_log_impl(v12, v13, v14, v15, v7, 0xCu);
    sub_100005B2C(v8);
    sub_1000053DC();
    sub_100005340();
  }

  v16 = *(v2 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
  sub_1001A3ED8(a1);
}

void sub_10019C914()
{
  sub_1001A0D94();
  v1 = v0;
  type metadata accessor for UUID();
  sub_10000688C();
  __chkstk_darwin(v2, v3);
  sub_100005BD0();
  v4 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_dataCollector);
    v6 = v4;
    v7 = v5;
    v8 = [v6 ID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = UUID.uuidString.getter();
    v11 = v10;
    v12 = sub_100019DB0();
    v13(v12);
    sub_1001A3CB0(v9, v11);
  }

  v14 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation);
  if (v14)
  {
    v15 = v14;
    if ([v15 uploadMigitation] == 2)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong requestToAddPhotoMitigationLabel];
        swift_unknownObjectRelease();
      }

      v17 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
      if (v17)
      {
        v18 = qword_1003A9F40;
        v19 = v17;
        if (v18 != -1)
        {
          sub_10000755C();
        }

        v20 = type metadata accessor for Logger();
        sub_1000058D0(v20, &unk_1003B8820);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();
        if (sub_100014274(v22))
        {
          v23 = sub_100005924();
          sub_1001906F0(v23);
          sub_100007B74(&_mh_execute_header, v24, v25, "EnhancedEmergency: continueMediaUploadRequest, cannot start upload request due to upload mitigation to drop request");
          sub_1000053DC();
        }

        v26 = swift_unknownObjectWeakLoadStrong();
        if (v26)
        {
          [v26 removeMediaRequestViewController:v19];

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {
      }

      goto LABEL_22;
    }
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v27 = type metadata accessor for Logger();
  sub_1000058D0(v27, &unk_1003B8820);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (sub_100005908(v29))
  {
    v30 = sub_100005924();
    sub_10000539C(v30);
    sub_100007F34();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    sub_10000558C();
  }

  v36 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
  if (v36)
  {
    v37 = v36;
    sub_10023C99C();
  }

  sub_100197388();
LABEL_22:
  sub_1001A0B10();
}

void sub_10019CC0C()
{
  sub_100005D28();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for UUID();
  sub_10000688C();
  v263 = v5;
  __chkstk_darwin(v6, v7);
  sub_100005BD0();
  v262 = v9 - v8;
  sub_100008A4C();
  v10 = type metadata accessor for String.Encoding();
  v11 = sub_100005568(v10);
  __chkstk_darwin(v11, v12);
  sub_100005BD0();
  v272 = (v14 - v13);
  v15 = sub_10014EA98(&qword_1003AAF20);
  v16 = sub_100005568(v15);
  __chkstk_darwin(v16, v17);
  v286 = &v257 - v18;
  sub_100008A4C();
  v282 = type metadata accessor for URL();
  sub_10000688C();
  v298 = v19;
  __chkstk_darwin(v20, v21);
  sub_10000693C();
  v24 = v22 - v23;
  __chkstk_darwin(v25, v26);
  sub_100005E0C();
  sub_10000713C();
  v29 = __chkstk_darwin(v27, v28);
  v31 = &v257 - v30;
  __chkstk_darwin(v29, v32);
  sub_1001A0C24();
  v285 = v33;
  v34 = sub_10014EA98(&qword_1003ABC98);
  v35 = sub_100005568(v34);
  __chkstk_darwin(v35, v36);
  sub_10000693C();
  v39 = v37 - v38;
  __chkstk_darwin(v40, v41);
  sub_100005E0C();
  sub_10000713C();
  __chkstk_darwin(v42, v43);
  sub_100005E0C();
  sub_10000713C();
  __chkstk_darwin(v44, v45);
  sub_1001A0C24();
  v273 = v46;
  sub_100008A4C();
  v47 = type metadata accessor for UTType();
  sub_10000688C();
  v297 = v48;
  __chkstk_darwin(v49, v50);
  sub_10000693C();
  sub_10000713C();
  __chkstk_darwin(v51, v52);
  sub_1001A0C24();
  v296 = v53;
  sub_100008A4C();
  v291 = type metadata accessor for PHPickerResult();
  sub_10000688C();
  v55 = v54;
  __chkstk_darwin(v56, v57);
  sub_10000693C();
  sub_10000713C();
  __chkstk_darwin(v58, v59);
  sub_100005E0C();
  sub_10000713C();
  __chkstk_darwin(v60, v61);
  sub_100005E0C();
  sub_10000713C();
  __chkstk_darwin(v62, v63);
  sub_100005E0C();
  sub_10000713C();
  __chkstk_darwin(v64, v65);
  sub_100005E0C();
  sub_10000713C();
  __chkstk_darwin(v66, v67);
  sub_1001A0C24();
  v295 = v68;
  v69 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaUploadRequest];
  if (!v69)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v79 = type metadata accessor for Logger();
    sub_1000058D0(v79, &unk_1003B8820);
    v300 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_100005E00();
    if (os_log_type_enabled(v300, v80))
    {
      v81 = sub_100005924();
      sub_100006810(v81);
      _os_log_impl(&_mh_execute_header, v300, &OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource.opt_class_meths, "EnhancedEmergency: trying to upload media, but mediaUploadRequest is nil", v4, 2u);
      sub_1000088EC();
    }

    goto LABEL_18;
  }

  v258 = v4;
  v70 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_mitigation];
  v269 = v39;
  if (!v70)
  {
    v84 = v69;
    goto LABEL_23;
  }

  v71 = v69;
  v299 = v70;
  if ([v299 uploadMigitation] != 2)
  {

LABEL_23:
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v85 = type metadata accessor for Logger();
    sub_1000058D0(v85, &unk_1003B8820);

    v288 = v70;
    v86 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100005E00();
    v88 = os_log_type_enabled(v86, v87);
    v267 = v1;
    v260 = v24;
    v287 = v31;
    v300 = v47;
    if (v88)
    {
      v89 = sub_100005384();
      *v89 = 134217984;
      *(v89 + 4) = *(v3 + 16);

      sub_1001A0D64(&_mh_execute_header, v86, &OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource.opt_class_meths, "EnhancedEmergency: the media to be uploaded has count of %ld ");
      sub_100005368();
    }

    else
    {
    }

    v90 = v295;
    v259 = v69;
    v91 = *(v3 + 16);
    sub_1001A0A2C();
    sub_1001A0A38();
    if (v91)
    {
      v96 = *(v93 + 16);
      v95 = v93 + 16;
      v294 = v96;
      v97 = v92 + ((*(v95 + 64) + 32) & ~*(v95 + 64));
      v299 = (v297 + 8);
      v290 = (v95 - 8);
      v266 = v95 + 16;
      v284 = v297 + 32;
      v261 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaSet;
      v278 = v298 + 4;
      v277 = APP_SANDBOX_READ;
      v276 = v298 + 1;
      v275 = SANDBOX_EXTENSION_DEFAULT;
      v289 = *(v95 + 56);
      *&v94 = 136315138;
      v279 = v94;
      v292 = v95;
      p_isa = &v298[2].isa;
      do
      {
        v297 = v97;
        v298 = v91;
        v294(v90);
        static UTType.image.getter();
        v98 = v90;
        v99 = PHPickerResult.itemProvider.getter();
        static UTType.image.getter();
        UTType.identifier.getter();
        v100 = v300;
        v101 = *v299;
        (*v299)(v69, v300);
        sub_100019DB0();
        v102 = String._bridgeToObjectiveC()();

        v103 = sub_1001A0C44();
        v105 = [v103 v104];

        if (v105)
        {
          static UTType.image.getter();
          v106 = 1;
          v107 = v101;
        }

        else
        {
          v108 = PHPickerResult.itemProvider.getter();
          static UTType.movie.getter();
          UTType.identifier.getter();
          v101(v69, v100);
          sub_100019DB0();
          v109 = String._bridgeToObjectiveC()();

          v110 = sub_1001A0C44();
          v112 = [v110 v111];

          v107 = v101;
          if ((v112 & 1) == 0)
          {
            v293 = v101;
            v150 = v280;
            v151 = v291;
            v152 = v294;
            (v294)(v280, v98, v291);
            v153 = sub_1001A0AB0();
            LODWORD(isa) = static os_log_type_t.error.getter();
            if (sub_100014274(isa))
            {
              v154 = v150;
              v155 = v151;
              v156 = sub_100005384();
              v274 = sub_100005D4C();
              *v156 = sub_10000C178(v274).n128_u32[0];
              v157 = v273;
              v152(v273, v154, v151);
              sub_100006848(v157, 0, 1, v151);
              v158 = v157;
              v159 = v268;
              sub_10019F00C(v158, v268);
              if (sub_100006AC0(v159, 1, v151) == 1)
              {
                v55 = &qword_1003ABC98;
                sub_1000306A4(v159, &qword_1003ABC98);
                v160 = 0xE300000000000000;
                v161 = 7104878;
                v162 = v290;
                v163 = v280;
              }

              else
              {
                sub_1001A0BF0();
                v198 = v265;
                v199 = sub_1001A0BC4();
                v200(v199);
                v201 = sub_1001A0B58();
                (v152)(v201);
                v161 = String.init<A>(reflecting:)();
                v160 = v202;
                v162 = v290;
                v163 = v280;
                (*v290)(v198, v155);
                v55 = &qword_1003ABC98;
              }

              sub_1000306A4(v273, &qword_1003ABC98);
              v69 = *v162;
              (*v162)(v163, v155);
              v203 = sub_100008ADC(v161, v160, v301);

              *(v156 + 4) = v203;
              sub_1001A0AE0(&_mh_execute_header, v153, isa, "EnhancedEmergency: can't save result: %s, it's not image or video");
              sub_100005B2C(v274);
              sub_100005BB8();
              sub_1001A0964();

              v204 = sub_1001A098C();
              v293(v204, v300);
              v90 = v295;
              (v69)(v295, v155);
              sub_1001A0A38();
              sub_1001A0A2C();
            }

            else
            {

              v175 = *v290;
              (*v290)(v150, v151);
              sub_1001A098C();
              sub_1001A0B8C();
              v176();
              v177 = sub_1001A0BB8();
              v175(v177);
              v90 = v98;
            }

            goto LABEL_63;
          }

          static UTType.movie.getter();
          v106 = 2;
        }

        v113 = v286;
        v114 = v296;
        v115 = v300;
        v107(v296, v300);
        sub_1001A0BF0();
        v116(v114, v69, v115);
        v117 = v295;
        PHPickerResult._filePromiseURL(contentType:)();
        if (sub_100006AC0(v113, 1, v55) == 1)
        {
          v293 = v107;
          sub_1000306A4(v113, &qword_1003AAF20);
          v118 = v283;
          v119 = sub_1001A0BC4();
          v120 = v291;
          v121 = v294;
          v294(v119);
          v122 = sub_1001A0AB0();
          LODWORD(isa) = static os_log_type_t.error.getter();
          if (sub_100014274(isa))
          {
            v123 = sub_100005384();
            v55 = sub_100005D4C();
            *v123 = sub_10000C178(v55).n128_u32[0];
            v124 = v271;
            v121(v271, v118, v120);
            sub_100006848(v124, 0, 1, v120);
            v125 = v269;
            sub_10019F00C(v124, v269);
            v126 = sub_100006AC0(v125, 1, v120);
            v127 = v290;
            v274 = v290 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            if (v126 == 1)
            {
              sub_1000306A4(v125, &qword_1003ABC98);
              sub_1000306A4(v124, &qword_1003ABC98);
              v69 = *v127;
              v128 = sub_1001A0BB8();
              (v69)(v128);
              v129 = 0xE300000000000000;
              v130 = 7104878;
            }

            else
            {
              sub_1001A0BF0();
              v178 = sub_1001A0BC4();
              v179(v178);
              v180 = sub_1001A0B58();
              (v121)(v180);
              v130 = String.init<A>(reflecting:)();
              v181 = v127;
              v129 = v182;
              v69 = *v181;
              v183 = sub_1001A0BB8();
              (v69)(v183);
              sub_1000306A4(v124, &qword_1003ABC98);
              (v69)(v283, v120);
            }

            v184 = sub_100008ADC(v130, v129, v301);

            *(v123 + 4) = v184;
            _os_log_impl(&_mh_execute_header, v122, isa, "EnhancedEmergency: can't save result: %s, filePromise url is nil", v123, 0xCu);
            sub_100005B2C(v55);
            sub_10000558C();
            sub_100005340();

            sub_1001A0B8C();
            v185();
            v90 = v295;
            v186 = sub_100019DB0();
            (v69)(v186);
            sub_1001A0A38();
            sub_1001A0A2C();
            goto LABEL_63;
          }

          v164 = v117;

          v165 = *v290;
          v166 = sub_1001A0BB8();
          v165(v166);
          sub_1001A0B8C();
          v167();
          (v165)(v164, v120);
          v90 = v164;
          v168 = v298;
        }

        else
        {
          sub_1001A0BF0();
          v131(v285, v113, v55);
          URL.path.getter();
          URL.init(fileURLWithPath:)();

          URL.path.getter();
          v133 = v132;
          String.utf8CString.getter();

          v134 = sandbox_extension_issue_file();

          if (!v134)
          {
            v90 = sub_1001A0AB0();
            static os_log_type_t.error.getter();
            sub_100005E00();
            if (os_log_type_enabled(v90, v169))
            {
              v170 = sub_100005924();
              sub_100005DF4(v170);
              _os_log_impl(&_mh_execute_header, v90, v133, "EnhancedEmergency: sandbox_extension_issue_file failed", v106, 2u);
              sub_100005368();
            }

            v171 = sub_100026F14();
            v133(v171);
            v172 = sub_100030230();
            v133(v172);
            v173 = sub_1001A098C();
            v174 = v115;
LABEL_62:
            v107(v173, v174);
            v220 = sub_100008A58();
            v221(v220);
LABEL_63:
            v168 = v298;
            goto LABEL_67;
          }

          v135 = v272;
          static String.Encoding.utf8.getter();
          String.init(cString:encoding:)();
          if (v136)
          {
            v293 = v107;
            v69 = *p_isa;
            v137 = v270;
            (*p_isa)(v270, v287, v55);
            v138 = v295;
            PHPickerResult.assetIdentifier.getter();
            if (v139)
            {
              v140 = v139;
            }

            else
            {
              v140 = 0xE000000000000000;
            }

            v141 = objc_allocWithZone(CLEEDMediaItem);
            v143 = sub_10019EE9C(v137, v140, v106, v142);
            if (v143)
            {
              v144 = v143;
              swift_beginAccess();
              v145 = v144;
              sub_10019F328(&v302, v145, &qword_1003ABCA0, CLEEDMediaItem_ptr, &unk_1003ABCB8, &unk_1002FC750);
              v146 = v302;
              swift_endAccess();

              v147 = sub_100026F14();
              (v145)(v147);
              v148 = sub_100030230();
              (v145)(v148);
              sub_1001A098C();
              sub_1001A0B8C();
              v149();
              (*v290)(v138, v291);
              sub_1001A0A2C();
              v90 = v138;
            }

            else
            {
              v205 = v260;
              v206 = v287;
              (v69)(v260, v287, v55);
              v207 = sub_1001A0AB0();
              v208 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v207, v208))
              {
                v209 = v205;
                v210 = sub_100005384();
                v211 = sub_100005D4C();
                *v210 = sub_10000C178(v211).n128_u32[0];
                v69 = URL.path.getter();
                v212 = v206;
                v214 = v213;
                isa = v276->isa;
                isa(v209, v282);
                v90 = sub_100008ADC(v69, v214, v301);
                sub_1001A0A38();

                *(v210 + 4) = v90;
                _os_log_impl(&_mh_execute_header, v207, v208, "EnhancedEmergency: trying to create a CLEEDMediaItem with url: %s, but it's nil", v210, 0xCu);
                sub_100005B2C(v211);
                sub_100005BB8();
                sub_100005BB8();

                v215 = isa;
                isa(v212, v55);
              }

              else
              {

                v90 = v276;
                v215 = v276->isa;
                (v276->isa)(v205, v55);
                v215(v206, v55);
              }

              v216 = sub_100030230();
              (v215)(v216);
              v217 = sub_1001A098C();
              v293(v217, v300);
              v222 = sub_100008A58();
              v223(v222);
              sub_1001A0A2C();
            }

            v168 = v298;
            goto LABEL_67;
          }

          v90 = sub_1001A0AB0();
          v187 = static os_log_type_t.error.getter();
          if (!sub_100014274(v187))
          {

            v218 = sub_100026F14();
            v135(v218);
            v219 = sub_100030230();
            v135(v219);
            v173 = sub_1001A098C();
            v174 = v300;
            goto LABEL_62;
          }

          v188 = sub_100005384();
          v189 = sub_100005D4C();
          *v188 = sub_10000C178(v189).n128_u32[0];
          v302 = v134;
          sub_10014EA98(&qword_1003ABCB0);
          v190 = String.init<A>(reflecting:)();
          v192 = sub_100008ADC(v190, v191, v301);

          *(v188 + 4) = v192;
          v168 = v298;
          sub_1001A0A38();
          sub_1001A0D64(&_mh_execute_header, v90, v187, "EnhancedEmergency: Unable to create string from sandbox_extension token:%s");
          sub_100005B2C(v189);
          sub_100005BB8();
          sub_100005368();

          v193 = sub_100026F14();
          v189(v193);
          v194 = sub_100030230();
          v189(v194);
          v195 = sub_1001A098C();
          v107(v195, v300);
          v196 = sub_100008A58();
          v197(v196);
        }

LABEL_67:
        v97 = v297 + v289;
        v91 = (v168 - 1);
      }

      while (v91);
    }

    v224 = v267;
    swift_beginAccess();

    v226 = sub_1001933C8(v225);

    if (v226 < 1)
    {
      v252 = sub_1001A0AB0();
      v253 = static os_log_type_t.error.getter();
      if (sub_100007DC4(v253))
      {
        v254 = sub_100005924();
        sub_100005DF4(v254);
        sub_100007F44(&_mh_execute_header, v255, v256, "EnhancedEmergency: mediaSet count is 0");
        sub_100005368();
      }
    }

    else
    {
      v227 = v224;
      v228 = sub_1001A0AB0();
      v229 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v228, v229))
      {
        v230 = sub_100005384();
        v231 = sub_100005D4C();
        v301[0] = v231;
        *v230 = 136315138;
        sub_1000064BC(0, &qword_1003ABCA0);
        sub_10019EF9C();

        v232 = Set.description.getter();
        v234 = v233;

        v235 = sub_100008ADC(v232, v234, v301);

        *(v230 + 4) = v235;
        sub_100007F34();
        _os_log_impl(v236, v237, v238, v239, v240, 0xCu);
        sub_100005B2C(v231);
        sub_100005340();
        sub_10000558C();
      }

      v241 = *&v227[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
      if (v241)
      {
        sub_1000064BC(0, &qword_1003ABCA0);
        sub_10019EF9C();
        v242 = v241;

        v243 = Set._bridgeToObjectiveC()().super.isa;

        v244 = v259;
        v245 = [v259 ID];
        v246 = v262;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v247 = UUID._bridgeToObjectiveC()().super.isa;
        (*(v263 + 8))(v246, v258);
        sub_100006BE8();
        v248 = swift_allocObject();
        *(v248 + 16) = v244;
        *(v248 + 24) = v227;
        v301[4] = sub_10019F004;
        v301[5] = v248;
        v301[0] = _NSConcreteStackBlock;
        v301[1] = 1107296256;
        v301[2] = sub_10019E9EC;
        v301[3] = &unk_10035C9D8;
        v249 = _Block_copy(v301);
        v250 = v244;
        v251 = v227;

        [v242 mediaUploadList:v243 forRequestID:v247 completion:v249];

        _Block_release(v249);
LABEL_77:
        sub_100007B28();
        return;
      }
    }

    goto LABEL_77;
  }

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v72 = type metadata accessor for Logger();
  sub_1000058D0(v72, &unk_1003B8820);
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();
  if (sub_100007DC4(v74))
  {
    v75 = sub_100005924();
    sub_10000539C(v75);
    _os_log_impl(&_mh_execute_header, v73, v70, "EnhancedEmergency: uploadMedia, cannot uplaod media due to upload mitigation.", v55, 2u);
    sub_10000558C();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong requestToDisableMediaUploadButton];
    swift_unknownObjectRelease();
  }

  v77 = swift_unknownObjectWeakLoadStrong();
  if (v77)
  {
    [v77 requestToAddPhotoMitigationLabel];

    sub_100007B28();

    swift_unknownObjectRelease();
    return;
  }

LABEL_18:
  sub_100007B28();
}

uint64_t sub_10019E3CC(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000064BC(0, &qword_1003AAAB0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a1;
  v15[4] = a3;
  aBlock[4] = sub_1001A04E0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002E570;
  aBlock[3] = &unk_10035CA28;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  swift_errorRetain();
  v18 = a3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001A04EC(&qword_1003B0530, &type metadata accessor for DispatchWorkItemFlags);
  sub_10014EA98(&unk_1003AAAC0);
  sub_10002D9BC(&qword_1003B0540, &unk_1003AAAC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v20);
}

uint64_t sub_10019E6C4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9F40 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008A14(v11, &unk_1003B8820);
  v12 = a1;
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v28 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29[0] = v27;
    *v15 = 136315394;
    v17 = [v12 ID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001A04EC(&qword_1003AAC80, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = sub_100008ADC(v18, v20, v29);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      v23 = v22;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *(v15 + 14) = v22;
    *v16 = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "EnhancedEmergency: finished sending mediaSet for media upload request: %s, error: %@", v15, 0x16u);
    sub_1000306A4(v16, &qword_1003B0230);

    sub_100005B2C(v27);

    a3 = v28;
  }

  else
  {
  }

  v24 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_mediaSet;
  swift_beginAccess();
  *(a3 + v24) = &_swiftEmptySetSingleton;
}

void sub_10019E9EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_10019EA58()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emegencyMediaRequestViewController);
  if (v1)
  {
    v2 = qword_1003A9F40;
    v13 = v1;
    if (v2 != -1)
    {
      sub_10000755C();
    }

    v3 = type metadata accessor for Logger();
    sub_1000058D0(v3, &unk_1003B8820);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (sub_100005908(v5))
    {
      v6 = sub_100005924();
      sub_10000539C(v6);
      sub_100007F34();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      sub_10000558C();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong removeMediaRequestViewController:v13];
      swift_unknownObjectRelease();
    }

    sub_1001984A8();
  }
}

void sub_10019EB74()
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
    v6 = sub_100190988();
    v7 = sub_1001A0AC8();
    *v6 = 138412546;
    *(v6 + 4) = v0;
    *v7 = v0;
    *(v6 + 12) = 2112;
    v8 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
    *(v6 + 14) = v8;
    v7[1] = v8;
    v9 = v0;
    v10 = v8;
    sub_1001A0998();
    _os_log_impl(v11, v12, v13, v14, v6, 0x16u);
    sub_10014EA98(&qword_1003B0230);
    swift_arrayDestroy();
    sub_100005340();
    sub_100005368();
  }

  sub_1001988F0();
}

void sub_10019ECEC()
{
  sub_1001A0D94();
  v2 = v1;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v3 = type metadata accessor for Logger();
  sub_100008A14(v3, &unk_1003B8820);
  v4 = v0;
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_100005D4C();
    v9 = swift_slowAlloc();
    v10 = sub_1001A0A44(v9, 5.7781e-34);
    v11 = *&v4[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRequestHelper];
    *(v8 + 14) = v11;
    *(v8 + 22) = v12;
    *(v8 + 24) = v5;
    v10[1] = v11;
    v10[2] = v5;
    v13 = v4;
    v14 = v5;
    v15 = v11;
    sub_1001A0980();
    _os_log_impl(v16, v17, v18, v19, v8, 0x20u);
    sub_10014EA98(&qword_1003B0230);
    sub_1001A0BAC();
    swift_arrayDestroy();
    sub_1000053DC();
    sub_10000558C();
  }

  sub_10019AAC4();
  sub_1001A0B10();
}

id sub_10019EE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X5>, NSURL *a4@<X8>)
{
  v5 = v4;
  URL._bridgeToObjectiveC()(a4);
  v10 = v9;
  if (a2)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  v12 = String._bridgeToObjectiveC()();

  v13 = [v5 initWithURL:v10 assetIdentifier:v11 sandboxExtension:v12 mediaType:a3];

  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

unint64_t sub_10019EF9C()
{
  result = qword_1003ABCA8;
  if (!qword_1003ABCA8)
  {
    sub_1000064BC(255, &qword_1003ABCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABCA8);
  }

  return result;
}

uint64_t sub_10019F00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003ABC98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019F0F0(void *a1, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      sub_1001A0CC4();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_10019F734(v15, result + 1, a4, a5, a6, v25, v26, v27, v34, v35, v36);
        v29 = v28;
        v39 = v28;
        if (v28[3] <= v28[2])
        {
          sub_10019FB48();
          v29 = v39;
        }

        v30 = v16;
        sub_10019FCE0(v30, v29);

        *v11 = v29;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    NSObject._rawHashValue(seed:)(*(v14 + 40));
    sub_10000664C();
    v21 = ~v20;
    while (1)
    {
      v22 = v19 & v21;
      if (((*(v14 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v40 = *v11;
        v31 = a2;
        sub_10019FE98();
        *v11 = v40;
        *a1 = v31;
        return 1;
      }

      v23 = *(*(v14 + 48) + 8 * v22);
      v24 = static NSObject.== infix(_:_:)();

      if (v24)
      {
        break;
      }

      v19 = v22 + 1;
    }

    v32 = *(*(v14 + 48) + 8 * v22);
    *a1 = v32;
    v33 = v32;
    return 0;
  }

  return result;
}

uint64_t sub_10019F328(void *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    sub_1001A0BC4();
    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      sub_1000064BC(0, a3);
      sub_1001A0CC4();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        sub_10019F598(v15, result + 1, a5, a6, a3, a4, v25, v26, v33, v34, v35);
        v28 = v27;
        v38 = v27;
        if (v27[3] <= v27[2])
        {
          sub_10019FB48();
          v28 = v38;
        }

        v29 = v16;
        sub_10019FCE0(v29, v28);

        *v11 = v28;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_1000064BC(0, a3);
    NSObject._rawHashValue(seed:)(*(v14 + 40));
    sub_10000664C();
    v21 = ~v20;
    while (1)
    {
      v22 = v19 & v21;
      if (((*(v14 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v39 = *v11;
        v30 = a2;
        sub_10019FD60();
        *v11 = v39;
        *a1 = v30;
        return 1;
      }

      v23 = *(*(v14 + 48) + 8 * v22);
      v24 = static NSObject.== infix(_:_:)();

      if (v24)
      {
        break;
      }

      v19 = v22 + 1;
    }

    v31 = *(*(v14 + 48) + 8 * v22);
    *a1 = v31;
    v32 = v31;
    return 0;
  }

  return result;
}

void sub_10019F598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_100008E10();
  if (v13)
  {
    v14 = v12;
    sub_10014EA98(v11);
    v15 = static _SetStorage.convert(_:capacity:)();
    v25 = v15;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        goto LABEL_18;
      }

      sub_1000064BC(0, v14);
      swift_dynamicCast();
      if (*(v15 + 24) <= *(v15 + 16))
      {
        sub_10019FB48();
      }

      v15 = v25;
      v16 = NSObject._rawHashValue(seed:)(*(v25 + 40));
      v17 = -1 << *(v25 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v25 + 56 + 8 * (v18 >> 6))) == 0)
      {
        break;
      }

      sub_1001A0B38();
LABEL_15:
      sub_1001A09A4(v20);
      *(*(v25 + 48) + 8 * v24) = a11;
      ++*(v25 + 16);
    }

    v21 = 0;
    v22 = (63 - v17) >> 6;
    while (++v19 != v22 || (v21 & 1) == 0)
    {
      v23 = v19 == v22;
      if (v19 == v22)
      {
        v19 = 0;
      }

      v21 |= v23;
      if (*(v25 + 56 + 8 * v19) != -1)
      {
        sub_1001A0B24();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    sub_10000681C();
  }
}

void sub_10019F734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_100008E10();
  if (v13)
  {
    v14 = v12;
    sub_10014EA98(v11);
    sub_1001A0BAC();
    v15 = static _SetStorage.convert(_:capacity:)();
    v25 = v15;
    __CocoaSet.makeIterator()();
    while (1)
    {
      if (!__CocoaSet.Iterator.next()())
      {

        goto LABEL_18;
      }

      v14(0);
      swift_dynamicCast();
      if (*(v15 + 24) <= *(v15 + 16))
      {
        sub_10019FB48();
      }

      v15 = v25;
      v16 = NSObject._rawHashValue(seed:)(*(v25 + 40));
      v17 = -1 << *(v25 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v25 + 56 + 8 * (v18 >> 6))) == 0)
      {
        break;
      }

      sub_1001A0B38();
LABEL_15:
      sub_1001A09A4(v20);
      *(*(v25 + 48) + 8 * v24) = a11;
      ++*(v25 + 16);
    }

    v21 = 0;
    v22 = (63 - v17) >> 6;
    while (++v19 != v22 || (v21 & 1) == 0)
    {
      v23 = v19 == v22;
      if (v19 == v22)
      {
        v19 = 0;
      }

      v21 |= v23;
      if (*(v25 + 56 + 8 * v19) != -1)
      {
        sub_1001A0B24();
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
LABEL_18:
    sub_10000681C();
  }
}

uint64_t sub_10019F8EC()
{
  v1 = v0;
  v2 = *v0;
  sub_10014EA98(&qword_1003ABCD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      sub_10019FFCC(0, (v27 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = (*(v2 + 48) + 16 * (v12 | (v5 << 6)));
    v16 = *v15;
    v17 = v15[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v18 = -1 << *(v4 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v4 + 48) + 16 * v21);
    *v26 = v16;
    v26[1] = v17;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v11 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_10019FB48()
{
  sub_100005D28();
  sub_10000CDCC(v2, v3);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v5;
    sub_100007B28();
    return;
  }

  v6 = 0;
  v7 = (v1 + 56);
  v8 = 1 << *(v1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v1 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 56;
  if (!v10)
  {
LABEL_7:
    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      ++v13;
      if (v7[v6])
      {
        sub_1001A09EC();
        v10 = v15 & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v1 + 32);
    if (v24 >= 64)
    {
      sub_10019FFCC(0, (v24 + 63) >> 6, v1 + 56);
    }

    else
    {
      sub_10000664C();
      *v7 = v25;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    sub_1001A0C50();
LABEL_12:
    v16 = NSObject._rawHashValue(seed:)(*(v5 + 40)) & ~(-1 << *(v5 + 32));
    if (((-1 << v16) & ~*(v12 + 8 * (v16 >> 6))) == 0)
    {
      break;
    }

    sub_1001A0C30();
LABEL_21:
    sub_1001A0BDC();
    *(v12 + v21) |= v22;
    sub_1001A0A8C(v23);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  sub_1001A0C10();
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    if (*(v12 + 8 * v17) != -1)
    {
      sub_1001A0BFC();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

unint64_t sub_10019FCE0(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  sub_10000664C();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_10019FD60()
{
  sub_100190A04();
  v3 = v2;
  v5 = v4;
  sub_100034470();
  if (!(!v10 & v9) || (v6 & 1) == 0)
  {
    if (v6)
    {
      sub_1001A0B4C();
      sub_10019FB48();
      goto LABEL_9;
    }

    if (v8 <= v7)
    {
      sub_1001A0B4C();
      sub_1001A0534();
LABEL_9:
      v11 = *v1;
      NSObject._rawHashValue(seed:)(*(*v1 + 40));
      sub_10000664C();
      v14 = ~v13;
      while (1)
      {
        v5 = v12 & v14;
        if (((*(v11 + 56 + (((v12 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v14)) & 1) == 0)
        {
          goto LABEL_13;
        }

        sub_1000064BC(0, v3);
        v15 = *(*(v11 + 48) + 8 * v5);
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          goto LABEL_16;
        }

        v12 = v5 + 1;
      }
    }

    sub_1001A0188();
  }

LABEL_13:
  sub_1001A0B98();
  *(v18 + 8 * v5) = v0;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
    sub_100007F98();
  }
}

void sub_10019FE98()
{
  sub_100005D28();
  v3 = v2;
  v5 = v4;
  sub_100034470();
  if (!(!v10 & v9) || (v6 & 1) == 0)
  {
    if (v6)
    {
      sub_1001A0B4C();
      sub_10019FB48();
      goto LABEL_11;
    }

    if (v8 <= v7)
    {
      sub_1001A0B4C();
      sub_1001A0534();
LABEL_11:
      v16 = *v1;
      NSObject._rawHashValue(seed:)(*(*v1 + 40));
      sub_10000664C();
      v19 = ~v18;
      while (1)
      {
        v5 = v17 & v19;
        if (((*(v16 + 56 + (((v17 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v19)) & 1) == 0)
        {
          goto LABEL_8;
        }

        v3(0);
        v20 = *(*(v16 + 48) + 8 * v5);
        v21 = static NSObject.== infix(_:_:)();

        if (v21)
        {
          goto LABEL_16;
        }

        v17 = v5 + 1;
      }
    }

    sub_1001A0188();
  }

LABEL_8:
  sub_1001A0B98();
  *(v12 + 8 * v5) = v0;
  v13 = *(v11 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_16:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v15;
    sub_100007B28();
  }
}

uint64_t sub_10019FFCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1002FBF10;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_1001A0030()
{
  v1 = v0;
  sub_10014EA98(&qword_1003ABCD0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_1001A0188()
{
  sub_1001A0D94();
  v1 = v0;
  sub_10014EA98(v2);
  v3 = *v0;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 56 + 8 * v7)
    {
      memmove(v6, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        sub_1001A0C50();
LABEL_17:
        v19 = v15 | (v9 << 6);
        v20 = *(*(v3 + 48) + 8 * v19);
        *(*(v5 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      ++v16;
      if (*(v3 + 56 + 8 * v9))
      {
        sub_1001A09EC();
        v13 = v18 & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v5;
    sub_1001A0B10();
  }
}

uint64_t sub_1001A02AC()
{
  v1 = v0;
  v2 = *v0;
  sub_10014EA98(&qword_1003ABCD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = (*(v2 + 48) + 16 * (v11 | (v5 << 6)));
        v15 = *v14;
        v16 = v14[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v17 = -1 << *(v4 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v10 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v10 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        v25 = (*(v4 + 48) + 16 * v20);
        *v25 = v15;
        v25[1] = v16;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v10 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v0;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001A04EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001A0534()
{
  sub_100190A04();
  sub_10000CDCC(v2, v3);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v1 + 16))
  {
    v25 = v0;
    v6 = 0;
    v7 = 1 << *(v1 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v1 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v16 = *(v5 + 40);
        *(*(v1 + 48) + 8 * (v12 | (v6 << 6)));
        v17 = NSObject._rawHashValue(seed:)(v16) & ~(-1 << *(v5 + 32));
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        sub_1001A0C30();
LABEL_21:
        sub_1001A0BDC();
        *(v11 + v22) |= v23;
        sub_1001A0A8C(v24);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      sub_1001A0C10();
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        if (*(v11 + 8 * v18) != -1)
        {
          sub_1001A0BFC();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v0 = v25;
          goto LABEL_25;
        }

        ++v13;
        if (*(v1 + 56 + 8 * v6))
        {
          sub_1001A09EC();
          v9 = v15 & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v0 = v5;
    sub_100007F98();
  }
}

uint64_t sub_1001A0964()
{
}

void sub_1001A09FC()
{
  *(v1 - 88) = v0;

  type metadata accessor for CLEEDRequestState(0);
}

uint64_t sub_1001A0A14()
{

  return String.init<A>(reflecting:)();
}

void *sub_1001A0A44(void *result, float a2)
{
  *v3 = a2;
  *(v3 + 4) = v2;
  *result = v2;
  *(v3 + 12) = 2112;
  return result;
}

uint64_t sub_1001A0AB0()
{

  return Logger.logObject.getter();
}

uint64_t sub_1001A0AC8()
{

  return swift_slowAlloc();
}

void sub_1001A0AE0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1001A0AF8()
{

  return static UUID._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_1001A0C64(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 88);

  _os_log_impl(a1, v8, v4, a4, v5, 2u);
}

id sub_1001A0C84(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

unint64_t sub_1001A0CA4(uint64_t a1, unint64_t a2)
{

  return sub_100008ADC(a1, a2, (v2 - 136));
}

uint64_t sub_1001A0CC4()
{

  return swift_dynamicCast();
}

void sub_1001A0CE4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 144);

  _os_log_impl(a1, v8, v5, a4, v4, 0xCu);
}

id sub_1001A0D04(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_1001A0D1C()
{

  return type metadata accessor for UUID();
}

unint64_t sub_1001A0D34(uint64_t a1, unint64_t a2)
{

  return sub_100008ADC(a1, a2, (v2 - 136));
}

id sub_1001A0D4C()
{

  return v0;
}

void sub_1001A0D64(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_1001A0D7C()
{

  return Logger.logObject.getter();
}

id sub_1001A0DA8()
{
  *&v0[OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_carPlayWindow] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService20CarPlaySceneDelegate_hardwareControlsBroadcaster] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlaySceneDelegate();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1001A0E18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlaySceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001A0EC4(uint64_t a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x66664F6F65646976;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

void *sub_1001A0FA4()
{
  sub_100196364();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result requestToAddResumeCameraLabel];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1001A108C(char a1)
{
  v2 = v1;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v4 = type metadata accessor for Logger();
  sub_100008A14(v4, &unk_1003B8820);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 1702195828;
    }

    else
    {
      v9 = 0x65736C6166;
    }

    if (a1)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    v11 = sub_100008ADC(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency: updating for RTT enabled: %s", v7, 0xCu);
    sub_100005B2C(v8);
    sub_100005BB8();
    sub_10000558C();
  }

  if (a1)
  {
    sub_100193CA8();
    if (v12)
    {
      v13 = v2;
      v14 = 2;
    }

    else
    {
      v13 = v2;
      v14 = 1;
    }
  }

  else
  {
    v13 = v2;
    v14 = 0;
  }

  return [v13 transitionToRTTState:v14];
}

void sub_1001A127C(uint64_t a1)
{
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v3 = type metadata accessor for Logger();
  sub_100008A14(v3, &unk_1003B8820);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_1001A0EC4(*&v4[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState]);
    v10 = sub_100008ADC(v8, v9, &v20);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1001A0EC4(a1);
    v13 = sub_100008ADC(v11, v12, &v20);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency: transitioning from RTT state %s to %s", v7, 0x16u);
    swift_arrayDestroy();
    sub_100005BB8();
    sub_10000558C();
  }

  v14 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState;
  v15 = *&v4[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState];
  if (v15 != a1)
  {
    if (a1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v17 = [Strong getCurrentCall];
      swift_unknownObjectRelease();
      if (!v17)
      {
        return;
      }

      v18 = [v17 isRTT];

      if (!v18)
      {
        return;
      }

      v15 = *&v4[v14];
    }

    *&v4[v14] = a1;
    if (v15 == 4)
    {
      sub_1001A153C();
    }

    switch(a1)
    {
      case 0:
      case 1:
      case 3:
        sub_1001A1DEC();
        goto LABEL_18;
      case 2:
        sub_1001A17B8();
        goto LABEL_18;
      case 4:
        sub_1001A19F0();
LABEL_18:
        v19 = UIAccessibilityLayoutChangedNotification;

        UIAccessibilityPostNotification(v19, 0);
        break;
      default:
        v20 = a1;
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        break;
    }
  }
}

void sub_1001A153C()
{
  v1 = *&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v1)
  {
    v2 = v0;
    v3 = qword_1003A9F40;
    v21 = v1;
    if (v3 != -1)
    {
      sub_10000755C();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8820);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = sub_100005924();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency: leaving pip state, stopping pip and restoring UI", v7, 2u);
      sub_100005BB8();
    }

    if ([v2 isShownAboveCoverSheet])
    {
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (sub_100005908(v9))
      {
        v10 = sub_100005924();
        sub_10000539C(v10);
        sub_1000070F8(&_mh_execute_header, v11, v12, "EnhancedEmergency: ICS shown above cover sheet, resuming video streaming");
        sub_10000558C();
      }

      sub_1001882FC(0, 0);
    }

    v13 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_pipCoordinator;
    v14 = *&v2[OBJC_IVAR___PHEnhancedEmergencyCoordinator_pipCoordinator];
    if (v14)
    {
      v15 = v14;
      sub_10017AE7C();
    }

    sub_10018D110();
    v16 = *&v21[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
    if (v16)
    {
      [v16 setAccessibilityActivateBlock:0];
    }

    v17 = *&v2[v13];
    *&v2[v13] = 0;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong addWebRTCViewController:v21];
      swift_unknownObjectRelease();
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      [v19 hideRTTConversationIfNeeded];
      swift_unknownObjectRelease();
    }

    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      [v20 insertWebViewUnderButtonControls:v21];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1001A17B8()
{
  v1 = v0;
  v2 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_rttRecentMessageViewController;
  v3 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_rttRecentMessageViewController);
  if (v3)
  {
    v4 = [v3 view];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v23 = [v4 superview];

    v6 = v23;
    if (v23)
    {
      goto LABEL_21;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v24 = [Strong getCurrentCall];
  swift_unknownObjectRelease();
  if (!v24)
  {
    return;
  }

  v8 = *(v1 + v2);
  if (v8)
  {
    v9 = *(v1 + v2);
LABEL_11:
    v11 = qword_1003A9F40;
    v12 = v8;
    if (v11 != -1)
    {
      sub_10000755C();
    }

    v13 = type metadata accessor for Logger();
    sub_100008A14(v13, &unk_1003B8820);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      *sub_100005924() = 0;
      sub_100008530(&_mh_execute_header, v16, v17, "EnhancedEmergency: showing RTT message view");
      sub_100005BB8();
    }

    v18 = *(v1 + v2);
    *(v1 + v2) = v9;
    v19 = v9;

    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      [v20 hideCallControls];
      swift_unknownObjectRelease();
    }

    v21 = *(v1 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
    if (v21)
    {
      v22 = v21;
      sub_10015821C(v19);
    }

    goto LABEL_20;
  }

  v10 = [objc_opt_self() viewControllerForCall:v24];
  if (v10)
  {
    v9 = v10;
    v8 = 0;
    goto LABEL_11;
  }

LABEL_20:
  v6 = v24;
LABEL_21:
}

void sub_1001A19F0()
{
  v1 = v0;
  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v2 = type metadata accessor for Logger();
  sub_100008A14(v2, &unk_1003B8820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    *sub_100005924() = 0;
    sub_100008530(&_mh_execute_header, v5, v6, "EnhancedEmergency: showing RTT conversation and starting pip");
    sub_100005BB8();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong showRTTConversation];
    swift_unknownObjectRelease();
  }

  v8 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController];
  if (v8 && swift_unknownObjectWeakLoadStrong())
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v33 = v8;
      v31 = [v10 view];
      swift_unknownObjectRelease();
      if (v31)
      {
        v11 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_rttRecentMessageViewController];
        if (v11)
        {
          v12 = v11;
          sub_10015884C(v12);
        }

        if ([v1 isShownAboveCoverSheet])
        {
          v13 = Logger.logObject.getter();
          v14 = static os_log_type_t.default.getter();
          if (sub_100005908(v14))
          {
            v15 = sub_100005924();
            sub_10000539C(v15);
            sub_1000070F8(&_mh_execute_header, v16, v17, "EnhancedEmergency: ICS shown above cover sheet, pausing video streaming and not starting pip");
            sub_10000558C();
          }

          sub_1001888F4();
        }

        else
        {
          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19)
          {
            [v19 removeWebRTCViewControllerForPIP:v33];
            swift_unknownObjectRelease();
          }

          v20 = objc_allocWithZone(type metadata accessor for EnhancedEmergencyPIPCoordinator());
          v21 = sub_1001A24A0(v32, v33, v20);
          v22 = OBJC_IVAR___PHEnhancedEmergencyCoordinator_pipCoordinator;
          v23 = *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_pipCoordinator];
          *&v1[OBJC_IVAR___PHEnhancedEmergencyCoordinator_pipCoordinator] = v21;
          v24 = v21;

          *&v24[OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_delegate + 8] = &off_10035CFE8;
          swift_unknownObjectWeakAssign();

          v25 = *&v1[v22];
          if (v25)
          {
            v26 = v25;
            sub_10017ADA4();
          }
        }

        sub_10018CE00();
        v27 = *&v33[OBJC_IVAR___EmergencyWebRTCViewController_webRTCView];
        if (v27)
        {
          v28 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_1001A25DC;
          aBlock[5] = v28;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1001CC768;
          aBlock[3] = &unk_10035D020;
          v29 = _Block_copy(aBlock);
          v30 = v27;

          [v30 setAccessibilityActivateBlock:v29];

          _Block_release(v29);
          return;
        }

        v18 = v32;
      }

      else
      {
        v18 = v33;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1001A1DEC()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_rttRecentMessageViewController);
  if (v1)
  {
    v2 = v0;
    v3 = qword_1003A9F40;
    v13 = v1;
    if (v3 != -1)
    {
      sub_10000755C();
    }

    v4 = type metadata accessor for Logger();
    sub_100008A14(v4, &unk_1003B8820);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (sub_100005908(v6))
    {
      v7 = sub_100005924();
      sub_10000539C(v7);
      sub_1000070F8(&_mh_execute_header, v8, v9, "EnhancedEmergency: showing call controls");
      sub_10000558C();
    }

    v10 = *(v2 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
    if (v10)
    {
      v11 = v10;
      sub_10015884C(v13);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong showCallControls];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

BOOL sub_1001A1FA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    [Strong transitionToRTTState:2];
  }

  return v1 != 0;
}

void sub_1001A2010()
{
  if (*&v0[OBJC_IVAR___PHEnhancedEmergencyCoordinator_eedRTTState] == 4)
  {
    v1 = v0;
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v2 = type metadata accessor for Logger();
    sub_100008A14(v2, &unk_1003B8820);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (sub_100005908(v4))
    {
      v5 = sub_100005924();
      sub_10000539C(v5);
      sub_1000070F8(&_mh_execute_header, v6, v7, "EnhancedEmergency: got appWillResignActive notification, stopping pip");
      sub_10000558C();
    }

    [v1 transitionToRTTState:2];
  }
}

id sub_1001A2138()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = [Strong getAudioRouteMenu];
  swift_unknownObjectRelease();
  return v1;
}

void sub_1001A21E0()
{
  v1 = *(v0 + OBJC_IVAR___PHEnhancedEmergencyCoordinator_emergencyWebRTCViewController);
  if (v1)
  {
    v2 = v1;
    sub_1001576F8();
  }
}

uint64_t sub_1001A2294()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (!v1)
  {
    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v2;
  if (!v2)
  {
    swift_unknownObjectRelease();
    return v3;
  }

  v4 = [v2 currentInCallScene];
  if (!v4)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v5 = v4;
  if ([v4 isBeingShownAboveCoverSheet])
  {
    swift_unknownObjectRelease();

    return 1;
  }

  else
  {
    v3 = [v3 isPresentingFullScreenOverlayCallUI];
    swift_unknownObjectRelease();
  }

  return v3;
}

unint64_t sub_1001A23E8()
{
  result = qword_1003ABD28;
  if (!qword_1003ABD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABD28);
  }

  return result;
}

void sub_1001A243C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setOverrideInterruptionExemptionIdentifier:v4];
}

char *sub_1001A24A0(void *a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_presentationController] = a2;
  v6 = objc_allocWithZone(PGPictureInPictureProxy);
  v7 = a2;
  result = [v6 initWithControlsStyle:4 viewController:v7];
  if (result)
  {
    v9 = result;

    *&a3[OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_pictureInPictureProxy] = v9;
    *&a3[OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_sourceView] = a1;
    v15.receiver = a3;
    v15.super_class = type metadata accessor for EnhancedEmergencyPIPCoordinator();
    v10 = a1;
    v11 = objc_msgSendSuper2(&v15, "init");
    v12 = OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_pictureInPictureProxy;
    v13 = *&v11[OBJC_IVAR____TtC13InCallService31EnhancedEmergencyPIPCoordinator_pictureInPictureProxy];
    v14 = v11;
    [v13 setDelegate:{v14, v15.receiver, v15.super_class}];
    sub_1001A243C(0xD000000000000014, 0x80000001002A8510, *&v11[v12]);

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001A25E4(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CallParticipantsViewController();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  [v1 setHandlesCallWaitingCalls:1];
  v3 = [objc_opt_self() defaultCenter];
  v4 = TUCallCenterVideoCallStatusChangedNotification;
  v5 = [objc_opt_self() mainQueue];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1001A2D00;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001A27D0;
  v9[3] = &unk_10035D070;
  v7 = _Block_copy(v9);

  v8 = [v3 addObserverForName:v4 object:0 queue:v5 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();
}

void sub_1001A2774()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong updateCallGroups];
  }
}

uint64_t sub_1001A27D0(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1001A2918()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentAudioAndVideoCallGroups];

  sub_1000064BC(0, &qword_1003AAF18);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1001A2A18(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CallParticipantsViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCallDisplayStyleManager:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1001A2AB0(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CallParticipantsViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCallDisplayStyleManager:contactsCache:", a1, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_1001A2B6C(void *a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    sub_1000064BC(0, &qword_1003AFB10);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CallParticipantsViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithCallDisplayStyleManager:contactsCache:contacts:", a1, a2, v6.super.isa);

  if (v7)
  {
  }

  return v7;
}

id sub_1001A2CA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CallParticipantsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001A2D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestType] = a1;
  v4 = &v3[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestID];
  *v4 = a2;
  *(v4 + 1) = a3;
  *&v3[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestArrivalTime] = CFAbsoluteTimeGetCurrent();
  *&v3[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestShownToUserTime] = 0xBFF0000000000000;
  *&v3[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestActedUponByUserTime] = 0xBFF0000000000000;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for PerRequestMetricData();
  return objc_msgSendSuper2(&v6, "init");
}

id sub_1001A2E14()
{
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_bitRateArray] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_frameRateArray] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_packetLossArray] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_jitterRateArray] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewErrorDefault] = -32767;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_requestMetricDataSet] = &_swiftEmptySetSingleton;
  v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingRequestReceived] = 0;
  v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingDropped] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minBitRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxBitRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minFrameRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxFrameRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxPacketLoss] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minJitterRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxJitterRate] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minZoomLevel] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxZoomLevel] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_totalBytesTransmittedWebRTCStream] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime] = 0xBFF0000000000000;
  v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchTurnedOnByButtonPress] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingDuration] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_emergencyCallStartTime] = CFAbsoluteTimeGetCurrent();
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoDuration] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoDuration] = 0;
  v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_firstQualityMessageAfterStreamingWasUnpaused] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime] = 0xBFF0000000000000;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingDuration] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCQualityMessageCountSinceStreamingStart] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_previousWebRTCState] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_currentWebRTCState] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewError] = -32767;
  v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewErrorRecovery] = 1;
  *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraFacing] = 1;
  v1 = &v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingInterface];
  *v1 = 0x64696C61766E49;
  v1[1] = 0xE700000000000000;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for EnhancedEmergencyDataCollector();
  return objc_msgSendSuper2(&v3, "init");
}

void sub_1001A307C(uint64_t a1)
{
  v2 = v1;
  v4 = SOSUIWebRTCQualityMessage.framesPerSecond.getter();
  v5 = sub_100008818(v4);
  v6 = -1.0;
  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = -1.0;
  }

  v9 = SOSUIWebRTCQualityMessage.bitrate.getter();
  v10 = sub_100008818(v9);
  if (v7)
  {
    v11 = v10;
  }

  else
  {
    v11 = -1.0;
  }

  v12 = SOSUIWebRTCQualityMessage.packetLoss.getter();
  v13 = sub_100008818(v12);
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1.0;
  }

  v15 = SOSUIWebRTCQualityMessage.jitter.getter();
  v16 = sub_100008818(v15);
  if (v7)
  {
    v17 = v16;
  }

  else
  {
    v17 = -1.0;
  }

  v18 = SOSUIWebRTCQualityMessage.bytesSent.getter();
  v19 = sub_100008818(v18);
  if (v7)
  {
    v6 = v19;
  }

  v20 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime;
  sub_100008A88();
  if (!(v29 ^ v21 | v7))
  {
    v22 = *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCQualityMessageCountSinceStreamingStart);
    v21 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v21)
    {
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCQualityMessageCountSinceStreamingStart) = v23;
  }

  SOSUIWebRTCStateName.rawValue.getter();
  if (a1 == sub_100007DEC())
  {
    sub_100008A88();
    if (!(v29 ^ v21 | v7))
    {
      v24 = *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCQualityMessageCountSinceStreamingStart);
      if (v24 == 1)
      {
        *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_firstQualityMessageAfterStreamingWasUnpaused) = 1;
        v25 = -1.0;
        if (v11 <= -1.0)
        {
          goto LABEL_40;
        }

        goto LABEL_25;
      }
    }
  }

  LOBYTE(v24) = 0;
  *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_firstQualityMessageAfterStreamingWasUnpaused) = 0;
  v25 = -1.0;
  if (v11 > -1.0)
  {
LABEL_25:
    v26 = *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minBitRate);
    v27 = v26 != v25;
    if (v11 < v26)
    {
      v27 = 0;
    }

    if ((v24 & 1) == 0 && !v27 && *(v2 + v20) > 0.0)
    {
      *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minBitRate) = v11;
    }

    v28 = *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxBitRate);
    v29 = v28 == v25 || v28 < v11;
    if (v29)
    {
      *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxBitRate) = v11;
    }

    if ((v24 & 1) == 0)
    {
      sub_100008A88();
      if (!(v29 ^ v21 | v7))
      {
        v30 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_bitRateArray;
        sub_100216884();
        sub_100216954(*(*(v2 + v30) + 16));
        sub_1000053F8(*(v2 + v30));
        *(v31 + 32) = v11;
        *(v2 + v30) = v32;
      }
    }

LABEL_40:
    if (v8 <= -1.0)
    {
      goto LABEL_60;
    }

    goto LABEL_43;
  }

  if (v8 > -1.0)
  {
LABEL_43:
    sub_1001A6034();
    if (v7)
    {
      v35 = 1;
    }

    else
    {
      v35 = v8 < v34;
    }

    if (v35 && (*(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_firstQualityMessageAfterStreamingWasUnpaused) & 1) == 0 && *(v2 + v20) > 0.0)
    {
      *(v2 + v33) = v8;
    }

    sub_1001A6034();
    if (v7)
    {
      v38 = 1;
    }

    else
    {
      v38 = v37 < v8;
    }

    if (v38)
    {
      *(v2 + v36) = v8;
    }

    if ((*(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_firstQualityMessageAfterStreamingWasUnpaused) & 1) == 0)
    {
      sub_100008A88();
      if (!(v29 ^ v21 | v7))
      {
        v39 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_frameRateArray;
        sub_100216884();
        sub_100034C2C();
        sub_1000053F8(*(v2 + v39));
        *(v40 + 32) = v8;
        *(v2 + v39) = v41;
      }
    }

LABEL_60:
    if (v14 <= -1.0)
    {
      goto LABEL_71;
    }

    goto LABEL_63;
  }

  if (v14 > -1.0)
  {
LABEL_63:
    v42 = *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxPacketLoss);
    if (v42 == -1.0 || v42 < v14)
    {
      *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxPacketLoss) = v14;
    }

    sub_100008A88();
    if (!(v29 ^ v21 | v7))
    {
      v44 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_packetLossArray;
      sub_100216884();
      sub_100034C2C();
      sub_1000053F8(*(v2 + v44));
      *(v45 + 32) = v14;
      *(v2 + v44) = v46;
    }

LABEL_71:
    if (v17 <= -1.0)
    {
LABEL_87:
      v25 = -1.0;
      goto LABEL_88;
    }

LABEL_72:
    sub_1001A6034();
    if (v7)
    {
      v49 = 1;
    }

    else
    {
      v49 = v17 < v48;
    }

    if (v49 && *(v2 + v20) > 0.0)
    {
      *(v2 + v47) = v17;
    }

    sub_1001A6034();
    if (v7)
    {
      v52 = 1;
    }

    else
    {
      v52 = v51 < v17;
    }

    if (v52)
    {
      *(v2 + v50) = v17;
    }

    sub_100008A88();
    if (!(v29 ^ v21 | v7))
    {
      v53 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_jitterRateArray;
      sub_100216884();
      sub_100216954(*(*(v2 + v53) + 16));
      sub_1000053F8(*(v2 + v53));
      *(v54 + 32) = v17;
      *(v2 + v53) = v55;
    }

    goto LABEL_87;
  }

  if (v17 > -1.0)
  {
    goto LABEL_72;
  }

LABEL_88:
  if (v6 <= v25)
  {
    return;
  }

  v56 = v6 + *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_totalBytesTransmittedWebRTCStream);
  if (COERCE__INT64(fabs(v56)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_98;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v56 >= 9.22337204e18)
  {
LABEL_100:
    __break(1u);
    return;
  }

  if (v56 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_totalBytesTransmittedWebRTCStream) = v56;
  }
}

void sub_1001A3428(double a1)
{
  if (a1 > -1.0)
  {
    v2 = *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minZoomLevel);
    if (v2 == -1.0 || v2 > a1)
    {
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minZoomLevel) = a1;
    }

    v4 = *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxZoomLevel);
    if (v4 == -1.0 || v4 < a1)
    {
      *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxZoomLevel) = a1;
    }
  }
}

void sub_1001A3474(char a1)
{
  v2 = v1;
  if (qword_1003A9F40 != -1)
  {
    sub_100007704();
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
    _os_log_impl(&_mh_execute_header, v5, v6, "EnhancedEmergency:torchStateChangeTo,torchTurnedOn:%{BOOL}d", v7, 8u);
    sub_100005BB8();
  }

  if (a1)
  {
    *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime) = CFAbsoluteTimeGetCurrent();
    v8 = 1;
  }

  else
  {
    v9 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime;
    sub_1000361E4();
    if (v10)
    {
      return;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v8 = 0;
    v12 = vabdd_f64(Current, *(v2 + v9));
    v13 = *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration);
    if (v13 > 0.0)
    {
      v12 = v13 + v12;
    }

    *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration) = v12;
    *(v2 + v9) = 0xBFF0000000000000;
  }

  *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchTurnedOnByButtonPress) = v8;
}

void sub_1001A35C4(uint64_t a1)
{
  if (a1 == 1)
  {
    v3 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime;
    if (*(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime) > 0.0)
    {
      v4 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingDuration;
      Current = CFAbsoluteTimeGetCurrent();
      *(v1 + v4) = sub_10000A468(Current, *(v1 + v3));
      *(v1 + v3) = 0xBFF0000000000000;
    }

    if (*(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchTurnedOnByButtonPress) == 1)
    {
      v6 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime;
      if (*(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime) <= 0.0)
      {
        *(v1 + v6) = CFAbsoluteTimeGetCurrent();
      }
    }

LABEL_10:
    *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraFacing) = a1;
    return;
  }

  if (!a1)
  {
    *(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime) = CFAbsoluteTimeGetCurrent();
    v7 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime;
    if (*(v1 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime) > 0.0)
    {
      v8 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration;
      v9 = CFAbsoluteTimeGetCurrent();
      *(v1 + v8) = sub_10000A468(v9, *(v1 + v7));
      *(v1 + v7) = 0xBFF0000000000000;
    }

    goto LABEL_10;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

uint64_t sub_1001A36EC()
{
  v2 = v0;
  switch(SOSUIWebRTCState.state.getter())
  {
    case 0:
      v4 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime;
      *(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime) = 0xBFF0000000000000;
      *(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime) = 0xBFF0000000000000;
      goto LABEL_20;
    case 1:
      v1 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_currentWebRTCState;
      v16 = SOSUIWebRTCStateName.rawValue.getter();
      if (v16 == SOSUIWebRTCStateName.rawValue.getter())
      {
        sub_10000593C(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime);
        if (!(v7 ^ v8 | v6))
        {
          v17 = &OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoDuration;
LABEL_40:
          v24 = *v17;
          Current = CFAbsoluteTimeGetCurrent();
          *(v2 + v24) = sub_10000A468(Current, *v16);
          *v16 = -1.0;
          goto LABEL_41;
        }
      }

      SOSUIWebRTCStateName.rawValue.getter();
      if (v16 == sub_100007DEC())
      {
        sub_10000593C(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime);
        if (!(v7 ^ v8 | v6))
        {
          v17 = &OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoDuration;
          goto LABEL_40;
        }
      }

LABEL_41:
      SOSUIWebRTCStateName.rawValue.getter();
      if (v16 == sub_100007DEC())
      {
        v26 = SOSUIWebRTCCameraFacing.rawValue.getter();
        if (v26 == SOSUIWebRTCCameraFacing.rawValue.getter())
        {
          *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime) = CFAbsoluteTimeGetCurrent();
        }
      }

      if (*(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewError) != -32767)
      {
        *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewErrorRecovery) = 1;
      }

      v27 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime;
      sub_1000361E4();
      if (!(!v6 & v28))
      {
        *(v2 + v27) = CFAbsoluteTimeGetCurrent();
      }

      if (*(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchTurnedOnByButtonPress) == 1)
      {
        v15 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONStartTime;
        sub_1000361E4();
        if (!(!v6 & v28))
        {
LABEL_50:
          *(v2 + v15) = CFAbsoluteTimeGetCurrent();
        }
      }

      goto LABEL_54;
    case 2:
      v10 = SOSUIWebRTCStateName.rawValue.getter();
      if (v10 == SOSUIWebRTCStateName.rawValue.getter())
      {
        sub_1000361E4();
        if (!(v7 ^ v8 | v6))
        {
          v1 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoDuration;
          v11 = CFAbsoluteTimeGetCurrent();
          sub_10000C368(v11);
        }
      }

      sub_1000361E4();
      if (!(v7 ^ v8 | v6))
      {
        v1 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingDuration;
        v12 = CFAbsoluteTimeGetCurrent();
        sub_10000C368(v12);
      }

      sub_1000361E4();
      if (!(v7 ^ v8 | v6))
      {
        v1 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingDuration;
        v13 = CFAbsoluteTimeGetCurrent();
        sub_10000C368(v13);
      }

      sub_1000361E4();
      if (!(v7 ^ v8 | v6))
      {
        v1 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration;
        v14 = CFAbsoluteTimeGetCurrent();
        sub_10000C368(v14);
      }

      *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime) = CFAbsoluteTimeGetCurrent();
      goto LABEL_53;
    case 3:
      *(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime) = CFAbsoluteTimeGetCurrent();
      v15 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime;
      sub_1000361E4();
      if (!v7)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    case 4:
      v3 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime;
      *(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime) = 0xBFF0000000000000;
      *(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime) = 0xBFF0000000000000;
      *(v0 + v3) = 0xBFF0000000000000;
      v4 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime;
LABEL_20:
      *(v0 + v4) = 0xBFF0000000000000;
      goto LABEL_53;
    case 5:
    case 7:
      *(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime) = 0xBFF0000000000000;
      *(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingStartTime) = 0xBFF0000000000000;
      *(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingStartTime) = 0xBFF0000000000000;
      *(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime) = 0xBFF0000000000000;
      goto LABEL_53;
    case 6:
      v1 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_currentWebRTCState;
      v5 = SOSUIWebRTCStateName.rawValue.getter();
      if (v5 == SOSUIWebRTCStateName.rawValue.getter())
      {
        sub_10000593C(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime);
        if (!(v7 ^ v8 | v6))
        {
          v9 = &OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoDuration;
LABEL_28:
          v1 = *v9;
          v18 = CFAbsoluteTimeGetCurrent();
          *&v1[v2] = sub_10000A468(v18, *v5);
          *v5 = -1.0;
          goto LABEL_29;
        }
      }

      SOSUIWebRTCStateName.rawValue.getter();
      if (v5 == sub_100007DEC())
      {
        sub_10000593C(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime);
        if (!(v7 ^ v8 | v6))
        {
          v9 = &OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoDuration;
          goto LABEL_28;
        }
      }

LABEL_29:
      sub_1000361E4();
      if (!(v7 ^ v8 | v6))
      {
        v1 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingDuration;
        v19 = CFAbsoluteTimeGetCurrent();
        sub_10000C368(v19);
      }

      sub_1000361E4();
      if (!(v7 ^ v8 | v6))
      {
        v1 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingDuration;
        v20 = CFAbsoluteTimeGetCurrent();
        sub_10000C368(v20);
      }

      sub_1000361E4();
      if (!(v7 ^ v8 | v6))
      {
        v1 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration;
        v21 = CFAbsoluteTimeGetCurrent();
        sub_10000C368(v21);
      }

      v22 = SOSUIWebRTCState.error.getter();
      if (v22)
      {
        v1 = v22;
        v23 = SOSUIWebRTCErrorMessage.errorCode.getter();
      }

      else
      {
        v23 = -32767;
      }

      *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewError) = v23;
      *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewErrorRecovery) = 0;
LABEL_53:
      *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCQualityMessageCountSinceStreamingStart) = 0;
LABEL_54:
      SOSUIWebRTCState.state.getter();
      v29 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_currentWebRTCState;
      SOSUIWebRTCStateName.rawValue.getter();
      sub_1000072EC();
      result = SOSUIWebRTCStateName.rawValue.getter();
      if (v1 != result)
      {
        *(v2 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_previousWebRTCState) = *(v2 + v29);
        result = SOSUIWebRTCState.state.getter();
        *(v2 + v29) = result;
      }

      return result;
    case 8:
      sub_1001A456C();
      goto LABEL_54;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return result;
  }
}

void sub_1001A3BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(type metadata accessor for PerRequestMetricData());
  sub_10000B45C();

  v9 = sub_1001A2D08(a1, a2, a3);
  swift_beginAccess();
  v10 = v9;
  sub_10019F0C4(&v12, v10);
  v11 = v12;
  swift_endAccess();

  if (a1 == 1)
  {
    *(v4 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingRequestReceived) = 1;
  }
}

void sub_1001A3CBC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_requestMetricDataSet;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if ((v7 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for PerRequestMetricData();
    sub_1001A5FA4();
    Set.Iterator.init(_cocoa:)();
    v7 = v24;
    v8 = v25;
    v3 = v26;
    v9 = v27;
    v10 = v28;
  }

  else
  {
    v8 = v7 + 56;
    sub_100007B94();
    v10 = v11 & v12;

    v9 = 0;
  }

  v13 = (v3 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v14 = v9;
    v15 = v10;
    v16 = v9;
    if (!v10)
    {
      break;
    }

LABEL_9:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v7 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_23:
      sub_10016D304();
      return;
    }

    while (1)
    {
      v19 = *&v18[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestID] == a1 && *&v18[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestID + 8] == a2;
      if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v20 = *a3;
        sub_1001A6028();
        if (v21)
        {
          *&v18[v20] = CFAbsoluteTimeGetCurrent();
        }
      }

      v9 = v16;
      v10 = v17;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for PerRequestMetricData();
        swift_dynamicCast();
        v18 = v23;
        v16 = v9;
        v17 = v10;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_23;
    }

    v15 = *(v8 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1001A3ED8(uint64_t a1)
{
  v2 = v1;
  v65 = 0;
  if ((getifaddrs(&v65) & 0x80000000) == 0)
  {
    v4 = v65;
    if (v65)
    {
      v5 = a1 + 32;
      v6 = 1;
      p_opt_class_meths = &OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource.opt_class_meths;
      v57 = v2;
      v58 = a1;
      while (1)
      {
        if ((v6 & 1) == 0)
        {
          v4 = v4->ifa_next;
        }

        v8 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;
        if (!v4)
        {
          break;
        }

        v6 = 0;
        if (v4->ifa_name)
        {
          v9 = String.init(cString:)();
          v8 = v10;
          ifa_addr = v4->ifa_addr;
          if (ifa_addr)
          {
            v60 = v9;
            v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
            *(v12 + 16) = 1025;
            bzero((v12 + 32), 0x401uLL);
            sa_family = ifa_addr->sa_family;
            v14 = sa_family == 2 || sa_family == 30;
            if (v14 && !getnameinfo(ifa_addr, ifa_addr->sa_len, (v12 + 32), 0x401u, 0, 0, 2))
            {
              v15 = *(v12 + 16);
              if (!v15)
              {
                goto LABEL_64;
              }

              if (*(v12 + 32))
              {
                v16 = 0;
                v17 = v15 - 1;
                while (v17 != v16)
                {
                  if (!*(v12 + 33 + v16++))
                  {
                    goto LABEL_22;
                  }
                }

                __break(1u);
LABEL_64:
                __break(1u);
                goto LABEL_65;
              }

LABEL_22:
              v56 = v4;

              v62 = static String._fromUTF8Repairing(_:)();
              v20 = v19;

              if (p_opt_class_meths[488] != -1)
              {
                sub_100007704();
                swift_once();
              }

              v21 = type metadata accessor for Logger();
              sub_100008A14(v21, &unk_1003B8820);

              v22 = Logger.logObject.getter();
              v23 = static os_log_type_t.default.getter();

              v63 = v20;
              v59 = v8;
              if (os_log_type_enabled(v22, v23))
              {
                v24 = swift_slowAlloc();
                v64[0] = swift_slowAlloc();
                *v24 = 136315394;
                *(v24 + 4) = sub_100008ADC(v62, v20, v64);
                *(v24 + 12) = 2080;
                *(v24 + 14) = sub_100008ADC(v60, v8, v64);
                _os_log_impl(&_mh_execute_header, v22, v23, "EnhancedEmergency:processNetworkInterfaceForStreamingSession,ipAddressFromIFConfig:%s,interface name:%s", v24, 0x16u);
                swift_arrayDestroy();
                a1 = v58;
                sub_100005BB8();
                sub_100005BB8();
              }

              v61 = *(a1 + 16);
              if (v61)
              {
                v25 = 0;
                while (1)
                {
                  v27 = *(v5 + 16 * v25);
                  v26 = *(v5 + 16 * v25++ + 8);
                  v28 = HIBYTE(v26) & 0xF;
                  if ((v26 & 0x2000000000000000) == 0)
                  {
                    v28 = v27 & 0xFFFFFFFFFFFFLL;
                  }

                  v64[0] = v27;
                  v64[1] = v26;
                  v64[2] = 0;
                  v64[3] = v28;

                  while (1)
                  {
                    v29 = String.Iterator.next()();
                    if (!v29.value._object)
                    {
                      break;
                    }

                    if (v29.value._countAndFlagsBits != 91 || v29.value._object != 0xE100000000000000)
                    {
                      sub_1001A6010();
                      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
                      v33 = v29.value._countAndFlagsBits == 93 && v29.value._object == 0xE100000000000000;
                      if ((v31 & 1) == 0 && !v33)
                      {
                        sub_1001A6010();
                        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                        {
                          v34._countAndFlagsBits = sub_1001A6010();
                          String.append(_:)(v34);
                        }
                      }
                    }
                  }

                  v35 = Logger.logObject.getter();
                  v36 = static os_log_type_t.default.getter();

                  if (os_log_type_enabled(v35, v36))
                  {
                    v37 = v5;
                    v38 = swift_slowAlloc();
                    v39 = swift_slowAlloc();
                    v64[0] = v39;
                    *v38 = 136315138;
                    v40 = sub_1001A6010();
                    *(v38 + 4) = sub_100008ADC(v40, v41, v42);
                    _os_log_impl(&_mh_execute_header, v35, v36, "EnhancedEmergency:processNetworkInterfaceForStreamingSession,addressFromWebRTCFiltered:%s", v38, 0xCu);
                    sub_100005B2C(v39);
                    sub_100005BB8();
                    v5 = v37;
                    sub_100005BB8();
                  }

                  if (!v62 && v63 == 0xE000000000000000)
                  {
                    break;
                  }

                  sub_1001A6010();
                  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v44)
                  {
                    goto LABEL_57;
                  }

                  if (v25 == v61)
                  {
                    goto LABEL_55;
                  }
                }

LABEL_57:
                v8 = &OBJC_IVAR____TtC13InCallServiceP33_54F15DC26ECDE4E093E20EA054ADA2B524VideoCallViewCoordinator_audioRouteGlyphForDevice;

                v2 = v57;
                v45 = &v57[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingInterface];
                *v45 = v60;
                v45[1] = v59;

                p_opt_class_meths = &OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource.opt_class_meths;
                break;
              }

LABEL_55:

              v2 = v57;
              a1 = v58;
              p_opt_class_meths = (&OBJC_PROTOCOL___PHAudioControlsButtonMenuDataSource + 48);
              v4 = v56;
            }

            else
            {
            }
          }

          v6 = 0;
        }
      }

      if (p_opt_class_meths[488] == -1)
      {
        goto LABEL_59;
      }

LABEL_65:
      sub_100007704();
      swift_once();
LABEL_59:
      v46 = type metadata accessor for Logger();
      sub_100008A14(v46, &unk_1003B8820);
      v47 = v2;
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v64[0] = v51;
        *v50 = 136315138;
        v52 = &v47[v8[472]];
        v53 = *v52;
        v54 = v52[1];

        v55 = sub_100008ADC(v53, v54, v64);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v48, v49, "EnhancedEmergency:processNetworkInterfaceForStreamingSession,completed,videoStreamingInterface:%s", v50, 0xCu);
        sub_100005B2C(v51);
        sub_100005BB8();
        sub_100005BB8();
      }

      freeifaddrs(v65);
    }
  }
}

void sub_1001A456C()
{
  v1 = SOSUIWebRTCStateName.rawValue.getter();
  if (v1 == SOSUIWebRTCStateName.rawValue.getter())
  {
    v2 = (v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime);
    if (*(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoStartTime) > 0.0)
    {
      v3 = &OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoDuration;
LABEL_7:
      v5 = *v3;
      Current = CFAbsoluteTimeGetCurrent();
      *(v0 + v5) = sub_10000A468(Current, *v2);
      *v2 = -1.0;
      goto LABEL_8;
    }
  }

  v4 = SOSUIWebRTCStateName.rawValue.getter();
  if (v4 == SOSUIWebRTCStateName.rawValue.getter())
  {
    v2 = (v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime);
    if (*(v0 + OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoStartTime) > 0.0)
    {
      v3 = &OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoDuration;
      goto LABEL_7;
    }
  }

LABEL_8:
  sub_1001A6028();
  if (!(v8 ^ v9 | v7))
  {
    v10 = CFAbsoluteTimeGetCurrent();
    sub_10000861C(v10);
  }

  sub_1001A6028();
  if (!(v8 ^ v9 | v7))
  {
    v11 = CFAbsoluteTimeGetCurrent();
    sub_10000861C(v11);
  }

  sub_1001A6028();
  if (!(v8 ^ v9 | v7))
  {
    v12 = CFAbsoluteTimeGetCurrent();
    sub_10000861C(v12);
  }
}

void sub_1001A46A8()
{
  if ((v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingRequestReceived] & 1) == 0)
  {
    if (qword_1003A9F40 != -1)
    {
      sub_100007704();
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008A14(v13, &unk_1003B8820);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "EnhancedEmergency: submitCAMetric, No streaming request received during emergency call, early return", v15, 2u);
      sub_100005BB8();
    }

    sub_10000FFD0();

    return;
  }

  sub_1001A456C();
  Current = CFAbsoluteTimeGetCurrent();
  v2 = *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_emergencyCallStartTime];
  v3 = vabdd_f64(Current, v2);
  if (v2 <= 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  v5 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingDuration;
  v6 = *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingDuration];
  if (v6 <= 0.0)
  {
    v7 = 0.0;
    v8 = 0.0;
    v11 = 0.0;
    if (v4 <= 0.0)
    {
      v19 = 0.0;
      goto LABEL_28;
    }
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    if (*&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_cameraUserFacingDuration] > 0.0)
    {
      sub_100025340();
      v8 = ceil(v9);
    }

    if (*&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_torchONDuration] > 0.0)
    {
      sub_100025340();
      v7 = ceil(v10);
    }

    v11 = 0.0;
    if (v4 <= 0.0)
    {
      v19 = 0.0;
      goto LABEL_25;
    }

    sub_100025340();
    v11 = ceil(v12);
  }

  v18 = 0.0;
  v19 = 0.0;
  if (*&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_pausedVideoDuration] > 0.0)
  {
    sub_100025340();
    v19 = ceil(v20);
  }

  if (v6 <= 0.0)
  {
    goto LABEL_29;
  }

LABEL_25:
  v21 = *&v0[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_unstableVideoDuration];
  if (v21 <= 0.0)
  {
LABEL_28:
    v18 = 0.0;
    goto LABEL_29;
  }

  v18 = ceil(v21 / v6 * 100.0);
LABEL_29:
  sub_1001A601C();
  v22 = 0.0;
  if (v23)
  {
    v24 = sub_100030384();
    do
    {
      v24 = sub_100026F30(v24);
    }

    while (!v26);
    v22 = v24 / v25;
  }

  sub_1001A601C();
  if (v28)
  {
    v29 = sub_100030384();
    do
    {
      v29 = sub_100026F30(v29);
    }

    while (!v26);
    v27 = v29 / v30;
  }

  osloga = *&v27;
  sub_1001A601C();
  v31 = 0.0;
  if (v32)
  {
    do
    {
      v31 = sub_100026F30(v31);
    }

    while (!v26);
    v31 = v31 / v33;
  }

  v134 = v31;
  sub_1001A601C();
  if (v35)
  {
    v36 = sub_100030384();
    do
    {
      v36 = sub_100026F30(v36);
    }

    while (!v26);
    v34 = v36 / v37;
  }

  v133 = v34;
  if (qword_1003A9F40 != -1)
  {
    sub_100007704();
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_100008A14(v38, &unk_1003B8820);
  v39 = v0;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134220544;
    *(v42 + 4) = v8;
    *(v42 + 12) = 2048;
    *(v42 + 14) = v7;
    *(v42 + 22) = 2048;
    *(v42 + 24) = v4;
    *(v42 + 32) = 2048;
    *(v42 + 34) = *&v0[v5];
    *(v42 + 42) = 2048;
    *(v42 + 44) = v11;
    *(v42 + 52) = 2048;
    *(v42 + 54) = v19;
    *(v42 + 62) = 2048;
    *(v42 + 64) = v18;
    *(v42 + 72) = 2048;
    *(v42 + 74) = v22;
    *(v42 + 82) = 2048;
    *(v42 + 84) = osloga;
    *(v42 + 92) = 2048;
    *(v42 + 94) = v134;
    *(v42 + 102) = 2048;
    *(v42 + 104) = v133;
    _os_log_impl(&_mh_execute_header, v40, v41, "EnhancedEmergency: submitCAMetric frontCameraVideoPercentage:%f torchOnPercentage:%f callDuration:%f videoOnDuration:%f videoOnPercentage:%f videoPausedPercentage:%f unstableVideoPercentage:%f averageBitRate:%f avgFrameRate:%f averagePacketLoss:%f averageJitterRate:%f", v42, 0x70u);
    sub_100005BB8();
  }

  v43 = v39;
  v44 = Logger.logObject.getter();
  v132 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v44, v132))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 134221314;
    *(v45 + 4) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minBitRate];
    *(v45 + 12) = 2048;
    *(v45 + 14) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxBitRate];
    *(v45 + 22) = 2048;
    *(v45 + 24) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minFrameRate];
    *(v45 + 32) = 2048;
    *(v45 + 34) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxFrameRate];
    *(v45 + 42) = 2048;
    *(v45 + 44) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxPacketLoss];
    *(v45 + 52) = 2048;
    *(v45 + 54) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minJitterRate];
    *(v45 + 62) = 2048;
    *(v45 + 64) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxJitterRate];
    *(v45 + 72) = 2048;
    *(v45 + 74) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxZoomLevel];
    *(v45 + 82) = 2048;
    *(v45 + 84) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minZoomLevel];
    *(v45 + 92) = 2048;
    *(v45 + 94) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewError];
    *(v45 + 102) = 1024;
    *(v45 + 104) = v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewErrorRecovery];
    *(v45 + 108) = 2048;
    *(v45 + 110) = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_totalBytesTransmittedWebRTCStream] * 0.000000953674316;
    *(v45 + 118) = 1024;
    *(v45 + 120) = v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingDropped];

    *(v45 + 124) = 2080;
    v47 = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingInterface];
    v48 = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_videoStreamingInterface + 8];

    v49 = sub_100008ADC(v47, v48, aBlock);

    *(v45 + 126) = v49;
    _os_log_impl(&_mh_execute_header, v44, v132, "EnhancedEmergency: submitCAMetric minBitRate:%f maxBitRate:%f minFrameRate:%f maxFrameRate:%f maxPacketLoss:%f minJitterRate:%f maxJitterRate:%f maxZoomLevel:%f minZoomLevel:%f webRTCViewError:%ld webRTCViewErrorRecovery:%{BOOL}d totalBytesTransmittedWebRTCStream in MB:%f streamingDropped:%{BOOL}d videoStreamingInterface:%s", v45, 0x86u);
    sub_100005B2C(v46);
    sub_100005BB8();
    sub_100005BB8();
  }

  else
  {
  }

  sub_1000064BC(0, &qword_1003AB7A0);
  Dictionary.init(dictionaryLiteral:)();
  sub_100007FB4();
  if (!(v51 ^ v52 | v26))
  {
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v50 <= -9.22337204e18)
  {
    goto LABEL_146;
  }

  sub_1000095BC();
  if (!v51)
  {
    goto LABEL_147;
  }

  sub_10000C188(objc_allocWithZone(NSNumber));
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v53 = sub_100008C24();
  sub_1002313A0(v53, v54, v55);
  sub_100025AC0();
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_148;
  }

  if (v18 <= -1.0)
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  if (v18 >= sub_100008E2C())
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v18];
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v56 = sub_100008C24();
  sub_1002313A0(v56, v57, v58);
  sub_100025AC0();
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_151;
  }

  if (v8 <= -1.0)
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v8 >= sub_100008E2C())
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v8];
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v59 = sub_100008C24();
  sub_1002313A0(v59, v60, v61);
  if (v4 == INFINITY)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v4 <= -1.0)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v4 >= sub_100008E2C())
  {
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v4];
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v62 = sub_100008C24();
  sub_1002313A0(v62, v63, v64);
  sub_100007FB4();
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_157;
  }

  if (v65 <= -1.0)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (v65 >= 1.84467441e19)
  {
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  sub_100014320(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v66 = sub_100030240();
  sub_1002313A0(v66, v67, v68);
  sub_100025AC0();
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_160;
  }

  if (v11 <= -1.0)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  if (v11 >= sub_100008E2C())
  {
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  sub_100014320(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000696C();
  sub_100025AC0();
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_163;
  }

  if (v19 <= -1.0)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (v19 >= sub_100008E2C())
  {
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  sub_100014320(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v69 = sub_100030240();
  sub_1002313A0(v69, v70, v71);
  sub_100025AC0();
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_166;
  }

  if (v7 <= -1.0)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (v7 >= sub_100008E2C())
  {
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  sub_100014320(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000696C();
  v72 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minBitRate);
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_169;
  }

  if (v72 <= -9.22337204e18)
  {
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  sub_1000095BC();
  if (!v51)
  {
    goto LABEL_171;
  }

  v73 = sub_1000083EC();
  sub_10000891C(v73);
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v74 = sub_100030240();
  sub_1002313A0(v74, v75, 0xEA00000000006574);
  v76 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxBitRate);
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_172;
  }

  if (v76 <= -9.22337204e18)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  sub_1000095BC();
  if (!v51)
  {
    goto LABEL_174;
  }

  v77 = sub_1000083EC();
  sub_10000891C(v77);
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v78 = sub_100030240();
  sub_1002313A0(v78, v79, 0xEA00000000006574);
  sub_100025AC0();
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_175;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  sub_10000891C(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v80 = sub_100030240();
  sub_1002313A0(v80, v81, v82);
  v83 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minFrameRate);
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_178;
  }

  if (v83 <= -9.22337204e18)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  sub_1000095BC();
  if (!v51)
  {
    goto LABEL_180;
  }

  v84 = sub_100005D94();
  sub_10000C188(v84);
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v85 = sub_100008C24();
  sub_1002313A0(v85, v86, 0xEC00000065746152);
  v87 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxFrameRate);
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_181;
  }

  if (v87 <= -9.22337204e18)
  {
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  sub_1000095BC();
  if (!v51)
  {
    goto LABEL_183;
  }

  v88 = sub_100005D94();
  sub_10000C188(v88);
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v89 = sub_100008C24();
  sub_1002313A0(v89, v90, 0xEC00000065746152);
  sub_100025AC0();
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_184;
  }

  if (v91 <= -9.22337204e18)
  {
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  sub_10001428C();
  if (!v51)
  {
    goto LABEL_186;
  }

  sub_10000C188(objc_allocWithZone(NSNumber));
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v92 = sub_100008C24();
  sub_1002313A0(v92, v93, 0xEC00000065746152);
  v94 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxPacketLoss);
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_187;
  }

  if (v94 <= -9.22337204e18)
  {
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
    goto LABEL_191;
  }

  sub_1000095BC();
  if (!v51)
  {
    goto LABEL_189;
  }

  v95 = sub_1000083EC();
  sub_10000891C(v95);
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v96 = sub_100030240();
  sub_1002313A0(v96, v97, v98);
  sub_100025AC0();
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_190;
  }

  if (v99 <= -9.22337204e18)
  {
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  sub_10001428C();
  if (!v51)
  {
    goto LABEL_192;
  }

  sub_10000891C(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000696C();
  v100 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minJitterRate);
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_193;
  }

  if (v100 <= -9.22337204e18)
  {
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
    goto LABEL_197;
  }

  sub_1000095BC();
  if (!v51)
  {
    goto LABEL_195;
  }

  v101 = sub_100005D94();
  sub_10000C188(v101);
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v102 = sub_100008C24();
  sub_1002313A0(v102, v103, 0xED00006574615272);
  v104 = sub_100006D60(OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxJitterRate);
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_196;
  }

  if (v104 <= -9.22337204e18)
  {
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  sub_1000095BC();
  if (!v51)
  {
    goto LABEL_198;
  }

  v105 = sub_100005D94();
  sub_10000C188(v105);
  sub_10000B45C();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v106 = sub_100008C24();
  sub_1002313A0(v106, v107, 0xED00006574615272);
  sub_100025AC0();
  if (!(v51 ^ v52 | v26))
  {
    goto LABEL_199;
  }

  if (v108 <= -9.22337204e18)
  {
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
    return;
  }

  sub_10001428C();
  if (!v51)
  {
    goto LABEL_201;
  }

  sub_10000891C(objc_allocWithZone(NSNumber));
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000696C();
  [objc_allocWithZone(NSNumber) initWithDouble:*&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_maxZoomLevel]];
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v109 = sub_100030240();
  sub_1002313A0(v109, v110, 0xEC0000006C657665);
  [objc_allocWithZone(NSNumber) initWithDouble:*&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_minZoomLevel]];
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v111 = sub_100030240();
  sub_1002313A0(v111, v112, 0xEC0000006C657665);
  [objc_allocWithZone(NSNumber) initWithBool:v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_streamingDropped]];
  sub_1000072EC();
  swift_isUniquelyReferenced_nonNull_native();
  sub_10000714C();
  v113 = sub_100030240();
  sub_1002313A0(v113, v114, v115);
  v116 = aBlock[0];
  sub_1000064BC(0, &qword_1003AB4C0);

  sub_1001A584C();
  swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v116;
  v117 = sub_100008C24();
  sub_1002313A0(v117, v118, v119);
  v120 = aBlock[0];
  v121 = *&v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewError];
  if (v121 != -32767)
  {
    [objc_allocWithZone(NSNumber) initWithLongLong:v121];
    swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v120;
    v122 = sub_100008C24();
    sub_1002313A0(v122, v123, v124);
    v125 = [objc_allocWithZone(NSNumber) initWithBool:v43[OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_webRTCViewErrorRecovery]];
    swift_isUniquelyReferenced_nonNull_native();
    sub_10000714C();
    sub_1002313A0(v125, 0xD000000000000017, 0x80000001002A89E0);
    v120 = aBlock[0];
  }

  v126 = String._bridgeToObjectiveC()();
  v127 = swift_allocObject();
  *(v127 + 16) = v120;
  aBlock[4] = sub_1001A6000;
  aBlock[5] = v127;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100206510;
  aBlock[3] = &unk_10035D110;
  v128 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v128);

  v129 = Logger.logObject.getter();
  v130 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v129, v130))
  {
    v131 = swift_slowAlloc();
    *v131 = 0;
    _os_log_impl(&_mh_execute_header, v129, v130, "Metric submitted successfully for topic com.apple.incallservice.eed", v131, 2u);
    sub_100005BB8();
  }

  sub_10000FFD0();
}

id sub_1001A584C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithString:v1];

  return v2;
}

uint64_t sub_1001A58C0()
{
  v2 = OBJC_IVAR____TtC13InCallService30EnhancedEmergencyDataCollector_requestMetricDataSet;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for PerRequestMetricData();
    sub_1001A5FA4();
    Set.Iterator.init(_cocoa:)();
    v3 = v61[4];
    v4 = v61[5];
    v0 = v61[6];
    v5 = v61[7];
    v6 = v61[8];
  }

  else
  {
    v4 = v3 + 56;
    sub_100007B94();
    v6 = v7 & v8;

    v5 = 0;
  }

  v9 = (v0 + 64) >> 6;
  v56 = v4;
  v57 = v3;
  v55 = v9;
  if (v3 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v10 = v5;
  v11 = v6;
  v12 = v5;
  if (v6)
  {
LABEL_9:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
      return sub_10016D304();
    }

    while (1)
    {
      v16 = swift_allocObject();
      sub_1000064BC(0, &qword_1003AB7A0);
      *(v16 + 16) = Dictionary.init(dictionaryLiteral:)();
      sub_100007FB4();
      if (!(v19 ^ v20 | v18))
      {
        break;
      }

      if (v17 <= -9.22337204e18)
      {
        goto LABEL_40;
      }

      sub_1000095BC();
      if (!v19)
      {
        goto LABEL_41;
      }

      v59 = v14;
      v58 = v13;
      v22 = v21;
      [objc_allocWithZone(NSNumber) initWithLongLong:v21];
      sub_100025EB4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_100008D74();
      v23 = sub_10001411C(0xD000000000000026, 0x80000001002A8A50);
      v25 = *(v13 + 16);
      v26 = (v24 & 1) == 0;
      v27 = v25 + v26;
      if (__OFADD__(v25, v26))
      {
        goto LABEL_42;
      }

      v28 = v23;
      v29 = v24;
      sub_10014EA98(&qword_1003AFB70);
      v30 = v61;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v22, v27))
      {
        v30 = v61[0];
        v31 = sub_10001411C(0xD000000000000026, 0x80000001002A8A50);
        if ((v29 & 1) != (v32 & 1))
        {
          goto LABEL_46;
        }

        v28 = v31;
      }

      v33 = v61[0];
      if (v29)
      {
        v34 = *(v61[0] + 56);
        v35 = *(v34 + 8 * v28);
        *(v34 + 8 * v28) = v1;
      }

      else
      {
        sub_100005C50();
        *v36 = 0xD000000000000026;
        v36[1] = 0x80000001002A8A50;
        sub_100012B08();
        if (v20)
        {
          goto LABEL_44;
        }

        *(v33 + 16) = v37;
      }

      *(v16 + 16) = v33;
      swift_endAccess();
      v38 = *&v59[OBJC_IVAR____TtC13InCallService20PerRequestMetricData_requestType];
      [objc_allocWithZone(NSNumber) initWithInteger:v38];
      sub_100025EB4();
      swift_isUniquelyReferenced_nonNull_native();
      sub_100008D74();
      v39 = sub_10001411C(0xD000000000000022, 0x80000001002A8A80);
      v41 = v40;
      v42 = v30[2];
      v43 = (v40 & 1) == 0;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_43;
      }

      v44 = v39;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v38, v42 + v43))
      {
        v45 = sub_10001411C(0xD000000000000022, 0x80000001002A8A80);
        v3 = v57;
        if ((v41 & 1) != (v46 & 1))
        {
          goto LABEL_46;
        }

        v44 = v45;
      }

      else
      {
        v3 = v57;
      }

      v47 = v61[0];
      if (v41)
      {
        v48 = *(v61[0] + 56);
        v49 = *(v48 + 8 * v44);
        *(v48 + 8 * v44) = v1;
      }

      else
      {
        sub_100005C50();
        *v50 = 0xD000000000000022;
        v50[1] = 0x80000001002A8A80;
        sub_100012B08();
        if (v20)
        {
          goto LABEL_45;
        }

        *(v47 + 16) = v51;
      }

      *(v16 + 16) = v47;
      swift_endAccess();
      v52 = String._bridgeToObjectiveC()();
      aBlock[4] = sub_1001A5FF8;
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100206510;
      aBlock[3] = &unk_10035D0C0;
      v53 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();

      _Block_release(v53);

      v5 = v12;
      v6 = v58;
      v9 = v55;
      v4 = v56;
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_11:
      v15 = __CocoaSet.Iterator.next()();
      if (v15)
      {
        v61[0] = v15;
        type metadata accessor for PerRequestMetricData();
        swift_dynamicCast();
        v14 = aBlock[0];
        v12 = v5;
        v13 = v6;
        if (aBlock[0])
        {
          continue;
        }
      }

      return sub_10016D304();
    }
  }

  else
  {
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        return sub_10016D304();
      }

      v11 = *(v4 + 8 * v12);
      ++v10;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1001A5EB8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001A5FA4()
{
  result = qword_1003ABF00;
  if (!qword_1003ABF00)
  {
    type metadata accessor for PerRequestMetricData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003ABF00);
  }

  return result;
}

void sub_1001A60DC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_contact);
  *(v1 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_contact) = a1;
  v3 = a1;

  sub_1001A6134();
}

id sub_1001A6234(void *a1, char a2, char a3)
{
  *&v3[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView] = 0;
  *&v3[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon] = 0;
  v7 = [objc_allocWithZone(CNAvatarView) initWithContact:a1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_cnAvatarView] = v7;
  *&v3[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_contact] = a1;
  v3[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_wantsBlur] = a2;
  v3[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_isCommunicationSafetyEnabled] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for BlurrableAvatarView();
  v8 = v7;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v10 addSubview:{v8, v12.receiver, v12.super_class}];
  sub_1001A650C();
  sub_1001A673C(a2);

  return v10;
}

void sub_1001A63A4()
{
  *(v0 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001A6430()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BlurrableAvatarView();
  objc_msgSendSuper2(&v3, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView];
  if (v1)
  {
    v2 = [v1 layer];
    [v0 bounds];
    [v2 setCornerRadius:CGRectGetWidth(v4) * 0.5];
  }
}

void sub_1001A650C()
{
  v1 = objc_opt_self();
  sub_10014EA98(&unk_1003AAAA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1002FB360;
  v3 = *&v0[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_cnAvatarView];
  v4 = [v3 topAnchor];
  v5 = [v0 topAnchor];
  v6 = sub_100006D78();

  *(v2 + 32) = v6;
  v7 = [v3 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = sub_100006D78();

  *(v2 + 40) = v9;
  v10 = [v3 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = sub_100006D78();

  *(v2 + 48) = v12;
  v13 = [v3 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  sub_1000064BC(0, &qword_1003AAF70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
  sub_100007F98();
}

id sub_1001A673C(char a1)
{
  v3 = OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView;
  if ((a1 & 1) != 0 && (!*(v1 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView) || !*(v1 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon)))
  {
    sub_1001A67F8();
    sub_1001A6B4C();
    v3 = OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView;
  }

  v4 = *(v1 + v3);
  if (v4)
  {
    [v4 setHidden:(a1 & 1) == 0];
  }

  result = *(v1 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon);
  if (result)
  {
    if (a1)
    {
      v6 = *(v1 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_isCommunicationSafetyEnabled);
    }

    else
    {
      v6 = 1;
    }

    return [result setHidden:v6];
  }

  return result;
}

void sub_1001A67F8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIVisualEffectView) init];
  sub_10014EA98(&unk_1003AAAA0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002FBD90;
  *(v3 + 32) = [objc_opt_self() effectWithStyle:16];
  sub_1000064BC(0, &unk_1003AAFA0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setBackgroundEffects:isa];

  v5 = v2;
  v6 = [v5 layer];
  [v6 setMasksToBounds:1];

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = *&v1[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView];
  *&v1[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView] = v5;
  v8 = v5;

  sub_1000064BC(0, &qword_1003AAA98);
  v9 = sub_1001FFAD8();
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() configurationWithPointSize:25.0];
    v12 = [v10 imageWithSymbolConfiguration:v11];
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(UIImageView) initWithImage:v12];

  v14 = [objc_opt_self() secondaryLabelColor];
  [v13 setTintColor:v14];

  [v13 setUserInteractionEnabled:0];
  v15 = v13;
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v15 setHidden:v1[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_isCommunicationSafetyEnabled]];

  v16 = *&v1[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon];
  *&v1[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon] = v15;
  v17 = v15;

  v20[3] = type metadata accessor for BlurrableAvatarView();
  v20[0] = v1;
  objc_allocWithZone(UITapGestureRecognizer);
  v18 = v1;
  v19 = sub_1001A70A0(v20, "didTapWithSender:");
  [v8 addGestureRecognizer:v19];
  [v18 addSubview:v8];
  [v18 addSubview:v17];
}

void sub_1001A6B4C()
{
  v1 = *&v0[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectView];
  if (v1 && (v2 = *&v0[OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_blurEffectViewIcon]) != 0)
  {
    v3 = objc_opt_self();
    sub_10014EA98(&unk_1003AAAA0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1002FC910;
    v5 = v1;
    v6 = v2;
    v7 = [v5 topAnchor];
    v8 = [v0 topAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    *(v4 + 32) = v9;
    v10 = [v5 bottomAnchor];
    v11 = sub_100007718([v0 bottomAnchor]);

    *(v4 + 40) = v11;
    v12 = [v5 leadingAnchor];
    v13 = sub_100007718([v0 leadingAnchor]);

    *(v4 + 48) = v13;
    v14 = [v5 trailingAnchor];

    v15 = sub_100007718([v0 trailingAnchor]);
    *(v4 + 56) = v15;
    v16 = v6;
    v17 = [v16 centerXAnchor];
    v18 = sub_100007718([v0 centerXAnchor]);

    *(v4 + 64) = v18;
    v19 = [v16 centerYAnchor];
    v20 = sub_100007718([v0 centerYAnchor]);

    *(v4 + 72) = v20;
    v21 = [v16 widthAnchor];
    v22 = [v0 widthAnchor];
    v23 = [v21 constraintLessThanOrEqualToAnchor:v22];

    *(v4 + 80) = v23;
    v24 = [v16 heightAnchor];

    v25 = [v0 heightAnchor];
    v26 = [v24 constraintLessThanOrEqualToAnchor:v25];

    *(v4 + 88) = v26;
    sub_1000064BC(0, &qword_1003AAF70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 activateConstraints:isa];

    sub_100007F98();
  }

  else
  {
    sub_100007F98();
  }
}

id sub_1001A6F14()
{
  if ((*(v0 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_isCommunicationSafetyEnabled) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC13InCallService19BlurrableAvatarView_wantsBlur) = 0;
    return sub_1001A673C(0);
  }

  return result;
}

id sub_1001A6FDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlurrableAvatarView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001A70A0(void *a1, uint64_t a2)
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

uint64_t MuteControlService.__allocating_init(call:)(void *a1)
{
  v2 = swift_allocObject();
  MuteControlService.init(call:)(a1);
  return v2;
}

void *MuteControlService.init(call:)(void *a1)
{
  v2 = v1;
  v4 = sub_10014EA98(&qword_1003ABF60);
  sub_10000688C();
  v6 = v5;
  __chkstk_darwin(v7, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for MuteState();
  __chkstk_darwin(v11 - 8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[5] = &_swiftEmptySetSingleton;
  v2[4] = a1;
  LOBYTE(v19) = 1;
  sub_10014EA98(&qword_1003ABF68);
  swift_allocObject();
  v18 = a1;
  v2[2] = CurrentValueSubject.init(_:)();
  sub_1001A7584(v14);
  sub_10014EA98(&qword_1003ABF70);
  swift_allocObject();
  v15 = CurrentValueSubject.init(_:)();
  v2[3] = v15;
  v19 = v15;
  sub_100027E08(&qword_1003ABF78, &qword_1003ABF70);
  sub_1001A7A68(&qword_1003ABF80, 255, &type metadata accessor for MuteState);
  Publisher<>.removeDuplicates()();
  swift_allocObject();
  swift_weakInit();
  sub_100027E08(&qword_1003ABF88, &qword_1003ABF60);
  Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v10, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:v2 selector:"isUplinkMutedChanged:" name:TUCallIsUplinkMutedChangedNotification object:0];

  return v2;
}

uint64_t sub_1001A7584@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 isUplinkMuted];
  v4 = type metadata accessor for MuteState();
  v5 = *(*(v4 - 8) + 104);
  v6 = &enum case for MuteState.muted(_:);
  if (!v3)
  {
    v6 = &enum case for MuteState.unmuted(_:);
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

void sub_1001A7618()
{
  v0 = type metadata accessor for MuteState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 32);

    (*(v1 + 104))(v4, enum case for MuteState.muted(_:), v0);
    v7 = static MuteState.== infix(_:_:)();
    (*(v1 + 8))(v4, v0);
    [v6 setUplinkMuted:v7 & 1];
  }
}

void sub_1001A7774()
{
  v1 = type metadata accessor for MuteState();
  sub_10000688C();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 32);
  Notification.object.getter();
  if (v14)
  {
    sub_1001A7AEC();
    if (swift_dynamicCast())
    {
      v9 = v12;
      v10 = [v12 isEqualToCall:v8];

      if (v10)
      {
        sub_1001A7584(v7);
        CurrentValueSubject.send(_:)();
        (*(v3 + 8))(v7, v1);
      }
    }
  }

  else
  {
    sub_10015E258(v13);
  }
}

uint64_t MuteControlService.deinit()
{

  return v0;
}

uint64_t MuteControlService.__deallocating_deinit()
{
  MuteControlService.deinit();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1001A7A68(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001A7AEC()
{
  result = qword_1003ADBE0;
  if (!qword_1003ADBE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003ADBE0);
  }

  return result;
}

id sub_1001A7B30(void *a1)
{
  v2 = v1;
  v4 = sub_10014EA98(&qword_1003AC0A0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for PlayerParticipantInfo();
  sub_100006848(v7, 1, 1, v8);
  objc_allocWithZone(type metadata accessor for VideoMessagePlayerViewController());
  v9 = a1;
  *&v2[OBJC_IVAR___ICSVideoMessageRootViewController_player] = VideoMessagePlayerViewController.init(viewModel:participantInfo:)();
  v10 = type metadata accessor for VideoMessageRootViewController();
  v13.receiver = v2;
  v13.super_class = v10;
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);

  return v11;
}

void sub_1001A7CC4()
{
  v1 = sub_100006C60();
  if (!v1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBlackColor];
  [v2 setBackgroundColor:v3];

  v4 = *&v0[OBJC_IVAR___ICSVideoMessageRootViewController_player];
  v5 = sub_10000C38C();
  if (!v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = sub_100006C60();
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = sub_10000C38C();
  if (!v9)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = v9;
  [v8 addSubview:v9];

  [v0 addChildViewController:v4];
  [v4 didMoveToParentViewController:v0];
  sub_10014EA98(&unk_1003AAAA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002FB360;
  v12 = sub_10000C38C();
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = sub_100006C60();
  if (!v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [v15 safeAreaLayoutGuide];

  v18 = [v17 leadingAnchor];
  v19 = sub_100007738();

  *(v11 + 32) = v19;
  v20 = sub_10000C38C();
  if (!v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = sub_100006C60();
  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [v23 safeAreaLayoutGuide];

  v26 = [v25 trailingAnchor];
  v27 = sub_100007738();

  *(v11 + 40) = v27;
  v28 = sub_10000C38C();
  if (!v28)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = v28;
  v30 = [v28 topAnchor];

  v31 = sub_100006C60();
  if (!v31)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v32 = v31;
  v33 = [v31 safeAreaLayoutGuide];

  v34 = [v33 topAnchor];
  v35 = sub_100007738();

  *(v11 + 48) = v35;
  v36 = sub_10000C38C();
  if (!v36)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v37 = v36;
  v38 = [v36 bottomAnchor];

  v39 = sub_100006C60();
  if (!v39)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v40 = v39;
  v41 = objc_opt_self();
  v42 = [v40 safeAreaLayoutGuide];

  v43 = [v42 bottomAnchor];
  v44 = [v38 constraintEqualToAnchor:v43];

  *(v11 + 56) = v44;
  sub_100162160();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:isa];
}

id sub_1001A81C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoMessageRootViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001A8228(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    v2 = [objc_opt_self() sharedApplication];
    v3 = [v2 delegate];

    if (v3)
    {
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() dismissVideoMessageSceneSession];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1001A8370(uint64_t a1)
{
  v2 = type metadata accessor for VideoMessagePlayerViewModel.PlayerSpatiality();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10014EA98(&qword_1003AAF20);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v16 - v9;
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  sub_100006848(v10, 0, 1, v11);
  (*(v3 + 104))(v6, enum case for VideoMessagePlayerViewModel.PlayerSpatiality.remote(_:), v2);
  v12 = objc_allocWithZone(type metadata accessor for VideoMessagePlayerViewModel());
  v13 = VideoMessagePlayerViewModel.init(videoMessageURL:playerSpaciality:)();
  v14 = objc_allocWithZone(type metadata accessor for VideoMessageRootViewController());
  return sub_1001A7B30(v13);
}

id sub_1001A86C4()
{
  *&v0[OBJC_IVAR____TtC13InCallService11PHRingLayer_percentage] = 0;
  *&v0[OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth] = 0x4020000000000000;
  v1 = OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor;
  v2 = objc_opt_self();
  v3 = [v2 systemDarkGreenColor];
  v4 = [v3 CGColor];

  *&v0[v1] = v4;
  v5 = OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor;
  v6 = [v2 systemGreenColor];
  v7 = [v6 CGColor];

  *&v0[v5] = v7;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PHRingLayer();
  return objc_msgSendSuper2(&v9, "init");
}

char *sub_1001A87E0(void *a1)
{
  *&v1[OBJC_IVAR____TtC13InCallService11PHRingLayer_percentage] = 0;
  *&v1[OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth] = 0x4020000000000000;
  v3 = OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor;
  v4 = objc_opt_self();
  v5 = [v4 systemDarkGreenColor];
  v6 = [v5 CGColor];

  *&v1[v3] = v6;
  v7 = OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor;
  v8 = [v4 systemGreenColor];
  v9 = [v8 CGColor];

  *&v1[v7] = v9;
  sub_100008878(a1, a1[3]);
  v10 = _bridgeAnythingToObjectiveC<A>(_:)();
  v22.receiver = v1;
  v22.super_class = type metadata accessor for PHRingLayer();
  v11 = objc_msgSendSuper2(&v22, "initWithLayer:", v10);
  swift_unknownObjectRelease();
  sub_100005A60(a1, v21);
  v12 = v11;
  if (swift_dynamicCast())
  {
    [v20 percentage];
    *&v12[OBJC_IVAR____TtC13InCallService11PHRingLayer_percentage] = v13;
    *&v12[OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth] = *&v20[OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth];
    v14 = *&v20[OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor];
    v15 = *&v12[OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor];
    *&v12[OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor] = v14;
    v16 = v14;

    v17 = *&v20[OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor];
    sub_100005B2C(a1);
    v18 = *&v12[OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor];
    *&v12[OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor] = v17;
  }

  else
  {

    sub_100005B2C(a1);
  }

  return v12;
}

void sub_1001A8A28()
{
  *(v0 + OBJC_IVAR____TtC13InCallService11PHRingLayer_percentage) = 0;
  *(v0 + OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth) = 0x4020000000000000;
  v1 = OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor;
  v2 = objc_opt_self();
  v3 = [v2 systemDarkGreenColor];
  v4 = [v3 CGColor];

  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor;
  v6 = [v2 systemGreenColor];
  v7 = [v6 CGColor];

  *(v0 + v5) = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001A8B48()
{
  sub_10000C3A4();
  v2 = v2 && v0 == v1;
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 1;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  v7.receiver = ObjCClassFromMetadata;
  v7.super_class = &OBJC_METACLASS____TtC13InCallService11PHRingLayer;
  v3 = objc_msgSendSuper2(&v7, "needsDisplayForKey:", v5);

  return v3;
}

id sub_1001A8C50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10000C3A4();
  v8 = v8 && v6 == v7;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_1001A9300();

    v9 = sub_100205804(a1, a2);
    v10 = [v3 presentationLayer];
    if (v10)
    {
      v11 = v10;
      [v10 percentage];
    }

    else
    {
      [v3 percentage];
    }

    isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
    [v9 setFromValue:isa];
  }

  else
  {
    v13 = String._bridgeToObjectiveC()();
    v15.receiver = v3;
    v15.super_class = type metadata accessor for PHRingLayer();
    v9 = objc_msgSendSuper2(&v15, "actionForKey:", v13);
  }

  return v9;
}

void sub_1001A8E00(CGContext *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CGPathFillRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PHRingLayer();
  v37.receiver = v2;
  v37.super_class = v9;
  [(CGContext *)&v37 drawInContext:a1];
  v10 = sub_100006D94();
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    sub_100007FC8();
  }

  else
  {
    [v2 bounds];
    sub_100007FC8();
  }

  v12 = sub_100006D94();
  if (v12)
  {
    v36 = *&v12[OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth];
  }

  else
  {
    v36 = *&v2[OBJC_IVAR____TtC13InCallService11PHRingLayer_lineWidth];
  }

  v13 = sub_100006D94();
  if (v13)
  {
    v14 = v13;
    [v13 percentage];
    v35 = v15;
  }

  else
  {
    [v2 percentage];
    v35 = v16;
  }

  v17 = sub_100006D94();
  if (v17)
  {
    v18 = v17;
    v19 = *&v17[OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor];
  }

  else
  {
    v19 = *&v2[OBJC_IVAR____TtC13InCallService11PHRingLayer_strokeColor];
  }

  v20 = sub_100006D94();
  if (v20)
  {
    v21 = v20;
    v22 = *&v20[OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor];
  }

  else
  {
    v22 = *&v2[OBJC_IVAR____TtC13InCallService11PHRingLayer_fillColor];
  }

  v38.origin.x = sub_100007754();
  v23 = CGRectGetMaxX(v38) * 0.5;
  v39.origin.x = sub_100007754();
  v24 = CGRectGetMaxY(v39) * 0.5;
  v40.origin.x = sub_100007754();
  CGRectGetWidth(v40);
  v25 = objc_opt_self();
  v26 = sub_100007754();
  v29 = [v27 v28];
  v30 = [v29 CGPath];
  CGContextSaveGState(a1);
  CGContextAddPath(a1, v30);
  CGContextSetFillColorWithColor(a1, v22);
  (*(v5 + 104))(v8, enum case for CGPathFillRule.winding(_:), v4);
  CGContextRef.fillPath(using:)();
  (*(v5 + 8))(v8, v4);
  CGContextRestoreGState(a1);
  v41.origin.x = sub_100007754();
  Width = CGRectGetWidth(v41);
  v32 = v36;
  v33 = [v25 bezierPathWithArcCenter:1 radius:v23 startAngle:v24 endAngle:Width * 0.5 - v36 * 0.5 clockwise:{-1.57079633, (v35 * 360.0 + -90.0) * 0.0174532925}];
  v34 = [v33 CGPath];
  CGContextSaveGState(a1);
  CGContextAddPath(a1, v34);
  CGContextSetStrokeColorWithColor(a1, v19);
  CGContextSetLineCap(a1, kCGLineCapRound);
  CGContextSetLineWidth(a1, v32);
  CGContextStrokePath(a1);
  CGContextSetShouldAntialias(a1, 1);
  CGContextRestoreGState(a1);
}

id sub_1001A925C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PHRingLayer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001A9300()
{
  result = qword_1003AB4B8;
  if (!qword_1003AB4B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AB4B8);
  }

  return result;
}

uint64_t *PosterSnapshotService.shared.unsafeMutableAddressor()
{
  if (qword_1003A9FF8 != -1)
  {
    sub_1000095CC();
  }

  return &static PosterSnapshotService.shared;
}

uint64_t sub_1001A9384()
{
  type metadata accessor for PosterSnapshotService();
  v0 = swift_allocObject();
  result = sub_1001AAED4();
  static PosterSnapshotService.shared = v0;
  return result;
}

uint64_t static PosterSnapshotService.shared.getter()
{
  if (qword_1003A9FF8 != -1)
  {
    sub_1000095CC();
  }
}

uint64_t PosterSnapshotService.prewarmSnapshot(contact:)()
{
  sub_100006610();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1001A949C;

  return PosterSnapshotService.takeSnapshot(contact:)(v2);
}

uint64_t sub_1001A949C()
{
  sub_100006610();
  v2 = v1;
  sub_1000058C4();
  v3 = *v0;
  sub_100006870();
  *v4 = v3;

  sub_10000535C();

  return v5();
}

uint64_t sub_1001A9584()
{
  sub_1000058C4();
  v2 = *(v1 + 24);
  v3 = *v0;
  sub_100006870();
  *v4 = v3;
  *(v6 + 80) = v5;

  v7 = sub_1000085C0();
  sub_10016D16C(v7, v8);

  return _swift_task_switch(sub_1001A9714, v2, 0);
}

uint64_t sub_1001A9714()
{
  sub_100006610();

  sub_100026F44();

  return v1();
}

uint64_t sub_1001A9770()
{
  sub_100006610();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[11] = v5;
  sub_10014EA98(&qword_1003AA7B0);
  v1[16] = swift_task_alloc();
  sub_10000B468();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001A9838()
{
  v35 = v0;
  v1 = *(v0[15] + 112);
  v0[17] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[18] = v2;
    sub_10014EA98(&qword_1003AAE20);
    *v2 = v0;
    v2[1] = sub_1001A9C1C;
  }

  else
  {
    v3 = objc_opt_self();
    sub_1000085C0();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[9] = 0;
    v5 = [v3 unarchiveConfigurationFromData:isa error:v0 + 9];
    v0[19] = v5;

    v6 = v0[9];
    if (!v5)
    {
      v19 = v6;
      v20 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1003A9F40 != -1)
      {
        sub_10000755C();
      }

      v21 = type metadata accessor for Logger();
      sub_100008A14(v21, &unk_1003B8820);
      sub_10000594C();
      swift_errorRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v34 = v25;
        *v24 = 136315138;
        v0[10] = v20;
        swift_errorRetain();
        sub_10014EA98(&qword_1003AAC00);
        v26 = String.init<A>(reflecting:)();
        v28 = sub_100008ADC(v26, v27, &v34);

        *(v24 + 4) = v28;
        sub_100005414(&_mh_execute_header, v29, v30, "PosterSnapshotService: unarchiving configuration error: %s");
        sub_100005B2C(v25);
        sub_100005BB8();
        sub_100005BB8();
      }

      else
      {
      }

      sub_100026F44();
      sub_100025350();

      __asm { BRAA            X2, X16 }
    }

    v7 = v0[15];
    v8 = v0[16];
    v10 = v0[11];
    v9 = v0[12];
    v11 = v6;
    static TaskPriority.userInitiated.getter();
    v12 = type metadata accessor for TaskPriority();
    sub_100006848(v8, 0, 1, v12);
    v13 = sub_1001AAFDC();
    v14 = swift_allocObject();
    v14[2] = v7;
    v14[3] = v13;
    v14[4] = v7;
    v14[5] = v10;
    v14[6] = v9;
    v14[7] = v5;
    swift_retain_n();

    v15 = v5;
    sub_100007FDC();
    sub_100005958(v16);

    v17 = swift_task_alloc();
    v0[21] = v17;
    sub_10014EA98(&qword_1003AAE20);
    *v17 = v0;
    sub_100006DAC();
    sub_100008C30();
  }

  sub_100025350();

  return Task<>.value.getter();
}

uint64_t sub_1001A9C1C()
{
  sub_1000058A8();
  v1 = *v0;
  v2 = *v0;
  sub_100006870();
  *v3 = v2;

  sub_10000B468();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001A9D6C()
{
  v31 = v0;

  v1 = objc_opt_self();
  sub_1000085C0();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[9] = 0;
  v3 = [v1 unarchiveConfigurationFromData:isa error:v0 + 9];
  v0[19] = v3;

  v4 = v0[9];
  if (!v3)
  {
    v17 = v4;
    v18 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v19 = type metadata accessor for Logger();
    sub_100008A14(v19, &unk_1003B8820);
    sub_10000594C();
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315138;
      v0[10] = v18;
      swift_errorRetain();
      sub_10014EA98(&qword_1003AAC00);
      v24 = String.init<A>(reflecting:)();
      v26 = sub_100008ADC(v24, v25, &v30);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "PosterSnapshotService: unarchiving configuration error: %s", v22, 0xCu);
      sub_100005B2C(v23);
      sub_100005BB8();
      sub_100005BB8();
    }

    else
    {
    }

    sub_100026F44();
    sub_100025350();

    __asm { BRAA            X2, X16 }
  }

  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v4;
  static TaskPriority.userInitiated.getter();
  v10 = type metadata accessor for TaskPriority();
  sub_100006848(v6, 0, 1, v10);
  v11 = sub_1001AAFDC();
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = v11;
  v12[4] = v5;
  v12[5] = v8;
  v12[6] = v7;
  v12[7] = v3;
  swift_retain_n();

  v13 = v3;
  sub_100007FDC();
  sub_100005958(v14);

  v15 = swift_task_alloc();
  v0[21] = v15;
  sub_10014EA98(&qword_1003AAE20);
  *v15 = v0;
  sub_100006DAC();
  sub_100008C30();
  sub_100025350();

  return Task<>.value.getter();
}

uint64_t sub_1001AA0C4()
{
  sub_1000058A8();
  v1 = *v0;
  sub_100006870();
  *v2 = v1;

  sub_10000B468();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001AA214()
{
  v1 = v0[15];
  v2 = v0[6];
  *(v1 + 112) = 0;

  swift_beginAccess();
  v3 = v0[19];
  if (v2)
  {
    v4 = v2;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v1 + 120);
    sub_1002314B8();
    *(v1 + 120) = v9;
    swift_endAccess();
  }

  else
  {
    sub_100250F34(v0[11], v0[12]);
    v6 = v5;
    swift_endAccess();

    v3 = v6;
  }

  sub_100026F44();

  return v7(v2);
}

uint64_t sub_1001AA364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return _swift_task_switch(sub_1001AA38C, a4, 0);
}

uint64_t sub_1001AA38C()
{
  sub_1000058A8();
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 120);

  v3 = sub_1000085C0();
  v5 = sub_10016D474(v3, v4, v2);
  v7 = v6;

  if (v7)
  {
    if (v5 == NSObject.hashValue.getter())
    {
      v8 = v0[5];
      *v8 = v5;
      v8[1] = v7;
      sub_10000535C();

      return v9();
    }
  }

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_1001AA4BC;
  v12 = v0[9];

  return sub_1001AA63C(v12);
}

uint64_t sub_1001AA4BC()
{
  sub_100006610();
  sub_1000058C4();
  v1 = *v0;
  sub_100006870();
  *v2 = v1;
  *(v4 + 88) = v3;

  sub_10000B468();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001AA5C0()
{
  sub_1000058A8();
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = *(v0 + 40);
    *v2 = NSObject.hashValue.getter();
    v2[1] = v1;
  }

  else
  {
    v3 = *(v0 + 40);
    *v3 = 0;
    v3[1] = 0;
  }

  sub_10000535C();

  return v4();
}

uint64_t sub_1001AA63C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_100025AD0(a1, v1);
}

uint64_t sub_1001AA654()
{
  sub_100005408();
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_opt_self() sharedIncomingCallSnapshotController];
  v0[5] = v3;
  v4 = [objc_allocWithZone(PRPosterSnapshotDefinition) initWithUniqueIdentifier:PRPosterSnapshotDefinitionIdentifierIncomingCallPosterContentsExcludingBackground includeHeaderElements:0 includesComplications:0 layerSet:1 isUnlocked:1 renderingContent:0 renderingMode:1 previewContent:1];
  v0[6] = v4;
  v5 = [objc_opt_self() snapshotRequestForPRSPosterConfiguration:v2 definition:v4 interfaceOrientation:1];
  v0[7] = v5;
  v6 = sub_1001AAFDC();
  v7 = swift_task_alloc();
  v0[8] = v7;
  *(v7 + 16) = v3;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = sub_1001AB038();
  *v8 = v0;
  v8[1] = sub_1001AA80C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, v1, v6, 0xD000000000000025, 0x80000001002A8FF0, sub_1001AB030, v7, v9);
}

uint64_t sub_1001AA80C()
{
  sub_100006610();
  sub_1000058C4();
  v3 = v2;
  v4 = *v1;
  sub_100006870();
  *v5 = v4;
  *(v3 + 80) = v0;

  if (v0)
  {
    v6 = *(v3 + 32);
    v7 = sub_1001AAA0C;
  }

  else
  {
    v8 = *(v3 + 32);

    v7 = sub_1001AA924;
    v6 = v8;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1001AA924()
{
  v1 = v0[2];
  v2 = [v1 floatingLayerImage];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];
  if (v2)
  {
    v6 = v2;
    v7 = [objc_opt_self() trimmedImageByTrimmingTransparentPixelsFromImage:v2];
  }

  else
  {

    v7 = 0;
  }

  sub_100026F44();

  return v8(v7);
}

uint64_t sub_1001AAA0C()
{
  sub_100005408();

  if (qword_1003A9F40 != -1)
  {
    sub_10000755C();
  }

  v1 = type metadata accessor for Logger();
  sub_100008A14(v1, &unk_1003B8820);
  sub_10000594C();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    sub_100005414(&_mh_execute_header, v11, v12, "PosterSnapshotService: PosterKit snapshot failed with error: %@");
    sub_100153D2C(v9);
    sub_100005BB8();
    sub_100005BB8();
  }

  else
  {
  }

  sub_100026F44();

  return v13(0);
}

void sub_1001AAB98(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10014EA98(&qword_1003AC210);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1001AB07C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001AADD8;
  aBlock[3] = &unk_10035D230;
  v13 = _Block_copy(aBlock);

  [a2 executeSnapshotRequest:a3 completion:v13];
  _Block_release(v13);
}

uint64_t sub_1001AAD50(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a2;
    sub_10014EA98(&qword_1003AC210);
    return CheckedContinuation.resume(returning:)();
  }

  else if (a3)
  {
    swift_errorRetain();
    sub_10014EA98(&qword_1003AC210);
    return CheckedContinuation.resume(throwing:)();
  }

  return result;
}

void sub_1001AADD8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t PosterSnapshotService.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PosterSnapshotService.__deallocating_deinit()
{
  PosterSnapshotService.deinit();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001AAED4()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  *(v0 + 120) = Dictionary.init(dictionaryLiteral:)();
  return v0;
}

uint64_t sub_1001AAF48(void *a1)
{
  v1 = [a1 extensionBundleID];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1000085C0();
}

unint64_t sub_1001AAFDC()
{
  result = qword_1003AC1F8;
  if (!qword_1003AC1F8)
  {
    type metadata accessor for PosterSnapshotService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC1F8);
  }

  return result;
}

unint64_t sub_1001AB038()
{
  result = qword_1003AC200;
  if (!qword_1003AC200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AC200);
  }

  return result;
}

uint64_t sub_1001AB07C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_10014EA98(&qword_1003AC210);

  return sub_1001AAD50(a1, a2, a3);
}

uint64_t sub_1001AB110()
{
  sub_100005408();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[6];
  v8 = v0[7];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100008208;

  return sub_1001AA364(v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1001AB1E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001AB234(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1001AB2C0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10014EA98(&qword_1003AC218);
  sub_1001AB460(v1, (a1 + *(v3 + 44)));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = (a1 + *(sub_10014EA98(&qword_1003AC220) + 36));
  *v4 = v19;
  v4[1] = v20;
  v4[2] = v21;
  v5 = [objc_opt_self() systemGray2Color];
  v6 = Color.init(_:)();
  v7 = static Edge.Set.all.getter();
  v8 = a1 + *(sub_10014EA98(&qword_1003AC228) + 36);
  *v8 = v6;
  *(v8 + 8) = v7;
  v9 = (a1 + *(sub_10014EA98(&qword_1003AC230) + 36));
  v10 = *(type metadata accessor for RoundedRectangle() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  type metadata accessor for RoundedCornerStyle();
  sub_1000058E8();
  (*(v12 + 104))(&v9[v10], v11);
  __asm { FMOV            V0.2D, #10.0 }

  *v9 = _Q0;
  result = sub_10014EA98(&qword_1003AC238);
  *&v9[*(result + 36)] = 256;
  return result;
}

uint64_t sub_1001AB460@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v108 = a1;
  v114 = a2;
  v2 = sub_10014EA98(&qword_1003AC240);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v113 = &v95[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4, v6);
  v109 = &v95[-v7];
  v8 = type metadata accessor for Divider();
  v111 = *(v8 - 8);
  v112 = v8;
  v10 = __chkstk_darwin(v8, v9);
  v110 = &v95[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10, v12);
  v115 = &v95[-v13];
  v14 = sub_10014EA98(&unk_1003ADA90);
  __chkstk_darwin(v14 - 8, v15);
  v17 = &v95[-v16];
  v18 = type metadata accessor for Image.ResizingMode();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18, v20);
  v22 = &v95[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_10014EA98(&qword_1003AC248);
  v24 = v23 - 8;
  v26 = __chkstk_darwin(v23, v25);
  v116 = &v95[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26, v28);
  v30 = &v95[-v29];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v104 = v140;
  v105 = v142;
  v106 = v145;
  v107 = v144;
  v154 = 1;
  v152 = v141;
  v150 = v143;
  Image.init(_:bundle:)();
  (*(v19 + 104))(v22, enum case for Image.ResizingMode.stretch(_:), v18);
  v31 = Image.resizable(capInsets:resizingMode:)();

  (*(v19 + 8))(v22, v18);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v158[0]) = 1;
  *&v139[6] = v146;
  *&v139[22] = v147;
  *&v139[38] = v148;
  v32 = &v30[*(v24 + 44)];
  v33 = *(type metadata accessor for RoundedRectangle() + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = type metadata accessor for RoundedCornerStyle();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #10.0 }

  *v32 = _Q0;
  *&v32[*(sub_10014EA98(&qword_1003AC238) + 36)] = 256;
  v41 = *&v139[16];
  *(v30 + 18) = *v139;
  *v30 = v31;
  *(v30 + 1) = 0;
  *(v30 + 8) = 1;
  *(v30 + 34) = v41;
  *(v30 + 50) = *&v139[32];
  v103 = v30;
  *(v30 + 8) = *&v139[46];
  LocalizedStringKey.init(stringLiteral:)();
  v42 = Text.init(_:tableName:bundle:comment:)();
  v44 = v43;
  LOBYTE(v31) = v45;
  v46 = type metadata accessor for Font.Design();
  v97 = v17;
  v98 = v46;
  sub_100006848(v17, 1, 1, v46);
  static Font.system(size:weight:design:)();
  sub_100008360(v17, &unk_1003ADA90);
  v47 = Text.font(_:)();
  v49 = v48;
  v51 = v50;

  sub_1001AD540(v42, v44, v31 & 1);

  static Color.black.getter();
  v52 = Text.foregroundColor(_:)();
  v54 = v53;
  LOBYTE(v17) = v55;

  sub_1001AD540(v47, v49, v51 & 1);

  v56 = Text.bold()();
  v100 = v57;
  v101 = v56;
  v99 = v58;
  v102 = v59;
  sub_1001AD540(v52, v54, v17 & 1);

  LocalizedStringKey.init(stringLiteral:)();
  v60 = Text.init(_:tableName:bundle:comment:)();
  v62 = v61;
  LOBYTE(v52) = v63;
  v64 = v97;
  sub_100006848(v97, 1, 1, v98);
  static Font.system(size:weight:design:)();
  sub_100008360(v64, &unk_1003ADA90);
  v65 = Text.font(_:)();
  v67 = v66;
  LOBYTE(v47) = v68;

  sub_1001AD540(v60, v62, v52 & 1);

  static Color.black.getter();
  v69 = Text.foregroundColor(_:)();
  v97 = v70;
  v98 = v71;
  v96 = v72;

  sub_1001AD540(v65, v67, v47 & 1);

  v73 = v115;
  Divider.init()();
  v74 = static VerticalAlignment.center.getter();
  LOBYTE(v126) = 1;
  v75 = v108;
  sub_1001ABEF8(v158);
  memcpy(v155, v158, sizeof(v155));
  memcpy(v156, v158, 0xA0uLL);
  sub_1000098D4(v155, v117, &qword_1003AC250);
  sub_100008360(v156, &qword_1003AC250);
  memcpy(&v138[7], v155, 0xA0uLL);
  LOBYTE(v65) = v126;
  LOBYTE(v62) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = static HorizontalAlignment.center.getter();
  v85 = v109;
  *v109 = v84;
  *(v85 + 8) = 0;
  *(v85 + 16) = 0;
  v86 = sub_10014EA98(&qword_1003AC258);
  sub_1001AC4FC(v75, v85 + *(v86 + 44));
  v126 = 0;
  v127 = v154;
  *v128 = *v153;
  *&v128[3] = *&v153[3];
  v129 = v104;
  v130 = v152;
  *v131 = *v151;
  *&v131[3] = *&v151[3];
  v132 = v105;
  v133 = v150;
  *v134 = *v149;
  *&v134[3] = *&v149[3];
  v135 = v107;
  v136 = v106;
  v137[0] = &v126;
  v87 = v103;
  v88 = v116;
  sub_1000098D4(v103, v116, &qword_1003AC248);
  v122 = v101;
  v123 = v100;
  v124 = v99 & 1;
  v125 = v102;
  v137[1] = v88;
  v137[2] = &v122;
  v118 = v69;
  v119 = v97;
  v120 = v96 & 1;
  v121 = v98;
  v137[3] = &v118;
  v90 = v110;
  v89 = v111;
  v91 = v112;
  (*(v111 + 16))(v110, v73, v112);
  v137[4] = v90;
  v117[0] = v74;
  v117[1] = 0;
  LOBYTE(v117[2]) = v65;
  memcpy(&v117[2] + 1, v138, 0xA7uLL);
  LOBYTE(v117[23]) = v62;
  *(&v117[23] + 1) = *v157;
  HIDWORD(v117[23]) = *&v157[3];
  v117[24] = v77;
  v117[25] = v79;
  v117[26] = v81;
  v117[27] = v83;
  LOBYTE(v117[28]) = 0;
  v137[5] = v117;
  v92 = v113;
  sub_1000098D4(v85, v113, &qword_1003AC240);
  v137[6] = v92;
  sub_1001AC0C4(v137, v114);
  sub_100008360(v85, &qword_1003AC240);
  v93 = *(v89 + 8);
  v93(v115, v91);
  sub_100008360(v87, &qword_1003AC248);
  sub_100008360(v92, &qword_1003AC240);
  memcpy(v158, v117, 0xE1uLL);
  sub_100008360(v158, &qword_1003AC260);
  v93(v90, v91);
  sub_1001AD540(v118, v119, v120);

  sub_1001AD540(v122, v123, v124);

  return sub_100008360(v116, &qword_1003AC248);
}

uint64_t sub_1001ABEF8@<X0>(void *a1@<X8>)
{
  sub_10014EA98(&qword_1003AC278);
  State.projectedValue.getter();
  State.projectedValue.getter();
  State.projectedValue.getter();
  v5 = v21;
  State.projectedValue.getter();
  v4 = v21;
  State.projectedValue.getter();
  v2 = v21;
  v19 = v21;
  v18 = 1;
  v20 = v22;
  v14 = v22;
  v15 = 2;
  v16 = v21;
  v17 = v22;
  *&v21 = &v18;
  *(&v21 + 1) = &v15;
  v11 = v22;
  v12 = 3;
  v13 = v5;
  v8 = v22;
  v9 = 4;
  v10 = v4;
  v22 = &v12;
  v23 = &v9;
  v6 = 5;
  v7 = v2;
  v24 = &v6;
  sub_1001AC284(&v21, a1);
}

uint64_t sub_1001AC0C4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *(*a1 + 48);
  v6 = **a1;
  v5 = *(*a1 + 16);
  *(a2 + 2) = *(*a1 + 32);
  *(a2 + 3) = v4;
  *a2 = v6;
  *(a2 + 1) = v5;
  v7 = sub_10014EA98(&qword_1003AC268);
  sub_1000098D4(a1[1], &a2[v7[12]], &qword_1003AC248);
  v8 = &a2[v7[16]];
  v9 = a1[2];
  v10 = a1[3];
  v11 = *v9;
  v12 = *(v9 + 8);
  v13 = *(v9 + 16);
  v26 = *(v9 + 24);
  *v8 = *v9;
  *(v8 + 1) = v12;
  v8[16] = v13;
  *(v8 + 3) = v26;
  v14 = &a2[v7[20]];
  v15 = *v10;
  v16 = *(v10 + 8);
  v17 = *(v10 + 16);
  v25 = v17;
  v18 = *(v10 + 24);
  *v14 = *v10;
  *(v14 + 1) = v16;
  v14[16] = v17;
  *(v14 + 3) = v18;
  v19 = v7[24];
  v20 = a1[4];
  v21 = type metadata accessor for Divider();
  (*(*(v21 - 8) + 16))(&a2[v19], v20, v21);
  v22 = v7[28];
  v23 = a1[5];
  memcpy(__dst, v23, 0xE1uLL);
  memmove(&a2[v22], v23, 0xE1uLL);
  sub_1000098D4(a1[6], &a2[v7[32]], &qword_1003AC240);
  sub_1001AD550(v11, v12, v13);

  sub_1001AD550(v15, v16, v25);

  return sub_1000098D4(__dst, v27, &qword_1003AC260);
}

uint64_t sub_1001AC284@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = *v2;
  v8 = v2[1];
  v10 = v2[2];
  v9 = v2[3];
  v11 = a1[2];
  v12 = a1[3];
  v13 = *v11;
  v14 = v11[1];
  v16 = v11[2];
  v15 = v11[3];
  v17 = *v12;
  v18 = v12[1];
  v20 = v12[2];
  v19 = v12[3];
  v21 = a1[4];
  v23 = *v21;
  v22 = v21[1];
  v25 = v21[2];
  v24 = v21[3];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v10;
  a2[7] = v9;
  a2[8] = v13;
  a2[9] = v14;
  a2[10] = v16;
  a2[11] = v15;
  a2[12] = v17;
  a2[13] = v18;
  a2[14] = v20;
  a2[15] = v19;
  a2[16] = v23;
  a2[17] = v22;
  a2[18] = v25;
  a2[19] = v24;
}

uint64_t sub_1001AC374@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Divider();
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v4, v5);
  v7 = sub_10014EA98(&qword_1003AC2F0);
  v8 = v7[12];
  v9 = a1[1];
  v10 = sub_10014EA98(&qword_1003AC270);
  v14 = *(*(v10 - 8) + 16);
  (v14)((v10 - 8), a2 + v8, v9, v10);
  v6(a2 + v7[16], a1[2], v5);
  v14(a2 + v7[20], a1[3], v10);
  v6(a2 + v7[24], a1[4], v5);
  v11 = a1[5];
  v12 = a2 + v7[28];

  return (v14)(v12, v11, v10);
}

uint64_t sub_1001AC4FC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v69 = sub_10014EA98(&qword_1003AC270);
  v68 = *(v69 - 8);
  v4 = __chkstk_darwin(v69, v3);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4, v6);
  v78 = &v63 - v8;
  v10 = __chkstk_darwin(v7, v9);
  v77 = &v63 - v11;
  v13 = __chkstk_darwin(v10, v12);
  v79 = &v63 - v14;
  v16 = __chkstk_darwin(v13, v15);
  v80 = &v63 - v17;
  __chkstk_darwin(v16, v18);
  v20 = &v63 - v19;
  v66 = type metadata accessor for Divider();
  v76 = *(v66 - 8);
  v22 = __chkstk_darwin(v66, v21);
  v67 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22, v24);
  v75 = &v63 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v74 = &v63 - v29;
  v31 = __chkstk_darwin(v28, v30);
  v72 = &v63 - v32;
  v34 = __chkstk_darwin(v31, v33);
  v36 = &v63 - v35;
  __chkstk_darwin(v34, v37);
  v73 = &v63 - v38;
  Divider.init()();
  v39 = *a1;
  v83 = a1[1];
  v84[0] = v39;
  v82 = a1[2];
  v40 = swift_allocObject();
  v41 = a1[1];
  v40[1] = *a1;
  v40[2] = v41;
  v40[3] = a1[2];
  sub_1000098D4(v84, v81, &qword_1003AC278);
  sub_1000098D4(&v83, v81, &qword_1003AFBC0);
  sub_1000098D4(&v82, v81, &qword_1003AC280);
  sub_10014EA98(&qword_1003AC288);
  sub_1001ADD20(&qword_1003AC290, &qword_1003AC288, &unk_1002FCC90, sub_1001AD580);
  v65 = v20;
  Button.init(action:label:)();
  v64 = v36;
  Divider.init()();
  v42 = swift_allocObject();
  v43 = a1[1];
  v42[1] = *a1;
  v42[2] = v43;
  v42[3] = a1[2];
  sub_1000098D4(v84, v81, &qword_1003AC278);
  sub_1000098D4(&v83, v81, &qword_1003AFBC0);
  sub_1000098D4(&v82, v81, &qword_1003AC280);
  Button.init(action:label:)();
  Divider.init()();
  v44 = swift_allocObject();
  v45 = a1[1];
  v44[1] = *a1;
  v44[2] = v45;
  v44[3] = a1[2];
  sub_1000098D4(v84, v81, &qword_1003AC278);
  sub_1000098D4(&v83, v81, &qword_1003AFBC0);
  sub_1000098D4(&v82, v81, &qword_1003AC280);
  Button.init(action:label:)();
  v46 = *(v76 + 16);
  v47 = v74;
  v48 = v66;
  v46(v74, v73, v66);
  v81[0] = v47;
  v49 = v68;
  v50 = *(v68 + 16);
  v51 = v77;
  v52 = v69;
  v50(v77, v20, v69);
  v81[1] = v51;
  v53 = v75;
  v46(v75, v36, v48);
  v81[2] = v53;
  v54 = v78;
  v55 = v52;
  v50(v78, v80, v52);
  v81[3] = v54;
  v56 = v67;
  v57 = v72;
  v46(v67, v72, v48);
  v81[4] = v56;
  v58 = v70;
  v59 = v79;
  v50(v70, v79, v55);
  v81[5] = v58;
  sub_1001AC374(v81, v71);
  v60 = *(v49 + 8);
  v60(v59, v55);
  v61 = *(v76 + 8);
  v61(v57, v48);
  v60(v80, v55);
  v61(v64, v48);
  v60(v65, v55);
  v61(v73, v48);
  v60(v58, v55);
  v61(v56, v48);
  v60(v78, v55);
  v61(v75, v48);
  v60(v77, v55);
  return (v61)(v74, v48);
}

void *sub_1001ACC94@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10014EA98(&unk_1003ADA90);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v24 - v4;
  LocalizedStringKey.init(stringLiteral:)();
  v25 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v12 = v9 & 1;
  v26 = v9 & 1;
  static Font.Weight.bold.getter();
  v13 = type metadata accessor for Font.Design();
  sub_100006848(v5, 1, 1, v13);
  v14 = static Font.system(size:weight:design:)();
  sub_100008360(v5, &unk_1003ADA90);
  KeyPath = swift_getKeyPath();
  v16 = objc_opt_self();
  v17 = [v16 systemBlueColor];
  v18 = Color.init(_:)();
  v19 = swift_getKeyPath();
  v20 = [v16 systemGray2Color];
  v21 = Color.init(_:)();
  v22 = static Edge.Set.all.getter();
  *a1 = v25;
  *(a1 + 8) = v7;
  *(a1 + 16) = v12;
  *(a1 + 24) = v11;
  result = memcpy((a1 + 32), __src, 0x70uLL);
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v14;
  *(a1 + 160) = v19;
  *(a1 + 168) = v18;
  *(a1 + 176) = v21;
  *(a1 + 184) = v22;
  return result;
}

void sub_1001ACECC(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = v2;
    sub_10014EA98(&qword_1003AC278);
    State.wrappedValue.getter();
    sub_10023597C(v5, a2 & 1);
  }

  else
  {
    type metadata accessor for ScoreController();
    sub_1001ADB54();
    EnvironmentObject.error()();
    __break(1u);
  }
}

void *sub_1001ACF74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10014EA98(&unk_1003ADA90);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v24 - v4;
  LocalizedStringKey.init(stringLiteral:)();
  v25 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v12 = v9 & 1;
  v26 = v9 & 1;
  v13 = type metadata accessor for Font.Design();
  sub_100006848(v5, 1, 1, v13);
  v14 = static Font.system(size:weight:design:)();
  sub_100008360(v5, &unk_1003ADA90);
  KeyPath = swift_getKeyPath();
  v16 = objc_opt_self();
  v17 = [v16 systemBlueColor];
  v18 = Color.init(_:)();
  v19 = swift_getKeyPath();
  v20 = [v16 systemGray2Color];
  v21 = Color.init(_:)();
  v22 = static Edge.Set.all.getter();
  *a1 = v25;
  *(a1 + 8) = v7;
  *(a1 + 16) = v12;
  *(a1 + 24) = v11;
  result = memcpy((a1 + 32), __src, 0x70uLL);
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v14;
  *(a1 + 160) = v19;
  *(a1 + 168) = v18;
  *(a1 + 176) = v21;
  *(a1 + 184) = v22;
  return result;
}

void sub_1001AD1AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1;
    sub_10023597C(-1, 0);
  }

  else
  {
    type metadata accessor for ScoreController();
    sub_1001ADB54();
    EnvironmentObject.error()();
    __break(1u);
  }
}

void *sub_1001AD234@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10014EA98(&unk_1003ADA90);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v24 - v4;
  LocalizedStringKey.init(stringLiteral:)();
  v25 = Text.init(_:tableName:bundle:comment:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v12 = v9 & 1;
  v26 = v9 & 1;
  v13 = type metadata accessor for Font.Design();
  sub_100006848(v5, 1, 1, v13);
  v14 = static Font.system(size:weight:design:)();
  sub_100008360(v5, &unk_1003ADA90);
  KeyPath = swift_getKeyPath();
  v16 = objc_opt_self();
  v17 = [v16 systemBlueColor];
  v18 = Color.init(_:)();
  v19 = swift_getKeyPath();
  v20 = [v16 systemGray2Color];
  v21 = Color.init(_:)();
  v22 = static Edge.Set.all.getter();
  *a1 = v25;
  *(a1 + 8) = v7;
  *(a1 + 16) = v12;
  *(a1 + 24) = v11;
  result = memcpy((a1 + 32), __src, 0x70uLL);
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = v14;
  *(a1 + 160) = v19;
  *(a1 + 168) = v18;
  *(a1 + 176) = v21;
  *(a1 + 184) = v22;
  return result;
}

uint64_t sub_1001AD464@<X0>(uint64_t a1@<X8>)
{
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  type metadata accessor for ScoreController();
  sub_1001ADB54();
  result = EnvironmentObject.init()();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1001AD540(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001AD550(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1001AD580()
{
  result = qword_1003AC298;
  if (!qword_1003AC298)
  {
    sub_100155B7C(&qword_1003AC2A0);
    sub_1001AD638();
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC298);
  }

  return result;
}

unint64_t sub_1001AD638()
{
  result = qword_1003AC2A8;
  if (!qword_1003AC2A8)
  {
    sub_100155B7C(&qword_1003AC2B0);
    sub_1001AD6F0();
    sub_100027E08(&qword_1003AC2C8, &qword_1003AC2D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC2A8);
  }

  return result;
}

unint64_t sub_1001AD6F0()
{
  result = qword_1003AC2B8;
  if (!qword_1003AC2B8)
  {
    sub_100155B7C(&qword_1003AC2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC2B8);
  }

  return result;
}

uint64_t sub_1001AD794()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1001AD7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  return Button.init(action:label:)();
}

uint64_t sub_1001AD8AC()
{
  sub_10014EA98(&qword_1003AC330);
  Binding.wrappedValue.setter();
  sub_10014EA98(&qword_1003AC338);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1002FAB60;
  *(v0 + 56) = &type metadata for String;
  strcpy((v0 + 32), "selected star");
  *(v0 + 46) = -4864;
  print(_:separator:terminator:)();
}

uint64_t sub_1001AD97C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_10014EA98(&unk_1003ADA90);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v24 - v10;
  v24[3] = a1;
  v24[4] = a2;
  v24[5] = a3;
  sub_10014EA98(&qword_1003AC330);
  Binding.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  LOBYTE(a1) = v15;
  v16 = type metadata accessor for Font.Design();
  sub_100006848(v11, 1, 1, v16);
  static Font.system(size:weight:design:)();
  sub_100008360(v11, &unk_1003ADA90);
  v17 = Text.font(_:)();
  v19 = v18;
  LOBYTE(v11) = v20;
  v22 = v21;

  sub_1001AD540(v12, v14, a1 & 1);

  *a4 = v17;
  *(a4 + 8) = v19;
  *(a4 + 16) = v11 & 1;
  *(a4 + 24) = v22;
  return result;
}

unint64_t sub_1001ADB54()
{
  result = qword_1003AC2F8;
  if (!qword_1003AC2F8)
  {
    type metadata accessor for ScoreController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC2F8);
  }

  return result;
}

uint64_t sub_1001ADBAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001ADBEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001ADC3C()
{
  result = qword_1003AC300;
  if (!qword_1003AC300)
  {
    sub_100155B7C(&qword_1003AC230);
    sub_1001ADD20(&qword_1003AC308, &qword_1003AC228, &unk_1002FCC28, sub_1001ADDD0);
    sub_100027E08(&qword_1003AC328, &qword_1003AC238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC300);
  }

  return result;
}

uint64_t sub_1001ADD20(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100155B7C(a2);
    a4();
    sub_100027E08(&qword_1003AC2E0, &qword_1003AC2E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001ADDD0()
{
  result = qword_1003AC310;
  if (!qword_1003AC310)
  {
    sub_100155B7C(&qword_1003AC220);
    sub_100027E08(&qword_1003AC318, &qword_1003AC320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AC310);
  }

  return result;
}

uint64_t sub_1001ADEBC(uint64_t a1)
{
  sub_100008878((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

id sub_1001ADEF0()
{
  v1 = v0;

  v2 = [objc_opt_self() sharedInstance];
  type metadata accessor for DeclineCallService();
  swift_allocObject();
  *&v1[OBJC_IVAR___ICSGreenTea3PUIHardwareEventHandler_declineCallService] = sub_1002025F4(v2);
  v4.receiver = v1;
  v4.super_class = type metadata accessor for GreenTea3PUIHardwareEventHandler();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_1001ADFC8()
{
  sub_100006610();
  v1[37] = v2;
  v1[38] = v0;
  v1[35] = v3;
  v1[36] = v4;
  v1[34] = v5;
  sub_10014EA98(&qword_1003AAB40);
  v1[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[40] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[41] = v7;
  v1[42] = v6;

  return _swift_task_switch(sub_1001AE09C, v7, v6);
}

uint64_t sub_1001AE09C()
{
  sub_100006880();
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 frontmostAudioOrVideoCall];
  *(v0 + 344) = v3;

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [v3 provider];
  v5 = [v4 supportsDynamicSystemUI];

  if (!v5)
  {

LABEL_7:

    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v9 = type metadata accessor for Logger();
    sub_100008A14(v9, &unk_1003B8820);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "GreenTea3PHardwareEventHandler is not handling lock event because frontmost call does not support dynamic system UI", v12, 2u);
    }

    v13 = *(v0 + 280);

    v13(0);
    goto LABEL_12;
  }

  if (![*(v0 + 272) sourceType])
  {

    if (qword_1003A9F40 != -1)
    {
      sub_10000755C();
    }

    v16 = type metadata accessor for Logger();
    sub_100008A14(v16, &unk_1003B8820);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "GreenTea3PHardwareEventHandler is not handling lock event because event source is unknown", v19, 2u);
    }

    v20 = *(v0 + 280);

    v20(0);
    goto LABEL_12;
  }

  v6 = [v1 sharedInstance];
  v7 = [v6 incomingCall];
  *(v0 + 352) = v7;

  if (v7)
  {
    v8 = [v7 shouldSuppressRingtone];
  }

  else
  {
    v8 = 0;
  }

  if ([*(v0 + 272) sourceType] == 2)
  {
    if (v7 || (sub_1001AECA0() & 1) != 0)
    {
      v21 = v0 + 208;
      v22 = (v0 + 80);
      v23 = *(*(v0 + 304) + OBJC_IVAR___ICSGreenTea3PUIHardwareEventHandler_declineCallService);
      *(v0 + 80) = v0;
      *(v0 + 88) = sub_1001AE638;
      v24 = swift_continuation_init();
      *(v0 + 264) = sub_10014EA98(&qword_1003AAE28);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1001ADEBC;
      *(v0 + 232) = &unk_10035D450;
      *(v0 + 240) = v24;
      goto LABEL_32;
    }

LABEL_28:
    if ((sub_1001AECA0() & 1) == 0)
    {
LABEL_35:

      v28 = 0;
      goto LABEL_36;
    }

LABEL_29:
    v29 = [objc_opt_self() sharedInstance];
    if (!v29)
    {
      __break(1u);
      return _swift_continuation_await(v29);
    }

    v30 = v29;
    v31 = [v29 isLockToEndCallEnabled];

    if (v31)
    {
      v22 = (v0 + 16);
      v21 = v0 + 144;
      v23 = *(*(v0 + 304) + OBJC_IVAR___ICSGreenTea3PUIHardwareEventHandler_declineCallService);
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1001AE7BC;
      v32 = swift_continuation_init();
      *(v0 + 200) = sub_10014EA98(&qword_1003AAE28);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1001ADEBC;
      *(v0 + 168) = &unk_10035D428;
      *(v0 + 176) = v32;
LABEL_32:
      [v23 declineAnsweringCallDueToLockEventWithCurrentActiveCall:v3 completionHandler:v21];
      v29 = v22;

      return _swift_continuation_await(v29);
    }

    goto LABEL_35;
  }

  if (!v7)
  {
    goto LABEL_28;
  }

  if (v8)
  {
    goto LABEL_29;
  }

  v25 = *(v0 + 312);

  v26 = [v7 uniqueProxyIdentifierUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = type metadata accessor for UUID();
  v28 = 1;
  sub_100006848(v25, 0, 1, v27);
  sub_1001E815C();
  sub_1001AEDAC(v25);
  [v7 suppressRingtone];
LABEL_36:
  v34 = *(v0 + 344);
  v33 = *(v0 + 352);
  (*(v0 + 280))(v28);

LABEL_12:

  sub_10000535C();

  return v14();
}