uint64_t sub_10005094C(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v9(v7);

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_100050A40(uint64_t a1, uint64_t a2, const char *a3, void (*a4)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000080BC(v7, qword_100086758);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 2u);
    }

    a4();
  }

  return result;
}

uint64_t sub_100050C6C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:AVSystemController_RecordingStateDidChangeNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:AVAudioEngineConfigurationChangeNotification object:*(v0 + 24)];

  v4 = [v1 defaultCenter];
  [v4 removeObserver:v0 name:AVAudioEngineConfigurationChangeNotification object:*(v0 + 40)];

  v5 = *(v0 + 80);

  return v0;
}

uint64_t sub_100050D8C()
{
  sub_100050C6C();

  return _swift_deallocClassInstance(v0, 88, 7);
}

void sub_100050DC0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000080BC(v10, qword_100086758);
  (*(v5 + 16))(v9, a1, v4);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    sub_100053B44();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = a1;
    v16 = v2;
    v18 = v17;
    (*(v5 + 8))(v9, v4);
    v19 = sub_10005305C(v15, v18, aBlock);
    v2 = v16;

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Metering: Recording state changed: %s", v13, 0xCu);
    sub_100004B28(v14);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v20 = Notification.userInfo.getter();
  if (!v20)
  {
    return;
  }

  v21 = v20;
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v22;
  AnyHashable.init<A>(_:)();
  if (!*(v21 + 16) || (v23 = sub_1000577BC(aBlock), (v24 & 1) == 0))
  {

    sub_100007F98(aBlock);
    return;
  }

  sub_100004AC4(*(v21 + 56) + 32 * v23, v49);
  sub_100007F98(aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    return;
  }

  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v25;
  AnyHashable.init<A>(_:)();
  if (!*(v21 + 16) || (v26 = sub_1000577BC(aBlock), (v27 & 1) == 0))
  {

    sub_100007F98(aBlock);
    goto LABEL_29;
  }

  sub_100004AC4(*(v21 + 56) + 32 * v26, v49);
  sub_100007F98(aBlock);

  sub_100003B30(&qword_1000846A0, &qword_100063528);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v41 = *(v2 + 64);
    v42 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100008350;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10004FCF4;
    aBlock[3] = &unk_10007B7C0;
    v43 = _Block_copy(aBlock);

    [v41 addOperationWithBlock:v43];
    _Block_release(v43);
    return;
  }

  v45 = v2;
  v28 = v47;
  v29 = *(v47 + 16);
  if (!v29)
  {
LABEL_30:

    v2 = v45;
    goto LABEL_29;
  }

  v30 = 0;
  while (v30 < *(v28 + 16))
  {
    v31 = *(v28 + 8 * v30 + 32);
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    if (*(v31 + 16) && (v35 = v32, , v36 = sub_100057800(v35, v34), v38 = v37, , (v38 & 1) != 0))
    {
      sub_100004AC4(*(v31 + 56) + 32 * v36, aBlock);

      if (swift_dynamicCast())
      {
        v39 = v49[0];
        v40 = v45;
        if (v39 == [*(v45 + 16) opaqueSessionID] || v39 == objc_msgSend(*(v40 + 32), "opaqueSessionID"))
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
    }

    if (v29 == ++v30)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
}

void sub_10005144C()
{
  v2 = v0;
  v3 = sub_100052C24();
  v4 = v3;
  if ((*(v0 + 52) & 1) != 0 || v3 != *(v0 + 48))
  {
    if (v3 == [*(v0 + 16) opaqueSessionID])
    {
      _StringGuts.grow(_:)(24);

      v15[0] = 0xD000000000000016;
      v15[1] = 0x8000000100069210;
      v16 = v4;
      v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v5);

      v7 = 0xD000000000000016;
      v6 = 0x8000000100069210;
    }

    else
    {
      LODWORD(v15[0]) = v4;
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v6 = v8;
    }

    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000080BC(v9, qword_100086758);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15[0] = v13;
      *v12 = 67109378;
      *(v12 + 4) = [*(v2 + 32) opaqueSessionID];

      *(v12 + 8) = 2080;
      v14 = sub_10005305C(v7, v6, v15);

      *(v12 + 10) = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Metering: Audio session is %u, Active Recording Session: %s", v12, 0x12u);
      sub_100004B28(v13);
    }

    else
    {
    }

    sub_1000516D8();
    if (!v1)
    {
      sub_100051B44();
    }
  }
}

uint64_t sub_1000516D8()
{
  v1 = *(v0 + 24);
  result = [v1 isRunning];
  if ((result & 1) == 0)
  {
    v3 = sub_100052C24();
    v4 = *(v0 + 16);
    result = [v4 opaqueSessionID];
    if (v3 == result)
    {
      if (qword_1000831F0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000080BC(v5, qword_100086758);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Metering: Starting placeholder audio session", v8, 2u);
      }

      v14 = 0;
      v9 = [v4 setActive:1 withOptions:0 error:&v14];
      v10 = v14;
      if (!v9)
      {
        goto LABEL_11;
      }

      v11 = v14;
      [v1 setAudioSession:v4];

      result = [v4 opaqueSessionID];
      if (v3 != result)
      {
        return result;
      }

      v14 = 0;
      v12 = [v1 startAndReturnError:&v14];
      v10 = v14;
      if (v12)
      {
        return v14;
      }

      else
      {
LABEL_11:
        v13 = v10;
        _convertNSErrorToError(_:)();

        return swift_willThrow();
      }
    }
  }

  return result;
}

void sub_1000518F0()
{
  v1 = *(v0 + 24);
  if ([v1 isRunning])
  {
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000080BC(v2, qword_100086758);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Metering: Stopping placeholder audio session", v5, 2u);
    }

    [v1 stop];
    [v1 reset];
    v6 = *(v0 + 16);
    v14 = 0;
    v7 = [v6 setActive:0 withOptions:0 error:&v14];
    v8 = v14;
    if (v7)
    {

      v9 = v8;
    }

    else
    {
      v10 = v14;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Metering: Failed to deactivate placeholder session", v13, 2u);
      }
    }
  }
}

void sub_100051B44()
{
  v1 = sub_100052C24();
  v2 = *(v0 + 40);
  if ([v2 isRunning] && (*(v0 + 52) & 1) == 0 && v1 == *(v0 + 48))
  {
    return;
  }

  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000080BC(v3, qword_100086758);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Metering: Starting shadowing audio session", v6, 2u);
  }

  if ((*(v0 + 52) & 1) != 0 || v1 != *(v0 + 48))
  {
    v7 = *(v0 + 32);
    aBlock[0] = 0;
    if (![v7 setActive:0 withOptions:0 error:aBlock])
    {
      v37 = aBlock[0];
      _convertNSErrorToError(_:)();
      goto LABEL_28;
    }

    v8 = aBlock[0];
    [v7 opaqueSessionID];
    sub_100003B30(&qword_100084670, &qword_100063500);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100061540;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v10;
    *(inited + 48) = UInt32._bridgeToObjectiveC()();
    *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 64) = v11;
    *(inited + 72) = UInt._bridgeToObjectiveC()();
    sub_10005399C(inited);
    swift_setDeallocating();
    sub_100003B30(&qword_100084678, &unk_100063508);
    swift_arrayDestroy();
    sub_100008398(0, &qword_100083360, NSNumber_ptr);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    aBlock[0] = 0;
    v13 = [v7 setConformsToSessionBehavior:isa error:aBlock];

    v14 = aBlock[0];
    if (!v13)
    {
      v43 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 67109378;
        *(v45 + 4) = v1;
        *(v45 + 8) = 2112;
        swift_errorRetain();
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 10) = v47;
        *v46 = v47;
        _os_log_impl(&_mh_execute_header, v37, v44, "Metering: Failed to set shadow session (id = %u) : %@", v45, 0x12u);
        sub_100008B68(v46, &qword_1000838D8, &unk_1000617C0);

        goto LABEL_27;
      }

LABEL_28:

      swift_willThrow();
      return;
    }

    *(v0 + 48) = v1;
    *(v0 + 52) = 0;
    v15 = v14;
  }

  v16 = *(v0 + 32);
  aBlock[0] = 0;
  if (![v16 setActive:1 withOptions:0 error:aBlock])
  {
    v38 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&_mh_execute_header, v37, v39, "Metering: Failed to activate shadowing session: %@", v40, 0xCu);
      sub_100008B68(v41, &qword_1000838D8, &unk_1000617C0);

LABEL_27:

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v17 = aBlock[0];
  [v2 setAudioSession:v16];
  v18 = [v2 inputNode];
  v19 = [v18 inputFormatForBus:0];
  v20 = v18;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v78 = v20;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = v19;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = [v78 inputFormatForBus:0];
    *(v24 + 4) = v26;
    *v25 = v26;
    _os_log_impl(&_mh_execute_header, v21, v22, "Metering: input format: %@", v24, 0xCu);
    sub_100008B68(v25, &qword_1000838D8, &unk_1000617C0);

    v19 = v23;
  }

  if ([v19 channelCount])
  {
    [v19 sampleRate];
    if (v27 > 0.0)
    {
      [v78 removeTapOnBus:0];
      v28 = [v78 inputFormatForBus:0];
      aBlock[4] = nullsub_1;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10005280C;
      aBlock[3] = &unk_10007B770;
      v29 = _Block_copy(aBlock);
      aBlock[0] = 0;
      [v78 safePerformInstallTapOnBus:0 bufferSize:1024 format:v28 error:aBlock block:v29];
      _Block_release(v29);

      v30 = aBlock[0];
      if (aBlock[0])
      {
        v31 = aBlock[0];
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          *v34 = 138412290;
          *(v34 + 4) = v31;
          *v35 = v30;
          v36 = v31;
          _os_log_impl(&_mh_execute_header, v32, v33, "Metering: Failed to installTap on shadowing audio engine: %@", v34, 0xCu);
          sub_100008B68(v35, &qword_1000838D8, &unk_1000617C0);
        }

        swift_willThrow();
      }

      else
      {
        aBlock[0] = 0;
        if ([v2 startAndReturnError:aBlock])
        {
          v68 = aBlock[0];
LABEL_50:

          return;
        }

        v69 = aBlock[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      swift_errorRetain();
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v72 = 138412290;
        swift_errorRetain();
        v74 = _swift_stdlib_bridgeErrorToNSError();
        *(v72 + 4) = v74;
        *v73 = v74;
        _os_log_impl(&_mh_execute_header, v70, v71, "Metering: Failed to start shadowing audio engine: %@", v72, 0xCu);
        sub_100008B68(v73, &qword_1000838D8, &unk_1000617C0);
      }

LABEL_49:
      swift_willThrow();
      goto LABEL_50;
    }
  }

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Metering: Incorrect input format. Not starting audio metering", v50, 2u);
  }

  v51 = [v16 currentRoute];
  v52 = [v51 inputs];

  sub_100008398(0, &qword_100084680, AVAudioSessionPortDescription_ptr);
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v53 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_34;
    }

LABEL_48:

    sub_100053AA0();
    swift_allocError();
    *v75 = 0xD000000000000024;
    v75[1] = 0x80000001000691B0;
    goto LABEL_49;
  }

  if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_34:
  if ((v53 & 0xC000000000000001) != 0)
  {
    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v54 = *(v53 + 32);
  }

  v55 = v54;

  swift_retain_n();
  v56 = v55;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v77 = v19;
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v59 = 136315650;
    v76 = v56;
    v61 = [v56 portName];
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;

    v65 = sub_10005305C(v62, v64, aBlock);

    *(v59 + 4) = v65;
    *(v59 + 12) = 1024;
    LODWORD(v65) = [v16 isInputAvailable];

    *(v59 + 14) = v65;

    *(v59 + 18) = 2048;
    v66 = [v16 preferredInputNumberOfChannels];

    *(v59 + 20) = v66;
    v56 = v76;

    _os_log_impl(&_mh_execute_header, v57, v58, "Metering: Input device exists (%s), but format is invalid. isInputAvailable: %{BOOL}d, preferredInputNumberOfChannels: %ld", v59, 0x1Cu);
    sub_100004B28(v60);
    v19 = v77;
  }

  else
  {
  }

  sub_100053AA0();
  swift_allocError();
  *v67 = 0xD00000000000002CLL;
  v67[1] = 0x8000000100069180;
  swift_willThrow();
}

void sub_10005280C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

void sub_100052890()
{
  v1 = *(v0 + 40);
  if ([v1 isRunning])
  {
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000080BC(v2, qword_100086758);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Metering: Stopping shadowing audio session", v5, 2u);
    }

    [v1 stop];
    [v1 reset];
    v6 = [v1 inputNode];
    [v6 removeTapOnBus:0];

    v7 = *(v0 + 32);
    v15 = 0;
    v8 = [v7 setActive:0 withOptions:0 error:&v15];
    v9 = v15;
    if (v8)
    {

      v10 = v9;
    }

    else
    {
      v11 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "Metering: Failed to deactivate shadowing session", v14, 2u);
      }
    }
  }
}

void sub_100052B14()
{
  sub_10005144C();
  if (v0)
  {
    if (qword_1000831F0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000080BC(v1, qword_100086758);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Metering: setup audio fails with recording session 0", v4, 2u);
    }

    sub_100052890();
    sub_1000518F0();
  }
}

unint64_t sub_100052C24()
{
  v1 = type metadata accessor for NSFastEnumerationIterator();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() sharedInstance];
  v8 = v7;
  if (v7)
  {
    if ([v7 attributeForKey:AVSystemController_RecordingSessionsDescriptionAttribute])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0u;
      v30 = 0u;
    }

    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  sub_100008AF8(&v31, &v29, &qword_100084658, &qword_1000634F8);
  if (!*(&v30 + 1))
  {
    sub_100008B68(&v29, &qword_100084658, &qword_1000634F8);
    goto LABEL_30;
  }

  sub_100008398(0, &qword_100084660, NSArray_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v15 = [*(v0 + 16) opaqueSessionID];

    goto LABEL_32;
  }

  v20 = v8;
  v22 = v2;
  v23 = v1;
  v24 = v0;
  v21 = v27;
  NSArray.makeIterator()();
  NSFastEnumerationIterator.next()();
  if (!*(&v30 + 1))
  {
LABEL_31:
    (*(v22 + 8))(v6, v23);
    v15 = [*(v24 + 16) opaqueSessionID];

    goto LABEL_32;
  }

  while (1)
  {
    sub_10005304C(&v29, &v27);
    sub_100008398(0, &qword_100084668, NSDictionary_ptr);
    v9 = swift_dynamicCast();
    v10 = v25;
    if (v9)
    {
      v11 = v25 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v27 = 0u;
      v28 = 0u;
LABEL_28:
      sub_100008B68(&v27, &qword_100084658, &qword_1000634F8);
      goto LABEL_12;
    }

    *&v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v25 + 1) = v12;
    v13 = v10;
    v14 = [v13 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();

    if (v14)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27 = v25;
    v28 = v26;
    if (!*(&v26 + 1))
    {

      goto LABEL_28;
    }

    if (swift_dynamicCast())
    {
      v15 = v25;
      v16 = v24;
      if (v15 != [*(v24 + 32) opaqueSessionID])
      {
        break;
      }
    }

LABEL_12:
    NSFastEnumerationIterator.next()();
    if (!*(&v30 + 1))
    {
      goto LABEL_31;
    }
  }

  v17 = [*(v16 + 16) opaqueSessionID];

  if (v15 == v17)
  {
    goto LABEL_12;
  }

  (*(v22 + 8))(v6, v23);
LABEL_32:
  sub_100008B68(&v31, &qword_100084658, &qword_1000634F8);
  return v15;
}

_OWORD *sub_10005304C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10005305C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100053128(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100004AC4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004B28(v11);
  return v7;
}

unint64_t sub_100053128(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100053234(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100053234(uint64_t a1, unint64_t a2)
{
  v4 = sub_100053280(a1, a2);
  sub_1000533B0(&off_100079A68);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100053280(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10005349C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10005349C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1000533B0(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100053510(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10005349C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100003B30(&qword_100084690, &qword_100063518);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100053510(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003B30(&qword_100084690, &qword_100063518);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_100053604()
{
  if (qword_1000831F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000080BC(v0, qword_100086758);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Metering: Set process attribution identifier for AVKitRoutingService", v3, 2u);
  }

  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  [v4 setCurrentAttributionKey:0 andApp:v5];
}

unint64_t sub_100053740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003B30(qword_1000846C8, &qword_100063548);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008AF8(v4, &v11, &qword_1000838D0, &qword_100063550);
      v5 = v11;
      result = sub_100057878(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10005304C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100053868(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003B30(&qword_1000846B8, &qword_1000636D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100008AF8(v4, &v13, &qword_1000846C0, &qword_100063540);
      v5 = v13;
      v6 = v14;
      result = sub_100057800(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100026B0C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10005399C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003B30(&qword_100084698, &qword_100063520);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100057800(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100053AA0()
{
  result = qword_100084688;
  if (!qword_100084688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084688);
  }

  return result;
}

uint64_t sub_100053AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100053B0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100053B44()
{
  result = qword_1000846A8;
  if (!qword_1000846A8)
  {
    type metadata accessor for Notification();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000846A8);
  }

  return result;
}

uint64_t sub_100053C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100053C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100053D24()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100053D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_100026A64(a3, v28 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100008B68(v13, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      sub_100003B30(qword_100084850, &qword_100063728);
      v24 = (v21 | v19);
      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v25 = swift_task_create();

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

      return v25;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  sub_100003B30(qword_100084850, &qword_100063728);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100054078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100026A64(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100054368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100026A64(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100008B68(v11, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_100003B30(&qword_100083928, &qword_100061950);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_100003B30(&qword_100083928, &qword_100061950);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10005466C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_100026A64(a3, v28 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100008B68(v13, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100054954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_100026A64(a3, v28 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100008B68(v13, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      sub_100003B30(&qword_100083FE0, &qword_1000637B0);
      v24 = (v21 | v19);
      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v25 = swift_task_create();

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

      return v25;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v27 = swift_allocObject();
  *(v27 + 16) = a4;
  *(v27 + 24) = a5;
  sub_100003B30(&qword_100083FE0, &qword_1000637B0);
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100054C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_100026A64(a3, v28 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100008B68(v13, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_100054F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v28 - v12;
  sub_100026A64(a3, v28 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_100008B68(v13, &qword_1000838E0, &qword_100061C70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = String.utf8CString.getter() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100008B68(a3, &qword_1000838E0, &qword_100061C70);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_10005523C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Result();
  v2[2] = v5;
  v6 = *(v5 - 8);
  v2[3] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v2[4] = v8;
  v9 = async function pointer to Task.result.getter[1];
  v10 = swift_task_alloc();
  v2[5] = v10;
  *v10 = v2;
  v10[1] = sub_100055374;

  return Task.result.getter(v8, a1, a2, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100055374()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v6 = *v0;

  (*(v3 + 8))(v2, v4);

  return _swift_task_switch(sub_1000554CC, 0, 0);
}

uint64_t sub_1000554CC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

void sub_10005552C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  sub_100055228();
}

uint64_t sub_10005553C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = *(a1 + 16);
  *v5 = v2;
  v5[1] = sub_100014310;

  return sub_10005523C(v4, v6);
}

uint64_t sub_1000555D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100026B0C(a1, v17);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    v8 = v18;
    v9 = v19;
    v10 = sub_100026B24(v17, v18);
    v11 = *(*(v8 - 8) + 64);
    __chkstk_darwin(v10, v10);
    v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13);
    sub_100058DB0(v13, a2, a3, isUniquelyReferenced_nonNull_native, &v16, v8, v9);
    sub_100004B28(v17);

    *v3 = v16;
  }

  else
  {
    sub_100008B68(a1, &qword_100083900, &qword_100062C00);
    sub_100057B90(a2, a3, v17);

    return sub_100008B68(v17, &qword_100083900, &qword_100062C00);
  }

  return result;
}

uint64_t sub_100055760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_100003B30(&qword_1000838E0, &qword_100061C70);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v27 - v14;
  swift_beginAccess();
  v16 = *(v5 + 112);
  if (*(v16 + 16))
  {

    v17 = sub_100057800(a1, a2);
    if (v18)
    {
      sub_100026C30(*(v16 + 56) + 40 * v17, &v28);

      return sub_100008B68(&v28, &qword_100083900, &qword_100062C00);
    }
  }

  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  sub_100008B68(&v28, &qword_100083900, &qword_100062C00);
  v20 = type metadata accessor for TaskPriority();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v15, a3, v20);
  v22 = *(v21 + 56);
  v22(v15, 0, 1, v20);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = a4;
  v23[5] = a5;

  v24 = sub_100054078(0, 0, v15, &unk_100063700, v23);
  *(&v29 + 1) = sub_100003B30(&qword_100083908, &unk_100061880);
  v30 = &off_10007BC78;
  *&v28 = v24;
  swift_beginAccess();

  sub_1000555D8(&v28, a1, a2);
  swift_endAccess();
  v22(v15, 1, 1, v20);
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v24;
  v26[5] = v25;
  v26[6] = a1;
  v26[7] = a2;

  sub_100054078(0, 0, v15, &unk_100063710, v26);
}

uint64_t sub_100055A68(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100027414;

  return v8();
}

uint64_t sub_100055B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[13] = a5;
  v9 = async function pointer to Task.result.getter[1];
  v10 = swift_task_alloc();
  v7[16] = v10;
  *v10 = v7;
  v10[1] = sub_1000475B4;

  return Task.result.getter(v7 + 18, a4, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100055C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[29] = a6;
  v7[30] = v6;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v7[24] = a1;
  v8 = *(*(sub_100003B30(&qword_1000838E0, &qword_100061C70) - 8) + 64) + 15;
  v7[31] = swift_task_alloc();

  return _swift_task_switch(sub_100055CBC, v6, 0);
}

uint64_t sub_100055CBC()
{
  v25 = v0;
  v1 = *(v0 + 240);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);

    v5 = sub_100057800(v4, v3);
    if (v6)
    {
      sub_100026C30(*(v2 + 56) + 40 * v5, v0 + 56);

      sub_100026B0C((v0 + 56), v0 + 16);
      sub_100026C30(v0 + 16, v0 + 96);
      sub_100003B30(&qword_100083910, &unk_1000636C0);
      sub_100003B30(&qword_100083908, &unk_100061880);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 184);
        *(v0 + 256) = v7;
        Task.cancel()();
        v8 = async function pointer to Task.result.getter[1];
        v9 = swift_task_alloc();
        *(v0 + 264) = v9;
        *v9 = v0;
        v9[1] = sub_100056028;

        return Task.result.getter(v0 + 272, v7, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
      }

      sub_100004B28((v0 + 16));
    }

    else
    {
    }
  }

  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  v12 = *(v0 + 232);
  v23 = *(v0 + 224);
  v13 = *(v0 + 208);
  v14 = *(v0 + 216);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  static TaskPriority.userInitiated.getter();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v13;
  v19[5] = v14;
  v19[6] = v18;
  v19[7] = v23;
  v19[8] = v12;
  v19[9] = v16;
  v19[10] = v15;

  v20 = sub_100054078(0, 0, v10, &unk_1000636B0, v19);
  v24[3] = sub_100003B30(&qword_100083908, &unk_100061880);
  v24[4] = &off_10007BC78;
  v24[0] = v20;
  swift_beginAccess();

  sub_1000555D8(v24, v16, v15);
  swift_endAccess();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100056028()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return _swift_task_switch(sub_100056124, 0, 0);
}

uint64_t sub_100056140()
{
  v17 = v0;
  v1 = v0[32];

  sub_100004B28(v0 + 2);
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v15 = v0[28];
  v5 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  static TaskPriority.userInitiated.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v5;
  v11[5] = v6;
  v11[6] = v10;
  v11[7] = v15;
  v11[8] = v4;
  v11[9] = v8;
  v11[10] = v7;

  v12 = sub_100054078(0, 0, v2, &unk_1000636B0, v11);
  v16[3] = sub_100003B30(&qword_100083908, &unk_100061880);
  v16[4] = &off_10007BC78;
  v16[0] = v12;
  swift_beginAccess();

  sub_1000555D8(v16, v8, v7);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100056328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = v14;
  v8[22] = v15;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  v9 = type metadata accessor for ContinuousClock();
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v11 = *(v10 + 64) + 15;
  v8[25] = swift_task_alloc();

  return _swift_task_switch(sub_1000563FC, 0, 0);
}

uint64_t sub_1000563FC()
{
  v1 = v0[25];
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_1000564BC;
  v3 = v0[25];
  v5 = v0[16];
  v4 = v0[17];

  return sub_100057274(v5, v4, 0, 0, 1);
}

uint64_t sub_1000564BC()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 216) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100056778;
  }

  else
  {
    v6 = sub_10005662C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10005662C()
{
  v1 = v0[18];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[19];

    v9 = (v2 + *v2);
    v3 = v2[1];
    v4 = swift_task_alloc();
    v0[28] = v4;
    *v4 = v0;
    v4[1] = sub_100056840;
    v5 = v0[20];

    return v9();
  }

  else
  {
    v7 = v0[25];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100056778()
{
  v1 = v0[27];

  v2 = v0[18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000569FC, Strong, 0);
  }

  else
  {
    v4 = v0[25];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100056840()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return _swift_task_switch(sub_10005693C, 0, 0);
}

uint64_t sub_10005693C()
{
  v1 = v0[18];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1000569FC, Strong, 0);
  }

  else
  {
    v3 = v0[25];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000569FC()
{
  v1 = v0[29];
  v3 = v0[21];
  v2 = v0[22];
  swift_beginAccess();
  sub_100057B90(v3, v2, (v0 + 2));
  sub_100008B68((v0 + 2), &qword_100083900, &qword_100062C00);
  swift_endAccess();

  v4 = v0[25];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100056ADC()
{
  v20 = v0;
  v1 = v0[15];
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_10005772C(*(v2 + 16), 0);
    v17 = sub_10005867C(&v19, (v4 + 4), v3, v2);

    result = sub_1000587E8();
    if (v17 != v3)
    {
      __break(1u);
      return result;
    }

    v6 = *(v1 + 112);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v0[16] = v4;
  *(v1 + 112) = &_swiftEmptyDictionarySingleton;

  v7 = v4[2];
  v0[17] = v7;
  if (v7)
  {
    v8 = (v4 + 4);
    do
    {
      sub_100026C30(v8, (v0 + 2));
      v9 = v0[5];
      v10 = v0[6];
      sub_100004BCC(v0 + 2, v9);
      (*(v10 + 24))(v9, v10);
      sub_100004B28(v0 + 2);
      v8 += 40;
      --v7;
    }

    while (v7);
    v0[18] = 0;
    sub_100026C30(v0[16] + 32, (v0 + 7));
    v11 = v0[10];
    v12 = v0[11];
    sub_100004BCC(v0 + 7, v11);
    v13 = *(v12 + 32);
    v18 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[19] = v15;
    *v15 = v0;
    v15[1] = sub_100056D84;

    return v18(v11, v12);
  }

  else
  {

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100056D84()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 120);
  v5 = *v0;

  sub_100004B28((v1 + 56));

  return _swift_task_switch(sub_100056E9C, v3, 0);
}

uint64_t sub_100056E9C()
{
  v1 = v0[18] + 1;
  if (v1 == v0[17])
  {
    v2 = v0[16];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[18] = v1;
    sub_100026C30(v0[16] + 40 * v1 + 32, (v0 + 7));
    v5 = v0[10];
    v6 = v0[11];
    sub_100004BCC(v0 + 7, v5);
    v7 = *(v6 + 32);
    v10 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_100056D84;

    return v10(v5, v6);
  }
}

uint64_t sub_100057028()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100057084(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005717C;

  return v7(a1);
}

uint64_t sub_10005717C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100057274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_100057374, 0, 0);
}

uint64_t sub_100057374()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_1000590F4(&qword_100084840, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1000590F4(&qword_100084848, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100057504;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_100057504()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1000576C0, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1000576C0()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

void *sub_10005772C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003B30(&qword_100084838, &unk_100063698);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

unint64_t sub_1000577BC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10005790C(a1, v4);
}

unint64_t sub_100057800(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1000579D4(a1, a2, v6);
}

unint64_t sub_100057878(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100057A8C(a1, v4);
}

unint64_t sub_10005790C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100059360(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100007F98(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000579D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100057A8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

double sub_100057B90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100057800(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000580BC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100026B0C((*(v12 + 56) + 40 * v9), a3);
    sub_100057F00(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100057C3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100003B30(&qword_1000846B8, &qword_1000636D0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_100026B0C(v25, v37);
      }

      else
      {
        sub_100026C30(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_100026B0C(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100057F00(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1000580BC()
{
  v1 = v0;
  sub_100003B30(&qword_1000846B8, &qword_1000636D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_100026C30(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100026B0C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100058264(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100058358;

  return v6(v2 + 32);
}

uint64_t sub_100058358()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10005846C(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_100058560;

  return v6(v2 + 16);
}

uint64_t sub_100058560()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v8 = *v0;

  v4 = v1[2];
  v5 = v1[3];
  *v3 = v1[1];
  v3[1] = v4;
  v3[2] = v5;
  v6 = *(v8 + 8);

  return v6();
}

void *sub_10005867C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_100026C30(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_100026B0C(v20, v21);
      sub_100026B0C(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000587F0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100058828()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100058878(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100027414;

  return sub_100056328(a1, v14, v4, v5, v6, v7, v8, v10);
}

uint64_t sub_10005896C(uint64_t a1, int *a2)
{
  *(v2 + 64) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_100058A60;

  return v6(v2 + 16);
}

uint64_t sub_100058A60()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *v0;

  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *v3 = *(v1 + 16);
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_100058BA8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100058C9C;

  return v6(v2 + 32);
}

uint64_t sub_100058C9C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100058DB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v14 = sub_100004A04(&v36);
  (*(*(a6 - 8) + 32))(v14, a1, a6);
  v15 = *a5;
  v17 = sub_100057800(a2, a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      sub_100004B28(v24);
      return sub_100026B0C(&v36, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_1000580BC();
    goto LABEL_7;
  }

  sub_100057C3C(v20, a4 & 1);
  v26 = *a5;
  v27 = sub_100057800(a2, a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29 = v37;
  v30 = sub_100026B24(&v36, v37);
  v31 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v30, v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  sub_100058FE4(v17, a2, a3, v33, v23, a6, a7);

  return sub_100004B28(&v36);
}

uint64_t sub_100058FE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  v13 = sub_100004A04(&v19);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_100026B0C(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_1000590BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000590F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005913C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005917C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027414;

  return sub_100055A68(a1, v4, v5, v7);
}

uint64_t sub_10005923C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005928C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014310;

  return sub_100055B50(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000593BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027414;

  return sub_100058264(a1, v5);
}

uint64_t sub_100059474(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027414;

  return sub_100058BA8(a1, v5);
}

uint64_t sub_10005952C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027414;

  return sub_100058264(a1, v5);
}

uint64_t sub_1000595E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027414;

  return sub_10005846C(a1, v5);
}

uint64_t sub_10005969C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014310;

  return sub_10005846C(a1, v5);
}

uint64_t sub_100059754(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027414;

  return sub_10005896C(a1, v5);
}

uint64_t sub_10005980C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100027414;

  return sub_100047A6C(a1, v5);
}

uint64_t sub_1000598C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_100059950(uint64_t a1, uint64_t a2, char a3)
{
  v4 = String._bridgeToObjectiveC()();

  v9 = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

id RSInputRoutePickerViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RSInputRoutePickerViewController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RSInputRoutePickerViewController();
  return objc_msgSendSuper2(&v2, "init");
}

id RSInputRoutePickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RSInputRoutePickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100059C3C()
{
  v1 = qword_100084900;
  if (*(v0 + qword_100084900))
  {
    v2 = *(v0 + qword_100084900);
  }

  else
  {
    v3 = *(v0 + qword_100084908);
    v4 = *(v0 + qword_100084908 + 8);
    v5 = *(v0 + qword_100084910);
    v6 = *(v0 + qword_100084910 + 8);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100036628(v3, v4, v5, v6, sub_10005A4FC, v7);
    sub_10005A504();
    v2 = AnyView.init<A>(_:)();
    v8 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_100059D54(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong _hostedWindowScene];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_opt_self() actionForNewSize:{a1, a2}];
      [v7 sendAction:v8];
    }
  }
}

id sub_100059E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + qword_100084900) = 0;
  v5 = (v4 + qword_100084908);
  *v5 = a1;
  v5[1] = a2;
  v6 = (v4 + qword_100084910);
  *v6 = a3;
  v6[1] = a4;
  AnyView.init<A>(_:)();
  v7 = UIHostingController.init(rootView:)();
  sub_100059C3C();
  dispatch thunk of UIHostingController.rootView.setter();

  return v7;
}

uint64_t sub_100059EB0(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a1 + qword_100084900) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100059F7C()
{
  v1 = *(v0 + qword_100084900);

  v2 = *(v0 + qword_100084908 + 8);

  v3 = *(v0 + qword_100084910 + 8);
}

id sub_100059FD4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10005A00C(uint64_t a1)
{
  v2 = *(a1 + qword_100084900);

  v3 = *(a1 + qword_100084908 + 8);

  v4 = *(a1 + qword_100084910 + 8);
}

id _s19AVKitRoutingService32RSInputRoutePickerViewControllerC6create16clientIdentifierSo06UIViewH0CSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  sub_10005A478();

  v4 = sub_100059950(a1, a2, 0);
  v5 = [v4 localizedName];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = objc_allocWithZone(type metadata accessor for InputRoutePlatterHostingController());

  v10 = sub_100059E20(a1, a2, v6, v8);
  result = [v10 view];
  if (result)
  {
    v12 = result;

    v13 = [objc_opt_self() clearColor];
    [v12 setBackgroundColor:v13];

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for InputRoutePlatterHostingController()
{
  result = qword_100084918;
  if (!qword_100084918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10005A478()
{
  result = qword_100084968;
  if (!qword_100084968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100084968);
  }

  return result;
}

uint64_t sub_10005A4C4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10005A504()
{
  result = qword_100084970;
  if (!qword_100084970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100084970);
  }

  return result;
}

uint64_t sub_10005A594(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1000866E8 == -1)
  {
    if (qword_1000866F0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10005DA94();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000866F0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000866E0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10005DAAC();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000866D0 < v11;
    if (dword_1000866D0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000866D4 > a3)
      {
        return 1;
      }

      if (dword_1000866D4 >= a3)
      {
        return dword_1000866D8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000866D0 < a2;
  if (dword_1000866D0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10005A728(uint64_t result)
{
  v1 = qword_1000866F0;
  if (qword_1000866F0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1000866F0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1000866D0, &dword_1000866D4, &dword_1000866D8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

id sub_10005AA5C()
{
  if (qword_1000866F8 != -1)
  {
    dispatch_once(&qword_1000866F8, &stru_10007BCC8);
  }

  v1 = qword_100086700;

  return v1;
}

void sub_10005AAB0(id a1)
{
  qword_100086700 = os_log_create("com.apple.avkit", "AVKit");

  _objc_release_x1();
}

void sub_10005AC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, NSErrorUserInfoKey a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = objc_begin_catch(exception_object);
    v13 = v12;
    if (v11)
    {
      a10 = NSLocalizedDescriptionKey;
      v14 = [v12 reason];
      a11 = v14;
      v15 = [NSDictionary dictionaryWithObjects:&a11 forKeys:&a10 count:1];
      *v11 = [NSError errorWithDomain:AVKitErrorDomain code:-1000 userInfo:v15];
    }

    objc_end_catch();
    JUMPOUT(0x10005ABFCLL);
  }

  _Unwind_Resume(exception_object);
}

id sub_10005B19C(uint64_t a1)
{
  v2 = sub_10005AA5C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "setSharedSetting: set %{public}@ to %{public}@", &v6, 0x16u);
  }

  return [*(a1 + 48) invalidate];
}

id sub_10005B370()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100086718;
  v7 = qword_100086718;
  if (!qword_100086718)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10005B450;
    v3[3] = &unk_10007BE38;
    v3[4] = &v4;
    sub_10005B450(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10005B438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_10005B450(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100086720)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_10005B63C;
    v6[4] = &unk_10007BE70;
    v6[5] = v6;
    v7 = off_10007BE58;
    v8 = 0;
    qword_100086720 = _sl_dlopen();
  }

  if (!qword_100086720)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *VisionKitCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"AVKitGlobalSettings.m" lineNumber:38 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("VKCImageAnalyzer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getVKCImageAnalyzerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"AVKitGlobalSettings.m" lineNumber:39 description:{@"Unable to find class %s", "VKCImageAnalyzer"}];

LABEL_10:
    __break(1u);
  }

  qword_100086718 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10005B63C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100086720 = result;
  return result;
}

id sub_10005B804()
{
  objc_opt_self();
  v0 = sub_10005D8C8();
  v1 = [v0 isEqualToString:@"com.apple.tv"];

  return v1;
}

void sub_10005C9C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10005CA1C()
{
  objc_opt_self();
  v0 = sub_10005D8C8();
  v1 = [v0 isEqualToString:@"com.apple.AVKitTester"];

  return v1;
}

id sub_10005CA60()
{
  objc_opt_self();
  v0 = sub_10005D8C8();
  v1 = [v0 isEqualToString:@"com.apple.QuickTimePlayerX"];

  return v1;
}

uint64_t sub_10005CAA4()
{
  objc_opt_self();
  if (!dyld_program_sdk_at_least() || !_UISolariumEnabled())
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

id sub_10005CB00(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = sub_10005D9F8();
  v9 = +[NSObservableKeyPath keyPathWithRootObject:path:](NSObservableKeyPath, "keyPathWithRootObject:path:", v8, [v6 cStringUsingEncoding:4]);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10005CE18;
  v15[3] = &unk_10007BE10;
  v16 = v6;
  v17 = v5;
  v18 = v7;
  v19 = 0;
  v10 = v7;
  v11 = v5;
  v12 = v6;
  v13 = [v9 addObserverBlock:v15];

  return v13;
}

void sub_10005CC50(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CDC4;
  block[3] = &unk_10007BD30;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_10005CCE0(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005CD70;
  block[3] = &unk_10007BD30;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v2);
}

void sub_10005CD70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setSubtitleAutomaticallyEnabledState:{+[AVKitGlobalSettings _subtitleAutomaticallyEnabledState](AVKitGlobalSettings, "_subtitleAutomaticallyEnabledState")}];
}

void sub_10005CDC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setDisplayingCaptionsOnSkipBack:{+[AVKitGlobalSettings _isDisplayingCaptionsOnSkipBack](AVKitGlobalSettings, "_isDisplayingCaptionsOnSkipBack")}];
}

void sub_10005CE18(id *a1)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005CEFC;
  v8[3] = &unk_10007BDE8;
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v2;
  *(&v7 + 1) = v3;
  v9 = v7;
  v10 = v6;
  dispatch_async(&_dispatch_main_q, v8);
}

void sub_10005CEFC(uint64_t a1)
{
  v2 = sub_10005D9F8();
  v3 = [v2 stringForKey:*(a1 + 32)];

  v4 = [*(a1 + 40) valueForKey:*(a1 + 48)];
  v5 = v4;
  if (v3 != v4)
  {
    v6 = !v3 || v4 == 0;
    if (v6 || ([v3 isEqualToString:v4] & 1) == 0)
    {
      [*(a1 + 40) setValue:v3 forKey:*(a1 + 48)];
      v7 = sub_10005AA5C();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v10 = 138543618;
        v11 = v8;
        v12 = 2114;
        v13 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Observation: shared value of '%{public}@' changed to '%{public}@", &v10, 0x16u);
      }

      if ([*(a1 + 56) length])
      {
        v9 = +[NSNotificationCenter defaultCenter];
        [v9 postNotificationName:*(a1 + 56) object:v3 userInfo:0];
      }
    }
  }
}

void sub_10005D2F0(id a1)
{
  v1 = dispatch_get_global_queue(0, 0);
  dispatch_async(v1, &stru_10007BD98);

  qword_100086708 = objc_alloc_init(AVKitGlobalSettings);

  _objc_release_x1();
}

void sub_10005D358(id a1)
{
  v1 = sub_10005B370();

  [v1 deviceSupportsImageAnalysis];
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

void sub_10005D888(id a1)
{
  qword_100086728 = +[_AVKitBundle bundle];

  _objc_release_x1();
}

id sub_10005D8C8()
{
  if (qword_100086740 != -1)
  {
    dispatch_once(&qword_100086740, &stru_10007BED0);
  }

  v1 = qword_100086738;

  return [v1 bundleIdentifier];
}

void sub_10005D91C(id a1)
{
  qword_100086738 = +[NSBundle mainBundle];

  _objc_release_x1();
}

id sub_10005D95C(void *a1)
{
  v1 = a1;
  if (qword_100086730 != -1)
  {
    dispatch_once(&qword_100086730, &stru_10007BEB0);
  }

  v2 = qword_100086728;
  v3 = [v2 localizedStringForKey:v1 value:&stru_10007C4F0 table:0];

  return v3;
}

id sub_10005D9F8()
{
  if (qword_100086750 != -1)
  {
    dispatch_once(&qword_100086750, &stru_10007BEF0);
  }

  v1 = qword_100086748;

  return v1;
}

void sub_10005DA4C(id a1)
{
  qword_100086748 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.avkit"];

  _objc_release_x1();
}