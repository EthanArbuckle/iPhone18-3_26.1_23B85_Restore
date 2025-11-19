uint64_t sub_1000F639C()
{
  v2 = v0[35];
  v1 = v0[36];

  v3 = v0[29];
  v4 = v0[30];

  return _swift_task_switch(sub_1000F6408, v3, v4);
}

uint64_t sub_1000F6408()
{
  v1 = v0[28];

  v3 = v0[25];
  v2 = v0[26];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v7 = v0[20];

  v8 = v0[1];

  return v8();
}

void sub_1000F64B4(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000F9638(a1, a2);
  }
}

id sub_1000F65B4()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F20);
  v2 = static os_log_type_t.debug.getter();
  v3 = v0;
  v4 = Logger.logObject.getter();

  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, v2, "SceneDelegate deinit %@", v5, 0xCu);
    sub_10000F500(v6, &unk_10025D580, &qword_1001CFA60);
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t type metadata accessor for SceneDelegate()
{
  result = qword_100262410;
  if (!qword_100262410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F687C(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v12 = a1;
    if ([v5 _isWritingToolsHandlingKeyboardTracking])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        sub_1000081B0(0, &qword_100262490, _UIHostedWindowScene_ptr);
        v8 = v12;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          v10 = [v4 keyboardSceneDelegate];
          if (v10)
          {
            v11 = v10;
            [v10 removeVisibilityObserver:v1];
          }
        }
      }
    }
  }
}

void sub_1000F6B08(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v37);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 keyboardOnScreen])
  {
    [SceneDelegate supressAssistantBarInUIService]_0();
  }

  [a1 keyboardPositionWithIAV];
  v9 = NSStringFromCGRect(v41);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [a1 sourceBundleIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v17 = 0xEE00646569666963;
    v15 = 0x6570732D656E6F6ELL;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000F34C(v18, qword_100276F08);
  v19 = static os_log_type_t.debug.getter();

  v20 = Logger.logObject.getter();

  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v21 = 136315394;
    v22 = sub_10002510C(v10, v12, aBlock);

    *(v21 + 4) = v22;
    *(v21 + 12) = 2080;
    v23 = sub_10002510C(v15, v17, aBlock);

    *(v21 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v20, v19, "localKeyboardChanged pos=%s source=%s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v24 = *&v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation];
  *&v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation] = a1;
  v25 = a1;

  v26 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled;
  if ((v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled] & 1) == 0)
  {
    sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
    v27 = static OS_dispatch_queue.main.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = v2;
    aBlock[4] = sub_100105C18;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001256BC;
    aBlock[3] = &unk_10024E678;
    v29 = _Block_copy(aBlock);
    v30 = v2;

    v31 = v34;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001068A4(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
    sub_100058DD0();
    v32 = v36;
    v33 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);

    (*(v38 + 8))(v32, v33);
    (*(v35 + 8))(v31, v37);
    v2[v26] = 1;
  }
}

void sub_1000F7090(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v35 = *(v37 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v37);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 keyboardPositionWithIAV];
  v9 = NSStringFromCGRect(v41);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [a1 sourceBundleIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v17 = 0xEE00646569666963;
    v15 = 0x6570732D656E6F6ELL;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000F34C(v18, qword_100276F08);
  v19 = static os_log_type_t.debug.getter();

  v20 = Logger.logObject.getter();

  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v21 = 136315394;
    v22 = sub_10002510C(v10, v12, aBlock);

    *(v21 + 4) = v22;
    *(v21 + 12) = 2080;
    v23 = sub_10002510C(v15, v17, aBlock);

    *(v21 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v20, v19, "remoteKeyboardChanged pos=%s source=%s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v24 = *&v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation];
  *&v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation] = a1;
  v25 = a1;

  v26 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled;
  if ((v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled] & 1) == 0)
  {
    sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
    v27 = static OS_dispatch_queue.main.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = v2;
    aBlock[4] = sub_100106A24;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001256BC;
    aBlock[3] = &unk_10024E628;
    v29 = _Block_copy(aBlock);
    v30 = v2;

    v31 = v34;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001068A4(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
    sub_100058DD0();
    v32 = v36;
    v33 = v39;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);

    (*(v38 + 8))(v32, v33);
    (*(v35 + 8))(v31, v37);
    v2[v26] = 1;
  }
}

void sub_1000F7600()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingPreferredContentSize;
  v3 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingPreferredContentSize + 16);
  v4 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation;
  v5 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation);
  if (!v5)
  {
    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v6 = v5;
  sub_10010597C(v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v6 keyboardPositionWithIAV];
  v16 = v15;
  v18 = v17;
  if (qword_10025A730 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000F34C(v19, qword_100276FF8);
  v20 = static os_log_type_t.default.getter();
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, v20))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    *(v22 + 4) = v16;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v21, v20, "Send host updated keyboard size=(%f,%f)", v22, 0x16u);
  }

  v23 = [objc_opt_self() actionForUpdateKeyboardPosition:v3 ^ 1u preferredContentSizeChanged:{v8, v10, v12, v14}];
  sub_1000FA304(v23);

  v24 = *(v1 + v4);
  *(v1 + v4) = 0;

  if ((*(v2 + 16) & 1) == 0)
  {
LABEL_9:
    v25 = *(v2 + 8);
    if (qword_10025A730 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000F34C(v26, qword_100276FF8);
    v27 = static os_log_type_t.default.getter();
    v28 = Logger.logObject.getter();
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v28, v27, "Send host updated preferredContentSize (height=%f)", v29, 0xCu);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      [Strong _setPreferredContentSize:{0.0, nullsub_1(v25)}];
    }

    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 1;
  }

LABEL_16:
  *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled) = 0;
}

uint64_t sub_1000F7CB4(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel);
  if (v2)
  {
    v3 = result;
    swift_getKeyPath();
    sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v2 + 24);

    if (v3)
    {
      v5 = v3 - 1;
    }

    else
    {
      v5 = 0;
    }

    if (*(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount) != v5)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1000F7ECC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel);
  if (v2)
  {
    v3 = result;
    swift_getKeyPath();
    sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v2 + 24);

    if (*(v4 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount) != v3)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

void sub_1000F80DC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = [a1 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = UUID.uuidString.getter();
    v16 = v15;
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000F34C(v17, qword_100276F08);
  v18 = v4;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34 = a3;
    aBlock[0] = v23;
    v24 = a2;
    v25 = v23;
    *v21 = 138412546;
    *(v21 + 4) = v18;
    *v22 = v18;
    *(v21 + 12) = 2080;
    v26 = v18;
    v27 = sub_10002510C(v14, v16, aBlock);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "SceneDelegate %@: willBeginWritingToolsSession (sessionID=%s)", v21, 0x16u);
    sub_10000F500(v22, &unk_10025D580, &qword_1001CFA60);

    sub_10000F4B4(v25);
    a2 = v24;
    a3 = v34;
  }

  else
  {
  }

  v28 = *&v18[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session];
  *&v18[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session] = a1;

  v29 = objc_opt_self();
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000F845C;
  aBlock[3] = &unk_10024E5D8;
  v30 = _Block_copy(aBlock);
  v31 = a1;

  v32 = [v29 actionForWillBeginWritingToolsSession:v31 requestContextsCompletion:v30];
  _Block_release(v30);
  sub_1000FA304(v32);
}

uint64_t sub_1000F845C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1000081B0(0, &unk_100262480, WTContext_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

void sub_1000F8580(uint64_t a1, uint64_t a2)
{
  sub_1000081B0(0, &unk_100262480, WTContext_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_1000F8614(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v9 = objc_opt_self();
  v10 = a3;
  v12 = a1;
  v11 = [v9 *a5];
  sub_1000FA304(v11);
}

void sub_1000F86BC(void *a1, char a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000F34C(v10, qword_100276F08);
  v11 = static os_log_type_t.debug.getter();
  v12 = v2;
  v13 = a1;
  v14 = Logger.logObject.getter();

  if (os_log_type_enabled(v14, v11))
  {
    v15 = v6;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    v31 = swift_slowAlloc();
    v32 = v31;
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2080;
    v18 = v12;
    v19 = [v13 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001068A4(&qword_100262478, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v5;
    v22 = v11;
    v23 = a2;
    v25 = v24;
    (*(v15 + 8))(v9, v21);
    v26 = sub_10002510C(v20, v25, &v32);
    a2 = v23;

    *(v16 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v14, v22, "SceneDelegate %@: didEndWritingToolsSession (sessionID=%s)", v16, 0x16u);
    sub_10000F500(v30, &unk_10025D580, &qword_1001CFA60);

    sub_10000F4B4(v31);
  }

  v27 = [objc_opt_self() actionForDidEndWritingToolsSession:v13 accepted:a2 & 1];
  sub_1000FA304(v27);

  v28 = *&v12[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session];
  *&v12[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session] = 0;
}

void sub_1000F8AA4(uint64_t a1)
{
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276F08);
  v4 = static os_log_type_t.debug.getter();
  v5 = v1;
  swift_errorRetain();
  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v4))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2112;
    v9 = v5;
    if (a1)
    {
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 14) = v10;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, v6, v4, "SceneDelegate %@: endWritingTools (error=%@)", v7, 0x16u);
    sub_10000341C(&unk_10025D580, &qword_1001CFA60);
    swift_arrayDestroy();
  }

  if (a1)
  {
    v12 = _convertErrorToNSError(_:)();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_opt_self() actionForEndWritingToolsWithError:v12];

  sub_1000FA304(v13);
}

void sub_1000F8DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v16[4] = a7;
  v16[5] = a8;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_1001256BC;
  v16[3] = &unk_10024E5B0;
  v14 = _Block_copy(v16);

  v15 = [v10 actionForShowAlertWithTitle:v11 message:v12 buttonTitle:v13 buttonAction:v14];
  _Block_release(v14);

  sub_1000FA304(v15);
}

void sub_1000F9520(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = objc_opt_self();
  v9 = a1;
  v8 = [v7 *a4];
  sub_1000FA304(v8);
}

void sub_1000F9638(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A730 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F34C(v16, qword_100276FF8);
  v17 = static os_log_type_t.default.getter();
  v18 = Logger.logObject.getter();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v18, v17, "preferredContentSize changed (height=%f)", v19, 0xCu);
  }

  if ([objc_opt_self() _isWritingToolsHandlingKeyboardTracking])
  {
    v20 = &v3[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingPreferredContentSize];
    *v20 = a1;
    v20[1] = a2;
    *(v20 + 16) = 0;
    v21 = *&v3[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window];
    if (v21)
    {
      v22 = [v21 rootViewController];
      if (v22)
      {
        v23 = v22;
        type metadata accessor for FullscreenViewController();
        if (swift_dynamicCastClass())
        {
          sub_10018391C();
        }
      }
    }

    v33 = v12;
    v24 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled;
    if ((v3[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled] & 1) == 0)
    {
      sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
      v32 = static OS_dispatch_queue.main.getter();
      v25 = swift_allocObject();
      *(v25 + 16) = v3;
      aBlock[4] = sub_100106A24;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001256BC;
      aBlock[3] = &unk_10024E588;
      v26 = _Block_copy(aBlock);
      v27 = v3;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1001068A4(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
      sub_100058DD0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v28 = v32;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v7 + 8))(v10, v6);
      (*(v33 + 8))(v15, v11);
      v3[v24] = 1;
    }
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      [Strong _setPreferredContentSize:{0.0, nullsub_1(a2)}];
    }
  }

  v31 = *&v3[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_commonUIManager];
  sub_100154048();
}

void sub_1000F9B18(double a1, double a2, double a3, double a4)
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F34C(v9, qword_100276F20);
  v10 = static os_log_type_t.debug.getter();
  v11 = v4;
  v12 = Logger.logObject.getter();

  if (os_log_type_enabled(v12, v10))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138413314;
    *(v13 + 4) = v11;
    *v14 = v11;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a1;
    *(v13 + 22) = 2048;
    *(v13 + 24) = a2;
    *(v13 + 32) = 2048;
    *(v13 + 34) = a3;
    *(v13 + 42) = 2048;
    *(v13 + 44) = a4;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v12, v10, "SceneDelegate %@: show smart reply questionnaire (rect: %f, %f; %f, %f)", v13, 0x34u);
    sub_10000F500(v14, &unk_10025D580, &qword_1001CFA60);
  }

  v16 = [objc_opt_self() actionForShowSmartReplyQuestionnaireWithRect:{a1, a2, a3, a4}];
  sub_1000FA304(v16);
}

void sub_1000F9D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel);
  if (v4)
  {
    swift_getKeyPath();
    sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v4 + 32);

    swift_getKeyPath();
    sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);

    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276F08);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v11, v12, "Initiating handoff to UCB... (enrolled: %{BOOL}d)", v13, 8u);
    }

    if (a3)
    {
      qword_100277028 = a2;
      qword_100277030 = a3;

      qword_10025E340 = a1;
      byte_10025E348 = 0;
    }

    v14 = Logger.logObject.getter();
    if (v9)
    {
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Proceeding with partner handoff", v16, 2u);
      }

      v17 = [objc_opt_self() actionForHandoffFromUCBFromTool:a1 withPrompt:0];
    }

    else
    {
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v14, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v14, v18, "Requesting enrollment prior to partner handoff...", v19, 2u);
      }

      v17 = [objc_opt_self() actionForEnrollmentBegan];
    }

    v20 = v17;
    sub_1000FA304(v20);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000FA170(double a1)
{
  if (qword_10025A730 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F34C(v2, qword_100276FF8);
  v3 = static os_log_type_t.default.getter();
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v4, v3, "updateKeyboardTrackingHeight, sending %f", v5, 0xCu);
  }

  v6 = [objc_opt_self() actionForUpdateKeyboardTrackingHeight:a1];
  sub_1000FA304(v6);
}

void sub_1000FA304(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window);
  if (v3 && (v4 = [v3 rootViewController]) != 0 && (v5 = v4, v12 = objc_msgSend(v4, "_hostedWindowScene"), v5, v12))
  {
    [v12 sendAction:a1];
  }

  else
  {
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000F34C(v6, qword_100276F08);
    v7 = a1;
    v12 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v7;
      *v10 = v7;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v12, v8, "Could not send action: %@ to hostedWindowScene since it is nil.", v9, 0xCu);
      sub_10000F500(v10, &unk_10025D580, &qword_1001CFA60);
    }
  }
}

uint64_t sub_1000FA4B4(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v4 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_commonUIManager);
  if ((*(v4 + 24) & 1) != 0 || *(v4 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001068A4(&qword_10025B1E0, type metadata accessor for CommonUIManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v4 + 24) = 0;
  }

  v6 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_presentationModel);
  if ((*(v6 + 24) & 1) != 0 || *(v6 + 16) != v3)
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v6 + 24) = 0;
  }

  return result;
}

uint64_t sub_1000FA734(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_presentationModel);
  if ((*(v2 + 40) & 1) != 0 || *(v2 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + 40) = 0;
  }

  return result;
}

uint64_t sub_1000FA8C0(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_presentationModel);
  if (*(v2 + 57) == (result & 1))
  {
    *(v2 + 57) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000FAA48(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v10 = v9;
  v68 = a7;
  v69 = a8;
  v66 = a5;
  v67 = a6;
  v65 = a4;
  v64 = a3;
  v13 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v62 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000081F8(a1, v19, &unk_100262450, &qword_1001CFAA0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000F500(v19, &unk_100262450, &qword_1001CFAA0);
LABEL_13:
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000F34C(v35, qword_100276F08);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "No CompositionModel found. Creating a new Model and setting the delegate for CompositionModel", v38, 2u);
    }

    v63 = a9;

    v39 = type metadata accessor for CompositionModel(0);
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    swift_allocObject();
    v28 = sub_1000947BC();

    v42 = a2;
    sub_100035E70(a2);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v62 - 2) = v28;
    *(&v62 - 1) = v10;
    v71[0] = v28;
    sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v44 = v64 & 1;
    if (*(v28 + 64) == (v64 & 1))
    {
      *(v28 + 64) = v44;
    }

    else
    {
      v45 = swift_getKeyPath();
      __chkstk_darwin(v45);
      *(&v62 - 2) = v28;
      *(&v62 - 8) = v44;
      v71[0] = v28;
      sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v46 = v65;
    sub_1000081F8(v65, v17, &unk_100262450, &qword_1001CFAA0);
    v47 = type metadata accessor for WritingToolsAnalytics();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    v50 = sub_100009B2C(v17);
    v72 = v47;
    v73 = &off_10024B270;
    v71[0] = v50;
    v51 = swift_getKeyPath();
    __chkstk_darwin(v51);
    *(&v62 - 2) = v28;
    *(&v62 - 1) = v71;
    v70 = v28;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10000F500(v71, &unk_10025B1C0, &unk_1001CFA90);
    swift_getKeyPath();
    v71[0] = v28;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v52 = *(v28 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);
    sub_1000081F8(v46, v17, &unk_100262450, &qword_1001CFAA0);
    v53 = *(v47 + 48);
    v54 = *(v47 + 52);
    swift_allocObject();

    v55 = sub_100009B2C(v17);
    v72 = v47;
    v73 = &off_10024B270;
    v71[0] = v55;
    v56 = swift_getKeyPath();
    __chkstk_darwin(v56);
    *(&v62 - 2) = v52;
    *(&v62 - 1) = v71;
    v70 = v52;
    sub_1001068A4(&qword_10025F460, type metadata accessor for AttachmentManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_10000F500(v71, &unk_10025B1C0, &unk_1001CFA90);
    v57 = v67;

    sub_100036040(v66, v57);
    v58 = v69;

    sub_100036200(v68, v58);

    v59 = v63 & 1;
    if (*(v28 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isWebKitView) == (v63 & 1))
    {
      *(v28 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isWebKitView) = v59;
    }

    else
    {
      v60 = swift_getKeyPath();
      __chkstk_darwin(v60);
      *(&v62 - 2) = v28;
      *(&v62 - 8) = v59;
      v71[0] = v28;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    return v28;
  }

  (*(v21 + 32))(v24, v19, v20);
  if (qword_10025A760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = qword_100277038;
  if (!*(qword_100277038 + 16) || (v26 = sub_100005044(v24), (v27 & 1) == 0))
  {
    swift_endAccess();
    (*(v21 + 8))(v24, v20);
    goto LABEL_13;
  }

  v28 = *(*(v25 + 56) + 8 * v26);
  swift_endAccess();
  v29 = qword_10025A6E0;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000F34C(v30, qword_100276F08);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Setting the delegate for CompositionModel", v33, 2u);
  }

  v34 = swift_getKeyPath();
  __chkstk_darwin(v34);
  *(&v62 - 2) = v28;
  *(&v62 - 1) = v10;
  v71[0] = v28;
  sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  (*(v21 + 8))(v24, v20);
  return v28;
}

void sub_1000FB490()
{
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F34C(v0, qword_100276F08);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Did start refinement", v3, 2u);
  }

  v4 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v6 = [v4 actionForMontaraDidStartRefinementForSessionWithUUID:isa];

  sub_1000FA304(v6);
}

void sub_1000FB6D4(char a1)
{
  v2 = v1;
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F08);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received enrollment dismissed result: %{BOOL}d", v7, 8u);
  }

  v8 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel;
  v9 = *&v2[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel];
  if (!v9)
  {
    __break(1u);
    return;
  }

  swift_getKeyPath();
  aBlock[0] = v9;
  sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v9 + 32);

  type metadata accessor for GenerativeAssistantSettingsUserDefaults();
  v11 = static GenerativeAssistantSettingsUserDefaults.isEnabled()() & 1;
  if (v11 == *(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled))
  {
    *(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled) = v11;

    v13 = *&v2[v8];
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    aBlock[0] = v10;
    sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v13 = *&v2[v8];
    if (!v13)
    {
LABEL_12:
      if (a1)
      {
LABEL_13:
        v17 = objc_opt_self();
        v18 = swift_allocObject();
        *(v18 + 16) = v2;
        aBlock[4] = sub_1000FC7B4;
        aBlock[5] = v18;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001256BC;
        aBlock[3] = &unk_10024E538;
        v19 = _Block_copy(aBlock);
        v2;

        v20 = [v17 actionForEnrollmentDismissedWithCompletion:v19];
        _Block_release(v19);
        sub_1000FA304(v20);

        return;
      }

      goto LABEL_15;
    }
  }

  swift_getKeyPath();
  aBlock[0] = v13;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v13 + 32);

  v15 = static GenerativeAssistantSettingsUserDefaults.isEnabled()() & 1;
  if (v15 != *(v14 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled))
  {
    v16 = swift_getKeyPath();
    __chkstk_darwin(v16);
    aBlock[0] = v14;
    sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    goto LABEL_12;
  }

  *(v14 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled) = v15;

  if (a1)
  {
    goto LABEL_13;
  }

LABEL_15:
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "User did not enroll, ending writing tools", v23, 2u);
  }

  sub_1000F8AA4(0);
}

void sub_1000FBC60()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1 && qword_100277030 != 0)
  {
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000F34C(v3, qword_100276F08);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Received enrollment dimissal completion, sending handoff", v6, 2u);
    }

    sub_1000F9D68(2, 0, 0);
  }
}

void sub_1000FBDA8(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v7 = objc_opt_self();
  v8 = a3;
  v10 = a1;
  v9 = [v7 *a4];
  sub_1000FA304(v9);
}

void sub_1000FBE60(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_opt_self();
  v7 = a1;
  v6 = [v5 *a3];
  sub_1000FA304(v6);
}

void sub_1000FBEE4()
{
  v1 = v0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window] = 0;
  v2 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsView;
  v3 = type metadata accessor for WritingToolsView();
  (*(*(v3 - 8) + 56))(&v1[v2], 1, 1, v3);
  *&v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel] = 0;
  v4 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_presentationModel;
  v5 = type metadata accessor for PresentationModel();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 1;
  *(v8 + 32) = 0;
  *(v8 + 40) = 1;
  *(v8 + 48) = 0;
  *(v8 + 56) = 1;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  ObservationRegistrar.init()();
  *&v1[v4] = v8;
  *&v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session] = 0;
  v9 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_commonUIManager;
  v10 = type metadata accessor for CommonUIManager();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v1[v9] = sub_10015671C();
  *&v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingKeyboardInformation] = 0;
  v13 = &v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_pendingPreferredContentSize];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v1[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsSizeUpdateScheduled] = 0;
  type metadata accessor for SceneDelegateContainerViewController();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v14 setModalInPresentation:0];
  v15 = [v14 view];

  if (v15)
  {
    v16 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_rootViewController;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

    *&v1[v16] = v14;
    v17.receiver = v1;
    v17.super_class = type metadata accessor for SceneDelegate();
    objc_msgSendSuper2(&v17, "init");
  }

  else
  {
    __break(1u);
  }
}

void sub_1000FC118()
{
  sub_1000FC1F8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000FC1F8()
{
  if (!qword_100262420)
  {
    type metadata accessor for WritingToolsView();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100262420);
    }
  }
}

void sub_1000FC250(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeAssistantSettingsDestination();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for URL();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnablementUIDismissType();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 != enum case for EnablementUIDismissType.enableWithAccount(_:))
  {
    if (v16 == enum case for EnablementUIDismissType.enableWithoutAccount(_:))
    {
      type metadata accessor for GenerativeAssistantSettingsUserDefaults();
      static GenerativeAssistantSettingsUserDefaults.setEnabled(_:)();
      v23 = 1;
    }

    else
    {
      (*(v12 + 8))(v15, v11);
      v23 = 0;
    }

    goto LABEL_7;
  }

  (*(v3 + 104))(v6, enum case for GenerativeAssistantSettingsDestination.signIn(_:), v2);
  GenerativeAssistantSettingsDestination.fullURL.getter();
  (*(v3 + 8))(v6, v2);
  v17 = [objc_opt_self() defaultWorkspace];
  if (v17)
  {
    v19 = v17;
    URL._bridgeToObjectiveC()(v18);
    v21 = v20;
    sub_1000057A8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v19 openSensitiveURL:v21 withOptions:isa];

    (*(v7 + 8))(v10, v25);
    v23 = 1;
LABEL_7:
    sub_1000FB6D4(v23);
    return;
  }

  __break(1u);
}

id sub_1000FC6F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegateContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000FC77C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FC7BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FCA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  LOBYTE(v5) = a5;
  v30 = a2;
  v9 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000081F8(a1, v12, &unk_100262450, &qword_1001CFAA0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000F500(v12, &unk_100262450, &qword_1001CFAA0);
    goto LABEL_21;
  }

  (*(v14 + 32))(v17, v12, v13);
  if (qword_10025A788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = qword_1002770A8;
  if (*(qword_1002770A8 + 16))
  {
    v19 = sub_100005044(v17);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);
      swift_endAccess();
      swift_getKeyPath();
      v31 = v21;
      sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel);
      swift_retain_n();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v22 = *(v21 + 72);
      a3 = *(v21 + 80);
      a4 = *(v21 + 88);
      v5 = *(v21 + 96);
      sub_10002879C(v22, a3, a4, *(v21 + 96));

      if (v5 != 255)
      {
        goto LABEL_14;
      }

      __break(1u);
    }
  }

  swift_endAccess();
  if (qword_10025A890 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = qword_100277358;
  if (!*(qword_100277358 + 16) || (v24 = sub_100005044(v17), (v25 & 1) == 0))
  {
    swift_endAccess();
    if (qword_10025A760 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (!*(qword_100277038 + 16) || (sub_100005044(v17), (v29 & 1) == 0))
    {
      swift_endAccess();
      (*(v14 + 8))(v17, v13);
LABEL_21:
      v22 = v30;
      if (v5 == 0xFF)
      {
        return 0;
      }

      sub_10000F3F4(v30, a3, a4, v5);
      return v22;
    }

    swift_endAccess();
    (*(v14 + 8))(v17, v13);
    return 0;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  swift_endAccess();
  swift_getKeyPath();
  v31 = v26;
  sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel);
  swift_retain_n();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = *(v26 + 72);
  v27 = *(v26 + 96);
  sub_10002879C(v22, *(v26 + 80), *(v26 + 88), *(v26 + 96));

  if (v27 != 255)
  {
LABEL_14:
    (*(v14 + 8))(v17, v13);

    return v22;
  }

  __break(1u);
  return result;
}

void sub_1000FD0D0(void *a1, uint64_t a2)
{
  v993 = a2;
  v994 = a1;
  v924 = sub_10000341C(&qword_100262498, &qword_1001D8BF0);
  v922 = *(v924 - 8);
  v3 = *(v922 + 64);
  __chkstk_darwin(v924);
  v919 = &v875 - v4;
  v925 = sub_10000341C(&qword_1002624A0, &qword_1001D8BF8);
  v923 = *(v925 - 8);
  v5 = *(v923 + 64);
  __chkstk_darwin(v925);
  v921 = &v875 - v6;
  v930 = sub_10000341C(&qword_1002624A8, &qword_1001D8C00);
  v929 = *(v930 - 8);
  v7 = *(v929 + 64);
  v8 = __chkstk_darwin(v930);
  v920 = &v875 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v928 = &v875 - v10;
  v915 = type metadata accessor for NavigationPath();
  v914 = *(v915 - 8);
  v11 = *(v914 + 64);
  v12 = __chkstk_darwin(v915);
  v913 = &v875 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v912 = &v875 - v14;
  v918 = sub_10000341C(&qword_1002624B0, &qword_1001D8C08);
  v15 = *(*(v918 - 8) + 64);
  v16 = __chkstk_darwin(v918);
  v917 = &v875 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v916 = (&v875 - v18);
  v894 = sub_10000341C(&qword_1002624B8, &qword_1001D8C10);
  v900 = *(v894 - 8);
  v19 = *(v900 + 64);
  v20 = __chkstk_darwin(v894);
  v893 = &v875 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v899 = &v875 - v22;
  v897 = type metadata accessor for GenerativeAssistantSettingsOnboarding();
  v896 = *(v897 - 8);
  v23 = *(v896 + 64);
  __chkstk_darwin(v897);
  v901 = &v875 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v898 = sub_10000341C(&qword_1002624C0, &qword_1001D8C18);
  v903 = *(v898 - 8);
  v25 = *(v903 + 64);
  v26 = __chkstk_darwin(v898);
  v895 = &v875 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v902 = &v875 - v28;
  v943 = sub_10000341C(&qword_1002624C8, &qword_1001D8C20);
  v942 = *(v943 - 8);
  v29 = *(v942 + 64);
  v30 = __chkstk_darwin(v943);
  v934 = &v875 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v941 = &v875 - v32;
  v945 = sub_10000341C(&unk_1002624D0, &unk_1001D8C28);
  v957 = *(v945 - 8);
  v33 = *(v957 + 64);
  v34 = __chkstk_darwin(v945);
  v944 = &v875 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v956 = &v875 - v36;
  v37 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v954 = &v875 - v39;
  v977 = type metadata accessor for UUID();
  v983 = *(v977 - 8);
  v40 = *(v983 + 64);
  v41 = __chkstk_darwin(v977);
  v910 = &v875 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v904 = &v875 - v44;
  v45 = __chkstk_darwin(v43);
  v926 = &v875 - v46;
  v47 = __chkstk_darwin(v45);
  v951 = &v875 - v48;
  v49 = __chkstk_darwin(v47);
  v950 = &v875 - v50;
  v51 = __chkstk_darwin(v49);
  v949 = &v875 - v52;
  v53 = __chkstk_darwin(v51);
  v927 = &v875 - v54;
  v55 = __chkstk_darwin(v53);
  v57 = &v875 - v56;
  v58 = __chkstk_darwin(v55);
  v946 = &v875 - v59;
  v60 = __chkstk_darwin(v58);
  v62 = &v875 - v61;
  v63 = __chkstk_darwin(v60);
  v65 = &v875 - v64;
  v66 = __chkstk_darwin(v63);
  v68 = &v875 - v67;
  v69 = __chkstk_darwin(v66);
  v939 = &v875 - v70;
  __chkstk_darwin(v69);
  v931 = &v875 - v71;
  v982 = type metadata accessor for DispatchWorkItemFlags();
  v980 = *(v982 - 1);
  v72 = v980[8];
  __chkstk_darwin(v982);
  v963 = &v875 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v964 = type metadata accessor for DispatchQoS();
  v962 = *(v964 - 8);
  v74 = v962[8];
  __chkstk_darwin(v964);
  v961 = &v875 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v960 = type metadata accessor for DispatchQoS.QoSClass();
  v959 = *(v960 - 8);
  v76 = v959[8];
  __chkstk_darwin(v960);
  v958 = &v875 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  v947 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  v955 = *(v947 - 8);
  v78 = *(v955 + 64);
  v79 = __chkstk_darwin(v947);
  v935 = &v875 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __chkstk_darwin(v79);
  v911 = &v875 - v81;
  v82 = __chkstk_darwin(v80);
  v906 = &v875 - v83;
  v84 = __chkstk_darwin(v82);
  v908 = &v875 - v85;
  v86 = __chkstk_darwin(v84);
  v907 = &v875 - v87;
  v88 = __chkstk_darwin(v86);
  v909 = &v875 - v89;
  v90 = __chkstk_darwin(v88);
  v965 = &v875 - v91;
  v92 = __chkstk_darwin(v90);
  v967 = &v875 - v93;
  v94 = __chkstk_darwin(v92);
  v966 = &v875 - v95;
  v96 = __chkstk_darwin(v94);
  v905 = &v875 - v97;
  v98 = __chkstk_darwin(v96);
  v933 = &v875 - v99;
  v100 = __chkstk_darwin(v98);
  v932 = &v875 - v101;
  v102 = __chkstk_darwin(v100);
  v938 = &v875 - v103;
  v104 = __chkstk_darwin(v102);
  v940 = &v875 - v105;
  v106 = __chkstk_darwin(v104);
  v953 = &v875 - v107;
  v108 = __chkstk_darwin(v106);
  v948 = &v875 - v109;
  v110 = __chkstk_darwin(v108);
  v952 = &v875 - v111;
  v112 = __chkstk_darwin(v110);
  v975 = (&v875 - v113);
  v114 = __chkstk_darwin(v112);
  v936 = &v875 - v115;
  v116 = __chkstk_darwin(v114);
  v992 = &v875 - v117;
  v118 = __chkstk_darwin(v116);
  v990 = &v875 - v119;
  v120 = __chkstk_darwin(v118);
  v991 = &v875 - v121;
  __chkstk_darwin(v120);
  v123 = &v875 - v122;
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v995 = v123;
  v937 = type metadata accessor for Logger();
  v124 = sub_10000F34C(v937, qword_100276F08);
  v125 = static os_log_type_t.debug.getter();
  v126 = v2;
  v981 = v124;
  v127 = Logger.logObject.getter();
  v128 = v126;

  if (os_log_type_enabled(v127, v125))
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v989 = v78;
    v131 = v62;
    v132 = v57;
    v133 = v68;
    v134 = v65;
    v135 = v130;
    *v129 = 138412290;
    *(v129 + 4) = v128;
    *v130 = v128;
    v136 = v128;
    _os_log_impl(&_mh_execute_header, v127, v125, "SceneDelegate %@: scene will connnect to session", v129, 0xCu);
    sub_10000F500(v135, &unk_10025D580, &qword_1001CFA60);
    v65 = v134;
    v68 = v133;
    v57 = v132;
    v62 = v131;
    v78 = v989;
  }

  objc_opt_self();
  v137 = swift_dynamicCastObjCClass();
  if (v137)
  {
    v138 = v137;
    v885 = v65;
    type metadata accessor for WTSceneConnectionOptionsDefinition();
    v139 = type metadata accessor for WTStartupOptions();
    sub_1001068A4(&unk_1002624E0, &type metadata accessor for WTSceneConnectionOptionsDefinition);
    v976 = v994;
    UISceneConnectionOptions.subscript.getter();
    if (aBlock)
    {
      v140 = aBlock;
    }

    else
    {
      v140 = [objc_allocWithZone(v139) init];
    }

    v141 = v995;
    dispatch thunk of WTStartupOptions.sessionUUID.getter();
    v142 = dispatch thunk of WTStartupOptions.requestedTool.getter();
    v973 = dispatch thunk of WTStartupOptions.prompt.getter();
    v984 = v143;
    if (v143)
    {
      if (dispatch thunk of WTStartupOptions.handoffOriginatorTool.getter())
      {
LABEL_11:
        v144 = dispatch thunk of WTStartupOptions.handoffOriginatorTool.getter();
        v969 = sub_100107A20(v144, 0);
        v970 = v145;
        v971 = v146;
        v972 = v147;
        goto LABEL_14;
      }
    }

    else
    {
      v973 = qword_100277028;
      v984 = qword_100277030;

      if (dispatch thunk of WTStartupOptions.handoffOriginatorTool.getter())
      {
        goto LABEL_11;
      }
    }

    v969 = 0;
    v970 = 0;
    v971 = 0;
    v972 = 255;
LABEL_14:
    v877 = v57;
    v986 = v128;
    dispatch thunk of WTStartupOptions.isFromHandoff.getter();
    v994 = v140;
    if (dispatch thunk of WTStartupOptions.isResumingFromModelEnrollment.getter())
    {
      v148 = 0;
      v149 = 0;
      v150 = 0;
      v151 = 2;
    }

    else
    {
      v152 = sub_100107A20(v142, v973);
      v154 = v153;
      v156 = v155;
      v157 = v141;
      v159 = v158;
      v148 = sub_1000FCA04(v157, v152, v153, v155, v158);
      v161 = v160;
      v150 = v162;
      v163 = v152;
      v164 = v154;
      v149 = v161;
      v151 = v165;
      sub_10000F428(v163, v164, v156, v159);
    }

    v989 = v148;
    v993 = v149;
    v988 = v150;
    v987 = v151;
    v166 = sub_10006CA84(v148, v149, v150, v151);
    if ((v167 & 0x100) == 0)
    {
      sub_10006CF60(v166);
    }

    v880 = v68;
    v887 = dispatch thunk of WTStartupOptions.editable.getter();
    v888 = dispatch thunk of WTStartupOptions.wantsInlineEditing.getter();
    v886 = dispatch thunk of WTStartupOptions.allowedResultOptions.getter();
    v974 = dispatch thunk of WTStartupOptions.smartReplyConfiguration.getter();
    v890 = dispatch thunk of WTStartupOptions.isForInputDashboard.getter();
    v883 = dispatch thunk of WTStartupOptions.isForAssistant.getter();
    v881 = dispatch thunk of WTStartupOptions.wantsFormSheetPresentation.getter();
    v879 = dispatch thunk of WTStartupOptions.formSheetUIType.getter();
    dispatch thunk of WTStartupOptions.suggestionUUID.getter();
    dispatch thunk of WTStartupOptions.contextUUID.getter();
    v884 = dispatch thunk of WTStartupOptions.isQuestionnairePopover.getter();
    v168 = dispatch thunk of WTStartupOptions.sourceResponderHorizontalSizeClass.getter();
    LODWORD(v169) = dispatch thunk of WTStartupOptions.isWindowingModeEnabled.getter();
    v878 = dispatch thunk of WTStartupOptions.isWebKitView.getter();
    v889 = dispatch thunk of WTStartupOptions.includesTextListMarkers.getter();
    dispatch thunk of WTStartupOptions.analyticsUUID.getter();
    v968 = dispatch thunk of WTStartupOptions.sourceUserInterfaceIdiom.getter();
    v891 = dispatch thunk of WTStartupOptions.bundleID.getter();
    v979 = v170;
    v892 = dispatch thunk of WTStartupOptions.sceneID.getter();
    v978 = v171;
    v172 = [objc_opt_self() _isWritingToolsHandlingKeyboardTracking];
    v173 = v986;
    if (v172)
    {
      v174 = [v138 keyboardSceneDelegate];
      if (v174)
      {
        v175 = v174;
        [v174 addVisibilityObserver:v173];
      }
    }

    v176 = type metadata accessor for WritingToolsModel();
    v177 = *(v176 + 48);
    v178 = *(v176 + 52);
    v882 = v176;
    swift_allocObject();
    v179 = sub_1000AA9F8(1, 0);
    v180 = *&v173[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel];
    *&v173[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsModel] = v179;
    v985 = v179;

    if (v987 >= 2u && !(v988 | v993 | v989))
    {
      sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
      v181 = v959;
      v182 = v958;
      v183 = v960;
      (v959[13])(v958, enum case for DispatchQoS.QoSClass.default(_:), v960);
      v876 = static OS_dispatch_queue.global(qos:)();
      (v181[1])(v182, v183);
      *v1003 = sub_1000F5488;
      *&v1003[8] = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v1002 = sub_1001256BC;
      *(&v1002 + 1) = &unk_10024E790;
      v184 = _Block_copy(&aBlock);
      v185 = v961;
      static DispatchQoS.unspecified.getter();
      *&v997[0] = _swiftEmptyArrayStorage;
      sub_1001068A4(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
      sub_100058DD0();
      LODWORD(v960) = v169;
      v169 = v963;
      v959 = v168;
      v186 = v982;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v187 = v876;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v184);

      v188 = v169;
      LOBYTE(v169) = v960;
      v189 = v186;
      v168 = v959;
      (v980[1])(v188, v189);
      (v962[1])(v185, v964);
    }

    v190 = [objc_allocWithZone(UIWindow) initWithWindowScene:v138];
    [v190 _setDataOwnerForCopy:dispatch thunk of WTStartupOptions.sourceDataOwnerForCopy.getter()];
    [v190 _setDataOwnerForPaste:dispatch thunk of WTStartupOptions.sourceDataOwnerForPaste.getter()];
    [v190 _setDragDataOwner:dispatch thunk of WTStartupOptions.sourceDataOwnerForDrag.getter()];
    [v190 _setDropDataOwner:dispatch thunk of WTStartupOptions.sourceDataOwnerForDrop.getter()];
    v191 = *&v173[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window];
    *&v173[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window] = v190;
    v982 = v190;

    objc_opt_self();
    v192 = v976;
    v193 = swift_dynamicCastObjCClass();
    if (v193)
    {
      v194 = v192;
    }

    swift_unknownObjectWeakAssign();

    v195 = v192;
    v196 = [v192 _FBSScene];
    v197 = [v196 hostHandle];

    if (!v197)
    {
      __break(1u);
LABEL_303:
      __break(1u);
      goto LABEL_304;
    }

    v198 = v173;
    v964 = v62;
    v962 = v190;
    v980 = [v197 auditToken];

    [SceneDelegate supressAssistantBarInUIService]_0();
    v199 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_presentationModel;
    v200 = *&v198[OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_presentationModel];

    sub_10016F778(7, 0);

    v201 = *&v198[v199];

    sub_10016F8F0(v168, 0);

    v202 = *&v198[v199];

    sub_10016FA78(v968, 0);

    v203 = *&v198[v199];
    if ((v169 & 1) == *(v203 + 57))
    {
      v968 = 0;
      *(v203 + 57) = v169 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&aBlock = v203;
      sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v968 = 0;
    }

    LOBYTE(v205) = v987;
    v206 = v988;
    v207 = v985;
    v208 = v982;
    v209 = v983;
    v210 = v989;
    v211 = v993;
    sub_10000F3F4(v989, v993, v988, v987);
    sub_1000A79E4(v210, v211, v206, v205);
    if (dispatch thunk of WTStartupOptions.hostingMode.getter() == 1)
    {

      v212 = Logger.logObject.getter();
      v213 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v212, v213))
      {
        v214 = swift_slowAlloc();
        *v214 = 0;
        _os_log_impl(&_mh_execute_header, v212, v213, "Handling full screen hosting request...", v214, 2u);
        v207 = v985;
      }

      v215 = v995;
      v963 = v199;
      if (v205)
      {
        if (v205 == 1)
        {
          v234 = sub_1000FAA48(v995, v980, v889 & 1, v992, v891, v979, v892, v978, 0);
          sub_1000A7578(v234);
          v235 = v953;
          sub_1000081F8(v215, v953, &unk_100262450, &qword_1001CFAA0);
          v236 = v977;
          if ((*(v209 + 6))(v235, 1, v977) == 1)
          {
            sub_10000F500(v235, &unk_100262450, &qword_1001CFAA0);
            v237 = Logger.logObject.getter();
            v238 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v237, v238))
            {
              v239 = swift_slowAlloc();
              *v239 = 0;
              _os_log_impl(&_mh_execute_header, v237, v238, "Retrieve composition model for sessionUUID: nil)", v239, 2u);
            }
          }

          else
          {
            v266 = v885;
            (*(v209 + 4))(v885, v235, v236);
            v267 = v964;
            (*(v209 + 2))(v964, v266, v236);
            v268 = Logger.logObject.getter();
            v269 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v268, v269))
            {
              v270 = swift_slowAlloc();
              v968 = v270;
              v981 = swift_slowAlloc();
              *&aBlock = v981;
              *v270 = 136315138;
              sub_1001068A4(&qword_100262478, &type metadata accessor for UUID);
              LODWORD(v967) = v269;
              v271 = dispatch thunk of CustomStringConvertible.description.getter();
              v273 = v272;
              v274 = *(v983 + 8);
              v274(v267, v236);
              v275 = sub_10002510C(v271, v273, &aBlock);
              LOBYTE(v205) = v987;

              v276 = v968;
              *(v968 + 1) = v275;
              _os_log_impl(&_mh_execute_header, v268, v967, "Retrieve composition model for sessionUUID: %s", v276, 0xCu);
              sub_10000F4B4(v981);

              v274(v266, v236);
            }

            else
            {

              v370 = *(v209 + 1);
              v370(v267, v236);
              v370(v266, v236);
            }

            v207 = v985;
          }

          v371 = v955;
          v372 = type metadata accessor for TaskPriority();
          v373 = v954;
          (*(*(v372 - 8) + 56))(v954, 1, 1, v372);
          v374 = v975;
          sub_1000081F8(v215, v975, &unk_100262450, &qword_1001CFAA0);
          type metadata accessor for MainActor();
          v375 = v984;

          v376 = static MainActor.shared.getter();
          v377 = (*(v371 + 80) + 40) & ~*(v371 + 80);
          v233 = v207;
          v378 = swift_allocObject();
          v378[2] = v376;
          v378[3] = &protocol witness table for MainActor;
          v378[4] = v207;
          sub_1001066E4(v374, v378 + v377);
          v379 = (v378 + ((v78 + v377 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v379 = v973;
          v379[1] = v375;
          sub_10015C9C8(0, 0, v373, &unk_1001D8E58, v378);

          v216 = v989;
          v195 = v976;
          goto LABEL_149;
        }

        v216 = v989;
        if (v205 != 2 || v989 != 1 || v206 | v993)
        {
          v230 = Logger.logObject.getter();
          v231 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v230, v231))
          {
            v232 = swift_slowAlloc();
            *v232 = 0;
            _os_log_impl(&_mh_execute_header, v230, v231, "Requested full screen presentation without a mode specified!", v232, 2u);
          }

          v233 = v985;
          goto LABEL_149;
        }

        v217 = v936;
        sub_1000081F8(v995, v936, &unk_100262450, &qword_1001CFAA0);
        v218 = v977;
        if ((*(v209 + 6))(v217, 1, v977) == 1)
        {
          sub_10000F500(v217, &unk_100262450, &qword_1001CFAA0);
        }

        else
        {
          v392 = v931;
          (*(v209 + 4))(v931, v217, v218);
          if (qword_10025A890 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v393 = qword_100277358;
          if (*(qword_100277358 + 16))
          {
            v394 = sub_100005044(v392);
            if (v395)
            {
              v396 = *(*(v393 + 56) + 8 * v394);
              swift_endAccess();
              v397 = *(v209 + 1);

              v397(v392, v218);
              swift_unknownObjectWeakAssign();
LABEL_148:
              v233 = v985;
              sub_1000A71C8(v396);
              goto LABEL_149;
            }
          }

          swift_endAccess();
          (*(v209 + 1))(v392, v218);
        }

        v447 = type metadata accessor for ProofreadingModel();
        v448 = *(v447 + 48);
        v449 = *(v447 + 52);
        swift_allocObject();
        v396 = sub_1001A8C78();

        v450 = v980;
        v451 = v980;
        sub_100035E70(v450);
        swift_unknownObjectWeakAssign();
        sub_100036534(1, 0, 0, 2);
        v452 = v975;
        sub_1000081F8(v992, v975, &unk_100262450, &qword_1001CFAA0);
        v453 = type metadata accessor for WritingToolsAnalytics();
        v454 = *(v453 + 48);
        v455 = *(v453 + 52);
        swift_allocObject();
        v456 = sub_100009B2C(v452);
        *(&v1002 + 1) = v453;
        *v1003 = &off_10024B270;
        *&aBlock = v456;
        v457 = swift_getKeyPath();
        __chkstk_darwin(v457);
        *&v997[0] = v396;
        sub_1001068A4(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
        v458 = v979;

        sub_100036040(v891, v458);
        v459 = v978;

        sub_100036200(v892, v459);

        LOBYTE(v205) = v987;
        goto LABEL_148;
      }

      v240 = v952;
      sub_1000081F8(v995, v952, &unk_100262450, &qword_1001CFAA0);
      v241 = v977;
      if ((*(v209 + 6))(v240, 1, v977) == 1)
      {

        sub_10000F500(v240, &unk_100262450, &qword_1001CFAA0);
      }

      else
      {
        v291 = v939;
        (*(v209 + 4))(v939, v240, v241);
        v292 = qword_10025A788;

        if (v292 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v293 = qword_1002770A8;
        if (*(qword_1002770A8 + 16))
        {
          v294 = sub_100005044(v291);
          if (v295)
          {
            v296 = *(*(v293 + 56) + 8 * v294);
            swift_endAccess();
            v297 = v880;
            (*(v209 + 2))(v880, v291, v977);

            v298 = v209;
            v299 = Logger.logObject.getter();
            v300 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v299, v300))
            {
              v301 = swift_slowAlloc();
              v205 = swift_slowAlloc();
              *&aBlock = v205;
              *v301 = 136315138;
              sub_1001068A4(&qword_100262478, &type metadata accessor for UUID);
              LODWORD(v981) = v300;
              v302 = v977;
              v303 = dispatch thunk of CustomStringConvertible.description.getter();
              v305 = v304;
              v306 = v298[1];
              v306(v297, v302);
              v307 = sub_10002510C(v303, v305, &aBlock);

              *(v301 + 4) = v307;
              _os_log_impl(&_mh_execute_header, v299, v981, "Setting new delegate for RewritingModel for sessionUUID: %s", v301, 0xCu);
              sub_10000F4B4(v205);
              LOBYTE(v205) = v987;

              v207 = v985;

              v216 = v989;
              sub_10000F428(v989, v993, v988, 0);
              v306(v939, v302);
              v195 = v976;
            }

            else
            {

              v216 = v989;
              sub_10000F428(v989, v993, v988, 0);
              v552 = v298[1];
              v553 = v977;
              v552(v297, v977);
              v552(v939, v553);
            }

            swift_unknownObjectWeakAssign();
LABEL_99:
            sub_1000A73A0(v296);
            v233 = v207;
LABEL_149:
            v460 = v986;
            v461 = *(v986 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_commonUIManager);
            v462 = *&v963[v986];
            v463 = type metadata accessor for FullscreenViewController();
            v464 = objc_allocWithZone(v463);
            v465 = OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_writingToolsDelegate;
            *&v464[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_writingToolsDelegate] = 0;
            *&v464[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_UCBTrackingHeight] = 0x4051800000000000;
            *&v464[v465] = v460;
            *&v464[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_writingToolsModel] = v233;
            *&v464[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_commonUIManager] = v461;
            *&v464[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_presentationModel] = v462;
            *&v997[0] = v462;
            type metadata accessor for PresentationModel();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            v466 = v460;
            State.init(wrappedValue:)();
            v467 = aBlock;
            v468 = &v464[OBJC_IVAR____TtC21WritingToolsUIService24FullscreenViewController_fullScreenView];
            *v468 = v233;
            *(v468 + 1) = v461;
            *(v468 + 1) = v467;
            v996.receiver = v464;
            v996.super_class = v463;
            v469 = objc_msgSendSuper2(&v996, "initWithNibName:bundle:", 0, 0);

            v470 = v982;
            [v982 setRootViewController:v469];

            v206 = v988;
            v208 = v470;
            goto LABEL_269;
          }
        }

        swift_endAccess();
        (*(v209 + 1))(v291, v977);
      }

      v308 = v215;
      v309 = v948;
      sub_1000081F8(v308, v948, &unk_100262450, &qword_1001CFAA0);
      v310 = Logger.logObject.getter();
      v311 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v310, v311))
      {
        v312 = swift_slowAlloc();
        v313 = swift_slowAlloc();
        *&aBlock = v313;
        *v312 = 136315138;
        sub_1000081F8(v309, v975, &unk_100262450, &qword_1001CFAA0);
        v314 = String.init<A>(describing:)();
        v316 = v315;
        sub_10000F500(v309, &unk_100262450, &qword_1001CFAA0);
        v317 = v314;
        v195 = v976;
        v318 = sub_10002510C(v317, v316, &aBlock);

        *(v312 + 4) = v318;
        _os_log_impl(&_mh_execute_header, v310, v311, "No RewritingModel found for sessionUUID: %s, creating new RewritingModel", v312, 0xCu);
        sub_10000F4B4(v313);
        v206 = v988;
      }

      else
      {

        sub_10000F500(v309, &unk_100262450, &qword_1001CFAA0);
      }

      v319 = v989;
      v320 = type metadata accessor for RewritingModel();
      v321 = *(v320 + 48);
      v322 = *(v320 + 52);
      swift_allocObject();
      v296 = sub_1000C32AC();

      sub_100036534(v319, v993, v206, 0);
      swift_unknownObjectWeakAssign();
      v323 = v980;
      v324 = v980;

      sub_100035E70(v323);
      v325 = v892;
      if ((v887 & 1) == *(v296 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent))
      {
        *(v296 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) = v887 & 1;
      }

      else
      {
        v326 = swift_getKeyPath();
        __chkstk_darwin(v326);
        *&aBlock = v296;
        sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      if ((v888 & 1) == *(v296 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing))
      {
        *(v296 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing) = v888 & 1;
      }

      else
      {
        v327 = swift_getKeyPath();
        __chkstk_darwin(v327);
        *&aBlock = v296;
        sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      if (*(v296 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) != v886)
      {
        v328 = swift_getKeyPath();
        __chkstk_darwin(v328);
        *&aBlock = v296;
        sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      if ((v889 & 1) == *(v296 + 64))
      {
        *(v296 + 64) = v889 & 1;
      }

      else
      {
        v329 = swift_getKeyPath();
        __chkstk_darwin(v329);
        *&aBlock = v296;
        sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v330 = v975;
      sub_1000081F8(v992, v975, &unk_100262450, &qword_1001CFAA0);
      v331 = type metadata accessor for WritingToolsAnalytics();
      v332 = *(v331 + 48);
      v333 = *(v331 + 52);
      swift_allocObject();
      v334 = sub_100009B2C(v330);
      *(&v1002 + 1) = v331;
      *v1003 = &off_10024B270;
      *&aBlock = v334;
      v335 = swift_getKeyPath();
      __chkstk_darwin(v335);
      *&v997[0] = v296;
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
      v336 = v979;

      sub_100036040(v891, v336);
      v337 = v978;

      sub_100036200(v325, v337);
      v216 = v319;
      sub_10000F428(v319, v993, v988, 0);

      LOBYTE(v205) = v987;
      v207 = v985;
      goto LABEL_99;
    }

    if (v890)
    {

      if (v205)
      {
        v216 = v989;
        if (v205 == 2)
        {
          v219 = v206 | v993;
          if (v989 == 1 && !v219)
          {
            v220 = v932;
            sub_1000081F8(v995, v932, &unk_100262450, &qword_1001CFAA0);
            v221 = v977;
            if ((*(v209 + 6))(v220, 1, v977) == 1)
            {
              v222 = v199;
              sub_10000F500(v220, &unk_100262450, &qword_1001CFAA0);
              v223 = v979;
            }

            else
            {
              v471 = v927;
              (*(v209 + 4))(v927, v220, v221);
              v223 = v979;
              if (qword_10025A890 != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              v472 = qword_100277358;
              if (*(qword_100277358 + 16))
              {
                v473 = sub_100005044(v471);
                if (v474)
                {
                  v222 = v199;
                  v475 = *(*(v472 + 56) + 8 * v473);
                  swift_endAccess();
                  v476 = *(v209 + 1);

                  v476(v471, v221);
                  v477 = v986;
                  swift_unknownObjectWeakAssign();
LABEL_168:
                  v524 = v985;
                  sub_1000A71C8(v475);
                  swift_getKeyPath();
                  *&aBlock = v524;
                  sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  v525 = *(v524 + 16);
                  type metadata accessor for PresentationModel();
                  sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel);
                  v526 = v477;

                  v527 = Environment.init<A>(_:)();
                  LOBYTE(v524) = v528;
                  *&v997[0] = v525;
                  type metadata accessor for ProofreadingModel();

                  State.init(wrappedValue:)();
                  v529 = aBlock;
                  LOBYTE(v997[0]) = v883 & 1;
                  State.init(wrappedValue:)();

                  v530 = aBlock;
                  v531 = *(&aBlock + 1);
                  v986 = v527;
                  *&aBlock = v527;
                  BYTE8(aBlock) = v524 & 1;
                  v1002 = v529;
                  v1003[0] = v530;
                  *&v1003[8] = v531;
                  v532 = *(v477 + v222);
                  sub_1001064A8();

                  v533 = v941;
                  View.environment<A>(_:)();

                  (*(v942 + 16))(v934, v533, v943);
                  v534 = objc_allocWithZone(sub_10000341C(&qword_100262560, &qword_1001D8E40));
                  v535 = UIHostingController.init(rootView:)();
                  UIHostingController.safeAreaRegions.setter();
                  v536 = v535;
                  v537 = [v536 view];
                  if (!v537)
                  {
LABEL_310:
                    __break(1u);
                    goto LABEL_311;
                  }

                  v538 = v537;
                  [v537 setBackgroundColor:0];

                  v539 = [v536 view];
                  v208 = v982;
                  if (!v539)
                  {
LABEL_311:
                    __break(1u);
                    goto LABEL_312;
                  }

                  v540 = v539;
                  v541 = [v539 layer];

                  [v541 setHitTestsAsOpaque:1];
                  v542 = [v536 view];
                  if (!v542)
                  {
LABEL_312:
                    __break(1u);
LABEL_313:
                    swift_endAccess();
                    __break(1u);
LABEL_314:
                    __break(1u);
                    goto LABEL_315;
                  }

                  v543 = v542;
                  [v542 setTranslatesAutoresizingMaskIntoConstraints:0];

                  (*(v942 + 8))(v941, v943);
                  [v208 setRootViewController:v536];

                  j__swift_release();

                  goto LABEL_266;
                }
              }

              v222 = v199;
              swift_endAccess();
              (*(v209 + 1))(v471, v221);
            }

            v512 = type metadata accessor for ProofreadingModel();
            v513 = *(v512 + 48);
            v514 = *(v512 + 52);
            swift_allocObject();
            v475 = sub_1001A8C78();
            v515 = v980;
            v516 = v980;

            sub_100035E70(v515);
            v477 = v986;
            swift_unknownObjectWeakAssign();
            sub_100036534(1, 0, 0, 2);
            v517 = v975;
            sub_1000081F8(v992, v975, &unk_100262450, &qword_1001CFAA0);
            v518 = type metadata accessor for WritingToolsAnalytics();
            v519 = *(v518 + 48);
            v520 = *(v518 + 52);
            swift_allocObject();
            v521 = sub_100009B2C(v517);
            *(&v1002 + 1) = v518;
            *v1003 = &off_10024B270;
            *&aBlock = v521;
            v522 = swift_getKeyPath();
            __chkstk_darwin(v522);
            *&v997[0] = v475;
            sub_1001068A4(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);

            sub_100036040(v891, v223);
            v523 = v978;

            sub_100036200(v892, v523);

            goto LABEL_168;
          }

          if (v989 != 2 || v219)
          {
            goto LABEL_269;
          }

          if (qword_10025A6E8 != -1)
          {
            swift_once();
          }

          sub_10000F34C(v937, qword_100276F20);
          v338 = static os_log_type_t.debug.getter();
          v339 = v986;
          v340 = Logger.logObject.getter();

          v341 = os_log_type_enabled(v340, v338);
          v342 = v974;
          v343 = v933;
          if (v341)
          {
            v344 = swift_slowAlloc();
            v345 = swift_slowAlloc();
            *v344 = 138412290;
            *(v344 + 4) = v339;
            *v345 = v339;
            v346 = v339;
            _os_log_impl(&_mh_execute_header, v340, v338, "SceneDelegate %@: creating SmartReplyInputDashboardView with delegate=self", v344, 0xCu);
            sub_10000F500(v345, &unk_10025D580, &qword_1001CFA60);
          }

          sub_1000081F8(v995, v343, &unk_100262450, &qword_1001CFAA0);
          if (!v342)
          {
            goto LABEL_314;
          }

          v347 = v342;
          v348 = v339;
          v349 = v980;

          v350 = Image.init(systemName:)();
          v351 = *(v983 + 48);
          if (v351(v343, 1, v977) == 1)
          {
          }

          else
          {
            v544 = qword_10025A740;

            if (v544 != -1)
            {
              swift_once();
            }

            v545 = v905;
            sub_1000081F8(v343, v905, &unk_100262450, &qword_1001CFAA0);
            if (v351(v545, 1, v977) == 1)
            {
              goto LABEL_335;
            }

            swift_beginAccess();
            v546 = qword_100277018;
            if (*(qword_100277018 + 16))
            {
              v547 = sub_100005044(v545);
              if (v548)
              {
                v549 = *(*(v546 + 56) + 8 * v547);
                swift_endAccess();
                v550 = *(v983 + 8);

                v550(v545, v977);

LABEL_199:
                *&v997[0] = v551;
                type metadata accessor for QuestionnaireModel();
                State.init(wrappedValue:)();
                v582 = aBlock;

                sub_10000341C(&qword_10025B648, &qword_1001D0050);
                State.wrappedValue.getter();
                sub_100036040(v891, v979);

                aBlock = v582;
                State.wrappedValue.getter();
                sub_100036200(v892, v978);

                sub_10000F500(v933, &unk_100262450, &qword_1001CFAA0);

                aBlock = v582;
                *&v1002 = v350;
                v583 = objc_allocWithZone(sub_10000341C(&qword_100262550, &qword_1001D8E10));

                v584 = UIHostingController.init(rootView:)();
                UIHostingController.safeAreaRegions.setter();
                v585 = v584;
                v586 = [v585 view];
                if (!v586)
                {
LABEL_315:
                  __break(1u);
                  goto LABEL_316;
                }

                v587 = v586;
                [v586 setBackgroundColor:0];

                v588 = [v585 view];
                v195 = v976;
                if (!v588)
                {
LABEL_316:
                  __break(1u);
                  goto LABEL_317;
                }

                v589 = v588;
                v590 = [v588 layer];

                [v590 setHitTestsAsOpaque:1];
                v591 = [v585 view];
                if (!v591)
                {
LABEL_317:
                  __break(1u);
                  goto LABEL_318;
                }

                v592 = v591;
                [v591 setTranslatesAutoresizingMaskIntoConstraints:0];

                [v208 setRootViewController:v585];

                goto LABEL_267;
              }
            }

            swift_endAccess();
            (*(v983 + 8))(v545, v977);
          }

          v578 = type metadata accessor for QuestionnaireModel();
          v579 = *(v578 + 48);
          v580 = *(v578 + 52);
          swift_allocObject();
          v581 = v348;
          sub_10004F8B0(v347, v339, v349);
          goto LABEL_199;
        }

LABEL_269:
        if (qword_10025A800 != -1)
        {
          swift_once();
        }

        v815 = v994;
        if (byte_1002771B0 != 1 || (v816 = [v208 rootViewController]) == 0)
        {

          sub_1000278C0(v969, v970, v971, v972);

          sub_10000F428(v216, v993, v206, v205);
LABEL_278:
          v820 = v980;
          [v208 makeKeyAndVisible];

          sub_10000F500(v992, &unk_100262450, &qword_1001CFAA0);
          sub_10000F500(v990, &unk_100262450, &qword_1001CFAA0);
          sub_10000F500(v991, &unk_100262450, &qword_1001CFAA0);
          sub_10000F500(v995, &unk_100262450, &qword_1001CFAA0);
          return;
        }

        v817 = v816;
        v818 = [v816 view];

        if (v818)
        {
          sub_1000278C0(v969, v970, v971, v972);

          sub_10000F428(v216, v993, v206, v205);
          sub_1000081B0(0, &qword_100262510, UIColor_ptr);
          if (qword_10025A7F8 != -1)
          {
            swift_once();
          }

          v819 = UIColor.init(_:)();
          [v818 setTintColor:v819];

          goto LABEL_278;
        }

        goto LABEL_303;
      }

      v263 = v940;
      sub_1000081F8(v995, v940, &unk_100262450, &qword_1001CFAA0);
      v264 = v977;
      v265 = (*(v209 + 6))(v263, 1, v977);
      v216 = v989;
      if (v265 == 1)
      {

        sub_10000F500(v263, &unk_100262450, &qword_1001CFAA0);
      }

      else
      {
        (*(v209 + 4))(v946, v263, v264);
        v352 = qword_10025A788;

        if (v352 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v353 = qword_1002770A8;
        v354 = v946;
        if (*(qword_1002770A8 + 16))
        {
          v355 = sub_100005044(v946);
          if (v356)
          {
            v357 = *(v353 + 56);
            v358 = v354;
            v359 = *(v357 + 8 * v355);
            swift_endAccess();
            v360 = v877;
            (*(v209 + 2))(v877, v358, v977);

            v361 = Logger.logObject.getter();
            LODWORD(v981) = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v361, v981))
            {
              v362 = swift_slowAlloc();
              v205 = swift_slowAlloc();
              *&aBlock = v205;
              *v362 = 136315138;
              sub_1001068A4(&qword_100262478, &type metadata accessor for UUID);
              v975 = v361;
              v363 = v977;
              v364 = dispatch thunk of CustomStringConvertible.description.getter();
              v366 = v365;
              v367 = *(v209 + 1);
              v367(v360, v363);
              v368 = sub_10002510C(v364, v366, &aBlock);
              v216 = v989;

              *(v362 + 4) = v368;
              v369 = v975;
              _os_log_impl(&_mh_execute_header, v975, v981, "Setting new delegate for RewritingModel for sessionUUID: %s", v362, 0xCu);
              sub_10000F4B4(v205);
              LOBYTE(v205) = v987;

              v207 = v985;

              sub_10000F428(v216, v993, v988, 0);
              v367(v946, v363);
              v195 = v976;
            }

            else
            {

              sub_10000F428(v216, v993, v988, 0);
              v593 = *(v209 + 1);
              v594 = v360;
              v595 = v977;
              v593(v594, v977);
              v593(v946, v595);
            }

            swift_unknownObjectWeakAssign();
LABEL_142:
            sub_1000A73A0(v359);
            swift_getKeyPath();
            *&aBlock = v207;
            sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v431 = *(v207 + 24);

            sub_10019B2E4(&aBlock, v432);
            v997[2] = *v1003;
            v997[3] = *&v1003[16];
            v998 = v1004;
            v997[1] = v1002;
            v997[0] = aBlock;
            v433 = *(v986 + v199);
            type metadata accessor for PresentationModel();
            sub_1001064FC();
            sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel);

            v434 = v956;
            View.environment<A>(_:)();

            v435 = v434;
            v436 = v945;
            (*(v957 + 16))(v944, v435, v945);
            v437 = objc_allocWithZone(sub_10000341C(&unk_100262570, &qword_1001D8E48));
            v438 = UIHostingController.init(rootView:)();
            UIHostingController.safeAreaRegions.setter();
            v439 = v438;
            v440 = [v439 view];
            if (!v440)
            {
LABEL_307:
              __break(1u);
              goto LABEL_308;
            }

            v441 = v440;
            [v440 setBackgroundColor:0];

            v442 = [v439 view];
            if (!v442)
            {
LABEL_308:
              __break(1u);
              goto LABEL_309;
            }

            v443 = v442;
            v444 = [v442 layer];

            [v444 setHitTestsAsOpaque:1];
            v445 = [v439 view];
            v206 = v988;
            if (!v445)
            {
LABEL_309:
              __break(1u);
              goto LABEL_310;
            }

            v446 = v445;
            [v445 setTranslatesAutoresizingMaskIntoConstraints:0];

            (*(v957 + 8))(v956, v436);
            [v208 setRootViewController:v439];

            sub_100106550(&aBlock);
            goto LABEL_269;
          }
        }

        swift_endAccess();
        (*(v209 + 1))(v354, v977);
      }

      v398 = v938;
      sub_1000081F8(v995, v938, &unk_100262450, &qword_1001CFAA0);
      v399 = Logger.logObject.getter();
      v400 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v399, v400))
      {
        v401 = swift_slowAlloc();
        v402 = swift_slowAlloc();
        *&aBlock = v402;
        *v401 = 136315138;
        sub_1000081F8(v398, v975, &unk_100262450, &qword_1001CFAA0);
        v403 = String.init<A>(describing:)();
        v404 = v199;
        v406 = v405;
        v407 = v398;
        v408 = v989;
        sub_10000F500(v407, &unk_100262450, &qword_1001CFAA0);
        v409 = v403;
        v195 = v976;
        v410 = sub_10002510C(v409, v406, &aBlock);
        v199 = v404;
        v216 = v408;

        *(v401 + 4) = v410;
        _os_log_impl(&_mh_execute_header, v399, v400, "No RewritingModel found for sessionUUID: %s, creating new RewritingModel", v401, 0xCu);
        sub_10000F4B4(v402);
        v206 = v988;
      }

      else
      {

        sub_10000F500(v398, &unk_100262450, &qword_1001CFAA0);
      }

      v411 = type metadata accessor for RewritingModel();
      v412 = *(v411 + 48);
      v413 = *(v411 + 52);
      swift_allocObject();
      v359 = sub_1000C32AC();

      sub_100036534(v216, v993, v206, 0);
      swift_unknownObjectWeakAssign();
      v414 = v980;
      v415 = v980;

      sub_100035E70(v414);
      if ((v887 & 1) == *(v359 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent))
      {
        *(v359 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) = v887 & 1;
      }

      else
      {
        v416 = swift_getKeyPath();
        __chkstk_darwin(v416);
        *&aBlock = v359;
        sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
        v417 = v968;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v968 = v417;
      }

      if ((v888 & 1) == *(v359 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing))
      {
        *(v359 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing) = v888 & 1;
      }

      else
      {
        v418 = swift_getKeyPath();
        __chkstk_darwin(v418);
        *&aBlock = v359;
        sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
        v419 = v968;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v968 = v419;
      }

      if (*(v359 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) != v886)
      {
        v420 = swift_getKeyPath();
        __chkstk_darwin(v420);
        *&aBlock = v359;
        sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
        v421 = v968;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        v968 = v421;
      }

      if ((v889 & 1) == *(v359 + 64))
      {
        *(v359 + 64) = v889 & 1;
      }

      else
      {
        v422 = swift_getKeyPath();
        __chkstk_darwin(v422);
        *&aBlock = v359;
        sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      v423 = v975;
      sub_1000081F8(v992, v975, &unk_100262450, &qword_1001CFAA0);
      v424 = type metadata accessor for WritingToolsAnalytics();
      v425 = *(v424 + 48);
      v426 = *(v424 + 52);
      swift_allocObject();
      v427 = sub_100009B2C(v423);
      *(&v1002 + 1) = v424;
      *v1003 = &off_10024B270;
      *&aBlock = v427;
      v428 = swift_getKeyPath();
      __chkstk_darwin(v428);
      *&v997[0] = v359;
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
      v429 = v979;

      sub_100036040(v891, v429);
      v430 = v978;

      sub_100036200(v892, v430);
      sub_10000F428(v216, v993, v988, 0);

      LOBYTE(v205) = v987;
      v207 = v985;
      goto LABEL_142;
    }

    v205 = *(v209 + 6);
    v224 = v977;
    if ((v205)(v991, 1, v977) != 1)
    {

      v242 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v243 = v966;
      sub_1000081F8(v995, v966, &unk_100262450, &qword_1001CFAA0);
      if ((v205)(v243, 1, v224) == 1)
      {
LABEL_304:
        __break(1u);
        goto LABEL_305;
      }

      v244 = v967;
      sub_1000081F8(v991, v967, &unk_100262450, &qword_1001CFAA0);
      v245 = (v205)(v244, 1, v224);
      v246 = v965;
      if (v245 == 1)
      {
LABEL_305:
        __break(1u);
        goto LABEL_306;
      }

      sub_1000081F8(v990, v965, &unk_100262450, &qword_1001CFAA0);
      if ((v205)(v246, 1, v224) == 1)
      {
LABEL_306:
        __break(1u);
        goto LABEL_307;
      }

      v247 = v224;
      v986 = type metadata accessor for SuggestionViewController();
      v248 = objc_allocWithZone(v986);
      v249 = &v248[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_preferredContentSizeHandler];
      *v249 = sub_100106484;
      v249[1] = v242;
      v205 = v983;
      v250 = *(v983 + 16);
      v251 = v949;
      v250(v949, v966, v224);
      v252 = v950;
      v250(v950, v967, v224);
      v253 = v951;
      v254 = v965;
      v250(v951, v965, v224);
      v255 = v980;
      swift_retain_n();
      v256 = sub_10016E69C(v251, v255, v252, v253);
      v257 = &v248[OBJC_IVAR____TtC21WritingToolsUIService24SuggestionViewController_suggestionView];
      *v257 = v256;
      v257[1] = v258;
      v257[2] = v259;
      v257[3] = v260;
      v999.receiver = v248;
      v999.super_class = v986;
      v261 = objc_msgSendSuper2(&v999, "initWithNibName:bundle:", 0, 0);

      v262 = *(v205 + 8);
      v262(v254, v247);
      v262(v967, v247);
      v262(v966, v247);
      v208 = v982;
      [v982 setRootViewController:v261];

      LOBYTE(v205) = v987;
      v206 = v988;
      v216 = v989;
      v195 = v976;
      goto LABEL_269;
    }

    if (dispatch thunk of WTStartupOptions.requestPromptEntry.getter())
    {

      v225 = swift_allocObject();
      v205 = v986;
      swift_unknownObjectWeakInit();
      v226 = sub_1000FAA48(v995, v980, v889 & 1, v992, v891, v979, v892, v978, 0);
      v227 = objc_allocWithZone(type metadata accessor for PromptEntryViewController());
      v228 = v205;

      v229 = sub_1000AFD1C(sub_100106A38, v225, v205, v226);
      [v208 setRootViewController:v229];

      LOBYTE(v205) = v987;
      v216 = v989;
      goto LABEL_269;
    }

    if (v884)
    {

      if (qword_10025A6E8 != -1)
      {
        swift_once();
      }

      sub_10000F34C(v937, qword_100276F20);
      v277 = static os_log_type_t.debug.getter();
      v278 = v986;
      v279 = Logger.logObject.getter();

      v280 = os_log_type_enabled(v279, v277);
      v281 = v892;
      if (v280)
      {
        v282 = swift_slowAlloc();
        v283 = swift_slowAlloc();
        *v282 = 138412290;
        *(v282 + 4) = v278;
        *v283 = v278;
        v284 = v278;
        _os_log_impl(&_mh_execute_header, v279, v277, "SceneDelegate %@: creating QuestionnaireOnlyViewController with delegate=self", v282, 0xCu);
        sub_10000F500(v283, &unk_10025D580, &qword_1001CFA60);
        v206 = v988;
      }

      v285 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v286 = v995;
      v287 = v977;
      if ((v205)(v995, 1, v977) == 1)
      {
        v288 = Logger.logObject.getter();
        v289 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v288, v289))
        {
          v290 = swift_slowAlloc();
          *v290 = 0;
          _os_log_impl(&_mh_execute_header, v288, v289, "We do not have a sessionUUID, bail.", v290, 2u);
        }

        LOBYTE(v205) = v987;
        goto LABEL_268;
      }

      v478 = v909;
      sub_1000081F8(v286, v909, &unk_100262450, &qword_1001CFAA0);
      if ((v205)(v478, 1, v287) == 1)
      {
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
        goto LABEL_320;
      }

      v479 = type metadata accessor for QuestionnaireOnlyViewController();
      v480 = objc_allocWithZone(v479);
      v481 = &v480[OBJC_IVAR____TtC21WritingToolsUIService31QuestionnaireOnlyViewController_preferredContentSizeHandler];
      *v481 = sub_100106A38;
      v481[1] = v285;
      v482 = qword_10025A740;
      v986 = v980;
      swift_retain_n();
      v216 = v989;
      if (v482 != -1)
      {
        swift_once();
      }

      v483 = v281;
      swift_beginAccess();
      v484 = qword_100277018;
      if (!*(qword_100277018 + 16))
      {
        goto LABEL_313;
      }

      v485 = sub_100005044(v478);
      if ((v486 & 1) == 0)
      {
        goto LABEL_313;
      }

      v487 = *(*(v484 + 56) + 8 * v485);
      swift_endAccess();
      v488 = OBJC_IVAR____TtC21WritingToolsUIService31QuestionnaireOnlyViewController_questionnaireModel;
      *&v480[OBJC_IVAR____TtC21WritingToolsUIService31QuestionnaireOnlyViewController_questionnaireModel] = v487;
      v489 = v478;
      v490 = v979;

      swift_retain_n();
      sub_100036040(v891, v490);

      v491 = *&v480[v488];
      v205 = v978;

      sub_100036200(v483, v205);

      v1000.receiver = v480;
      v1000.super_class = v479;
      v492 = objc_msgSendSuper2(&v1000, "initWithNibName:bundle:", 0, 0);

      (*(v983 + 8))(v489, v977);
      v208 = v982;
      [v982 setRootViewController:v492];

      LOBYTE(v205) = v987;
LABEL_161:
      v206 = v988;
      goto LABEL_269;
    }

    if (v881)
    {

      v380 = v986;
      v381 = Logger.logObject.getter();
      v382 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v381, v382))
      {
        v383 = swift_slowAlloc();
        v384 = swift_slowAlloc();
        v385 = swift_slowAlloc();
        *&aBlock = v385;
        *v383 = 138412546;
        *(v383 + 4) = v380;
        *v384 = v380;
        *(v383 + 12) = 2080;
        v386 = v879;
        *&v997[0] = v879;
        type metadata accessor for WTFormSheetUIType(0);
        v387 = v380;
        v388 = String.init<A>(describing:)();
        v390 = sub_10002510C(v388, v389, &aBlock);

        *(v383 + 14) = v390;
        v195 = v976;
        _os_log_impl(&_mh_execute_header, v381, v382, "SceneDelegate %@: creating form sheet presentation with view: %s", v383, 0x16u);
        sub_10000F500(v384, &unk_10025D580, &qword_1001CFA60);

        sub_10000F4B4(v385);
        v206 = v988;

        v205 = v987;
        v216 = v989;
        v391 = v892;
      }

      else
      {

        v205 = v987;
        v216 = v989;
        v391 = v892;
        v386 = v879;
      }

      if (v386 == 2)
      {
        v835 = dispatch thunk of WTStartupOptions.shareSheetPayload.getter();
        if (!v835)
        {
          v871 = Logger.logObject.getter();
          v872 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v871, v872))
          {
            v873 = swift_slowAlloc();
            *v873 = 0;
            _os_log_impl(&_mh_execute_header, v871, v872, "Share sheet payload not found.", v873, 2u);
          }

          goto LABEL_269;
        }

        v836 = v835;
        type metadata accessor for CompositionModel(0);
        sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
        v837 = v836;
        v838 = Environment.init<A>(_:)();
        LOBYTE(v836) = v839;
        LOBYTE(v997[0]) = 1;
        State.init(wrappedValue:)();
        v840 = aBlock;
        v841 = *(&aBlock + 1);
        *&aBlock = v837;
        *(&aBlock + 1) = v838;
        LOBYTE(v1002) = v836 & 1;
        BYTE8(v1002) = v840;
        *v1003 = v841;
        *&v1003[8] = xmmword_1001D8860;
        v842 = v391;
        v843 = v837;
        sub_1000FAA48(v995, v980, v889 & 1, v992, v891, v979, v842, v978, 0);
        sub_1001063F8();
        v844 = v899;
        View.environment<A>(_:)();

        v845 = v844;
        v846 = v894;
        (*(v900 + 16))(v893, v845, v894);
        v847 = objc_allocWithZone(sub_10000341C(&qword_100262528, &qword_1001D8DF8));
        v848 = UIHostingController.init(rootView:)();
        UIHostingController.safeAreaRegions.setter();
        v849 = v848;
        v850 = [v849 view];
        if (!v850)
        {
LABEL_344:
          __break(1u);
          goto LABEL_345;
        }

        v851 = v850;
        [v850 setBackgroundColor:0];

        v852 = [v849 view];
        LOBYTE(v205) = v987;
        v216 = v989;
        if (!v852)
        {
LABEL_345:
          __break(1u);
          goto LABEL_346;
        }

        v853 = v852;
        v854 = [v852 layer];

        [v854 setHitTestsAsOpaque:1];
        v855 = [v849 view];
        if (!v855)
        {
LABEL_346:
          __break(1u);
          return;
        }

        v856 = v855;
        [v855 setTranslatesAutoresizingMaskIntoConstraints:0];

        (*(v900 + 8))(v899, v846);
        [v208 setRootViewController:v849];

        goto LABEL_161;
      }

      if (v386 == 1)
      {
        *(&v1002 + 1) = type metadata accessor for SceneDelegate();
        *v1003 = sub_1001068A4(&qword_100262530, type metadata accessor for SceneDelegate);
        *&aBlock = v380;
        v821 = v380;
        GenerativeAssistantSettingsOnboarding.init(enablementDelegate:)();
        sub_1000FAA48(v995, v980, v889 & 1, v992, v891, v979, v391, v978, 0);
        type metadata accessor for CompositionModel(0);
        sub_1001068A4(&qword_100262538, &type metadata accessor for GenerativeAssistantSettingsOnboarding);
        sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
        v822 = v902;
        v823 = v897;
        v824 = v901;
        View.environment<A>(_:)();

        (*(v896 + 8))(v824, v823);
        v825 = v898;
        (*(v903 + 16))(v895, v822, v898);
        v826 = objc_allocWithZone(sub_10000341C(&unk_100262540, &unk_1001D8E00));
        v827 = UIHostingController.init(rootView:)();
        UIHostingController.safeAreaRegions.setter();
        v498 = v827;
        v828 = [v498 view];
        if (!v828)
        {
LABEL_336:
          __break(1u);
          goto LABEL_337;
        }

        v829 = v828;
        [v828 setBackgroundColor:0];

        v830 = [v498 view];
        if (!v830)
        {
LABEL_339:
          __break(1u);
          goto LABEL_340;
        }

        v831 = v830;
        v832 = [v830 layer];

        [v832 setHitTestsAsOpaque:1];
        v833 = [v498 view];
        if (!v833)
        {
LABEL_342:
          __break(1u);
          goto LABEL_343;
        }

        v834 = v833;
        [v833 setTranslatesAutoresizingMaskIntoConstraints:0];

        (*(v903 + 8))(v902, v825);
      }

      else
      {
        if (v386)
        {
          v857 = Logger.logObject.getter();
          v858 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v857, v858))
          {
            v859 = swift_slowAlloc();
            v860 = swift_slowAlloc();
            *&aBlock = v860;
            *v859 = 136315138;
            *&v997[0] = v879;
            type metadata accessor for WTFormSheetUIType(0);
            v861 = String.init<A>(describing:)();
            v205 = sub_10002510C(v861, v862, &aBlock);
            v206 = v988;

            *(v859 + 4) = v205;
            LOBYTE(v205) = v987;
            _os_log_impl(&_mh_execute_header, v857, v858, "No valid view assignment for enum: %s found.", v859, 0xCu);
            sub_10000F4B4(v860);
          }

          v863 = objc_allocWithZone(sub_10000341C(&qword_100262518, &qword_1001D8DF0));
          v864 = UIHostingController.init(rootView:)();
          UIHostingController.safeAreaRegions.setter();
          v498 = v864;
          v865 = [v498 view];
          if (!v865)
          {
            goto LABEL_338;
          }

          v866 = v865;
          [v865 setBackgroundColor:0];

          v867 = [v498 view];
          if (!v867)
          {
LABEL_341:
            __break(1u);
            goto LABEL_342;
          }

          v868 = v867;
          v869 = [v867 layer];

          [v869 setHitTestsAsOpaque:1];
          v560 = [v498 view];
          if (!v560)
          {
LABEL_343:
            __break(1u);
            goto LABEL_344;
          }
        }

        else
        {
          v554 = objc_allocWithZone(sub_10000341C(&qword_100262518, &qword_1001D8DF0));
          v555 = UIHostingController.init(rootView:)();
          UIHostingController.safeAreaRegions.setter();
          v498 = v555;
          v556 = [v498 view];
          if (!v556)
          {
LABEL_337:
            __break(1u);
LABEL_338:
            __break(1u);
            goto LABEL_339;
          }

          v557 = v556;
          [v556 setBackgroundColor:0];

          v558 = [v498 view];
          if (!v558)
          {
LABEL_340:
            __break(1u);
            goto LABEL_341;
          }

          v559 = v558;
          v209 = [v558 layer];

          [v209 setHitTestsAsOpaque:1];
          v560 = [v498 view];
          if (!v560)
          {
            __break(1u);
            goto LABEL_188;
          }
        }

        v870 = v560;
        [v560 setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      [v208 setRootViewController:v498];

      goto LABEL_269;
    }

    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v493 = sub_10000F34C(v937, qword_100276F20);
    v494 = static os_log_type_t.debug.getter();
    v195 = v995;
    v208 = v907;
    sub_1000081F8(v995, v907, &unk_100262450, &qword_1001CFAA0);
    v495 = v986;
    v965 = v493;
    v496 = Logger.logObject.getter();

    LODWORD(v967) = v494;
    v497 = v494;
    v498 = v496;
    v499 = os_log_type_enabled(v496, v497);
    v966 = v495;
    v963 = v199;
    if (v499)
    {
      v500 = swift_slowAlloc();
      v501 = swift_slowAlloc();
      v502 = swift_slowAlloc();
      *&aBlock = v502;
      *v500 = 138412546;
      *(v500 + 4) = v495;
      *v501 = v495;
      *(v500 + 12) = 2080;
      sub_1000081F8(v208, v975, &unk_100262450, &qword_1001CFAA0);
      v503 = v495;
      v209 = v983;
      v504 = String.init<A>(describing:)();
      v505 = v208;
      v506 = v504;
      v508 = v507;
      sub_10000F500(v505, &unk_100262450, &qword_1001CFAA0);
      v509 = v506;
      v510 = v995;
      v511 = sub_10002510C(v509, v508, &aBlock);

      *(v500 + 14) = v511;
      v195 = v510;
      _os_log_impl(&_mh_execute_header, v498, v967, "SceneDelegate %@: creating WritingToolsView with delegate=self for sessionUUID: %s", v500, 0x16u);
      sub_10000F500(v501, &unk_10025D580, &qword_1001CFA60);

      sub_10000F4B4(v502);
      v206 = v988;

      goto LABEL_189;
    }

LABEL_188:

    sub_10000F500(v208, &unk_100262450, &qword_1001CFAA0);
LABEL_189:
    v561 = v926;
    v562 = v910;
    v563 = v908;
    sub_1000081F8(v195, v908, &unk_100262450, &qword_1001CFAA0);
    v564 = v977;
    if ((v205)(v563, 1, v977) == 1)
    {
      sub_10000F3F4(v989, v993, v206, v987);
      sub_10000F500(v563, &unk_100262450, &qword_1001CFAA0);
    }

    else
    {
      (*(v209 + 4))(v561, v563, v564);
      sub_10000F3F4(v989, v993, v206, v987);
      if (qword_10025A788 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v565 = qword_1002770A8;
      if (*(qword_1002770A8 + 16))
      {
        v566 = sub_100005044(v561);
        if (v567)
        {
          v568 = *(*(v565 + 56) + 8 * v566);
          swift_endAccess();
          v569 = v977;
          (*(v209 + 2))(v562, v561, v977);
          v967 = v568;

          v570 = Logger.logObject.getter();
          v571 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v570, v571))
          {
            v572 = swift_slowAlloc();
            v981 = swift_slowAlloc();
            *&aBlock = v981;
            *v572 = 136315138;
            sub_1001068A4(&qword_100262478, &type metadata accessor for UUID);
            v573 = dispatch thunk of CustomStringConvertible.description.getter();
            v575 = v574;
            v576 = *(v209 + 1);
            v576(v562, v569);
            v577 = sub_10002510C(v573, v575, &aBlock);

            *(v572 + 4) = v577;
            _os_log_impl(&_mh_execute_header, v570, v571, "Setting new delegate for RewritingModel for sessionUUID: %s", v572, 0xCu);
            sub_10000F4B4(v981);

            v206 = v988;

            v576(v926, v569);
          }

          else
          {

            v874 = *(v209 + 1);
            v874(v562, v569);
            v874(v561, v569);
          }

          v637 = v891;
          v640 = v966;
          swift_unknownObjectWeakAssign();
          v639 = v911;
          goto LABEL_227;
        }
      }

      swift_endAccess();
      (*(v209 + 1))(v561, v977);
    }

    v596 = v906;
    sub_1000081F8(v195, v906, &unk_100262450, &qword_1001CFAA0);
    v597 = Logger.logObject.getter();
    v598 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v597, v598))
    {
      v599 = swift_slowAlloc();
      v600 = swift_slowAlloc();
      *&aBlock = v600;
      *v599 = 136315138;
      sub_1000081F8(v596, v975, &unk_100262450, &qword_1001CFAA0);
      v601 = String.init<A>(describing:)();
      v603 = v602;
      sub_10000F500(v596, &unk_100262450, &qword_1001CFAA0);
      v604 = sub_10002510C(v601, v603, &aBlock);

      *(v599 + 4) = v604;
      _os_log_impl(&_mh_execute_header, v597, v598, "No RewritingModel found for sessionUUID: %s, creating new RewritingModel", v599, 0xCu);
      sub_10000F4B4(v600);
    }

    else
    {

      sub_10000F500(v596, &unk_100262450, &qword_1001CFAA0);
    }

    v605 = v987;
    v606 = type metadata accessor for RewritingModel();
    v607 = *(v606 + 48);
    v608 = *(v606 + 52);
    swift_allocObject();
    v609 = sub_1000C32AC();
    v610 = v988;
    v967 = v609;
    if (v605 >= 2 && v988 | v993 | v989 && v989 == 1 && !(v988 | v993))
    {
      v611 = v609;
      v612 = 1;
      v613 = 0;
      v614 = 0;
      v615 = 0;
    }

    else
    {
      v616 = v989;
      v617 = v993;
      v618 = v987;
      sub_10000F3F4(v989, v993, v988, v987);
      v612 = v616;
      v611 = v967;
      v613 = v617;
      v614 = v610;
      v615 = v618;
    }

    sub_100036534(v612, v613, v614, v615);
    swift_unknownObjectWeakAssign();
    v619 = v980;
    v620 = v980;

    sub_100035E70(v619);
    if ((v887 & 1) == *(v611 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent))
    {
      *(v611 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__isForEditableContent) = v887 & 1;
    }

    else
    {
      v621 = swift_getKeyPath();
      __chkstk_darwin(v621);
      *&aBlock = v611;
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
      v622 = v968;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v968 = v622;
    }

    if ((v888 & 1) == *(v611 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing))
    {
      *(v611 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__wantsInlineEditing) = v888 & 1;
    }

    else
    {
      v623 = swift_getKeyPath();
      __chkstk_darwin(v623);
      *&aBlock = v611;
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
      v624 = v968;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v968 = v624;
    }

    if (*(v611 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__allowedResultOptions) != v886)
    {
      v625 = swift_getKeyPath();
      __chkstk_darwin(v625);
      *&aBlock = v611;
      sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
      v626 = v968;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v968 = v626;
    }

    if ((v889 & 1) == *(v611 + 64))
    {
      *(v611 + 64) = v889 & 1;
      v629 = v968;
    }

    else
    {
      v627 = swift_getKeyPath();
      __chkstk_darwin(v627);
      *&aBlock = v611;
      sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel);
      v628 = v968;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      v629 = v628;
    }

    v630 = v975;
    sub_1000081F8(v992, v975, &unk_100262450, &qword_1001CFAA0);
    v631 = type metadata accessor for WritingToolsAnalytics();
    v632 = *(v631 + 48);
    v633 = *(v631 + 52);
    swift_allocObject();
    v634 = sub_100009B2C(v630);
    *(&v1002 + 1) = v631;
    *v1003 = &off_10024B270;
    *&aBlock = v634;
    v635 = swift_getKeyPath();
    __chkstk_darwin(v635);
    *&v997[0] = v611;
    sub_1001068A4(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v968 = v629;

    sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
    v636 = v979;

    v637 = v891;
    sub_100036040(v891, v636);
    v638 = v978;

    sub_100036200(v892, v638);

    v206 = v988;
    v639 = v911;
    v640 = v966;
LABEL_227:
    sub_10000F428(v989, v993, v206, v987);
    sub_1000081F8(v995, v639, &unk_100262450, &qword_1001CFAA0);
    v641 = v977;
    if ((v205)(v639, 1, v977) == 1)
    {
      sub_10000F500(v639, &unk_100262450, &qword_1001CFAA0);
      v642 = v980;
      v643 = v992;
    }

    else
    {
      v644 = v904;
      (*(v983 + 32))(v904, v639, v641);
      v642 = v980;
      if (qword_10025A890 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v645 = qword_100277358;
      v643 = v992;
      if (*(qword_100277358 + 16))
      {
        v646 = sub_100005044(v644);
        if (v647)
        {
          v648 = *(*(v645 + 56) + 8 * v646);
          swift_endAccess();
          v649 = *(v983 + 8);

          v649(v644, v641);
          swift_unknownObjectWeakAssign();
          v650 = v978;
          v651 = v892;
          v652 = v979;
LABEL_236:
          v664 = sub_1000FAA48(v995, v642, v889 & 1, v643, v637, v652, v651, v650, v878 & 1);
          v665 = v985;
          sub_1000A7578(v664);
          swift_getKeyPath();
          *&aBlock = v665;
          v983 = sub_1001068A4(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v666 = *(v665 + 32);

          v667 = v969;
          v668 = v970;
          v669 = v971;
          v670 = v972;
          sub_10002879C(v969, v970, v971, v972);
          sub_1000752D8(v667, v668, v669, v670);

          sub_1000081F8(v643, v935, &unk_100262450, &qword_1001CFAA0);
          v671 = type metadata accessor for CommonUIManager();
          v672 = sub_1001068A4(&qword_10025B1E0, type metadata accessor for CommonUIManager);
          v981 = v640;

          v959 = v980;

          v673 = v974;
          v674 = v974;

          v977 = v648;

          v966 = v671;
          v964 = v672;
          v675 = Environment.init<A>(_:)();
          v676 = v916;
          *v916 = v675;
          *(v676 + 8) = v677 & 1;
          v678 = type metadata accessor for PresentationModel();
          v679 = sub_1001068A4(&qword_10025A910, type metadata accessor for PresentationModel);
          v961 = v678;
          v960 = v679;
          *(v676 + 16) = Environment.init<A>(_:)();
          *(v676 + 24) = v680 & 1;
          v681 = type metadata accessor for WritingToolsView();
          v682 = v681[6];
          *(v676 + v682) = swift_getKeyPath();
          sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
          swift_storeEnumTagMultiPayload();
          v683 = v681[7];
          swift_unknownObjectWeakInit();
          v684 = v681[17];
          v685 = v912;
          NavigationPath.init()();
          v686 = v914;
          v687 = v915;
          (*(v914 + 16))(v913, v685, v915);
          State.init(wrappedValue:)();
          (*(v686 + 8))(v685, v687);
          v688 = v676 + v681[18];
          *&v997[0] = 0;
          *(&v997[0] + 1) = 0xE000000000000000;
          State.init(wrappedValue:)();
          v689 = v1002;
          *v688 = aBlock;
          *(v688 + 16) = v689;
          v690 = v681[19];
          *v1003 = 0;
          aBlock = 0u;
          v1002 = 0u;
          sub_1000081F8(&aBlock, v997, &unk_10025B1C0, &unk_1001CFA90);
          sub_10000341C(&unk_10025B1C0, &unk_1001CFA90);
          State.init(wrappedValue:)();
          sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
          v691 = v676 + v681[22];
          *&v997[0] = 0;
          BYTE8(v997[0]) = 1;
          sub_10000341C(&unk_10025B1D0, &qword_1001D31D0);
          State.init(wrappedValue:)();
          v692 = BYTE8(aBlock);
          v693 = v1002;
          *v691 = aBlock;
          *(v691 + 8) = v692;
          *(v691 + 16) = v693;
          v694 = v676 + v681[23];
          LOBYTE(v997[0]) = 0;
          State.init(wrappedValue:)();
          v695 = *(&aBlock + 1);
          *v694 = aBlock;
          *(v694 + 8) = v695;
          v696 = v681[24];
          *(v676 + v696) = swift_getKeyPath();
          sub_10000341C(&qword_10025A920, &qword_1001CFB10);
          swift_storeEnumTagMultiPayload();
          v697 = v676 + v681[25];
          *v697 = FocusState.init<>()() & 1;
          *(v697 + 8) = v698;
          *(v697 + 16) = v699 & 1;
          v700 = static os_log_type_t.debug.getter();
          v701 = Logger.logObject.getter();
          if (os_log_type_enabled(v701, v700))
          {
            v702 = swift_slowAlloc();
            v703 = swift_slowAlloc();
            *&aBlock = v703;
            *v702 = 136315138;
            *(v702 + 4) = sub_10002510C(7562617, 0xE300000000000000, &aBlock);
            _os_log_impl(&_mh_execute_header, v701, v700, "Initializing WritingToolsView initializing QuestionnaireView with delegate: %s", v702, 0xCu);
            sub_10000F4B4(v703);

            v673 = v974;
          }

          swift_unknownObjectWeakAssign();
          v704 = v681[20];

          Bindable<A>.init(wrappedValue:)();
          *(v676 + v681[8]) = v959;
          v705 = (v676 + v681[9]);
          v706 = v984;
          *v705 = v973;
          v705[1] = v706;
          *(v676 + v681[10]) = v673;
          v707 = v681[11];
          LODWORD(v973) = v887 & 1;
          *(v676 + v707) = v887 & 1;
          v708 = v681[12];
          LODWORD(v965) = v888 & 1;
          *(v676 + v708) = v888 & 1;
          v709 = v886;
          *(v676 + v681[13]) = v886;
          *(v676 + v681[14]) = v889 & 1;
          v710 = (v676 + v681[21]);
          *&v997[0] = v977;
          type metadata accessor for ProofreadingModel();

          State.init(wrappedValue:)();
          v711 = *(&aBlock + 1);
          *v710 = aBlock;
          v710[1] = v711;
          v712 = v975;
          sub_1000081F8(v935, v975, &unk_100262450, &qword_1001CFAA0);
          v713 = type metadata accessor for WritingToolsAnalytics();
          v714 = *(v713 + 48);
          v715 = *(v713 + 52);
          swift_allocObject();
          v716 = sub_100009B2C(v712);
          *(&v1002 + 1) = v713;
          *v1003 = &off_10024B270;
          *&aBlock = v716;
          sub_10000F500(v676 + v690, &unk_10025B200, &qword_1001CFB18);
          sub_1000081F8(&aBlock, v997, &unk_10025B1C0, &unk_1001CFA90);
          State.init(wrappedValue:)();
          sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
          v717 = (v676 + v681[15]);
          v718 = v979;
          *v717 = v891;
          v717[1] = v718;
          v719 = (v676 + v681[16]);
          v720 = v978;
          *v719 = v892;
          v719[1] = v720;
          sub_10000341C(&qword_1002624F0, &qword_1001CFB20);
          Bindable.wrappedValue.getter();

          sub_1000A73A0(v721);

          Bindable.wrappedValue.getter();
          v722 = aBlock;
          swift_getKeyPath();
          *&aBlock = v722;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v723 = *(v722 + 32);

          if (*(v723 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allowedResultOptions) != v709)
          {
            v724 = swift_getKeyPath();
            __chkstk_darwin(v724);
            *&aBlock = v723;
            sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
            v725 = v968;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            v968 = v725;
          }

          Bindable.wrappedValue.getter();
          v726 = aBlock;
          swift_getKeyPath();
          *&aBlock = v726;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v727 = *(v726 + 32);

          if ((v888 & 1) == *(v727 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing))
          {
            *(v727 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing) = v965;
          }

          else
          {
            v728 = swift_getKeyPath();
            __chkstk_darwin(v728);
            *&aBlock = v727;
            sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
            v729 = v968;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            v968 = v729;
          }

          Bindable.wrappedValue.getter();
          v730 = aBlock;
          swift_getKeyPath();
          *&aBlock = v730;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v731 = *(v730 + 32);

          v732 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent;
          if ((v887 & 1) == *(v731 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent))
          {
            sub_10000F500(v935, &unk_100262450, &qword_1001CFAA0);

            v734 = v981;

            *(v731 + v732) = v973;
          }

          else
          {
            v733 = swift_getKeyPath();
            v975 = &v875;
            __chkstk_darwin(v733);
            *&aBlock = v731;
            sub_1001068A4(&qword_10025B210, type metadata accessor for CompositionModel);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            v734 = v981;

            sub_10000F500(v935, &unk_100262450, &qword_1001CFAA0);
          }

          (*(*(v681 - 1) + 56))(v676, 0, 1, v681);
          v735 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_writingToolsView;
          swift_beginAccess();
          sub_1001062D4(v676, v734 + v735);
          swift_endAccess();
          v736 = v917;
          sub_1000081F8(v734 + v735, v917, &qword_1002624B0, &qword_1001D8C08);
          v737 = *(v734 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_commonUIManager);
          v738 = sub_100106344();
          v739 = v919;
          v975 = v737;
          v740 = v918;
          v741 = v966;
          v742 = v964;
          View.environment<A>(_:)();
          sub_10000F500(v736, &qword_1002624B0, &qword_1001D8C08);

          *&aBlock = v740;
          *(&aBlock + 1) = v741;
          *&v1002 = v738;
          *(&v1002 + 1) = v742;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v744 = v921;
          v745 = v924;
          v746 = v882;
          v747 = v983;
          View.environment<A>(_:)();

          (*(v922 + 8))(v739, v745);
          v748 = *&v963[v986];

          *&aBlock = v745;
          *(&aBlock + 1) = v746;
          *&v1002 = OpaqueTypeConformance2;
          *(&v1002 + 1) = v747;
          swift_getOpaqueTypeConformance2();
          v749 = v928;
          v750 = v925;
          View.environment<A>(_:)();

          (*(v923 + 8))(v744, v750);
          (*(v929 + 16))(v920, v749, v930);
          v751 = objc_allocWithZone(sub_10000341C(&qword_100262508, &unk_1001D8DE0));
          v752 = UIHostingController.init(rootView:)();
          UIHostingController.safeAreaRegions.setter();
          v753 = v752;
          v754 = [v753 view];
          if (!v754)
          {
            goto LABEL_319;
          }

          v755 = v754;
          [v754 setBackgroundColor:0];

          v756 = [v753 view];
          v757 = v987;
          v758 = v989;
          if (!v756)
          {
LABEL_320:
            __break(1u);
            goto LABEL_321;
          }

          v759 = v756;
          v760 = [v756 layer];

          [v760 setHitTestsAsOpaque:1];
          v761 = [v753 view];
          v762 = v981;
          if (!v761)
          {
LABEL_321:
            __break(1u);
            goto LABEL_322;
          }

          v763 = v761;
          [v761 setTranslatesAutoresizingMaskIntoConstraints:0];

          v764 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_rootViewController;
          v765 = [*(v762 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_rootViewController) view];
          if (!v765)
          {
LABEL_322:
            __break(1u);
            goto LABEL_323;
          }

          v766 = v765;
          v767 = [v753 view];
          if (!v767)
          {
LABEL_323:
            __break(1u);
LABEL_324:
            __break(1u);
            goto LABEL_325;
          }

          v768 = v767;
          [v766 addSubview:v767];

          [*(v762 + v764) addChildViewController:v753];
          v769 = v757 < 2u || v988 | v993 | v758;
          [*(v762 + v764) setModalInPresentation:v769];
          v770 = [*(v762 + v764) view];
          if (!v770)
          {
            goto LABEL_324;
          }

          v771 = v770;
          v772 = [objc_opt_self() currentDevice];
          v773 = [v772 userInterfaceIdiom];

          [v771 setTranslatesAutoresizingMaskIntoConstraints:v773 == 6];
          v774 = [*(v762 + v764) view];
          if (!v774)
          {
LABEL_325:
            __break(1u);
            goto LABEL_326;
          }

          v775 = v774;
          v776 = [v774 bottomAnchor];

          v777 = [v753 view];
          if (!v777)
          {
LABEL_326:
            __break(1u);
            goto LABEL_327;
          }

          v778 = v777;
          v779 = [v777 bottomAnchor];

          v780 = [v776 constraintEqualToAnchor:v779];
          v781 = *(v762 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerBottomConstraint);
          *(v762 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerBottomConstraint) = v780;

          v782 = [v753 view];
          if (!v782)
          {
LABEL_327:
            __break(1u);
            goto LABEL_328;
          }

          v783 = v782;
          v784 = [v782 heightAnchor];

          v785 = [v784 constraintEqualToConstant:2000.0];
          v786 = OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerHeightConstraint;
          v787 = *(v762 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerHeightConstraint);
          *(v762 + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_hostingControllerHeightConstraint) = v785;

          sub_10000341C(&qword_10025F470, &qword_1001D1020);
          v788 = swift_allocObject();
          *(v788 + 16) = xmmword_1001CE090;
          v789 = [*(v762 + v764) view];
          if (!v789)
          {
LABEL_328:
            __break(1u);
            goto LABEL_329;
          }

          v790 = v789;
          v791 = [v789 leadingAnchor];

          v792 = [v753 view];
          if (!v792)
          {
LABEL_329:
            __break(1u);
            goto LABEL_330;
          }

          v793 = v792;
          v794 = [v792 leadingAnchor];

          v795 = [v791 constraintEqualToAnchor:v794];
          *(v788 + 32) = v795;
          v796 = [*(v762 + v764) view];
          if (!v796)
          {
LABEL_330:
            __break(1u);
            goto LABEL_331;
          }

          v797 = v796;
          v798 = [v796 trailingAnchor];

          v799 = [v753 view];
          if (!v799)
          {
LABEL_331:
            __break(1u);
            goto LABEL_332;
          }

          v800 = v799;
          v801 = [v799 trailingAnchor];

          v802 = [v798 constraintEqualToAnchor:v801];
          *(v788 + 40) = v802;
          v803 = [*(v762 + v764) view];
          if (!v803)
          {
LABEL_332:
            __break(1u);
            goto LABEL_333;
          }

          v804 = v803;
          v805 = [v803 topAnchor];

          v806 = [v753 view];
          if (!v806)
          {
LABEL_333:
            __break(1u);
            goto LABEL_334;
          }

          v807 = [v806 topAnchor];

          v808 = [v805 constraintEqualToAnchor:v807];
          *(v788 + 48) = v808;
          v809 = *(v762 + v786);
          v208 = v982;
          if (!v809)
          {
LABEL_334:
            __break(1u);
LABEL_335:
            __break(1u);
            goto LABEL_336;
          }

          v810 = objc_opt_self();
          *(v788 + 56) = v809;
          sub_1000081B0(0, &qword_10025AD00, NSLayoutConstraint_ptr);
          v811 = v809;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v810 activateConstraints:isa];

          [v208 setRootViewController:*(v762 + v764)];
          v813 = *(v762 + v764);
          v814 = v813;
          sub_1001530C4(v813);
          sub_10015295C(v962);
          sub_10015277C(2);
          sub_100152580(7, 0);

          (*(v929 + 8))(v928, v930);
LABEL_266:
          v195 = v976;
LABEL_267:
          LOBYTE(v205) = v987;
          v206 = v988;
LABEL_268:
          v216 = v989;
          goto LABEL_269;
        }
      }

      swift_endAccess();
      (*(v983 + 8))(v644, v641);
    }

    v653 = type metadata accessor for ProofreadingModel();
    v654 = *(v653 + 48);
    v655 = *(v653 + 52);
    swift_allocObject();
    v648 = sub_1001A8C78();
    v656 = v642;

    sub_100035E70(v642);
    swift_unknownObjectWeakAssign();
    sub_100036534(1, 0, 0, 2);
    v657 = v975;
    sub_1000081F8(v643, v975, &unk_100262450, &qword_1001CFAA0);
    v658 = type metadata accessor for WritingToolsAnalytics();
    v659 = *(v658 + 48);
    v660 = *(v658 + 52);
    swift_allocObject();
    v661 = sub_100009B2C(v657);
    *(&v1002 + 1) = v658;
    *v1003 = &off_10024B270;
    *&aBlock = v661;
    v662 = swift_getKeyPath();
    __chkstk_darwin(v662);
    *&v997[0] = v648;
    sub_1001068A4(&qword_10025BAB0, type metadata accessor for ProofreadingModel);
    v663 = v968;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v968 = v663;

    sub_10000F500(&aBlock, &unk_10025B1C0, &unk_1001CFA90);
    v652 = v979;

    v637 = v891;
    sub_100036040(v891, v652);
    v650 = v978;

    v651 = v892;
    sub_100036200(v892, v650);

    goto LABEL_236;
  }
}

void sub_100105828(const char *a1)
{
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F34C(v3, qword_100276F08);
  v4 = static os_log_type_t.debug.getter();
  v5 = v1;
  oslog = Logger.logObject.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v4, a1, v6, 0xCu);
    sub_10000F500(v7, &unk_10025D580, &qword_1001CFA60);
  }
}

id sub_10010597C(void *a1)
{
  v2 = [a1 sourceBundleIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v9 = [v8 bundleIdentifier];

  if (v9)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v6)
    {
      if (v12)
      {
        if (v4 == v10 && v6 == v12)
        {
          goto LABEL_25;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v14)
        {
          goto LABEL_33;
        }

LABEL_17:
        v15 = [a1 hostBundleIdentifier];
        if (v15)
        {
          v16 = v15;
          v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v20 = [v7 mainBundle];
        v21 = [v20 bundleIdentifier];

        if (v21)
        {
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          if (v19)
          {
            if (v24)
            {
              if (v17 == v22 && v19 == v24)
              {
LABEL_25:

                goto LABEL_33;
              }

              v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v27)
              {
                goto LABEL_33;
              }

LABEL_30:
              v25 = [a1 isLocal];
              result = [a1 isFloating];
              if (!v25)
              {
                return result;
              }

              goto LABEL_34;
            }
          }

          else if (!v24)
          {
            goto LABEL_33;
          }
        }

        else if (!v19)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

LABEL_16:

      goto LABEL_17;
    }

    if (v12)
    {
      goto LABEL_16;
    }
  }

  else if (v6)
  {
    goto LABEL_16;
  }

LABEL_33:
  result = [a1 isFloating];
LABEL_34:
  if ((result & 1) == 0)
  {
    return [a1 keyboardPositionWithIAV];
  }

  return result;
}

uint64_t sub_100105C3C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100105C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10025A890 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_100277358;
  if (!*(qword_100277358 + 16))
  {
    return swift_endAccess();
  }

  v7 = sub_100005044(a1);
  if ((v8 & 1) == 0)
  {
    return swift_endAccess();
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();

  sub_1001A7170(a2, a3);
}

void sub_100105D60(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_1002770A8;
  if (*(qword_1002770A8 + 16))
  {
    v8 = sub_100005044(a1);
    if (v9)
    {
      goto LABEL_9;
    }
  }

  swift_endAccess();
  if (qword_10025A740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = qword_100277018;
  if (*(qword_100277018 + 16) && (v8 = sub_100005044(a1), (v10 & 1) != 0))
  {
LABEL_9:
    v11 = *(*(v7 + 56) + 8 * v8);
    swift_endAccess();

    if (*(v11 + 144) == 1)
    {
      *(v11 + 144) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v22 - 2) = v11;
      *(&v22 - 8) = 1;
      v23[0] = v11;
      sub_1001068A4(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
    swift_endAccess();
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000F34C(v12, qword_100276F08);
    (*(v3 + 16))(v6, a1, v2);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23[0] = v16;
      *v15 = 136315138;
      sub_1001068A4(&qword_100262478, &type metadata accessor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      (*(v3 + 8))(v6, v2);
      v20 = sub_10002510C(v17, v19, v23);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "didDismissInputWarningForSessionWithUUID: no model found for UUID [%s]", v15, 0xCu);
      sub_10000F4B4(v16);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t sub_1001062D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002624B0, &qword_1001D8C08);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100106344()
{
  result = qword_1002624F8;
  if (!qword_1002624F8)
  {
    sub_100003E34(&qword_1002624B0, &qword_1001D8C08);
    sub_1001068A4(&qword_100262500, type metadata accessor for WritingToolsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002624F8);
  }

  return result;
}

unint64_t sub_1001063F8()
{
  result = qword_100262520;
  if (!qword_100262520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262520);
  }

  return result;
}

uint64_t sub_10010644C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1001064A8()
{
  result = qword_100262558;
  if (!qword_100262558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262558);
  }

  return result;
}

unint64_t sub_1001064FC()
{
  result = qword_100262568;
  if (!qword_100262568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262568);
  }

  return result;
}

uint64_t sub_1001065A4()
{
  v1 = *(sub_10000341C(&unk_100262450, &qword_1001CFAA0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v2 | 7);
}

uint64_t sub_1001066E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_100262450, &qword_1001CFAA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100106754(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10000341C(&unk_100262450, &qword_1001CFAA0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100028688;

  return sub_1000F54E4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1001068A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100106A3C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100106D00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    return qword_1001D90F0[a1];
  }

  if (a4 == 1)
  {
    return 201;
  }

  if (a3 | a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 == 1;
  }

  v6 = 101;
  if (v5)
  {
    v6 = 1;
  }

  if (a3 | a2 | a1)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100106D54(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 > 7u)
    {
      if (a1 == 8)
      {

        return static RewriteType.bullets()();
      }

      else
      {

        return static RewriteType.tables()();
      }
    }

    else if (a1 == 5)
    {

      return static RewriteType.openEnded()();
    }

    else
    {
      if (a1 != 7)
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return static RewriteType.professional()();
      }

      return static RewriteType.takeaways()();
    }
  }

  else if (a1 <= 1u)
  {
    if (a1)
    {

      return static RewriteType.proofreading()();
    }

    else
    {

      return static RewriteType.magic()();
    }
  }

  else
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {

        return static RewriteType.friendly()();
      }

      return static RewriteType.professional()();
    }

    return static RewriteType.concise()();
  }
}

uint64_t sub_100106E88(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    return qword_1001D9140[a1];
  }

  if (a4 == 1)
  {
    return 10;
  }

  if (a4 == 2 && a1 == 2 && !(a3 | a2))
  {
    return 11;
  }

  return 0;
}

void CompositionMode.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3 == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    if (a3)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(a4 & 1);
  }
}

Swift::Int CompositionMode.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a2 == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    if (a2)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(a3 & 1);
  }

  return Hasher._finalize()();
}

void sub_100107010()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    v2 = *v0;
    v3 = *(v0 + 16);
    Hasher._combine(_:)(0);
    if (v1)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v3 & 1);
  }
}

Swift::Int sub_100107094()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v1 == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v1)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v3 & 1);
  }

  return Hasher._finalize()();
}

Swift::Int WTIcon.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

void Mode.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  if (a5)
  {
    if (a5 == 1)
    {
      Hasher._combine(_:)(3uLL);
      if (a3 != 1)
      {
        Hasher._combine(_:)(0);
        if (a3)
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v9 = a4 & 1;
        goto LABEL_20;
      }
    }

    else
    {
      if (!(a4 | a3 | a2))
      {
        v8 = 0;
        goto LABEL_17;
      }

      if (a2 != 1 || a4 | a3)
      {
        v8 = 4;
        goto LABEL_17;
      }
    }

    v8 = 1;
LABEL_17:
    Hasher._combine(_:)(v8);
    return;
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(v7);
  if (!a4)
  {
    v9 = 0;
LABEL_20:
    Hasher._combine(_:)(v9);
    return;
  }

  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int Mode.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  Mode.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_100107334()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  Mode.hash(into:)(v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

Swift::Int sub_1001073A8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  Mode.hash(into:)(v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

BOOL _s21WritingToolsUIService15CompositionModeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return (a6 ^ a3 ^ 1) & 1;
}

uint64_t _s21WritingToolsUIService4ModeO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a4 == 1)
    {
      if (a8 == 1)
      {
        if (a2 == 1)
        {
          return a6 == 1;
        }

        if (a6 != 1)
        {
          if (!a2)
          {
            return !a6 && ((a3 ^ a7) & 1) == 0;
          }

          if (a6)
          {
            if (a1 == a5 && a2 == a6)
            {
              if ((a3 & 1) != (a7 & 1))
              {
                return 0;
              }
            }

            else
            {
              v9 = a3;
              v10 = a7;
              if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v9 ^ v10))
              {
                return 0;
              }
            }

            return 1;
          }
        }
      }
    }

    else
    {
      if (!(a3 | a2 | a1))
      {
        return a8 == 2 && !(a7 | a6 | a5);
      }

      if (a1 != 1 || a3 | a2)
      {
        if (a8 != 2 || a5 != 2)
        {
          return 0;
        }
      }

      else if (a8 != 2 || a5 != 1)
      {
        return 0;
      }

      if (!(a7 | a6))
      {
        return 1;
      }
    }
  }

  else
  {
    if (a8 || a5 != a1)
    {
      return 0;
    }

    if (a3)
    {
      return a7 && (a2 == a6 && a3 == a7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
    }

    if (!a7)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_100107650()
{
  result = qword_1002626B0;
  if (!qword_1002626B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002626B0);
  }

  return result;
}

unint64_t sub_1001076A8()
{
  result = qword_1002626B8;
  if (!qword_1002626B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002626B8);
  }

  return result;
}

unint64_t sub_100107700()
{
  result = qword_1002626C0;
  if (!qword_1002626C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002626C0);
  }

  return result;
}

uint64_t sub_100107754(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 initializeBufferWithCopyOfBuffer for TitleImageLabelStyle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10010778C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001077E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100107848(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RewriteType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RewriteType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001079D8(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_1001079F4(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_100107A20(uint64_t result, uint64_t a2)
{
  if (result <= 18)
  {
    if (result > 10)
    {
      switch(result)
      {
        case 11:
          return 3;
        case 12:
          return 4;
        case 13:
          return 2;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          return result;
        case 2:
          return 0;
        case 3:
          return 1;
      }
    }
  }

  else if (result <= 22)
  {
    switch(result)
    {
      case 19:

        return 5;
      case 21:
        return 6;
      case 22:
        return 7;
    }
  }

  else if (result > 100)
  {
    if (result == 101)
    {
      return 2;
    }

    if (result == 201)
    {

      return a2;
    }
  }

  else
  {
    if (result == 23)
    {
      return 8;
    }

    if (result == 24)
    {
      return 9;
    }
  }

  return 0;
}

uint64_t sub_100107BEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);
  return result;
}

uint64_t sub_100107CC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_100107D78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100107E44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);
  return result;
}

uint64_t sub_100107F1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode;
  v5 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);
  v6 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 8);
  v7 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 16);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  v8 = *(v4 + 24);
  *(a2 + 24) = v8;
  return sub_10002879C(v5, v6, v7, v8);
}

uint64_t sub_100107FE4(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a1 + 24);
  sub_10002879C(*a1, v3, v4, v6);
  return sub_1000752D8(v2, v3, v4, v6);
}

uint64_t sub_100108048()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_100108188()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1001082C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for CompositionView(0);
  v4 = v3 - 8;
  v50 = *(v3 - 8);
  v59 = *(v50 + 64);
  __chkstk_darwin(v3);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ContainerBackgroundPlacement();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10000341C(&qword_1002627D0, &qword_1001D93F8);
  v10 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v12 = (&v47 - v11);
  v13 = sub_10000341C(&qword_1002627D8, &qword_1001D9400);
  v14 = *(v13 - 8);
  v51 = v13;
  v52 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v48 = &v47 - v16;
  v17 = sub_10000341C(&qword_1002627E0, &qword_1001D9408);
  v18 = *(v17 - 8);
  v53 = v17;
  v54 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v58 = &v47 - v20;
  *v12 = static Alignment.center.getter();
  v12[1] = v21;
  v22 = sub_10000341C(&qword_1002627E8, &unk_1001D9410);
  sub_1001089A4(v2, (v12 + *(v22 + 44)));
  v60 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  v23 = sub_100007120(&qword_1002627F0, &qword_1002627D0, &qword_1001D93F8);
  v24 = v47;
  View.containerBackground<A>(_:for:)();
  (*(v6 + 8))(v9, v49);

  sub_10000F500(v12, &qword_1002627D0, &qword_1001D93F8);
  v25 = *(v4 + 44);
  v56 = v2;
  v26 = (v2 + v25);
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v26) = v26[16];
  LOBYTE(v60) = v27;
  v61 = v28;
  LOBYTE(v62) = v26;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  v29 = v57;
  sub_100120918(v2, v57, type metadata accessor for CompositionView);
  v30 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v50 = *(v50 + 80);
  v31 = swift_allocObject();
  sub_100122020(v29, v31 + v30, type metadata accessor for CompositionView);
  v60 = v24;
  v61 = &type metadata for Color;
  v62 = v23;
  v63 = &protocol witness table for Color;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v51;
  v34 = v48;
  View.onChange<A>(of:initial:_:)();

  (*(v52 + 8))(v34, v33);
  v35 = v56;
  v36 = sub_100108048();
  swift_getKeyPath();
  v60 = v36;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v34) = *(v36 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  v64 = v34 == 1;
  v37 = v35;
  v38 = v57;
  sub_100120918(v37, v57, type metadata accessor for CompositionView);
  v39 = swift_allocObject();
  sub_100122020(v38, v39 + v30, type metadata accessor for CompositionView);
  v60 = v33;
  v61 = &type metadata for Bool;
  v62 = OpaqueTypeConformance2;
  v63 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v40 = v55;
  v41 = v53;
  v42 = v58;
  View.onChange<A>(of:initial:_:)();

  (*(v54 + 8))(v42, v41);
  sub_100120918(v56, v38, type metadata accessor for CompositionView);
  v43 = swift_allocObject();
  sub_100122020(v38, v43 + v30, type metadata accessor for CompositionView);
  v44 = (v40 + *(sub_10000341C(&qword_1002627F8, &unk_1001D9458) + 36));
  v45 = v44 + *(type metadata accessor for _TaskModifier() + 20);
  result = static TaskPriority.userInitiated.getter();
  *v44 = &unk_1001D9450;
  v44[1] = v43;
  return result;
}

uint64_t sub_1001089A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v42 = sub_10000341C(&qword_100262808, &qword_1001D9498);
  v36 = *(v42 - 8);
  v3 = *(v36 + 64);
  __chkstk_darwin(v42);
  v5 = &v33 - v4;
  v6 = sub_10000341C(&qword_100262810, &qword_1001D94A0);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v38 = &v33 - v8;
  v9 = sub_10000341C(&qword_100262818, &qword_1001D94A8);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v39 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v37 = &v33 - v14;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 6)
  {
    v35 = 0;
    v34 = 0;
  }

  else
  {
    v35 = static SafeAreaRegions.all.getter();
    v34 = static Edge.Set.all.getter();
  }

  v33 = v16 == 6;
  v17 = static UnitPoint.top.getter();
  __chkstk_darwin(v17);
  *(&v33 - 2) = a1;
  static Axis.Set.vertical.getter();
  sub_10000341C(&qword_100262820, &qword_1001D94B0);
  sub_100007120(&qword_100262828, &qword_100262820, &qword_1001D94B0);
  ScrollView.init(_:showsIndicators:content:)();
  v18 = sub_100007120(&qword_100262830, &qword_100262808, &qword_1001D9498);
  v19 = v38;
  v20 = v42;
  View.defaultScrollAnchor(_:)();
  (*(v36 + 8))(v5, v20);
  v21 = (a1 + *(type metadata accessor for CompositionView(0) + 36));
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v21) = v21[16];
  LOBYTE(v44) = v22;
  v45 = v23;
  v46 = v21;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  v44 = v20;
  v45 = v18;
  swift_getOpaqueTypeConformance2();
  v24 = v37;
  v25 = v41;
  View.scrollDisabled(_:)();
  (*(v40 + 8))(v19, v25);
  v26 = v10[2];
  v27 = v39;
  v26(v39, v24, v9);
  v28 = v43;
  *v43 = v35;
  v29 = v33;
  *(v28 + 8) = v34;
  *(v28 + 9) = v29;
  v30 = sub_10000341C(&qword_100262838, &qword_1001D94B8);
  v26(v28 + *(v30 + 48), v27, v9);
  v31 = v10[1];
  v31(v24, v9);
  return (v31)(v27, v9);
}

uint64_t sub_100108E84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v177 = a2;
  v175 = sub_10000341C(&qword_100262840, &qword_1001D94C0);
  v3 = *(*(v175 - 8) + 64);
  __chkstk_darwin(v175);
  v176 = &v149 - v4;
  v152 = sub_10000341C(&qword_100262848, &qword_1001D94C8);
  v5 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v7 = &v149 - v6;
  v159 = sub_10000341C(&qword_100262850, &qword_1001D94D0);
  v8 = *(*(v159 - 8) + 64);
  v9 = __chkstk_darwin(v159);
  v151 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v153 = &v149 - v11;
  v157 = sub_10000341C(&unk_100262858, &unk_1001D94D8);
  v12 = *(*(v157 - 8) + 64);
  __chkstk_darwin(v157);
  v158 = &v149 - v13;
  v14 = sub_10000341C(&unk_10025A9C0, &qword_1001CE1A0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v150 = &v149 - v16;
  v163 = type metadata accessor for CompositionConfirmView(0);
  v17 = *(*(v163 - 8) + 64);
  __chkstk_darwin(v163);
  v19 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_10000341C(&qword_100262868, &qword_1001D94E8);
  v20 = *(*(v160 - 8) + 64);
  __chkstk_darwin(v160);
  v162 = &v149 - v21;
  v22 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v149 - v24;
  v161 = type metadata accessor for CompositionResponseView();
  v26 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v28 = &v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_10000341C(&qword_100262870, &qword_1001D94F0);
  v29 = *(*(v171 - 8) + 64);
  v30 = __chkstk_darwin(v171);
  v154 = &v149 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v155 = &v149 - v32;
  v164 = sub_10000341C(&qword_100262878, &qword_1001D94F8);
  v33 = *(*(v164 - 8) + 64);
  __chkstk_darwin(v164);
  v35 = &v149 - v34;
  v36 = sub_10000341C(&unk_100262880, &qword_1001D9500);
  v37 = *(*(v36 - 8) + 64);
  v38 = __chkstk_darwin(v36 - 8);
  v174 = &v149 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v172 = &v149 - v40;
  v41 = sub_10013A33C();
  v173 = v44;
  v168 = v42;
  v169 = v41;
  v167 = v43;
  v156 = v35;
  if (v44)
  {
    v170 = v43 & 1;
    v45 = v41;
    v46 = v42;
    sub_100007D98(v41, v42, v43 & 1);

    v165 = v46;
    v166 = v45;
    v47 = a1[1];
    if (!v47)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v165 = 0;
    v166 = 0;
    v170 = 0;
    v47 = a1[1];
    if (!v47)
    {
      goto LABEL_13;
    }
  }

  if (v47 != 1)
  {
    if ((v47 & 0x2000000000000000) != 0)
    {
      v74 = HIBYTE(v47) & 0xF;
    }

    else
    {
      v74 = *a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v74)
    {
      goto LABEL_26;
    }

LABEL_13:
    v75 = sub_100108048();
    swift_getKeyPath();
    *&v178 = v75;
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v75 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24) == 255)
    {
    }

    else
    {
      if (*(v75 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode + 24))
      {

        goto LABEL_26;
      }

      v76 = *(v75 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__handoffOriginatorMode);

      if (v76 != 5)
      {
LABEL_26:
        v115 = sub_100108048();
        swift_getKeyPath();
        *&v178 = v115;
        sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v115 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) == 1)
        {
          swift_getKeyPath();
          *&v178 = v115;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v116 = *(v115 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing);

          if (v116)
          {
            v117 = type metadata accessor for CompositionView(0);
            v118 = a1 + *(v117 + 36);
            v119 = *v118;
            v120 = *(v118 + 1);
            LOBYTE(v118) = v118[16];
            LOBYTE(v178) = v119;
            *(&v178 + 1) = v120;
            LOBYTE(v179) = v118;
            sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
            FocusState.projectedValue.getter();
            v121 = v180;
            v122 = v181;
            v123 = v182;
            v124 = *(v117 + 28);
            v125 = v163;
            v126 = &v19[*(v163 + 40)];
            Binding.projectedValue.getter();
            type metadata accessor for CommonUIManager();
            sub_1001208D0(&qword_10025B1E0, type metadata accessor for CommonUIManager);
            v127 = Environment.init<A>(_:)();
            v129 = v128;
            type metadata accessor for CompositionModel(0);
            *v19 = Environment.init<A>(_:)();
            v19[8] = v130 & 1;
            type metadata accessor for PresentationModel();
            sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel);
            *(v19 + 2) = Environment.init<A>(_:)();
            v19[24] = v131 & 1;
            *(v19 + 4) = v127;
            v19[40] = v129 & 1;
            LOBYTE(v180) = 0;
            State.init(wrappedValue:)();
            v132 = *(&v178 + 1);
            v19[48] = v178;
            *(v19 + 7) = v132;
            *(v19 + 8) = v121;
            *(v19 + 9) = v122;
            v19[80] = v123;
            v133 = type metadata accessor for FBKSEvaluation.Subject();
            (*(*(v133 - 8) + 56))(v150, 1, 1, v133);
            v134 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
            v180 = FBKEvaluationController.init(subject:)();
            State.init(wrappedValue:)();
            v135 = *(&v178 + 1);
            *(v19 + 11) = v178;
            *(v19 + 12) = v135;
            v136 = &v19[*(v125 + 44)];
            v180 = 0;
            v181 = 0xE000000000000000;
            State.init(wrappedValue:)();
            v137 = v179;
            *v136 = v178;
            *(v136 + 2) = v137;
            sub_100120918(v19, v162, type metadata accessor for CompositionConfirmView);
            swift_storeEnumTagMultiPayload();
            sub_1001208D0(&qword_100262890, type metadata accessor for CompositionResponseView);
            sub_1001208D0(&qword_100262898, type metadata accessor for CompositionConfirmView);
            v138 = v155;
            _ConditionalContent<>.init(storage:)();
            v139 = type metadata accessor for CompositionConfirmView;
            v140 = v19;
LABEL_31:
            sub_100120C94(v140, v139);
            v114 = v176;
            v82 = v177;
            v80 = v174;
            v81 = v172;
            v83 = v170;
            sub_1000081F8(v138, v158, &qword_100262870, &qword_1001D94F0);
            swift_storeEnumTagMultiPayload();
            sub_100120A0C();
            sub_100120AF8();
            v113 = v156;
            _ConditionalContent<>.init(storage:)();
            sub_10000F500(v138, &qword_100262870, &qword_1001D94F0);
LABEL_32:
            sub_1000081F8(v113, v114, &qword_100262878, &qword_1001D94F8);
            swift_storeEnumTagMultiPayload();
            sub_100120980();
            sub_100120A0C();
            _ConditionalContent<>.init(storage:)();
            sub_10000F500(v113, &qword_100262878, &qword_1001D94F8);
            goto LABEL_33;
          }
        }

        else
        {
        }

        v141 = a1 + *(type metadata accessor for CompositionView(0) + 28);
        Binding.projectedValue.getter();
        type metadata accessor for CommonUIManager();
        sub_1001208D0(&qword_10025B1E0, type metadata accessor for CommonUIManager);
        v142 = Environment.init<A>(_:)();
        sub_100069FCC(v142, v143 & 1, v25, v28);
        sub_100120918(v28, v162, type metadata accessor for CompositionResponseView);
        swift_storeEnumTagMultiPayload();
        sub_1001208D0(&qword_100262890, type metadata accessor for CompositionResponseView);
        sub_1001208D0(&qword_100262898, type metadata accessor for CompositionConfirmView);
        v138 = v155;
        _ConditionalContent<>.init(storage:)();
        v139 = type metadata accessor for CompositionResponseView;
        v140 = v28;
        goto LABEL_31;
      }
    }

    v84 = type metadata accessor for CompositionView(0);
    v85 = a1 + *(v84 + 36);
    v86 = *v85;
    v87 = *(v85 + 1);
    LOBYTE(v85) = v85[16];
    LOBYTE(v178) = v86;
    *(&v178 + 1) = v87;
    LOBYTE(v179) = v85;
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.projectedValue.getter();
    v88 = v180;
    v163 = v181;
    LODWORD(v162) = v182;
    v89 = *(v84 + 28);
    v90 = type metadata accessor for CompositionIndexView(0);
    v91 = &v7[v90[11]];
    Binding.projectedValue.getter();
    type metadata accessor for WritingToolsModel();
    sub_1001208D0(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    v92 = Environment.init<A>(_:)();
    v94 = v93;
    type metadata accessor for CompositionModel(0);
    v95 = Environment.init<A>(_:)();
    v97 = v96;
    type metadata accessor for PresentationModel();
    sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel);
    v98 = Environment.init<A>(_:)();
    v100 = v99;
    KeyPath = swift_getKeyPath();
    *v7 = v92;
    v7[8] = v94 & 1;
    *(v7 + 2) = v95;
    v7[24] = v97 & 1;
    *(v7 + 4) = v98;
    v7[40] = v100 & 1;
    *(v7 + 6) = KeyPath;
    *(v7 + 7) = 0;
    v7[64] = 0;
    v102 = v90[8];
    *&v7[v102] = swift_getKeyPath();
    sub_10000341C(&qword_1002628E0, &qword_1001D95E8);
    swift_storeEnumTagMultiPayload();
    v103 = &v7[v90[9]];
    v180 = 0;
    v181 = 0xE000000000000000;
    State.init(wrappedValue:)();
    v104 = v179;
    *v103 = v178;
    *(v103 + 2) = v104;
    v105 = &v7[v90[10]];
    v106 = v163;
    *v105 = v88;
    *(v105 + 1) = v106;
    v105[16] = v162;
    LOBYTE(v90) = sub_1001395F8();
    v107 = swift_getKeyPath();
    v108 = swift_allocObject();
    *(v108 + 16) = v90 & 1;
    v109 = &v7[*(v152 + 36)];
    *v109 = v107;
    v109[1] = sub_100120D84;
    v109[2] = v108;
    if (sub_1001395F8())
    {
      v110 = 0.3;
    }

    else
    {
      v110 = 1.0;
    }

    v111 = v151;
    sub_10002A894(v7, v151, &qword_100262848, &qword_1001D94C8);
    *(v111 + *(v159 + 36)) = v110;
    v112 = v153;
    sub_10002A894(v111, v153, &qword_100262850, &qword_1001D94D0);
    sub_1000081F8(v112, v158, &qword_100262850, &qword_1001D94D0);
    swift_storeEnumTagMultiPayload();
    sub_100120A0C();
    sub_100120AF8();
    v113 = v156;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v112, &qword_100262850, &qword_1001D94D0);
    v114 = v176;
    v82 = v177;
    v80 = v174;
    v81 = v172;
    v83 = v170;
    goto LABEL_32;
  }

  v48 = sub_100108048();
  swift_getKeyPath();
  *&v178 = v48;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v48 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isForEditableContent) != 1)
  {

    goto LABEL_18;
  }

  swift_getKeyPath();
  *&v178 = v48;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = *(v48 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing);

  if ((v49 & 1) == 0)
  {
LABEL_18:
    v77 = a1 + *(type metadata accessor for CompositionView(0) + 28);
    Binding.projectedValue.getter();
    type metadata accessor for CommonUIManager();
    sub_1001208D0(&qword_10025B1E0, type metadata accessor for CommonUIManager);
    v78 = Environment.init<A>(_:)();
    sub_100069FCC(v78, v79 & 1, v25, v28);
    sub_100120918(v28, v162, type metadata accessor for CompositionResponseView);
    swift_storeEnumTagMultiPayload();
    sub_1001208D0(&qword_100262890, type metadata accessor for CompositionResponseView);
    sub_1001208D0(&qword_100262898, type metadata accessor for CompositionConfirmView);
    v71 = v154;
    _ConditionalContent<>.init(storage:)();
    v72 = type metadata accessor for CompositionResponseView;
    v73 = v28;
    goto LABEL_19;
  }

  v50 = type metadata accessor for CompositionView(0);
  v51 = a1 + *(v50 + 36);
  v52 = *v51;
  v53 = *(v51 + 1);
  LOBYTE(v51) = v51[16];
  LOBYTE(v178) = v52;
  *(&v178 + 1) = v53;
  LOBYTE(v179) = v51;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  v54 = v180;
  v55 = v181;
  v56 = v182;
  v57 = *(v50 + 28);
  v58 = v163;
  v59 = &v19[*(v163 + 40)];
  Binding.projectedValue.getter();
  type metadata accessor for CommonUIManager();
  sub_1001208D0(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  v60 = Environment.init<A>(_:)();
  v62 = v61;
  type metadata accessor for CompositionModel(0);
  *v19 = Environment.init<A>(_:)();
  v19[8] = v63 & 1;
  type metadata accessor for PresentationModel();
  sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel);
  *(v19 + 2) = Environment.init<A>(_:)();
  v19[24] = v64 & 1;
  *(v19 + 4) = v60;
  v19[40] = v62 & 1;
  LOBYTE(v180) = 0;
  State.init(wrappedValue:)();
  v65 = *(&v178 + 1);
  v19[48] = v178;
  *(v19 + 7) = v65;
  *(v19 + 8) = v54;
  *(v19 + 9) = v55;
  v19[80] = v56;
  v66 = type metadata accessor for FBKSEvaluation.Subject();
  (*(*(v66 - 8) + 56))(v150, 1, 1, v66);
  v67 = objc_allocWithZone(type metadata accessor for FBKEvaluationController());
  v180 = FBKEvaluationController.init(subject:)();
  State.init(wrappedValue:)();
  v68 = *(&v178 + 1);
  *(v19 + 11) = v178;
  *(v19 + 12) = v68;
  v69 = &v19[*(v58 + 44)];
  v180 = 0;
  v181 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v70 = v179;
  *v69 = v178;
  *(v69 + 2) = v70;
  sub_100120918(v19, v162, type metadata accessor for CompositionConfirmView);
  swift_storeEnumTagMultiPayload();
  sub_1001208D0(&qword_100262890, type metadata accessor for CompositionResponseView);
  sub_1001208D0(&qword_100262898, type metadata accessor for CompositionConfirmView);
  v71 = v154;
  _ConditionalContent<>.init(storage:)();
  v72 = type metadata accessor for CompositionConfirmView;
  v73 = v19;
LABEL_19:
  sub_100120C94(v73, v72);
  v80 = v174;
  v81 = v172;
  sub_1000081F8(v71, v176, &qword_100262870, &qword_1001D94F0);
  swift_storeEnumTagMultiPayload();
  sub_100120980();
  sub_100120A0C();
  _ConditionalContent<>.init(storage:)();
  sub_10000F500(v71, &qword_100262870, &qword_1001D94F0);
  v82 = v177;
  v83 = v170;
LABEL_33:
  v145 = v165;
  v144 = v166;
  sub_1000081F8(v81, v80, &unk_100262880, &qword_1001D9500);
  *v82 = v144;
  v82[1] = v145;
  v146 = v173;
  v82[2] = v83;
  v82[3] = v146;
  v147 = sub_10000341C(&qword_1002628D8, &qword_1001D9538);
  sub_1000081F8(v80, v82 + *(v147 + 48), &unk_100262880, &qword_1001D9500);
  sub_10002A8FC(v144, v145, v83, v146);
  sub_10002A940(v169, v168, v167, v146);
  sub_10000F500(v81, &unk_100262880, &qword_1001D9500);
  sub_10000F500(v80, &unk_100262880, &qword_1001D9500);
  return sub_10002A940(v144, v145, v83, v146);
}

uint64_t sub_10010A550(uint64_t a1)
{
  sub_100108048();
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v3 = (a1 + *(type metadata accessor for CompositionView(0) + 36));
    v10 = *v3;
    v13 = *(v3 + 1);
    v16 = v3[16];
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.getter();
    [Strong enableIntelligentEntryFieldView:v9];
    swift_unknownObjectRelease();
  }

  sub_100108048();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = swift_unknownObjectWeakLoadStrong();

  if (v4)
  {
    [v4 resetPresentationSelectedDetent];
    swift_unknownObjectRelease();
  }

  v5 = type metadata accessor for CompositionView(0);
  v6 = (a1 + *(v5 + 36));
  v11 = *v6;
  v14 = *(v6 + 1);
  v17 = v6[16];
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  v7 = (a1 + *(v5 + 32));
  v12 = *v7;
  v15 = v7[1];
  v18 = *(v7 + 16);
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10010A794()
{
  sub_100108188();
  v0 = sub_100108048();
  swift_getKeyPath();
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  sub_1001537FC(v1 == 1);
}

uint64_t sub_10010A86C(uint64_t a1)
{
  *(v1 + 24) = a1;
  type metadata accessor for MainActor();
  *(v1 + 32) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010A904, v3, v2);
}

uint64_t sub_10010A904()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = sub_100108048();
  swift_getKeyPath();
  v0[2] = v3;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"supressAssistantBarInUIService"])
    {
      [Strong supressAssistantBarInUIService];
    }

    swift_unknownObjectRelease();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10010AA34()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_10010AB74()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_10010ACB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for EnvironmentValues();
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  __chkstk_darwin(v6);
  v83 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for UUID();
  v80 = *(v81 - 8);
  v9 = *(v80 + 64);
  __chkstk_darwin(v81);
  v79 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&unk_100262580, &qword_1001CFF70);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v78 = (&v77 - v13);
  v14 = type metadata accessor for CompositionIndexView(0);
  v86 = *(v14 - 8);
  v15 = *(v86 + 64);
  __chkstk_darwin(v14);
  v87 = v16;
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v77 - v20;
  v22 = sub_10010AB74();
  swift_getKeyPath();
  *&v95 = v22;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v22 + v23, &v95, &unk_10025B1C0, &unk_1001CFA90);

  v88 = a1;
  if (v97)
  {
    sub_100028458(&v95, &v90);
    sub_10000F500(&v95, &unk_10025B1C0, &unk_1001CFA90);
    v24 = sub_100027874(&v90, v93);
    v25 = sub_10010AB74();
    swift_getKeyPath();
    v82 = v14;
    v26 = v3;
    v27 = v17;
    v28 = v21;
    v29 = a2;
    v30 = a1;
    v89 = v25;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v31 = *(v25 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy);

    v32 = *v24;
    v33 = v30;
    a2 = v29;
    v21 = v28;
    v17 = v27;
    v3 = v26;
    v14 = v82;
    sub_10000C1CC(0, 1, 0, 1, v33, a2, 0, 0, v31);
    sub_10000F4B4(&v90);
  }

  else
  {
    sub_10000F500(&v95, &unk_10025B1C0, &unk_1001CFA90);
  }

  v34 = [objc_opt_self() currentDevice];
  v35 = [v34 userInterfaceIdiom];

  if (v35 != 1)
  {
    goto LABEL_12;
  }

  v36 = sub_10010EC14();
  swift_getKeyPath();
  *&v95 = v36;
  sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = *(v36 + 32);
  v38 = *(v36 + 40);

  if (v38)
  {
    goto LABEL_12;
  }

  if (v37 == 2)
  {
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v21, 1, 1, v39);
    sub_100120918(v3, v17, type metadata accessor for CompositionIndexView);
    type metadata accessor for MainActor();

    v40 = static MainActor.shared.getter();
    v41 = v21;
    v42 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v43 = (v87 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v44 + 16) = v40;
    *(v44 + 24) = &protocol witness table for MainActor;
    sub_100122020(v17, v44 + v42, type metadata accessor for CompositionIndexView);
    v45 = (v44 + v43);
    *v45 = v88;
    v45[1] = a2;
    sub_10015C9C8(0, 0, v41, &unk_1001D9FE8, v44);

    v97 = &type metadata for WritingTools;
    v98 = sub_10002AC88();
    LOBYTE(v95) = 10;
    LOBYTE(v40) = isFeatureEnabled(_:)();
    result = sub_10000F4B4(&v95);
    if (v40)
    {
      v47 = sub_10010AB74();
      swift_getKeyPath();
      *&v95 = v47;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        if ([Strong respondsToSelector:"didStartMontaraRefinementForSessionWithUUID:"])
        {
          v49 = sub_10010AB74();
          swift_getKeyPath();
          *&v95 = v49;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v50 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
          swift_beginAccess();
          v51 = v49 + v50;
          v52 = v78;
          sub_1000081F8(v51, v78, &unk_100262580, &qword_1001CFF70);

          v53 = type metadata accessor for CompositionModel.Session(0);
          if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
          {
            result = swift_unknownObjectRelease();
            __break(1u);
          }

          else
          {
            v54 = *v52;
            sub_100120C94(v52, type metadata accessor for CompositionModel.Session);
            v55 = [v54 uuid];

            v56 = v79;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            isa = UUID._bridgeToObjectiveC()().super.isa;
            [Strong didStartMontaraRefinementForSessionWithUUID:isa];
            swift_unknownObjectRelease();

            return (*(v80 + 8))(v56, v81);
          }
        }

        else
        {
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
LABEL_12:
    v58 = type metadata accessor for TaskPriority();
    (*(*(v58 - 8) + 56))(v21, 1, 1, v58);
    sub_100120918(v3, v17, type metadata accessor for CompositionIndexView);
    type metadata accessor for MainActor();

    v59 = static MainActor.shared.getter();
    v60 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v61 = (v87 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    *(v62 + 16) = v59;
    *(v62 + 24) = &protocol witness table for MainActor;
    sub_100122020(v17, v62 + v60, type metadata accessor for CompositionIndexView);
    v63 = (v62 + v61);
    *v63 = v88;
    v63[1] = a2;
    sub_10015C9C8(0, 0, v21, &unk_1001D9FD8, v62);

    v64 = v3 + *(v14 + 36);
    v65 = *v64;
    v66 = *(v64 + 16);
    v95 = v65;
    v96 = v66;
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_10000341C(&qword_100260098, &unk_1001D56B0);
    State.wrappedValue.setter();
    v67 = v3 + *(v14 + 40);
    v68 = *v67;
    v69 = *(v67 + 8);
    v70 = *(v67 + 16);
    *&v95 = *v67;
    *(&v95 + 1) = v69;
    LOBYTE(v96) = v70;
    sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
    FocusState.Binding.wrappedValue.getter();
    if (v90 == 1)
    {
      *&v95 = v68;
      *(&v95 + 1) = v69;
      LOBYTE(v96) = v70;

      FocusState.Binding.wrappedValue.getter();
      v90 = v68;
      v91 = v69;
      v92 = v70;
      v94 = (v89 & 1) == 0;
      FocusState.Binding.wrappedValue.setter();
    }

    v72 = *(v3 + 48);
    v71 = *(v3 + 56);
    if (*(v3 + 64) == 1)
    {
      v73 = *(v3 + 56);
    }

    else
    {
      v74 = *(v3 + 48);

      static os_log_type_t.fault.getter();
      v75 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v76 = v83;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100122EC8();
      (*(v84 + 8))(v76, v85);
      v72 = v95;
    }

    v95 = xmmword_1001D31C0;
    v96 = 0;
    LOBYTE(v97) = 1;
    v72(&v95);
  }

  return result;
}

uint64_t sub_10010B808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for MainActor();
  v6[6] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v8;
  v6[8] = v7;

  return _swift_task_switch(sub_10010B8A8, v8, v7);
}

uint64_t sub_10010B8A8()
{
  v1 = v0[5];
  v2 = v0[2];
  v0[9] = sub_10010AB74();
  v0[10] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[11] = v4;
  v0[12] = v3;

  return _swift_task_switch(sub_10010B940, v4, v3);
}

uint64_t sub_10010B940()
{
  sub_10006CF60("Composition");
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_10010B9EC;
  v2 = v0[9];
  v4 = v0[3];
  v3 = v0[4];

  return sub_10007DE34(v4, v3);
}

uint64_t sub_10010B9EC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return _swift_task_switch(sub_10010BB0C, v4, v3);
}

uint64_t sub_10010BB0C()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[7];
  v4 = v0[8];

  return _swift_task_switch(sub_100012090, v3, v4);
}

uint64_t sub_10010BB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v7 = type metadata accessor for UUID();
  v6[15] = v7;
  v8 = *(v7 - 8);
  v6[16] = v8;
  v9 = *(v8 + 64) + 15;
  v6[17] = swift_task_alloc();
  v10 = *(*(sub_10000341C(&unk_100262580, &qword_1001CFF70) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = type metadata accessor for MainActor();
  v6[20] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[21] = v12;
  v6[22] = v11;

  return _swift_task_switch(sub_10010BCAC, v12, v11);
}

uint64_t sub_10010BCAC()
{
  v1 = v0[19];
  v2 = v0[12];
  v0[23] = sub_10010AB74();
  v0[24] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[25] = v4;
  v0[26] = v3;

  return _swift_task_switch(sub_10010BD44, v4, v3);
}

uint64_t sub_10010BD44()
{
  sub_10006CF60("Composition");
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_10010BDF0;
  v2 = v0[23];
  v4 = v0[13];
  v3 = v0[14];

  return sub_10007DE34(v4, v3);
}

uint64_t sub_10010BDF0()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v6 = *v0;

  v3 = *(v1 + 208);
  v4 = *(v1 + 200);

  return _swift_task_switch(sub_10010BF10, v4, v3);
}

uint64_t sub_10010BF10()
{
  v2 = v0[23];
  v1 = v0[24];

  v3 = v0[21];
  v4 = v0[22];

  return _swift_task_switch(sub_10010BF7C, v3, v4);
}

uint64_t sub_10010BF7C()
{
  v0[5] = &type metadata for WritingTools;
  v1 = sub_10002AC88();
  *(v0 + 16) = 10;
  v0[6] = v1;
  v2 = isFeatureEnabled(_:)();
  sub_10000F4B4(v0 + 2);
  if ((v2 & 1) == 0)
  {
    goto LABEL_6;
  }

  v3 = v0[12];
  v4 = sub_10010AB74();
  swift_getKeyPath();
  v0[10] = v4;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong)
  {
LABEL_6:
    v19 = v0[20];
LABEL_7:

    goto LABEL_8;
  }

  if (([Strong respondsToSelector:"didStartMontaraRefinementForSessionWithUUID:"] & 1) == 0)
  {
    v24 = v0[20];
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v6 = v0[18];
  v7 = v0[12];
  v8 = sub_10010AB74();
  swift_getKeyPath();
  v0[11] = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__session;
  swift_beginAccess();
  sub_1000081F8(v8 + v9, v6, &unk_100262580, &qword_1001CFF70);

  v10 = type metadata accessor for CompositionModel.Session(0);
  if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
  {
    result = swift_unknownObjectRelease();
    __break(1u);
    return result;
  }

  v11 = v0[20];
  v12 = v0[17];
  v13 = v0[18];
  v14 = v0[15];
  v15 = v0[16];

  v16 = *v13;
  sub_100120C94(v13, type metadata accessor for CompositionModel.Session);
  v17 = [v16 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [Strong didStartMontaraRefinementForSessionWithUUID:isa];

  swift_unknownObjectRelease();
  (*(v15 + 8))(v12, v14);
LABEL_8:
  v21 = v0[17];
  v20 = v0[18];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10010C290@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v121 = a1;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v119 = *(v3 - 8);
  v120 = v3;
  v4 = *(v119 + 64);
  __chkstk_darwin(v3);
  v118 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for PreferredContentSizeModifier(0);
  v6 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v102 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for ScenePhase();
  v104 = *(v103 - 8);
  v8 = *(v104 + 64);
  __chkstk_darwin(v103);
  v100 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for CompositionIndexView(0);
  v10 = *(v124 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v124);
  v12 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000341C(&qword_100262D10, &qword_1001D9E10);
  v96[1] = v13;
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v96 - v15;
  v17 = sub_10000341C(&qword_100262D18, &qword_1001D9E18);
  v18 = *(v17 - 8);
  v101 = v17 - 8;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v99 = v96 - v20;
  v105 = sub_10000341C(&qword_100262D20, &qword_1001D9E20);
  v21 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v125 = v96 - v22;
  v110 = sub_10000341C(&qword_100262D28, &qword_1001D9E28);
  v23 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v106 = v96 - v24;
  v115 = sub_10000341C(&qword_100262D30, &qword_1001D9E30);
  v111 = *(v115 - 8);
  v25 = *(v111 + 64);
  __chkstk_darwin(v115);
  v107 = v96 - v26;
  v27 = sub_10000341C(&qword_100262D38, &qword_1001D9E38);
  v116 = *(v27 - 8);
  v117 = v27;
  v28 = *(v116 + 64);
  __chkstk_darwin(v27);
  v114 = v96 - v29;
  v113 = sub_10000341C(&qword_100262D40, &qword_1001D9E40);
  v112 = *(v113 - 8);
  v30 = *(v112 + 64);
  __chkstk_darwin(v113);
  v109 = v96 - v31;
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0x4024000000000000;
  v16[16] = 0;
  v32 = sub_10000341C(&qword_100262D48, &qword_1001D9E48);
  sub_10010D0C4(v1, &v16[*(v32 + 44)]);
  v123 = type metadata accessor for CompositionIndexView;
  sub_100120918(v1, v12, type metadata accessor for CompositionIndexView);
  v33 = *(v10 + 80);
  v34 = (v33 + 16) & ~v33;
  v98 = v11;
  v96[2] = v33;
  v35 = swift_allocObject();
  v97 = type metadata accessor for CompositionIndexView;
  sub_100122020(v12, v35 + v34, type metadata accessor for CompositionIndexView);
  v36 = &v16[*(v13 + 36)];
  v37 = &v36[*(type metadata accessor for _TaskModifier() + 20)];
  static TaskPriority.userInitiated.getter();
  *v36 = &unk_1001D9E58;
  *(v36 + 1) = v35;
  v38 = *(v124 + 32);
  v122 = v2;
  v39 = v100;
  sub_10011F074(&qword_1002628E0, &qword_1001D95E8, &type metadata accessor for ScenePhase, v100);
  sub_100120918(v2, v12, v123);
  v40 = swift_allocObject();
  sub_100122020(v12, v40 + v34, type metadata accessor for CompositionIndexView);
  sub_1001231A8();
  sub_1001208D0(&qword_100262D68, &type metadata accessor for ScenePhase);
  v41 = v99;
  v42 = v103;
  View.onChange<A>(of:initial:_:)();

  (*(v104 + 8))(v39, v42);
  v43 = v16;
  v44 = v122;
  sub_10000F500(v43, &qword_100262D10, &qword_1001D9E10);
  v45 = [objc_opt_self() defaultCenter];
  v46 = v101;
  v47 = &v41[*(v101 + 60)];
  NSNotificationCenter.publisher(for:object:)();

  v48 = v41;
  sub_100120918(v44, v12, v123);
  v49 = swift_allocObject();
  v50 = v12;
  v51 = v124;
  sub_100122020(v50, v49 + v34, v97);
  v52 = &v41[*(v46 + 64)];
  *v52 = sub_100123290;
  v52[1] = v49;
  v53 = v44 + *(v51 + 40);
  v54 = *v53;
  v55 = *(v53 + 8);
  v56 = *(v53 + 16);
  *&v128 = *v53;
  *(&v128 + 1) = v55;
  LOBYTE(v129) = v56;
  v57 = sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  v58 = 0;
  if (v130 == 1)
  {
    sub_10010EC14();
    v58 = sub_10016FEDC();
  }

  v59 = v125;
  sub_10002A894(v48, v125, &qword_100262D18, &qword_1001D9E18);
  *(v59 + *(v105 + 36)) = v58;
  v60 = sub_10010AB74();
  swift_getKeyPath();
  *&v128 = v60;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();

  v123 = v54;
  *&v128 = v54;
  *(&v128 + 1) = v55;
  v105 = v55;
  LODWORD(v104) = v56;
  LOBYTE(v129) = v56;
  v103 = v57;
  FocusState.Binding.wrappedValue.getter();
  v61 = 1;
  if (v130 == 1)
  {
    sub_10010EC14();
    v62 = sub_10016FEDC();

    v61 = !v62;
  }

  v63 = *(v51 + 44);
  v64 = v108;
  v65 = *(v108 + 28);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v66 = v102;
  Binding.projectedValue.getter();
  LOBYTE(v128) = 0;
  static Binding.constant(_:)();
  v67 = v130;
  v68 = v131;
  v69 = v132;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v66 + 8) = v61 & 1;
  *(v66 + 9) = 1;
  v70 = v66 + v64[8];
  *v70 = v67;
  *(v70 + 8) = v68;
  *(v70 + 16) = v69;
  v71 = (v66 + v64[9]);
  *v71 = 0xD000000000000014;
  v71[1] = 0x80000001001D96B0;
  v72 = v66 + v64[10];
  type metadata accessor for CGSize(0);
  v126 = 0;
  v127 = 0;
  State.init(wrappedValue:)();
  v73 = v129;
  *v72 = v128;
  *(v72 + 16) = v73;
  v74 = v66 + v64[11];
  LOBYTE(v126) = 0;
  State.init(wrappedValue:)();
  v75 = *(&v128 + 1);
  *v74 = v128;
  *(v74 + 8) = v75;
  v76 = v66 + v64[12];
  v126 = 0;
  LOBYTE(v127) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v77 = BYTE8(v128);
  v78 = v129;
  *v76 = v128;
  *(v76 + 8) = v77;
  *(v76 + 16) = v78;
  v79 = v66 + v64[13];
  LOBYTE(v126) = 0;
  State.init(wrappedValue:)();
  v80 = *(&v128 + 1);
  *v79 = v128;
  *(v79 + 8) = v80;
  v81 = v66 + v64[14];
  type metadata accessor for PresentationModel();
  sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel);
  *v81 = Environment.init<A>(_:)();
  *(v81 + 8) = v82 & 1;
  v83 = v106;
  sub_10002A894(v125, v106, &qword_100262D20, &qword_1001D9E20);
  v84 = v110;
  sub_100122020(v66, v83 + *(v110 + 36), type metadata accessor for PreferredContentSizeModifier);
  v86 = v118;
  v85 = v119;
  v87 = v120;
  (*(v119 + 104))(v118, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v120);
  v88 = sub_100123308(&qword_100262D70, &qword_100262D28, &qword_1001D9E28, sub_1001233BC);
  v89 = v107;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v85 + 8))(v86, v87);
  sub_10000F500(v83, &qword_100262D28, &qword_1001D9E28);
  *&v128 = v123;
  *(&v128 + 1) = v105;
  LOBYTE(v129) = v104;
  FocusState.Binding.wrappedValue.getter();
  if (v130 == 1)
  {
    sub_10010EC14();
    sub_10016FEDC();
  }

  *&v128 = v84;
  *(&v128 + 1) = v88;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = v114;
  v91 = v115;
  View.navigationBarHidden(_:)();
  (*(v111 + 8))(v89, v91);
  LocalizedStringKey.init(stringLiteral:)();
  *&v128 = v91;
  *(&v128 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v93 = v109;
  v94 = v117;
  View.navigationTitle(_:)();

  (*(v116 + 8))(v92, v94);
  return (*(v112 + 32))(v121, v93, v113);
}

uint64_t sub_10010D0C4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v111 = a2;
  v3 = sub_10000341C(&qword_100262D88, &qword_1001D9E68);
  v109 = *(v3 - 8);
  v110 = v3;
  v4 = *(v109 + 64);
  __chkstk_darwin(v3);
  v101 = &v93 - v5;
  v97 = sub_10000341C(&qword_100262D90, &qword_1001D9E70);
  v6 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v93 = (&v93 - v7);
  v95 = sub_10000341C(&qword_100262D98, &qword_1001D9E78);
  v8 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v96 = (&v93 - v9);
  v10 = sub_10000341C(&qword_100262DA0, &qword_1001D9E80);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v100 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v99 = &v93 - v14;
  v94 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
  v15 = *(*(v94 - 8) + 64);
  v16 = __chkstk_darwin(v94);
  v98 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v112 = &v93 - v18;
  v19 = sub_10000341C(&qword_100262DA8, &qword_1001D9E88);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v108 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v127 = &v93 - v23;
  v24 = type metadata accessor for CompositionIndexView(0);
  v25 = v24 - 8;
  v26 = *(v24 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  v28 = a1 + *(v25 + 44);
  v29 = *v28;
  v30 = *(v28 + 16);
  v128 = v29;
  *&v129 = v30;
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.projectedValue.getter();
  v125 = v140;
  v126 = v139;
  v123 = v142;
  v124 = v141;
  v31 = a1 + *(v25 + 48);
  v33 = *(v31 + 8);
  v34 = *(v31 + 16);
  v139 = *v31;
  v32 = v139;
  v140 = v33;
  LOBYTE(v141) = v34;
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.projectedValue.getter();
  v121 = *(&v128 + 1);
  v122 = v128;
  v120 = v129;
  v102 = v32;
  v139 = v32;
  v140 = v33;
  LOBYTE(v141) = v34;
  FocusState.Binding.wrappedValue.getter();
  if (v128 == 1)
  {
    sub_10010EC14();
    LODWORD(v103) = sub_10016FEDC();
  }

  else
  {
    LODWORD(v103) = 0;
  }

  sub_100120918(a1, &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CompositionIndexView);
  v35 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v119 = swift_allocObject();
  sub_100122020(&v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v119 + v35, type metadata accessor for CompositionIndexView);
  type metadata accessor for WritingToolsModel();
  sub_1001208D0(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  v118 = Environment.init<A>(_:)();
  LOBYTE(v35) = v36;
  type metadata accessor for CompositionModel(0);
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  v115 = Environment.init<A>(_:)();
  v38 = v37;
  LOBYTE(v128) = 0;
  State.init(wrappedValue:)();
  v106 = v139;
  v107 = v140;
  LOBYTE(v128) = 0;
  State.init(wrappedValue:)();
  v104 = v139;
  v105 = v140;
  LOBYTE(v128) = 0;
  State.init(wrappedValue:)();
  v116 = v139;
  v117 = v140;
  *&v128 = _swiftEmptyArrayStorage;
  sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
  State.init(wrappedValue:)();
  v113 = v140;
  v114 = v139;
  v177 = v35 & 1;
  v175 = v38 & 1;
  v139 = v102;
  v140 = v33;
  LOBYTE(v141) = v34;
  FocusState.Binding.wrappedValue.getter();
  if (v128 == 1 && (sub_10010EC14(), v39 = sub_10016FEDC(), , v39))
  {
    v40 = 1;
    v41 = v127;
  }

  else
  {
    v42 = v112;
    Divider.init()();
    v43 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v44 = v42 + *(v94 + 36);
    *v44 = v43;
    *(v44 + 8) = v45;
    *(v44 + 16) = v46;
    *(v44 + 24) = v47;
    *(v44 + 32) = v48;
    *(v44 + 40) = 0;
    v49 = sub_10010AB74();
    swift_getKeyPath();
    v139 = v49;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v50 = *(v49 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);

    if (v50)
    {
      v51 = sub_10010AB74();
      swift_getKeyPath();
      v139 = v51;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v52 = *(v51 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

      swift_getKeyPath();
      v139 = v52;
      sub_1001208D0(&qword_100261B90, type metadata accessor for CompositionRateLimitModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v53 = *(v52 + 16);

      if (v53 == 1)
      {
        *&v128 = Environment.init<A>(_:)();
        BYTE8(v128) = v54 & 1;
        BYTE9(v128) = 1;

        sub_10000341C(&qword_100262DB0, &qword_1001D9E90);
        sub_1001234B4();
        sub_10012358C();
        _ConditionalContent<>.init(storage:)();
        v55 = v140;
        v56 = BYTE1(v140);
        v57 = v96;
        *v96 = v139;
        *(v57 + 8) = v55;
        *(v57 + 9) = v56;
        swift_storeEnumTagMultiPayload();
        sub_10000341C(&qword_100262DD0, &qword_1001D9E98);
        sub_1001235EC();
        sub_100007120(&qword_100262DE0, &qword_100262D90, &qword_1001D9E70);
        v58 = v99;
        _ConditionalContent<>.init(storage:)();
      }

      else
      {
        v61 = static HorizontalAlignment.center.getter();
        v62 = v93;
        *v93 = v61;
        *(v62 + 8) = 0;
        *(v62 + 16) = 1;
        v63 = sub_10000341C(&qword_100262DF8, &qword_1001D9EB0);
        sub_10010E2F4(v62 + *(v63 + 44));
        sub_1000081F8(v62, v96, &qword_100262D90, &qword_1001D9E70);
        swift_storeEnumTagMultiPayload();
        sub_10000341C(&qword_100262DD0, &qword_1001D9E98);
        sub_1001235EC();
        sub_100007120(&qword_100262DE0, &qword_100262D90, &qword_1001D9E70);
        v58 = v99;
        _ConditionalContent<>.init(storage:)();
        sub_10000F500(v62, &qword_100262D90, &qword_1001D9E70);
      }
    }

    else
    {
      if (sub_1001395F8())
      {
        v59 = 0;
        v60 = -1;
      }

      else
      {
        v59 = Environment.init<A>(_:)();
        v60 = v64 & 1;
      }

      *&v128 = v59;
      WORD4(v128) = v60;
      sub_1001234A0(v59, v60);
      sub_10000341C(&qword_100262DB0, &qword_1001D9E90);
      sub_1001234B4();
      sub_10012358C();
      _ConditionalContent<>.init(storage:)();
      v65 = v139;
      v66 = BYTE1(v140);
      v67 = v140;
      v68 = v96;
      *v96 = v139;
      *(v68 + 8) = v67;
      *(v68 + 9) = v66;
      swift_storeEnumTagMultiPayload();
      sub_1001235E0(v65, v67, v66);
      sub_10000341C(&qword_100262DD0, &qword_1001D9E98);
      sub_1001235EC();
      sub_100007120(&qword_100262DE0, &qword_100262D90, &qword_1001D9E70);
      v58 = v99;
      _ConditionalContent<>.init(storage:)();
      sub_100123678(v59, v60);
      sub_10012368C(v65, v67, v66);
      sub_100123678(v59, v60);
    }

    v69 = v112;
    v70 = v98;
    sub_1000081F8(v112, v98, &qword_10025B888, &qword_1001D0300);
    v71 = v100;
    sub_1000081F8(v58, v100, &qword_100262DA0, &qword_1001D9E80);
    v72 = v101;
    sub_1000081F8(v70, v101, &qword_10025B888, &qword_1001D0300);
    v73 = sub_10000341C(&qword_100262DE8, &qword_1001D9EA0);
    sub_1000081F8(v71, v72 + *(v73 + 48), &qword_100262DA0, &qword_1001D9E80);
    sub_10000F500(v58, &qword_100262DA0, &qword_1001D9E80);
    sub_10000F500(v69, &qword_10025B888, &qword_1001D0300);
    sub_10000F500(v71, &qword_100262DA0, &qword_1001D9E80);
    sub_10000F500(v70, &qword_10025B888, &qword_1001D0300);
    v41 = v127;
    sub_10002A894(v72, v127, &qword_100262D88, &qword_1001D9E68);
    v40 = 0;
  }

  (*(v109 + 56))(v41, v40, 1, v110);
  v74 = v103 & 1;
  LODWORD(v112) = v103 & 1;
  v75 = v177;
  LODWORD(v109) = v177;
  v76 = v175;
  LODWORD(v110) = v175;
  v77 = v108;
  sub_1000081F8(v41, v108, &qword_100262DA8, &qword_1001D9E88);
  *&v128 = v118;
  BYTE8(v128) = v75;
  *(&v128 + 9) = *v176;
  HIDWORD(v128) = *&v176[3];
  *&v129 = v115;
  BYTE8(v129) = v76;
  *(&v129 + 9) = *v174;
  HIDWORD(v129) = *&v174[3];
  *&v130 = v126;
  *(&v130 + 1) = v125;
  *&v131 = v124;
  *(&v131 + 1) = v123;
  *&v132 = v122;
  *(&v132 + 1) = v121;
  LOBYTE(v133) = v120;
  BYTE1(v133) = v74;
  *(&v133 + 2) = v172;
  WORD3(v133) = v173;
  v103 = sub_100123474;
  *(&v133 + 1) = sub_100123474;
  *&v134 = v119;
  BYTE8(v134) = 0;
  *(&v134 + 9) = *v171;
  HIDWORD(v134) = *&v171[3];
  v78 = v106;
  LOBYTE(v135) = v106;
  *(&v135 + 1) = *v170;
  DWORD1(v135) = *&v170[3];
  v79 = v107;
  *(&v135 + 1) = v107;
  v80 = v104;
  LOBYTE(v136) = v104;
  DWORD1(v136) = *&v169[3];
  *(&v136 + 1) = *v169;
  v81 = v105;
  *(&v136 + 1) = v105;
  LOBYTE(v137) = v116;
  DWORD1(v137) = *&v168[3];
  *(&v137 + 1) = *v168;
  *(&v137 + 1) = v117;
  *&v138 = v114;
  *(&v138 + 1) = v113;
  v82 = v129;
  v83 = v111;
  *v111 = v128;
  v83[1] = v82;
  v84 = v130;
  v85 = v131;
  v86 = v133;
  v83[4] = v132;
  v83[5] = v86;
  v83[2] = v84;
  v83[3] = v85;
  v87 = v134;
  v88 = v135;
  v89 = v138;
  v90 = v136;
  v83[9] = v137;
  v83[10] = v89;
  v83[7] = v88;
  v83[8] = v90;
  v83[6] = v87;
  v91 = sub_10000341C(&qword_100262DF0, &qword_1001D9EA8);
  sub_1000081F8(v77, v83 + *(v91 + 48), &qword_100262DA8, &qword_1001D9E88);
  sub_100123698(&v128, &v139);
  sub_10000F500(v127, &qword_100262DA8, &qword_1001D9E88);
  sub_10000F500(v77, &qword_100262DA8, &qword_1001D9E88);
  v139 = v118;
  LOBYTE(v140) = v109;
  *(&v140 + 1) = *v176;
  HIDWORD(v140) = *&v176[3];
  v141 = v115;
  LOBYTE(v142) = v110;
  *(&v142 + 1) = *v174;
  HIDWORD(v142) = *&v174[3];
  v143 = v126;
  v144 = v125;
  v145 = v124;
  v146 = v123;
  v147 = v122;
  v148 = v121;
  v149 = v120;
  v150 = v112;
  v151 = v172;
  v152 = v173;
  v153 = v103;
  v154 = v119;
  v155 = 0;
  *v156 = *v171;
  *&v156[3] = *&v171[3];
  v157 = v78;
  *v158 = *v170;
  *&v158[3] = *&v170[3];
  v159 = v79;
  v160 = v80;
  *&v161[3] = *&v169[3];
  *v161 = *v169;
  v162 = v81;
  v163 = v116;
  *&v164[3] = *&v168[3];
  *v164 = *v168;
  v165 = v117;
  v166 = v114;
  v167 = v113;
  return sub_1000AF844(&v139);
}

uint64_t sub_10010E058(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10010E0F0, v3, v2);
}

uint64_t sub_10010E0F0()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_10010AB74();
  sub_100094238();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10010E164(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1 + *(type metadata accessor for CompositionIndexView(0) + 32);
  sub_10011F074(&qword_1002628E0, &qword_1001D95E8, &type metadata accessor for ScenePhase, v9);
  (*(v3 + 104))(v7, enum case for ScenePhase.active(_:), v2);
  LOBYTE(v10) = static ScenePhase.== infix(_:_:)();
  v11 = *(v3 + 8);
  v11(v7, v2);
  result = (v11)(v9, v2);
  if (v10)
  {
    sub_10010AB74();
    sub_100094238();
  }

  return result;
}

uint64_t sub_10010E2F4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&qword_100262E00, &qword_1001D9EB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v29 - v5;
  v7 = sub_10010AA34();
  swift_getKeyPath();
  v29[1] = v7;
  sub_1001208D0(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v7 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable);

  if (v8 == 1)
  {
    sub_10010AB74();
  }

  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x4044000000000000;
  v6[16] = 0;
  v9 = sub_10000341C(&qword_100262E08, &qword_1001D9EE8);
  sub_10010E58C(&v6[*(v9 + 44)]);
  v10 = static Edge.Set.horizontal.getter();
  v11 = &v6[*(sub_10000341C(&qword_100262E10, &qword_1001D9EF0) + 36)];
  *v11 = v10;
  *(v11 + 8) = 0u;
  *(v11 + 24) = 0u;
  v11[40] = 1;
  v12 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = &v6[*(sub_10000341C(&qword_100262E18, &qword_1001D9EF8) + 36)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  v22 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v23 = &v6[*(v2 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_10002A894(v6, a1, &qword_100262E00, &qword_1001D9EB8);
  return (*(v3 + 56))(a1, 0, 1, v2);
}

uint64_t sub_10010E58C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = sub_10000341C(&qword_100262E20, &qword_1001D9F00);
  v1 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v3 = v42 - v2;
  v4 = sub_10000341C(&qword_100262E28, &qword_1001D9F08);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v42 - v6;
  v8 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10010AA34();
  swift_getKeyPath();
  v45 = v10;
  sub_1001208D0(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable);

  if (v11)
  {
    v42[1] = v4;
    sub_10010AB74();

    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v12._object = 0x80000001001E72A0;
    v12._countAndFlagsBits = 0x1000000000000029;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v12);
    v13._countAndFlagsBits = sub_1000971C0();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v13);

    v14._countAndFlagsBits = 0xD000000000000018;
    v14._object = 0x80000001001E72D0;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
    LocalizedStringKey.init(stringInterpolation:)();
    v15 = Text.init(_:tableName:bundle:comment:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    KeyPath = swift_getKeyPath();
    v45 = v15;
    v46 = v17;
    v47 = v19 & 1;
    v48 = v21;
    v49 = KeyPath;
    v50 = 1;
    static Font.Weight.semibold.getter();
    sub_10000341C(&qword_10025C768, &unk_1001D9F80);
    sub_10004882C();
    View.fontWeight(_:)();
    sub_10002A984(v15, v17, v19 & 1);

    if (qword_10025A7C8 != -1)
    {
      swift_once();
    }

    *&v3[*(v43 + 36)] = qword_100277178;
    sub_1000081F8(v3, v7, &qword_100262E20, &qword_1001D9F00);
    swift_storeEnumTagMultiPayload();

    sub_10000341C(&qword_100262E30, &qword_1001D9F70);
    sub_1001236E8();
    sub_100123858();
    v23 = v44;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v3, &qword_100262E20, &qword_1001D9F00);
  }

  else
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v24._object = 0x80000001001E7210;
    v24._countAndFlagsBits = 0xD000000000000010;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v24);
    v25._countAndFlagsBits = sub_1000971C0();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v25);

    v26._countAndFlagsBits = 0xD00000000000001ALL;
    v26._object = 0x80000001001E7230;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
    LocalizedStringKey.init(stringInterpolation:)();
    v27 = Text.init(_:tableName:bundle:comment:)();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = swift_getKeyPath();
    v35 = static Font.subheadline.getter();
    v36 = swift_getKeyPath();
    v37 = v31 & 1;
    LOBYTE(v45) = v31 & 1;
    if (qword_10025A7D0 != -1)
    {
      v41 = v36;
      swift_once();
      v36 = v41;
    }

    v38 = qword_100277180;
    *v7 = v27;
    *(v7 + 1) = v29;
    v7[16] = v37;
    *(v7 + 3) = v33;
    *(v7 + 4) = v34;
    v7[40] = 1;
    *(v7 + 6) = v36;
    *(v7 + 7) = v35;
    *(v7 + 8) = v38;
    swift_storeEnumTagMultiPayload();

    sub_10000341C(&qword_100262E30, &qword_1001D9F70);
    sub_1001236E8();
    sub_100123858();
    v23 = v44;
    _ConditionalContent<>.init(storage:)();
  }

  v39 = sub_10000341C(&qword_100262E68, &unk_1001D9F90);
  return (*(*(v39 - 8) + 56))(v23, 0, 1, v39);
}

uint64_t sub_10010EB4C(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t sub_10010EC14()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

BOOL sub_10010ED58()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 != 1)
  {
    return 1;
  }

  v8 = *(v0 + 16);
  v9 = *(v0 + 24);

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v8 = v15;
  }

  swift_getKeyPath();
  v15 = v8;
  sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v8 + 32);
  v12 = *(v8 + 40);

  return (v12 & 1) != 0 || v11 != 2;
}

uint64_t sub_10010EF64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CompositionConfirmView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v28[-v13];
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_100120918(v2, v10, type metadata accessor for CompositionConfirmView);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = &protocol witness table for MainActor;
  sub_100122020(v10, v19 + v17, type metadata accessor for CompositionConfirmView);
  v20 = (v19 + v18);
  *v20 = a1;
  v20[1] = a2;
  sub_10015C9C8(0, 0, v14, &unk_1001D9DE0, v19);

  v21 = v3 + *(v7 + 52);
  v22 = *v21;
  v23 = *(v21 + 16);
  v33 = v22;
  v34 = v23;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.setter();
  v24 = *(v3 + 64);
  v25 = *(v3 + 72);
  v26 = *(v3 + 80);
  *&v33 = v24;
  *(&v33 + 1) = v25;
  LOBYTE(v34) = v26;
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  result = FocusState.Binding.wrappedValue.getter();
  if (v29 == 1)
  {
    *&v33 = v24;
    *(&v33 + 1) = v25;
    LOBYTE(v34) = v26;

    FocusState.Binding.wrappedValue.getter();
    v29 = v24;
    v30 = v25;
    v31 = v26;
    v28[15] = (v32 & 1) == 0;
    FocusState.Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10010F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for EnvironmentValues();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[10] = v11;
  v6[11] = v10;

  return _swift_task_switch(sub_10010F354, v11, v10);
}

uint64_t sub_10010F354()
{
  v1 = v0[3];
  v2 = *v1;
  v3 = *(v1 + 8);

  if ((v3 & 1) == 0)
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v2 = v0[2];
  }

  v0[12] = v2;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_10010F498;
  v10 = v0[4];
  v9 = v0[5];

  return sub_10007C390(v10, v9);
}

uint64_t sub_10010F498()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return _swift_task_switch(sub_10010F5DC, v5, v4);
}

uint64_t sub_10010F5DC()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10010F644@<X0>(uint64_t a1@<X8>)
{
  v199 = a1;
  v2 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v197 = *(v2 - 8);
  v198 = v2;
  v3 = *(v197 + 64);
  __chkstk_darwin(v2);
  v196 = &v150 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = type metadata accessor for PreferredContentSizeModifier(0);
  v5 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v185);
  v195 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for CompositionConfirmView(0);
  v159 = *(v175 - 8);
  v7 = *(v159 + 64);
  __chkstk_darwin(v175);
  v160 = v8;
  v161 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v10 = *(v9 - 8);
  v11 = v10[8];
  __chkstk_darwin(v9);
  v201 = &v150 - v12;
  v162 = sub_10000341C(&qword_100262B08, &qword_1001D9A40);
  v13 = *(*(v162 - 8) + 64);
  __chkstk_darwin(v162);
  v15 = &v150 - v14;
  v166 = sub_10000341C(&qword_100262B10, &qword_1001D9A48);
  v164 = *(v166 - 8);
  v16 = *(v164 + 64);
  __chkstk_darwin(v166);
  v163 = &v150 - v17;
  v168 = sub_10000341C(&qword_100262B18, &qword_1001D9A50);
  v167 = *(v168 - 8);
  v18 = *(v167 + 64);
  __chkstk_darwin(v168);
  v165 = &v150 - v19;
  v172 = sub_10000341C(&qword_100262B20, &qword_1001D9A58);
  v171 = *(v172 - 8);
  v20 = *(v171 + 64);
  __chkstk_darwin(v172);
  v170 = &v150 - v21;
  v169 = sub_10000341C(&qword_100262B28, &qword_1001D9A60);
  v22 = *(*(v169 - 8) + 64);
  __chkstk_darwin(v169);
  v202 = &v150 - v23;
  v182 = sub_10000341C(&qword_100262B30, &qword_1001D9A68);
  v24 = *(*(v182 - 8) + 64);
  __chkstk_darwin(v182);
  v176 = &v150 - v25;
  v190 = sub_10000341C(&qword_100262B38, &qword_1001D9A70);
  v183 = *(v190 - 8);
  v26 = *(v183 + 64);
  __chkstk_darwin(v190);
  v28 = &v150 - v27;
  v194 = sub_10000341C(&qword_100262B40, &qword_1001D9A78);
  v191 = *(v194 - 8);
  v29 = *(v191 + 64);
  __chkstk_darwin(v194);
  v187 = &v150 - v30;
  v193 = sub_10000341C(&qword_100262B48, &qword_1001D9A80);
  v192 = *(v193 - 8);
  v31 = *(v192 + 64);
  __chkstk_darwin(v193);
  v189 = &v150 - v32;
  v188 = sub_10000341C(&qword_100262B50, &qword_1001D9A88);
  v186 = *(v188 - 8);
  v33 = *(v186 + 64);
  __chkstk_darwin(v188);
  v184 = &v150 - v34;
  v180 = sub_10000341C(&qword_100262B58, &qword_1001D9A90);
  v35 = *(*(v180 - 8) + 64);
  __chkstk_darwin(v180);
  v181 = &v150 - v36;
  v178 = sub_10000341C(&qword_100262B60, &qword_1001D9A98);
  v37 = *(*(v178 - 8) + 64);
  __chkstk_darwin(v178);
  v179 = &v150 - v38;
  v39 = type metadata accessor for EnvironmentValues();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  __chkstk_darwin(v39);
  v43 = &v150 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *v1;
  v158 = v1;
  v45 = *(v1 + 8) == 1;
  v151 = v43;
  v177 = v28;
  v153 = v39;
  v152 = v40;
  if (v45)
  {
    *&v210 = v44;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v46 = v10;
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v10 = v46;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v40 + 8))(v43, v39);
  }

  v204 = swift_allocBox();
  v49 = v48;
  type metadata accessor for CompositionModel(0);
  v203 = sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  v200 = v49;
  Bindable<A>.init(wrappedValue:)();
  *v15 = static HorizontalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v50 = &v15[*(sub_10000341C(&qword_100262B68, &qword_1001D9AA0) + 44)];
  v51 = v10[2];
  v154 = v15;
  v52 = v201;
  v51(v201, v49, v9);
  Bindable.wrappedValue.getter();
  v53 = v10[1];
  v53(v52, v9);
  v54 = v210;
  swift_getKeyPath();
  *&v210 = v54;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v50 = static HorizontalAlignment.center.getter();
  *(v50 + 1) = 0x4024000000000000;
  v50[16] = 0;
  v55 = &v50[*(sub_10000341C(&qword_100262B70, &qword_1001D9AA8) + 44)];
  v56 = v158;
  sub_100110DF8(v204, v158, v55);
  v157 = v10 + 2;
  v156 = v51;
  v51(v52, v200, v9);
  Bindable.wrappedValue.getter();
  v174 = v9;
  v173 = v10 + 1;
  v155 = v53;
  v53(v52, v9);
  v57 = v210;
  swift_getKeyPath();
  *&v210 = v57;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v58 = *(v57 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  LOBYTE(v210) = v58 == 1;
  v59 = v56;
  v60 = v56;
  v61 = v161;
  sub_100120918(v60, v161, type metadata accessor for CompositionConfirmView);
  v62 = (*(v159 + 80) + 24) & ~*(v159 + 80);
  v63 = swift_allocObject();
  v64 = v204;
  *(v63 + 16) = v204;
  sub_100122020(v61, v63 + v62, type metadata accessor for CompositionConfirmView);
  v65 = sub_100007120(&qword_100262B78, &qword_100262B08, &qword_1001D9A40);
  v66 = v64;

  v67 = v59;
  v68 = v163;
  v69 = v162;
  v70 = v154;
  View.onChange<A>(of:initial:_:)();

  v71 = sub_10000F500(v70, &qword_100262B08, &qword_1001D9A40);
  __chkstk_darwin(v71);
  *(&v150 - 2) = v67;
  *(&v150 - 1) = v66;
  v72 = sub_10000341C(&qword_100262B80, &qword_1001D9AB0);
  *&v210 = v69;
  *(&v210 + 1) = &type metadata for Bool;
  v211 = v65;
  v212 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = sub_100003E34(&qword_100262B88, &qword_1001D9AB8);
  v75 = sub_100122114();
  *&v210 = v74;
  *(&v210 + 1) = v75;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v165;
  v78 = v166;
  View.toolbar<A>(content:)();
  (*(v164 + 8))(v68, v78);
  v79 = *(v67 + 96);
  v207 = *(v67 + 88);
  v208 = v79;
  sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
  State.projectedValue.getter();
  v80 = v211;
  *&v210 = v78;
  *(&v210 + 1) = v72;
  v211 = OpaqueTypeConformance2;
  v212 = v76;
  swift_getOpaqueTypeConformance2();
  v81 = v170;
  v82 = v168;
  View.inlineFeedback(controller:completion:)();

  (*(v167 + 8))(v77, v82);
  v83 = *(v67 + 64);
  v84 = *(v67 + 72);
  v85 = v67;
  v86 = *(v67 + 80);
  *&v210 = v83;
  *(&v210 + 1) = v84;
  LOBYTE(v211) = v86;
  v87 = sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  v88 = 0;
  if (v207 == 1)
  {
    v89 = *(v85 + 16);
    v90 = *(v85 + 24);

    if ((v90 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v91 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v92 = v151;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v152 + 8))(v92, v153);
    }

    v88 = sub_10016FEDC();
  }

  v93 = v202;
  (*(v171 + 32))(v202, v81, v172);
  *(v93 + *(v169 + 36)) = v88;
  v94 = v201;
  v95 = v174;
  v156(v201, v200, v174);
  Bindable.wrappedValue.getter();
  v155(v94, v95);
  v96 = v210;
  swift_getKeyPath();
  *&v210 = v96;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_unknownObjectWeakLoadStrong();

  v203 = v83;
  *&v210 = v83;
  *(&v210 + 1) = v84;
  v201 = v84;
  LODWORD(v200) = v86;
  LOBYTE(v211) = v86;
  v174 = v87;
  FocusState.Binding.wrappedValue.getter();
  v97 = 1;
  if (v207 == 1)
  {
    v98 = *(v85 + 16);
    v99 = *(v85 + 24);

    if ((v99 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v100 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v101 = v151;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v152 + 8))(v101, v153);
    }

    v102 = sub_10016FEDC();

    v97 = !v102;
  }

  v103 = *(v175 + 40);
  v104 = v185;
  v105 = *(v185 + 28);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v106 = v195;
  v107 = v85;
  Binding.projectedValue.getter();
  LOBYTE(v210) = 0;
  static Binding.constant(_:)();
  v108 = v207;
  v109 = v208;
  v110 = v209;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v106 + 8) = v97 & 1;
  *(v106 + 9) = 1;
  v111 = v106 + v104[8];
  *v111 = v108;
  *(v111 + 8) = v109;
  *(v111 + 16) = v110;
  v112 = (v106 + v104[9]);
  *v112 = 0xD000000000000016;
  v112[1] = 0x80000001001D96D0;
  v113 = v106 + v104[10];
  type metadata accessor for CGSize(0);
  v205 = 0;
  v206 = 0;
  State.init(wrappedValue:)();
  v114 = v211;
  *v113 = v210;
  *(v113 + 16) = v114;
  v115 = v106 + v104[11];
  LOBYTE(v205) = 0;
  State.init(wrappedValue:)();
  v116 = *(&v210 + 1);
  *v115 = v210;
  *(v115 + 8) = v116;
  v117 = v106 + v104[12];
  v205 = 0;
  LOBYTE(v206) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v118 = BYTE8(v210);
  v119 = v211;
  *v117 = v210;
  *(v117 + 8) = v118;
  *(v117 + 16) = v119;
  v120 = v106 + v104[13];
  LOBYTE(v205) = 0;
  State.init(wrappedValue:)();
  v121 = *(&v210 + 1);
  *v120 = v210;
  *(v120 + 8) = v121;
  v122 = v106 + v104[14];
  type metadata accessor for PresentationModel();
  sub_1001208D0(&qword_10025A910, type metadata accessor for PresentationModel);
  *v122 = Environment.init<A>(_:)();
  *(v122 + 8) = v123 & 1;
  v124 = v176;
  sub_10002A894(v202, v176, &qword_100262B28, &qword_1001D9A60);
  v125 = v182;
  sub_100122020(v106, v124 + *(v182 + 36), type metadata accessor for PreferredContentSizeModifier);
  v127 = v196;
  v126 = v197;
  v128 = v198;
  (*(v197 + 104))(v196, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v198);
  v129 = sub_100123308(&qword_100262BB8, &qword_100262B30, &qword_1001D9A68, sub_1001221C4);
  v130 = v177;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v126 + 8))(v127, v128);
  sub_10000F500(v124, &qword_100262B30, &qword_1001D9A68);
  *&v210 = v203;
  *(&v210 + 1) = v201;
  LOBYTE(v211) = v200;
  FocusState.Binding.wrappedValue.getter();
  if (v207 == 1)
  {
    v131 = *(v107 + 16);
    v132 = *(v107 + 24);

    if ((v132 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v133 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v134 = v151;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v152 + 8))(v134, v153);
    }

    sub_10016FEDC();
  }

  *&v210 = v125;
  *(&v210 + 1) = v129;
  v135 = swift_getOpaqueTypeConformance2();
  v136 = v187;
  v137 = v190;
  View.navigationBarHidden(_:)();
  (*(v183 + 8))(v130, v137);
  LocalizedStringKey.init(stringLiteral:)();
  *&v210 = v137;
  *(&v210 + 1) = v135;
  v138 = swift_getOpaqueTypeConformance2();
  v139 = v189;
  v140 = v194;
  View.navigationTitle(_:)();

  (*(v191 + 8))(v136, v140);
  *&v210 = v140;
  *(&v210 + 1) = v138;
  swift_getOpaqueTypeConformance2();
  v141 = v184;
  v142 = v193;
  View.navigationBarBackButtonHidden(_:)();
  (*(v192 + 8))(v139, v142);
  v143 = v181;
  (*(v186 + 32))(v181, v141, v188);
  v144 = &v143[*(v180 + 36)];
  v145 = v204;
  *v144 = sub_1001223BC;
  v144[1] = v145;
  v144[2] = 0;
  v144[3] = 0;
  v146 = v143;
  v147 = v179;
  sub_10002A894(v146, v179, &qword_100262B58, &qword_1001D9A90);
  v148 = (v147 + *(v178 + 36));
  *v148 = 0;
  v148[1] = 0;
  v148[2] = sub_1001223DC;
  v148[3] = v145;
  sub_10002A894(v147, v199, &qword_100262B60, &qword_1001D9A98);
}

uint64_t sub_100110DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v351 = a2;
  v357 = a1;
  v341 = a3;
  v3 = sub_10000341C(&unk_100262BF8, &unk_1001D9B10);
  v339 = *(v3 - 8);
  v340 = v3;
  v4 = *(v339 + 64);
  __chkstk_darwin(v3);
  v333 = &v298 - v5;
  v6 = type metadata accessor for FeedbackView();
  v330 = *(v6 - 8);
  v331 = v6;
  v7 = *(v330 + 64);
  v8 = __chkstk_darwin(v6);
  v315 = &v298 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v314 = &v298 - v10;
  v11 = sub_10000341C(&qword_10025DFB0, &qword_1001D33E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v332 = &v298 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v346 = &v298 - v15;
  v328 = sub_10000341C(&qword_100262C08, &qword_1001D9B20);
  v16 = *(*(v328 - 8) + 64);
  __chkstk_darwin(v328);
  v323 = &v298 - v17;
  v318 = sub_10000341C(&qword_100262C10, &qword_1001D9B28);
  v18 = *(*(v318 - 8) + 64);
  __chkstk_darwin(v318);
  v310 = &v298 - v19;
  v316 = sub_10000341C(&qword_100262C18, &qword_1001D9B30);
  v20 = *(*(v316 - 8) + 64);
  __chkstk_darwin(v316);
  v317 = (&v298 - v21);
  v22 = sub_10000341C(&qword_100262C20, &qword_1001D9B38);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v322 = &v298 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  *&v342 = &v298 - v26;
  v326 = sub_10000341C(&qword_100262C28, &qword_1001D9B40);
  v27 = *(*(v326 - 8) + 64);
  __chkstk_darwin(v326);
  v327 = (&v298 - v28);
  v29 = sub_10000341C(&unk_100262C30, &unk_1001D9B48);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v329 = &v298 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v345 = &v298 - v33;
  v34 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v324 = *(v34 - 8);
  *&v325 = v34;
  v35 = *(v324 + 64);
  __chkstk_darwin(v34);
  v313 = &v298 - v36;
  v37 = sub_10000341C(&qword_10025DFF0, &qword_1001D3420);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v344 = &v298 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v349 = &v298 - v41;
  v350 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v358 = *(v350 - 8);
  v42 = *(v358 + 64);
  v43 = __chkstk_darwin(v350);
  v312 = &v298 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v355 = &v298 - v45;
  v356 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
  v46 = *(*(v356 - 8) + 64);
  v47 = __chkstk_darwin(v356);
  v343 = &v298 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v348 = &v298 - v49;
  v50 = sub_10000341C(&qword_100262C40, &qword_1001D9B58);
  v51 = *(*(v50 - 8) + 64);
  v52 = __chkstk_darwin(v50 - 8);
  v338 = &v298 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v337 = &v298 - v54;
  v55 = type metadata accessor for CompositionConfirmView(0);
  *&v334 = *(v55 - 8);
  v56 = *(v334 + 64);
  __chkstk_darwin(v55);
  *(&v334 + 1) = v57;
  v58 = &v298 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for EnvironmentValues();
  v352 = *(v59 - 8);
  v353 = v59;
  v60 = *(v352 + 64);
  __chkstk_darwin(v59);
  v321 = &v298 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10000341C(&unk_100262C48, &unk_1001D9B60);
  v63 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v65 = &v298 - v64;
  v66 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v354 = *(v66 - 8);
  v67 = *(v354 + 8);
  __chkstk_darwin(v66);
  v69 = &v298 - v68;
  v70 = sub_10000341C(&qword_100262C58, &qword_1001D9B70);
  v71 = *(*(v70 - 8) + 64);
  v72 = __chkstk_darwin(v70 - 8);
  v336 = &v298 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v75 = &v298 - v74;
  *(&v370 + 1) = &type metadata for WritingTools;
  *&v371 = sub_10002AC88();
  LOBYTE(v369) = 6;
  v76 = isFeatureEnabled(_:)();
  sub_10000F4B4(&v369);
  v347 = v75;
  v319 = v55;
  *&v335 = v58;
  if (v76)
  {
    LocalizedStringKey.init(stringLiteral:)();

    Button<>.init(_:action:)();
    v77 = v354;
    (*(v354 + 2))(v65, v69, v66);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
    sub_1000AF7F0();
    _ConditionalContent<>.init(storage:)();
    v77[1](v69, v66);
    v78 = v350;
    v79 = v351;
  }

  else
  {
    v320 = v62;
    v354 = v66;
    v80 = v351;
    v81 = v351 + *(v55 + 44);
    v82 = *v81;
    v83 = *(v81 + 16);
    v367[0] = v82;
    *&v367[1] = v83;
    sub_10000341C(&qword_100260098, &unk_1001D56B0);
    State.projectedValue.getter();
    v311 = v369;
    v308 = v370;
    v309 = *(&v369 + 1);
    v307 = *(&v370 + 1);
    v85 = *(v80 + 72);
    v86 = *(v80 + 80);
    *&v369 = *(v80 + 64);
    v84 = v369;
    *(&v369 + 1) = v85;
    LOBYTE(v370) = v86;
    sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
    FocusState.Binding.projectedValue.getter();
    v305 = *(&v367[0] + 1);
    v306 = *&v367[0];
    v304 = LOBYTE(v367[1]);
    *&v369 = v84;
    *(&v369 + 1) = v85;
    LOBYTE(v370) = v86;
    FocusState.Binding.wrappedValue.getter();
    if (LOBYTE(v367[0]) == 1)
    {
      v87 = *(v351 + 16);
      v79 = v351;
      v88 = *(v351 + 24);

      v78 = v350;
      if ((v88 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v89 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v90 = v321;
        EnvironmentValues.init()();
        swift_getAtKeyPath();

        (*(v352 + 8))(v90, v353);
      }

      v303 = sub_10016FEDC();
    }

    else
    {
      v78 = v350;
      v79 = v351;
      v303 = 0;
    }

    v91 = v335;
    sub_100120918(v79, v335, type metadata accessor for CompositionConfirmView);
    v92 = (*(v334 + 80) + 16) & ~*(v334 + 80);
    v302 = swift_allocObject();
    sub_100122020(v91, v302 + v92, type metadata accessor for CompositionConfirmView);
    type metadata accessor for WritingToolsModel();
    sub_1001208D0(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
    v301 = Environment.init<A>(_:)();
    v94 = v93;
    type metadata accessor for CompositionModel(0);
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
    v95 = Environment.init<A>(_:)();
    v97 = v96;
    LOBYTE(v367[0]) = 0;
    State.init(wrappedValue:)();
    v299 = v369;
    v300 = *(&v369 + 1);
    LOBYTE(v367[0]) = 0;
    State.init(wrappedValue:)();
    LOBYTE(v91) = v369;
    v298 = *(&v369 + 1);
    LOBYTE(v367[0]) = 0;
    State.init(wrappedValue:)();
    v98 = v369;
    v99 = *(&v369 + 1);
    *&v367[0] = _swiftEmptyArrayStorage;
    sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
    State.init(wrappedValue:)();
    v100 = v369;
    v377 = v94 & 1;
    v376 = v97 & 1;
    v101 = v303;
    *v65 = v301;
    v65[8] = v94 & 1;
    *(v65 + 9) = v369;
    *(v65 + 3) = *(&v369 + 3);
    *(v65 + 2) = v95;
    v65[24] = v97 & 1;
    *(v65 + 25) = v367[0];
    *(v65 + 7) = *(v367 + 3);
    v102 = v309;
    *(v65 + 4) = v311;
    *(v65 + 5) = v102;
    v103 = v307;
    *(v65 + 6) = v308;
    *(v65 + 7) = v103;
    v104 = v305;
    *(v65 + 8) = v306;
    *(v65 + 9) = v104;
    v65[80] = v304;
    v65[81] = v101;
    *(v65 + 43) = v375;
    *(v65 + 82) = *&v374[7];
    v105 = v302;
    *(v65 + 11) = sub_100125450;
    *(v65 + 12) = v105;
    v65[104] = 1;
    *(v65 + 27) = *(v365 + 3);
    *(v65 + 105) = v365[0];
    v65[112] = v299;
    *(v65 + 113) = v360;
    *(v65 + 29) = *(&v360 + 3);
    *(v65 + 15) = v300;
    v65[128] = v91;
    *(v65 + 33) = *&v359[3];
    *(v65 + 129) = *v359;
    *(v65 + 17) = v298;
    v65[144] = v98;
    *(v65 + 37) = *&v374[3];
    *(v65 + 145) = *v374;
    *(v65 + 19) = v99;
    *(v65 + 10) = v100;
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
    sub_1000AF7F0();
    _ConditionalContent<>.init(storage:)();
  }

  v106 = *(v79 + 64);
  v107 = *(v79 + 72);
  v108 = *(v79 + 80);
  *&v369 = v106;
  *(&v369 + 1) = v107;
  LOBYTE(v370) = v108;
  v311 = sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  v109 = v358;
  if (LOBYTE(v367[0]) == 1)
  {
    v110 = *(v79 + 16);
    v111 = *(v79 + 24);

    if ((v111 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v112 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v109 = v358;
      v113 = v321;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v352 + 8))(v113, v353);
    }

    v114 = sub_10016FEDC();

    if (v114)
    {
      v115 = 1;
      v116 = v337;
      goto LABEL_47;
    }
  }

  LODWORD(v307) = v108;
  v308 = v107;
  v309 = v106;
  v117 = v348;
  Divider.init()();
  v118 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v119 = v117 + *(v356 + 36);
  *v119 = v118;
  *(v119 + 8) = v120;
  *(v119 + 16) = v121;
  *(v119 + 24) = v122;
  *(v119 + 32) = v123;
  *(v119 + 40) = 0;
  v124 = swift_projectBox();
  v126 = v109 + 16;
  v125 = *(v109 + 16);
  v127 = v355;
  v357 = v124;
  v125(v355);
  Bindable.wrappedValue.getter();
  v130 = *(v109 + 8);
  v128 = v109 + 8;
  v129 = v130;
  v130(v127, v78);
  v131 = v369;
  swift_getKeyPath();
  *&v369 = v131;
  v132 = sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v133 = *(v131 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__rateLimitModel);

  swift_getKeyPath();
  *&v369 = v133;
  sub_1001208D0(&qword_100261B90, type metadata accessor for CompositionRateLimitModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v127) = *(v133 + 16);

  if (v127 == 1)
  {
    type metadata accessor for CompositionModel(0);
    v134 = Environment.init<A>(_:)();
    LODWORD(v320) = v135 & 1;
    v321 = v134;
  }

  else
  {
    v321 = 0;
    LODWORD(v320) = 255;
  }

  v136 = v355;
  (v125)(v355, v357, v78);
  Bindable.wrappedValue.getter();
  v358 = v128;
  v129(v136, v78);
  v137 = v369;
  swift_getKeyPath();
  *&v369 = v137;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v139 = *(v137 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice);
  v138 = *(v137 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__notice + 8);

  v352 = v126;
  v353 = v129;
  v354 = v125;
  v356 = v132;
  if (v138)
  {
    v140 = HIBYTE(v138) & 0xF;
    if ((v138 & 0x2000000000000000) == 0)
    {
      v140 = v139 & 0xFFFFFFFFFFFFLL;
    }

    v141 = v325;
    if (v140)
    {
      *&v369 = v139;
      *(&v369 + 1) = v138;
      sub_10002AC34();
      v142 = v313;
      Label<>.init<A>(_:systemImage:)();
      v143 = v324;
      v144 = v349;
      (*(v324 + 32))(v349, v142, v141);
      v145 = 0;
      goto LABEL_25;
    }

    v145 = 1;
    v144 = v349;
  }

  else
  {
    v145 = 1;
    v144 = v349;
    v141 = v325;
  }

  v143 = v324;
LABEL_25:
  (*(v143 + 56))(v144, v145, 1, v141);
  v146 = v354;
  v147 = v355;
  v148 = v357;
  (v354)(v355, v357, v78);
  Bindable.wrappedValue.getter();
  v149 = v353;
  v353(v147, v78);
  v150 = sub_100074B58();

  if (!v150)
  {
    goto LABEL_28;
  }

  v146(v147, v148, v78);
  Bindable.wrappedValue.getter();
  v149(v147, v78);
  v151 = v369;
  swift_getKeyPath();
  *&v369 = v151;
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v149 = v353;

  v152 = *(v151 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v152 == 1)
  {
    v153 = v312;
    v146(v312, v148, v78);
    Bindable.projectedValue.getter();
    v149(v153, v78);
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    v149(v147, v78);
    v154 = *&v367[0];
    type metadata accessor for CompositionModel(0);
    v342 = *(v367 + 8);
    v155 = Environment.init<A>(_:)();
    v157 = v156;
    FocusState.init<A>()();
    v158 = v369;
    v159 = BYTE8(v369);
    v160 = v370;
    v161 = v157 & 1;
    LOBYTE(v365[0]) = v157 & 1;
    LOBYTE(v360) = BYTE8(v369);
    v359[0] = v371;
    v162 = v327;
    *v327 = v155;
    *(v162 + 8) = v161;
    *(v162 + 9) = v369;
    *(v162 + 3) = *(&v369 + 3);
    v162[2] = v154;
    *(v162 + 3) = v342;
    v162[5] = v158;
    *(v162 + 48) = v159;
    *(v162 + 49) = v367[0];
    *(v162 + 13) = *(v367 + 3);
    *(v162 + 7) = v160;
    *(v162 + 72) = v359[0];
    swift_storeEnumTagMultiPayload();
    sub_1001226A4();
    sub_100007120(&unk_100262C90, &qword_100262C08, &qword_1001D9B20);
    _ConditionalContent<>.init(storage:)();
    v163 = v148;
  }

  else
  {
LABEL_28:
    v146(v147, v148, v78);
    Bindable.wrappedValue.getter();
    v149(v147, v78);
    v164 = v369;
    swift_getKeyPath();
    *&v369 = v164;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v165 = *(v164 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__hasGeneratedResponseDrafts);

    if (v165 == 1)
    {
      v166 = v351;
      v167 = v351 + *(v319 + 44);
      v168 = *v167;
      v169 = *(v167 + 16);
      v367[0] = v168;
      *&v367[1] = v169;
      sub_10000341C(&qword_100260098, &unk_1001D56B0);
      State.projectedValue.getter();
      v325 = v369;
      v170 = v370;
      v171 = v166;
      v172 = v335;
      sub_100120918(v171, v335, type metadata accessor for CompositionConfirmView);
      v173 = (*(v334 + 80) + 16) & ~*(v334 + 80);
      v174 = swift_allocObject();
      sub_100122020(v172, v174 + v173, type metadata accessor for CompositionConfirmView);
      type metadata accessor for CompositionModel(0);
      v175 = Environment.init<A>(_:)();
      LOBYTE(v367[0]) = v176 & 1;
      v177 = v317;
      *v317 = v175;
      *(v177 + 8) = v176 & 1;
      *(v177 + 9) = v369;
      *(v177 + 3) = *(&v369 + 3);
      *(v177 + 1) = v325;
      *(v177 + 2) = v170;
      v177[6] = sub_100122B44;
      v177[7] = v174;
      swift_storeEnumTagMultiPayload();
      sub_100122980();
      sub_1001229D4();
      v178 = v342;
      _ConditionalContent<>.init(storage:)();
      v179 = sub_10000341C(&qword_100262C70, &qword_1001D9C18);
      (*(*(v179 - 8) + 56))(v178, 0, 1, v179);
    }

    else
    {
      v180 = v149;
      v181 = v351;
      if (sub_10010ED58())
      {
        v182 = v335;
        sub_100120918(v181, v335, type metadata accessor for CompositionConfirmView);
        v183 = (*(v334 + 80) + 16) & ~*(v334 + 80);
        v184 = swift_allocObject();
        sub_100122020(v182, v184 + v183, type metadata accessor for CompositionConfirmView);
        sub_10000341C(&qword_100262CB0, &qword_1001D9D90);
        sub_1001228C8();
        v185 = v310;
        Button.init(action:label:)();
        v186 = v185 + *(sub_10000341C(&qword_100262CD0, &qword_1001D9DA0) + 36);
        *v186 = 0;
        *(v186 + 8) = 0;
        v187 = v355;
        v188 = v350;
        (v354)(v355, v357, v350);
        Bindable.wrappedValue.getter();
        v180(v187, v188);
        v189 = v369;
        swift_getKeyPath();
        *&v369 = v189;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        LODWORD(v187) = *(v189 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

        LOBYTE(v189) = v187 == 1;
        KeyPath = swift_getKeyPath();
        v191 = swift_allocObject();
        *(v191 + 16) = v189;
        v192 = v317;
        v193 = (v185 + *(v318 + 36));
        *v193 = KeyPath;
        v193[1] = sub_10012544C;
        v193[2] = v191;
        sub_1000081F8(v185, v192, &qword_100262C10, &qword_1001D9B28);
        swift_storeEnumTagMultiPayload();
        sub_100122980();
        sub_1001229D4();
        v194 = v342;
        _ConditionalContent<>.init(storage:)();
        sub_10000F500(v185, &qword_100262C10, &qword_1001D9B28);
        v195 = sub_10000341C(&qword_100262C70, &qword_1001D9C18);
        (*(*(v195 - 8) + 56))(v194, 0, 1, v195);
      }

      else
      {
        v196 = sub_10000341C(&qword_100262C70, &qword_1001D9C18);
        (*(*(v196 - 8) + 56))(v342, 1, 1, v196);
      }
    }

    v197 = v354;
    v198 = v355;
    v199 = v357;
    v200 = v350;
    (v354)(v355, v357, v350);
    Bindable.wrappedValue.getter();
    v201 = v353;
    v353(v198, v200);
    v202 = v369;
    swift_getKeyPath();
    *&v369 = v202;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v203 = *(v202 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);

    v204 = *(v203 + 16);

    if (!v204)
    {
      goto LABEL_35;
    }

    v197(v198, v199, v200);
    Bindable.wrappedValue.getter();
    v201(v198, v200);
    v205 = v369;
    swift_getKeyPath();
    *&v369 = v205;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v206 = *(v205 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

    if (v206 != 1)
    {
      v207 = v351 + *(v319 + 44);
      v208 = *v207;
      v209 = *(v207 + 16);
      v367[0] = v208;
      *&v367[1] = v209;
      sub_10000341C(&qword_100260098, &unk_1001D56B0);
      State.projectedValue.getter();
      v335 = v369;
      v210 = v370;
      *&v369 = v309;
      *(&v369 + 1) = v308;
      LOBYTE(v370) = v307;
      FocusState.Binding.projectedValue.getter();
      v211 = v367[0];
      v212 = v367[1];
      type metadata accessor for CompositionModel(0);
      *&v369 = Environment.init<A>(_:)();
      BYTE8(v369) = v213 & 1;
      v370 = v335;
      v371 = v210;
      v372 = v211;
      v373 = v212;
    }

    else
    {
LABEL_35:
      v373 = 0;
      v371 = 0u;
      v372 = 0u;
      v369 = 0u;
      v370 = 0u;
    }

    v214 = v342;
    v215 = v322;
    sub_1000081F8(v342, v322, &qword_100262C20, &qword_1001D9B38);
    v362 = v371;
    v363 = v372;
    v364 = v373;
    v360 = v369;
    v361 = v370;
    v216 = v323;
    sub_1000081F8(v215, v323, &qword_100262C20, &qword_1001D9B38);
    v217 = v216 + *(sub_10000341C(&qword_100262C78, &qword_1001D9C48) + 48);
    v218 = v364;
    v366 = v364;
    v220 = v362;
    v219 = v363;
    v365[2] = v362;
    v365[3] = v363;
    v222 = v360;
    v221 = v361;
    v365[0] = v360;
    v365[1] = v361;
    *(v217 + 32) = v362;
    *(v217 + 48) = v219;
    *(v217 + 64) = v218;
    *v217 = v222;
    *(v217 + 16) = v221;
    v368 = v218;
    v367[2] = v220;
    v367[3] = v219;
    v367[0] = v222;
    v367[1] = v221;
    sub_1000081F8(&v369, v359, &qword_100262C80, &qword_1001D9C50);
    sub_1000081F8(v365, v359, &qword_100262C80, &qword_1001D9C50);
    sub_10000F500(v367, &qword_100262C80, &qword_1001D9C50);
    sub_10000F500(v215, &qword_100262C20, &qword_1001D9B38);
    sub_1000081F8(v216, v327, &qword_100262C08, &qword_1001D9B20);
    swift_storeEnumTagMultiPayload();
    sub_1001226A4();
    sub_100007120(&unk_100262C90, &qword_100262C08, &qword_1001D9B20);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(&v369, &qword_100262C80, &qword_1001D9C50);
    sub_10000F500(v216, &qword_100262C08, &qword_1001D9B20);
    sub_10000F500(v214, &qword_100262C20, &qword_1001D9B38);
    v147 = v355;
    v163 = v357;
  }

  v223 = type metadata accessor for FeedbackFeatureFlags();
  *(&v370 + 1) = v223;
  *&v371 = sub_1001208D0(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags);
  v224 = sub_10002DB6C(&v369);
  (*(*(v223 - 8) + 104))(v224, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v223);
  LOBYTE(v223) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v369);
  if (v223)
  {
    v225 = v350;
    v226 = v354;
    (v354)(v147, v163, v350);
    Bindable.wrappedValue.getter();
    v353(v147, v225);
    v227 = v369;
    swift_getKeyPath();
    *&v369 = v227;
    sub_1001208D0(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v228 = *(v227 + 40);
    *&v335 = *(v227 + 32);
    *&v342 = v228;

    v226(v147, v357, v225);
    Bindable.wrappedValue.getter();
    v229 = v353;
    v353(v147, v225);
    v230 = v369;
    swift_getKeyPath();
    *&v369 = v230;
    ObservationRegistrar.access<A, B>(_:keyPath:)();
    v231 = v357;

    v232 = *(v230 + 56);
    *&v334 = *(v230 + 48);
    *(&v334 + 1) = v232;

    v233 = v354;
    (v354)(v147, v231, v225);
    Bindable.wrappedValue.getter();
    v229(v147, v225);
    v234 = sub_1000731AC();
    v327 = v235;
    v328 = v234;

    v233(v147, v231, v225);
    Bindable.wrappedValue.getter();
    v229(v147, v225);
    v326 = sub_1000731C0();
    *&v325 = v236;

    v233(v147, v231, v225);
    Bindable.wrappedValue.getter();
    v229(v147, v225);
    v237 = v369;
    swift_getKeyPath();
    *&v369 = v237;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v238 = *(v237 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__resultAttributedString);
    if (v238)
    {
      v239 = v238;
      v240 = [v239 string];
      v241 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v323 = v242;
      v324 = v241;
    }

    else
    {

      v323 = 0xE000000000000000;
      v324 = 0;
    }

    v246 = v350;
    v247 = v354;
    (v354)(v147, v231, v350);
    Bindable.wrappedValue.getter();
    v248 = v353;
    v353(v147, v246);
    v249 = v369;
    swift_getKeyPath();
    *&v369 = v249;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v250 = *(v249 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString + 8);
    v319 = *(v249 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__modelInfoString);
    v322 = v250;

    v251 = *(v351 + 96);
    *&v369 = *(v351 + 88);
    *(&v369 + 1) = v251;
    sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
    State.wrappedValue.getter();
    v351 = *&v367[0];
    v247(v147, v357, v246);
    Bindable.wrappedValue.getter();
    v248(v147, v246);
    v252 = v369;
    swift_getKeyPath();
    *&v369 = v252;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v253 = *(v252 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

    v254 = 1;
    if (v253 != 1)
    {
      (v354)(v147, v357, v246);
      Bindable.wrappedValue.getter();
      v353(v147, v246);
      v255 = v369;
      swift_getKeyPath();
      *&v369 = v255;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v256 = *(v255 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

      v254 = v256 == 2;
    }

    LODWORD(v318) = v254;
    v257 = v357;
    v258 = v354;
    (v354)(v147, v357, v246);
    Bindable.wrappedValue.getter();
    v259 = v353;
    v353(v147, v246);
    v260 = v369;
    swift_getKeyPath();
    *&v369 = v260;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v261 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachments;
    swift_beginAccess();
    v317 = *(v260 + v261);

    v258(v147, v257, v246);
    Bindable.wrappedValue.getter();
    v259(v147, v246);
    v262 = *&v367[0];
    swift_getKeyPath();
    *&v367[0] = v262;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v263 = v147;
    v264 = *(v262 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__refinements);

    (v354)(v263, v357, v246);
    Bindable.wrappedValue.getter();
    v259(v263, v246);
    v265 = *&v367[0];
    swift_getKeyPath();
    *&v367[0] = v265;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v266 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__generatedImages;
    swift_beginAccess();
    v267 = *(v265 + v266);

    v268 = v315;
    *(v315 + 25) = 0;
    v245 = v331;
    v269 = *(v331 + 92);
    *(v268 + v269) = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    *(v268 + 128) = xmmword_1001D31C0;
    *(v268 + 144) = 0;
    *&v270 = v335;
    *(&v270 + 1) = v342;
    v271 = v334;
    *(v268 + 152) = 1;
    *(v268 + 24) = v271;
    *(v268 + 8) = v270;
    v272 = v327;
    *(v268 + 40) = v328;
    *(v268 + 48) = v272;
    v274 = v324;
    v273 = v325;
    *(v268 + 56) = v326;
    *(v268 + 64) = v273;
    v275 = v323;
    *(v268 + 72) = v274;
    *(v268 + 80) = v275;
    v276 = v322;
    *(v268 + 88) = v319;
    *(v268 + 96) = v276;
    *v268 = v351;
    *(v268 + 153) = v318;
    *(v268 + 154) = 2;
    *(v268 + 156) = 0;
    *&v360 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v277 = *(&v365[0] + 1);
    *(v268 + 208) = *&v365[0];
    *(v268 + 160) = 0u;
    *(v268 + 176) = 0u;
    *(v268 + 192) = 0;
    *(v268 + 104) = v317;
    *(v268 + 112) = v264;
    *(v268 + 120) = v267;
    *(v268 + 224) = 0;
    *(v268 + 232) = 0;
    *(v268 + 216) = v277;
    v278 = v314;
    sub_100122020(v268, v314, type metadata accessor for FeedbackView);
    v279 = v278;
    v244 = v346;
    sub_100122020(v279, v346, type metadata accessor for FeedbackView);
    v243 = 0;
  }

  else
  {
    v243 = 1;
    v244 = v346;
    v245 = v331;
  }

  (*(v330 + 56))(v244, v243, 1, v245);
  v280 = v343;
  sub_1000081F8(v348, v343, &qword_10025B888, &qword_1001D0300);
  v281 = v344;
  sub_1000081F8(v349, v344, &qword_10025DFF0, &qword_1001D3420);
  v282 = v345;
  v283 = v329;
  sub_1000081F8(v345, v329, &unk_100262C30, &unk_1001D9B48);
  v284 = v244;
  v285 = v332;
  sub_1000081F8(v284, v332, &qword_10025DFB0, &qword_1001D33E0);
  v286 = v280;
  v287 = v333;
  sub_1000081F8(v286, v333, &qword_10025B888, &qword_1001D0300);
  v288 = sub_10000341C(&qword_100262CA0, &qword_1001D9C58);
  v289 = v287 + v288[12];
  v290 = v321;
  *v289 = v321;
  v291 = v320;
  *(v289 + 8) = v320;
  sub_1000081F8(v281, v287 + v288[16], &qword_10025DFF0, &qword_1001D3420);
  sub_1000081F8(v283, v287 + v288[20], &unk_100262C30, &unk_1001D9B48);
  sub_1000081F8(v285, v287 + v288[24], &qword_10025DFB0, &qword_1001D33E0);
  sub_1001234A0(v290, v291);
  sub_100123678(v290, v291);
  sub_10000F500(v346, &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v282, &unk_100262C30, &unk_1001D9B48);
  sub_10000F500(v349, &qword_10025DFF0, &qword_1001D3420);
  sub_10000F500(v348, &qword_10025B888, &qword_1001D0300);
  sub_10000F500(v285, &qword_10025DFB0, &qword_1001D33E0);
  sub_10000F500(v283, &unk_100262C30, &unk_1001D9B48);
  sub_10000F500(v344, &qword_10025DFF0, &qword_1001D3420);
  sub_100123678(v290, v291);
  sub_10000F500(v343, &qword_10025B888, &qword_1001D0300);
  v116 = v337;
  sub_10002A894(v287, v337, &unk_100262BF8, &unk_1001D9B10);
  v115 = 0;
LABEL_47:
  (*(v339 + 56))(v116, v115, 1, v340);
  v292 = v347;
  v293 = v336;
  sub_1000081F8(v347, v336, &qword_100262C58, &qword_1001D9B70);
  v294 = v338;
  sub_1000081F8(v116, v338, &qword_100262C40, &qword_1001D9B58);
  v295 = v341;
  sub_1000081F8(v293, v341, &qword_100262C58, &qword_1001D9B70);
  v296 = sub_10000341C(&qword_100262CA8, &qword_1001D9C60);
  sub_1000081F8(v294, v295 + *(v296 + 48), &qword_100262C40, &qword_1001D9B58);
  sub_10000F500(v116, &qword_100262C40, &qword_1001D9B58);
  sub_10000F500(v292, &qword_100262C58, &qword_1001D9B70);
  sub_10000F500(v294, &qword_100262C40, &qword_1001D9B58);
  return sub_10000F500(v293, &qword_100262C58, &qword_1001D9B70);
}