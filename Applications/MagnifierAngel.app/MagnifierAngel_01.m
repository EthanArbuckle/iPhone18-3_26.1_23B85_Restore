uint64_t sub_10001F854()
{
  v1 = *v0;
  v2 = *(*v0 + 552);
  v6 = *v0;

  v3 = *(v1 + 456);
  v4 = *(v1 + 448);

  return _swift_task_switch(sub_10001F974, v4, v3);
}

uint64_t sub_10001F974()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[42];
  v4 = v0[24];
  sub_10000DF00(v0[46], v3);
  switch(v2(v3, 13, v4))
  {
    case 1u:
      v34 = v0[23];
      sub_100020BC8();
      break;
    case 2u:
    case 3u:
      v5 = v0[23];
      sub_1000227C0();
      break;
    case 4u:
      v19 = v0[54];
      v0[70] = static MainActor.shared.getter();
      v21 = dispatch thunk of Actor.unownedExecutor.getter();
      v0[71] = v21;
      v0[72] = v20;

      return _swift_task_switch(sub_10002019C, v21, v20);
    case 5u:
      v36 = *(v0[23] + v0[62]);
      swift_getKeyPath();
      swift_getKeyPath();

      v37 = static Published.subscript.modify();
      *v38 = !*v38;
      v37(v0 + 12, 0);

      if (sub_100024F2C())
      {
        v39 = v0[63];
        v40 = v0[23];
        sub_100022F10();
        if ((*(v40 + v39) & 1) == 0)
        {
          v41 = v0[23];
          sub_100020BC8();
        }
      }

      v42 = v0[23];
      sub_100024394();
      sub_100025194();
      break;
    case 6u:
      v44 = v0[23];
      sub_100021024();
      break;
    case 7u:
      v35 = v0[23];
      sub_1000211EC();
      break;
    case 8u:
      v50 = v0[23];
      v46 = &unk_100039550;
      v47 = &unk_100039578;
      v48 = sub_100002AD4;
      v49 = &dispatch thunk of MAGPulseFeedbackProcessor.doorToneGenerator.getter;
      goto LABEL_24;
    case 9u:
      v26 = *(v0[23] + v0[62]);
      swift_getKeyPath();
      swift_getKeyPath();

      v27 = static Published.subscript.modify();
      *v28 = !*v28;
      v27(v0 + 8, 0);

      sub_100024394();
      sub_100025194();
      if ((sub_100024F2C() & 1) != 0 && (*(v0[23] + v0[63]) & 1) == 0)
      {
        sub_100020BC8();
      }

      v29 = [objc_opt_self() shared];
      v30 = [v29 downloadManager];

      [v30 downloadImageCaptionAssets];
      break;
    case 0xAu:
      v45 = v0[23];
      v46 = &unk_100039598;
      v47 = &unk_1000395C0;
      v48 = sub_100002E50;
      v49 = &dispatch thunk of MAGPulseFeedbackProcessor.pointSpeakDistanceToneGenerator.getter;
LABEL_24:
      sub_100021408(v46, v47, v48, v49);
      break;
    case 0xBu:
      v6 = v0[60];
      v7 = v0[23];
      if ((*(v7 + v6) & 1) == 0)
      {
        v8 = v0[61];
        v10 = v0[35];
        v9 = v0[36];
        v11 = v0[33];
        v12 = v0[34];
        v13 = v0[32];
        v76 = v0[31];
        v77 = v0[30];
        v74 = v0[29];
        v75 = v0[28];
        v73 = v0[27];
        *(v7 + v6) = 1;
        sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
        v72 = static OS_dispatch_queue.main.getter();
        static DispatchTime.now()();
        v14 = *(v7 + v8);
        + infix(_:_:)();
        v15 = *(v12 + 8);
        v15(v10, v11);
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v0[6] = sub_100029448;
        v0[7] = v16;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_10000288C;
        v0[5] = &unk_10004A710;
        v17 = _Block_copy(v0 + 2);

        static DispatchQoS.unspecified.getter();
        v0[22] = &_swiftEmptyArrayStorage;
        sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags);
        sub_10000D3B8(&unk_100050430, &unk_100038570);
        sub_10000E1A4();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v17);

        (*(v75 + 8))(v74, v73);
        (*(v76 + 8))(v13, v77);
        v15(v9, v11);
        v18 = v0[7];
      }

      break;
    case 0xCu:
      v22 = v0[59];
      v23 = v0[23];
      v24 = *(v23 + v22);

      dispatch thunk of MAGOutputEngine.stopSpeechImmediately()();

      v25 = *(v23 + v22);

      dispatch thunk of MAGOutputEngine.clearEventQueue()();

      break;
    case 0xDu:
      v43 = v0[23];
      sub_1000219A0();
      break;
    default:
      v32 = v0[25];
      v31 = v0[26];
      v33 = v0[24];
      (*(v32 + 32))(v31, v0[42], v33);
      sub_100022134(v31);
      (*(v32 + 8))(v31, v33);
      break;
  }

  v51 = v0[64];
  v52 = v0[23];
  if (*(v52 + v51) || *(v52 + v0[58]) != 1)
  {
    v63 = v0[46];
  }

  else
  {
    v53 = [objc_allocWithZone(FigCameraViewfinder) init];
    v54 = *(v52 + v51);
    *(v52 + v51) = v53;

    v55 = *(v52 + v51);
    if (v55)
    {
      v56 = v0[23];
      sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
      v57 = v55;
      v58 = static OS_dispatch_queue.main.getter();
      [v57 setDelegate:v56 queue:v58];
    }

    v59 = v0[64];
    v60 = v0[23];
    swift_beginAccess();
    v61 = *(v60 + v59);
    v62 = v0[46];
    if (!v61)
    {
      sub_10000DF64(v0[46]);
      swift_endAccess();
      goto LABEL_33;
    }

    swift_endAccess();
    [v61 startWithOptions:0];
    v63 = v62;
  }

  sub_10000DF64(v63);
LABEL_33:
  v64 = v0[54];
  v65 = static MainActor.shared.getter();
  v0[65] = v65;
  v66 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v67 = swift_task_alloc();
  v0[66] = v67;
  *v67 = v0;
  v67[1] = sub_10001EB3C;
  v68 = v0[53];
  v69 = v0[51];
  v70 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v70, v65, &protocol witness table for MainActor, v69);
}

uint64_t sub_10002019C()
{
  v1 = v0[23];
  if (*(v1 + v0[63]) == 1)
  {
    v2 = v0[70];

    sub_1000227C0();
LABEL_5:
    v5 = v0[56];
    v6 = v0[57];

    return _swift_task_switch(sub_1000202C8, v5, v6);
  }

  if (*(v1 + v0[58]))
  {
    v3 = v0[70];

    v4 = v0[23];
    sub_100020BC8();
    goto LABEL_5;
  }

  (*(v0[25] + 56))(v0[44], 1, 13, v0[24]);
  v7 = swift_task_alloc();
  v0[73] = v7;
  *v7 = v0;
  v7[1] = sub_100020490;
  v8 = v0[44];
  v9 = v0[23];

  return sub_100020640(v8);
}

uint64_t sub_1000202C8()
{
  v1 = v0[64];
  v2 = v0[23];
  if (*(v2 + v1) || *(v2 + v0[58]) != 1)
  {
    v13 = v0[46];
    goto LABEL_8;
  }

  v3 = [objc_allocWithZone(FigCameraViewfinder) init];
  v4 = *(v2 + v1);
  *(v2 + v1) = v3;

  v5 = *(v2 + v1);
  if (v5)
  {
    v6 = v0[23];
    sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
    v7 = v5;
    v8 = static OS_dispatch_queue.main.getter();
    [v7 setDelegate:v6 queue:v8];
  }

  v9 = v0[64];
  v10 = v0[23];
  swift_beginAccess();
  v11 = *(v10 + v9);
  v12 = v0[46];
  if (v11)
  {
    swift_endAccess();
    [v11 startWithOptions:0];
    v13 = v12;
LABEL_8:
    sub_10000DF64(v13);
    goto LABEL_9;
  }

  sub_10000DF64(v0[46]);
  swift_endAccess();
LABEL_9:
  v14 = v0[54];
  v15 = static MainActor.shared.getter();
  v0[65] = v15;
  v16 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v17 = swift_task_alloc();
  v0[66] = v17;
  *v17 = v0;
  v17[1] = sub_10001EB3C;
  v18 = v0[53];
  v19 = v0[51];
  v20 = v0[47];

  return AsyncStream.Iterator.next(isolation:)(v20, v15, &protocol witness table for MainActor, v19);
}

uint64_t sub_100020490()
{
  v1 = *v0;
  v2 = *(*v0 + 584);
  v3 = *(*v0 + 352);
  v7 = *v0;

  sub_10000DF64(v3);
  v4 = *(v1 + 576);
  v5 = *(v1 + 568);

  return _swift_task_switch(sub_1000205D4, v5, v4);
}

uint64_t sub_1000205D4()
{
  v1 = v0[70];

  v2 = v0[23];
  sub_100020BC8();
  v3 = v0[56];
  v4 = v0[57];

  return _swift_task_switch(sub_1000202C8, v3, v4);
}

uint64_t sub_100020640(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for Date();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(*(type metadata accessor for MAGAngelClientRequest(0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for MAGOutputEventEnvironment();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v10 = type metadata accessor for MAGOutputEventSource();
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();
  v13 = type metadata accessor for MAGOutputEvent();
  v2[17] = v13;
  v14 = *(v13 - 8);
  v2[18] = v14;
  v15 = *(v14 + 64) + 15;
  v2[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[20] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100020874, v17, v16);
}

uint64_t sub_100020874()
{
  v1 = v0[20];

  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 liveRecognitionActive];

  if ((v3 & 1) == 0)
  {
    v5 = v0[18];
    v4 = v0[19];
    v6 = v0[16];
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[11];
    v34 = v0[10];
    v35 = v0[17];
    v12 = v0[6];
    v33 = v0[5];
    MSNMonitorBeginException();
    v36 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_outputEngine;
    v37 = v12;
    v13 = *(v12 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_outputEngine);
    (*(v7 + 104))(v6, enum case for MAGOutputEventSource.liveDetection(_:), v8);
    (*(v9 + 104))(v10, enum case for MAGOutputEventEnvironment.angel(_:), v11);

    static MAGOutputEvent.liveRecognitionStarted(source:environment:)();
    (*(v9 + 8))(v10, v11);
    (*(v7 + 8))(v6, v8);
    dispatch thunk of MAGOutputEngine.schedule(_:)();

    (*(v5 + 8))(v4, v35);
    sub_10000DF00(v33, v34);
    v14 = type metadata accessor for MAGSimulatedEvent();
    v15 = (*(*(v14 - 8) + 48))(v34, 13, v14);
    if (v15 > 0xC || ((1 << v15) & 0x100C) == 0)
    {
      v16 = v0[6];
      sub_10000DF64(v0[10]);
      sub_100022F10();
    }

    v18 = v0[8];
    v17 = v0[9];
    v19 = v0[6];
    v20 = v0[7];
    v21 = [objc_opt_self() defaultCenter];
    [v21 addObserver:v19 selector:"checkForDeactivationReasonWithNotification:" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

    v22 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
    v23 = *(v19 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager);
    Date.init()();
    v24 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_lastAnnouncementTime;
    swift_beginAccess();
    (*(v18 + 40))(&v23[v24], v17, v20);
    swift_endAccess();

    *(*(v19 + v22) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_torchStatus) = 0;
    v25 = *(v37 + v36);

    dispatch thunk of MAGOutputEngine.isElligbleForNewEvent.setter();
  }

  v26 = v0[19];
  v27 = v0[16];
  v28 = v0[13];
  v30 = v0[9];
  v29 = v0[10];

  v31 = v0[1];

  return v31();
}

void sub_100020BC8()
{
  v0 = type metadata accessor for Date();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = *(v28 + 64);
  __chkstk_darwin(v0);
  v27 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v25);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(SBSUIMagnifierSceneSpecification) init];
  v13 = [v12 uiSceneSessionRole];

  sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  aBlock[4] = sub_10002951C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000288C;
  aBlock[3] = &unk_10004A788;
  v16 = _Block_copy(aBlock);
  v17 = v13;
  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000D3B8(&unk_100050430, &unk_100038570);
  sub_10000E1A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v25);

  v18 = objc_opt_self();
  v19 = [v18 sharedInstance];
  [v19 setLiveRecognitionActive:1];

  v20 = v26;
  *(v26 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive) = 1;
  v21 = [v18 sharedInstance];
  [v21 setLiveRecognitionOverlayOpen:1];

  v22 = *(v20 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager);
  v23 = v27;
  Date.init()();

  v24 = OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_angelLaunchTime;
  swift_beginAccess();
  (*(v28 + 40))(&v22[v24], v23, v29);
  swift_endAccess();
}

void sub_100021024()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
  v3 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = static Published.subscript.modify();
  *v5 = !*v5;
  v4(v12, 0);

  if (sub_100024F2C())
  {
    sub_100022F10();
    if ((*(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive) & 1) == 0)
    {
      sub_100020BC8();
    }
  }

  v6 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  v7 = *(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager);
  sub_10000A284();

  sub_100024394();
  sub_100025194();
  v8 = *(v1 + v2);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v9 = *(v1 + v6);
  if (v12[0] == 1)
  {
    v10 = v9;
    sub_100002E20();
  }

  else
  {
    v11 = *&v9[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor];
    v10 = dispatch thunk of MAGPulseFeedbackProcessor.objectUnderstandingToneGenerator.getter();

    [v10 stopPulse];
  }
}

void sub_1000211EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
  v3 = *&v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences];
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = static Published.subscript.modify();
  *v5 = !*v5;
  v4(v14, 0);

  if (sub_100024F2C())
  {
    sub_100022F10();
    if ((v1[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive] & 1) == 0)
    {
      sub_100020BC8();
    }
  }

  sub_100024394();
  sub_100025194();
  v6 = *&v1[v2];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v7 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  v8 = *&v1[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager];
  if (v14[0] == 1)
  {
    v9 = v8;
    sub_10000298C();

    v10 = *(*&v1[v7] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_peopleSessionDispatchQueue);
    *(swift_allocObject() + 16) = v1;

    v11 = v1;
    dispatch thunk of AXSerialQueue.async(_:)();
  }

  else
  {
    v12 = *&v8[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor];
    v13 = dispatch thunk of MAGPulseFeedbackProcessor.toneGenerator.getter();

    [v13 stopPulse];
  }
}

void sub_100021408(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  v7 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
  v8 = *(v4 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  v9 = static Published.subscript.modify();
  *v10 = !*v10;
  v9(v15, 0);

  if (sub_100024F2C())
  {
    sub_100022F10();
    if ((*(v4 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive) & 1) == 0)
    {
      sub_100020BC8();
    }
  }

  sub_100024394();
  sub_100025194();
  v11 = *(v4 + v7);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v12 = *(v4 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager);
  if (v15[0] == 1)
  {
    v13 = v12;
    a3();
  }

  else
  {
    v14 = *&v12[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor];
    v13 = a4();

    [v13 stopPulse];
  }
}

uint64_t sub_1000215BC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v28);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v18 = &v24 - v17;
  if ((*(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_generatingImageCaption) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_generatingImageCaption) = 1;
    v19 = result;
    v26 = result;
    sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
    v27 = v6;
    v24 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v20 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneRequestFrameCheckDelay);
    + infix(_:_:)();
    v25 = *(v11 + 8);
    v25(v15, v19);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100029664;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000288C;
    aBlock[3] = &unk_10004A800;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v29 = &_swiftEmptyArrayStorage;
    sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000D3B8(&unk_100050430, &unk_100038570);
    sub_10000E1A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v23 = v24;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v22);

    (*(v2 + 8))(v5, v1);
    (*(v27 + 8))(v9, v28);
    v25(v18, v26);
  }

  return result;
}

uint64_t sub_1000219A0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
  v3 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = static Published.subscript.modify();
  *v5 = !*v5;
  v4(v44, 0);

  v6 = *(v1 + v2);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (LOBYTE(v44[0]) == 1 && (v7 = [objc_opt_self() sharedInstance], v8 = objc_msgSend(v7, "liveRecognitionActivity"), v7, v8))
  {
    v9 = *(v1 + v2);

    v10 = [v8 scenes];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44[0]) = v10;
    static Published.subscript.setter();
    v11 = *(v1 + v2);

    v12 = [v8 peopleDetection];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44[0]) = v12;
    static Published.subscript.setter();
    v13 = *(v1 + v2);

    v14 = [v8 doorsDetection];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44[0]) = v14;
    static Published.subscript.setter();
    v15 = *(v1 + v2);

    v16 = [v8 furnitureDetection];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44[0]) = v16;
    static Published.subscript.setter();
    v17 = *(v1 + v2);

    v18 = [v8 textDetection];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44[0]) = v18;
    static Published.subscript.setter();
    v19 = *(v1 + v2);

    v20 = [v8 pointAndSpeak];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44[0]) = v20;
    static Published.subscript.setter();
  }

  else
  {
    v21 = *(v1 + v2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44[0]) = 0;

    static Published.subscript.setter();
    v22 = *(v1 + v2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44[0]) = 0;

    static Published.subscript.setter();
    v23 = *(v1 + v2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44[0]) = 0;

    static Published.subscript.setter();
    v24 = *(v1 + v2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44[0]) = 0;

    static Published.subscript.setter();
    v25 = *(v1 + v2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44[0]) = 0;

    static Published.subscript.setter();
    v26 = *(v1 + v2);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v44[0]) = 0;

    static Published.subscript.setter();
  }

  if (sub_100024F2C())
  {
    sub_100022F10();
    if ((*(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive) & 1) == 0)
    {
      sub_100020BC8();
    }
  }

  v27 = objc_opt_self();
  v28 = [v27 sharedInstance];
  v29 = [v28 liveRecognitionActivities];

  if (v29)
  {
    sub_10000E844(0, &qword_100050490, AXVOLiveRecognitionActivity_ptr);
    v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v30 = 0;
  }

  v31 = [v27 sharedInstance];
  isa = [v31 liveRecognitionActivity];

  if (isa)
  {
    v33 = [(objc_class *)isa name];
    if (v33)
    {
      v34 = v33;
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38 = *(v1 + v2);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      [(objc_class *)isa setIsActive:LOBYTE(v44[0])];
      v39 = [v27 sharedInstance];
      v40 = isa;
      [v39 setLiveRecognitionActivity:v40];

      if (v30)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44[0] = v30;
        sub_100027764(v40, v35, v37, isUniquelyReferenced_nonNull_native);

        v30 = v44[0];
      }

      else
      {
      }

      v42 = [v27 sharedInstance];
      if (v30)
      {
        sub_10000E844(0, &qword_100050490, AXVOLiveRecognitionActivity_ptr);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        isa = 0;
      }

      [v42 setLiveRecognitionActivities:isa];
    }
  }

  sub_100024394();
}

uint64_t sub_100022134(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MAGOutputEventEnvironment();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v61 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for MAGOutputEventSource();
  v58 = *(v60 - 8);
  v8 = *(v58 + 64);
  __chkstk_darwin(v60);
  v59 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MAGOutputEvent.EventType();
  v52 = *(v10 - 8);
  v53 = v10;
  v11 = *(v52 + 64);
  __chkstk_darwin(v10);
  v55 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for MAGOutputEvent();
  v56 = *(v13 - 8);
  v57 = v13;
  v14 = *(v56 + 64);
  __chkstk_darwin(v13);
  v54 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MAGSimulatedEvent.EventType();
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  __chkstk_darwin(v16);
  v64 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MAGSimulatedEvent();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Logger();
  v62 = *(v24 - 8);
  v63 = v24;
  v25 = *(v62 + 64);
  __chkstk_darwin(v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
  v28 = *(v20 + 16);
  v67 = a1;
  v28(v23, a1, v19);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v50 = v5;
    v32 = v31;
    v33 = swift_slowAlloc();
    v51 = v2;
    v49 = v33;
    v68 = v33;
    *v32 = 136315138;
    sub_10002904C(&qword_1000504A0, &type metadata accessor for MAGSimulatedEvent);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v4;
    v37 = v36;
    (*(v20 + 8))(v23, v19);
    v38 = sub_100034404(v34, v37, &v68);
    v4 = v35;

    *(v32 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "Handling simulated event: %s", v32, 0xCu);
    sub_100029000(v49);
    v2 = v51;

    v5 = v50;
  }

  else
  {

    (*(v20 + 8))(v23, v19);
  }

  (*(v62 + 8))(v27, v63);
  v39 = v64;
  MAGSimulatedEvent.eventType.getter();
  v41 = v65;
  v40 = v66;
  if ((*(v65 + 88))(v39, v66) != enum case for MAGSimulatedEvent.EventType.announcement(_:))
  {
    return (*(v41 + 8))(v39, v40);
  }

  (*(v41 + 96))(v39, v40);
  v42 = *v39;
  v43 = v39[1];
  v44 = v55;
  *v55 = v42;
  v44[1] = v43;
  (*(v52 + 104))(v44, enum case for MAGOutputEvent.EventType.testSpeech(_:), v53);
  (*(v58 + 104))(v59, enum case for MAGOutputEventSource.magAction(_:), v60);
  (*(v5 + 104))(v61, enum case for MAGOutputEventEnvironment.angel(_:), v4);
  v45 = v54;
  MAGOutputEvent.init(_:source:environment:)();
  v46 = *(v2 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_outputEngine);

  dispatch thunk of MAGOutputEngine.schedule(_:)();

  return (*(v56 + 8))(v45, v57);
}

void sub_1000227C0()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEventEnvironment();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MAGOutputEventSource();
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  __chkstk_darwin(v7);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MAGOutputEvent();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  __chkstk_darwin(v10);
  v55 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Logger();
  v13 = *(v54 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v54);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_outputEngine;
  v18 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_outputEngine);

  dispatch thunk of MAGOutputEngine.stopSpeechImmediately()();

  v19 = *(v1 + v17);

  dispatch thunk of MAGOutputEngine.clearEventQueue()();

  v20 = *(v1 + v17);

  dispatch thunk of MAGOutputEngine.resetSpeechContent()();

  static AXLog.magangel.getter();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v53 = v7;
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Deactivating Scene Session and/or Jindo Activity and stopping arSession", v23, 2u);
    v7 = v53;
  }

  (*(v13 + 8))(v16, v54);
  v24 = *(v1 + v17);
  v25 = v59;
  v26 = v56;
  (*(v59 + 104))(v56, enum case for MAGOutputEventSource.liveDetection(_:), v7);
  (*(v3 + 104))(v6, enum case for MAGOutputEventEnvironment.angel(_:), v2);

  v27 = v55;
  static MAGOutputEvent.liveRecognitionStopped(source:environment:)();
  (*(v3 + 8))(v6, v2);
  (*(v25 + 8))(v26, v7);
  dispatch thunk of MAGOutputEngine.schedule(_:)();

  (*(v57 + 8))(v27, v58);
  v28 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_arService;
  v29 = *(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_arService);
  dispatch thunk of MAGARService.stopARSession()();

  v30 = *(v1 + v28);
  dispatch thunk of MAGARService.arSession.setter();

  v31 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_figCameraViewFinder;
  swift_beginAccess();
  v32 = *(v1 + v31);
  *(v1 + v31) = 0;

  MSNMonitorEndException();
  sub_100024068();
  v33 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
  v34 = *(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = 0;

  static Published.subscript.setter();
  v35 = *(v1 + v33);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = 0;

  static Published.subscript.setter();
  v36 = *(v1 + v33);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = 0;

  static Published.subscript.setter();
  v37 = *(v1 + v33);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = 0;

  static Published.subscript.setter();
  v38 = *(v1 + v33);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = 0;

  static Published.subscript.setter();
  v39 = *(v1 + v33);
  swift_getKeyPath();
  swift_getKeyPath();
  v60 = 0;

  static Published.subscript.setter();
  v40 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  v41 = *(*(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
  v42 = dispatch thunk of MAGPulseFeedbackProcessor.toneGenerator.getter();

  [v42 stopPulse];
  v43 = *(*(v1 + v40) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
  v44 = dispatch thunk of MAGPulseFeedbackProcessor.toneGenerator.getter();

  [v44 stopPulse];
  v45 = *(*(v1 + v40) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
  v46 = dispatch thunk of MAGPulseFeedbackProcessor.doorToneGenerator.getter();

  [v46 stopPulse];
  v47 = *(*(v1 + v40) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
  v48 = dispatch thunk of MAGPulseFeedbackProcessor.objectUnderstandingToneGenerator.getter();

  [v48 stopPulse];
  v49 = *(*(v1 + v40) + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_pulseFeedbackProcessor);
  v50 = dispatch thunk of MAGPulseFeedbackProcessor.pointSpeakDistanceToneGenerator.getter();

  [v50 stopPulse];
  v51 = [objc_opt_self() sharedInstance];
  [v51 setLiveRecognitionActivity:0];

  sub_100024394();
}

void sub_100022F10()
{
  v1 = v0;
  v2 = type metadata accessor for MFFeatureFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_arService);
  if (*(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid))
  {
    v9 = v8;
    dispatch thunk of MAGARService.stopARSession()();

    sub_1000232D4();
  }

  else
  {
    v10 = v5;
    v11 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
    v12 = *(v1 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences);
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v8;

    static Published.subscript.getter();

    if ((v19[15] & 1) == 0)
    {
      v14 = *(v1 + v11);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if ((v19[14] & 1) == 0)
      {
        v18 = *(v1 + v11);
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (v19[13] == 1)
        {
          (*(v3 + 104))(v7, enum case for MFFeatureFlags.groupTextDetections(_:), v10);
          MFFeatureFlags.isEnabled.getter();
          (*(v3 + 8))(v7, v10);
        }
      }
    }

    v15 = *(v1 + v11);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v19[12] & 1) == 0)
    {
      v16 = *(v1 + v11);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();
    }

    v17 = *(v1 + v11);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    dispatch thunk of MAGARService.startARSession(sceneDepth:personSegmentation:sceneReconstruction:)();
  }
}

uint64_t sub_1000232D4()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v1 - 8);
  v61 = v1;
  v2 = *(v60 + 64);
  __chkstk_darwin(v1);
  v59 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  __chkstk_darwin(v4);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DispatchTime();
  v55 = *(v62 - 8);
  v7 = *(v55 + 64);
  v8 = __chkstk_darwin(v62);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v50 - v10;
  v11 = type metadata accessor for Logger();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  String.localized.getter();
  v13 = [objc_opt_self() identifierWithPid:*(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid)];
  if (v13)
  {
    v14 = v13;
    sub_10000E844(0, &qword_100050440, RBSProcessHandle_ptr);
    v15 = v14;
    v16 = sub_1000289FC(v15);

    v17 = [v16 bundle];
    if (v17 && (v18 = v17, v19 = [v17 identifier], v18, v19))
    {

      String.localized.getter();
      sub_10000D3B8(&qword_100050448, &qword_1000396C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100037F70;
      v21 = AXAppNameForBundleId();

      if (v21)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      aBlock = v22;
      v65 = v24;
      sub_10000D3B8(&qword_100050450, &qword_1000396C8);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_100028DB4();
      *(v20 + 32) = v25;
      *(v20 + 40) = v27;
      static String.localizedStringWithFormat(_:_:)();
    }

    else
    {
    }
  }

  String.localized.getter();
  v28 = String._bridgeToObjectiveC()();

  v29 = String._bridgeToObjectiveC()();

  v30 = [objc_opt_self() alertControllerWithTitle:v28 message:v29 preferredStyle:1];

  String.localized.getter();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v32 = String._bridgeToObjectiveC()();

  v68 = sub_100028D84;
  v69 = v31;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_10002688C;
  v67 = &unk_10004A580;
  v33 = _Block_copy(&aBlock);

  v34 = objc_opt_self();
  v35 = [v34 actionWithTitle:v32 style:2 handler:v33];
  v52 = v35;
  _Block_release(v33);

  String.localized.getter();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v37 = String._bridgeToObjectiveC()();

  v68 = sub_100028DA4;
  v69 = v36;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_10002688C;
  v67 = &unk_10004A5A8;
  v38 = _Block_copy(&aBlock);

  v39 = [v34 actionWithTitle:v37 style:1 handler:v38];
  v51 = v39;
  _Block_release(v38);

  [v30 addAction:v35];
  [v30 addAction:v39];
  sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
  v40 = static OS_dispatch_queue.main.getter();
  v41 = v53;
  static DispatchTime.now()();
  v42 = v54;
  + infix(_:_:)();
  v55 = *(v55 + 8);
  (v55)(v41, v62);
  v43 = swift_allocObject();
  *(v43 + 16) = v30;
  v68 = sub_100028DAC;
  v69 = v43;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_10000288C;
  v67 = &unk_10004A5F8;
  v44 = _Block_copy(&aBlock);
  v45 = v30;
  v46 = v56;
  static DispatchQoS.unspecified.getter();
  v63 = &_swiftEmptyArrayStorage;
  sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000D3B8(&unk_100050430, &unk_100038570);
  sub_10000E1A4();
  v47 = v59;
  v48 = v61;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v44);

  (*(v60 + 8))(v47, v48);
  (*(v57 + 8))(v46, v58);
  (v55)(v42, v62);
}

uint64_t sub_100023C9C(void *a1)
{
  v2 = type metadata accessor for UISceneSessionActivationRequest();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "activateUIScene() activateSceneSession", v14, 2u);
  }

  (*(v8 + 8))(v11, v7);
  v15 = a1;
  UISceneSessionActivationRequest.init(role:userActivity:options:)();
  v16 = [objc_opt_self() sharedApplication];
  UIApplication.activateSceneSession(for:errorHandler:)();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100023ED0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Could not open scene %@", v7, 0xCu);
    sub_100028E94(v8);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_100024068()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive;
  if (*(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive) == 1)
  {
    sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
    v20 = v0;
    v19 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100024990;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000288C;
    aBlock[3] = &unk_10004A620;
    v12 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v21 = &_swiftEmptyArrayStorage;
    sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000D3B8(&unk_100050430, &unk_100038570);
    sub_10000E1A4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v19;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v12);

    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
    v14 = v20;
    *(v20 + v11) = 0;
    *(v14 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_startedLiveRecognition) = 0;
    v15 = objc_opt_self();
    v16 = [v15 sharedInstance];
    [v16 setLiveRecognitionActive:0];

    v17 = [v15 sharedInstance];
    [v17 setLiveRecognitionOverlayOpen:0];
  }
}

void sub_100024394()
{
  v1 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
  v2 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v24 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v3 = *(v0 + v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v23 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v4 = *(v0 + v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v22 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v5 = *(v0 + v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v21 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v6 = *(v0 + v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v20 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v7 = *(v0 + v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v19 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v16 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v8 = *(v0 + v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v18 == 1)
  {
    UInt32._bridgeToObjectiveC()();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v17 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v9 = [objc_opt_self() sharedInstance];
  sub_10000E844(0, &qword_10004F8D0, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 setEnabledLiveRecognitionModes:isa];
}

void sub_100024990()
{
  v0 = [objc_allocWithZone(SBSUIMagnifierSceneSpecification) init];
  v30 = [v0 uiSceneSessionRole];

  v29 = objc_opt_self();
  v1 = [v29 sharedApplication];
  v2 = [v1 connectedScenes];

  sub_10000E844(0, &qword_100050460, UIScene_ptr);
  sub_100028E08();
  v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v3 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v3 = aBlock[6];
    v4 = aBlock[7];
    v5 = aBlock[8];
    v6 = aBlock[9];
    v7 = aBlock[10];
  }

  else
  {
    v6 = 0;
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);
  }

  v28 = v5;
  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v15 = aBlock[0], v18 = v6, v19 = v7, !aBlock[0]))
    {
LABEL_26:
      sub_100028E8C();

      return;
    }

LABEL_20:
    v20 = [v15 session];
    v21 = [v20 role];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
    if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
    {

LABEL_9:
      v12 = [v29 sharedApplication];
      v13 = [v15 session];
      aBlock[4] = sub_100024D68;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100024F24;
      aBlock[3] = &unk_10004A648;
      v14 = _Block_copy(aBlock);
      [v12 requestSceneSessionDestruction:v13 options:0 errorHandler:v14];
      _Block_release(v14);

      v15 = v13;
      goto LABEL_10;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {
      goto LABEL_9;
    }

LABEL_10:

    v6 = v18;
    v7 = v19;
  }

  v16 = v6;
  v17 = v7;
  v18 = v6;
  if (v7)
  {
LABEL_16:
    v19 = (v17 - 1) & v17;
    v15 = *(*(v3 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v15)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v11)
    {
      goto LABEL_26;
    }

    v17 = *(v4 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_100024D68()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "~~~~ Could not close scene %@", v7, 0xCu);
    sub_100028E94(v8);
  }

  (*(v1 + 8))(v4, v0);
  v10 = [objc_opt_self() sharedInstance];
  [v10 setLiveRecognitionActive:0];

  exit(0);
}

uint64_t sub_100024F2C()
{
  v1 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
  v2 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v14)
  {
    return 1;
  }

  v3 = *(v0 + v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v13)
  {
    return 1;
  }

  v4 = *(v0 + v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v12)
  {
    return 1;
  }

  v5 = *(v0 + v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v11)
  {
    return 1;
  }

  v6 = *(v0 + v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v10)
  {
    return 1;
  }

  v8 = *(v0 + v1);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return v9;
}

void sub_100025194()
{
  if ((*(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive) & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
    v2 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if ((v13 & 1) == 0)
    {
      v3 = *(v0 + v1);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if ((v12 & 1) == 0)
      {
        v4 = *(v0 + v1);
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if ((v11 & 1) == 0)
        {
          v5 = *(v0 + v1);
          swift_getKeyPath();
          swift_getKeyPath();

          static Published.subscript.getter();

          if ((v10 & 1) == 0)
          {
            v6 = *(v0 + v1);
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            if ((v9 & 1) == 0)
            {
              v7 = *(v0 + v1);
              swift_getKeyPath();
              swift_getKeyPath();

              static Published.subscript.getter();

              if ((v8 & 1) == 0)
              {
                sub_1000227C0();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10002540C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000254CC, 0, 0);
}

uint64_t sub_1000254CC()
{
  *(v0 + 48) = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  type metadata accessor for MainActor();
  *(v0 + 56) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10002556C, v2, v1);
}

uint64_t sub_10002556C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];

  v4 = *(v3 + v2);
  v0[8] = v4;
  v5 = v4;

  return _swift_task_switch(sub_1000255E8, 0, 0);
}

uint64_t sub_1000255E8()
{
  v1 = v0[8];
  v0[9] = *&v1[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_videoCaptioningService];

  v2 = *(&async function pointer to dispatch thunk of MAGVideoCaptioningService.resetState() + 1);
  v5 = (&async function pointer to dispatch thunk of MAGVideoCaptioningService.resetState() + async function pointer to dispatch thunk of MAGVideoCaptioningService.resetState());
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1000256B0;

  return v5();
}

uint64_t sub_1000256B0()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000257F4, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1000257F4()
{
  v1 = v0[9];
  v2 = v0[5];

  static AXLog.magvideoCaptionService.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[3];
  if (v5)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not reset video captioning state", v10, 2u);
  }

  (*(v8 + 8))(v7, v9);
  v11 = v0[5];

  v12 = v0[1];

  return v12();
}

void sub_100025918()
{
  v0 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_arService);
    v7 = dispatch thunk of MAGARService.arSession.getter();

    if (v7 && (v8 = [v7 currentFrame], v7, v8))
    {
      v9 = type metadata accessor for TaskPriority();
      (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
      type metadata accessor for MainActor();
      v10 = v5;
      v5 = v8;
      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v12[2] = v11;
      v12[3] = &protocol witness table for MainActor;
      v12[4] = v10;
      v12[5] = v5;
      sub_1000107D4(0, 0, v3, &unk_1000397E8, v12);
    }

    else
    {
      *(v5 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_generatingImageCaption) = 0;
      sub_1000215BC();
    }
  }
}

uint64_t sub_100025AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for Date();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v10;
  v5[12] = v9;

  return _swift_task_switch(sub_100025BDC, v10, v9);
}

uint64_t sub_100025BDC()
{
  v1 = v0[6];
  v2 = *(v0[5] + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager);
  v0[13] = v2;
  v2;
  v3 = [v1 capturedImage];
  v0[14] = v3;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100025CAC;

  return sub_10000B58C(v3);
}

uint64_t sub_100025CAC()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v5 = *(v1 + 96);
  v6 = *(v1 + 88);

  return _swift_task_switch(sub_100025E04, v6, v5);
}

uint64_t sub_100025E04()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];

  *(v5 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_generatingImageCaption) = 0;
  Date.init()();
  v6 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_lastDescribeSceneRequestTime;
  swift_beginAccess();
  (*(v4 + 40))(v5 + v6, v2, v3);
  swift_endAccess();
  sub_100025EDC();

  v7 = v0[1];

  return v7();
}

uint64_t sub_100025EDC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v1 - 8);
  v2 = *(v26 + 64);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v24 = *(v5 - 8);
  v25 = v5;
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v23 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_10000E844(0, &qword_100050420, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v18 = *(v0 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneRequestDeactivationDelay);
  + infix(_:_:)();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10002962C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000288C;
  aBlock[3] = &unk_10004A7D8;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_10002904C(&qword_10004F880, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000D3B8(&unk_100050430, &unk_100038570);
  sub_10000E1A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v26 + 8))(v4, v1);
  (*(v24 + 8))(v8, v25);
  v22(v16, v23);
}

void sub_1000262F4()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v14[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    Date.init()();
    v10 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_lastDescribeSceneRequestTime;
    swift_beginAccess();
    (*(v1 + 16))(v5, &v9[v10], v0);
    Date.timeIntervalSince(_:)();
    v12 = v11;
    v13 = *(v1 + 8);
    v13(v5, v0);
    v13(v7, v0);
    if (*&v9[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneRequestDeactivationDelay] <= v12)
    {
      sub_1000227C0();
    }
  }
}

uint64_t sub_10002648C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100026528, v7, v6);
}

uint64_t sub_100026528()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  if (getpid() != v2)
  {
    *(*(v0 + 16) + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid) = *(v0 + 32);
    sub_100022F10();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100026644(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000266E0, v7, v6);
}

uint64_t sub_1000266E0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  if (getpid() != v2)
  {
    v3 = *(v0 + 16);
    if (*(v3 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid) == *(v0 + 32))
    {
      *(v3 + OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid) = 0;
      sub_100022F10();
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_100026808()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid] = 0;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    sub_100022F10();
  }
}

void sub_100026894(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_100026900()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000227C0();
  }
}

void sub_100026954(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  sub_10000E844(0, &qword_100050460, UIScene_ptr);
  sub_100028E08();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = sub_10001DC5C(v4);

  if (v9)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 keyWindow];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 rootViewController];

        if (v8)
        {
          [v8 presentViewController:a1 animated:1 completion:0];
        }
      }
    }
  }
}

id sub_100026AB8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_arService;
  if (qword_10004F5C0 != -1)
  {
    swift_once();
  }

  v3 = qword_100050DD0;
  *&v0[v2] = qword_100050DD0;
  v4 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_outputEngine;
  v5 = qword_10004F580;
  v6 = v3;
  if (v5 != -1)
  {
    swift_once();
  }

  *&v0[v4] = qword_100050D90;
  v7 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelPreferences;
  v8 = qword_10004F5F0;

  if (v8 != -1)
  {
    swift_once();
  }

  *&v0[v7] = qword_100050E00;
  v9 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  v10 = qword_10004F630;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_100050E40;
  *&v0[v9] = qword_100050E40;
  v12 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_advancedEventHandler;
  v13 = qword_10004F628;
  v14 = v11;
  if (v13 != -1)
  {
    swift_once();
  }

  *&v0[v12] = static MAGAngelCompositionRoot.advancedEventHandler;
  v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_startedLiveRecognition] = 0;
  v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_generatingImageCaption] = 0;
  v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneActive] = 0;
  *&v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_figCameraViewFinder] = 0;
  *&v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_activeSessionPid] = 0;
  *&v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneRequestFrameCheckDelay] = 0x3FD6666666666666;
  *&v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_sceneRequestDeactivationDelay] = 0x4024000000000000;

  Date.init()();
  v15 = &v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_MagnifierSceneUIShowActivity];
  *v15 = 0xD000000000000027;
  v15[1] = 0x800000010003E4B0;
  v16 = &v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_MagnifierAngelBundleID];
  *v16 = 0xD000000000000026;
  v16[1] = 0x800000010003E4E0;
  *&v0[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_clientRequestStreamMonitorTask] = 0;
  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "init");
}

id sub_100026D5C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MAGAngelAppDelegate()
{
  result = qword_100050400;
  if (!qword_100050400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100026EEC()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DetectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002714C()
{
  result = qword_100050410;
  if (!qword_100050410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050410);
  }

  return result;
}

unint64_t sub_1000271A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100027A58(a1, a2, v6);
}

uint64_t sub_100027218(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000D3B8(&qword_100050498, &qword_1000397F0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1000274BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000D3B8(&qword_1000504A8, &qword_1000397F8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100027764(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000271A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100027218(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000271A0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100027B10();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_1000278DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000271A0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000274BC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000271A0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100027C7C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_100027A58(uint64_t a1, uint64_t a2, uint64_t a3)
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

id sub_100027B10()
{
  v1 = v0;
  sub_10000D3B8(&qword_100050498, &qword_1000397F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100027C7C()
{
  v1 = v0;
  sub_10000D3B8(&qword_1000504A8, &qword_1000397F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_100027DEC(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000E844(0, &qword_100050460, UIScene_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000E844(0, &qword_100050460, UIScene_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100028010(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100028064()
{
  v1 = v0;
  v2 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100034404(0xD00000000000002DLL, 0x800000010003E660, &v37);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_100029000(v14);
  }

  (*(v7 + 8))(v10, v6);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  type metadata accessor for MainActor();
  v16 = v1;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  v19 = sub_1000107D4(0, 0, v5, &unk_100039780, v18);
  v20 = *&v16[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_clientRequestStreamMonitorTask];
  *&v16[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_clientRequestStreamMonitorTask] = v19;

  v21 = OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager;
  v22 = *&v16[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_angelDetectionManager];
  v23 = *&v22[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_arEventHandler];
  v24 = v22;

  v25 = [v24 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  MAGAREventHandler.register(_:asActionHandler:)();

  v26 = *&v16[v21];
  v27 = *&v26[OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_ouEventHandler];
  v28 = v26;

  v29 = [v28 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  MAGOUEventHandler.register(_:handler:)();

  v30 = *&v16[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelAppDelegate_advancedEventHandler];
  v31 = v16;

  v32 = [v31 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  MAGAdvancedEventHandler.register(_:asActionHandler:)();

  v33 = *(*&v16[v21] + OBJC_IVAR____TtC14MagnifierAngel24MAGAngelDetectionManager_peopleSessionDispatchQueue);
  *(swift_allocObject() + 16) = v31;
  v34 = v31;

  dispatch thunk of AXSerialQueue.async(_:)();

  return 1;
}

id sub_100028758(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magangel.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  p_base_props = &MAGAngelLeadingView.base_props;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v24 = v2;
    v12 = v11;
    v25 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100034404(0xD000000000000032, 0x800000010003E600, &v25);
    *(v12 + 12) = 2080;
    v13 = [v7 role];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = v14;
    p_base_props = (&MAGAngelLeadingView + 64);
    v18 = sub_100034404(v17, v16, &v25);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s role=%s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v6, v24);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  v19 = [v7 p_base_props[421]];
  v20 = objc_allocWithZone(UISceneConfiguration);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithName:v21 sessionRole:v19];

  return v22;
}

id sub_1000289FC(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

void *sub_100028AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(sub_10000D3B8(&unk_10004F870, &qword_100038BF0) - 8) + 64);
  result = __chkstk_darwin(a1);
  v9 = &v17 - v8;
  if (result)
  {
    [result clientAuditToken];
    v17 = v20;
    v18 = v19;
    v10 = objc_allocWithZone(BSAuditToken);
    v19 = v18;
    v20 = v17;
    v11 = [v10 initWithAuditToken:&v19];
    v12 = [v11 pid];
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    type metadata accessor for MainActor();
    v14 = v3;
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = &protocol witness table for MainActor;
    *(v16 + 32) = v12;
    *(v16 + 40) = v14;
    sub_1000107D4(0, 0, v9, a3, v16);
  }

  return result;
}

uint64_t sub_100028C60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EC40;

  return sub_100026644(a1, v4, v5, v6, v7);
}

uint64_t sub_100028D4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028D8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100028DB4()
{
  result = qword_100050458;
  if (!qword_100050458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050458);
  }

  return result;
}

unint64_t sub_100028E08()
{
  result = qword_100050468;
  if (!qword_100050468)
  {
    sub_10000E844(255, &qword_100050460, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050468);
  }

  return result;
}

uint64_t sub_100028E70(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100028E94(uint64_t a1)
{
  v2 = sub_10000D3B8(&unk_100050B50, &qword_100039760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028EFC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100028F3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EC40;

  return sub_10002648C(a1, v4, v5, v6, v7);
}

uint64_t sub_100029000(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10002904C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100029094()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000290D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000EC40;

  return sub_10001E574(a1, v4, v5, v6);
}

uint64_t sub_100029188(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000EC40;

  return sub_100002E80(a1, v1);
}

uint64_t sub_100029220(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000EC40;

  return sub_100004BFC(a1, v1);
}

uint64_t sub_1000292B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000DDD4;

  return sub_10000F3DC(a1, v1);
}

uint64_t sub_100029350()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DDD4;

  return sub_10001DEC0(v2);
}

uint64_t sub_1000293E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MAGAngelClientRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029450()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000EC40;

  return sub_10002540C(v2);
}

uint64_t sub_1000294E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100029524()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002956C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EC40;

  return sub_100025AE8(a1, v4, v5, v7, v6);
}

void sub_100029898()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for MAGAngelSystemApertureViewController();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingView];
  if (v1)
  {
    String.localized.getter();
    v2 = String._bridgeToObjectiveC()();

    [v1 setAccessibilityLabel:v2];

    [v1 setTintColor:*&v0[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_keyColor]];
    v3 = v1;
    v4 = [v0 view];
    if (!v4)
    {
      __break(1u);
      goto LABEL_9;
    }

    v5 = v4;
    [v4 addSubview:v3];
  }

  v6 = *&v0[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_minimalView];
  if (!v6)
  {
LABEL_7:
    sub_100029AA0();
    return;
  }

  String.localized.getter();
  v7 = String._bridgeToObjectiveC()();

  [v6 setAccessibilityLabel:v7];

  [v6 setTintColor:*&v0[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_keyColor]];
  v8 = v6;
  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    [v9 addSubview:v8];

    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
}

void sub_100029AA0()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(type metadata accessor for MAGAngelLeadingView());
  v7 = sub_10002BA88(0);
  v8 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView;
  v9 = *&v0[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView];
  *&v1[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView] = v7;
  v10 = v7;

  [v10 setHidden:1];
  [*&v1[v8] setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = *&v1[v8];
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_32;
  }

  v13 = v12;
  [v12 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 setFrame:{v15, v17, v19, v21}];
  v22 = *&v1[v8];
  String.localized.getter();
  v23 = String._bridgeToObjectiveC()();

  [v22 setAccessibilityLabel:v23];

  v24 = *&v1[v8];
  v176 = *&v1[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_keyColor];
  [v24 setTintColor:?];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = v25;
  v173 = v5;
  [v25 addSubview:{*&v1[v8], v5}];

  v180 = sub_10000D3B8(&qword_1000506C8, "\n?");
  v27 = swift_allocObject();
  v177 = xmmword_100039800;
  *(v27 + 16) = xmmword_100039800;
  v28 = [*&v1[v8] leadingAnchor];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v30 = v29;
  v31 = [v29 leadingAnchor];

  v32 = [v28 constraintEqualToAnchor:v31 constant:30.0];
  *(v27 + 32) = v32;
  v33 = [*&v1[v8] topAnchor];
  v34 = [v1 view];
  if (!v34)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v35 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v38 = [v37 bottomAnchor];
  v39 = [v33 constraintEqualToAnchor:v38];

  *(v27 + 40) = v39;
  v178 = sub_10000E844(0, &qword_1000506D0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v179 = v36;
  [v36 activateConstraints:isa];

  v41 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelLabel;
  [*&v1[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v42 = *&v1[v41];
  String.localized.getter();
  v43 = String._bridgeToObjectiveC()();

  [v42 setText:v43];

  [*&v1[v41] setTextColor:v176];
  [*&v1[v41] setHidden:1];
  [*&v1[v41] sizeToFit];
  v44 = *&v1[v41];
  v45 = objc_allocWithZone(UIFontMetrics);
  v46 = v44;
  v47 = [v45 initForTextStyle:UIFontTextStyleBody];
  v48 = objc_opt_self();
  v49 = [v48 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  [v49 pointSize];
  if (v50 <= 20.0)
  {
    v51 = v50;
  }

  else
  {
    v51 = 20.0;
  }

  v52 = objc_opt_self();
  v53 = [v52 systemFontOfSize:v51 weight:UIFontWeightMedium];
  v54 = [v47 scaledFontForFont:v53];

  [v46 setFont:v54];
  [*&v1[v41] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v41] setUserInteractionEnabled:0];
  v55 = [v1 view];
  if (!v55)
  {
    goto LABEL_35;
  }

  v56 = v55;
  [v55 addSubview:*&v1[v41]];

  v57 = swift_allocObject();
  *(v57 + 16) = v177;
  v58 = [*&v1[v41] topAnchor];
  v59 = [v1 view];
  if (!v59)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v60 = v59;
  v174 = v52;
  v175 = v48;
  v61 = [v59 SBUISA_systemApertureObstructedAreaLayoutGuide];

  v62 = [v61 bottomAnchor];
  v63 = [v58 constraintEqualToAnchor:v62];

  *(v57 + 32) = v63;
  v64 = [*&v1[v41] leadingAnchor];
  v65 = [v1 view];
  if (!v65)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v66 = v65;
  v67 = [v65 leadingAnchor];

  v68 = [v64 constraintEqualToAnchor:v67 constant:72.0];
  *(v57 + 40) = v68;
  v69 = Array._bridgeToObjectiveC()().super.isa;

  [v179 activateConstraints:v69];

  v70 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelSubtitleLabel;
  [*&v1[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelSubtitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v71 = *&v1[v70];
  String.localized.getter();
  v72 = String._bridgeToObjectiveC()();

  [v71 setText:v72];

  v73 = *&v1[v70];
  v74 = objc_opt_self();
  v75 = v73;
  v76 = [v74 grayColor];
  [v75 setTextColor:v76];

  [*&v1[v70] setHidden:1];
  [*&v1[v70] sizeToFit];
  v77 = *&v1[v70];
  v78 = objc_allocWithZone(UIFontMetrics);
  v79 = v77;
  v80 = [v78 initForTextStyle:UIFontTextStyleFootnote];
  v81 = [v175 preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  [v81 pointSize];
  if (v82 > 20.0)
  {
    v82 = 20.0;
  }

  v83 = [v174 systemFontOfSize:v82 weight:UIFontWeightMedium];
  v84 = [v80 scaledFontForFont:v83];

  [v79 setFont:v84];
  [*&v1[v70] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v70] setUserInteractionEnabled:0];
  v85 = [v1 view];
  if (!v85)
  {
    goto LABEL_38;
  }

  v86 = v85;
  [v85 addSubview:*&v1[v70]];

  v87 = swift_allocObject();
  *(v87 + 16) = v177;
  v88 = [*&v1[v70] leadingAnchor];
  v89 = [v1 view];
  if (!v89)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v90 = v89;
  v91 = [v89 leadingAnchor];

  v92 = [v88 constraintEqualToAnchor:v91 constant:72.0];
  *(v87 + 32) = v92;
  v93 = [*&v1[v70] topAnchor];
  v94 = [*&v1[v41] bottomAnchor];
  v95 = [v93 constraintEqualToAnchor:v94 constant:2.0];

  *(v87 + 40) = v95;
  v96 = Array._bridgeToObjectiveC()().super.isa;

  [v179 activateConstraints:v96];

  v97 = *&v1[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingCustomView];
  [v97 setTintColor:v176];
  [v97 setHidden:1];
  [v97 setTranslatesAutoresizingMaskIntoConstraints:0];
  v98 = [v1 view];
  if (!v98)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v99 = v98;
  [v98 frame];
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;

  [v97 setFrame:{v101, v103, v105, v107}];
  String.localized.getter();
  v108 = String._bridgeToObjectiveC()();

  [v97 setAccessibilityLabel:v108];

  v109 = [v1 view];
  if (!v109)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v110 = v109;
  [v109 addSubview:v97];

  v111 = [v1 view];
  if (!v111)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v112 = v111;
  [v111 bringSubviewToFront:v97];

  v113 = swift_allocObject();
  *(v113 + 16) = v177;
  v114 = [v97 trailingAnchor];
  v115 = [v1 view];
  if (!v115)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v116 = v115;
  v117 = [v115 trailingAnchor];

  v118 = [v114 constraintEqualToAnchor:v117 constant:-34.0];
  *(v113 + 32) = v118;
  v119 = [v97 topAnchor];
  v120 = [v1 view];
  if (!v120)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v121 = v120;
  v122 = [v120 topAnchor];

  v123 = [v119 constraintEqualToAnchor:v122 constant:50.0];
  *(v113 + 40) = v123;
  v124 = Array._bridgeToObjectiveC()().super.isa;

  [v179 activateConstraints:v124];

  v125 = objc_opt_self();
  v126 = [objc_opt_self() traitCollectionWithLegibilityWeight:1];
  v127 = [v125 sbui_systemApertureTextButtonConfigurationCompatibleWithTraitCollection:v126];

  v128 = v176;
  [v127 setBaseBackgroundColor:v176];
  [v127 setBaseForegroundColor:v128];
  String.localized.getter();
  v129 = String._bridgeToObjectiveC()();

  [v127 setTitle:v129];

  sub_10000E844(0, &qword_1000506D8, SBUISystemApertureButton_ptr);
  static UIButton.Configuration._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000E844(0, &unk_1000506E0, UIAction_ptr);
  *(swift_allocObject() + 16) = v1;
  v130 = v1;
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v131 = UIButton.init(configuration:primaryAction:)();
  v132 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton;
  v133 = *&v130[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton];
  *&v130[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton] = v131;
  v134 = v131;

  [v134 setHidden:1];
  v135 = *&v130[v132];
  if (!v135)
  {
    goto LABEL_30;
  }

  [v135 setTranslatesAutoresizingMaskIntoConstraints:0];
  v136 = *&v130[v132];
  if (!v136)
  {
    goto LABEL_30;
  }

  v137 = v136;
  v138 = [v130 view];
  if (!v138)
  {
    goto LABEL_45;
  }

  v139 = v138;
  [v138 frame];
  v141 = v140;
  v143 = v142;
  v145 = v144;
  v147 = v146;

  [v137 setFrame:{v141, v143, v145, v147}];
  v148 = *&v130[v132];
  if (!v148)
  {
    goto LABEL_30;
  }

  v149 = v148;
  String.localized.getter();
  v150 = String._bridgeToObjectiveC()();

  [v149 setAccessibilityLabel:v150];

  v151 = *&v130[v132];
  if (!v151)
  {
    goto LABEL_30;
  }

  v152 = v151;
  v153 = [v130 view];
  if (!v153)
  {
    goto LABEL_46;
  }

  v154 = v153;
  v155 = v152;
  [v154 addSubview:v155];

  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_100039810;
  v157 = [v155 leadingAnchor];

  v158 = [v130 view];
  if (!v158)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v159 = v158;
  v160 = [v158 leadingAnchor];

  v161 = [v157 constraintEqualToAnchor:v160 constant:20.0];
  *(v156 + 32) = v161;
  v162 = [v155 trailingAnchor];

  v163 = [v130 view];
  if (!v163)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v164 = v163;
  v165 = [v163 trailingAnchor];

  v166 = [v162 constraintEqualToAnchor:v165 constant:-20.0];
  *(v156 + 40) = v166;
  v167 = [v155 bottomAnchor];

  v168 = [v130 view];
  if (v168)
  {
    v169 = v168;
    v170 = [v168 bottomAnchor];

    v171 = [v167 constraintEqualToAnchor:v170 constant:-20.0];
    *(v156 + 48) = v171;
    v172 = Array._bridgeToObjectiveC()().super.isa;

    [v179 activateConstraints:v172];

LABEL_30:
    return;
  }

LABEL_49:
  __break(1u);
}

uint64_t sub_10002AD2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = type metadata accessor for MAGAngelClientRequest(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_clientRequestStream);
  v16 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v16 - 8) + 56))(v14, 2, 13, v16);
  sub_10000DF00(v14, v12);

  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();

  (*(v4 + 8))(v7, v3);
  return sub_10000DF64(v14);
}

void sub_10002AF04(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = type metadata accessor for MAGAngelSystemApertureViewController();
  objc_msgSendSuper2(&v17, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v15 = sub_10002C6C8;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10002B290;
  v14 = &unk_10004A878;
  v8 = _Block_copy(&v11);
  v9 = v3;

  v15 = MAGAngelContentState.hash(into:);
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10002B290;
  v14 = &unk_10004A8A0;
  v10 = _Block_copy(&v11);
  [a1 animateAlongsideTransition:v8 completion:v10];
  _Block_release(v10);
  _Block_release(v8);
}

void sub_10002B078(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_activeLayoutMode);
  switch(v3)
  {
    case 4:
      v9 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingView);
      if (v9)
      {
        [v9 setHidden:1];
      }

      v10 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingView);
      if (v10)
      {
        [v10 setHidden:1];
      }

      v11 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_minimalView);
      if (v11)
      {
        [v11 setHidden:1];
      }

      [*(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView) setHidden:0];
      [*(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingCustomView) setHidden:0];
      v12 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton);
      if (v12)
      {
        [v12 setHidden:0];
      }

      [*(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelLabel) setHidden:0];
      v4 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelSubtitleLabel);
      break;
    case 3:
      v5 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingView);
      if (v5)
      {
        [v5 setHidden:0];
      }

      v6 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingView);
      if (v6)
      {
        [v6 setHidden:0];
      }

      [*(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView) setHidden:1];
      [*(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingCustomView) setHidden:1];
      v7 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton);
      if (v7)
      {
        [v7 setHidden:1];
      }

      [*(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelLabel) setHidden:1];
      v4 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelSubtitleLabel);
      v8 = 1;
      goto LABEL_23;
    case 2:
      v4 = *(a2 + OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_minimalView);
      if (!v4)
      {
        return;
      }

      break;
    default:
      return;
  }

  v8 = 0;
LABEL_23:

  [v4 setHidden:v8];
}

uint64_t sub_10002B290(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_10002B378(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_angelPreferences;
  if (qword_10004F5F0 != -1)
  {
    swift_once();
  }

  *&v4[v7] = qword_100050E00;
  v8 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_clientRequestStream;
  v9 = qword_10004F568;

  if (v9 != -1)
  {
    swift_once();
  }

  *&v4[v8] = qword_100050D78;
  *&v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_activeLayoutMode] = 0;
  *&v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_contentRole] = 2;
  *&v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_preferredLayoutMode] = 3;
  *&v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_maximumLayoutMode] = 4;
  v10 = SBUISystemApertureElementIdentifierUnknown;
  *&v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_elementIdentifier] = SBUISystemApertureElementIdentifierUnknown;
  v11 = &v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_associatedAppBundleIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_preferredHeightForBottomSafeArea;

  v13 = v10;
  *&v4[v12] = sub_10002C278();
  v14 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingView;
  v15 = type metadata accessor for MAGAngelLeadingView();
  v16 = objc_allocWithZone(v15);
  *&v4[v14] = sub_10002BA88(1);
  v17 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingView;
  *&v4[v17] = [objc_allocWithZone(type metadata accessor for MAGAngelTrailingView()) init];
  v18 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_minimalView;
  v19 = objc_allocWithZone(v15);
  *&v4[v18] = sub_10002BA88(1);
  v20 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView;
  *&v4[v20] = [objc_allocWithZone(UIView) init];
  v21 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingCustomView;
  *&v4[v21] = [objc_allocWithZone(type metadata accessor for MAGAngelCustomTrailingView()) init];
  v22 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelLabel;
  *&v4[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelSubtitleLabel;
  *&v4[v23] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton] = 0;
  v24 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_keyColor;
  *&v4[v24] = [objc_opt_self() systemYellowColor];
  if (a2)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  v28.receiver = v4;
  v28.super_class = type metadata accessor for MAGAngelSystemApertureViewController();
  v26 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", v25, a3);

  return v26;
}

id sub_10002B694(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_angelPreferences;
  if (qword_10004F5F0 != -1)
  {
    swift_once();
  }

  *&v2[v4] = qword_100050E00;
  v5 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_clientRequestStream;
  v6 = qword_10004F568;

  if (v6 != -1)
  {
    swift_once();
  }

  *&v2[v5] = qword_100050D78;
  *&v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_activeLayoutMode] = 0;
  *&v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_contentRole] = 2;
  *&v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_preferredLayoutMode] = 3;
  *&v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_maximumLayoutMode] = 4;
  v7 = SBUISystemApertureElementIdentifierUnknown;
  *&v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_elementIdentifier] = SBUISystemApertureElementIdentifierUnknown;
  v8 = &v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_associatedAppBundleIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_preferredHeightForBottomSafeArea;

  v10 = v7;
  *&v2[v9] = sub_10002C278();
  v11 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingView;
  v12 = type metadata accessor for MAGAngelLeadingView();
  v13 = objc_allocWithZone(v12);
  *&v2[v11] = sub_10002BA88(1);
  v14 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingView;
  *&v2[v14] = [objc_allocWithZone(type metadata accessor for MAGAngelTrailingView()) init];
  v15 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_minimalView;
  v16 = objc_allocWithZone(v12);
  *&v2[v15] = sub_10002BA88(1);
  v17 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_leadingCustomView;
  *&v2[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_trailingCustomView;
  *&v2[v18] = [objc_allocWithZone(type metadata accessor for MAGAngelCustomTrailingView()) init];
  v19 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelLabel;
  *&v2[v19] = [objc_allocWithZone(UILabel) init];
  v20 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_magAngelSubtitleLabel;
  *&v2[v20] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_stopButton] = 0;
  v21 = OBJC_IVAR____TtC14MagnifierAngel36MAGAngelSystemApertureViewController_keyColor;
  *&v2[v21] = [objc_opt_self() systemYellowColor];
  v24.receiver = v2;
  v24.super_class = type metadata accessor for MAGAngelSystemApertureViewController();
  v22 = objc_msgSendSuper2(&v24, "initWithCoder:", a1);

  if (v22)
  {
  }

  return v22;
}

id sub_10002BA88(char a1)
{
  v3 = &v1[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_compressedElementSize];
  *v3 = MAGAngelContentState.hash(into:)(19.0, 19.0);
  *(v3 + 1) = v4;
  v5 = &v1[OBJC_IVAR____TtC14MagnifierAngel19MAGAngelLeadingView_customElementSize];
  v6 = MAGAngelContentState.hash(into:)(37.7, 37.7);
  *v5 = v6;
  v5[1] = v7;
  if (a1)
  {
    v8 = *v3;
    v9 = v3[1];
  }

  else
  {
    v8 = v6;
    v9 = v7;
  }

  v17.receiver = v1;
  v17.super_class = type metadata accessor for MAGAngelLeadingView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, v8, v9);
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() systemImageNamed:v11];

  if (v12)
  {
    v13 = [v12 imageWithRenderingMode:2];
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(UIImageView) initWithImage:v13];
  [v14 setFrame:{0.0, 0.0, v8, v9}];
  v15 = [objc_opt_self() systemYellowColor];
  [v14 setTintColor:v15];

  [v10 addSubview:v14];
  return v10;
}

char *sub_10002BDA0()
{
  v1 = &v0[OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize];
  v2 = MAGAngelContentState.hash(into:)(19.0, 19.0);
  v4 = v3;
  *v1 = v2;
  v1[1] = v3;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for MAGAngelTrailingView();
  v5 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, v2, v4);
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6];

  if (v7)
  {
    v8 = [v7 imageWithRenderingMode:2];
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(UIImageView) initWithImage:v8];
  [v9 setFrame:{0.0, 0.0, *&v5[OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize], *&v5[OBJC_IVAR____TtC14MagnifierAngel20MAGAngelTrailingView_compressedElementSize + 8]}];
  v10 = [objc_opt_self() systemYellowColor];
  [v9 setTintColor:v10];

  [v5 addSubview:v9];
  return v5;
}

id sub_10002C1DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002C238()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10002C278()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    goto LABEL_14;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_6:

    return 160.0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
  {
    goto LABEL_14;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
    goto LABEL_14;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_6;
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
LABEL_14:

    return 160.0;
  }

  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v25)
  {
    goto LABEL_6;
  }

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {

    return 145.0;
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v30)
  {

    return 145.0;
  }

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;
  if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
  {

    return 150.0;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {

    return 150.0;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;
  if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
  {

    return 140.0;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {

    return 140.0;
  }

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;
  if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
  {
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v45 & 1) == 0)
    {
      return 120.0;
    }
  }

  return 130.0;
}

uint64_t sub_10002C6D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002C70C(uint64_t a1)
{
  v2 = sub_10002C8E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002C748(uint64_t a1)
{
  v2 = sub_10002C8E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MAGAngelContentState.encode(to:)(void *a1)
{
  v2 = sub_10000D3B8(&qword_100050708, &qword_1000398D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10002C8A0(a1, a1[3]);
  sub_10002C8E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

void *sub_10002C8A0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10002C8E4()
{
  result = qword_100050710;
  if (!qword_100050710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050710);
  }

  return result;
}

uint64_t sub_10002CA10@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10002CA40(uint64_t a1)
{
  v2 = sub_10002FAC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002CA7C(uint64_t a1)
{
  v2 = sub_10002FAC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002CAFC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = sub_10000D3B8(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10002C8A0(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_10002CC1C()
{
  isUniquelyReferenced_nonNull_native = v0;
  *(v0 + 16) = &_swiftEmptyDictionarySingleton;
  v2 = (v0 + 16);
  sub_10000D3B8(&qword_100050948, &qword_100039C20);
  v3 = static Activity.activities.getter();
  v4 = v3;
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    v33 = v4;
    v34 = v4 & 0xC000000000000001;
    v31 = isUniquelyReferenced_nonNull_native;
    v32 = v4 & 0xFFFFFFFFFFFFFF8;
    while (v34)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

LABEL_12:
      v4 = i;
      v13 = Activity.id.getter();
      v15 = v14;
      swift_beginAccess();

      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v2;
      v35 = *v2;
      v18 = v2;
      *v2 = 0x8000000000000000;
      v19 = sub_1000271A0(v13, v15);
      v21 = v17[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_24;
      }

      v2 = v20;
      if (v17[3] < v24)
      {
        sub_1000274BC(v24, isUniquelyReferenced_nonNull_native);
        v19 = sub_1000271A0(v13, v15);
        if ((v2 & 1) != (v25 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_17:
        if (v2)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v29 = v19;
      sub_100027C7C();
      v19 = v29;
      if (v2)
      {
LABEL_4:
        v7 = v19;

        isUniquelyReferenced_nonNull_native = v35;
        v8 = v35[7];
        v9 = *(v8 + 8 * v7);
        *(v8 + 8 * v7) = v11;

        goto LABEL_5;
      }

LABEL_18:
      isUniquelyReferenced_nonNull_native = v35;
      v35[(v19 >> 6) + 8] |= 1 << v19;
      v26 = (v35[6] + 16 * v19);
      *v26 = v13;
      v26[1] = v15;
      *(v35[7] + 8 * v19) = v11;
      v27 = v35[2];
      v23 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v23)
      {
        goto LABEL_25;
      }

      v35[2] = v28;
LABEL_5:
      v2 = v18;
      *v18 = isUniquelyReferenced_nonNull_native;
      swift_endAccess();

      ++v6;
      i = v4;
      v10 = v12 == v4;
      v4 = v33;
      if (v10)
      {

        return v31;
      }
    }

    if (v6 >= *(v32 + 16))
    {
      goto LABEL_26;
    }

    v11 = *(v4 + 8 * v6 + 32);

    v12 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_12;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return isUniquelyReferenced_nonNull_native;
}

void *sub_10002CEC8()
{
  type metadata accessor for ActivityStore();
  swift_allocObject();
  result = sub_10002CC1C();
  off_100050700 = result;
  return result;
}

uint64_t sub_10002CF08()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10002CF40()
{
  v0 = type metadata accessor for MAGAngelGateway();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_10002CF80();
  qword_100050E68 = v3;
  return result;
}

uint64_t sub_10002CF80()
{
  v1 = v0;
  *(v0 + 16) = 0;
  Logger.init(subsystem:category:)();
  if (qword_10004F650 != -1)
  {
    swift_once();
  }

  v2 = off_100050700;
  swift_beginAccess();
  if (*(v2[2] + 16))
  {
    v3 = v2[2];

    v5 = sub_10001DD78(v4);
    v7 = v6;

    if (v7)
    {
      v8 = v2[2];
      if (*(v8 + 16))
      {
        v9 = v2[2];

        v10 = sub_1000271A0(v5, v7);
        v12 = v11;

        if (v12)
        {
          v13 = *(*(v8 + 56) + 8 * v10);
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v1 + 16);
      *(v1 + 16) = v13;
    }
  }

  return v1;
}

uint64_t sub_10002D0E8()
{
  v1[9] = v0;
  v2 = *(*(sub_10000D3B8(&qword_100050930, &qword_100039C08) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v3 = sub_10000D3B8(&qword_100050940, &qword_100039C18);
  v1[11] = v3;
  v4 = *(v3 - 8);
  v1[12] = v4;
  v5 = *(v4 + 64) + 15;
  v1[13] = swift_task_alloc();
  v6 = type metadata accessor for ActivityPresentationOptions();
  v1[14] = v6;
  v7 = *(v6 - 8);
  v1[15] = v7;
  v8 = *(v7 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_10002D248, 0, 0);
}

uint64_t sub_10002D248()
{
  v37 = v0;
  if (*(v0[9] + 16))
  {
    v1 = swift_task_alloc();
    v0[17] = v1;
    *v1 = v0;
    v1[1] = sub_10002D864;

    return sub_10002ED5C();
  }

  else
  {
    v3 = v0[16];
    v4 = v0[13];
    v5 = v0[10];
    sub_10000D3B8(&qword_100050950, &qword_100039C28);
    v6 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
    v7 = *(v6 - 8);
    v8 = *(v7 + 72);
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100037F70;
    (*(v7 + 104))(v10 + v9, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v6);
    ActivityPresentationOptions.init(destinations:)();
    sub_10000D3B8(&qword_100050948, &qword_100039C20);
    Date.init(timeIntervalSinceNow:)();
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    sub_10002F90C();
    sub_10002F964();
    sub_10002F9BC();
    ActivityContent.init(state:staleDate:relevanceScore:)();
    v12 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
    v13 = v0[9];
    (*(v0[12] + 8))(v0[13], v0[11]);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v17;
      *v16 = 136315138;
      v18 = Activity.id.getter();
      v20 = sub_100034404(v18, v19, &v36);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Requested activity (%s) successfully.", v16, 0xCu);
      sub_100029000(v17);
    }

    v21 = v0[9];
    v22 = *(v21 + 16);
    *(v21 + 16) = v12;

    if (qword_10004F650 != -1)
    {
      swift_once();
    }

    v24 = v0[15];
    v23 = v0[16];
    v25 = v0[14];
    v26 = off_100050700;
    v27 = Activity.id.getter();
    v29 = v28;
    swift_beginAccess();

    v30 = v26[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v26[2];
    v26[2] = 0x8000000000000000;
    sub_1000278DC(v12, v27, v29, isUniquelyReferenced_nonNull_native);

    v26[2] = v36;
    swift_endAccess();

    (*(v24 + 8))(v23, v25);
    v32 = v0[16];
    v33 = v0[13];
    v34 = v0[10];

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_10002D864()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_10002D960, 0, 0);
}

uint64_t sub_10002D960()
{
  v36 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  sub_10000D3B8(&qword_100050950, &qword_100039C28);
  v4 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100037F70;
  (*(v5 + 104))(v8 + v7, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v4);
  ActivityPresentationOptions.init(destinations:)();
  sub_10000D3B8(&qword_100050948, &qword_100039C20);
  Date.init(timeIntervalSinceNow:)();
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  sub_10002F90C();
  sub_10002F964();
  sub_10002F9BC();
  ActivityContent.init(state:staleDate:relevanceScore:)();
  v10 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
  v11 = v0[9];
  (*(v0[12] + 8))(v0[13], v0[11]);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315138;
    v16 = Activity.id.getter();
    v18 = sub_100034404(v16, v17, &v35);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Requested activity (%s) successfully.", v14, 0xCu);
    sub_100029000(v15);
  }

  v19 = v0[9];
  v20 = *(v19 + 16);
  *(v19 + 16) = v10;

  if (qword_10004F650 != -1)
  {
    swift_once();
  }

  v22 = v0[15];
  v21 = v0[16];
  v23 = v0[14];
  v24 = off_100050700;
  v25 = Activity.id.getter();
  v27 = v26;
  swift_beginAccess();

  v28 = v24[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v24[2];
  v24[2] = 0x8000000000000000;
  sub_1000278DC(v10, v25, v27, isUniquelyReferenced_nonNull_native);

  v24[2] = v35;
  swift_endAccess();

  (*(v22 + 8))(v21, v23);
  v30 = v0[16];
  v31 = v0[13];
  v32 = v0[10];

  v33 = v0[1];

  return v33();
}

uint64_t sub_10002DEE8()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC14MagnifierAngel15MAGAngelGateway_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_10002DFA8()
{
  if (qword_10004F658 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000DDD4;

  return sub_10002D0E8();
}

uint64_t sub_10002E1E0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return _swift_task_switch(sub_10002E248, 0, 0);
}

uint64_t sub_10002E248()
{
  if (qword_10004F658 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10002E30C;

  return sub_10002D0E8();
}

uint64_t sub_10002E30C()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10002E448()
{
  if (qword_10004F658 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000EC40;

  return sub_10002ED5C();
}

uint64_t sub_10002E68C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);

  return _swift_task_switch(sub_10002E6F4, 0, 0);
}

uint64_t sub_10002E6F4()
{
  if (qword_10004F658 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000300FC;

  return sub_10002ED5C();
}

id MAGAngelProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MAGAngelProxy.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGAngelProxy();
  return objc_msgSendSuper2(&v2, "init");
}

id MAGAngelProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGAngelProxy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10002E8A0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000EC40;

  return v7();
}

uint64_t sub_10002E988(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000EC40;

  return v8();
}

uint64_t sub_10002EA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100012760(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10000E35C(v12, &unk_10004F870, &qword_100038BF0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_10000E35C(a3, &unk_10004F870, &qword_100038BF0);

    return v23;
  }

LABEL_8:
  sub_10000E35C(a3, &unk_10004F870, &qword_100038BF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10002ED5C()
{
  v1 = type metadata accessor for ActivityUIDismissalPolicy();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();
  v4 = *(*(sub_10000D3B8(&qword_100050930, &qword_100039C08) - 8) + 64) + 15;
  v0[8] = swift_task_alloc();
  v5 = *(*(sub_10000D3B8(&qword_100050938, &qword_100039C10) - 8) + 64) + 15;
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_10002EE88, 0, 0);
}

uint64_t sub_10002EE88()
{
  if (qword_10004F650 != -1)
  {
LABEL_22:
    swift_once();
  }

  v1 = off_100050700;
  *(v0 + 80) = off_100050700;
  swift_beginAccess();
  v2 = v1[2];
  *(v0 + 88) = v2;
  v3 = *(v2 + 32);
  *(v0 + 128) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v7 = 0;
  while (v6)
  {
    v8 = v6;
LABEL_12:
    *(v0 + 96) = v8;
    *(v0 + 104) = v7;
    v6 = (v8 - 1) & v8;
    v10 = *(*(v0 + 80) + 16);
    if (*(v10 + 16))
    {
      v11 = (*(*(v0 + 88) + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v8)))));
      v13 = *v11;
      v12 = v11[1];

      v14 = sub_1000271A0(v13, v12);
      v16 = v15;

      if (v16)
      {
        v23 = *(v0 + 64);
        v22 = *(v0 + 72);
        v24 = *(v0 + 56);
        *(v0 + 112) = *(*(v10 + 56) + 8 * v14);

        Date.init(timeIntervalSinceNow:)();
        v25 = type metadata accessor for Date();
        (*(*(v25 - 8) + 56))(v23, 0, 1, v25);
        sub_10002F90C();
        sub_10002F964();
        sub_10002F9BC();
        ActivityContent.init(state:staleDate:relevanceScore:)();
        v26 = sub_10000D3B8(&qword_100050940, &qword_100039C18);
        (*(*(v26 - 8) + 56))(v22, 0, 1, v26);
        static ActivityUIDismissalPolicy.immediate.getter();
        v27 = *(&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + 1);
        v31 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
        v28 = swift_task_alloc();
        *(v0 + 120) = v28;
        *v28 = v0;
        v28[1] = sub_10002F1F8;
        v29 = *(v0 + 72);
        v30 = *(v0 + 56);

        return v31(v29, v30);
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v9 >= (((1 << *(v0 + 128)) + 63) >> 6))
    {
      break;
    }

    v8 = *(*(v0 + 88) + 8 * v9 + 64);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_12;
    }
  }

  v17 = *(v0 + 64);
  v18 = *(v0 + 72);
  v19 = *(v0 + 56);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10002F1F8()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_10000E35C(v3, &qword_100050938, &qword_100039C10);

  return _swift_task_switch(sub_10002F3A0, 0, 0);
}

void sub_10002F3A0()
{
  v1 = *(v0 + 104);
  v2 = (*(v0 + 96) - 1) & *(v0 + 96);
  while (v2)
  {
    v3 = v2;
LABEL_8:
    *(v0 + 96) = v3;
    *(v0 + 104) = v1;
    v2 = (v3 - 1) & v3;
    v5 = *(*(v0 + 80) + 16);
    if (*(v5 + 16))
    {
      v6 = (*(*(v0 + 88) + 48) + ((v1 << 10) | (16 * __clz(__rbit64(v3)))));
      v8 = *v6;
      v7 = v6[1];

      v9 = sub_1000271A0(v8, v7);
      v11 = v10;

      if (v11)
      {
        v17 = *(v0 + 64);
        v16 = *(v0 + 72);
        v18 = *(v0 + 56);
        *(v0 + 112) = *(*(v5 + 56) + 8 * v9);

        Date.init(timeIntervalSinceNow:)();
        v19 = type metadata accessor for Date();
        (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
        sub_10002F90C();
        sub_10002F964();
        sub_10002F9BC();
        ActivityContent.init(state:staleDate:relevanceScore:)();
        v20 = sub_10000D3B8(&qword_100050940, &qword_100039C18);
        (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
        static ActivityUIDismissalPolicy.immediate.getter();
        v21 = *(&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + 1);
        v25 = (&async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:) + async function pointer to dispatch thunk of Activity.end(_:dismissalPolicy:));
        v22 = swift_task_alloc();
        *(v0 + 120) = v22;
        *v22 = v0;
        v22[1] = sub_10002F1F8;
        v23 = *(v0 + 72);
        v24 = *(v0 + 56);

        v25(v23, v24);
        return;
      }
    }
  }

  while (1)
  {
    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v4 >= (((1 << *(v0 + 128)) + 63) >> 6))
    {
      break;
    }

    v3 = *(*(v0 + 88) + 8 * v4 + 64);
    ++v1;
    if (v3)
    {
      v1 = v4;
      goto LABEL_8;
    }
  }

  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);

  v15 = *(v0 + 8);

  v15();
}

unint64_t sub_10002F6C0()
{
  result = qword_100050718;
  if (!qword_100050718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050718);
  }

  return result;
}

uint64_t type metadata accessor for MAGAngelGateway()
{
  result = qword_100050808;
  if (!qword_100050808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002F79C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_10002F85C()
{
  result = qword_1000508E8;
  if (!qword_1000508E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000508E8);
  }

  return result;
}

unint64_t sub_10002F8B4()
{
  result = qword_1000508F0;
  if (!qword_1000508F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000508F0);
  }

  return result;
}

unint64_t sub_10002F90C()
{
  result = qword_1000508F8;
  if (!qword_1000508F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000508F8);
  }

  return result;
}

unint64_t sub_10002F964()
{
  result = qword_100050900;
  if (!qword_100050900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050900);
  }

  return result;
}

unint64_t sub_10002F9BC()
{
  result = qword_100050908;
  if (!qword_100050908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050908);
  }

  return result;
}

unint64_t sub_10002FA14()
{
  result = qword_100050910;
  if (!qword_100050910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050910);
  }

  return result;
}

unint64_t sub_10002FA6C()
{
  result = qword_100050918;
  if (!qword_100050918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050918);
  }

  return result;
}

unint64_t sub_10002FAC0()
{
  result = qword_100050928;
  if (!qword_100050928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050928);
  }

  return result;
}

uint64_t sub_10002FB18()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000EC40;

  return sub_10002E68C(v2);
}

uint64_t sub_10002FBC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000EC40;

  return sub_10002E8A0(v2, v3, v5);
}

uint64_t sub_10002FC88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000EC40;

  return sub_10002E988(a1, v4, v5, v7);
}

uint64_t sub_10002FD54()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002FD8C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EC40;

  return sub_100012838(a1, v5);
}

uint64_t sub_10002FE44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000DDD4;

  return sub_100012838(a1, v5);
}

uint64_t sub_10002FEFC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002FF3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000DDD4;

  return sub_10002E1E0(v2);
}

uint64_t sub_10002FFE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10003003C()
{
  result = qword_100050958;
  if (!qword_100050958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050958);
  }

  return result;
}

unint64_t sub_100030094()
{
  result = qword_100050960;
  if (!qword_100050960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050960);
  }

  return result;
}

void sub_1000303B0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v29 - v10;
  static AXLog.magangel.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100034404(0xD00000000000001FLL, 0x800000010003EF00, &v30);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_100029000(v15);
  }

  v16 = *(v5 + 8);
  v16(v11, v4);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = objc_allocWithZone(type metadata accessor for MAGAngelWindow());
    v20 = a1;
    v21 = [v19 initWithWindowScene:v18];
    v22 = OBJC_IVAR____TtC14MagnifierAngel21MAGAngelSceneDelegate_window;
    v23 = *(v2 + OBJC_IVAR____TtC14MagnifierAngel21MAGAngelSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC14MagnifierAngel21MAGAngelSceneDelegate_window) = v21;

    v24 = *(v2 + v22);
    if (v24)
    {
      v25 = v24;
      [v25 makeKeyAndVisible];
    }
  }

  else
  {
    static AXLog.magangel.getter();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "SessionSceneDelegate: Received a UIScene that is not of type UIWindowScene.", v28, 2u);
    }

    v16(v9, v4);
  }
}

void sub_100030694(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v51 = &v47 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  static AXLog.magangel.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v52 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_100034404(0xD00000000000001FLL, 0x800000010003EF00, &v52);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
    sub_100029000(v18);
  }

  v19 = *(v3 + 8);
  v19(v14, v2);
  type metadata accessor for ActivityScene();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;
    v22 = a1;
    static AXLog.magangel.getter();
    v23 = v22;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48 = v23;
      v28 = v27;
      v52 = v27;
      *v26 = 136315138;
      v29 = [v21 description];
      v49 = v21;
      v30 = v29;
      v31 = v2;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v12;
      v34 = v33;

      v35 = v32;
      v2 = v31;
      v36 = sub_100034404(v35, v34, &v52);

      *(v26 + 4) = v36;
      v21 = v49;
      _os_log_impl(&_mh_execute_header, v24, v25, "SessionSceneDelegate: Connecting session scene: %s", v26, 0xCu);
      sub_100029000(v28);
      v23 = v48;

      v19(v47, v31);
    }

    else
    {

      v19(v12, v2);
    }

    v40 = v23;
    if ([v21 SBUI_isHostedBySystemAperture])
    {
      static AXLog.magangel.getter();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Returning system aperture view controller", v43, 2u);
      }

      v19(v51, v2);
      v44 = OBJC_IVAR____TtC14MagnifierAngel35MAGAngelSystemApertureSceneDelegate_systemApertureElementProvider;
      v45 = v50;
      [*(v50 + OBJC_IVAR____TtC14MagnifierAngel35MAGAngelSystemApertureSceneDelegate_systemApertureElementProvider) loadViewIfNeeded];
      v46 = *(v45 + v44);
      [v21 setSystemApertureElementViewControllerProvider:v46];
    }
  }

  else
  {
    static AXLog.magangel.getter();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "SessionSceneDelegate: Received a UIScene that is not of type SessionScene.", v39, 2u);
    }

    v19(v7, v2);
  }
}

uint64_t sub_100030BDC(uint64_t a1)
{
  v20 = a1;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v7 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  *&v1[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener] = 0;
  *&v1[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_connection] = 0;
  v18 = OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_queue;
  v17 = sub_10000FC70();
  static MAGAngelConstants.MachService.dispatchQueueLabel.getter();
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100035054();
  sub_10000D3B8(&qword_100050BD8, qword_100039D68);
  sub_1000350AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  *&v1[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_clientRequestStream] = v20;
  v8 = type metadata accessor for MAGAngelConnectionManager();
  v24.receiver = v1;
  v24.super_class = v8;

  v9 = objc_msgSendSuper2(&v24, "init");
  v22 = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100035110;
  *(v10 + 24) = &v21;
  aBlock[4] = sub_10003514C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035148;
  aBlock[3] = &unk_10004AC18;
  v11 = _Block_copy(aBlock);
  v12 = objc_opt_self();
  v13 = v9;

  v14 = [v12 listenerWithConfigurator:v11];

  _Block_release(v11);

  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v16 = *&v13[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener];
    *&v13[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener] = v14;

    return v13;
  }

  return result;
}

id sub_100030F84(void *a1, uint64_t a2)
{
  static MAGAngelConstants.MachService.launchAngelMachServiceDomain.getter();
  v4 = String._bridgeToObjectiveC()();

  [a1 setDomain:v4];

  static MAGAngelConstants.MachService.launchAngelMachServiceID.getter();
  v5 = String._bridgeToObjectiveC()();

  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

id sub_100031030()
{
  v1 = OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener;
  v2 = *&v0[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MAGAngelConnectionManager();
  return objc_msgSendSuper2(&v5, "dealloc");
}

id sub_100031180()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Service will start listening for clients", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  result = *(v1 + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_listener);
  if (result)
  {
    return [result activate];
  }

  __break(1u);
  return result;
}

void sub_1000312E0(void *a1, char *a2)
{
  [a1 setTargetQueue:*&a2[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_queue]];
  v4 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v4];

  v5 = MAGMakeServiceInterface()();
  [a1 setInterface:v5];

  [a1 setInterfaceTarget:a2];
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v19 = sub_10003503C;
  v20 = v6;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100031714;
  v18 = &unk_10004AB28;
  v7 = _Block_copy(&v15);
  v8 = a2;

  [a1 setActivationHandler:v7];
  _Block_release(v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v19 = sub_100035044;
  v20 = v9;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100031714;
  v18 = &unk_10004AB78;
  v10 = _Block_copy(&v15);
  v11 = v8;

  [a1 setInvalidationHandler:v10];
  _Block_release(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v19 = sub_10003504C;
  v20 = v12;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100031714;
  v18 = &unk_10004ABC8;
  v13 = _Block_copy(&v15);
  v14 = v11;

  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
}

uint64_t sub_10003158C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "%@ activation handler called", v11, 0xCu);
    sub_100028E94(v12);
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_100031714(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_10003177C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "%@ invalidation handler called", v11, 0xCu);
    sub_100028E94(v12);
  }

  (*(v4 + 8))(v7, v3);
  v14 = *&v8[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_connection];
  *&v8[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_connection] = 0;
}

id sub_100031918(void *a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v9 = a2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "%@ interruption handler called", v12, 0xCu);
    sub_100028E94(v13);
  }

  (*(v5 + 8))(v8, v4);
  return [a1 activate];
}

uint64_t sub_100031AC0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100031BFC()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26 - v3;
  v5 = type metadata accessor for MAGAngelClientRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = v0;
    v22 = v21;
    v29 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100034404(0xD000000000000014, 0x800000010003F080, &v29);
    _os_log_impl(&_mh_execute_header, v17, v18, "Recv client message: '%s'", v20, 0xCu);
    sub_100029000(v22);
    v0 = v27;

    v1 = v26;
  }

  (*(v13 + 8))(v16, v12);
  v23 = *(v28 + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_clientRequestStream);
  v24 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v24 - 8) + 56))(v11, 1, 13, v24);
  sub_10000DF00(v11, v9);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v4, v0);
  return sub_10000DF64(v11);
}

uint64_t sub_1000320C0()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26 - v3;
  v5 = type metadata accessor for MAGAngelClientRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = v0;
    v22 = v21;
    v29 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100034404(0xD000000000000015, 0x800000010003F060, &v29);
    _os_log_impl(&_mh_execute_header, v17, v18, "Recv client message: '%s'", v20, 0xCu);
    sub_100029000(v22);
    v0 = v27;

    v1 = v26;
  }

  (*(v13 + 8))(v16, v12);
  v23 = *(v28 + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_clientRequestStream);
  v24 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v24 - 8) + 56))(v11, 5, 13, v24);
  sub_10000DF00(v11, v9);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v4, v0);
  return sub_10000DF64(v11);
}

uint64_t sub_10003244C()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26 - v3;
  v5 = type metadata accessor for MAGAngelClientRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = v0;
    v22 = v21;
    v29 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100034404(0xD00000000000001ALL, 0x800000010003F040, &v29);
    _os_log_impl(&_mh_execute_header, v17, v18, "Recv client message: '%s'", v20, 0xCu);
    sub_100029000(v22);
    v0 = v27;

    v1 = v26;
  }

  (*(v13 + 8))(v16, v12);
  v23 = *(v28 + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_clientRequestStream);
  v24 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v24 - 8) + 56))(v11, 6, 13, v24);
  sub_10000DF00(v11, v9);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v4, v0);
  return sub_10000DF64(v11);
}

uint64_t sub_1000327D8()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26 - v3;
  v5 = type metadata accessor for MAGAngelClientRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = v0;
    v22 = v21;
    v29 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100034404(0xD000000000000017, 0x800000010003F020, &v29);
    _os_log_impl(&_mh_execute_header, v17, v18, "Recv client message: '%s'", v20, 0xCu);
    sub_100029000(v22);
    v0 = v27;

    v1 = v26;
  }

  (*(v13 + 8))(v16, v12);
  v23 = *(v28 + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_clientRequestStream);
  v24 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v24 - 8) + 56))(v11, 7, 13, v24);
  sub_10000DF00(v11, v9);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v4, v0);
  return sub_10000DF64(v11);
}

uint64_t sub_100032B64()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26 - v3;
  v5 = type metadata accessor for MAGAngelClientRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = v0;
    v22 = v21;
    v29 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100034404(0xD000000000000015, 0x800000010003F000, &v29);
    _os_log_impl(&_mh_execute_header, v17, v18, "Recv client message: '%s'", v20, 0xCu);
    sub_100029000(v22);
    v0 = v27;

    v1 = v26;
  }

  (*(v13 + 8))(v16, v12);
  v23 = *(v28 + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_clientRequestStream);
  v24 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v24 - 8) + 56))(v11, 8, 13, v24);
  sub_10000DF00(v11, v9);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v4, v0);
  return sub_10000DF64(v11);
}

uint64_t sub_100032EF0()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26 - v3;
  v5 = type metadata accessor for MAGAngelClientRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = v0;
    v22 = v21;
    v29 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100034404(0xD000000000000019, 0x800000010003EFE0, &v29);
    _os_log_impl(&_mh_execute_header, v17, v18, "Recv client message: '%s'", v20, 0xCu);
    sub_100029000(v22);
    v0 = v27;

    v1 = v26;
  }

  (*(v13 + 8))(v16, v12);
  v23 = *(v28 + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_clientRequestStream);
  v24 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v24 - 8) + 56))(v11, 9, 13, v24);
  sub_10000DF00(v11, v9);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v4, v0);
  return sub_10000DF64(v11);
}

uint64_t sub_10003327C()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26 - v3;
  v5 = type metadata accessor for MAGAngelClientRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = v0;
    v22 = v21;
    v29 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100034404(0xD000000000000015, 0x800000010003EFC0, &v29);
    _os_log_impl(&_mh_execute_header, v17, v18, "Recv client message: '%s'", v20, 0xCu);
    sub_100029000(v22);
    v0 = v27;

    v1 = v26;
  }

  (*(v13 + 8))(v16, v12);
  v23 = *(v28 + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_clientRequestStream);
  v24 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v24 - 8) + 56))(v11, 10, 13, v24);
  sub_10000DF00(v11, v9);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v4, v0);
  return sub_10000DF64(v11);
}

uint64_t sub_1000336C0(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v35 = a3;
  v32 = a1;
  v33 = a2;
  v3 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - v6;
  v8 = type metadata accessor for MAGAngelClientRequest(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = v3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v30 = v4;
    v25 = v24;
    v36 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_100034404(v32, v33, &v36);
    _os_log_impl(&_mh_execute_header, v20, v21, "Recv client message: '%s'", v23, 0xCu);
    sub_100029000(v25);
    v4 = v30;

    v3 = v31;
  }

  (*(v16 + 8))(v19, v15);
  v26 = *(v34 + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_clientRequestStream);
  v27 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v27 - 8) + 56))(v14, v35, 13, v27);
  sub_10000DF00(v14, v12);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v4 + 8))(v7, v3);
  return sub_10000DF64(v14);
}

uint64_t sub_100033A64()
{
  v0 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v26 - v3;
  v5 = type metadata accessor for MAGAngelClientRequest(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v27 = v0;
    v22 = v21;
    v29 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100034404(0xD000000000000017, 0x800000010003EFA0, &v29);
    _os_log_impl(&_mh_execute_header, v17, v18, "Recv client message: '%s'", v20, 0xCu);
    sub_100029000(v22);
    v0 = v27;

    v1 = v26;
  }

  (*(v13 + 8))(v16, v12);
  v23 = *(v28 + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_clientRequestStream);
  v24 = type metadata accessor for MAGSimulatedEvent();
  (*(*(v24 - 8) + 56))(v11, 13, 13, v24);
  sub_10000DF00(v11, v9);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v1 + 8))(v4, v0);
  return sub_10000DF64(v11);
}

uint64_t sub_100033DF0(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v2 = sub_10000D3B8(&unk_10004F860, &qword_1000383D0);
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  __chkstk_darwin(v2);
  v5 = &v32 - v4;
  v6 = type metadata accessor for MAGAngelClientRequest(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v35 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v37 = &v32 - v10;
  v36 = type metadata accessor for MAGSimulatedEvent();
  v34 = *(v36 - 8);
  v11 = *(v34 + 64);
  __chkstk_darwin(v36);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  static AXLog.magService.getter();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = v5;
    v23 = v14;
    v24 = v2;
    v25 = v22;
    v26 = swift_slowAlloc();
    v42 = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_100034404(0xD000000000000011, 0x800000010003EF80, &v42);
    _os_log_impl(&_mh_execute_header, v20, v21, "Recv client message: '%s'", v25, 0xCu);
    sub_100029000(v26);

    v2 = v24;
    v14 = v23;
    v5 = v33;
  }

  (*(v15 + 8))(v19, v14);
  static MAGSimulatedEvent.decode(_:)();
  v27 = v37;
  v28 = *(v38 + OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_clientRequestStream);
  v29 = v34;
  v30 = v36;
  (*(v34 + 16))(v37, v13, v36);
  (*(v29 + 56))(v27, 0, 13, v30);
  sub_10000DF00(v27, v35);
  sub_10000D3B8(&unk_1000506F0, &unk_100038540);
  AsyncStream.Continuation.yield(_:)();
  (*(v39 + 8))(v5, v2);
  sub_10000DF64(v27);
  return (*(v29 + 8))(v13, v30);
}

uint64_t sub_1000343B0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100034404(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000344D0(v11, 0, 0, 1, a1, a2);
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
    sub_1000345DC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100029000(v11);
  return v7;
}

unint64_t sub_1000344D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100034638(a5, a6);
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

uint64_t sub_1000345DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_100034638(uint64_t a1, unint64_t a2)
{
  v4 = sub_100034684(a1, a2);
  sub_1000347B4(&off_100049BD8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100034684(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000348A0(v5, 0);
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
        v7 = sub_1000348A0(v10, 0);
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

uint64_t sub_1000347B4(uint64_t result)
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

  result = sub_100034914(result, v12, 1, v3);
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

void *sub_1000348A0(uint64_t a1, uint64_t a2)
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

  sub_10000D3B8(&qword_100050B60, "0<");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100034914(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000D3B8(&qword_100050B60, "0<");
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

void sub_100034A0C(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 remoteProcess];
  static MAGAngelConstants.MachService.clientEntitlement.getter();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 hasEntitlement:v9];

  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v1;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100034FE4;
    *(v12 + 24) = v11;
    aBlock[4] = sub_100034FFC;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100035148;
    aBlock[3] = &unk_10004AAD8;
    v13 = _Block_copy(aBlock);
    v14 = v1;

    [a1 configureConnection:v13];
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }

    else
    {
      [a1 activate];
      v15 = *&v14[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_connection];
      *&v14[OBJC_IVAR____TtC14MagnifierAngel25MAGAngelConnectionManager_connection] = a1;
      v16 = a1;
    }
  }

  else
  {
    static AXLog.magService.getter();
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      v22 = [v17 remoteProcess];
      v23 = [v22 description];
      v30 = v3;
      v24 = v23;

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = sub_100034404(v25, v27, aBlock);

      *(v20 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "%s is not entitled. invalidating connection", v20, 0xCu);
      sub_100029000(v21);

      (*(v4 + 8))(v7, v30);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    [v17 invalidate];
  }
}

unint64_t sub_100034DD0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AXLog.magService.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100034404(0x53746E6572727563, 0xEE00292865746174, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Recv client message: '%s'", v7, 0xCu);
    sub_100029000(v8);
  }

  (*(v1 + 8))(v4, v0);
  if (qword_10004F560 != -1)
  {
    swift_once();
  }

  return sub_10000FF60();
}

uint64_t sub_100034FAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034FFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100035024(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100035054()
{
  result = qword_100050BD0;
  if (!qword_100050BD0)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050BD0);
  }

  return result;
}

unint64_t sub_1000350AC()
{
  result = qword_100050BE0;
  if (!qword_100050BE0)
  {
    sub_10000E208(&qword_100050BD8, qword_100039D68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100050BE0);
  }

  return result;
}

uint64_t sub_10003518C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1000524F8 == -1)
  {
    if (qword_100052500)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100035654();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100052500)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000524F0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10003566C();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000524E0 < v11;
    if (dword_1000524E0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000524E4 > a3)
      {
        return 1;
      }

      if (dword_1000524E4 >= a3)
      {
        return dword_1000524E8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000524E0 < a2;
  if (dword_1000524E0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100035320(uint64_t result)
{
  v1 = qword_100052500;
  if (qword_100052500)
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
      qword_100052500 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_1000524E0, &dword_1000524E4, &dword_1000524E8);
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

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}