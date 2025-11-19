uint64_t sub_100002230()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000022C4, v2, v1);
}

uint64_t sub_1000022C4()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *&v2[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pointAndSpeakEventHandler];

  v4 = v2;
  v5 = [v4 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  MAGPointAndSpeakEventHandler.register(_:asActionHandler:)();

  v6 = v0[1];

  return v6();
}

void sub_1000023E8()
{
  sub_10000298C();
  sub_100002AD4();
  sub_100002E20();
  sub_100002E50();
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_10000E8F4;
  v22 = v3;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10000288C;
  v20 = &unk_10004A008;
  v4 = _Block_copy(&v17);

  [v2 registerUpdateBlock:v4 forRetrieveSelector:Selector.init(_:)() withListener:v0];
  _Block_release(v4);

  v5 = [v1 sharedInstance];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_10000E924;
  v22 = v6;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10000288C;
  v20 = &unk_10004A030;
  v7 = _Block_copy(&v17);

  [v5 registerUpdateBlock:v7 forRetrieveSelector:Selector.init(_:)() withListener:v0];
  _Block_release(v7);

  v8 = [v1 sharedInstance];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_10000E954;
  v22 = v9;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10000288C;
  v20 = &unk_10004A058;
  v10 = _Block_copy(&v17);

  [v8 registerUpdateBlock:v10 forRetrieveSelector:Selector.init(_:)() withListener:v0];
  _Block_release(v10);

  v11 = [v1 sharedInstance];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_10000E984;
  v22 = v12;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10000288C;
  v20 = &unk_10004A080;
  v13 = _Block_copy(&v17);

  [v11 registerUpdateBlock:v13 forRetrieveSelector:Selector.init(_:)() withListener:v0];
  _Block_release(v13);

  v14 = [v1 sharedInstance];
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_10000E9B4;
  v22 = v15;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10000288C;
  v20 = &unk_10004A0A8;
  v16 = _Block_copy(&v17);

  [v14 registerUpdateBlock:v16 forRetrieveSelector:Selector.init(_:)() withListener:v0];
  _Block_release(v16);
}

uint64_t sub_10000288C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1000028D0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_10000292C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10000298C();
    sub_100002AD4();
    sub_100002E20();
    sub_100002E50();
  }
}

uint64_t sub_1000029BC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_10000E844(0, &qword_10004F8D0, NSNumber_ptr), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_100002B04(uint64_t (*a1)(void), SEL *a2, SEL *a3, SEL *a4)
{
  v9 = v4;
  v10 = *(v4 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v33 == 1 && (v11 = [objc_opt_self() sharedInstance], v12 = objc_msgSend(v11, "liveRecognitionActivity"), v11, v12))
  {
    v13 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor;
    v14 = *(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
    v15 = a1();

    [v15 setUseSoundFeedback:{objc_msgSend(v12, *a2)}];
    v16 = *(v9 + v13);
    v17 = a1();

    [v17 setUseHapticFeedback:{objc_msgSend(v12, *a3)}];
  }

  else
  {
    v18 = [objc_opt_self() sharedInstance];
    v19 = [v18 *a4];

    if (v19)
    {
      sub_10000E844(0, &qword_10004F8D0, NSNumber_ptr);
      sub_10000E88C();
      v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor;
      v22 = *(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
      v23 = a1();

      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v25 = sub_1000029BC(isa, v20);

      [v23 setUseSoundFeedback:v25 & 1];
      v26 = *(v9 + v21);
      v17 = a1();

      v27 = Int._bridgeToObjectiveC()().super.super.isa;
      v28 = sub_1000029BC(v27, v20);

      [v17 setUseHapticFeedback:v28 & 1];
    }

    else
    {
      v29 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor;
      v30 = *(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
      v31 = a1();

      [v31 setUseSoundFeedback:1];
      v32 = *(v9 + v29);
      v17 = a1();

      [v17 setUseHapticFeedback:1];
    }
  }
}

uint64_t sub_100002E80(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v2[19] = v3;
  v4 = *(v3 - 8);
  v2[20] = v4;
  v5 = *(v4 + 64) + 15;
  v2[21] = swift_task_alloc();
  v6 = *(*(type metadata accessor for MAGAngelClientRequest(0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v2[24] = v7;
  v8 = *(v7 - 8);
  v2[25] = v8;
  v9 = *(v8 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v2[28] = v10;
  v11 = *(v10 - 8);
  v2[29] = v11;
  v12 = *(v11 + 64) + 15;
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v13 = type metadata accessor for MAGAREvent.AREventType();
  v2[32] = v13;
  v14 = *(v13 - 8);
  v2[33] = v14;
  v15 = *(v14 + 64) + 15;
  v2[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[35] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[36] = v17;
  v2[37] = v16;

  return _swift_task_switch(sub_1000030E4, v17, v16);
}

uint64_t sub_1000030E4()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 304) = Strong;
  if (!Strong)
  {
    v56 = *(v0 + 280);

    goto LABEL_81;
  }

  v3 = Strong;
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v7 = *(v0 + 136);
  MAGAREvent.eventType.getter();
  v8 = (*(v5 + 88))(v4, v6);
  if (v8 != enum case for MAGAREvent.AREventType.didReceiveARFrame(_:))
  {
    if (v8 != enum case for MAGAREvent.AREventType.didReceiveARSpatialMappingPointClouds(_:))
    {
      if (v8 == enum case for MAGAREvent.AREventType.sessionWasInterrupted(_:))
      {
        v60 = *(v0 + 280);

        v61 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (*(v0 + 393) == 1)
        {
          v62 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService];
          dispatch thunk of MAGObjectUnderstandingService.stopService()();

          goto LABEL_81;
        }
      }

      else
      {
        v64 = *(v0 + 280);
        if (v8 != enum case for MAGAREvent.AREventType.sessionInterruptionEnded(_:))
        {
          v71 = *(v0 + 264);
          v70 = *(v0 + 272);
          v72 = *(v0 + 256);
          v73 = *(v0 + 280);

          (*(v71 + 8))(v70, v72);
          goto LABEL_81;
        }

        v65 = *(v0 + 280);

        v66 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (*(v0 + 392) == 1)
        {
          v67 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_scene];
          v68 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService];
          v69 = v67;
          dispatch thunk of MAGObjectUnderstandingService.startService(with:)();
        }
      }

      goto LABEL_81;
    }

    v57 = *(v0 + 272);
    (*(*(v0 + 264) + 96))(v57, *(v0 + 256));
    v58 = *v57;
    *(v0 + 384) = *(v57 + 8);

    v59 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 394) == 1)
    {
      v39 = sub_100004A9C;
      v40 = 0;
      v41 = 0;

      return _swift_task_switch(v39, v40, v41);
    }

    v63 = *(v0 + 280);

LABEL_81:
    v127 = *(v0 + 272);
    v128 = *(v0 + 240);
    v129 = *(v0 + 248);
    v131 = *(v0 + 208);
    v130 = *(v0 + 216);
    v133 = *(v0 + 176);
    v132 = *(v0 + 184);
    v134 = *(v0 + 168);

    v135 = *(v0 + 8);

    return v135();
  }

  v9 = *(v0 + 272);
  (*(*(v0 + 264) + 96))(v9, *(v0 + 256));
  v10 = *v9;
  v11 = *(v9 + 8);
  *(v0 + 312) = v11;

  v12 = [v11 capturedImage];
  v13 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastPixelBuffer];
  *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastPixelBuffer] = v12;

  v14 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine;
  v15 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine];

  v16 = dispatch thunk of MAGOutputEngine.isSpeaking.getter();

  if (v16)
  {
    goto LABEL_79;
  }

  v17 = *&v3[v14];

  v18 = dispatch thunk of MAGOutputEngine.isElligbleForNewEvent.getter();

  if ((v18 & 1) == 0)
  {
    goto LABEL_79;
  }

  v143 = v14;
  v20 = *(v0 + 240);
  v19 = *(v0 + 248);
  v21 = *(v0 + 224);
  v22 = *(v0 + 232);
  Date.init()();
  v23 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
  swift_beginAccess();
  v24 = *(v22 + 16);
  v24(v20, &v3[v23], v21);
  Date.timeIntervalSince(_:)();
  v26 = v25;
  v27 = *(v22 + 8);
  v27(v20, v21);
  v27(v19, v21);
  v144 = v11;
  if (*&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelInactiveTimeOut] >= v26)
  {
    goto LABEL_28;
  }

  v29 = *(v0 + 240);
  v28 = *(v0 + 248);
  v30 = *(v0 + 224);
  Date.init()();
  v31 = v24;
  v32 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastPixelBufferCheckTime;
  swift_beginAccess();
  v141 = v32;
  v33 = &v3[v32];
  v24 = v31;
  v31(v29, v33, v30);
  Date.timeIntervalSince(_:)();
  v35 = v34;
  v27(v29, v30);
  v27(v28, v30);
  if (v35 <= 1.0)
  {
LABEL_28:
    v31 = v24;
    *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_consecutiveSimilarFrames] = 0;
    goto LABEL_32;
  }

  v36 = [v11 capturedImage];
  [*&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_luminanceManager] computeLuminanceFromPixelBuffer:v36];
  v38 = v37;

  v42 = &off_10004F000;
  if (v38 < 1.0 && vabdd_f64(v38, *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastFramePixelValue]) < 0.5)
  {
    v43 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_consecutiveSimilarFrames];
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (!v44)
    {
      *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_consecutiveSimilarFrames] = v45;
      if (v45 >= 9001)
      {
        v46 = *(v0 + 216);
        static AXLog.magangel.getter();
        v47 = Logger.logObject.getter();
        v48 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 0;
          _os_log_impl(&_mh_execute_header, v47, v48, "Deactivating UIScene because the angel has not been used for an extended period of time", v49, 2u);
        }

        v50 = *(v0 + 216);
        v51 = v47;
        v53 = *(v0 + 192);
        v52 = *(v0 + 200);
        v136 = *(v0 + 176);
        v137 = *(v0 + 168);
        v138 = *(v0 + 160);
        v139 = *(v0 + 152);
        v140 = *(v0 + 184);

        (*(v52 + 8))(v50, v53);
        v54 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_clientRequestStream];
        v55 = type metadata accessor for MAGSimulatedEvent();
        (*(*(v55 - 8) + 56))(v140, 2, 13, v55);
        sub_10000DF00(v140, v136);

        sub_10000D3B8(&unk_1000506F0, &unk_100038540);
        AsyncStream.Continuation.yield(_:)();

        (*(v138 + 8))(v137, v139);
        sub_10000DF64(v140);
        v42 = &off_10004F000;
      }

      goto LABEL_31;
    }

    __break(1u);
    return _swift_task_switch(v39, v40, v41);
  }

  *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_consecutiveSimilarFrames] = 0;
LABEL_31:
  v74 = *(v0 + 248);
  v75 = *(v0 + 224);
  v76 = *(v0 + 232);
  *(&v42[233]->Flags + v3) = v38;
  Date.init()();
  swift_beginAccess();
  (*(v76 + 40))(&v3[v141], v74, v75);
  swift_endAccess();
LABEL_32:
  v78 = *(v0 + 240);
  v77 = *(v0 + 248);
  v79 = *(v0 + 224);
  Date.init()();
  v80 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelLaunchTime;
  swift_beginAccess();
  v31(v78, &v3[v80], v79);
  Date.timeIntervalSince(_:)();
  v82 = v81;
  v27(v78, v79);
  v27(v77, v79);
  if (*&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_maxAngelRuntime] < v82)
  {
    v83 = *(v0 + 208);
    static AXLog.magangel.getter();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "Deactivating angel because it has been active for 30 minutes", v86, 2u);
    }

    v87 = *(v0 + 200);
    v88 = *(v0 + 208);
    v89 = *(v0 + 184);
    v90 = *(v0 + 192);
    v91 = *(v0 + 168);
    v92 = *(v0 + 176);
    v93 = *(v0 + 160);
    v142 = *(v0 + 152);

    (*(v87 + 8))(v88, v90);
    v94 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_clientRequestStream];
    v95 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v95 - 8) + 56))(v89, 2, 13, v95);
    sub_10000DF00(v89, v92);

    sub_10000D3B8(&unk_1000506F0, &unk_100038540);
    AsyncStream.Continuation.yield(_:)();

    (*(v93 + 8))(v91, v142);
    sub_10000DF64(v89);
    v11 = v144;
  }

  if (sub_100005740())
  {
    v96 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_torchStatus;
    if (!*&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_torchStatus])
    {
      v97 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_luminanceManager];
      v98 = [v11 capturedImage];
      [v97 computeLuminanceFromPixelBuffer:v98];
      v100 = v99;

      v101 = v100 / 96.0;
      if (v101 > 0.0)
      {
        static Detection.luminanceThreshold.getter();
        if (v101 < v102)
        {
          sub_10000BEEC();
          *&v3[v96] = 1;
        }
      }
    }
  }

  v103 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_nextEligibleDetector;
  v104 = v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_nextEligibleDetector];
  if (v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_nextEligibleDetector])
  {
    if (v104 != 1)
    {
      goto LABEL_54;
    }

LABEL_43:
    v3[v103] = 2;
    v105 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 399))
    {
      v106 = swift_task_alloc();
      *(v0 + 328) = v106;
      *v106 = v0;
      v106[1] = sub_1000043E4;

      return sub_100007D20(v11);
    }

    v104 = v3[v103];
LABEL_54:
    if (v104 == 2)
    {
      v3[v103] = 3;
      v112 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (*(v0 + 398) == 1)
      {
        v113 = swift_task_alloc();
        *(v0 + 336) = v113;
        *v113 = v0;
        v113[1] = sub_100004504;

        return sub_10000A13C(v11);
      }

      v104 = v3[v103];
    }

    if (v104 == 3)
    {
      v114 = *&v3[v143];

      v115 = dispatch thunk of MAGOutputEngine.isSpeaking.getter();

      if (v115)
      {
        v116 = *(v0 + 280);

LABEL_80:
        goto LABEL_81;
      }

      v3[v103] = 5;
      v117 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (*(v0 + 397))
      {
        v118 = [v11 capturedImage];
        *(v0 + 344) = v118;
        v119 = swift_task_alloc();
        *(v0 + 352) = v119;
        *v119 = v0;
        v119[1] = sub_100004624;

        return sub_10000B58C(v118);
      }

      v104 = v3[v103];
    }

    if (v104 == 5)
    {
      v3[v103] = 4;
      v120 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (*(v0 + 396) == 1)
      {
        v121 = swift_task_alloc();
        *(v0 + 360) = v121;
        *v121 = v0;
        v121[1] = sub_100004764;

        return sub_10000B140(v11);
      }

      v104 = v3[v103];
    }

    if (v104 == 4)
    {
      v3[v103] = 0;
      v122 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (*(v0 + 395) == 1)
      {
        v123 = *&v3[v143];

        dispatch thunk of MAGOutputEngine.isElligbleForNewEvent.setter();

        v124 = [v11 capturedImage];
        *(v0 + 368) = v124;
        v125 = swift_task_alloc();
        *(v0 + 376) = v125;
        *v125 = v0;
        v125[1] = sub_10000495C;

        return sub_10000585C(v124);
      }
    }

LABEL_79:
    v126 = *(v0 + 280);

    goto LABEL_80;
  }

  v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_nextEligibleDetector] = 1;
  v108 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences;
  v109 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if ((*(v0 + 400) & 1) == 0)
  {
    v110 = *&v3[v108];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 401) != 1)
    {
      v104 = v3[v103];
      if (v104 != 1)
      {
        goto LABEL_54;
      }

      goto LABEL_43;
    }
  }

  v111 = swift_task_alloc();
  *(v0 + 320) = v111;
  *v111 = v0;
  v111[1] = sub_1000042C4;

  return sub_10000680C(v11);
}

uint64_t sub_1000042C4()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v6 = *v0;

  v3 = *(v1 + 296);
  v4 = *(v1 + 288);

  return _swift_task_switch(sub_10000EC04, v4, v3);
}

uint64_t sub_1000043E4()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v6 = *v0;

  v3 = *(v1 + 296);
  v4 = *(v1 + 288);

  return _swift_task_switch(sub_10000EC04, v4, v3);
}

uint64_t sub_100004504()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v6 = *v0;

  v3 = *(v1 + 296);
  v4 = *(v1 + 288);

  return _swift_task_switch(sub_10000EC04, v4, v3);
}

uint64_t sub_100004624()
{
  v1 = *v0;
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 344);
  v7 = *v0;

  v4 = *(v1 + 296);
  v5 = *(v1 + 288);

  return _swift_task_switch(sub_10000EC04, v5, v4);
}

uint64_t sub_100004764()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v6 = *v0;

  v3 = *(v1 + 296);
  v4 = *(v1 + 288);

  return _swift_task_switch(sub_100004884, v4, v3);
}

uint64_t sub_100004884()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[35];

  v4 = v0[34];
  v5 = v0[30];
  v6 = v0[31];
  v8 = v0[26];
  v7 = v0[27];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10000495C()
{
  v1 = *v0;
  v2 = *(*v0 + 376);
  v3 = *(*v0 + 368);
  v7 = *v0;

  v4 = *(v1 + 296);
  v5 = *(v1 + 288);

  return _swift_task_switch(sub_10000EC04, v5, v4);
}

uint64_t sub_100004A9C()
{
  v1 = v0[48];
  v2 = *(v0[38] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);
  dispatch thunk of MAGObjectUnderstandingService.understandObjects(spatialMappingPointClouds:)();

  v3 = v0[36];
  v4 = v0[37];

  return _swift_task_switch(sub_100004B28, v3, v4);
}

uint64_t sub_100004B28()
{
  v1 = v0[38];
  v2 = v0[35];

  v3 = v0[34];
  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[26];
  v6 = v0[27];
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100004BFC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for DetectedObject();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for MAGOUEvent.MAGOUEventType();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v10;
  v2[15] = v9;

  return _swift_task_switch(sub_100004D4C, v10, v9);
}

uint64_t sub_100004D4C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 128) = Strong;
  if (!Strong)
  {
    v18 = *(v0 + 104);

LABEL_23:
    v34 = *(v0 + 96);
    v35 = *(v0 + 72);

    v36 = *(v0 + 8);

    return v36();
  }

  v3 = Strong;
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  MAGOUEvent.eventType.getter();
  v8 = (*(v5 + 88))(v4, v6);
  if (v8 == enum case for MAGOUEvent.MAGOUEventType.didRecievePointerContactWithObject(_:))
  {
    v9 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 56);
    v12 = *(v0 + 64);
    (*(*(v0 + 88) + 96))(v9, *(v0 + 80));
    v13 = *(v9 + *(sub_10000D3B8(&qword_10004F858, &qword_1000383C0) + 48));
    *(v0 + 136) = v13;
    (*(v12 + 32))(v10, v9, v11);
    v14 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 194) == 1)
    {
      v15 = swift_task_alloc();
      *(v0 + 144) = v15;
      *v15 = v0;
      v15[1] = sub_100005230;
      v16 = *(v0 + 72);

      return sub_100009094(v16, v13);
    }

    v24 = *(v0 + 104);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    goto LABEL_14;
  }

  if (v8 == enum case for MAGOUEvent.MAGOUEventType.didRecievePointerContactWithObjectGroup(_:))
  {
    v19 = *(v0 + 96);
    (*(*(v0 + 88) + 96))(v19, *(v0 + 80));
    v20 = *v19;
    *(v0 + 152) = *v19;
    v21 = v19[1];
    *(v0 + 160) = v21;
    v22 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 193) != 1)
    {
      v29 = *(v0 + 104);

      goto LABEL_21;
    }

    v23 = swift_task_alloc();
    *(v0 + 168) = v23;
    *v23 = v0;
    v23[1] = sub_10000541C;

    return sub_1000096B4(v20, v21);
  }

  else
  {
    if (v8 != enum case for MAGOUEvent.MAGOUEventType.didReceivePointerContactsWithFurnitureDetections(_:))
    {
      v31 = *(v0 + 96);
      v30 = *(v0 + 104);
      v32 = *(v0 + 80);
      v33 = *(v0 + 88);

      (*(v33 + 8))(v31, v32);
      goto LABEL_23;
    }

    v25 = *(v0 + 96);
    (*(*(v0 + 88) + 96))(v25, *(v0 + 80));
    v26 = *v25;
    *(v0 + 176) = v26;
    v27 = *&v3[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 192) != 1)
    {
      v37 = *(v0 + 104);
LABEL_14:

LABEL_21:

      goto LABEL_23;
    }

    v28 = swift_task_alloc();
    *(v0 + 184) = v28;
    *v28 = v0;
    v28[1] = sub_1000055FC;

    return sub_100009C00(v26);
  }
}

uint64_t sub_100005230()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return _swift_task_switch(sub_100005374, v5, v4);
}

uint64_t sub_100005374()
{
  v1 = v0[16];
  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];

  (*(v4 + 8))(v3, v5);
  v6 = v0[12];
  v7 = v0[9];

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000541C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v8 = *v0;

  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return _swift_task_switch(sub_10000557C, v6, v5);
}

uint64_t sub_10000557C()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000055FC()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return _swift_task_switch(sub_10000EC48, v5, v4);
}

uint64_t sub_100005740()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v2 = [objc_opt_self() sharedInstance];
  v3 = v2;
  if (v7 == 1)
  {
    v4 = [v2 liveRecognitionActivity];

    if (!v4)
    {
      return 1;
    }

    v5 = [v4 automaticFlashlightEnabled];
    v3 = v4;
  }

  else
  {
    v5 = [v2 liveRecognitionAutomaticFlashlightEnabled];
  }

  return v5;
}

uint64_t sub_10000585C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_100005978, 0, 0);
}

uint64_t sub_100005978()
{
  v1 = v0[16];
  v2 = v0[13];
  v20 = v0[15];
  v21 = v0[14];
  v3 = v0[11];
  v19 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = type metadata accessor for MAGCVPixelBufferWrapper();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = v5;
  v10 = MAGCVPixelBufferWrapper.init(_:)();
  v11 = *&v4[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_textDetectionService];

  v12 = MAGTextDetectionService.queue.getter();

  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v10;
  v0[6] = sub_10000E584;
  v0[7] = v13;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10000288C;
  v0[5] = &unk_100049F40;
  v14 = _Block_copy(v0 + 2);
  v15 = v4;
  static DispatchQoS.unspecified.getter();
  v0[8] = &_swiftEmptyArrayStorage;
  sub_10000DC2C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000D3B8(&unk_100050430, &unk_100038570);
  sub_10000E1A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();

  _Block_release(v14);

  (*(v19 + 8))(v2, v3);
  (*(v20 + 8))(v1, v21);
  v16 = v0[7];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100005BD8(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_textDetectionService];
  *(swift_allocObject() + 16) = a1;

  v3 = a1;
  dispatch thunk of MAGTextDetectionService.detectText(fromPixelBufferWrapper:languageCorrection:completionBlock:)();
}

uint64_t sub_100005C7C(void *a1, char *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v17 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v43 - v19;
  if (a1)
  {
    v45 = v5;
    v21 = a1;
    v22 = detectTextBlocks(forDocument:)();
    if (*(v22 + 16))
    {
      v43 = v21;
      v44 = a2;
      static AXLog.magangel.getter();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        *(v25 + 4) = *(v22 + 16);

        _os_log_impl(&_mh_execute_header, v23, v24, "%ld text blocks detected from document", v25, 0xCu);
      }

      else
      {
      }

      (*(v10 + 8))(v14, v9);
      Date.init()();
      v37 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
      v38 = v44;
      swift_beginAccess();
      (*(v45 + 40))(&v38[v37], v8, v4);
      swift_endAccess();
      v39 = type metadata accessor for TaskPriority();
      (*(*(v39 - 8) + 56))(v20, 1, 1, v39);
      v40 = swift_allocObject();
      v40[2] = 0;
      v40[3] = 0;
      v40[4] = v38;
      v40[5] = v22;
      v41 = v38;
      sub_1000107D4(0, 0, v20, &unk_1000385C8, v40);
    }

    else
    {

      static AXLog.magangel.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "No text blocks detected from document", v32, 2u);
      }

      (*(v10 + 8))(v16, v9);
      v33 = type metadata accessor for TaskPriority();
      (*(*(v33 - 8) + 56))(v20, 1, 1, v33);
      type metadata accessor for MainActor();
      v34 = a2;
      v35 = static MainActor.shared.getter();
      v36 = swift_allocObject();
      v36[2] = v35;
      v36[3] = &protocol witness table for MainActor;
      v36[4] = v34;
      sub_1000107D4(0, 0, v20, &unk_1000385D8, v36);
    }
  }

  else
  {
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v20, 1, 1, v26);
    type metadata accessor for MainActor();
    v27 = a2;
    v28 = static MainActor.shared.getter();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = &protocol witness table for MainActor;
    v29[4] = v27;
    sub_1000107D4(0, 0, v20, &unk_1000385B8, v29);
  }
}

uint64_t sub_1000061EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000EC08, v6, v5);
}

uint64_t sub_100006284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000631C, v6, v5);
}

uint64_t sub_10000631C()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *(v2 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);

  dispatch thunk of MAGOutputEngine.isElligbleForNewEvent.setter();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000063A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for MAGOutputEventEnvironment();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = type metadata accessor for MAGOutputEventSource();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v12 = type metadata accessor for MAGOutputEvent();
  v5[10] = v12;
  v13 = *(v12 - 8);
  v5[11] = v13;
  v14 = *(v13 + 64) + 15;
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_100006518, 0, 0);
}

uint64_t sub_100006518()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 72);
  v3 = *(v0 + 40);
  v14 = *(v0 + 32);
  v15 = *(v0 + 96);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  *(v0 + 104) = *(v4 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  sub_10000D3B8(&qword_10004F8C8, &unk_1000385E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100037F70;
  *(v6 + 32) = v5;
  v7 = *(v4 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v8 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v0 + 120))
  {
    v8 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v1 + 104))(v13, *v8, v12);
  (*(v3 + 104))(v2, enum case for MAGOutputEventEnvironment.angel(_:), v14);
  static MAGOutputEvent.detectedText(_:source:environment:)();

  (*(v3 + 8))(v2, v14);
  (*(v1 + 8))(v13, v12);
  type metadata accessor for MainActor();
  *(v0 + 112) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100006750, v10, v9);
}

uint64_t sub_100006750()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v4 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10000680C(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for Date();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  v2[20] = v9;
  v10 = *(v9 - 8);
  v2[21] = v10;
  v11 = *(v10 + 64) + 15;
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_100006984, 0, 0);
}

uint64_t sub_100006984()
{
  v1 = v0[13];
  [v0[12] timestamp];
  v3 = v2;
  v4 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_arService;
  v5 = *(v1 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_arService);
  dispatch thunk of MAGARService.lastARFrameTimestamp.getter();
  v7 = v6;

  if (v3 - v7 >= 0.1)
  {
    v8 = v0[12];
    v9 = v0[13];
    v10 = *(v1 + v4);
    [v8 timestamp];
    dispatch thunk of MAGARService.lastARFrameTimestamp.setter();

    v11 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_personDetectionManager;
    [*(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_personDetectionManager) computePersonDetectionFromFrame:v8 interfaceOrientation:1];
    v12 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_anstPersonDetectionManager;
    v13 = *(v9 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_anstPersonDetectionManager);

    v14 = [v8 capturedImage];
    dispatch thunk of ANSTPersonDetectionManager.computePersonDetectionFromPixelBuffer(pixelBuffer:interfaceOrientation:)();
    v15 = v0[12];

    v16 = *(v9 + v12);
    v17 = *(v9 + v11);

    v18 = [v17 detectedPersonArray];
    sub_10000E844(0, &qword_10004F8C0, DetectedPersonData_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = [v15 capturedImage];
    dispatch thunk of ANSTPersonDetectionManager.matchANSTDetections(to:anstDetections:orientation:capturedImage:)();

    v20 = v0[13];

    v21 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences;
    v22 = *(v20 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 184) == 1)
    {
      v23 = v0[12];
      v24 = v0[13];
      v25 = [*(v9 + v11) detectedPersonArray];
      sub_10000E844(0, &qword_10004F8C0, DetectedPersonData_ptr);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();

      static SpatialPersonDetection.spatialize(_:frame:orientation:)();

      v26 = *(v24 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);
      dispatch thunk of MAGObjectUnderstandingService.updateSeatOccupancy(for:)();
    }

    v27 = *(v20 + v21);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*(v0 + 185) != 1)
    {
      goto LABEL_17;
    }

    v28 = [*(v9 + v11) detectedPersonArray];
    sub_10000E844(0, &qword_10004F8C0, DetectedPersonData_ptr);
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v29 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_7:
        if ((v29 & 0xC000000000000001) != 0)
        {
          v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v31 = *(v29 + 32);
        }

        v32 = v31;

        if ([v32 isEnabled] && objc_msgSend(v32, "isValid"))
        {
          [v32 position];
          v34 = v33;
          if (v33 >= 1)
          {
            v35 = v0[22];
            v36 = v0[19];
            v57 = v0[21];
            v58 = v0[20];
            v37 = v0[17];
            v56 = v0[18];
            v59 = v0[16];
            v60 = v0[15];
            v38 = v0[13];
            v61 = v0[14];
            v62 = v0[12];
            v55 = v33;
            sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
            v54 = static OS_dispatch_queue.main.getter();
            v39 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v40 = swift_allocObject();
            *(v40 + 16) = v39;
            *(v40 + 24) = v32;
            *(v40 + 32) = v34;
            v0[6] = sub_10000E440;
            v0[7] = v40;
            v0[2] = _NSConcreteStackBlock;
            v0[3] = 1107296256;
            v0[4] = sub_10000288C;
            v0[5] = &unk_100049EC8;
            v41 = _Block_copy(v0 + 2);

            v42 = v32;
            static DispatchQoS.unspecified.getter();
            v0[11] = &_swiftEmptyArrayStorage;
            sub_10000DC2C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags);
            sub_10000D3B8(&unk_100050430, &unk_100038570);
            sub_10000E1A4();
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v41);

            (*(v56 + 8))(v36, v37);
            (*(v57 + 8))(v35, v58);
            v43 = v0[7];

            Date.init()();
            v44 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
            swift_beginAccess();
            (*(v60 + 40))(&v38[v44], v59, v61);
            swift_endAccess();
            v45 = *&v38[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_peopleSessionDispatchQueue];
            v46 = swift_allocObject();
            *(v46 + 16) = v38;
            *(v46 + 24) = v62;
            *(v46 + 32) = v42;
            *(v46 + 40) = v55;
            v32 = v42;

            v47 = v38;
            v48 = v62;
            dispatch thunk of AXSerialQueue.async(_:)();
          }

          goto LABEL_18;
        }

LABEL_17:
        v49 = *(v0[13] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
        v32 = dispatch thunk of MAGPulseFeedbackProcessor.toneGenerator.getter();

        [v32 stopPulse];
LABEL_18:

        goto LABEL_19;
      }
    }

    goto LABEL_17;
  }

LABEL_19:
  v50 = v0[22];
  v51 = v0[19];
  v52 = v0[16];

  v53 = v0[1];

  return v53();
}

void sub_100007108()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);

    dispatch thunk of MAGPulseFeedbackProcessor.processPulseFeedback(nearestPersonData:depth:)();
  }
}

uint64_t sub_100007190(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(v4 + 200) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for MAGOutputEventEnvironment();
  *(v4 + 40) = v5;
  v6 = *(v5 - 8);
  *(v4 + 48) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v8 = type metadata accessor for MAGOutputEventSource();
  *(v4 + 64) = v8;
  v9 = *(v8 - 8);
  *(v4 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v11 = type metadata accessor for MAGOutputEvent();
  *(v4 + 96) = v11;
  v12 = *(v11 - 8);
  *(v4 + 104) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100007328, 0, 0);
}

uint64_t sub_100007328()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[16] = *(v0[2] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_videoCaptioningService);

  v3 = [v2 capturedImage];
  v0[17] = v3;
  [v1 screenRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(&async function pointer to dispatch thunk of MAGVideoCaptioningService.generateActionCaption(from:nearestPersonNormalizedRect:) + 1);
  v19 = (&async function pointer to dispatch thunk of MAGVideoCaptioningService.generateActionCaption(from:nearestPersonNormalizedRect:) + async function pointer to dispatch thunk of MAGVideoCaptioningService.generateActionCaption(from:nearestPersonNormalizedRect:));
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_100007454;
  v14.n128_u64[0] = v5;
  v15.n128_u64[0] = v7;
  v16.n128_u64[0] = v9;
  v17.n128_u64[0] = v11;

  return v19(v3, v14, v15, v16, v17);
}

uint64_t sub_100007454(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 144);
  v7 = *v3;
  *(v5 + 152) = a1;
  *(v5 + 160) = a2;

  v8 = *(v4 + 136);
  v9 = *(v4 + 128);
  if (v2)
  {

    v10 = sub_100007B20;
  }

  else
  {

    v10 = sub_1000075C0;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_1000075C0()
{
  if (*(v0 + 160))
  {
    v28 = *(v0 + 112);
    v30 = *(v0 + 152);
    v1 = *(v0 + 72);
    v2 = *(v0 + 80);
    v3 = *(v0 + 56);
    v26 = *(v0 + 200);
    v4 = *(v0 + 16);
    v5 = *(v0 + 48);
    v22 = *(v0 + 40);
    v23 = *(v0 + 64);
    v24 = *(v0 + 32);
    *(v0 + 168) = *(v4 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
    v6 = *(v4 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v7 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
    if (!*(v0 + 205))
    {
      v7 = &enum case for MAGOutputEventSource.liveDetection(_:);
    }

    (*(v1 + 104))(v2, *v7, v23);
    (*(v5 + 104))(v3, enum case for MAGOutputEventEnvironment.angel(_:), v22);
    static MAGOutputEvent.peopleDetection(closestPerson:depth:closestPersonAction:source:environment:)();

    (*(v5 + 8))(v3, v22);
    (*(v1 + 8))(v2, v23);
    type metadata accessor for MainActor();
    *(v0 + 176) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
    v11 = sub_100007970;
  }

  else
  {
    v31 = *(v0 + 120);
    v12 = *(v0 + 88);
    v13 = *(v0 + 72);
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    v29 = *(v0 + 200);
    v16 = *(v0 + 16);
    v17 = *(v0 + 40);
    v25 = *(v0 + 64);
    v27 = *(v0 + 32);
    *(v0 + 184) = *(v16 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
    v18 = *(v16 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v19 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
    if (!*(v0 + 204))
    {
      v19 = &enum case for MAGOutputEventSource.liveDetection(_:);
    }

    (*(v13 + 104))(v12, *v19, v25);
    (*(v14 + 104))(v15, enum case for MAGOutputEventEnvironment.angel(_:), v17);
    static MAGOutputEvent.peopleDetection(closestPerson:depth:source:environment:)();
    (*(v14 + 8))(v15, v17);
    (*(v13 + 8))(v12, v25);
    type metadata accessor for MainActor();
    *(v0 + 192) = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v20;
    v11 = sub_100007A48;
  }

  return _swift_task_switch(v11, v8, v10);
}

uint64_t sub_100007970()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[7];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v6 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100007A48()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v9 = v0[7];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v6 + 8))(v3, v5);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100007B20()
{
  v15 = *(v0 + 120);
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v14 = *(v0 + 200);
  v5 = *(v0 + 16);
  v6 = *(v0 + 40);
  v12 = *(v0 + 64);
  v13 = *(v0 + 32);
  *(v0 + 184) = *(v5 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  v7 = *(v5 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v8 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v0 + 204))
  {
    v8 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v2 + 104))(v1, *v8, v12);
  (*(v3 + 104))(v4, enum case for MAGOutputEventEnvironment.angel(_:), v6);
  static MAGOutputEvent.peopleDetection(closestPerson:depth:source:environment:)();
  (*(v3 + 8))(v4, v6);
  (*(v2 + 8))(v1, v12);
  type metadata accessor for MainActor();
  *(v0 + 192) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100007A48, v10, v9);
}

uint64_t sub_100007D20(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for MAGOutputEventEnvironment();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for MAGOutputEventSource();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v9 = type metadata accessor for MAGOutputEvent();
  v2[20] = v9;
  v10 = *(v9 - 8);
  v2[21] = v10;
  v11 = *(v10 + 64) + 15;
  v2[22] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v2[23] = v12;
  v13 = *(v12 - 8);
  v2[24] = v13;
  v14 = *(v13 + 64) + 15;
  v2[25] = swift_task_alloc();
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v2[26] = v15;
  v16 = *(v15 - 8);
  v2[27] = v16;
  v17 = *(v16 + 64) + 15;
  v2[28] = swift_task_alloc();
  v18 = type metadata accessor for DispatchQoS();
  v2[29] = v18;
  v19 = *(v18 - 8);
  v2[30] = v19;
  v20 = *(v19 + 64) + 15;
  v2[31] = swift_task_alloc();
  v21 = type metadata accessor for DetectedDoor();
  v2[32] = v21;
  v22 = *(v21 - 8);
  v2[33] = v22;
  v23 = *(v22 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v24 = sub_10000D3B8(&qword_10004F8A8, &qword_100038588);
  v2[36] = v24;
  v25 = *(v24 - 8);
  v2[37] = v25;
  v26 = *(v25 + 64) + 15;
  v2[38] = swift_task_alloc();
  v27 = *(*(sub_10000D3B8(&qword_10004F8B0, &qword_100038590) - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v28 = *(*(sub_10000D3B8(&qword_10004F8B8, &qword_100038598) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();

  return _swift_task_switch(sub_100008104, 0, 0);
}

uint64_t sub_100008104()
{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_doorDetectionService;
  v0[43] = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_doorDetectionService;
  v0[44] = *(v1 + v2);
  v0[45] = objc_opt_self();
  v0[46] = type metadata accessor for MainActor();

  v0[47] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000081CC, v4, v3);
}

uint64_t sub_1000081CC()
{
  v1 = v0[47];
  v2 = v0[45];

  v0[48] = [v2 mainScreen];

  return _swift_task_switch(sub_100008254, 0, 0);
}

uint64_t sub_100008254()
{
  v1 = *(v0 + 368);
  *(v0 + 392) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000082E0, v3, v2);
}

uint64_t sub_1000082E0()
{
  v2 = v0[48];
  v1 = v0[49];

  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = *(&async function pointer to dispatch thunk of MAGDoorDetectionService.detectDoorsWithFrame(frame:size:detectDecorations:) + 1);
  v14 = (&async function pointer to dispatch thunk of MAGDoorDetectionService.detectDoorsWithFrame(frame:size:detectDecorations:) + async function pointer to dispatch thunk of MAGDoorDetectionService.detectDoorsWithFrame(frame:size:detectDecorations:));
  v8 = swift_task_alloc();
  v0[50] = v8;
  *v8 = v0;
  v8[1] = sub_1000083C4;
  v9 = v0[44];
  v10 = v0[12];
  v11.n128_u64[0] = v4;
  v12.n128_u64[0] = v6;

  return v14(v10, 1, v11, v12);
}

uint64_t sub_1000083C4(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 408) = a1;

  return _swift_task_switch(sub_1000084E4, 0, 0);
}

uint64_t sub_1000084E4()
{
  v1 = *(v0 + 408);
  if (!v1)
  {
    goto LABEL_22;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    v39 = *(v0 + 104);

    v40 = *(v39 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
    v41 = dispatch thunk of MAGPulseFeedbackProcessor.doorToneGenerator.getter();

    [v41 stopPulse];
LABEL_22:
    v43 = *(v0 + 328);
    v42 = *(v0 + 336);
    v45 = *(v0 + 312);
    v44 = *(v0 + 320);
    v46 = *(v0 + 304);
    v48 = *(v0 + 272);
    v47 = *(v0 + 280);
    v49 = *(v0 + 248);
    v50 = *(v0 + 224);
    v51 = *(v0 + 200);
    v89 = *(v0 + 176);
    v92 = *(v0 + 152);
    v96 = *(v0 + 128);

    v52 = *(v0 + 8);

    return v52();
  }

  v3 = *(v0 + 336);
  v4 = *(v0 + 296);
  v95 = *(v0 + 288);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  v87 = *(v0 + 408);
  v83 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v81 = *(v6 + 16);
  v81(v3);
  v80 = *(v6 + 56);
  v7 = v80(v3, 0, 1, v5);
  v10 = 0;
  v11 = (v4 + 56);
  v12 = (v4 + 48);
  v85 = v6;
  v88 = (v6 + 8);
  v91 = (v6 + 32);
  v13 = 3.4028e38;
  while (1)
  {
    if (v10 == v2)
    {
      v14 = 1;
      v10 = v2;
    }

    else
    {
      if (v10 >= *(v87 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return _swift_task_switch(v7, v8, v9);
      }

      v16 = *(v0 + 304);
      v15 = *(v0 + 312);
      v17 = *(v0 + 256);
      v18 = v83 + *(v85 + 72) * v10;
      v19 = *(v95 + 48);
      *v16 = v10;
      (v81)(v16 + v19, v18, v17);
      sub_10000E284(v16, v15, &qword_10004F8A8, &qword_100038588);
      v14 = 0;
      ++v10;
    }

    v21 = *(v0 + 312);
    v20 = *(v0 + 320);
    v22 = *(v0 + 288);
    (*v11)(v21, v14, 1, v22);
    sub_10000E284(v21, v20, &qword_10004F8B0, &qword_100038590);
    if ((*v12)(v20, 1, v22) == 1)
    {
      break;
    }

    v23 = *v91;
    (*v91)(*(v0 + 280), *(v0 + 320) + *(v95 + 48), *(v0 + 256));
    if ((DetectedDoor.depth.getter() & 0x100000000) != 0)
    {
      goto LABEL_12;
    }

    v24 = *(v0 + 280);
    v7 = DetectedDoor.depth.getter();
    if ((v7 & 0x100000000) != 0)
    {
      goto LABEL_33;
    }

    if (*&v7 > 4.0)
    {
LABEL_12:
      v25 = *(v0 + 280);
      v26 = *(v0 + 96);
      v27 = v2;
      v28 = *(*(v0 + 104) + *(v0 + 344));

      DetectedDoor.normalizedBbox.getter();
      dispatch thunk of MAGDoorDetectionService.getAverageRectDistance(_:inFrame:)();
      v2 = v27;

      DetectedDoor.depth.setter();
    }

    v29 = *(v0 + 280);
    v30 = DetectedDoor.depth.getter();
    if ((v30 & &_mh_execute_header) != 0)
    {
      v31 = 3.4028e38;
    }

    else
    {
      v31 = *&v30;
    }

    if (v31 < v13)
    {
      v32 = *(v0 + 336);
      v33 = *(v0 + 280);
      v34 = *(v0 + 256);
      sub_10000E35C(v32, &qword_10004F8B8, &qword_100038598);
      v23(v32, v33, v34);
      v7 = v80(v32, 0, 1, v34);
      v13 = v31;
    }

    else
    {
      v7 = (*v88)(*(v0 + 280), *(v0 + 256));
    }
  }

  v35 = *(v0 + 328);
  v37 = *(v0 + 256);
  v36 = *(v0 + 264);
  sub_10000E2EC(*(v0 + 336), v35);
  if ((*(v36 + 48))(v35, 1, v37) == 1)
  {
    v38 = *(v0 + 328);
    sub_10000E35C(*(v0 + 336), &qword_10004F8B8, &qword_100038598);

    sub_10000E35C(v38, &qword_10004F8B8, &qword_100038598);
    goto LABEL_22;
  }

  (*v91)(*(v0 + 272), *(v0 + 328), *(v0 + 256));
  if (v13 < 3.4028e38)
  {
    v54 = *(v0 + 240);
    v55 = *(v0 + 248);
    v56 = *(v0 + 224);
    v97 = *(v0 + 232);
    v57 = *(v0 + 208);
    v58 = *(v0 + 216);
    v59 = *(v0 + 104);
    sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
    v93 = static OS_dispatch_queue.main.getter();
    v60 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v13;
    *(v0 + 48) = sub_10000E3F4;
    *(v0 + 56) = v61;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10000288C;
    *(v0 + 40) = &unk_100049E78;
    v62 = _Block_copy((v0 + 16));

    static DispatchQoS.unspecified.getter();
    *(v0 + 88) = &_swiftEmptyArrayStorage;
    sub_10000DC2C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000D3B8(&unk_100050430, &unk_100038570);
    sub_10000E1A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v62);

    (*(v58 + 8))(v56, v57);
    (*(v54 + 8))(v55, v97);
    v63 = *(v0 + 56);
  }

  v64 = *(v0 + 344);
  v94 = *(v0 + 272);
  v98 = *(v0 + 368);
  v66 = *(v0 + 192);
  v65 = *(v0 + 200);
  v67 = *(v0 + 184);
  v90 = *(v0 + 176);
  v68 = *(v0 + 144);
  v69 = *(v0 + 128);
  v82 = *(v0 + 136);
  v84 = *(v0 + 152);
  v70 = *(v0 + 120);
  v86 = *(v0 + 112);
  v71 = *(v0 + 104);
  Date.init()();
  v72 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
  swift_beginAccess();
  (*(v66 + 40))(v71 + v72, v65, v67);
  swift_endAccess();
  *(v0 + 416) = *(v71 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  v73 = *(v71 + v64);

  v74 = dispatch thunk of MAGDoorDetectionService.openStateConfidenceThreshold.getter();

  Float.init(truncating:)();

  v75 = *(v71 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v76 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v0 + 432))
  {
    v76 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v68 + 104))(v84, *v76, v82);
  (*(v70 + 104))(v69, enum case for MAGOutputEventEnvironment.angel(_:), v86);
  static MAGOutputEvent.doorDetection(_:_:openStateConfidenceThreshold:source:environment:)();

  (*(v70 + 8))(v69, v86);
  (*(v68 + 8))(v84, v82);
  *(v0 + 424) = static MainActor.shared.getter();
  v77 = dispatch thunk of Actor.unownedExecutor.getter();
  v79 = v78;
  v7 = sub_100008DEC;
  v8 = v77;
  v9 = v79;

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100008DEC()
{
  v2 = v0[52];
  v1 = v0[53];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_100008E8C, 0, 0);
}

uint64_t sub_100008E8C()
{
  v1 = v0[42];
  (*(v0[33] + 8))(v0[34], v0[32]);
  sub_10000E35C(v1, &qword_10004F8B8, &qword_100038598);
  v3 = v0[41];
  v2 = v0[42];
  v5 = v0[39];
  v4 = v0[40];
  v6 = v0[38];
  v8 = v0[34];
  v7 = v0[35];
  v9 = v0[31];
  v10 = v0[28];
  v11 = v0[25];
  v14 = v0[22];
  v15 = v0[19];
  v16 = v0[16];

  v12 = v0[1];

  return v12();
}

void sub_100008FCC(float a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);

    v5 = a1 * 1000.0;
    if (COERCE_INT(fabs(a1 * 1000.0)) > 2139095039)
    {
      __break(1u);
    }

    else if (v5 > -2147500000.0)
    {
      if (v5 < 2147500000.0)
      {
        dispatch thunk of MAGPulseFeedbackProcessor.processDoorPulseFeedback(depth:)();

        return;
      }

LABEL_9:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_100009094(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for MAGOutputEventEnvironment();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for MAGOutputEventSource();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = *(*(sub_10000D3B8(&qword_10004F8A0, &qword_100038580) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v11 = type metadata accessor for MAGOutputEvent();
  v3[15] = v11;
  v12 = *(v11 - 8);
  v3[16] = v12;
  v13 = *(v12 + 64) + 15;
  v3[17] = swift_task_alloc();
  v14 = type metadata accessor for Date();
  v3[18] = v14;
  v15 = *(v14 - 8);
  v3[19] = v15;
  v16 = *(v15 + 64) + 15;
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1000092A4, 0, 0);
}

uint64_t sub_1000092A4()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v20 = *(v0 + 88);
  v21 = *(v0 + 104);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);
  v22 = *(v0 + 64);
  v23 = *(v0 + 80);
  v8 = *(v0 + 40);
  v24 = *(v0 + 48);
  v25 = *(v0 + 136);
  Date.init()();
  v9 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
  swift_beginAccess();
  (*(v2 + 40))(v7 + v9, v1, v3);
  swift_endAccess();
  *(v0 + 168) = *(v7 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  v10 = type metadata accessor for DetectedObject();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v4, v8, v10);
  (*(v11 + 56))(v4, 0, 1, v10);
  v12 = *(v7 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);

  v13 = v12;
  v14 = dispatch thunk of MAGObjectUnderstandingService.objectPointerParentNode.getter();

  SCNNode.base.getter();
  SIMD3<>.init(_:)();
  v15 = *(v7 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v16 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v0 + 184))
  {
    v16 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v5 + 104))(v21, *v16, v20);
  (*(v6 + 104))(v23, enum case for MAGOutputEventEnvironment.angel(_:), v22);
  static MAGOutputEvent.objectUnderstanding(detectedObject:cameraPosition:detectedOccupants:source:environment:)();
  (*(v6 + 8))(v23, v22);
  (*(v5 + 8))(v21, v20);
  sub_10000E35C(v4, &qword_10004F8A0, &qword_100038580);
  type metadata accessor for MainActor();
  *(v0 + 176) = static MainActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000095D8, v18, v17);
}

uint64_t sub_1000095D8()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  v9 = v0[10];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v5 + 8))(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000096B4(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for MAGOutputEventEnvironment();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = type metadata accessor for MAGOutputEventSource();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = type metadata accessor for MAGOutputEvent();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v13 = type metadata accessor for Date();
  v3[17] = v13;
  v14 = *(v13 - 8);
  v3[18] = v14;
  v15 = *(v14 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10000988C, 0, 0);
}

uint64_t sub_10000988C()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 72);
  v18 = *(v0 + 88);
  v19 = *(v0 + 64);
  v8 = *(v0 + 56);
  v21 = *(v0 + 48);
  v22 = *(v0 + 128);
  v20 = *(v0 + 40);
  Date.init()();
  v9 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
  swift_beginAccess();
  (*(v2 + 40))(v8 + v9, v1, v3);
  swift_endAccess();
  *(v0 + 160) = *(v8 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  v10 = *(v8 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);

  v11 = v10;
  v12 = dispatch thunk of MAGObjectUnderstandingService.objectPointerParentNode.getter();

  SCNNode.base.getter();
  SIMD3<>.init(_:)();
  v13 = *(v8 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v14 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v0 + 176))
  {
    v14 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v5 + 104))(v4, *v14, v18);
  (*(v7 + 104))(v6, enum case for MAGOutputEventEnvironment.angel(_:), v19);
  static MAGOutputEvent.objectUnderstanding(detectedObjectGroup:cameraPosition:detectedOccupants:source:environment:)();
  (*(v7 + 8))(v6, v19);
  (*(v5 + 8))(v4, v18);
  type metadata accessor for MainActor();
  *(v0 + 168) = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100009B30, v16, v15);
}

uint64_t sub_100009B30()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[10];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v5 + 8))(v4, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100009C00(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for MAGOutputEventEnvironment();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for MAGOutputEventSource();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for MAGOutputEvent();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100009DD4, 0, 0);
}

uint64_t sub_100009DD4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 72);
  v7 = *(v0 + 64);
  v18 = *(v0 + 80);
  v19 = *(v0 + 56);
  v8 = *(v0 + 48);
  v20 = *(v0 + 40);
  v21 = *(v0 + 120);
  Date.init()();
  v9 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
  swift_beginAccess();
  (*(v2 + 40))(v8 + v9, v1, v3);
  swift_endAccess();
  *(v0 + 152) = *(v8 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  v10 = *(v8 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);

  v11 = v10;
  v12 = dispatch thunk of MAGObjectUnderstandingService.objectPointerParentNode.getter();

  SCNNode.base.getter();
  SIMD3<>.init(_:)();
  v13 = *(v8 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v14 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v0 + 168))
  {
    v14 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v5 + 104))(v4, *v14, v18);
  (*(v7 + 104))(v6, enum case for MAGOutputEventEnvironment.angel(_:), v19);
  static MAGOutputEvent.objectUnderstanding(furnitureDetections:cameraPosition:source:environment:)();
  (*(v7 + 8))(v6, v19);
  (*(v5 + 8))(v4, v18);
  type metadata accessor for MainActor();
  *(v0 + 160) = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000A06C, v16, v15);
}

uint64_t sub_10000A06C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[9];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v5 + 8))(v4, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10000A13C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10000A15C, 0, 0);
}

uint64_t sub_10000A15C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (*(v0 + 32) == 1)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v4 = *(v3 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);
    dispatch thunk of MAGObjectUnderstandingService.understandObjects(frame:)();

    v5 = *(v3 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_sceneRenderer);
    [v2 timestamp];
    [v5 updateAtTime:?];
  }

  v6 = *(v0 + 8);

  return v6();
}

void sub_10000A284()
{
  v1 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v2 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService);
  if (v6 == 1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_scene);
    v4 = v2;
    v5 = v3;
    dispatch thunk of MAGObjectUnderstandingService.startService(with:)();
  }

  else
  {
    v5 = v2;
    dispatch thunk of MAGObjectUnderstandingService.stopService()();
  }
}

uint64_t sub_10000A360(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for DetectedTextBlock();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for DetectedTextAndLanguage();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = type metadata accessor for MAGOutputEventEnvironment();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = type metadata accessor for MAGOutputEventSource();
  v2[19] = v12;
  v13 = *(v12 - 8);
  v2[20] = v13;
  v14 = *(v13 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v15 = type metadata accessor for MAGOutputAnnouncement();
  v2[25] = v15;
  v16 = *(v15 - 8);
  v2[26] = v16;
  v17 = *(v16 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v18 = type metadata accessor for MAGOutputEvent();
  v2[29] = v18;
  v19 = *(v18 - 8);
  v2[30] = v19;
  v20 = *(v19 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v21 = type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType();
  v2[35] = v21;
  v22 = *(v21 - 8);
  v2[36] = v22;
  v23 = *(v22 + 64) + 15;
  v2[37] = swift_task_alloc();
  v24 = type metadata accessor for Date();
  v2[38] = v24;
  v25 = *(v24 - 8);
  v2[39] = v25;
  v26 = *(v25 + 64) + 15;
  v2[40] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[41] = static MainActor.shared.getter();
  v28 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000A72C, v28, v27);
}

uint64_t sub_10000A72C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 72);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v0 + 312);
    v6 = *(v0 + 320);
    v8 = *(v0 + 296);
    v7 = *(v0 + 304);
    v9 = *(v0 + 280);
    v10 = *(v0 + 288);
    v11 = *(v0 + 64);
    Date.init()();
    v12 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
    swift_beginAccess();
    (*(v5 + 40))(&v4[v12], v6, v7);
    swift_endAccess();
    MAGPointAndSpeakEvent.eventType.getter();
    v13 = (*(v10 + 88))(v8, v9);
    v103 = v4;
    if (v13 == enum case for MAGPointAndSpeakEvent.PointAndSpeakEventType.processPointAndSpeakUpdate(_:))
    {
      v14 = *(v0 + 296);
      v95 = *(v0 + 256);
      v100 = (v0 + 256);
      v15 = *(v0 + 176);
      v16 = *(v0 + 152);
      v17 = *(v0 + 160);
      v19 = *(v0 + 136);
      v18 = *(v0 + 144);
      v86 = v16;
      v91 = *(v0 + 128);
      (*(*(v0 + 288) + 96))(v14, *(v0 + 280));
      v20 = *v14;
      v21 = *&v4[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine];
      v22 = *&v4[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v23 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
      if (!*(v0 + 337))
      {
        v23 = &enum case for MAGOutputEventSource.magAction(_:);
      }

      (*(v17 + 104))(v15, *v23, v86);
      (*(v19 + 104))(v18, enum case for MAGOutputEventEnvironment.angel(_:), v91);
      static MAGOutputEvent.pointAndSpeak(_:source:environment:)();

      (*(v19 + 8))(v18, v91);
      (*(v17 + 8))(v15, v86);
    }

    else
    {
      if (v13 == enum case for MAGPointAndSpeakEvent.PointAndSpeakEventType.handDetected(_:))
      {
        v92 = *(v0 + 272);
        v82 = *(v0 + 224);
        v25 = *(v0 + 208);
        v96 = *(v0 + 200);
        v26 = *(v0 + 192);
        v27 = v4;
        v28 = *(v0 + 160);
        v80 = *(v0 + 152);
        v29 = *(v0 + 136);
        v30 = *(v0 + 144);
        v31 = *(v0 + 128);
        v84 = v31;
        v87 = *&v27[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine];
        v32 = v27;
        (*(v25 + 104))();
        v33 = *&v32[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        v34 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
        if (!*(v0 + 338))
        {
          v34 = &enum case for MAGOutputEventSource.magAction(_:);
        }

        (*(v28 + 104))(v26, *v34, v80);
        (*(v29 + 104))(v30, enum case for MAGOutputEventEnvironment.angel(_:), v84);
        static MAGOutputEvent.announcement(_:source:environment:)();
        (*(v29 + 8))(v30, v84);
        (*(v28 + 8))(v26, v80);
        (*(v25 + 8))(v82, v96);
        dispatch thunk of MAGOutputEngine.schedule(_:)();
        v24 = (v0 + 272);
        goto LABEL_11;
      }

      if (v13 != enum case for MAGPointAndSpeakEvent.PointAndSpeakEventType.handTooClose(_:))
      {
        if (v13 == enum case for MAGPointAndSpeakEvent.PointAndSpeakEventType.handleNoContentAvailable(_:))
        {
          v24 = (v0 + 120);
          v71 = *(v0 + 120);
          v79 = *(v0 + 248);
          v81 = *(v0 + 240);
          v83 = *(v0 + 232);
          v75 = *(v0 + 168);
          v99 = *(v0 + 160);
          v94 = *(v0 + 152);
          v76 = *(v0 + 136);
          v77 = *(v0 + 128);
          v78 = *(v0 + 144);
          v35 = v0 + 112;
          v59 = *(v0 + 112);
          v36 = (v0 + 104);
          v73 = *(v0 + 104);
          v85 = *(v0 + 96);
          v90 = *(v0 + 88);
          v102 = *(v0 + 80);
          String.localized.getter();
          v60 = [objc_opt_self() currentLanguageCode];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          DetectedTextAndLanguage.init(text:locale:)();
          sub_10000D3B8(&qword_10004F848, &qword_100038318);
          v61 = *(v59 + 72);
          v62 = (*(v59 + 80) + 32) & ~*(v59 + 80);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_100037F70;
          (*(v59 + 16))(v63 + v62, v71, v73);
          y = CGRectZero.origin.y;
          width = CGRectZero.size.width;
          height = CGRectZero.size.height;
          DetectedTextBlock.init(stringLocaleMap:normalizedBbox:confidence:detectLanguages:outputRegion:)();
          v74 = *&v103[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine];
          sub_10000D3B8(&qword_10004F850, &qword_100038320);
          v67 = *(v90 + 72);
          v68 = (*(v90 + 80) + 32) & ~*(v90 + 80);
          v72 = swift_allocObject();
          *(v72 + 16) = xmmword_100037F70;
          (*(v90 + 16))(v72 + v68, v85, v102);
          v69 = *&v103[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences];
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.getter();

          v70 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
          if (!*(v0 + 336))
          {
            v70 = &enum case for MAGOutputEventSource.liveDetection(_:);
          }

          (*(v99 + 104))(v75, *v70, v94);
          (*(v76 + 104))(v78, enum case for MAGOutputEventEnvironment.app(_:), v77);
          static MAGOutputEvent.pointAndSpeak(_:source:environment:)();

          (*(v76 + 8))(v78, v77);
          (*(v99 + 8))(v75, v94);
          dispatch thunk of MAGOutputEngine.schedule(_:)();

          (*(v81 + 8))(v79, v83);
          (*(v90 + 8))(v85, v102);
        }

        else
        {
          v24 = (v0 + 296);
          v35 = v0 + 288;
          v36 = (v0 + 280);
        }

        goto LABEL_12;
      }

      v100 = (v0 + 264);
      v49 = *(v0 + 264);
      v50 = *(v0 + 208);
      v89 = *(v0 + 216);
      v98 = *(v0 + 200);
      v51 = *(v0 + 184);
      v53 = *(v0 + 152);
      v52 = *(v0 + 160);
      v54 = *(v0 + 136);
      v55 = *(v0 + 144);
      v56 = v4;
      v57 = *(v0 + 128);
      v58 = *&v56[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine];
      (*(v50 + 104))();
      (*(v52 + 104))(v51, enum case for MAGOutputEventSource.magAction(_:), v53);
      (*(v54 + 104))(v55, enum case for MAGOutputEventEnvironment.angel(_:), v57);

      static MAGOutputEvent.announcement(_:source:environment:)();
      (*(v54 + 8))(v55, v57);
      (*(v52 + 8))(v51, v53);
      (*(v50 + 8))(v89, v98);
    }

    dispatch thunk of MAGOutputEngine.schedule(_:)();
    v24 = v100;
LABEL_11:

    v35 = v0 + 240;
    v36 = (v0 + 232);
LABEL_12:
    (*(*v35 + 8))(*v24, *v36);
  }

  v37 = *(v0 + 320);
  v38 = *(v0 + 296);
  v40 = *(v0 + 264);
  v39 = *(v0 + 272);
  v42 = *(v0 + 248);
  v41 = *(v0 + 256);
  v44 = *(v0 + 216);
  v43 = *(v0 + 224);
  v46 = *(v0 + 184);
  v45 = *(v0 + 192);
  v88 = *(v0 + 176);
  v93 = *(v0 + 168);
  v97 = *(v0 + 144);
  v101 = *(v0 + 120);
  v104 = *(v0 + 96);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_10000B140(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10000B200, 0, 0);
}

uint64_t sub_10000B200()
{
  v1 = v0[2];
  v0[7] = *(v0[3] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pointAndSpeakService);

  v2 = [v1 capturedImage];
  v3 = type metadata accessor for MAGCVPixelBufferWrapper();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = MAGCVPixelBufferWrapper.init(_:)();
  v0[8] = v6;
  v7 = *(&async function pointer to dispatch thunk of MAGPointAndSpeakService.predictHandPose(fromPixelBufferWrapper:) + 1);
  v10 = (&async function pointer to dispatch thunk of MAGPointAndSpeakService.predictHandPose(fromPixelBufferWrapper:) + async function pointer to dispatch thunk of MAGPointAndSpeakService.predictHandPose(fromPixelBufferWrapper:));
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_10000B310;

  return v10(v6);
}

uint64_t sub_10000B310()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000B45C, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];

    v6 = v3[6];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_10000B45C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  static AXLog.magangel.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  if (v6)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Magnifier Angel requests hand pose prediction, but none could be created", v11, 2u);
  }

  (*(v9 + 8))(v8, v10);
  v12 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10000B58C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Logger();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for MAGOutputEventEnvironment();
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v9 = type metadata accessor for MAGOutputEventSource();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v12 = type metadata accessor for MAGOutputEvent();
  v2[16] = v12;
  v13 = *(v12 - 8);
  v2[17] = v13;
  v14 = *(v13 + 64) + 15;
  v2[18] = swift_task_alloc();
  v15 = type metadata accessor for Date();
  v2[19] = v15;
  v16 = *(v15 - 8);
  v2[20] = v16;
  v17 = *(v16 + 64) + 15;
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_10000B7BC, 0, 0);
}

uint64_t sub_10000B7BC()
{
  v1 = v0[5];
  v0[22] = *(v0[6] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_imageCaptionService);
  v2 = type metadata accessor for MAGCVPixelBufferWrapper();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v5 = v1;
  v6 = MAGCVPixelBufferWrapper.init(_:)();
  v0[23] = v6;
  v7 = async function pointer to MAGImageCaptionService.generateImageCaption(for:)[1];
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_10000B8A0;

  return MAGImageCaptionService.generateImageCaption(for:)(v6);
}

uint64_t sub_10000B8A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 192);
  v8 = *v3;
  *(*v3 + 200) = v2;

  if (v2)
  {
    v9 = sub_10000BD20;
  }

  else
  {
    v11 = v6[22];
    v10 = v6[23];

    v6[26] = a2;
    v6[27] = a1;
    v9 = sub_10000B9E4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10000B9E4()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 112);
  v15 = *(v0 + 104);
  v16 = *(v0 + 120);
  v18 = *(v0 + 96);
  v19 = *(v0 + 144);
  v7 = *(v0 + 88);
  v17 = *(v0 + 80);
  v8 = *(v0 + 48);
  Date.init()();
  v9 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
  swift_beginAccess();
  (*(v3 + 40))(v8 + v9, v4, v5);
  swift_endAccess();
  *(v0 + 224) = *(v8 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);

  String.localized.getter();

  v10 = *(v8 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v11 = &enum case for MAGOutputEventSource.liveDetectionActivity(_:);
  if (!*(v0 + 240))
  {
    v11 = &enum case for MAGOutputEventSource.liveDetection(_:);
  }

  (*(v6 + 104))(v16, *v11, v15);
  (*(v7 + 104))(v18, enum case for MAGOutputEventEnvironment.angel(_:), v17);
  static MAGOutputEvent.imageCaptionResult(_:source:environment:)();

  (*(v7 + 8))(v18, v17);
  (*(v6 + 8))(v16, v15);
  type metadata accessor for MainActor();
  *(v0 + 232) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000BC50, v13, v12);
}

uint64_t sub_10000BC50()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v4 + 8))(v3, v5);
  v6 = v0[21];
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10000BD20()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[9];

  static AXLog.magangel.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Magnifier Angel could not generate image descrioption: %@", v9, 0xCu);
    sub_10000E35C(v10, &unk_100050B50, &qword_100039760);
  }

  else
  {
    v12 = v0[25];
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  v13 = v0[21];
  v14 = v0[18];
  v15 = v0[15];
  v16 = v0[12];
  v17 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10000BEEC()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  __chkstk_darwin(v1);
  v56 = (v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v55 - 8);
  v4 = *(v53 + 64);
  __chkstk_darwin(v55);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v42 - v17;
  v54 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_detectionModeFlashlightDispatchItem;
  if (*&v0[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_detectionModeFlashlightDispatchItem])
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  v52 = sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
  v44 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v47 = *(v12 + 8);
  v47(v16, v11);
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  v64 = sub_10000E164;
  v65 = v19;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_10000288C;
  v63 = &unk_100049DD8;
  v20 = _Block_copy(&aBlock);
  v49 = v0;
  v21 = v0;
  v46 = v11;
  v43 = v21;

  static DispatchQoS.unspecified.getter();
  aBlock = &_swiftEmptyArrayStorage;
  sub_10000DC2C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags);
  v45 = v12 + 8;
  v22 = sub_10000D3B8(&unk_100050430, &unk_100038570);
  v48 = v16;
  v42[1] = v22;
  sub_10000E1A4();
  v23 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v44;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v53 + 8))(v6, v23);
  (*(v50 + 8))(v10, v51);
  v25 = v11;
  v26 = v47;
  v47(v18, v25);
  v27 = swift_allocObject();
  v28 = v43;
  *(v27 + 16) = v43;
  v64 = sub_10000E250;
  v65 = v27;
  aBlock = _NSConcreteStackBlock;
  v61 = 1107296256;
  v62 = sub_10000288C;
  v63 = &unk_100049E28;
  _Block_copy(&aBlock);
  v59 = &_swiftEmptyArrayStorage;
  v29 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v30 = type metadata accessor for DispatchWorkItem();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = DispatchWorkItem.init(flags:block:)();

  v34 = *&v49[v54];
  *&v49[v54] = v33;

  v35 = static OS_dispatch_queue.main.getter();
  v36 = v48;
  static DispatchTime.now()();
  v38 = v56;
  v37 = v57;
  *v56 = 15;
  v39 = v58;
  (*(v37 + 104))(v38, enum case for DispatchTimeInterval.seconds(_:), v58);
  + infix(_:_:)();
  (*(v37 + 8))(v38, v39);
  v40 = v46;
  v26(v36, v46);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v26)(v18, v40);
}

void sub_10000C548(uint64_t a1)
{
  v3 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = [objc_opt_self() defaultDeviceWithMediaType:AVMediaTypeVideo];
  if (!v7)
  {
    return;
  }

  v8 = v7;
  if ([v7 torchMode] == 1 && a1 == 0)
  {
    v11 = &unk_100038568;
  }

  else
  {
    if ([v8 torchMode])
    {
      v10 = 0;
    }

    else
    {
      v10 = a1 == 1;
    }

    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = &unk_100038558;
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v1;
  v14 = v1;
  sub_1000107D4(0, 0, v6, v11, v13);

LABEL_14:
  v18 = 0;
  if ([v8 lockForConfiguration:&v18])
  {
    v15 = v18;
    if ([v8 isTorchModeSupported:a1])
    {
      [v8 setTorchMode:a1];
    }

    [v8 unlockForConfiguration];
  }

  else
  {
    v16 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_10000C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for MAGOutputEventEnvironment();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = type metadata accessor for MAGOutputEventSource();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = type metadata accessor for MAGOutputAnnouncement();
  v4[9] = v11;
  v12 = *(v11 - 8);
  v4[10] = v12;
  v13 = *(v12 + 64) + 15;
  v4[11] = swift_task_alloc();
  v14 = type metadata accessor for MAGOutputEvent();
  v4[12] = v14;
  v15 = *(v14 - 8);
  v4[13] = v15;
  v16 = *(v15 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10000C97C, 0, 0);
}

uint64_t sub_10000C97C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v12 = v0[14];
  v13 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];
  v0[15] = *(v0[2] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  (*(v2 + 104))(v1, enum case for MAGOutputAnnouncement.automaticFlashlightOff(_:));
  (*(v5 + 104))(v3, enum case for MAGOutputEventSource.magAction(_:), v4);
  (*(v6 + 104))(v7, enum case for MAGOutputEventEnvironment.angel(_:), v8);

  static MAGOutputEvent.announcement(_:source:environment:)();
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v13);
  type metadata accessor for MainActor();
  v0[16] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000EC54, v10, v9);
}

uint64_t sub_10000CB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for MAGOutputEventEnvironment();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = type metadata accessor for MAGOutputEventSource();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = type metadata accessor for MAGOutputAnnouncement();
  v4[9] = v11;
  v12 = *(v11 - 8);
  v4[10] = v12;
  v13 = *(v12 + 64) + 15;
  v4[11] = swift_task_alloc();
  v14 = type metadata accessor for MAGOutputEvent();
  v4[12] = v14;
  v15 = *(v14 - 8);
  v4[13] = v15;
  v16 = *(v15 + 64) + 15;
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10000CD08, 0, 0);
}

uint64_t sub_10000CD08()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v12 = v0[14];
  v13 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[3];
  v0[15] = *(v0[2] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine);
  (*(v2 + 104))(v1, enum case for MAGOutputAnnouncement.tooDarkAutomaticFlashlightOn(_:));
  (*(v5 + 104))(v3, enum case for MAGOutputEventSource.magAction(_:), v4);
  (*(v6 + 104))(v7, enum case for MAGOutputEventEnvironment.angel(_:), v8);

  static MAGOutputEvent.announcement(_:source:environment:)();
  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v13);
  type metadata accessor for MainActor();
  v0[16] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000CEC0, v10, v9);
}

uint64_t sub_10000CEC0()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[8];
  v8 = v0[5];

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9();
}

id sub_10000CFC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGAngelDetectionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000D210(uint64_t *a1)
{
  v1 = *a1;
  if (sub_10003518C(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_10000D278(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (sub_10003518C(2, 26, 4, 0))
  {
    type metadata accessor for _TaskModifier2();
    type metadata accessor for ModifiedContent();
    sub_10000D36C();
  }

  else
  {
    type metadata accessor for _TaskModifier();
    type metadata accessor for ModifiedContent();
    sub_10000DC2C(&qword_10004F668, &type metadata accessor for _TaskModifier);
  }

  return swift_getWitnessTable();
}

unint64_t sub_10000D36C()
{
  result = qword_10004F660;
  if (!qword_10004F660)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F660);
  }

  return result;
}

uint64_t sub_10000D3B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_10000D400@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000D434@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10000D460(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000D4D8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000D558@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10000D5A0(uint64_t a1)
{
  v2 = sub_10000DC2C(&qword_10004F930, type metadata accessor for LaunchOptionsKey);
  v3 = sub_10000DC2C(&qword_10004F938, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D65C(uint64_t a1)
{
  v2 = sub_10000DC2C(&qword_10004F920, type metadata accessor for Role);
  v3 = sub_10000DC2C(&qword_10004F928, type metadata accessor for Role);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D718@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_10000D760(uint64_t a1)
{
  v2 = sub_10000DC2C(&qword_10004F838, type metadata accessor for SBUISystemApertureElementIdentifier);
  v3 = sub_10000DC2C(&qword_10004F840, type metadata accessor for SBUISystemApertureElementIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D828()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10000D864()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000D8B8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_10000D92C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t type metadata accessor for MAGAngelDetectionManager()
{
  result = qword_10004F780;
  if (!qword_10004F780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000DA08()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_10000DB14(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000DB24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000DB44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10000DC2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000DD04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DD3C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000DDD4;

  return sub_10000A360(a1, v1);
}

uint64_t sub_10000DDD4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000DF00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DF64(uint64_t a1)
{
  v2 = type metadata accessor for MAGAngelClientRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000DFC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000EC40;

  return sub_10000CB34(a1, v4, v5, v6);
}

uint64_t sub_10000E078(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000EC40;

  return sub_10000C7A8(a1, v4, v5, v6);
}

uint64_t sub_10000E12C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E18C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000E1A4()
{
  result = qword_10004F890;
  if (!qword_10004F890)
  {
    sub_10000E208(&unk_100050430, &unk_100038570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F890);
  }

  return result;
}

uint64_t sub_10000E208(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_10000E250()
{
  v1 = *(v0 + 16);
  sub_10000C548(0);
  *(v1 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_torchStatus) = 0;
}

uint64_t sub_10000E284(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000D3B8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000E2EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D3B8(&qword_10004F8B8, &qword_100038598);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E35C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000D3B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000E3BC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_10000E400()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 36, 7);
}

void sub_10000E440()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_100007108();
}

uint64_t sub_10000E44C()
{

  return _swift_deallocObject(v0, 44, 7);
}

uint64_t sub_10000E494()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000EC40;

  return sub_100007190(v2, v3, v4, v5);
}

uint64_t sub_10000E544()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000EC40;

  return sub_1000061EC(a1, v4, v5, v6);
}

uint64_t sub_10000E648()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000E690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EC40;

  return sub_1000063A0(a1, v4, v5, v7, v6);
}

uint64_t sub_10000E750()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000E790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DDD4;

  return sub_100006284(a1, v4, v5, v6);
}

uint64_t sub_10000E844(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10000E88C()
{
  result = qword_10004F8D8;
  if (!qword_10004F8D8)
  {
    sub_10000E844(255, &qword_10004F8D0, NSNumber_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F8D8);
  }

  return result;
}

void sub_10000E9E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10000EC80()
{
  v1 = OBJC_IVAR____TtC14MagnifierAngel27MAGAngelClientRequestStream_stream;
  v2 = sub_10000D3B8(&qword_100050480, &qword_100038948);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14MagnifierAngel27MAGAngelClientRequestStream_continuation;
  v4 = sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

void sub_10000ED9C()
{
  sub_10000EEF8(319, &qword_10004F9E8, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000EEF8(319, &unk_10004F9F0, &type metadata accessor for AsyncStream.Continuation);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10000EEC0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000EEF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MAGAngelClientRequest(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_10000EF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGSimulatedEvent();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 0xE)
  {
    return v5 - 13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000EFEC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 13);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for MAGSimulatedEvent();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10000F074()
{
  v0 = type metadata accessor for MAGSimulatedEvent();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

id sub_10000F0CC(void *a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for MAGAngelWindow();
  v3 = objc_msgSendSuper2(&v13, "initWithWindowScene:", a1);
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 clearColor];
  [v5 setBackgroundColor:v6];

  [v5 setClipsToBounds:1];
  sub_10000F388();
  AnyView.init<A>(_:)();
  v7 = _makeUIHostingController(_:tracksContentSize:secure:)();

  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  result = [v8 view];
  if (result)
  {
    v10 = result;
    v11 = [v4 clearColor];
    [v10 setBackgroundColor:v11];

    v12 = v7;
    [v5 setRootViewController:v8];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10000F330()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGAngelWindow();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000F388()
{
  result = qword_10004FB40;
  if (!qword_10004FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FB40);
  }

  return result;
}

uint64_t sub_10000F3DC(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v8 = *(v7 + 64) + 15;
  v2[19] = swift_task_alloc();
  v9 = type metadata accessor for DispatchTime();
  v2[20] = v9;
  v10 = *(v9 - 8);
  v2[21] = v10;
  v11 = *(v10 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v12 = type metadata accessor for MAGOutputEventEnvironment();
  v2[24] = v12;
  v13 = *(v12 - 8);
  v2[25] = v13;
  v14 = *(v13 + 64) + 15;
  v2[26] = swift_task_alloc();
  v15 = type metadata accessor for MAGOutputEventSource();
  v2[27] = v15;
  v16 = *(v15 - 8);
  v2[28] = v16;
  v17 = *(v16 + 64) + 15;
  v2[29] = swift_task_alloc();
  v18 = type metadata accessor for MAGOutputEvent();
  v2[30] = v18;
  v19 = *(v18 - 8);
  v2[31] = v19;
  v20 = *(v19 + 64) + 15;
  v2[32] = swift_task_alloc();
  v21 = type metadata accessor for MAGAdvancedEvent.AdvancedEventType();
  v2[33] = v21;
  v22 = *(v21 - 8);
  v2[34] = v22;
  v23 = *(v22 + 64) + 15;
  v2[35] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[36] = static MainActor.shared.getter();
  v25 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000F704, v25, v24);
}

uint64_t sub_10000F704()
{
  v1 = v0[36];
  v2 = v0[13];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v0[34];
    v6 = v0[35];
    v7 = v0[33];
    v8 = v0[12];
    MAGAdvancedEvent.eventType.getter();
    v9 = (*(v5 + 88))(v6, v7);
    if (v9 == enum case for MAGAdvancedEvent.AdvancedEventType.didGenerateFramingGuidance(_:))
    {
      v10 = v0[35];
      v11 = v0[32];
      v55 = v11;
      v57 = v0[31];
      v59 = v0[30];
      v12 = v0[28];
      v13 = v0[29];
      v14 = v0[26];
      v15 = v0[27];
      v17 = v0[24];
      v16 = v0[25];
      (*(v0[34] + 96))(v10, v0[33]);
      v18 = *v10;
      v19 = v10[1];
      v20 = *&v4[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_outputEngine];
      (*(v12 + 104))(v13, enum case for MAGOutputEventSource.magAction(_:), v15);
      (*(v16 + 104))(v14, enum case for MAGOutputEventEnvironment.angel(_:), v17);

      static MAGOutputEvent.documentFraming(_:source:environment:)();

      (*(v16 + 8))(v14, v17);
      (*(v12 + 8))(v13, v15);
      dispatch thunk of MAGOutputEngine.schedule(_:)();

      (*(v57 + 8))(v55, v59);
    }

    else if (v9 == enum case for MAGAdvancedEvent.AdvancedEventType.didCompleteFraming(_:))
    {
      v21 = v0[31];
      v22 = v0[32];
      v23 = v0[29];
      v46 = v0[30];
      v25 = v0[27];
      v24 = v0[28];
      v26 = v4;
      v61 = v4;
      v28 = v0[25];
      v27 = v0[26];
      v29 = v0[24];
      v47 = v0[22];
      v48 = v0[23];
      v49 = v0[21];
      v56 = v0[18];
      v58 = v0[17];
      v60 = v0[20];
      v51 = v0[19];
      v52 = v0[16];
      v54 = v0[15];
      v53 = v0[14];
      v30 = *&v26[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_outputEngine];
      (*(v24 + 104))(v23, enum case for MAGOutputEventSource.magAction(_:), v25);
      (*(v28 + 104))(v27, enum case for MAGOutputEventEnvironment.angel(_:), v29);

      static MAGOutputEvent.didCompleteFraming(source:environment:)();
      (*(v28 + 8))(v27, v29);
      (*(v24 + 8))(v23, v25);
      dispatch thunk of MAGOutputEngine.schedule(_:)();

      (*(v21 + 8))(v22, v46);
      sub_10000FC70();
      v31 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v50 = *(v49 + 8);
      v50(v47, v60);
      v0[6] = sub_10000FCBC;
      v0[7] = 0;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_10000288C;
      v0[5] = &unk_10004A120;
      v32 = _Block_copy(v0 + 2);
      static DispatchQoS.unspecified.getter();
      v0[11] = &_swiftEmptyArrayStorage;
      sub_10000FCDC();
      sub_10000D3B8(&unk_100050430, &unk_100038570);
      sub_10000E1A4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v32);

      (*(v54 + 8))(v52, v53);
      (*(v56 + 8))(v51, v58);
      v50(v48, v60);
    }

    else
    {
      v33 = v0[34];
      v34 = v0[35];
      v35 = v0[33];

      (*(v33 + 8))(v34, v35);
    }
  }

  v36 = v0[35];
  v37 = v0[32];
  v38 = v0[29];
  v39 = v0[26];
  v41 = v0[22];
  v40 = v0[23];
  v42 = v0[19];
  v43 = v0[16];

  v44 = v0[1];

  return v44();
}

unint64_t sub_10000FC70()
{
  result = qword_100050420;
  if (!qword_100050420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100050420);
  }

  return result;
}

uint64_t sub_10000FCC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000FCDC()
{
  result = qword_10004F880;
  if (!qword_10004F880)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004F880);
  }

  return result;
}

uint64_t sub_10000FDC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10000FE2C()
{
  v0 = type metadata accessor for MAGAngelPreferences();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_100010514();
  qword_100050D70 = v3;
  return result;
}

uint64_t sub_10000FE6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10000FEEC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_10000FF60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v0._object = 0x800000010003E190;
    v0._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v1._countAndFlagsBits = 0xD000000000000019;
    v1._object = 0x800000010003E170;
    String.append(_:)(v1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v2._object = 0x800000010003E150;
    v2._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v2);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v3._countAndFlagsBits = 0xD00000000000001BLL;
    v3._object = 0x800000010003E130;
    String.append(_:)(v3);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v4._countAndFlagsBits = 0xD000000000000018;
    v4._object = 0x800000010003E110;
    String.append(_:)(v4);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7 == 1)
  {
    v5._countAndFlagsBits = 0xD000000000000011;
    v5._object = 0x800000010003E0F0;
    String.append(_:)(v5);
  }

  return 0xD000000000000015;
}

uint64_t sub_100010264()
{
  v1 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__textDetectionEnabled;
  v2 = sub_10000D3B8(&qword_10004FC68, &qword_100038BB8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__peopleDetectionEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__doorDetectionEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__objectUnderstandingEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__imageDescriptionsEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__pointSpeakEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__activityEnabled, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for MAGAngelPreferences()
{
  result = qword_10004FBA8;
  if (!qword_10004FBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001041C()
{
  sub_1000104B8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000104B8()
{
  if (!qword_10004FBB8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FBB8);
    }
  }
}

uint64_t sub_100010514()
{
  v1 = sub_10000D3B8(&qword_10004FC68, &qword_100038BB8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v15[-v4];
  v6 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__textDetectionEnabled;
  v15[15] = 0;
  Published.init(initialValue:)();
  v7 = *(v2 + 32);
  v7(v0 + v6, v5, v1);
  v8 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__peopleDetectionEnabled;
  v15[14] = 0;
  Published.init(initialValue:)();
  v7(v0 + v8, v5, v1);
  v9 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__doorDetectionEnabled;
  v15[13] = 0;
  Published.init(initialValue:)();
  v7(v0 + v9, v5, v1);
  v10 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__objectUnderstandingEnabled;
  v15[12] = 0;
  Published.init(initialValue:)();
  v7(v0 + v10, v5, v1);
  v11 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__imageDescriptionsEnabled;
  v15[11] = 0;
  Published.init(initialValue:)();
  v7(v0 + v11, v5, v1);
  v12 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__pointSpeakEnabled;
  v15[10] = 0;
  Published.init(initialValue:)();
  v7(v0 + v12, v5, v1);
  v13 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelPreferences__activityEnabled;
  v15[9] = 0;
  Published.init(initialValue:)();
  v7(v0 + v13, v5, v1);
  return v0;
}

uint64_t sub_10001074C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000107D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100012760(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000127D0(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1000127D0(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000127D0(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100010A94()
{
  v0 = sub_10000D3B8(&qword_10004FC70, &qword_100038BE8);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = (&v19 - v3);
  v20 = sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  v5 = *(v20 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v19 - v7;
  v9 = sub_10000D3B8(&qword_100050480, &qword_100038948);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v19 - v12;
  v14 = type metadata accessor for MAGAngelClientRequestStream(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  type metadata accessor for MAGAngelClientRequest(0);
  *v4 = 5;
  (*(v1 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v0);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v1 + 8))(v4, v0);
  (*(v10 + 32))(v17 + OBJC_IVAR____TtC14MagnifierAngel27MAGAngelClientRequestStream_stream, v13, v9);
  result = (*(v5 + 32))(v17 + OBJC_IVAR____TtC14MagnifierAngel27MAGAngelClientRequestStream_continuation, v8, v20);
  qword_100050D78 = v17;
  return result;
}

uint64_t sub_100010D2C()
{
  if (qword_10004F568 != -1)
  {
    swift_once();
  }

  v0 = objc_allocWithZone(type metadata accessor for MAGAngelConnectionManager());

  result = sub_100030BDC(v1);
  qword_100050D80 = result;
  return result;
}

uint64_t sub_100010DA4()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = type metadata accessor for MAGAudioService();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  result = MAGAudioService.init(audioSession:)();
  qword_100050D88 = result;
  return result;
}

uint64_t sub_100010E0C()
{
  if (qword_10004F578 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MAGOutputEngine();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  result = MAGOutputEngine.init(audioService:audioSessionAutomaticallyDeactivatesAfterSpeaking:)();
  qword_100050D90 = result;
  return result;
}

id sub_100010E90()
{
  result = [objc_allocWithZone(type metadata accessor for MAGPulseFeedbackProcessor()) init];
  static MAGAngelCompositionRoot.pulseFeedbackProcessor = result;
  return result;
}

uint64_t *MAGAngelCompositionRoot.pulseFeedbackProcessor.unsafeMutableAddressor()
{
  if (qword_10004F588 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.pulseFeedbackProcessor;
}

id static MAGAngelCompositionRoot.pulseFeedbackProcessor.getter()
{
  if (qword_10004F588 != -1)
  {
    swift_once();
  }

  v1 = static MAGAngelCompositionRoot.pulseFeedbackProcessor;

  return v1;
}

uint64_t sub_100010F70()
{
  if (qword_10004F578 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MAGSpeechRecognitionService();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  result = MAGSpeechRecognitionService.init(audioService:)();
  static MAGAngelCompositionRoot.speechRecognitionService = result;
  return result;
}

uint64_t *MAGAngelCompositionRoot.speechRecognitionService.unsafeMutableAddressor()
{
  if (qword_10004F590 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.speechRecognitionService;
}

uint64_t sub_100011100()
{
  type metadata accessor for MAGCaptureService();
  [objc_allocWithZone(AVCaptureSession) init];
  if (qword_10004F5A8 != -1)
  {
    swift_once();
  }

  result = MAGCaptureService.__allocating_init(captureSession:eventHandler:)();
  qword_100050DC0 = result;
  return result;
}

uint64_t sub_1000111D4()
{
  if (qword_10004F5B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10004F5B0;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_100050DC0;
  MAGCaptureService.captureSessionQueue.getter();

  v2 = objc_allocWithZone(type metadata accessor for MAGARService());
  result = MAGARService.init(eventHandler:captureSessionQueue:)();
  qword_100050DD0 = result;
  return result;
}

uint64_t sub_1000112A8()
{
  if (qword_10004F598 != -1)
  {
    swift_once();
  }

  v0 = qword_10004F5C0;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_100050DD0;
  v2 = type metadata accessor for MAGDoorDetectionService();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = v1;
  result = MAGDoorDetectionService.init(textDetectionService:arService:)();
  qword_100050DD8 = result;
  return result;
}

uint64_t sub_1000113A8()
{
  if (qword_10004F5C0 != -1)
  {
    swift_once();
  }

  v0 = qword_10004F5D0;
  v1 = qword_100050DD0;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_10004F588;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = static MAGAngelCompositionRoot.pulseFeedbackProcessor;
  v4 = objc_allocWithZone(type metadata accessor for MAGObjectUnderstandingService());
  v5 = v3;
  result = MAGObjectUnderstandingService.init(arService:eventHandler:pulseFeedbackProcessor:)();
  qword_100050DE8 = result;
  return result;
}

uint64_t *MAGAngelCompositionRoot.pointAndSpeakEventHandler.unsafeMutableAddressor()
{
  if (qword_10004F5E0 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.pointAndSpeakEventHandler;
}

uint64_t sub_10001155C()
{
  if (qword_10004F5E0 != -1)
  {
    swift_once();
  }

  v0 = qword_10004F5C0;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_10004F598;
  v2 = qword_100050DD0;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_10004F580;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_10004F588;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = static MAGAngelCompositionRoot.pulseFeedbackProcessor;
  v6 = type metadata accessor for MAGPointAndSpeakService();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = v5;
  result = MAGPointAndSpeakService.init(eventHandler:arService:textDetectionService:outputEngine:pulseFeedbackProcessor:)();
  qword_100050DF8 = result;
  return result;
}

uint64_t sub_100011700()
{
  if (qword_10004F560 != -1)
  {
    swift_once();
  }

  qword_100050E00 = qword_100050D70;
}

id sub_100011764()
{
  static Detection.centerDetectionRectSize.getter();
  v1 = v0;
  v3 = v2;
  static Detection.labellingTolerance.getter();
  v5 = v4;
  static Detection.significantAreaThresholdMM.getter();
  v7 = v6;
  static Detection.closeDetectionFactor.getter();
  v9 = v8;
  v10 = objc_allocWithZone(PersonDetectionManager);
  LODWORD(v11) = v5;
  LODWORD(v12) = v7;
  LODWORD(v13) = v9;
  result = [v10 initWithCenterDetectionSize:v1 labellingTolerance:v3 significantAreaThresholdMM:v11 closeDetectionFactor:{v12, v13}];
  qword_100050E08 = result;
  return result;
}

uint64_t sub_10001181C()
{
  type metadata accessor for MAGVideoCaptioningService();
  result = MAGVideoCaptioningService.__allocating_init()();
  static MAGAngelCompositionRoot.videoCaptioningService = result;
  return result;
}

uint64_t *MAGAngelCompositionRoot.videoCaptioningService.unsafeMutableAddressor()
{
  if (qword_10004F608 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.videoCaptioningService;
}

uint64_t sub_1000118C4()
{
  if (qword_10004F5C0 != -1)
  {
    swift_once();
  }

  v0 = qword_100050DD0;
  v1 = type metadata accessor for MAGFrameProviderService();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = v0;
  result = MAGFrameProviderService.init(arService:)();
  static MAGAngelCompositionRoot.frameProviderService = result;
  return result;
}

uint64_t *MAGAngelCompositionRoot.frameProviderService.unsafeMutableAddressor()
{
  if (qword_10004F610 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.frameProviderService;
}

uint64_t *MAGAngelCompositionRoot.followUpContext.unsafeMutableAddressor()
{
  if (qword_10004F618 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.followUpContext;
}

uint64_t sub_100011A5C()
{
  if (qword_10004F628 != -1)
  {
    swift_once();
  }

  v0 = qword_10004F610;

  if (v0 != -1)
  {
    swift_once();
  }

  v1 = qword_10004F5B0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_100050DC0;
  v3 = type metadata accessor for MAGDocumentFramingService();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = v2;
  result = MAGDocumentFramingService.init(eventHandler:frameProviderService:captureService:)();
  static MAGAngelCompositionRoot.documentFramingService = result;
  return result;
}

uint64_t *MAGAngelCompositionRoot.advancedEventHandler.unsafeMutableAddressor()
{
  if (qword_10004F628 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.advancedEventHandler;
}

uint64_t *MAGAngelCompositionRoot.documentFramingService.unsafeMutableAddressor()
{
  if (qword_10004F620 != -1)
  {
    swift_once();
  }

  return &static MAGAngelCompositionRoot.documentFramingService;
}

uint64_t sub_100011C68(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_100011CE0(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }
}

uint64_t sub_100011D50()
{
  v0 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v53 = &v42 - v2;
  if (qword_10004F5C0 != -1)
  {
    swift_once();
  }

  v3 = qword_10004F598;
  v52 = qword_100050DD0;
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_10004F580;
  v5 = qword_100050DA8;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_10004F5F0;
  v7 = qword_100050D90;

  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_10004F5F8;
  v9 = qword_100050E00;

  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_10004F600;
  v51 = qword_100050E08;
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_10004F608;
  v54 = qword_100050E10;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_10004F5C8;
  v13 = static MAGAngelCompositionRoot.videoCaptioningService;

  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_10004F5D8;
  v56 = qword_100050DD8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_10004F5E8;
  v50 = qword_100050DE8;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_10004F5A0;
  v58 = qword_100050DF8;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_10004F5E0;
  v60 = qword_100050DB0;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_10004F588;
  v59 = static MAGAngelCompositionRoot.pointAndSpeakEventHandler;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_10004F5B8;
  v20 = static MAGAngelCompositionRoot.pulseFeedbackProcessor;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = qword_10004F5D0;
  v57 = qword_100050DC8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_10004F568;
  v55 = qword_100050DE0;

  if (v22 != -1)
  {
    swift_once();
  }

  v47 = qword_100050D78;
  v49 = type metadata accessor for MAGAngelDetectionManager();
  v23 = objc_allocWithZone(v49);
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_detectionModeFlashlightDispatchItem) = 0;
  v24 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_scene;
  v46 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_scene;
  v25 = objc_allocWithZone(SCNScene);

  *(v23 + v24) = [v25 init];
  v26 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_sceneRenderer;
  v44 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_sceneRenderer;
  *(v23 + v26) = [objc_opt_self() rendererWithDevice:0 options:0];
  Date.init()();
  Date.init()();
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_torchStatus) = 0;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastPixelBuffer) = 0;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_nextEligibleDetector) = 0;
  Date.init()();
  v27 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_luminanceManager;
  *(v23 + v27) = [objc_allocWithZone(ARFrameLuminanceManager) init];
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_maxAngelRuntime) = 0x409C200000000000;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelInactiveTimeOut) = 0x404E000000000000;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastFramePixelValue) = 0;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_consecutiveSimilarFrames) = 0;
  v28 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_peopleSessionDispatchQueue;
  type metadata accessor for AXSerialQueue();
  *(v23 + v28) = AXSerialQueue.__allocating_init()();
  v30 = v51;
  v29 = v52;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_arService) = v52;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_textDetectionService) = v5;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_outputEngine) = v7;
  v45 = v9;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelPreferences) = v9;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_personDetectionManager) = v30;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_anstPersonDetectionManager) = v54;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_videoCaptioningService) = v13;
  v48 = v13;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_doorDetectionService) = v56;
  v31 = v50;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_objectUnderstandingService) = v50;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pointAndSpeakService) = v58;
  v32 = v59;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_imageCaptionService) = v60;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pointAndSpeakEventHandler) = v32;
  v43 = v20;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor) = v20;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_arEventHandler) = v57;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_ouEventHandler) = v55;
  *(v23 + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_clientRequestStream) = v47;
  v44 = *&v44[v23];
  v46 = *&v46[v23];
  v52 = v29;

  v51 = v30;

  v50 = v31;

  v33 = v43;

  v34 = v44;
  v35 = v46;
  [v34 setScene:v35];

  v61.receiver = v23;
  v61.super_class = v49;
  v36 = objc_msgSendSuper2(&v61, "init");
  v37 = type metadata accessor for TaskPriority();
  v38 = v53;
  (*(*(v37 - 8) + 56))(v53, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v36;
  v40 = v36;
  sub_1000107D4(0, 0, v38, &unk_100038BF8, v39);

  sub_1000023E8();

  qword_100050E40 = v40;
  return result;
}

uint64_t sub_10001266C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000126AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000DDD4;

  return sub_100002210(a1, v4, v5, v6);
}

uint64_t sub_100012760(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000127D0(uint64_t a1)
{
  v2 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012838(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012930;

  return v7(a1);
}

uint64_t sub_100012930()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100012A28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012A60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EC40;

  return sub_100012838(a1, v5);
}

uint64_t sub_100012B18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DDD4;

  return sub_100012838(a1, v5);
}

void sub_100012BF0()
{
  if (qword_10004F570 != -1)
  {
    swift_once();
  }

  sub_100031180();
  v0 = static CommandLine.argc.getter();
  v1 = static CommandLine.unsafeArgv.getter();
  sub_100012D08();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for MAGAngelAppDelegate();
  v4 = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(v4);
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    delegateClassNamea = String._bridgeToObjectiveC()();

    v5 = delegateClassNamea;
  }

  delegateClassName = v5;
  UIApplicationMain(v0, v1, v3, v5);
}

unint64_t sub_100012D08()
{
  result = qword_10004FC78;
  if (!qword_10004FC78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004FC78);
  }

  return result;
}

__n128 sub_100012D64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100012D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100012DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100012E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Control();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100012F04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Control();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100012FC8()
{
  sub_10001305C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Control();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001305C()
{
  if (!qword_10004FCE8)
  {
    type metadata accessor for MAGAngelPreferences();
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FCE8);
    }
  }
}

uint64_t sub_1000131E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100013278(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100013324(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(_:)();
  *a3 = result;
  return result;
}

uint64_t sub_10001336C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for LiveRecognitionView(0) - 8) + 64);
  __chkstk_darwin();
  v4 = (v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (sub_10000D3B8(&qword_10004FF50, &qword_100039200) - 8);
  v6 = (*(*v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = v16 - v7;
  sub_10001353C(v4);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001C8E4(v4, v8, type metadata accessor for LiveRecognitionView);
  v9 = &v8[v5[11]];
  v10 = v16[5];
  *(v9 + 4) = v16[4];
  *(v9 + 5) = v10;
  *(v9 + 6) = v16[6];
  v11 = v16[1];
  *v9 = v16[0];
  *(v9 + 1) = v11;
  v12 = v16[3];
  *(v9 + 2) = v16[2];
  *(v9 + 3) = v12;
  static Color.black.getter();
  v13 = Color.opacity(_:)();

  LOBYTE(v4) = static Edge.Set.all.getter();
  sub_10000E284(v8, a1, &qword_10004FF50, &qword_100039200);
  result = sub_10000D3B8(&qword_10004FF58, &qword_100039208);
  v15 = a1 + *(result + 36);
  *v15 = v13;
  *(v15 + 8) = v4;
  return result;
}

uint64_t sub_10001353C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_10000D3B8(&qword_10004FF60, &qword_100039240);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for LiveRecognitionView(0);
  v3 = a1 + v2[5];
  *v3 = sub_1000136F8;
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = a1 + v2[6];
  AccessibilityFocusState.init<>()();
  v5 = a1 + v2[7];
  State.init(wrappedValue:)();
  *v5 = v11;
  *(v5 + 1) = v12;
  v6 = a1 + v2[8];
  State.init(wrappedValue:)();
  *v6 = v11;
  *(v6 + 1) = v12;
  v7 = (a1 + v2[9]);
  sub_10000D3B8(&qword_10004FF68, &qword_100039248);
  State.init(wrappedValue:)();
  *v7 = v11;
  v7[1] = v12;
  v8 = a1 + v2[10];
  State.init(wrappedValue:)();
  *v8 = v11;
  *(v8 + 1) = v12;
  v9 = a1 + v2[11];
  result = State.init(wrappedValue:)();
  *v9 = v11;
  *(v9 + 1) = v12;
  return result;
}

uint64_t sub_1000136F8()
{
  if (qword_10004F5F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100013754@<X0>(uint64_t a1@<X8>)
{
  v92 = a1;
  v90 = sub_10000D3B8(&qword_100050070, &qword_1000392E0);
  v2 = *(*(v90 - 8) + 64);
  v3 = __chkstk_darwin(v90);
  v91 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v89 = v79 - v5;
  v6 = sub_10000D3B8(&qword_100050078, &qword_1000392E8);
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  __chkstk_darwin(v6);
  v97 = v79 - v8;
  v96 = sub_10000D3B8(&qword_10004F670, &qword_1000392F0);
  v94 = *(v96 - 1);
  v9 = *(v94 + 64);
  __chkstk_darwin(v96);
  v11 = (v79 - v10);
  v12 = sub_10000D3B8(&qword_100050080, &qword_1000392F8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v79 - v15;
  v17 = sub_10000D3B8(&qword_100050088, &qword_100039300);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = v79 - v19;
  *v20 = static HorizontalAlignment.center.getter();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = &v20[*(sub_10000D3B8(&qword_100050090, &qword_100039308) + 44)];
  v95 = v1;
  sub_100014324(v1, v21);
  v20[*(v17 + 36)] = 1;
  v22 = sub_10001CFEC();
  View.allowsSecureDrawing()();
  sub_10000E35C(v20, &qword_100050088, &qword_100039300);
  v23 = type metadata accessor for LiveRecognitionView(0);
  v24 = *(v23 + 24);
  sub_10000D3B8(&qword_10004FF78, &qword_100039258);
  AccessibilityFocusState.projectedValue.getter();
  v100 = v17;
  v101 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = v11;
  v85 = OpaqueTypeConformance2;
  View.accessibilityFocused(_:)();

  v26 = *(v13 + 8);
  v86 = v12;
  v27 = v26(v16, v12);
  v28 = *(v23 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_10001BD74(v95, v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LiveRecognitionView);
  type metadata accessor for MainActor();
  v30 = static MainActor.shared.getter();
  v31 = *(v28 + 80);
  v32 = ~v31;
  v33 = (v31 + 32) & ~v31;
  v84 = v29;
  v98 = v31;
  v34 = swift_allocObject();
  *(v34 + 16) = v30;
  *(v34 + 24) = &protocol witness table for MainActor;
  sub_10001C8E4(v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for LiveRecognitionView);
  v35 = type metadata accessor for TaskPriority();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v39 = v79 - v38;
  static TaskPriority.userInitiated.getter();
  if (sub_10003518C(2, 26, 4, 0))
  {
    v82 = type metadata accessor for _TaskModifier2();
    v83 = v79;
    v81 = *(v82 - 8);
    v40 = *(v81 + 64);
    __chkstk_darwin(v82);
    v80 = (v79 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    v100 = 0;
    v101 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v100 = 0xD000000000000032;
    v101 = 0x800000010003E230;
    v99 = 207;
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v42);

    __chkstk_darwin(v43);
    (*(v36 + 16))(v79 - v38, v79 - v38, v35);
    v44 = v80;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v36 + 8))(v39, v35);
    v45 = v97;
    (*(v94 + 32))(v97, v93, v96);
    v46 = sub_10000D3B8(&qword_10004F678, &qword_100037F90);
    (*(v81 + 32))(&v45[*(v46 + 36)], v44, v82);
  }

  else
  {
    v47 = sub_10000D3B8(&qword_10004F680, &qword_100037F98);
    v48 = v97;
    v49 = &v97[*(v47 + 36)];
    v50 = type metadata accessor for _TaskModifier();
    (*(v36 + 32))(&v49[*(v50 + 20)], v79 - v38, v35);
    *v49 = &unk_100039320;
    *(v49 + 1) = v34;
    (*(v94 + 32))(v48, v93, v96);
  }

  v94 = type metadata accessor for AccessibilityActionKind();
  v83 = v79;
  v51 = *(v94 - 8);
  v52 = *(v51 + 64);
  __chkstk_darwin(v94);
  v82 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v53 = v79 - v82;
  v54 = static AccessibilityActionKind.escape.getter();
  v79[1] = v79;
  v55 = v84;
  __chkstk_darwin(v54);
  v81 = (v55 + 15) & 0xFFFFFFFFFFFFFFF0;
  v56 = v79 - v81;
  v80 = type metadata accessor for LiveRecognitionView;
  v57 = v95;
  sub_10001BD74(v95, v79 - v81, type metadata accessor for LiveRecognitionView);
  v58 = (v98 + 16) & v32;
  v59 = swift_allocObject();
  v93 = type metadata accessor for LiveRecognitionView;
  sub_10001C8E4(v56, v59 + v58, type metadata accessor for LiveRecognitionView);
  v100 = v86;
  v101 = v85;
  v60 = swift_getOpaqueTypeConformance2();
  v100 = v96;
  v101 = v60;
  swift_getOpaqueTypeConformance2();
  v62 = v88;
  v61 = v89;
  v63 = v97;
  View.accessibilityAction(_:_:)();

  v64 = *(v51 + 8);
  v86 = v51 + 8;
  v96 = v64;
  v64(v53, v94);
  v65 = (*(v87 + 8))(v63, v62);
  v97 = v79;
  __chkstk_darwin(v65);
  v66 = v79 - v82;
  v67 = static AccessibilityActionKind.magicTap.getter();
  v88 = v79;
  __chkstk_darwin(v67);
  v68 = v81;
  v69 = v57;
  v70 = v57;
  v71 = v80;
  sub_10001BD74(v70, v79 - v81, v80);
  v72 = swift_allocObject();
  sub_10001C8E4(v79 - v68, v72 + v58, v93);
  v73 = v91;
  ModifiedContent<>.accessibilityAction(_:_:)();

  v96(v66, v94);
  sub_10000E35C(v61, &qword_100050070, &qword_1000392E0);
  v74 = sub_100016ED8();
  __chkstk_darwin(v74);
  sub_10001BD74(v69, v79 - v68, v71);
  v75 = swift_allocObject();
  sub_10001C8E4(v79 - v68, v75 + v58, v93);
  v76 = v92;
  sub_10000E284(v73, v92, &qword_100050070, &qword_1000392E0);
  result = sub_10000D3B8(&qword_1000500B8, &unk_100039330);
  *(v76 + *(result + 52)) = v74;
  v78 = (v76 + *(result + 56));
  *v78 = sub_10001D6D0;
  v78[1] = v75;
  return result;
}

uint64_t sub_100014324@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, void *a2@<X8>)
{
  v78 = a2;
  v77 = sub_10000D3B8(&qword_1000500E8, &qword_100039350);
  v3 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v73 = (v67 - v4);
  v74 = type metadata accessor for MAGDetectedTextView();
  v72 = *(v74 - 8);
  v5 = *(v72 + 64);
  __chkstk_darwin(v74);
  v71 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10000D3B8(&qword_1000500F0, &qword_100039358);
  v7 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v9 = v67 - v8;
  v10 = sub_10000D3B8(&qword_1000500F8, &qword_100039360);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v67 - v12;
  v14 = sub_10000D3B8(&qword_100050100, &qword_100039368);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = v67 - v16;
  v18 = sub_10000D3B8(&qword_100050108, &qword_100039370);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v76 = v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v67 - v22;
  v24 = type metadata accessor for LiveRecognitionView(0);
  v25 = a1 + v24[10];
  v26 = *v25;
  v27 = *(v25 + 1);
  LOBYTE(v79) = v26;
  v80 = v27;
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.getter();
  if (v81 == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_10001B510(&qword_100050140, &type metadata accessor for MAGDetectedTextView);
    _ConditionalContent<>.init(storage:)();
    sub_10001DA50(v17, v9, &qword_100050100, &qword_100039368);
    swift_storeEnumTagMultiPayload();
    sub_10001D740();
    sub_10001C6B4(&qword_100050148, &qword_1000500E8, &qword_100039350, sub_10001D7FC);
    _ConditionalContent<>.init(storage:)();
    sub_10000E35C(v17, &qword_100050100, &qword_100039368);
  }

  else
  {
    v67[1] = v10;
    v68 = v13;
    v69 = v17;
    v70 = v14;
    v28 = v74;
    v29 = a1 + v24[8];
    v30 = *v29;
    v31 = *(v29 + 1);
    LOBYTE(v79) = *v29;
    v80 = v31;
    State.wrappedValue.getter();
    if (v81 == 1)
    {
      v32 = (a1 + v24[9]);
      v34 = *v32;
      v33 = v32[1];
      v79 = v34;
      v80 = v33;
      sub_10000D3B8(&qword_100050190, &qword_1000393B8);
      State.wrappedValue.getter();
      LOBYTE(v81) = v30;
      v82 = v31;
      State.projectedValue.getter();
      v35 = v71;
      MAGDetectedTextView.init(textBlocks:showingTextView:)();
      v36 = v72;
      (*(v72 + 16))(v68, v35, v28);
      swift_storeEnumTagMultiPayload();
      sub_10001B510(&qword_100050140, &type metadata accessor for MAGDetectedTextView);
      v37 = v69;
      _ConditionalContent<>.init(storage:)();
      sub_10001DA50(v37, v9, &qword_100050100, &qword_100039368);
      swift_storeEnumTagMultiPayload();
      sub_10001D740();
      sub_10001C6B4(&qword_100050148, &qword_1000500E8, &qword_100039350, sub_10001D7FC);
      _ConditionalContent<>.init(storage:)();
      sub_10000E35C(v37, &qword_100050100, &qword_100039368);
      (*(v36 + 8))(v35, v28);
    }

    else
    {
      v38 = static Alignment.center.getter();
      v39 = v73;
      *v73 = v38;
      *(v39 + 8) = v40;
      v41 = v39 + *(sub_10000D3B8(&qword_100050110, &qword_100039378) + 44);
      *v41 = static HorizontalAlignment.center.getter();
      *(v41 + 8) = 0;
      *(v41 + 16) = 1;
      v42 = sub_10000D3B8(&qword_100050118, &qword_100039380);
      sub_100014BD4(a1, v41 + *(v42 + 44));
      v43 = *(sub_10000D3B8(&qword_100050120, &qword_100039388) + 36);
      v44 = enum case for ColorScheme.dark(_:);
      v45 = type metadata accessor for ColorScheme();
      v46 = *(v45 - 8);
      (*(v46 + 104))(v39 + v43, v44, v45);
      (*(v46 + 56))(v39 + v43, 0, 1, v45);
      v47 = v39 + *(sub_10000D3B8(&qword_100050128, &qword_100039390) + 36);
      static Material.thin.getter();
      v48 = sub_10000D3B8(&qword_100050130, &qword_100039398);
      v49 = (v47 + *(v48 + 52));
      v50 = *(type metadata accessor for RoundedRectangle() + 20);
      v51 = enum case for RoundedCornerStyle.continuous(_:);
      v52 = type metadata accessor for RoundedCornerStyle();
      (*(*(v52 - 8) + 104))(&v49[v50], v51, v52);
      __asm { FMOV            V0.2D, #25.0 }

      *v49 = _Q0;
      *(v47 + *(v48 + 56)) = 256;
      LOBYTE(v47) = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v58 = v39 + *(v77 + 36);
      *v58 = v47;
      *(v58 + 8) = v59;
      *(v58 + 16) = v60;
      *(v58 + 24) = v61;
      *(v58 + 32) = v62;
      *(v58 + 40) = 0;
      sub_10001DA50(v39, v9, &qword_1000500E8, &qword_100039350);
      swift_storeEnumTagMultiPayload();
      sub_10001D740();
      sub_10001C6B4(&qword_100050148, &qword_1000500E8, &qword_100039350, sub_10001D7FC);
      _ConditionalContent<>.init(storage:)();
      sub_10000E35C(v39, &qword_1000500E8, &qword_100039350);
    }
  }

  v63 = v76;
  sub_10001DA50(v23, v76, &qword_100050108, &qword_100039370);
  v64 = v78;
  *v78 = 0;
  *(v64 + 8) = 1;
  v65 = sub_10000D3B8(&qword_100050188, &qword_1000393B0);
  sub_10001DA50(v63, v64 + *(v65 + 48), &qword_100050108, &qword_100039370);
  sub_10000E35C(v23, &qword_100050108, &qword_100039370);
  return sub_10000E35C(v63, &qword_100050108, &qword_100039370);
}

uint64_t sub_100014BD4@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v65 = a2;
  *(&v63 + 1) = sub_10000D3B8(&qword_100050198, &qword_1000393C0);
  v2 = *(*(*(&v63 + 1) - 8) + 64);
  v3 = __chkstk_darwin(*(&v63 + 1));
  v68 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v67 = (&v57 - v5);
  v6 = type metadata accessor for AccessibilityChildBehavior();
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000D3B8(&qword_1000501A0, &qword_1000393C8);
  v62 = *(v10 - 8);
  *&v63 = v10;
  v11 = *(v62 + 64);
  __chkstk_darwin(v10);
  v61 = &v57 - v12;
  v13 = sub_10000D3B8(&qword_1000501A8, &qword_1000393D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v69 = &v57 - v17;
  v58 = static VerticalAlignment.center.getter();
  v106 = 1;
  sub_100015508(v81);
  v118 = v81[10];
  v119 = v81[11];
  v114 = v81[6];
  v115 = v81[7];
  v117 = v81[9];
  v116 = v81[8];
  v110 = v81[2];
  v111 = v81[3];
  v113 = v81[5];
  v112 = v81[4];
  v109 = v81[1];
  v108 = v81[0];
  v121[10] = v81[10];
  v121[11] = v81[11];
  v121[6] = v81[6];
  v121[7] = v81[7];
  v121[9] = v81[9];
  v121[8] = v81[8];
  v121[2] = v81[2];
  v121[3] = v81[3];
  v121[5] = v81[5];
  v121[4] = v81[4];
  v120 = v81[12];
  v122 = v81[12];
  v121[1] = v81[1];
  v121[0] = v81[0];
  sub_10001DA50(&v108, v80, &qword_1000501B0, &qword_1000393D8);
  sub_10000E35C(v121, &qword_1000501B0, &qword_1000393D8);
  *&v105[151] = v117;
  *&v105[167] = v118;
  *&v105[183] = v119;
  *&v105[87] = v113;
  *&v105[103] = v114;
  *&v105[119] = v115;
  *&v105[135] = v116;
  *&v105[23] = v109;
  *&v105[39] = v110;
  *&v105[55] = v111;
  *&v105[71] = v112;
  v105[199] = v120;
  *&v105[7] = v108;
  v18 = v106;
  sub_10000D3B8(&qword_10004FE08, &qword_100038F08);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100038C20;
  v20 = static Edge.Set.leading.getter();
  *(v19 + 32) = v20;
  v21 = static Edge.Set.top.getter();
  *(v19 + 33) = v21;
  v22 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v20)
  {
    v22 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v22 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  *(&v80[10] + 1) = *&v105[144];
  *(&v80[11] + 1) = *&v105[160];
  *(&v80[12] + 1) = *&v105[176];
  *(&v80[6] + 1) = *&v105[80];
  *(&v80[7] + 1) = *&v105[96];
  *(&v80[8] + 1) = *&v105[112];
  *(&v80[9] + 1) = *&v105[128];
  *(&v80[2] + 1) = *&v105[16];
  *(&v80[3] + 1) = *&v105[32];
  *(&v80[4] + 1) = *&v105[48];
  *(&v80[5] + 1) = *&v105[64];
  v107 = 0;
  v80[0] = v58;
  LOBYTE(v80[1]) = v18;
  *(&v80[13] + 1) = *&v105[192];
  *(&v80[1] + 1) = *v105;
  LOBYTE(v80[14]) = v22;
  *(&v80[14] + 1) = v23;
  *&v80[15] = v24;
  *(&v80[15] + 1) = v25;
  *&v80[16] = v26;
  BYTE8(v80[16]) = 0;
  static AccessibilityChildBehavior.combine.getter();
  v27 = sub_10000D3B8(&qword_1000501B8, &qword_1000393E0);
  v28 = sub_10001D998();
  v29 = v61;
  View.accessibilityElement(children:)();
  (*(v59 + 8))(v9, v60);
  memcpy(v81, v80, 0x109uLL);
  sub_10000E35C(v81, &qword_1000501B8, &qword_1000393E0);
  *&v80[0] = String.localized.getter();
  *(&v80[0] + 1) = v30;
  *&v94 = v27;
  *(&v94 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  sub_10001B928();
  v31 = v69;
  v32 = v63;
  View.accessibilityLabel<A>(_:)();

  (*(v62 + 8))(v29, v32);
  v33 = static VerticalAlignment.center.getter();
  v34 = v67;
  *v67 = v33;
  *(v34 + 8) = 0;
  *(v34 + 16) = 1;
  v35 = sub_10000D3B8(&qword_1000501D8, &qword_1000393F0);
  v36 = v64;
  sub_100015BFC(v64, v34 + *(v35 + 44));
  v37 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v38 = v34 + *(*(&v63 + 1) + 36);
  *v38 = v37;
  *(v38 + 8) = v39;
  *(v38 + 16) = v40;
  *(v38 + 24) = v41;
  *(v38 + 32) = v42;
  *(v38 + 40) = 0;
  *&v63 = static Alignment.center.getter();
  *(&v63 + 1) = v43;
  sub_100016644(v36, v80);
  v90 = v80[8];
  v91[0] = v80[9];
  *(v91 + 9) = *(&v80[9] + 9);
  v86 = v80[4];
  v87 = v80[5];
  v88 = v80[6];
  v89 = v80[7];
  v82 = v80[0];
  v83 = v80[1];
  v84 = v80[2];
  v85 = v80[3];
  v92[8] = v80[8];
  v93[0] = v80[9];
  *(v93 + 9) = *(&v80[9] + 9);
  v92[4] = v80[4];
  v92[5] = v80[5];
  v92[7] = v80[7];
  v92[6] = v80[6];
  v92[0] = v80[0];
  v92[1] = v80[1];
  v92[3] = v80[3];
  v92[2] = v80[2];
  sub_10001DA50(&v82, &v94, &qword_1000501E0, &qword_1000393F8);
  sub_10000E35C(v92, &qword_1000501E0, &qword_1000393F8);
  v78 = v90;
  v79[0] = v91[0];
  *(v79 + 9) = *(v91 + 9);
  v74 = v86;
  v75 = v87;
  v76 = v88;
  v77 = v89;
  v70 = v82;
  v71 = v83;
  v72 = v84;
  v73 = v85;
  v44 = v31;
  v45 = v66;
  sub_10001DA50(v44, v66, &qword_1000501A8, &qword_1000393D0);
  v46 = v68;
  sub_10001DA50(v34, v68, &qword_100050198, &qword_1000393C0);
  v47 = v65;
  sub_10001DA50(v45, v65, &qword_1000501A8, &qword_1000393D0);
  v48 = sub_10000D3B8(&qword_1000501E8, &qword_100039400);
  sub_10001DA50(v46, v47 + *(v48 + 48), &qword_100050198, &qword_1000393C0);
  v49 = (v47 + *(v48 + 64));
  v50 = v63;
  v94 = v63;
  v103 = v78;
  v104[0] = v79[0];
  *(v104 + 9) = *(v79 + 9);
  v99 = v74;
  v100 = v75;
  v101 = v76;
  v102 = v77;
  v95 = v70;
  v96 = v71;
  v97 = v72;
  v98 = v73;
  v51 = v78;
  v49[8] = v77;
  v49[9] = v51;
  v49[10] = v104[0];
  *(v49 + 169) = *(v104 + 9);
  v52 = v99;
  v49[4] = v98;
  v49[5] = v52;
  v53 = v101;
  v49[6] = v100;
  v49[7] = v53;
  v54 = v95;
  *v49 = v94;
  v49[1] = v54;
  v55 = v97;
  v49[2] = v96;
  v49[3] = v55;
  sub_10001DA50(&v94, v80, &qword_1000501F0, &qword_100039408);
  sub_10000E35C(v34, &qword_100050198, &qword_1000393C0);
  sub_10000E35C(v69, &qword_1000501A8, &qword_1000393D0);
  v80[0] = v50;
  v80[9] = v78;
  v80[10] = v79[0];
  *(&v80[10] + 9) = *(v79 + 9);
  v80[5] = v74;
  v80[6] = v75;
  v80[7] = v76;
  v80[8] = v77;
  v80[1] = v70;
  v80[2] = v71;
  v80[3] = v72;
  v80[4] = v73;
  sub_10000E35C(v80, &qword_1000501F0, &qword_100039408);
  sub_10000E35C(v46, &qword_100050198, &qword_1000393C0);
  return sub_10000E35C(v45, &qword_1000501A8, &qword_1000393D0);
}

uint64_t sub_100015508@<X0>(uint64_t a1@<X8>)
{
  v2 = static Alignment.center.getter();
  v26 = v3;
  v27 = v2;
  sub_100015818(&v58);
  v34 = v64;
  v35 = v65;
  v30 = v60;
  v31 = v61;
  v32 = v62;
  v33 = v63;
  v28 = v58;
  v29 = v59;
  v37[6] = v64;
  v37[7] = v65;
  v37[2] = v60;
  v37[3] = v61;
  v37[4] = v62;
  v37[5] = v63;
  v36 = v66;
  v38 = v66;
  v37[0] = v58;
  v37[1] = v59;
  sub_10001DA50(&v28, &v48, &qword_10004FDC0, &qword_100038E98);
  sub_10000E35C(v37, &qword_10004FDC0, &qword_100038E98);
  v45 = v34;
  v46 = v35;
  v47 = v36;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v44 = v33;
  v39 = v28;
  v40 = v29;
  *&v58 = String.localized.getter();
  *(&v58 + 1) = v4;
  sub_10001B928();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  if (qword_10004F640 != -1)
  {
    swift_once();
  }

  v10 = Text.foregroundColor(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_10001BC4C(v5, v7, v9 & 1);

  *&v48 = v27;
  *(&v48 + 1) = v26;
  v55 = v45;
  v56 = v46;
  v57 = v47;
  v51 = v41;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v17 = v40;
  v49 = v39;
  v50 = v40;
  v18 = v45;
  v19 = v46;
  *(a1 + 96) = v44;
  *(a1 + 112) = v18;
  *(a1 + 128) = v19;
  v20 = v57;
  v21 = v51;
  v22 = v52;
  *(a1 + 32) = v17;
  *(a1 + 48) = v21;
  v23 = v53;
  *(a1 + 64) = v22;
  *(a1 + 80) = v23;
  v24 = v49;
  *a1 = v48;
  *(a1 + 16) = v24;
  *(a1 + 144) = v20;
  *(a1 + 152) = v10;
  *(a1 + 160) = v12;
  *(a1 + 168) = v14 & 1;
  *(a1 + 176) = v16;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  sub_10001DA50(&v48, &v58, &qword_10004FD58, &qword_100038E20);
  sub_10001BC3C(v10, v12, v14 & 1);

  sub_10001BC4C(v10, v12, v14 & 1);

  *&v58 = v27;
  *(&v58 + 1) = v26;
  v65 = v45;
  v66 = v46;
  v67 = v47;
  v61 = v41;
  v62 = v42;
  v64 = v44;
  v63 = v43;
  v60 = v40;
  v59 = v39;
  return sub_10000E35C(&v58, &qword_10004FD58, &qword_100038E20);
}

uint64_t sub_100015818@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10004F648 != -1)
  {
    swift_once();
  }

  v7 = qword_100050E58;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v41[3] = *&v41[27];
  *&v41[11] = *&v41[35];
  *&v41[19] = *&v41[43];
  v28 = v7;

  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v8 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v6, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = v42;
  v10 = v43;
  v11 = v44;
  v12 = v45;
  v26 = v47;
  v27 = v46;
  if (qword_10004F640 != -1)
  {
    swift_once();
  }

  v13 = qword_100050E50;
  KeyPath = swift_getKeyPath();
  *&v48[0] = v28;
  WORD4(v48[0]) = 256;
  *(v48 + 10) = *v41;
  *(&v48[1] + 10) = *&v41[8];
  *(&v48[2] + 10) = *&v41[16];
  *(&v48[3] + 1) = *&v41[23];
  *&v33[31] = v48[2];
  *&v33[39] = v48[3];
  *&v33[15] = v48[0];
  *&v33[23] = v48[1];
  *&v49 = v8;
  *(&v49 + 1) = v9;
  LOBYTE(v50) = v10;
  DWORD1(v50) = *&v40[3];
  *(&v50 + 1) = *v40;
  *(&v50 + 1) = v11;
  LOBYTE(v51) = v12;
  DWORD1(v51) = *&v39[3];
  v15 = *v39;
  *(&v51 + 1) = *v39;
  v17 = v26;
  v16 = v27;
  *(&v51 + 1) = v27;
  *&v52 = v26;
  *(&v52 + 1) = KeyPath;
  v53 = v13;
  v38 = v13;
  v36 = v51;
  v37 = v52;
  v34 = v49;
  v35 = v50;
  v18 = v48[0];
  v19 = v48[1];
  v20 = v48[3];
  *(a1 + 32) = v48[2];
  *(a1 + 48) = v20;
  *a1 = v18;
  *(a1 + 16) = v19;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  *(a1 + 128) = v38;
  *(a1 + 96) = v23;
  *(a1 + 112) = v24;
  *(a1 + 64) = v21;
  *(a1 + 80) = v22;
  v54[0] = v8;
  v54[1] = v9;
  v55 = v10;
  *v56 = *v40;
  *&v56[3] = *&v40[3];
  v57 = v11;
  v58 = v12;
  *v59 = v15;
  *&v59[3] = *&v39[3];
  v60 = v16;
  v61 = v17;
  v62 = KeyPath;
  v63 = v13;

  sub_10001DA50(v48, &v29, &qword_10004FDC8, &qword_100038ED0);
  sub_10001DA50(&v49, &v29, &qword_10004FDD0, &qword_100038ED8);
  sub_10000E35C(v54, &qword_10004FDD0, &qword_100038ED8);
  v29 = v28;
  v30 = 256;
  v31 = *v41;
  v32 = *&v41[8];
  *v33 = *&v41[16];
  *&v33[7] = *&v41[23];
  return sub_10000E35C(&v29, &qword_10004FDC8, &qword_100038ED0);
}

uint64_t sub_100015BFC@<X0>(uint64_t (*a1)(uint64_t a1)@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_10000D3B8(&qword_100050210, &qword_100039428);
  v82 = *(v3 - 8);
  v83 = v3;
  v4 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v80 = &v77 - v5;
  v6 = *(*(sub_10000D3B8(&qword_100050218, &qword_100039430) - 8) + 64);
  v7 = (__chkstk_darwin)();
  v85 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v77 - v9;
  v10 = type metadata accessor for LiveRecognitionView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DetectionButton(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v84 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v92 = &v77 - v19;
  v20 = __chkstk_darwin(v18);
  v93 = &v77 - v21;
  v22 = __chkstk_darwin(v20);
  v90 = &v77 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v77 - v25;
  __chkstk_darwin(v24);
  v28 = &v77 - v27;
  v96 = a1;
  sub_10001BD74(a1, v13, type metadata accessor for LiveRecognitionView);
  v29 = v12;
  v30 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v94 = *(v11 + 80);
  v31 = swift_allocObject();
  sub_10001C8E4(v13, v31 + v30, type metadata accessor for LiveRecognitionView);
  v32 = *(v14 + 28);
  v33 = enum case for Control.imageCaption(_:);
  v34 = type metadata accessor for Control();
  v35 = *(v34 - 8);
  v36 = *(v35 + 104);
  v91 = v34;
  v89 = v35 + 104;
  v36(&v28[v32], v33);
  v99 = "control.button.off.value";
  *v28 = String.localized.getter();
  *(v28 + 1) = v37;
  v98 = "document.mode.button";
  *(v28 + 2) = String.localized.getter();
  *(v28 + 3) = v38;
  *(v28 + 4) = sub_10001DC44;
  *(v28 + 5) = v31;
  v97 = v28;
  v28[48] = 0;
  v39 = static Detection.isLidarAvailable.getter();
  v81 = v36;
  v87 = v14;
  v88 = v29;
  if (v39)
  {
    v79 = type metadata accessor for LiveRecognitionView;
    sub_10001BD74(v96, v13, type metadata accessor for LiveRecognitionView);
    v40 = swift_allocObject();
    v78 = type metadata accessor for LiveRecognitionView;
    sub_10001C8E4(v13, v40 + v30, type metadata accessor for LiveRecognitionView);
    v41 = v91;
    (v36)(&v26[*(v14 + 28)], enum case for Control.peopleDetection(_:), v91);
    *v26 = String.localized.getter();
    *(v26 + 1) = v42;
    *(v26 + 2) = String.localized.getter();
    *(v26 + 3) = v43;
    *(v26 + 4) = sub_10001DBA0;
    *(v26 + 5) = v40;
    v26[48] = 0;
    sub_10001BD74(v96, v13, v79);
    v44 = swift_allocObject();
    sub_10001C8E4(v13, v44 + v30, v78);
    v45 = v87;
    v46 = v36;
    v47 = v90;
    (v46)(&v90[*(v87 + 28)], enum case for Control.doorDetection(_:), v41);
    *v47 = String.localized.getter();
    *(v47 + 8) = v48;
    *(v47 + 16) = String.localized.getter();
    *(v47 + 24) = v49;
    *(v47 + 32) = sub_10001DC44;
    *(v47 + 40) = v44;
    *(v47 + 48) = 0;
    v50 = v93;
    sub_10001BD74(v26, v93, type metadata accessor for DetectionButton);
    v51 = v92;
    sub_10001BD74(v47, v92, type metadata accessor for DetectionButton);
    v52 = v80;
    sub_10001BD74(v50, v80, type metadata accessor for DetectionButton);
    v53 = sub_10000D3B8(&qword_100050228, &qword_100039440);
    sub_10001BD74(v51, v52 + *(v53 + 48), type metadata accessor for DetectionButton);
    sub_10001DB40(v47, type metadata accessor for DetectionButton);
    sub_10001DB40(v26, type metadata accessor for DetectionButton);
    sub_10001DB40(v51, type metadata accessor for DetectionButton);
    sub_10001DB40(v50, type metadata accessor for DetectionButton);
    v54 = v95;
    sub_10000E284(v52, v95, &qword_100050210, &qword_100039428);
    v55 = 0;
    v56 = v54;
    v57 = v45;
  }

  else
  {
    v55 = 1;
    v56 = v95;
    v57 = v14;
  }

  v58 = v96;
  (*(v82 + 56))(v56, v55, 1, v83);
  sub_10001BD74(v58, v13, type metadata accessor for LiveRecognitionView);
  v59 = swift_allocObject();
  v96 = type metadata accessor for LiveRecognitionView;
  sub_10001C8E4(v13, v59 + v30, type metadata accessor for LiveRecognitionView);
  v60 = &v26[*(v57 + 28)];
  v61 = v91;
  v62 = v81;
  (v81)(v60, enum case for Control.textDetection(_:), v91);
  *v26 = String.localized.getter();
  *(v26 + 1) = v63;
  *(v26 + 2) = String.localized.getter();
  *(v26 + 3) = v64;
  *(v26 + 4) = sub_10001DC44;
  *(v26 + 5) = v59;
  v26[48] = 0;
  sub_10001BD74(v58, v13, type metadata accessor for LiveRecognitionView);
  v65 = swift_allocObject();
  sub_10001C8E4(v13, v65 + v30, v96);
  v66 = v90;
  (v62)(&v90[*(v87 + 28)], enum case for Control.pointSpeak(_:), v61);
  *v66 = String.localized.getter();
  *(v66 + 8) = v67;
  *(v66 + 16) = String.localized.getter();
  *(v66 + 24) = v68;
  *(v66 + 32) = sub_10001DC44;
  *(v66 + 40) = v65;
  *(v66 + 48) = 0;
  v69 = v93;
  sub_10001BD74(v97, v93, type metadata accessor for DetectionButton);
  v70 = v95;
  v71 = v85;
  sub_10001DA50(v95, v85, &qword_100050218, &qword_100039430);
  v72 = v92;
  sub_10001BD74(v26, v92, type metadata accessor for DetectionButton);
  v73 = v84;
  sub_10001BD74(v66, v84, type metadata accessor for DetectionButton);
  v74 = v86;
  sub_10001BD74(v69, v86, type metadata accessor for DetectionButton);
  v75 = sub_10000D3B8(&qword_100050220, &qword_100039438);
  sub_10001DA50(v71, v74 + v75[12], &qword_100050218, &qword_100039430);
  sub_10001BD74(v72, v74 + v75[16], type metadata accessor for DetectionButton);
  sub_10001BD74(v73, v74 + v75[20], type metadata accessor for DetectionButton);
  sub_10001DB40(v66, type metadata accessor for DetectionButton);
  sub_10001DB40(v26, type metadata accessor for DetectionButton);
  sub_10000E35C(v70, &qword_100050218, &qword_100039430);
  sub_10001DB40(v97, type metadata accessor for DetectionButton);
  sub_10001DB40(v73, type metadata accessor for DetectionButton);
  sub_10001DB40(v72, type metadata accessor for DetectionButton);
  sub_10000E35C(v71, &qword_100050218, &qword_100039430);
  return sub_10001DB40(v69, type metadata accessor for DetectionButton);
}

uint64_t sub_1000165A0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LiveRecognitionView(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for MAGAngelPreferences();
  sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences);

  return StateObject.wrappedValue.getter();
}

uint64_t sub_100016644@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  LOBYTE(v30) = 1;
  sub_1000168E4(a1, &v34);
  v19 = *&v35[16];
  v20 = *&v35[32];
  v21 = *&v35[48];
  v22 = v35[64];
  v17 = v34;
  v18 = *v35;
  v24 = v35[64];
  v23[2] = *&v35[16];
  v23[3] = *&v35[32];
  v23[4] = *&v35[48];
  v23[0] = v34;
  v23[1] = *v35;
  sub_10001DA50(&v17, &v28, &qword_1000501F8, &qword_100039410);
  sub_10000E35C(v23, &qword_1000501F8, &qword_100039410);
  *&v16[39] = v19;
  *&v16[55] = v20;
  *&v16[71] = v21;
  v16[87] = v22;
  *&v16[7] = v17;
  *&v16[23] = v18;
  v5 = v30;
  v6 = static VerticalAlignment.center.getter();
  if (qword_10004F568 != -1)
  {
    swift_once();
  }

  v7 = qword_100050D78;
  v27 = 1;
  v26 = 1;
  v25 = 1;

  v28 = v4;
  v29[0] = v5;
  *&v29[1] = *v16;
  *&v29[17] = *&v16[16];
  *&v29[81] = *&v16[80];
  *&v29[65] = *&v16[64];
  *&v29[49] = *&v16[48];
  *&v29[33] = *&v16[32];
  *&v13[9] = *&v29[73];
  v12 = *&v29[48];
  *v13 = *&v29[64];
  v10 = *&v29[16];
  v11 = *&v29[32];
  v30 = v6;
  LOBYTE(v31) = 1;
  v32 = 0;
  v33[0] = 1;
  *&v33[8] = v7;
  *&v33[16] = 0;
  v33[24] = 1;
  *&v15[9] = *&v33[9];
  v14 = v31;
  *v15 = *v33;
  v8 = *v29;
  *a2 = v4;
  a2[1] = v8;
  a2[4] = v12;
  a2[5] = *v13;
  a2[2] = v10;
  a2[3] = v11;
  *(a2 + 153) = *&v15[9];
  a2[8] = v14;
  a2[9] = *v15;
  a2[6] = *&v13[16];
  a2[7] = v6;
  sub_10001DA50(&v28, &v34, &qword_100050200, &qword_100039418);
  sub_10001DA50(&v30, &v34, &qword_100050208, &qword_100039420);

  v34 = v4;
  v35[0] = v5;
  *&v35[33] = *&v16[32];
  *&v35[49] = *&v16[48];
  v36 = *&v16[64];
  v37 = *&v16[80];
  *&v35[1] = *v16;
  *&v35[17] = *&v16[16];
  return sub_10000E35C(&v34, &qword_100050200, &qword_100039418);
}

uint64_t sub_1000168E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LiveRecognitionView(0);
  v5 = (a1 + *(v4 + 32));
  v6 = *v5;
  v7 = *(v5 + 1);
  LOBYTE(v21) = v6;
  *(&v21 + 1) = v7;
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.projectedValue.getter();
  v8 = v25;
  v9 = v26;
  v10 = (a1 + *(v4 + 36));
  v12 = *v10;
  v11 = v10[1];
  sub_10000D3B8(&qword_100050190, &qword_1000393B8);
  State.projectedValue.getter();
  v13 = v25;
  v14 = v26;
  State.init(wrappedValue:)();
  v15 = v25;
  v16 = *(&v25 + 1);
  v21 = v25;
  v22[0] = v26;
  *&v22[8] = v25;
  *&v22[24] = v26;
  LOBYTE(v23) = v25;
  *(&v23 + 1) = *(&v25 + 1);
  v24 = 5;
  v20[72] = 1;
  v17 = v23;
  *(a2 + 32) = *&v22[16];
  *(a2 + 48) = v17;
  v18 = *v22;
  *a2 = v21;
  *(a2 + 16) = v18;
  *(a2 + 64) = 5;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  v25 = v8;
  LOBYTE(v26) = v9;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = 5;
  sub_10001BA3C(&v21, v20);
  return sub_10001DAB8(&v25);
}

uint64_t sub_100016A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100016AD0, v5, v4);
}

uint64_t sub_100016AD0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(type metadata accessor for LiveRecognitionView(0) + 24);
  *(v0 + 32) = 1;
  sub_10000D3B8(&qword_10004FF78, &qword_100039258);
  AccessibilityFocusState.wrappedValue.setter();
  v4 = *(v0 + 8);

  return v4();
}

void sub_100016B74(uint64_t a1)
{
  v2 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19[-v5];
  v7 = type metadata accessor for MAGAngelClientRequest(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v19[-v12];
  v14 = (a1 + *(type metadata accessor for LiveRecognitionView(0) + 28));
  v15 = *v14;
  v16 = *(v14 + 1);
  v19[16] = v15;
  v20 = v16;
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.getter();
  if (v19[15] == 1)
  {
    v17 = [objc_opt_self() sharedApplication];
    [v17 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
  }

  else
  {
    if (qword_10004F568 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v18 - 8) + 56))(v13, 3, 13, v18);
    sub_10001BD74(v13, v11, type metadata accessor for MAGAngelClientRequest);
    sub_10000D3B8(&unk_1000506F0, &unk_100038540);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v6, v2);
    sub_10001DB40(v13, type metadata accessor for MAGAngelClientRequest);
  }
}

uint64_t sub_100016E2C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LiveRecognitionView(0) + 44));
  v2 = *v1;
  v3 = *(v1 + 1);

  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_100016ED8()
{
  v0 = type metadata accessor for NSNotificationCenter.Publisher();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000D3B8(&qword_1000500C0, &qword_100039340);
  v5 = *(*(v22 - 8) + 64);
  v6 = __chkstk_darwin(v22);
  __chkstk_darwin(v6);
  v7 = sub_10000D3B8(&qword_1000500C8, &qword_100039348);
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  sub_10001B510(&qword_1000500D0, &type metadata accessor for NSNotificationCenter.Publisher);
  Publisher.map<A>(_:)();
  v14 = *(v1 + 8);
  v14(v4, v0);
  v15 = [v12 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  Publisher.map<A>(_:)();
  v14(v4, v0);
  sub_10001DBE8(&qword_1000500D8, &qword_1000500C0, &qword_100039340);
  Publishers.Merge.init(_:_:)();
  sub_10001DBE8(&qword_1000500E0, &qword_1000500C8, &qword_100039348);
  v16 = v20;
  v17 = Publisher.eraseToAnyPublisher()();
  (*(v21 + 8))(v11, v16);
  return v17;
}

uint64_t sub_100017288(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = (a2 + *(type metadata accessor for LiveRecognitionView(0) + 28));
  v5 = *v3;
  v6 = *(v3 + 1);
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  return State.wrappedValue.setter();
}

uint64_t sub_100017300@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = a1;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DetectionButton(0);
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v60);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10000D3B8(&qword_10004FEB0, &qword_100038F98);
  v10 = *(v51 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v51);
  v13 = &v50 - v12;
  v50 = sub_10000D3B8(&qword_10004FEB8, &qword_100038FA0);
  v14 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v16 = &v50 - v15;
  v54 = sub_10000D3B8(&qword_10004FEC0, &qword_100038FA8);
  v17 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v55 = &v50 - v18;
  v56 = sub_10000D3B8(&qword_10004FEC8, &qword_100038FB0);
  v19 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v57 = &v50 - v20;
  v58 = sub_10000D3B8(&qword_10004FED0, &qword_100038FB8);
  v21 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v59 = &v50 - v22;
  if (qword_10004F568 != -1)
  {
    swift_once();
  }

  v23 = qword_100050D78;
  sub_10001BD74(v2, &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetectionButton);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = sub_10001C8E4(v9, v26 + v24, type metadata accessor for DetectionButton);
  *(v26 + v25) = v23;
  __chkstk_darwin(v27);
  *(&v50 - 2) = v2;

  sub_10000D3B8(&qword_10004FED8, &qword_100038FC0);
  sub_10001BF88();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  sub_10001DBE8(&qword_10004FEF8, &qword_10004FEB0, &qword_100038F98);
  sub_10001B510(&qword_10004FD80, &type metadata accessor for BorderedProminentButtonStyle);
  v28 = v51;
  v29 = v53;
  View.buttonStyle<A>(_:)();
  (*(v52 + 8))(v6, v29);
  (*(v10 + 8))(v13, v28);
  v30 = &v16[*(v50 + 36)];
  v31 = v30 + *(sub_10000D3B8(&qword_10004FD88, &qword_100038E28) + 28);
  static ButtonBorderShape.circle.getter();
  *v30 = swift_getKeyPath();
  if (sub_10001827C())
  {
    v32 = v55;
    if (qword_10004F640 != -1)
    {
      swift_once();
    }

    v33 = &qword_100050E50;
  }

  else
  {
    v32 = v55;
    if (qword_10004F638 != -1)
    {
      swift_once();
    }

    v33 = &qword_100050E48;
  }

  v34 = *v33;

  KeyPath = swift_getKeyPath();
  v62 = v34;
  v36 = AnyShapeStyle.init<A>(_:)();
  sub_10000E284(v16, v32, &qword_10004FEB8, &qword_100038FA0);
  v37 = (v32 + *(v54 + 36));
  *v37 = KeyPath;
  v37[1] = v36;
  if (sub_10001827C())
  {
    if (qword_10004F638 != -1)
    {
      swift_once();
    }

    v38 = &qword_100050E48;
  }

  else
  {
    if (qword_10004F640 != -1)
    {
      swift_once();
    }

    v38 = &qword_100050E50;
  }

  v39 = *v38;

  v40 = v57;
  sub_10000E284(v32, v57, &qword_10004FEC0, &qword_100038FA8);
  *(v40 + *(v56 + 36)) = v39;
  v41 = v2 + *(v60 + 28);
  v62 = Control.accessibilityLabel.getter();
  v63 = v42;
  sub_10001C0A0();
  sub_10001B928();
  v43 = v59;
  View.accessibilityLabel<A>(_:)();

  sub_10000E35C(v40, &qword_10004FEC8, &qword_100038FB0);
  v44 = sub_10001827C();
  v45 = 16;
  if (v44)
  {
    v45 = 0;
  }

  v46 = 24;
  if (v44)
  {
    v46 = 8;
  }

  v47 = *(v2 + v45);
  v48 = *(v2 + v46);

  v62 = v47;
  v63 = v48;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  return sub_10000E35C(v43, &qword_10004FED0, &qword_100038FB8);
}

uint64_t sub_100017AD8(uint64_t a1)
{
  v2 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31[-v5];
  v7 = type metadata accessor for MAGAngelClientRequest(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v31[-v12];
  v14 = type metadata accessor for Control();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v31[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for DetectionButton(0);
  (*(v15 + 16))(v18, a1 + *(v19 + 28), v14);
  v20 = (*(v15 + 88))(v18, v14);
  if (v20 == enum case for Control.peopleDetection(_:))
  {
    v21 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v21 - 8) + 56))(v13, 7, 13, v21);
LABEL_11:
    sub_10001BD74(v13, v11, type metadata accessor for MAGAngelClientRequest);
    sub_10000D3B8(&unk_1000506F0, &unk_100038540);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v6, v2);
    return sub_10001DB40(v13, type metadata accessor for MAGAngelClientRequest);
  }

  if (v20 == enum case for Control.doorDetection(_:))
  {
    v22 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v22 - 8) + 56))(v13, 8, 13, v22);
    goto LABEL_11;
  }

  if (v20 == enum case for Control.objectUnderstanding(_:))
  {
    v23 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v23 - 8) + 56))(v13, 6, 13, v23);
    goto LABEL_11;
  }

  if (v20 == enum case for Control.imageCaption(_:))
  {
    v24 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v24 - 8) + 56))(v13, 9, 13, v24);
    goto LABEL_11;
  }

  if (v20 == enum case for Control.pointSpeak(_:))
  {
    v25 = type metadata accessor for MAGSimulatedEvent();
    (*(*(v25 - 8) + 56))(v13, 10, 13, v25);
    goto LABEL_11;
  }

  v32 = enum case for Control.textDetection(_:);
  v27 = v20;
  v28 = type metadata accessor for MAGSimulatedEvent();
  v29 = *(*(v28 - 8) + 56);
  v30 = (v3 + 8);
  if (v27 != v32)
  {
    v29(v13, 2, 13, v28);
    sub_10001BD74(v13, v11, type metadata accessor for MAGAngelClientRequest);
    sub_10000D3B8(&unk_1000506F0, &unk_100038540);
    AsyncStream.Continuation.yield(_:)();
    (*v30)(v6, v2);
    sub_10001DB40(v13, type metadata accessor for MAGAngelClientRequest);
    return (*(v15 + 8))(v18, v14);
  }

  v29(v13, 5, 13, v28);
  sub_10001BD74(v13, v11, type metadata accessor for MAGAngelClientRequest);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*v30)(v6, v2);
  return sub_10001DB40(v13, type metadata accessor for MAGAngelClientRequest);
}

uint64_t sub_100018030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v9 = a1 + *(type metadata accessor for DetectionButton(0) + 28);
  Control.angelIconName.getter();
  Image.init(_internalSystemName:)();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v10 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v8, v4);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v20[54] = v25;
  *&v20[70] = v26;
  *&v20[86] = v27;
  *&v20[102] = v28;
  *&v20[6] = v22;
  *&v20[22] = v23;
  v21 = 1;
  *&v20[38] = v24;
  LOBYTE(v4) = static Edge.Set.all.getter();
  result = EdgeInsets.init(_all:)();
  v12 = *&v20[80];
  *(a2 + 82) = *&v20[64];
  *(a2 + 98) = v12;
  *(a2 + 114) = *&v20[96];
  v13 = *&v20[16];
  *(a2 + 18) = *v20;
  *(a2 + 34) = v13;
  v14 = *&v20[48];
  *(a2 + 50) = *&v20[32];
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 128) = *&v20[110];
  *(a2 + 66) = v14;
  *(a2 + 136) = v4;
  *(a2 + 144) = v15;
  *(a2 + 152) = v16;
  *(a2 + 160) = v17;
  *(a2 + 168) = v18;
  *(a2 + 176) = 0;
  return result;
}

uint64_t sub_10001827C()
{
  v1 = type metadata accessor for Control();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DetectionButton(0);
  (*(v2 + 16))(v5, v0 + *(v6 + 28), v1);
  v7 = (*(v2 + 88))(v5, v1);
  if (v7 == enum case for Control.peopleDetection(_:))
  {
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    type metadata accessor for MAGAngelPreferences();
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v27[11];
  }

  else if (v7 == enum case for Control.doorDetection(_:))
  {
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
    v14 = *(v0 + 48);
    type metadata accessor for MAGAngelPreferences();
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v27[12];
  }

  else if (v7 == enum case for Control.objectUnderstanding(_:))
  {
    v15 = *(v0 + 32);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    type metadata accessor for MAGAngelPreferences();
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v27[13];
  }

  else if (v7 == enum case for Control.imageCaption(_:))
  {
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);
    v20 = *(v0 + 48);
    type metadata accessor for MAGAngelPreferences();
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v27[10];
  }

  else if (v7 == enum case for Control.pointSpeak(_:))
  {
    v21 = *(v0 + 32);
    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    type metadata accessor for MAGAngelPreferences();
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v27[15];
  }

  else if (v7 == enum case for Control.textDetection(_:))
  {
    v24 = *(v0 + 32);
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    type metadata accessor for MAGAngelPreferences();
    sub_10001B510(&unk_10004FCF0, type metadata accessor for MAGAngelPreferences);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    return v27[14];
  }

  else
  {
    (*(v2 + 8))(v5, v1);
    return 0;
  }
}

uint64_t sub_10001886C@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = type metadata accessor for BorderedProminentButtonStyle();
  v65 = *(v1 - 8);
  v66 = v1;
  v2 = *(v65 + 64);
  __chkstk_darwin(v1);
  v64 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10000D3B8(&qword_10004FD28, &qword_100038DF0);
  v4 = *(v57 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v57);
  v7 = &v56 - v6;
  v56 = sub_10000D3B8(&qword_10004FD30, &qword_100038DF8);
  v8 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v10 = &v56 - v9;
  v59 = sub_10000D3B8(&qword_10004FD38, &qword_100038E00);
  v11 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v13 = &v56 - v12;
  v14 = sub_10000D3B8(&qword_10004FD40, &qword_100038E08);
  v61 = *(v14 - 8);
  v62 = v14;
  v15 = *(v61 + 64);
  __chkstk_darwin(v14);
  v60 = &v56 - v16;
  v58 = sub_10000D3B8(&qword_10004FD48, &qword_100038E10);
  v17 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v19 = &v56 - v18;
  v63 = sub_10000D3B8(&qword_10004FD50, &qword_100038E18);
  v20 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v22 = &v56 - v21;

  sub_10000D3B8(&qword_10004FD58, &qword_100038E20);
  sub_10001DBE8(&qword_10004FD60, &qword_10004FD58, &qword_100038E20);
  Button.init(action:label:)();
  v23 = static Edge.Set.top.getter();
  v24 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v23)
  {
    v24 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  (*(v4 + 32))(v10, v7, v57);
  v33 = &v10[*(v56 + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = static Edge.Set.bottom.getter();
  v35 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v34)
  {
    v35 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_10000E284(v10, v13, &qword_10004FD30, &qword_100038DF8);
  v44 = &v13[*(v59 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = v64;
  BorderedProminentButtonStyle.init()();
  sub_10001C6B4(&qword_10004FD68, &qword_10004FD38, &qword_100038E00, sub_10001B458);
  sub_10001B510(&qword_10004FD80, &type metadata accessor for BorderedProminentButtonStyle);
  v46 = v60;
  v47 = v66;
  View.buttonStyle<A>(_:)();
  (*(v65 + 8))(v45, v47);
  sub_10000E35C(v13, &qword_10004FD38, &qword_100038E00);
  v48 = &v19[*(v58 + 36)];
  v49 = v48 + *(sub_10000D3B8(&qword_10004FD88, &qword_100038E28) + 28);
  static ButtonBorderShape.circle.getter();
  *v48 = swift_getKeyPath();
  (*(v61 + 32))(v19, v46, v62);
  if (qword_10004F640 != -1)
  {
    swift_once();
  }

  v50 = qword_100050E50;
  KeyPath = swift_getKeyPath();
  v68 = v50;

  v52 = AnyShapeStyle.init<A>(_:)();
  sub_10000E284(v19, v22, &qword_10004FD48, &qword_100038E10);
  v53 = &v22[*(v63 + 36)];
  *v53 = KeyPath;
  v53[1] = v52;
  v68 = String.localized.getter();
  v69 = v54;
  sub_10001B6F8();
  sub_10001B928();
  View.accessibilityLabel<A>(_:)();

  return sub_10000E35C(v22, &qword_10004FD50, &qword_100038E18);
}

uint64_t sub_100018F64()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v14 - v3;
  v5 = type metadata accessor for MAGAngelClientRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v12 - 8) + 56))(v11, 2, 13, v12);
  sub_10001BD74(v11, v9, type metadata accessor for MAGAngelClientRequest);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v4, v0);
  return sub_10001DB40(v11, type metadata accessor for MAGAngelClientRequest);
}

__n128 sub_100019148@<Q0>(uint64_t a1@<X8>)
{
  v2 = static Alignment.center.getter();
  v4 = v3;
  sub_10001924C(&v10);
  v25 = v16;
  v26 = v17;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v19 = v10;
  v20 = v11;
  v28[6] = v16;
  v28[7] = v17;
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[5] = v15;
  v27 = v18;
  v29 = v18;
  v28[0] = v10;
  v28[1] = v11;
  sub_10001DA50(&v19, &v9, &qword_10004FDC0, &qword_100038E98);
  sub_10000E35C(v28, &qword_10004FDC0, &qword_100038E98);
  *a1 = v2;
  *(a1 + 8) = v4;
  v5 = v26;
  *(a1 + 112) = v25;
  *(a1 + 128) = v5;
  *(a1 + 144) = v27;
  v6 = v22;
  *(a1 + 48) = v21;
  *(a1 + 64) = v6;
  v7 = v24;
  *(a1 + 80) = v23;
  *(a1 + 96) = v7;
  result = v20;
  *(a1 + 16) = v19;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10001924C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10004F640 != -1)
  {
    swift_once();
  }

  v7 = qword_100050E50;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v41[3] = *&v41[27];
  *&v41[11] = *&v41[35];
  *&v41[19] = *&v41[43];
  v28 = v7;

  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v8 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v6, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = v42;
  v10 = v43;
  v11 = v44;
  v12 = v45;
  v26 = v47;
  v27 = v46;
  if (qword_10004F638 != -1)
  {
    swift_once();
  }

  v13 = qword_100050E48;
  KeyPath = swift_getKeyPath();
  *&v48[0] = v28;
  WORD4(v48[0]) = 256;
  *(v48 + 10) = *v41;
  *(&v48[1] + 10) = *&v41[8];
  *(&v48[2] + 10) = *&v41[16];
  *(&v48[3] + 1) = *&v41[23];
  *&v33[31] = v48[2];
  *&v33[39] = v48[3];
  *&v33[15] = v48[0];
  *&v33[23] = v48[1];
  *&v49 = v8;
  *(&v49 + 1) = v9;
  LOBYTE(v50) = v10;
  DWORD1(v50) = *&v40[3];
  *(&v50 + 1) = *v40;
  *(&v50 + 1) = v11;
  LOBYTE(v51) = v12;
  DWORD1(v51) = *&v39[3];
  v15 = *v39;
  *(&v51 + 1) = *v39;
  v17 = v26;
  v16 = v27;
  *(&v51 + 1) = v27;
  *&v52 = v26;
  *(&v52 + 1) = KeyPath;
  v53 = v13;
  v38 = v13;
  v36 = v51;
  v37 = v52;
  v34 = v49;
  v35 = v50;
  v18 = v48[0];
  v19 = v48[1];
  v20 = v48[3];
  *(a1 + 32) = v48[2];
  *(a1 + 48) = v20;
  *a1 = v18;
  *(a1 + 16) = v19;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  *(a1 + 128) = v38;
  *(a1 + 96) = v23;
  *(a1 + 112) = v24;
  *(a1 + 64) = v21;
  *(a1 + 80) = v22;
  v54[0] = v8;
  v54[1] = v9;
  v55 = v10;
  *v56 = *v40;
  *&v56[3] = *&v40[3];
  v57 = v11;
  v58 = v12;
  *v59 = v15;
  *&v59[3] = *&v39[3];
  v60 = v16;
  v61 = v17;
  v62 = KeyPath;
  v63 = v13;

  sub_10001DA50(v48, &v29, &qword_10004FDC8, &qword_100038ED0);
  sub_10001DA50(&v49, &v29, &qword_10004FDD0, &qword_100038ED8);
  sub_10000E35C(v54, &qword_10004FDD0, &qword_100038ED8);
  v29 = v28;
  v30 = 256;
  v31 = *v41;
  v32 = *&v41[8];
  *v33 = *&v41[16];
  *&v33[7] = *&v41[23];
  return sub_10000E35C(&v29, &qword_10004FDC8, &qword_100038ED0);
}

uint64_t sub_100019638@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v43 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v43);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000D3B8(&qword_10004FDD8, &qword_100038EE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v40 - v9;
  v42 = sub_10000D3B8(&qword_10004FDE0, &qword_100038EE8);
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v42);
  v14 = v40 - v13;
  v44 = sub_10000D3B8(&qword_10004FDE8, &qword_100038EF0);
  v15 = *(*(v44 - 8) + 64);
  v16 = __chkstk_darwin(v44);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v41 = v40 - v19;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v20 = sub_10000D3B8(&qword_10004FDF0, &qword_100038EF8);
  sub_100019B64(v2, &v10[*(v20 + 44)]);
  static AccessibilityChildBehavior.combine.getter();
  v21 = sub_10001DBE8(&qword_10004FDF8, &qword_10004FDD8, &qword_100038EE0);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v6, v43);
  sub_10000E35C(v10, &qword_10004FDD8, &qword_100038EE0);
  *&v48 = String.localized.getter();
  *(&v48 + 1) = v22;
  v46 = v7;
  v47 = v21;
  swift_getOpaqueTypeConformance2();
  sub_10001B928();
  v23 = v42;
  View.accessibilityLabel<A>(_:)();

  (*(v11 + 8))(v14, v23);
  v24 = v41;
  v48 = *(v40[1] + 48);
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.getter();
  *&v48 = String.localized.getter();
  *(&v48 + 1) = v25;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  sub_10000E35C(v18, &qword_10004FDE8, &qword_100038EF0);
  sub_10000D3B8(&qword_10004FE08, &qword_100038F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100038C20;
  LOBYTE(v14) = static Edge.Set.leading.getter();
  *(inited + 32) = v14;
  v27 = static Edge.Set.bottom.getter();
  *(inited + 33) = v27;
  v28 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v14)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v27)
  {
    v28 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v45;
  sub_10000E284(v24, v45, &qword_10004FDE8, &qword_100038EF0);
  result = sub_10000D3B8(&qword_10004FE10, &qword_100038F10);
  v39 = v37 + *(result + 36);
  *v39 = v28;
  *(v39 + 8) = v30;
  *(v39 + 16) = v32;
  *(v39 + 24) = v34;
  *(v39 + 32) = v36;
  *(v39 + 40) = 0;
  return result;
}

uint64_t sub_100019B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v55 = type metadata accessor for BorderedProminentButtonStyle();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v55);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000D3B8(&qword_10004FE18, &qword_100038F18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v54 - v10;
  v12 = sub_10000D3B8(&qword_10004FE20, &qword_100038F20);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v54 - v15;
  v56 = sub_10000D3B8(&qword_10004FE28, &qword_100038F28);
  v17 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v59 = &v54 - v18;
  v58 = sub_10000D3B8(&qword_10004FE30, &qword_100038F30);
  v19 = *(*(v58 - 8) + 64);
  v20 = __chkstk_darwin(v58);
  v61 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v57 = &v54 - v23;
  __chkstk_darwin(v22);
  v60 = &v54 - v24;
  v25 = swift_allocObject();
  v26 = *(a1 + 48);
  *(v25 + 48) = *(a1 + 32);
  *(v25 + 64) = v26;
  *(v25 + 80) = *(a1 + 64);
  v27 = *(a1 + 16);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v27;
  sub_10001BA3C(a1, v65);
  sub_10000D3B8(&qword_10004FE38, &qword_100038F38);
  sub_10001BA74();
  Button.init(action:label:)();
  BorderedProminentButtonStyle.init()();
  sub_10001DBE8(&qword_10004FE80, &qword_10004FE18, &qword_100038F18);
  sub_10001B510(&qword_10004FD80, &type metadata accessor for BorderedProminentButtonStyle);
  v28 = v55;
  View.buttonStyle<A>(_:)();
  v29 = v6;
  v30 = v16;
  (*(v3 + 8))(v29, v28);
  (*(v8 + 8))(v11, v7);
  v31 = &v16[*(v13 + 44)];
  v32 = v31 + *(sub_10000D3B8(&qword_10004FD88, &qword_100038E28) + 28);
  static ButtonBorderShape.circle.getter();
  *v31 = swift_getKeyPath();
  v64 = *(a1 + 48);
  v65[0] = v64;
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.getter();
  if (v63 == 1)
  {
    if (qword_10004F640 != -1)
    {
      swift_once();
    }

    v33 = &qword_100050E50;
  }

  else
  {
    if (qword_10004F638 != -1)
    {
      swift_once();
    }

    v33 = &qword_100050E48;
  }

  v34 = v59;
  v35 = *v33;

  KeyPath = swift_getKeyPath();
  *&v64 = v35;
  v37 = AnyShapeStyle.init<A>(_:)();
  sub_10000E284(v30, v34, &qword_10004FE20, &qword_100038F20);
  v38 = (v34 + *(v56 + 36));
  *v38 = KeyPath;
  v38[1] = v37;
  v64 = v65[0];
  State.wrappedValue.getter();
  if (v63 == 1)
  {
    v39 = static Color.black.getter();
  }

  else
  {
    if (qword_10004F640 != -1)
    {
      swift_once();
    }

    v39 = qword_100050E50;
  }

  v40 = v57;
  sub_10000E284(v34, v57, &qword_10004FE28, &qword_100038F28);
  *(v40 + *(v58 + 36)) = v39;
  v41 = v60;
  sub_10000E284(v40, v60, &qword_10004FE30, &qword_100038F30);
  *&v64 = String.localized.getter();
  *(&v64 + 1) = v42;
  sub_10001B928();
  v43 = Text.init<A>(_:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v61;
  sub_10001DA50(v41, v61, &qword_10004FE30, &qword_100038F30);
  v51 = v62;
  sub_10001DA50(v50, v62, &qword_10004FE30, &qword_100038F30);
  v52 = v51 + *(sub_10000D3B8(&qword_10004FE88, &unk_100038F58) + 48);
  *v52 = v43;
  *(v52 + 8) = v45;
  v47 &= 1u;
  *(v52 + 16) = v47;
  *(v52 + 24) = v49;
  sub_10001BC3C(v43, v45, v47);

  sub_10000E35C(v41, &qword_10004FE30, &qword_100038F30);
  sub_10001BC4C(v43, v45, v47);

  return sub_10000E35C(v50, &qword_10004FE30, &qword_100038F30);
}

uint64_t sub_10001A258(uint64_t a1)
{
  v2 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v12 - v4;
  v14 = *(a1 + 48);
  v12[0] = *(a1 + 48);
  v15 = *(&v14 + 1);
  sub_10001DA50(&v15, v13, &qword_10004FE90, &qword_100038F68);
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.getter();
  if (v13[0])
  {
    return sub_10000E35C(&v14, &qword_10004FE00, &qword_100038F00);
  }

  v12[0] = v14;
  v13[0] = 1;
  State.wrappedValue.setter();
  sub_10000E35C(&v14, &qword_10004FE00, &qword_100038F00);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  type metadata accessor for MainActor();
  sub_10001BA3C(a1, v12);
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  v10 = *(a1 + 48);
  *(v9 + 64) = *(a1 + 32);
  *(v9 + 80) = v10;
  *(v9 + 96) = *(a1 + 64);
  v11 = *(a1 + 16);
  *(v9 + 32) = *a1;
  *(v9 + 48) = v11;
  sub_10001AE10(0, 0, v5, &unk_100038F78, v9);
}

uint64_t sub_10001A448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = *(*(sub_10000D3B8(&qword_10004FE98, &qword_100038F80) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for MAGDocumentData();
  v4[19] = v6;
  v7 = *(v6 - 8);
  v4[20] = v7;
  v8 = *(v7 + 64) + 15;
  v4[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v10;
  v4[24] = v9;

  return _swift_task_switch(sub_10001A574, v10, v9);
}

uint64_t sub_10001A574()
{
  if (qword_10004F620 != -1)
  {
    swift_once();
  }

  v1 = *(v0[17] + 64);
  v2 = *(&async function pointer to dispatch thunk of MAGDocumentFramingService.gatherDocumentWithFeedback(maxFeedbackAttempts:cropToDocument:checkForDocumentMode:) + 1);
  v6 = &async function pointer to dispatch thunk of MAGDocumentFramingService.gatherDocumentWithFeedback(maxFeedbackAttempts:cropToDocument:checkForDocumentMode:) + async function pointer to dispatch thunk of MAGDocumentFramingService.gatherDocumentWithFeedback(maxFeedbackAttempts:cropToDocument:checkForDocumentMode:);
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_10001A670;
  v4 = v0[18];

  return (v6)(v4, v1, 1, 0);
}

uint64_t sub_10001A670()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_10001ACF4;
  }

  else
  {
    v7 = sub_10001A7AC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10001A7AC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 176);

    sub_10000E35C(v3, &qword_10004FE98, &qword_100038F80);
LABEL_8:
    *(v0 + 80) = *(*(v0 + 136) + 48);
    *(v0 + 57) = 0;
    sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
    State.wrappedValue.setter();
    v16 = *(v0 + 168);
    v17 = *(v0 + 144);

    v18 = *(v0 + 8);

    return v18();
  }

  (*(v2 + 32))(*(v0 + 168), v3, v1);
  v5 = MAGDocumentData.pixelBuffer.getter();
  *(v0 + 216) = v5;
  if (!v5)
  {
    v15 = *(v0 + 176);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    goto LABEL_8;
  }

  v6 = v5;
  *(v0 + 224) = static CompositionRoot.textDetectionService.getter();
  v7 = type metadata accessor for MAGCVPixelBufferWrapper();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = v6;
  v11 = MAGCVPixelBufferWrapper.init(_:)();
  *(v0 + 232) = v11;
  v12 = *(&async function pointer to dispatch thunk of MAGTextDetectionService.detectText(fromPixelBufferWrapper:) + 1);
  v19 = (&async function pointer to dispatch thunk of MAGTextDetectionService.detectText(fromPixelBufferWrapper:) + async function pointer to dispatch thunk of MAGTextDetectionService.detectText(fromPixelBufferWrapper:));
  v13 = swift_task_alloc();
  *(v0 + 240) = v13;
  *v13 = v0;
  v13[1] = sub_10001A9C8;

  return v19(v11);
}

uint64_t sub_10001A9C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *(*v2 + 232);
  v7 = *(*v2 + 224);
  v8 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v9 = v4[23];
    v10 = v4[24];
    v11 = sub_10001AD6C;
  }

  else
  {
    v4[32] = a1;
    v9 = v4[23];
    v10 = v4[24];
    v11 = sub_10001AB30;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10001AB30()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 136);

  v8 = detectTextBlocks(forDocument:)();
  v9 = *(v7 + 5);
  *(v0 + 16) = *(v7 + 24);
  *(v0 + 32) = v9;
  *(v0 + 120) = v8;
  sub_10000D3B8(&qword_10004FEA0, &qword_100038F88);
  Binding.wrappedValue.setter();
  v10 = *v7;
  *(v0 + 56) = *(v7 + 16);
  *(v0 + 40) = v10;
  *(v0 + 58) = 1;
  sub_10000D3B8(&qword_10004FEA8, &qword_100038F90);
  Binding.wrappedValue.setter();
  *(v0 + 64) = v7[3];
  *(v0 + 96) = v7[3];
  *(v0 + 59) = 0;
  *(v0 + 112) = *(v0 + 72);
  sub_10001DA50(v0 + 112, v0 + 128, &qword_10004FE90, &qword_100038F68);
  sub_10000D3B8(&qword_10004FE00, &qword_100038F00);
  State.wrappedValue.setter();

  sub_10000E35C(v0 + 64, &qword_10004FE00, &qword_100038F00);
  (*(v6 + 8))(v4, v5);
  v11 = *(v0 + 168);
  v12 = *(v0 + 144);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10001ACF4()
{
  v1 = v0[22];

  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[18];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001AD6C()
{
  v1 = v0[27];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v5 = v0[20];

  (*(v5 + 8))(v3, v4);
  v6 = v0[31];
  v7 = v0[21];
  v8 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10001AE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10001DA50(a3, v24 - v10, &unk_10004F870, &qword_100038BF0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000E35C(v11, &unk_10004F870, &qword_100038BF0);
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

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000E35C(a3, &unk_10004F870, &qword_100038BF0);

      return v22;
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

  sub_10000E35C(a3, &unk_10004F870, &qword_100038BF0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10001B0BC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000D3B8(&qword_10004FE60, &qword_100038F48);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v31 - v9;
  v11 = sub_10000D3B8(&qword_10004FE50, &qword_100038F40);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  Image.init(_internalSystemName:)();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v16 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v6, v2);
  v31 = v16;
  LOWORD(v32) = 1;
  sub_10000D3B8(&qword_10004FE70, &qword_100038F50);
  sub_10001BBB8();
  View.accessibilityHidden(_:)();

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000E284(v10, v15, &qword_10004FE60, &qword_100038F48);
  v17 = &v15[*(v12 + 44)];
  v18 = v36;
  *(v17 + 4) = v35;
  *(v17 + 5) = v18;
  *(v17 + 6) = v37;
  v19 = v32;
  *v17 = v31;
  *(v17 + 1) = v19;
  v20 = v34;
  *(v17 + 2) = v33;
  *(v17 + 3) = v20;
  LOBYTE(v2) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_10000E284(v15, a1, &qword_10004FE50, &qword_100038F40);
  result = sub_10000D3B8(&qword_10004FE38, &qword_100038F38);
  v30 = a1 + *(result + 36);
  *v30 = v2;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_10001B3F0@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 8);
  v3 = *v1;
  v4 = v1[1];
  return sub_100019638(a1);
}

unint64_t sub_10001B458()
{
  result = qword_10004FD70;
  if (!qword_10004FD70)
  {
    sub_10000E208(&qword_10004FD30, &qword_100038DF8);
    sub_10001DBE8(&qword_10004FD78, &qword_10004FD28, &qword_100038DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FD70);
  }

  return result;
}

uint64_t sub_10001B510(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001B590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_10001B6A0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001B6CC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

unint64_t sub_10001B6F8()
{
  result = qword_10004FD90;
  if (!qword_10004FD90)
  {
    sub_10000E208(&qword_10004FD50, &qword_100038E18);
    sub_10001B7B0();
    sub_10001DBE8(&qword_10004FDA8, &qword_10004FDB0, &qword_100038E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FD90);
  }

  return result;
}

unint64_t sub_10001B7B0()
{
  result = qword_10004FD98;
  if (!qword_10004FD98)
  {
    sub_10000E208(&qword_10004FD48, &qword_100038E10);
    sub_10000E208(&qword_10004FD38, &qword_100038E00);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10001C6B4(&qword_10004FD68, &qword_10004FD38, &qword_100038E00, sub_10001B458);
    sub_10001B510(&qword_10004FD80, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10001DBE8(&qword_10004FDA0, &qword_10004FD88, &qword_100038E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FD98);
  }

  return result;
}

unint64_t sub_10001B928()
{
  result = qword_10004FDB8;
  if (!qword_10004FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FDB8);
  }

  return result;
}

uint64_t sub_10001B97C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001B9A8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10001B9D4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[9];

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_10001BA74()
{
  result = qword_10004FE40;
  if (!qword_10004FE40)
  {
    sub_10000E208(&qword_10004FE38, &qword_100038F38);
    sub_10001BB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FE40);
  }

  return result;
}

unint64_t sub_10001BB00()
{
  result = qword_10004FE48;
  if (!qword_10004FE48)
  {
    sub_10000E208(&qword_10004FE50, &qword_100038F40);
    sub_10001C5BC(&qword_10004FE58, &qword_10004FE60, &qword_100038F48, sub_10001BBB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FE48);
  }

  return result;
}

unint64_t sub_10001BBB8()
{
  result = qword_10004FE68;
  if (!qword_10004FE68)
  {
    sub_10000E208(&qword_10004FE70, &qword_100038F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FE68);
  }

  return result;
}

uint64_t sub_10001BC3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10001BC4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10001BC5C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[11];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10001BCC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DDD4;

  return sub_10001A448(a1, v4, v5, v1 + 32);
}

uint64_t sub_10001BD74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001BDDC()
{
  v1 = (type metadata accessor for DetectionButton(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v5 + 24);

  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  v10 = *(v5 + 48);
  sub_10001BEEC();
  v11 = v1[9];
  v12 = type metadata accessor for Control();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  v13 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10001BEF4()
{
  v1 = *(type metadata accessor for DetectionButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100017AD8(v0 + v2);
}

unint64_t sub_10001BF88()
{
  result = qword_10004FEE0;
  if (!qword_10004FEE0)
  {
    sub_10000E208(&qword_10004FED8, &qword_100038FC0);
    sub_10001C014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FEE0);
  }

  return result;
}

unint64_t sub_10001C014()
{
  result = qword_10004FEE8;
  if (!qword_10004FEE8)
  {
    sub_10000E208(&qword_10004FEF0, &qword_100038FC8);
    sub_10001BBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FEE8);
  }

  return result;
}

unint64_t sub_10001C0A0()
{
  result = qword_10004FF00;
  if (!qword_10004FF00)
  {
    sub_10000E208(&qword_10004FEC8, &qword_100038FB0);
    sub_10001C158();
    sub_10001DBE8(&qword_10004FF18, &qword_10004FF20, &qword_100038FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FF00);
  }

  return result;
}

unint64_t sub_10001C158()
{
  result = qword_10004FF08;
  if (!qword_10004FF08)
  {
    sub_10000E208(&qword_10004FEC0, &qword_100038FA8);
    sub_10001C210();
    sub_10001DBE8(&qword_10004FDA8, &qword_10004FDB0, &qword_100038E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FF08);
  }

  return result;
}

unint64_t sub_10001C210()
{
  result = qword_10004FF10;
  if (!qword_10004FF10)
  {
    sub_10000E208(&qword_10004FEB8, &qword_100038FA0);
    sub_10000E208(&qword_10004FEB0, &qword_100038F98);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_10001DBE8(&qword_10004FEF8, &qword_10004FEB0, &qword_100038F98);
    sub_10001B510(&qword_10004FD80, &type metadata accessor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10001DBE8(&qword_10004FDA0, &qword_10004FD88, &qword_100038E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FF10);
  }

  return result;
}

uint64_t sub_10001C5BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000E208(a2, a3);
    a4();
    sub_10001B510(&qword_10004FE78, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001C6B4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000E208(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001C738()
{
  result = qword_10004FF40;
  if (!qword_10004FF40)
  {
    sub_10000E208(&qword_10004FDE8, &qword_100038EF0);
    sub_10000E208(&qword_10004FDD8, &qword_100038EE0);
    sub_10001DBE8(&qword_10004FDF8, &qword_10004FDD8, &qword_100038EE0);
    swift_getOpaqueTypeConformance2();
    sub_10001B510(&qword_10004FE78, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004FF40);
  }

  return result;
}

uint64_t sub_10001C8E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001C9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000D3B8(&qword_10004FF70, &qword_100039250);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_10000D3B8(&qword_10004FF78, &qword_100039258);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10001CAFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10000D3B8(&qword_10004FF70, &qword_100039250);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10000D3B8(&qword_10004FF78, &qword_100039258);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_10001CC1C()
{
  sub_10001CCF4();
  if (v0 <= 0x3F)
  {
    sub_10001305C();
    if (v1 <= 0x3F)
    {
      sub_10001CD4C();
      if (v2 <= 0x3F)
      {
        sub_10001CDA4();
        if (v3 <= 0x3F)
        {
          sub_10001CDF4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10001CCF4()
{
  if (!qword_10004FFE8)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FFE8);
    }
  }
}

void sub_10001CD4C()
{
  if (!qword_10004FFF0)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FFF0);
    }
  }
}

void sub_10001CDA4()
{
  if (!qword_10004FFF8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10004FFF8);
    }
  }
}

void sub_10001CDF4()
{
  if (!qword_100050000)
  {
    sub_10000E208(&qword_10004FF68, &qword_100039248);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100050000);
    }
  }
}

unint64_t sub_10001CE5C()
{
  result = qword_100050048;
  if (!qword_100050048)
  {
    sub_10000E208(&qword_10004FF58, &qword_100039208);
    sub_10001CF14();
    sub_10001DBE8(&qword_100050060, &qword_100050068, &qword_100039278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050048);
  }

  return result;
}

unint64_t sub_10001CF14()
{
  result = qword_100050050;
  if (!qword_100050050)
  {
    sub_10000E208(&qword_10004FF50, &qword_100039200);
    sub_10001B510(&qword_100050058, type metadata accessor for LiveRecognitionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050050);
  }

  return result;
}

unint64_t sub_10001CFEC()
{
  result = qword_100050098;
  if (!qword_100050098)
  {
    sub_10000E208(&qword_100050088, &qword_100039300);
    sub_10001DBE8(&qword_1000500A0, &qword_1000500A8, &qword_100039310);
    sub_10001D0A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050098);
  }

  return result;
}

unint64_t sub_10001D0A4()
{
  result = qword_1000500B0;
  if (!qword_1000500B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000500B0);
  }

  return result;
}

uint64_t sub_10001D0F8()
{
  v1 = type metadata accessor for LiveRecognitionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  sub_10000D3B8(&qword_10004FF60, &qword_100039240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = v6 + v1[5];
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = v9[16];
  sub_10001BEEC();
  v13 = v6 + v1[6];
  v14 = type metadata accessor for AccessibilityTechnologies();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v13, 1, v14))
  {
    (*(v15 + 8))(v13, v14);
  }

  v16 = *&v13[*(sub_10000D3B8(&qword_10004FF78, &qword_100039258) + 40)];

  v17 = *(v6 + v1[7] + 8);

  v18 = *(v6 + v1[8] + 8);

  v19 = (v6 + v1[9]);
  v20 = *v19;

  v21 = v19[1];

  v22 = *(v6 + v1[10] + 8);

  v23 = *(v6 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001D328()
{
  v2 = *(type metadata accessor for LiveRecognitionView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000DDD4;

  return sub_100016A38(v4, v5, v0 + v3);
}

uint64_t sub_10001D41C()
{
  v1 = type metadata accessor for LiveRecognitionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_10000D3B8(&qword_10004FF60, &qword_100039240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + v1[5];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_10001BEEC();
  v12 = v5 + v1[6];
  v13 = type metadata accessor for AccessibilityTechnologies();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  v15 = *&v12[*(sub_10000D3B8(&qword_10004FF78, &qword_100039258) + 40)];

  v16 = *(v5 + v1[7] + 8);

  v17 = *(v5 + v1[8] + 8);

  v18 = (v5 + v1[9]);
  v19 = *v18;

  v20 = v18[1];

  v21 = *(v5 + v1[10] + 8);

  v22 = *(v5 + v1[11] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001D65C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LiveRecognitionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10001D6D0(char *a1)
{
  v3 = *(type metadata accessor for LiveRecognitionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100017288(a1, v4);
}

unint64_t sub_10001D740()
{
  result = qword_100050138;
  if (!qword_100050138)
  {
    sub_10000E208(&qword_100050100, &qword_100039368);
    sub_10001B510(&qword_100050140, &type metadata accessor for MAGDetectedTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050138);
  }

  return result;
}

unint64_t sub_10001D7FC()
{
  result = qword_100050150;
  if (!qword_100050150)
  {
    sub_10000E208(&qword_100050128, &qword_100039390);
    sub_10001D8B4();
    sub_10001DBE8(&qword_100050180, &qword_100050130, &qword_100039398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050150);
  }

  return result;
}

unint64_t sub_10001D8B4()
{
  result = qword_100050158;
  if (!qword_100050158)
  {
    sub_10000E208(&qword_100050120, &qword_100039388);
    sub_10001DBE8(&qword_100050160, &qword_100050168, &qword_1000393A0);
    sub_10001DBE8(&qword_100050170, &qword_100050178, &qword_1000393A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050158);
  }

  return result;
}

unint64_t sub_10001D998()
{
  result = qword_1000501C0;
  if (!qword_1000501C0)
  {
    sub_10000E208(&qword_1000501B8, &qword_1000393E0);
    sub_10001DBE8(&qword_1000501C8, &qword_1000501D0, &qword_1000393E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000501C0);
  }

  return result;
}

uint64_t sub_10001DA50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000D3B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001DB40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10001DBE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000E208(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001DC5C(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_100028E70(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_100028E70(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_100027DEC(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_100028E70(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_10001DD78(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_100028010(v3, *(a1 + 36), 0, a1);

  return v5;
}

Swift::Int sub_10001DE08()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10001DE7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10001DEC0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10001DF80, 0, 0);
}

uint64_t sub_10001DF80()
{
  *(v0 + 48) = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  type metadata accessor for MainActor();
  *(v0 + 56) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001E020, v2, v1);
}

uint64_t sub_10001E020()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];

  v4 = *(v3 + v2);
  v0[8] = v4;
  v5 = v4;

  return _swift_task_switch(sub_10001E09C, 0, 0);
}

uint64_t sub_10001E09C()
{
  v1 = v0[8];
  v0[9] = *&v1[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_videoCaptioningService];

  v2 = *(&async function pointer to dispatch thunk of MAGVideoCaptioningService.prewarm() + 1);
  v5 = (&async function pointer to dispatch thunk of MAGVideoCaptioningService.prewarm() + async function pointer to dispatch thunk of MAGVideoCaptioningService.prewarm());
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_10001E164;

  return v5();
}

uint64_t sub_10001E164()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001E2A8, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10001E2A8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[5];

  static AXLog.magvideoCaptionService.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Video caption service prewarm() failed: %@", v8, 0xCu);
    sub_100028E94(v9);
  }

  else
  {
    v11 = v0[11];
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10001E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = type metadata accessor for MAGSimulatedEvent();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v4[27] = v8;
  v9 = *(v8 - 8);
  v4[28] = v9;
  v10 = *(v9 + 64) + 15;
  v4[29] = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  v4[30] = v11;
  v12 = *(v11 - 8);
  v4[31] = v12;
  v13 = *(v12 + 64) + 15;
  v4[32] = swift_task_alloc();
  v14 = type metadata accessor for DispatchTime();
  v4[33] = v14;
  v15 = *(v14 - 8);
  v4[34] = v15;
  v16 = *(v15 + 64) + 15;
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  v4[37] = v17;
  v18 = *(v17 - 8);
  v4[38] = v18;
  v19 = *(v18 + 64) + 15;
  v4[39] = swift_task_alloc();
  v20 = type metadata accessor for MAGAngelClientRequest(0);
  v4[40] = v20;
  v21 = *(v20 - 8);
  v4[41] = v21;
  v22 = *(v21 + 64) + 15;
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v23 = *(*(sub_10000D3B8(&qword_100050478, &unk_1000397B0) - 8) + 64) + 15;
  v4[47] = swift_task_alloc();
  v24 = sub_10000D3B8(&qword_100050480, &qword_100038948);
  v4[48] = v24;
  v25 = *(v24 - 8);
  v4[49] = v25;
  v26 = *(v25 + 64) + 15;
  v4[50] = swift_task_alloc();
  v27 = sub_10000D3B8(&qword_100050488, &qword_1000397C0);
  v4[51] = v27;
  v28 = *(v27 - 8);
  v4[52] = v28;
  v29 = *(v28 + 64) + 15;
  v4[53] = swift_task_alloc();
  v4[54] = type metadata accessor for MainActor();
  v4[55] = static MainActor.shared.getter();
  v31 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[56] = v31;
  v4[57] = v30;

  return _swift_task_switch(sub_10001E97C, v31, v30);
}

uint64_t sub_10001E97C()
{
  if (qword_10004F568 != -1)
  {
    swift_once();
  }

  v1 = v0[53];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  v5 = v0[23];
  (*(v3 + 16))(v2, qword_100050D78 + OBJC_IVAR____TtC14MagnifierAngel27MAGAngelClientRequestStream_stream, v4);
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v6 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_outputEngine;
  v0[58] = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_startedLiveRecognition;
  v0[59] = v6;
  v7 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneRequestFrameCheckDelay;
  v0[60] = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_generatingImageCaption;
  v0[61] = v7;
  v8 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive;
  v0[62] = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
  v0[63] = v8;
  v0[64] = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_figCameraViewFinder;
  swift_beginAccess();
  v9 = v0[54];
  v10 = static MainActor.shared.getter();
  v0[65] = v10;
  v11 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v12 = swift_task_alloc();
  v0[66] = v12;
  *v12 = v0;
  v12[1] = sub_10001EB3C;
  v13 = v0[53];
  v14 = v0[51];
  v15 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v15, v10, &protocol witness table for MainActor, v14);
}

uint64_t sub_10001EB3C()
{
  v1 = *v0;
  v2 = *(*v0 + 528);
  v3 = *(*v0 + 520);
  v7 = *v0;

  v4 = *(v1 + 456);
  v5 = *(v1 + 448);

  return _swift_task_switch(sub_10001EC80, v5, v4);
}

uint64_t sub_10001EC80()
{
  v124 = v0;
  v1 = v0[47];
  if ((*(v0[41] + 48))(v1, 1, v0[40]) == 1)
  {
    v2 = v0[55];
    v3 = v0[50];
    v5 = v0[45];
    v4 = v0[46];
    v6 = v0[43];
    v7 = v0[44];
    v8 = v0[42];
    v113 = v0[39];
    v115 = v0[36];
    v116 = v0[35];
    v9 = v0[32];
    v118 = v0[29];
    v120 = v0[26];
    (*(v0[52] + 8))(v0[53], v0[51]);

    v10 = v0[1];

    return v10();
  }

  v12 = v0[45];
  v13 = v0[46];
  v14 = v0[39];
  sub_1000293E4(v1, v13);
  static AXLog.magangel.getter();
  sub_10000DF00(v13, v12);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[45];
  if (v17)
  {
    v19 = v0[44];
    v20 = v0[40];
    v121 = v0[39];
    v22 = v0[37];
    v21 = v0[38];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v123 = v24;
    *v23 = 136315138;
    sub_10000DF00(v18, v19);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    sub_10000DF64(v18);
    v28 = sub_100034404(v25, v27, &v123);

    *(v23 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v15, v16, "App delegate did receive client request: %s", v23, 0xCu);
    sub_100029000(v24);

    (*(v21 + 8))(v121, v22);
  }

  else
  {
    v30 = v0[38];
    v29 = v0[39];
    v31 = v0[37];

    sub_10000DF64(v18);
    (*(v30 + 8))(v29, v31);
  }

  v32 = v0[43];
  v33 = v0[24];
  v34 = v0[25];
  sub_10000DF00(v0[46], v32);
  v35 = *(v34 + 48);
  v0[67] = v35;
  v0[68] = (v34 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v36 = v35(v32, 13, v33);
  if (v36 <= 0xC && ((1 << v36) & 0x101C) != 0)
  {
LABEL_10:
    v37 = v0[42];
    v38 = v0[24];
    sub_10000DF00(v0[46], v37);
    switch(v35(v37, 13, v38))
    {
      case 1u:
        v74 = v0[23];
        sub_100020BC8();
        break;
      case 2u:
      case 3u:
        v39 = v0[23];
        sub_1000227C0();
        break;
      case 4u:
        v59 = v0[54];
        v0[70] = static MainActor.shared.getter();
        v61 = dispatch thunk of Actor.unownedExecutor.getter();
        v0[71] = v61;
        v0[72] = v60;

        return _swift_task_switch(sub_10002019C, v61, v60);
      case 5u:
        v76 = *(v0[23] + v0[62]);
        swift_getKeyPath();
        swift_getKeyPath();

        v77 = static Published.subscript.modify();
        *v78 = !*v78;
        v77(v0 + 12, 0);

        if (sub_100024F2C())
        {
          v79 = v0[63];
          v80 = v0[23];
          sub_100022F10();
          if ((*(v80 + v79) & 1) == 0)
          {
            v81 = v0[23];
            sub_100020BC8();
          }
        }

        v82 = v0[23];
        sub_100024394();
        sub_100025194();
        break;
      case 6u:
        v84 = v0[23];
        sub_100021024();
        break;
      case 7u:
        v75 = v0[23];
        sub_1000211EC();
        break;
      case 8u:
        v90 = v0[23];
        v86 = &unk_100039550;
        v87 = &unk_100039578;
        v88 = sub_100002AD4;
        v89 = &dispatch thunk of MAGPulseFeedbackProcessor.doorToneGenerator.getter;
        goto LABEL_38;
      case 9u:
        v66 = *(v0[23] + v0[62]);
        swift_getKeyPath();
        swift_getKeyPath();

        v67 = static Published.subscript.modify();
        *v68 = !*v68;
        v67(v0 + 8, 0);

        sub_100024394();
        sub_100025194();
        if ((sub_100024F2C() & 1) != 0 && (*(v0[23] + v0[63]) & 1) == 0)
        {
          sub_100020BC8();
        }

        v69 = [objc_opt_self() shared];
        v70 = [v69 downloadManager];

        [v70 downloadImageCaptionAssets];
        break;
      case 0xAu:
        v85 = v0[23];
        v86 = &unk_100039598;
        v87 = &unk_1000395C0;
        v88 = sub_100002E50;
        v89 = &dispatch thunk of MAGPulseFeedbackProcessor.pointSpeakDistanceToneGenerator.getter;
LABEL_38:
        sub_100021408(v86, v87, v88, v89);
        break;
      case 0xBu:
        v46 = v0[60];
        v47 = v0[23];
        if ((*(v47 + v46) & 1) == 0)
        {
          v48 = v0[61];
          v50 = v0[35];
          v49 = v0[36];
          v51 = v0[33];
          v52 = v0[34];
          v53 = v0[32];
          v119 = v0[31];
          v122 = v0[30];
          v114 = v0[29];
          v117 = v0[28];
          v112 = v0[27];
          *(v47 + v46) = 1;
          sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
          v111 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          v54 = *(v47 + v48);
          + infix(_:_:)();
          v55 = *(v52 + 8);
          v55(v50, v51);
          v56 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v0[6] = sub_100029448;
          v0[7] = v56;
          v0[2] = _NSConcreteStackBlock;
          v0[3] = 1107296256;
          v0[4] = sub_10000288C;
          v0[5] = &unk_10004A710;
          v57 = _Block_copy(v0 + 2);

          static DispatchQoS.unspecified.getter();
          v0[22] = &_swiftEmptyArrayStorage;
          sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags);
          sub_10000D3B8(&unk_100050430, &unk_100038570);
          sub_10000E1A4();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          _Block_release(v57);

          (*(v117 + 8))(v114, v112);
          (*(v119 + 8))(v53, v122);
          v55(v49, v51);
          v58 = v0[7];
        }

        break;
      case 0xCu:
        v62 = v0[59];
        v63 = v0[23];
        v64 = *(v63 + v62);

        dispatch thunk of MAGOutputEngine.stopSpeechImmediately()();

        v65 = *(v63 + v62);

        dispatch thunk of MAGOutputEngine.clearEventQueue()();

        break;
      case 0xDu:
        v83 = v0[23];
        sub_1000219A0();
        break;
      default:
        v72 = v0[25];
        v71 = v0[26];
        v73 = v0[24];
        (*(v72 + 32))(v71, v0[42], v73);
        sub_100022134(v71);
        (*(v72 + 8))(v71, v73);
        break;
    }

    v91 = v0[64];
    v92 = v0[23];
    if (*(v92 + v91) || *(v92 + v0[58]) != 1)
    {
      v103 = v0[46];
    }

    else
    {
      v93 = [objc_allocWithZone(FigCameraViewfinder) init];
      v94 = *(v92 + v91);
      *(v92 + v91) = v93;

      v95 = *(v92 + v91);
      if (v95)
      {
        v96 = v0[23];
        sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
        v97 = v95;
        v98 = static OS_dispatch_queue.main.getter();
        [v97 setDelegate:v96 queue:v98];
      }

      v99 = v0[64];
      v100 = v0[23];
      swift_beginAccess();
      v101 = *(v100 + v99);
      v102 = v0[46];
      if (!v101)
      {
        sub_10000DF64(v0[46]);
        swift_endAccess();
        goto LABEL_47;
      }

      swift_endAccess();
      [v101 startWithOptions:0];
      v103 = v102;
    }

    sub_10000DF64(v103);
LABEL_47:
    v104 = v0[54];
    v105 = static MainActor.shared.getter();
    v0[65] = v105;
    v106 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v107 = swift_task_alloc();
    v0[66] = v107;
    *v107 = v0;
    v107[1] = sub_10001EB3C;
    v108 = v0[53];
    v109 = v0[51];
    v110 = v0[47];

    return AsyncStream.Iterator.next(isolation:)(v110, v105, &protocol witness table for MainActor, v109);
  }

  v40 = v0[58];
  v41 = v0[23];
  sub_10000DF64(v0[43]);
  if (*(v41 + v40) == 1)
  {
    v42 = v0[68];
    v35 = v0[67];
    goto LABEL_10;
  }

  *(v0[23] + v0[58]) = 1;
  v43 = swift_task_alloc();
  v0[69] = v43;
  *v43 = v0;
  v43[1] = sub_10001F854;
  v44 = v0[46];
  v45 = v0[23];

  return sub_100020640(v44);
}