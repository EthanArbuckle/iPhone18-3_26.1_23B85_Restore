uint64_t sub_10019BB1C()
{
  *(*v1 + 384) = v0;

  if (v0)
  {

    v2 = sub_10019C764;
  }

  else
  {

    v2 = sub_10019BC98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019BC98()
{
  *(v0 + 176) = 0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v4 = *(v0 + 312);
  v3 = *(v0 + 320);
  v5 = *(v0 + 432);
  *(v0 + 464) = *(v0 + 416);
  *(v0 + 480) = v5;
  *(v0 + 496) = *(v0 + 448);
  *(v0 + 512) = v4;
  *(v0 + 520) = *(v0 + 536);
  *(v0 + 528) = v3;
  v6 = [v1 insertTimeRange:v0 + 464 ofTrack:v2 atTime:v0 + 512 error:v0 + 176];
  v7 = *(v0 + 176);
  v9 = *(v0 + 352);
  v8 = *(v0 + 360);
  v10 = *(v0 + 328);
  if ((v6 & 1) == 0)
  {
    v17 = *(v0 + 288);
    v50 = *(v0 + 256);
    v51 = *(v0 + 264);
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    v20 = v7;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v21 = *(v18 + 8);
    v21(v50, v19);
    v21(v51, v19);
    goto LABEL_8;
  }

  v11 = v7;

  v12 = *(v0 + 336);
  if (v12 == *(v0 + 296))
  {
    v13 = *(v0 + 288);

    v14 = [objc_allocWithZone(AVAssetExportSession) initWithAsset:v13 presetName:AVAssetExportPresetPassthrough];
    *(v0 + 392) = v14;
    if (v14)
    {
      v15 = swift_task_alloc();
      *(v0 + 400) = v15;
      *v15 = v0;
      v15[1] = sub_10019C26C;
      v16 = *(v0 + 256);

      return AVAssetExportSession.export(to:as:isolation:)(v16, AVFileTypeQuickTimeMovie, 0, 0);
    }

    v28 = *(v0 + 272);
    v29 = *(v0 + 248);
    v30 = *(v0 + 232);
    v31 = *(v0 + 240);
    URL.deletingPathExtension()();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.appendingPathExtension(_:)();

    v32 = *(v31 + 8);
    v32(v29, v30);
    v33 = [v28 defaultManager];
    URL._bridgeToObjectiveC()(v34);
    v36 = v35;
    URL._bridgeToObjectiveC()(v37);
    v39 = v38;
    *(v0 + 184) = 0;
    LODWORD(v29) = [v33 moveItemAtURL:v36 toURL:v38 error:v0 + 184];

    v40 = *(v0 + 184);
    v41 = *(v0 + 392);
    v42 = *(v0 + 288);
    v44 = *(v0 + 256);
    v43 = *(v0 + 264);
    if (v29)
    {
      v45 = *(v0 + 232);
      v46 = v40;

      v32(v44, v45);
      v32(v43, v45);

      v22 = *(v0 + 8);
      goto LABEL_9;
    }

    v47 = *(v0 + 232);
    v52 = *(v0 + 192);
    v48 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v32(v52, v47);
    v32(v44, v47);
    v32(v43, v47);
LABEL_8:

    v22 = *(v0 + 8);
LABEL_9:

    return v22();
  }

  v23 = *(v0 + 280);
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v12 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

    v24 = *(v23 + 8 * v12 + 32);
  }

  v25 = v24;
  *(v0 + 328) = v24;
  *(v0 + 336) = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
LABEL_24:
    __break(1u);
  }

  v26 = *(v0 + 304);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_10019B33C;
  v27 = swift_continuation_init();
  *(v0 + 136) = sub_1000C773C(&qword_1002D5FB8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10019C980;
  *(v0 + 104) = &unk_1002952A8;
  *(v0 + 112) = v27;
  [v25 loadTracksWithMediaType:v26 completionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10019C26C()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_10019C87C;
  }

  else
  {
    v2 = sub_10019C3AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019C3AC()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[30];
  URL.deletingPathExtension()();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathExtension(_:)();

  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = [v1 defaultManager];
  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  v0[23] = 0;
  LODWORD(v3) = [v6 moveItemAtURL:v9 toURL:v11 error:v0 + 23];

  v13 = v0[23];
  v14 = v0[49];
  v15 = v0[36];
  v16 = v0[33];
  v17 = v0[32];
  if (v3)
  {
    v18 = v0[29];
    v19 = v13;
  }

  else
  {
    v18 = v0[29];
    v23 = v0[24];
    v21 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v5(v23, v18);
  }

  v5(v17, v18);
  v5(v16, v18);

  v20 = v0[1];

  return v20();
}

uint64_t sub_10019C650()
{
  v1 = v0[41];
  v2 = v0[36];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[29];
  v6 = v0[30];
  swift_willThrow();

  v7 = *(v6 + 8);
  v7(v3, v5);
  v7(v4, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10019C764()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);

  v8 = *(v7 + 8);
  v8(v4, v6);
  v8(v5, v6);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10019C87C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);

  v6 = *(v5 + 8);
  v6(v2, v4);
  v6(v3, v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10019C980(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000AACC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000C773C(&qword_1002D5540);
    swift_allocError();
    *v5 = a3;
    v6 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_1000067AC(0, &qword_1002D0440);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10019CA94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a6;
  v51 = a7;
  v48 = a1;
  v49 = a5;
  v44 = a2;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v17 = &v42 - v16;
  v18 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v18 - 8, v19);
  v21 = &v42 - v20;
  v47 = &v42 - v20;
  static TaskPriority.userInitiated.getter();
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = *(v11 + 16);
  v23(v17, a4, v10);
  v23(&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a8, v10);
  v24 = *(v11 + 80);
  v25 = (v24 + 40) & ~v24;
  v26 = v12 + 7;
  v27 = (v12 + 7 + v25) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v24 + v29 + 16) & ~v24;
  v43 = (v26 + v30) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = v44;
  v32 = *(v11 + 32);
  v32(&v31[v25], v17, v10);
  v34 = v48;
  v33 = v49;
  *&v31[v27] = v48;
  *&v31[v28] = v33;
  v35 = &v31[v29];
  v36 = v51;
  *v35 = v50;
  *(v35 + 1) = v36;
  v32(&v31[v30], v45, v10);
  *&v31[v43] = v46;
  v37 = v34;
  v38 = v33;

  v39 = v47;
  v40 = sub_1001A00CC(0, 0, v47, &unk_10024F250, v31);
  sub_100003CBC(v39, &unk_1002D1D90);
  return v40;
}

uint64_t sub_10019CD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  type metadata accessor for MainActor();
  v6[10] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[11] = v8;
  v6[12] = v7;

  return _swift_task_switch(sub_10019CE34, v8, v7);
}

uint64_t sub_10019CE34()
{
  v1 = [objc_opt_self() sharedApplicationModel];
  *(v0 + 104) = v1;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 recordingWithUniqueID:v2];
  *(v0 + 112) = v3;

  if (v3)
  {
    sub_100147558((v0 + 16));
    v4 = *(v0 + 24);
    *(v0 + 120) = v4;
    *(v0 + 128) = *(v0 + 32);
    *(v0 + 144) = *(v0 + 48);
    if (v4)
    {
      v5 = *(v0 + 16);
      v6 = swift_task_alloc();
      *(v0 + 152) = v6;
      *v6 = v0;
      v6[1] = sub_10019CFDC;

      return (sub_1001A285C)(v5, v4);
    }

    v1 = v3;
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10019CFDC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10019D1B0;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10019D108;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10019D108()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10019D1B0()
{
  v2 = v0[13];
  v1 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10019D3A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002001C;

  return sub_10019CD98(a1, v4, v5, v6, v7, v8);
}

void sub_10019D470(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v9 = sub_1000C773C(&qword_1002D5F98);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v15 = &v20 - v14;
  (*(v10 + 16))(&v20 - v14, a1, v9, v13);
  (*(v6 + 16))(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v16, v15, v9);
  (*(v6 + 32))(v18 + v17, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_1001A395C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100194F40;
  aBlock[3] = &unk_100295280;
  v19 = _Block_copy(aBlock);

  [v21 writeCompositionWithCompletionBlock:v19];
  _Block_release(v19);
}

uint64_t sub_10019D6F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D5FA0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v29[-v6];
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000B46C(a1, v7, &qword_1002D5FA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100003CBC(v7, &qword_1002D5FA0);
    sub_1001A3A64();
    v13 = swift_allocError();
    *v14 = a2;
    *(v14 + 8) = 0;
    v30 = v13;
    swift_errorRetain();
    sub_1000C773C(&qword_1002D5F98);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v16 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    v30 = 0;
    v23 = [v16 moveItemAtURL:v19 toURL:v21 error:&v30];

    if (v23)
    {
      v24 = v30;
      sub_1000C773C(&qword_1002D5F98);
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      v25 = v30;
      v26 = _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_1001A3A64();
      v27 = swift_allocError();
      *v28 = v26;
      *(v28 + 8) = 1;
      v30 = v27;
      sub_1000C773C(&qword_1002D5F98);
      CheckedContinuation.resume(throwing:)();
    }

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_10019DA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 992) = v14;
  *(v8 + 976) = v13;
  *(v8 + 968) = a8;
  *(v8 + 960) = a7;
  *(v8 + 952) = a6;
  *(v8 + 944) = a5;
  *(v8 + 936) = a4;
  *(v8 + 888) = a1;
  v9 = type metadata accessor for URL.DirectoryHint();
  *(v8 + 1000) = v9;
  *(v8 + 1008) = *(v9 - 8);
  *(v8 + 1016) = swift_task_alloc();
  v10 = type metadata accessor for URL();
  *(v8 + 1024) = v10;
  *(v8 + 1032) = *(v10 - 8);
  *(v8 + 1040) = swift_task_alloc();
  *(v8 + 1048) = swift_task_alloc();
  *(v8 + 1056) = swift_task_alloc();
  *(v8 + 1064) = swift_task_alloc();
  *(v8 + 1072) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v8 + 1080) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v8 + 1088) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  *(v8 + 1096) = swift_task_alloc();

  return _swift_task_switch(sub_10019DC54, 0, 0);
}

uint64_t sub_10019DC54()
{
  v28 = v0;
  v1 = [objc_allocWithZone(AVMutableComposition) init];
  v0[138] = v1;
  v2 = [v1 addMutableTrackWithMediaType:AVMediaTypeAudio preferredTrackID:0];
  v0[139] = v2;
  if (v2)
  {
    v3 = v0[119];
    v4 = swift_allocObject();
    v0[140] = v4;
    *(v4 + 16) = v3;
    v5 = v3;
    type metadata accessor for CMTimeRange(0);
    swift_asyncLet_begin();

    return _swift_asyncLet_get_throwing(v0 + 2, v0 + 155, sub_10019E090, v0 + 82);
  }

  else
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v6 = v0[131];
    v7 = v0[129];
    v8 = v0[128];
    v9 = v0[118];
    v10 = type metadata accessor for Logger();
    sub_100018D90(v10, qword_1002E8CB0);
    (*(v7 + 16))(v6, v9, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[131];
    v15 = v0[129];
    v16 = v0[128];
    if (v13)
    {
      v17 = v0[117];
      v18 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v18 = 136315650;
      *(v18 + 4) = sub_10001901C(0xD00000000000005BLL, 0x8000000100235EA0, &v27);
      *(v18 + 12) = 2048;
      *(v18 + 14) = v17;
      *(v18 + 22) = 2080;
      v19 = URL.lastPathComponent.getter();
      v21 = v20;
      (*(v15 + 8))(v14, v16);
      v22 = sub_10001901C(v19, v21, &v27);

      *(v18 + 24) = v22;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s addMutableTrack() failed, layerIndex = %ld, recording = %s", v18, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }

    v23 = v0[111];
    v24 = _s14RecordingLayerVMa();
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10019E090()
{
  *(v1 + 1128) = v0;
  if (v0)
  {
    v2 = sub_10019FADC;
  }

  else
  {
    v2 = sub_10019E134;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10019E134()
{
  v89 = v0;
  v1 = v0 + 1240;
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1240);
  v4 = *(v0 + 1256);
  *(v0 + 1288) = v3;
  *(v0 + 1304) = v4;
  v5 = *(v0 + 1272);
  *(v0 + 1320) = v5;
  epoch = kCMTimeZero.epoch;
  *(v0 + 792) = 0;
  *(v0 + 1336) = v3;
  *(v0 + 1352) = v4;
  *(v0 + 1368) = v5;
  *(v0 + 1432) = kCMTimeZero.value;
  *(v0 + 1440) = *&kCMTimeZero.timescale;
  *(v0 + 1448) = epoch;
  v7 = [v2 insertTimeRange:? ofTrack:? atTime:? error:?];
  v8 = *(v0 + 792);
  if (!v7)
  {
    v40 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 1040);
    v42 = *(v0 + 1032);
    v43 = *(v0 + 1024);
    v44 = *(v0 + 944);
    v45 = type metadata accessor for Logger();
    sub_100018D90(v45, qword_1002E8CB0);
    (*(v42 + 16))(v41, v44, v43);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 1040);
    v50 = *(v0 + 1032);
    v51 = *(v0 + 1024);
    if (v48)
    {
      v52 = *(v0 + 936);
      v53 = swift_slowAlloc();
      v88[0] = swift_slowAlloc();
      *v53 = 136315650;
      *(v53 + 4) = sub_10001901C(0xD00000000000005BLL, 0x8000000100235EA0, v88);
      *(v53 + 12) = 2048;
      *(v53 + 14) = v52;
      *(v53 + 22) = 2080;
      v54 = URL.lastPathComponent.getter();
      v56 = v55;
      (*(v50 + 8))(v49, v51);
      v57 = sub_10001901C(v54, v56, v88);

      *(v53 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v46, v47, "%s insertTimeRange() failed, layerIndex = %ld, recording = %s", v53, 0x20u);
      swift_arrayDestroy();
      v1 = v0 + 1240;
    }

    else
    {

      (*(v50 + 8))(v49, v51);
    }

    v61 = *(v0 + 888);
    v62 = _s14RecordingLayerVMa();
    (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
    v63 = v0 + 16;
    v64 = v0 + 720;
    v65 = v1;
LABEL_19:

    return _swift_asyncLet_finish(v63, v65, sub_10019F924, v64);
  }

  v9 = *(v0 + 960);
  v10 = *(v0 + 952);
  v11 = v8;
  v12 = [v9 rc_trackIsSpatial:v10];
  v13 = *(v0 + 1104);
  if (v12)
  {
    v14 = type metadata accessor for RCSpatialExporter();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_exporter];
    *v16 = 0u;
    *(v16 + 1) = 0u;
    *(v16 + 2) = 0u;
    *&v15[OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_composition] = v13;
    *&v15[OBJC_IVAR____TtC10VoiceMemos17RCSpatialExporter_metadata] = 0;
    *(v0 + 776) = v15;
    *(v0 + 784) = v14;
    v17 = v13;
    v77 = objc_msgSendSuper2((v0 + 776), "init");
    *(v0 + 1160) = v77;
    v83 = *(v0 + 1064);
    v18 = *(v0 + 1032);
    v19 = *(v0 + 1008);
    v80 = *(v0 + 1000);
    v81 = *(v0 + 1016);
    v86 = *(v0 + 1024);
    v20 = *(v0 + 976);
    v21 = *(v0 + 968);
    v78 = *(v0 + 960);
    v79 = *(v0 + 952);
    v22 = *(v0 + 936);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v23._object = 0x8000000100235F00;
    v23._countAndFlagsBits = 0xD000000000000013;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
    v24._countAndFlagsBits = v21;
    v24._object = v20;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v24);
    v25._countAndFlagsBits = 32;
    v25._object = 0xE100000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
    *(v0 + 840) = v22;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    v27 = String.init(localized:table:bundle:locale:comment:)();
    v29 = v28;
    *(v0 + 1168) = v27;
    *(v0 + 1176) = v28;
    v30 = [v78 rc_trackIsSpatial:v79];
    *(v0 + 1456) = v30;
    v31 = RCAudioFileExtensionM4A;
    *(v0 + 1184) = RCAudioFileExtensionM4A;
    v32 = RCAudioFileExtensionQTA;
    *(v0 + 1192) = RCAudioFileExtensionQTA;
    if (v30)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    *(v0 + 760) = v27;
    *(v0 + 768) = v29;
    (*(v19 + 104))(v81, enum case for URL.DirectoryHint.inferFromPath(_:), v80);
    sub_100028710();
    v34 = v33;
    URL.appending<A>(path:directoryHint:)();
    (*(v19 + 8))(v81, v80);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.appendingPathExtension(_:)();

    v35 = *(v18 + 8);
    *(v0 + 1200) = v35;
    *(v0 + 1208) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v35(v83, v86);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 1216) = Strong;
    if (Strong)
    {
      v37 = swift_task_alloc();
      *(v0 + 1224) = v37;
      *v37 = v0;
      v37[1] = sub_10019F23C;
      v38 = *(v0 + 1072);

      return sub_1001A35A8(v77, v38);
    }

    v84 = *(v0 + 1200);
    v66 = (v0 + 1192);
    v87 = *(v0 + 1176);
    v85 = *(v0 + 1168);
    v67 = *(v0 + 1072);
    v68 = *(v0 + 1032);
    v69 = *(v0 + 1024);
    v82 = *(v0 + 936);
    v70 = *(v0 + 888);
    if (!*(v0 + 1456))
    {
      v66 = (v0 + 1184);
    }

    v71 = *v66;
    v72 = _s14RecordingLayerVMa();
    (*(v68 + 16))(&v70[v72[5]], v67, v69);
    v73 = *(v0 + 1304);
    *(v0 + 1384) = *(v0 + 1288);
    *(v0 + 1400) = v73;
    *(v0 + 1416) = *(v0 + 1320);
    RCTimeRangeFromCMTimeRange();
    RCTimeRangeDelta();
    v75 = v74;
    swift_unknownObjectRelease();

    v84(v67, v69);
    *v70 = v82;
    *&v70[v72[6]] = v75;
    v76 = &v70[v72[7]];
    *v76 = v85;
    *(v76 + 1) = v87;
    (*(*(v72 - 1) + 56))(v70, 0, 1, v72);
    v65 = v0 + 1240;
    v63 = v0 + 16;
    v64 = v0 + 896;
    goto LABEL_19;
  }

  objc_allocWithZone(type metadata accessor for RCExportSessionComposedAssetWriter());
  v58 = v13;
  v59 = swift_task_alloc();
  *(v0 + 1136) = v59;
  *v59 = v0;
  v59[1] = sub_10019EA2C;
  v60 = *(v0 + 1104);

  return sub_100191C5C(v60);
}

uint64_t sub_10019EA2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1144) = v1;

  if (v1)
  {

    return _swift_asyncLet_finish(v4 + 16, v4 + 1240, sub_10019F07C, v4 + 800);
  }

  else
  {
    *(v4 + 1152) = a1;

    return _swift_task_switch(sub_10019EBC4, 0, 0);
  }
}

uint64_t sub_10019EBC4()
{
  v35 = *(v0 + 1152);
  *(v0 + 1160) = v35;
  v40 = *(v0 + 1064);
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1016);
  v3 = *(v0 + 1008);
  v43 = *(v0 + 1024);
  v38 = *(v0 + 1000);
  v4 = *(v0 + 976);
  v5 = *(v0 + 968);
  v36 = *(v0 + 960);
  v37 = *(v0 + 952);
  v6 = *(v0 + 936);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._object = 0x8000000100235F00;
  v7._countAndFlagsBits = 0xD000000000000013;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v7);
  v8._countAndFlagsBits = v5;
  v8._object = v4;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v8);
  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  *(v0 + 840) = v6;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  *(v0 + 1168) = v11;
  *(v0 + 1176) = v12;
  v14 = [v36 rc_trackIsSpatial:v37];
  *(v0 + 1456) = v14;
  v15 = RCAudioFileExtensionM4A;
  *(v0 + 1184) = RCAudioFileExtensionM4A;
  v16 = RCAudioFileExtensionQTA;
  *(v0 + 1192) = RCAudioFileExtensionQTA;
  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  *(v0 + 760) = v11;
  *(v0 + 768) = v13;
  (*(v3 + 104))(v2, enum case for URL.DirectoryHint.inferFromPath(_:), v38);
  sub_100028710();
  v18 = v17;
  URL.appending<A>(path:directoryHint:)();
  (*(v3 + 8))(v2, v38);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathExtension(_:)();

  v19 = *(v1 + 8);
  *(v0 + 1200) = v19;
  *(v0 + 1208) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v40, v43);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 1216) = Strong;
  if (Strong)
  {
    v21 = swift_task_alloc();
    *(v0 + 1224) = v21;
    *v21 = v0;
    v21[1] = sub_10019F23C;
    v22 = *(v0 + 1072);

    return sub_1001A35A8(v35, v22);
  }

  else
  {
    v41 = *(v0 + 1200);
    v24 = (v0 + 1192);
    v44 = *(v0 + 1176);
    v42 = *(v0 + 1168);
    v25 = *(v0 + 1072);
    v26 = *(v0 + 1032);
    v27 = *(v0 + 1024);
    v39 = *(v0 + 936);
    v28 = *(v0 + 888);
    if (!*(v0 + 1456))
    {
      v24 = (v0 + 1184);
    }

    v29 = *v24;
    v30 = _s14RecordingLayerVMa();
    (*(v26 + 16))(&v28[v30[5]], v25, v27);
    v31 = *(v0 + 1304);
    *(v0 + 1384) = *(v0 + 1288);
    *(v0 + 1400) = v31;
    *(v0 + 1416) = *(v0 + 1320);
    RCTimeRangeFromCMTimeRange();
    RCTimeRangeDelta();
    v33 = v32;
    swift_unknownObjectRelease();

    v41(v25, v27);
    *v28 = v39;
    *&v28[v30[6]] = v33;
    v34 = &v28[v30[7]];
    *v34 = v42;
    *(v34 + 1) = v44;
    (*(*(v30 - 1) + 56))(v28, 0, 1, v30);

    return _swift_asyncLet_finish(v0 + 16, v0 + 1240, sub_10019F924, v0 + 896);
  }
}

uint64_t sub_10019F07C()
{

  return _swift_task_switch(sub_10019F108, 0, 0);
}

uint64_t sub_10019F108()
{
  v1 = *(v0 + 1112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019F23C()
{
  v2 = *v1;
  *(v2 + 1232) = v0;

  if (v0)
  {

    v3 = sub_10019F584;
  }

  else
  {
    v3 = sub_10019F3B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10019F3B4()
{
  v14 = *(v0 + 1200);
  v1 = (v0 + 1192);
  v16 = *(v0 + 1176);
  v15 = *(v0 + 1168);
  v2 = *(v0 + 1072);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  v13 = *(v0 + 936);
  v5 = *(v0 + 888);
  if (!*(v0 + 1456))
  {
    v1 = (v0 + 1184);
  }

  v6 = *v1;
  v7 = _s14RecordingLayerVMa();
  (*(v3 + 16))(&v5[v7[5]], v2, v4);
  v8 = *(v0 + 1304);
  *(v0 + 1384) = *(v0 + 1288);
  *(v0 + 1400) = v8;
  *(v0 + 1416) = *(v0 + 1320);
  RCTimeRangeFromCMTimeRange();
  RCTimeRangeDelta();
  v10 = v9;
  swift_unknownObjectRelease();

  v14(v2, v4);
  *v5 = v13;
  *&v5[v7[6]] = v10;
  v11 = &v5[v7[7]];
  *v11 = v15;
  *(v11 + 1) = v16;
  (*(*(v7 - 1) + 56))(v5, 0, 1, v7);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1240, sub_10019F924, v0 + 896);
}

uint64_t sub_10019F584()
{
  v31 = v0;
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1072);
  v2 = *(v0 + 1056);
  v3 = *(v0 + 1032);
  v4 = *(v0 + 1024);
  v5 = type metadata accessor for Logger();
  sub_100018D90(v5, qword_1002E8CB0);
  (*(v3 + 16))(v2, v1, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  log = v6;
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1200);
  v10 = *(v0 + 1192);
  v11 = *(v0 + 1184);
  v12 = *(v0 + 1456);
  v29 = *(v0 + 1072);
  v13 = *(v0 + 1056);
  v14 = *(v0 + 1024);
  if (v8)
  {
    if (*(v0 + 1456))
    {
      v15 = *(v0 + 1192);
    }

    else
    {
      v15 = *(v0 + 1184);
    }

    v27 = v15;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_10001901C(0xD00000000000005BLL, 0x8000000100235EA0, &v30);
    *(v16 + 12) = 2112;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v18;
    *v17 = v18;
    *(v16 + 22) = 2080;
    v19 = URL.lastPathComponent.getter();
    v21 = v20;
    v9(v13, v14);
    v22 = sub_10001901C(v19, v21, &v30);

    *(v16 + 24) = v22;
    _os_log_impl(&_mh_execute_header, log, v7, "%s export failed, exportError = %@, layer = %s", v16, 0x20u);
    sub_100003CBC(v17, &unk_1002D3690);

    swift_arrayDestroy();

    swift_unknownObjectRelease();

    v9(v29, v14);
  }

  else
  {
    swift_unknownObjectRelease();

    if (v12)
    {
      v23 = v10;
    }

    else
    {
      v23 = v11;
    }

    v9(v13, v14);
    v9(v29, v14);
  }

  v24 = *(v0 + 888);
  v25 = _s14RecordingLayerVMa();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);

  return _swift_asyncLet_finish(v0 + 16, v0 + 1240, sub_10019FDB8, v0 + 848);
}

uint64_t sub_10019F924()
{

  return _swift_task_switch(sub_10019F9B0, 0, 0);
}

uint64_t sub_10019F9B0()
{
  v1 = *(v0 + 1112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10019FADC()
{
  v22 = v0;
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[128];
  v4 = v0[118];
  v5 = type metadata accessor for Logger();
  sub_100018D90(v5, qword_1002E8CB0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[130];
  v10 = v0[129];
  v11 = v0[128];
  if (v8)
  {
    v12 = v0[117];
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_10001901C(0xD00000000000005BLL, 0x8000000100235EA0, &v21);
    *(v13 + 12) = 2048;
    *(v13 + 14) = v12;
    *(v13 + 22) = 2080;
    v14 = URL.lastPathComponent.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_10001901C(v14, v16, &v21);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s insertTimeRange() failed, layerIndex = %ld, recording = %s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[111];
  v19 = _s14RecordingLayerVMa();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);

  return _swift_asyncLet_finish(v0 + 2, v0 + 155, sub_10019F924, v0 + 90);
}

uint64_t sub_10019FDB8()
{

  return _swift_task_switch(sub_1001A3FE4, 0, 0);
}

uint64_t sub_10019FE44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10019FE64, 0, 0);
}

uint64_t sub_10019FE64()
{
  sub_1000C773C(&qword_1002D5FB0);
  v1 = static AVPartialAsyncProperty<A>.timeRange.getter();
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10019FF2C;
  v3 = v0[2];

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v3, v1, 0, 0);
}

uint64_t sub_10019FF2C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001A0068, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1001A0068()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A00CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v8 - 8, v9);
  v11 = v23 - v10;
  sub_10000B46C(a3, v23 - v10, &unk_1002D1D90);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100003CBC(v11, &unk_1002D1D90);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      sub_1000C773C(&unk_1002D5F88);
      v20 = (v18 | v16);
      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000C773C(&unk_1002D5F88);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void *sub_1001A0348(unint64_t a1, uint64_t a2, uint64_t (*a3)(id, uint64_t))
{
  v15 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  sub_1001AE71C(0, 0, 0);
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_3:
  v6 = 0;
  if (v15)
  {
    while (v6 != _CocoaArrayWrapper.endIndex.getter())
    {
LABEL_7:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v5 + 16))
        {
          goto LABEL_19;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v5 = a1 & 0xFFFFFFFFFFFFFF8;
        v13 = _CocoaArrayWrapper.endIndex.getter();
        result = sub_1001AE71C(0, 0, 0);
        if (v13 < 0)
        {
          __break(1u);
          return result;
        }

        goto LABEL_3;
      }

      if (__OFADD__(a2, 1))
      {
        goto LABEL_20;
      }

      v9 = a3(v7, a2);

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_1001AE71C((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      _swiftEmptyArrayStorage[v11 + 4] = v9;
      ++a2;
      ++v6;
      if (!v15)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    if (v6 != *(v5 + 16))
    {
      goto LABEL_7;
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1001A0510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_1001A05AC, v5, v4);
}

uint64_t sub_1001A05AC()
{
  if ([*(v0 + 40) isRecording])
  {

    sub_1001A3B34();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
    v2 = *(v0 + 8);
LABEL_11:

    return v2();
  }

  v3 = *(v0 + 40);
  v4 = String._bridgeToObjectiveC()();
  [v3 playRecordingWithUUID:v4];

  v5 = [v3 audioPlayer];
  *(v0 + 72) = v5;
  if (!v5)
  {
LABEL_10:

    v2 = *(v0 + 8);
    goto LABEL_11;
  }

  *(v0 + 16) = &OBJC_PROTOCOL___VMAudioPlayer;
  if (!swift_dynamicCastObjCProtocolConditional() || (swift_getObjectType(), sub_1000067AC(0, &qword_1002D42F0), !swift_dynamicCastMetatype()))
  {
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_1001A079C;

  return sub_100198950(ObjectType);
}

uint64_t sub_1001A079C()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1001A0948;
  }

  else
  {
    v5 = sub_1001A08D8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A08D8()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A0948()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A09B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for URL();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001A0B40, v8, v7);
}

uint64_t sub_1001A0B40()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);

  v5 = URL.startAccessingSecurityScopedResource()();
  v6 = [objc_opt_self() sharedApplicationModel];
  URL.path.getter();
  v7 = String._bridgeToObjectiveC()();

  Date.init()();
  v8.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v1, v2);
  if (!v4)
  {
    v24 = v6;
    v9 = v5;
    v10 = *(v0 + 104);
    v11 = *(v0 + 112);
    v12 = *(v0 + 96);
    URL.deletingPathExtension()();
    URL.lastPathComponent.getter();
    (*(v10 + 8))(v11, v12);
    v5 = v9;
    v6 = v24;
  }

  v13 = String._bridgeToObjectiveC()();

  *(v0 + 56) = 0;
  v14 = [v6 insertRecordingWithAudioFile:v7 duration:v8.super.isa date:v13 customTitleBase:0 uniqueID:v0 + 56 error:-1.0];

  v15 = *(v0 + 56);
  if (!v14)
  {
    v22 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (!v5)
    {
LABEL_10:

      v21 = *(v0 + 8);
      goto LABEL_11;
    }

LABEL_9:
    URL.stopAccessingSecurityScopedResource()();
    goto LABEL_10;
  }

  v16 = v15;
  sub_100147558((v0 + 16));
  v17 = *(v0 + 24);
  if (!v17)
  {
    sub_10012EC24();
    swift_allocError();
    swift_willThrow();

    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v18 = *(v0 + 16);
  v25 = *(v0 + 32);
  v19 = *(v0 + 48);

  if (v5)
  {
    URL.stopAccessingSecurityScopedResource()();
  }

  v20 = *(v0 + 64);

  *v20 = v18;
  *(v20 + 8) = v17;
  *(v20 + 16) = v25;
  *(v20 + 32) = v19;
  v21 = *(v0 + 8);
LABEL_11:

  return v21();
}

uint64_t sub_1001A0E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v7 = type metadata accessor for Date();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v6[19] = v8;
  v6[20] = *(v8 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[26] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[27] = v9;
  v6[28] = v10;

  return _swift_task_switch(sub_1001A0FF4, v9, v10);
}

uint64_t sub_1001A0FF4()
{
  if ([*(v0 + 120) isRecording])
  {

    sub_1001A3C50();
    swift_allocError();
    *v1 = 0;
    swift_willThrow();
LABEL_15:

    v31 = *(v0 + 8);

    return v31();
  }

  v2 = [objc_opt_self() sharedApplicationModel];
  *(v0 + 232) = v2;
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 recordingWithUniqueID:v3];
  *(v0 + 240) = v4;

  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = [v4 url];
  if (!v5)
  {

LABEL_14:
    sub_1001A3D58();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();

    goto LABEL_15;
  }

  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  v10 = v5;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = *(v9 + 32);
  v11(v6, v7, v8);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v2 recordingWithUniqueID:v12];
  *(v0 + 248) = v13;

  if (!v13)
  {
    (*(*(v0 + 160) + 8))(*(v0 + 200), *(v0 + 152));

LABEL_13:

    goto LABEL_14;
  }

  v14 = [v13 url];
  if (!v14)
  {
    (*(*(v0 + 160) + 8))(*(v0 + 200), *(v0 + 152));

    goto LABEL_14;
  }

  v15 = *(v0 + 200);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = *(v0 + 152);
  v19 = *(v0 + 160);
  v20 = v14;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v11(v16, v17, v18);
  type metadata accessor for MultiTrackCompositor();
  *(v0 + 256) = swift_initStackObject();
  sub_1000C773C(&unk_1002D60A0);
  v21 = *(v19 + 72);
  v22 = *(v19 + 80);
  *(v0 + 288) = v22;
  v23 = (v22 + 32) & ~v22;
  v24 = swift_allocObject();
  *(v0 + 264) = v24;
  *(v24 + 16) = xmmword_100241790;
  v25 = v24 + v23;
  v26 = *(v19 + 16);
  v26(v25, v15, v18);
  v26(v25 + v21, v16, v18);
  v27 = swift_task_alloc();
  *(v0 + 272) = v27;
  *v27 = v0;
  v27[1] = sub_1001A1430;
  v28 = *(v0 + 168);

  return sub_10019AA28(v28, v24);
}

uint64_t sub_1001A1430()
{
  v2 = *v1;
  v2[35] = v0;

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v3 = v2[28];
  v4 = v2[27];
  if (v0)
  {
    v5 = sub_1001A1AC8;
  }

  else
  {
    v5 = sub_1001A1604;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001A1604()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);

  URL.path.getter();
  v5 = String._bridgeToObjectiveC()();

  Date.init()();
  v6.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v2, v4);
  v7 = [v1 title];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v0 + 248);

  v10._countAndFlagsBits = 2108192;
  v10._object = 0xE300000000000000;
  String.append(_:)(v10);

  v11 = [v9 title];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0xE600000000000000;
    v13 = 0x646E6F636553;
  }

  v16 = *(v0 + 232);

  v17._countAndFlagsBits = v13;
  v17._object = v15;
  String.append(_:)(v17);

  v18 = String._bridgeToObjectiveC()();

  *(v0 + 72) = 0;
  v19 = [v16 insertRecordingWithAudioFile:v5 duration:v6.super.isa date:v18 customTitleBase:0 uniqueID:v0 + 72 error:-1.0];

  v20 = *(v0 + 72);
  if (v19)
  {
    v21 = *(v0 + 160);
    v22 = v20;
    sub_100147558((v0 + 16));
    v23 = *(v0 + 24);
    v24 = (v21 + 8);
    v25 = *(v0 + 240);
    v26 = *(v0 + 248);
    v51 = *(v0 + 232);
    v52 = *(v0 + 200);
    if (v23)
    {
      v27 = *(v0 + 184);
      v28 = *(v0 + 168);
      v29 = *(v0 + 152);
      v30 = *(v0 + 80);
      v50 = *(v0 + 48);
      v48 = *(v0 + 16);
      v49 = *(v0 + 32);

      v31 = *v24;
      (*v24)(v28, v29);
      v31(v27, v29);
      v31(v52, v29);

      *v30 = v48;
      *(v30 + 8) = v23;
      *(v30 + 16) = v49;
      *(v30 + 32) = v50;
      v32 = *(v0 + 8);
      goto LABEL_12;
    }

    v42 = *(v0 + 184);
    v43 = *(v0 + 168);
    v44 = *(v0 + 152);
    sub_1001A3D58();
    swift_allocError();
    *v45 = 1;
    swift_willThrow();

    v46 = *v24;
    (*v24)(v43, v44);
    v46(v42, v44);
    v46(v52, v44);
  }

  else
  {
    v34 = *(v0 + 240);
    v33 = *(v0 + 248);
    v35 = *(v0 + 232);
    v53 = *(v0 + 200);
    v36 = *(v0 + 184);
    v37 = *(v0 + 160);
    v38 = *(v0 + 168);
    v39 = *(v0 + 152);
    v40 = v20;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v41 = *(v37 + 8);
    v41(v38, v39);
    v41(v36, v39);
    v41(v53, v39);
  }

  v32 = *(v0 + 8);
LABEL_12:

  return v32();
}

uint64_t sub_1001A1AC8()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v4 = v0[25];
  v5 = v0[23];
  v6 = v0[19];
  v7 = v0[20];

  v8 = *(v7 + 8);
  v8(v5, v6);
  v8(v4, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001A1BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = type metadata accessor for Date();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = sub_1000C773C(&unk_1002D5F88);
  v3[18] = swift_task_alloc();
  v5 = _s14RecordingLayerVMa();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[23] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[24] = v6;
  v3[25] = v7;

  return _swift_task_switch(sub_1001A1DC4, v6, v7);
}

uint64_t sub_1001A1DC4()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  v0[26] = v2;
  if (v2)
  {
    v0[27] = _swiftEmptyArrayStorage;
    v3 = *(v1 + 32);
    v0[28] = v3;
    v0[29] = 1;

    v4 = swift_task_alloc();
    v0[30] = v4;
    v5 = sub_1000C773C(&qword_1002D5540);
    *v4 = v0;
    v4[1] = sub_1001A1F80;
    v7 = v0[17];
    v6 = v0[18];

    return Task.value.getter(v6, v3, v7, v5, &protocol self-conformance witness table for Error);
  }

  else
  {

    v8 = v0[1];

    return v8(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1001A1F80()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {

    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_1001A2788;
  }

  else
  {
    v3 = *(v2 + 192);
    v4 = *(v2 + 200);
    v5 = sub_1001A20D0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001A20D0()
{
  v46 = v0;
  v3 = *(v0 + 152);
  v4 = *(v0 + 144);
  if ((*(*(v0 + 160) + 48))(v4, 1, v3) == 1)
  {

    sub_100003CBC(v4, &unk_1002D5F88);
  }

  else
  {
    v7 = *(v0 + 176);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    sub_1001A32B8(v4, v7);
    URL.path.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = *(v7 + v3[6]);
    Date.init()();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v8, v10);
    v15 = String._bridgeToObjectiveC()();
    *(v0 + 80) = 0;
    v3 = [v11 insertRecordingWithAudioFile:v12 duration:isa date:v15 customTitleBase:0 uniqueID:v0 + 80 error:v13];

    v16 = *(v0 + 80);
    if (!v3)
    {
      v31 = *(v0 + 176);
      v32 = v16;

      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_1001A3DAC(v31, _s14RecordingLayerVMa);

      v33 = *(v0 + 8);

      return v33();
    }

    v17 = *(v0 + 96);
    v18 = v16;
    if (v17)
    {
      v19 = *(v0 + 104);
      v20 = v17;
      [v20 addRecording:v3];
      [v19 saveIfNecessary];
    }

    sub_100147558((v0 + 16));
    v1 = *(v0 + 24);
    if (v1)
    {
      v2 = *(v0 + 16);
      *(v0 + 56) = *(v0 + 32);
      *(v0 + 72) = *(v0 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v0 + 216);
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 168);
    v34 = *(v0 + 176);
    v36 = type metadata accessor for Logger();
    sub_100018D90(v36, qword_1002E8CB0);
    sub_1001A331C(v34, v35);
    v4 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    v38 = os_log_type_enabled(v4, v37);
    v2 = *(v0 + 168);
    if (v38)
    {
      v1 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v45 = v39;
      *v1 = 136315394;
      *(v1 + 4) = sub_10001901C(0xD00000000000002ALL, 0x8000000100235E70, &v45);
      *(v1 + 12) = 2048;
      v40 = *v2;
      sub_1001A3DAC(v2, _s14RecordingLayerVMa);
      *(v1 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v4, v37, "%s appEntity() failed, layerIndex = %ld", v1, 0x16u);
      sub_100014B64(v39);
    }

    else
    {
      sub_1001A3DAC(*(v0 + 168), _s14RecordingLayerVMa);
    }

    sub_1001A3DAC(*(v0 + 176), _s14RecordingLayerVMa);
  }

  v5 = *(v0 + 232);
  v6 = *(v0 + 208);
  if (v5 != v6)
  {
    while (1)
    {
      if (v5 >= v6)
      {
        __break(1u);
      }

      else
      {
        v4 = *(*(v0 + 88) + 8 * v5 + 32);
        *(v0 + 224) = v4;
        *(v0 + 232) = v5 + 1;
        if (!__OFADD__(v5, 1))
        {

          v41 = swift_task_alloc();
          *(v0 + 240) = v41;
          v42 = sub_1000C773C(&qword_1002D5540);
          *v41 = v0;
          v41[1] = sub_1001A1F80;
          v44 = *(v0 + 136);
          v43 = *(v0 + 144);

          return Task.value.getter(v43, v4, v44, v42, &protocol self-conformance witness table for Error);
        }
      }

      __break(1u);
LABEL_33:
      v4 = sub_1000F2648(0, v4[2].isa + 1, 1, v4);
LABEL_10:
      v23 = v4[2].isa;
      v22 = v4[3].isa;
      if (v23 >= v22 >> 1)
      {
        v4 = sub_1000F2648((v22 > 1), v23 + 1, 1, v4);
      }

      v24 = *(v0 + 232);
      v25 = *(v0 + 208);
      v26 = *(v0 + 176);

      v4[2].isa = (v23 + 1);
      v27 = &v4[5 * v23];
      v27[4].isa = v2;
      v27[5].isa = v1;
      v28 = *(v0 + 56);
      v27[8].isa = *(v0 + 72);
      *&v27[6].isa = v28;
      sub_1001A3DAC(v26, _s14RecordingLayerVMa);
      if (v24 == v25)
      {
        goto LABEL_13;
      }

      v5 = *(v0 + 232);
      *(v0 + 216) = v4;
      v6 = *(v0 + 208);
    }
  }

  v4 = *(v0 + 216);
LABEL_13:

  v29 = *(v0 + 8);

  return v29(v4);
}

uint64_t sub_1001A2788()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A285C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for URL();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[12] = v5;
  v3[13] = v6;

  return _swift_task_switch(sub_1001A2994, v5, v6);
}

uint64_t sub_1001A2994()
{
  v1 = [objc_opt_self() sharedApplicationModel];
  v0[14] = v1;
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 compositionLoadedForSavedRecordingUUID:v2];
  v0[15] = v3;

  if (!v3)
  {

LABEL_11:
    sub_1001A3208();
    swift_allocError();
    *v35 = 0;
    swift_willThrow();

    goto LABEL_12;
  }

  v4 = [v3 title];
  if (!v4)
  {

    goto LABEL_11;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v0[2] = 0;
  v9 = [v3 playableAsset:v0 + 2];
  v0[16] = v9;
  v10 = v0[2];
  if (!v9)
  {
    v34 = v10;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  v13 = [v11 rc_audioTracksPreferringSpatial];
  sub_1000067AC(0, &qword_1002D0440);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [objc_opt_self() defaultManager];
  v0[17] = v14;
  v15 = [v3 composedAVURL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v0[3] = 0;
  v19 = [v14 URLForDirectory:99 inDomain:1 appropriateForURL:v17 create:1 error:v0 + 3];

  v20 = v0[3];
  if (v19)
  {
    v21 = v6;
    v23 = v0[9];
    v22 = v0[10];
    v24 = v8;
    v25 = v0[6];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v20;

    v27 = swift_task_alloc();
    v27[2] = v25;
    v27[3] = v22;
    v27[4] = v11;
    v27[5] = v21;
    v27[6] = v24;
    v27[7] = v23;
    v28 = sub_1001A0348(v41, 1, sub_1001A325C);
    v0[18] = v28;

    v29 = String._bridgeToObjectiveC()();
    v30 = [v1 recordingWithUniqueID:v29];

    v31 = [v30 userFolder];
    v0[19] = v31;

    v32 = swift_task_alloc();
    v0[20] = v32;
    *v32 = v0;
    v32[1] = sub_1001A2E6C;

    return sub_1001A1BF4(v28, v31, v1);
  }

  v37 = v0[8];
  v39 = v0[7];
  v40 = v0[10];
  v38 = v20;

  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v37 + 8))(v40, v39);
LABEL_12:

  v36 = v0[1];

  return v36();
}

uint64_t sub_1001A2E6C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1001A30E4;
  }

  else
  {
    v4[22] = a1;
    v5 = v4[12];
    v6 = v4[13];
    v7 = sub_1001A2FBC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1001A2FBC()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  v9 = *(v6 + 8);
  v9(v7, v8);
  v9(v5, v8);

  v10 = *(v0 + 8);
  v11 = *(v0 + 176);

  return v10(v11);
}

uint64_t sub_1001A30E4()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 112);
  v11 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 56);

  v8 = *(v5 + 8);
  v8(v6, v7);
  v8(v11, v7);

  v9 = *(v0 + 8);

  return v9();
}

unint64_t sub_1001A3208()
{
  result = qword_1002D5F78;
  if (!qword_1002D5F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5F78);
  }

  return result;
}

uint64_t _s14RecordingLayerVMa()
{
  result = qword_1002D6118;
  if (!qword_1002D6118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A32B8(uint64_t a1, uint64_t a2)
{
  v4 = _s14RecordingLayerVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A331C(uint64_t a1, uint64_t a2)
{
  v4 = _s14RecordingLayerVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A3380(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = v1[3];
  v14 = v1[2];
  v7 = v1[4];
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001FF1C;

  return sub_10019DA30(a1, v14, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_1001A3508(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001FF1C;

  return sub_10019FE44(a1, v4);
}

uint64_t sub_1001A35A8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_1001A3644, v4, v3);
}

uint64_t sub_1001A3644()
{
  v5 = *(v0 + 16);
  v1 = static MainActor.shared.getter();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *(v2 + 16) = v5;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_1001A3754;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v1, &protocol witness table for MainActor, 0xD000000000000023, 0x8000000100235F20, sub_1001A3954, v2, &type metadata for () + 8);
}

uint64_t sub_1001A3754()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1001A38DC;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1001A3878;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001A3878()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A38DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A395C(uint64_t a1, uint64_t a2)
{
  sub_1000C773C(&qword_1002D5F98);
  type metadata accessor for URL();

  return sub_10019D6F4(a1, a2);
}

uint64_t sub_1001A3A4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001A3A64()
{
  result = qword_1002D5FA8;
  if (!qword_1002D5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5FA8);
  }

  return result;
}

uint64_t sub_1001A3AD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1001A3B34()
{
  result = qword_1002D5FC0;
  if (!qword_1002D5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5FC0);
  }

  return result;
}

unint64_t sub_1001A3B88()
{
  result = qword_1002D5FE8;
  if (!qword_1002D5FE8)
  {
    sub_1000067AC(255, &qword_1002D5FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5FE8);
  }

  return result;
}

uint64_t sub_1001A3C08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001A3C50()
{
  result = qword_1002D6080;
  if (!qword_1002D6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6080);
  }

  return result;
}

unint64_t sub_1001A3CC4()
{
  result = qword_1002D6090;
  if (!qword_1002D6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6090);
  }

  return result;
}

_BYTE *sub_1001A3D24(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    return (*(v1 + 16))();
  }

  return result;
}

unint64_t sub_1001A3D58()
{
  result = qword_1002D6098;
  if (!qword_1002D6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6098);
  }

  return result;
}

uint64_t sub_1001A3DAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001A3E58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001A3EA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001A3F28()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001A3FE4()
{

  return sub_10019F9B0();
}

uint64_t sub_1001A4064(_BYTE *a1)
{
  if (*a1 == 1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    if (*(result + 16) != UIBackgroundTaskInvalid)
    {
    }

    v2 = result;
    v3 = [objc_opt_self() sharedApplication];
    v4 = [v3 beginBackgroundTaskWithExpirationHandler:0];
    goto LABEL_8;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = UIBackgroundTaskInvalid;
  if (*(result + 16) != UIBackgroundTaskInvalid)
  {
    v2 = result;
    v3 = [objc_opt_self() sharedApplication];
    [v3 endBackgroundTask:*(v2 + 16)];
LABEL_8:

    *(v2 + 16) = v4;
  }
}

uint64_t sub_1001A4198()
{

  return swift_deallocClassInstance();
}

id sub_1001A43C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatterViewControllerCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001A44D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Platform();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001A452C(uint64_t a1, float a2)
{
  sub_10000B46C((v2 + 1), &v21, &qword_1002D4E70);
  if (v22)
  {
    sub_100015FD0(&v21, v23);
    v5 = *v2;
    v6 = v24;
    v7 = v25;
    sub_10000AACC(v23, v24);
    v8 = (*(v7 + 8))(a1, v6, v7, a2);
    [v5 setAudioMix:v8];

    if (RCIsInternalInstall())
    {
      if (qword_1002CDD88 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100018D90(v9, qword_1002E8CB0);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *&v21 = swift_slowAlloc();
        *v12 = 136315650;
        *(v12 + 4) = sub_10001901C(0xD000000000000031, 0x8000000100236170, &v21);
        *(v12 + 12) = 2080;
        v13 = Array.description.getter();
        v15 = sub_10001901C(v13, v14, &v21);

        *(v12 + 14) = v15;
        *(v12 + 22) = 2048;
        *(v12 + 24) = a2;
        _os_log_impl(&_mh_execute_header, v10, v11, "%s - trackVolumes = %s, speechIsolatorValue = %f ", v12, 0x20u);
        swift_arrayDestroy();
      }
    }

    sub_100014B64(v23);
  }

  else
  {
    sub_100003CBC(&v21, &qword_1002D4E70);
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100018D90(v16, qword_1002E8CB0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10001901C(0xD000000000000031, 0x8000000100236170, v23);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s - No audio mix provider", v19, 0xCu);
      sub_100014B64(v20);
    }
  }
}

uint64_t sub_1001A48A0()
{
  v1 = *(v0 + 16);
  [v1 pause];
  *(v0 + 120) = 0;

  swift_beginAccess();
  sub_10000B46C(v0 + 24, v6, &unk_1002D1050);
  if (!*&v6[0])
  {
    return sub_100003CBC(v6, &unk_1002D1050);
  }

  v7[0] = v6[0];
  v7[1] = v6[1];
  v7[2] = v6[2];
  v2 = *(v0 + 96);

  sub_1001A452C(v3, v2);

  v4 = *&v7[0];
  [v1 replaceCurrentItemWithPlayerItem:*&v7[0]];
  sub_1001A5638(v4);
  return sub_1001199B4(v7);
}

double sub_1001A49B0()
{
  swift_beginAccess();
  sub_10000B46C(v0 + 24, v4, &unk_1002D1050);
  if (v4[0])
  {
    sub_100119958(v4, v3);
    sub_100003CBC(v4, &unk_1002D1050);
    v1 = v3[0];
    sub_1001199B4(v3);
    [v1 currentTime];

    CMTime.seconds.getter();
  }

  else
  {
    sub_100003CBC(v4, &unk_1002D1050);
    return 0.0;
  }

  return result;
}

uint64_t sub_1001A4A9C(uint64_t a1)
{
  *(v1 + 88) = a1;

  swift_beginAccess();
  sub_10000B46C(v1 + 24, v6, &unk_1002D1050);
  if (!v6[0])
  {
    return sub_100003CBC(v6, &unk_1002D1050);
  }

  sub_100119958(v6, v5);
  sub_100003CBC(v6, &unk_1002D1050);
  v2 = *(v1 + 96);

  sub_1001A452C(v3, v2);

  return sub_1001199B4(v5);
}

uint64_t sub_1001A4B7C(double a1)
{
  v2 = *(v1 + 16);
  LODWORD(a1) = *(v1 + 84);
  [v2 playImmediatelyAtRate:a1];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    [v2 rate];
    [v4 audioPlayerIsPlayingChanged:v5 != 0.0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001A4C14()
{
  v1 = *(v0 + 16);
  [v1 pause];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    [v1 rate];
    [v3 audioPlayerIsPlayingChanged:v4 != 0.0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001A4CA8(Swift::Double a1)
{
  swift_beginAccess();
  sub_10000B46C(v1 + 24, v5, &unk_1002D1050);
  if (v5[0])
  {
    sub_100119958(v5, v4);
    sub_100003CBC(v5, &unk_1002D1050);
    v3 = v4[0];
    sub_1001199B4(v4);
    sub_1001A4D70(a1);
  }

  else
  {
    sub_100003CBC(v5, &unk_1002D1050);
  }
}

id sub_1001A4D70(Swift::Double a1)
{
  [v1 duration];
  if (!CMTIME_IS_INDEFINITE(_:)(v10))
  {
    [v1 duration];
    CMTime.seconds.getter();
    if (v8 <= a1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = CMTime.init(seconds:preferredTimescale:)(a1, 600);
    v6 = HIDWORD(*&v7.timescale);
    goto LABEL_6;
  }

  v3 = [v1 asset];
  [v3 rc_durationInSeconds];
  v5 = v4;

  if (v5 > a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7.value = kCMTimeInvalid.value;
  v7.timescale = kCMTimeInvalid.timescale;
  LODWORD(v6) = kCMTimeInvalid.flags;
  v7.epoch = kCMTimeInvalid.epoch;
LABEL_6:
  v10.value = v7.value;
  *&v10.timescale = __PAIR64__(v6, v7.timescale);
  v10.epoch = v7.epoch;
  return [v1 setForwardPlaybackEndTime:&v10];
}

uint64_t sub_1001A4E70(char a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 128) = 0;
    *(result + 136) = 1;
  }

  if (a3)
  {
    return a3(a1 & 1);
  }

  return result;
}

Swift::Int sub_1001A4EEC(uint64_t a1, uint64_t a2)
{
  sub_10000B46C(a1, v4, &qword_1002D1060);
  swift_beginAccess();
  sub_1001A6560(v4, a2 + 16);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_1001A4F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = a7;
  *(v8 + 192) = a8;
  *(v8 + 65) = a6;
  *(v8 + 168) = a4;
  *(v8 + 176) = a5;
  v10 = swift_task_alloc();
  *(v8 + 200) = v10;
  *v10 = v8;
  v10[1] = sub_1001A4FFC;

  return sub_1000E83A8(v8 + 128, a4);
}

uint64_t sub_1001A4FFC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1001A54DC;
  }

  else
  {
    v2 = sub_1001A5110;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A5110()
{
  *(v0 + 216) = type metadata accessor for MainActor();
  *(v0 + 224) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001A51A8, v2, v1);
}

uint64_t sub_1001A51A8()
{
  v1 = *(v0 + 168);

  *(v0 + 232) = [objc_allocWithZone(AVPlayerItem) initWithAsset:v1];

  return _swift_task_switch(sub_1001A5234, 0, 0);
}

uint64_t sub_1001A5234()
{
  if (*(v0 + 65))
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 184);
    sub_10000B46C(v0 + 128, v0 + 80, &qword_1002D4E70);
    *(v0 + 72) = v1;
    *(v0 + 120) = 0;
    v3 = v1;
    v2(v0 + 72);

    sub_100003CBC(v0 + 72, &qword_1002D1060);
    sub_100003CBC(v0 + 128, &qword_1002D4E70);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v0 + 240) = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001A5388, v7, v6);
  }
}

uint64_t sub_1001A5388()
{
  v1 = *(v0 + 176);

  sub_1001A4D70(v1);

  return _swift_task_switch(sub_1001A53FC, 0, 0);
}

uint64_t sub_1001A53FC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 184);
  sub_10000B46C(v0 + 128, v0 + 80, &qword_1002D4E70);
  *(v0 + 72) = v1;
  *(v0 + 120) = 0;
  v3 = v1;
  v2(v0 + 72);

  sub_100003CBC(v0 + 72, &qword_1002D1060);
  sub_100003CBC(v0 + 128, &qword_1002D4E70);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001A54DC()
{
  v1 = *(v0 + 184);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 64) = 1;
  swift_errorRetain();
  v1(v0 + 16);

  sub_100003CBC(v0 + 16, &qword_1002D1060);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001A5588(uint64_t result)
{
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v2 = result;
      LODWORD(v1) = *(result + 84);
      [*(result + 16) playImmediatelyAtRate:v1];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        [*(v2 + 16) rate];
        [v4 audioPlayerIsPlayingChanged:v5 != 0.0];
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_1001A5638(uint64_t a1)
{
  sub_1000C773C(&unk_1002CE190);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002432E0;
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  v6 = objc_opt_self();
  v7 = [v6 mainQueue];
  v8 = swift_allocObject();
  swift_weakInit();
  v22 = sub_1001A644C;
  v23 = v8;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1001A59DC;
  v21 = &unk_1002956C0;
  v9 = _Block_copy(&aBlock);

  v10 = [v5 addObserverForName:AVPlayerItemDidPlayToEndTimeNotification object:a1 queue:v7 usingBlock:v9];
  _Block_release(v9);

  *(v3 + 32) = v10;
  v11 = [v4 defaultCenter];
  v12 = [v6 mainQueue];
  v13 = swift_allocObject();
  swift_weakInit();
  v22 = sub_1001A6454;
  v23 = v13;
  aBlock = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_1001A59DC;
  v21 = &unk_1002956E8;
  v14 = _Block_copy(&aBlock);

  v15 = [v11 addObserverForName:AVPlayerItemFailedToPlayToEndTimeNotification object:a1 queue:v12 usingBlock:v14];
  _Block_release(v14);

  *(v3 + 40) = v15;
  *(v1 + 120) = v3;
}

void sub_1001A58FC()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Notification.object.getter();
    if (v3)
    {
      sub_1000067AC(0, &qword_1002D6558);
      if (swift_dynamicCast())
      {
        v0 = v1;
      }

      else
      {
        v0 = 0;
      }
    }

    else
    {
      sub_100003CBC(v2, &qword_1002D06A8);
      v0 = 0;
    }

    sub_1001A645C();
  }
}

uint64_t sub_1001A59DC(uint64_t a1)
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

void sub_1001A5AD0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  Notification.object.getter();
  if (v16[3])
  {
    sub_1000067AC(0, &qword_1002D6558);
    if (swift_dynamicCast())
    {
      v2 = v17;
    }

    else
    {
      v2 = 0;
    }

    v3 = Notification.userInfo.getter();
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_100003CBC(v16, &qword_1002D06A8);
    v2 = 0;
    v3 = Notification.userInfo.getter();
    if (!v3)
    {
LABEL_16:
      v17 = 0u;
      v18 = 0u;
      goto LABEL_17;
    }
  }

  v4 = v3;
  *&v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v17 + 1) = v5;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v6 = sub_1000D2DFC(v16), (v7 & 1) == 0))
  {

    sub_1000D513C(v16);
    goto LABEL_16;
  }

  sub_10001931C(*(v4 + 56) + 32 * v6, &v17);
  sub_1000D513C(v16);

  if (*(&v18 + 1))
  {
    sub_1000C773C(&qword_1002D5540);
    if (swift_dynamicCast())
    {
      v8 = v16[0];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_18;
  }

LABEL_17:
  sub_100003CBC(&v17, &qword_1002D06A8);
  v8 = 0;
LABEL_18:
  v9 = *(v1 + 16);
  [v9 pause];
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v9 rate];
    [v11 audioPlayerIsPlayingChanged:v12 != 0.0];
    swift_unknownObjectRelease();
  }

  if (v8)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      swift_errorRetain();
      v15 = _convertErrorToNSError(_:)();
      [v14 audioPlayerError:v15];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1001A5D54()
{
  sub_100003CBC(v0 + 24, &unk_1002D1050);

  sub_10000E274(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_1001A5DF8()
{
  v11[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11[0] - 8);
  __chkstk_darwin(v11[0], v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8, v8);
  v9 = [objc_allocWithZone(AVPlayer) init];
  [v9 _setPreservesAudioSessionSampleRate:1];
  *(v0 + 16) = v9;
  sub_1000067AC(0, &qword_1002D1070);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  static DispatchQoS.unspecified.getter();
  v11[1] = &_swiftEmptyArrayStorage;
  sub_100187B04();
  sub_1000C773C(&unk_1002D1E10);
  sub_100187B5C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11[0]);
  *(v0 + 72) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 80) = 0;
  *(v0 + 84) = 1065353216;
  *(v0 + 88) = &_swiftEmptyArrayStorage;
  *(v0 + 96) = 0;
  *(v0 + 100) = 0;
  *(v0 + 112) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  return v0;
}

id sub_1001A60D0(float a1)
{
  *(v1 + 84) = a1;
  v2 = *(v1 + 16);
  result = [v2 rate];
  if (*&v4 != 0.0)
  {
    LODWORD(v4) = *(v1 + 84);

    return [v2 setRate:v4];
  }

  return result;
}

uint64_t sub_1001A615C(void (*a1)(uint64_t), uint64_t a2, Swift::Double a3)
{
  swift_beginAccess();
  sub_10000B46C(v3 + 24, &aBlock, &unk_1002D1050);
  if (aBlock)
  {
    v22[0] = aBlock;
    v22[1] = v20;
    v22[2] = v21;
    sub_10000B46C(v3 + 24, &aBlock, &unk_1002D1050);
    if (aBlock)
    {
      sub_100119958(&aBlock, v18);
      sub_100003CBC(&aBlock, &unk_1002D1050);
      v7 = v18[0];
      sub_1001199B4(v18);
      [v7 currentTime];

      CMTime.seconds.getter();
      if (v8 == a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100003CBC(&aBlock, &unk_1002D1050);
      if (a3 == 0.0)
      {
        goto LABEL_10;
      }
    }

    if ((*(v3 + 136) & 1) != 0 || *(v3 + 128) != a3)
    {
      *(v3 + 128) = a3;
      *(v3 + 136) = 0;
      v10 = *&v22[0];
      v23 = CMTime.init(seconds:preferredTimescale:)(a3, 600);
      value = v23.value;
      timescale = v23.timescale;
      epoch = v23.epoch;
      v14 = HIDWORD(*&v23.timescale);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = a1;
      v16[4] = a2;
      *&v21 = sub_1001A6428;
      *(&v21 + 1) = v16;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v20 = sub_10019101C;
      *(&v20 + 1) = &unk_100295698;
      v17 = _Block_copy(&aBlock);
      sub_1000D0DAC(a1);

      *&aBlock = value;
      *(&aBlock + 1) = __PAIR64__(v14, timescale);
      *&v20 = epoch;
      [v10 seekToTime:&aBlock completionHandler:v17];
      _Block_release(v17);
      return sub_1001199B4(v22);
    }

LABEL_10:
    if (a1)
    {
      a1(1);
    }

    return sub_1001199B4(v22);
  }

  result = sub_100003CBC(&aBlock, &unk_1002D1050);
  if (a1)
  {
    return (a1)(0);
  }

  return result;
}

uint64_t sub_1001A6434(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001A645C()
{
  if (*(v0 + 100) == 1)
  {
    v1 = swift_allocObject();
    swift_weakInit();

    sub_1001A615C(sub_1001A6558, v1, 0.0);
  }

  else
  {
    v3 = *(v0 + 16);
    [v3 pause];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = result;
      [v3 rate];
      [v4 audioPlayerIsPlayingChanged:v5 != 0.0];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001A6560(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&unk_1002D1090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall UIView.setGlassBackground()()
{
  v0 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v0 - 8, v1);
  static _Glass._GlassVariant.regular.getter();
  v2[3] = type metadata accessor for _Glass();
  v2[4] = &protocol witness table for _Glass;
  sub_100015800(v2);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
}

id sub_1001A6808()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipKitManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RCAnalyticsAppSessionManagerFactory()
{
  result = qword_1002D65E8;
  if (!qword_1002D65E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A68D4()
{
  type metadata accessor for UserDataConfiguration();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DiagnosticsConsentProvider();
    if (v1 <= 0x3F)
    {
      sub_1001A6970();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001A6970()
{
  if (!qword_1002D65F8)
  {
    type metadata accessor for AppSessionManager();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D65F8);
    }
  }
}

uint64_t sub_1001A69C8()
{
  v1 = *(type metadata accessor for RCAnalyticsAppSessionManagerFactory() + 24);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = sub_1001A6A28(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1001A6A28(uint64_t a1)
{
  v2 = type metadata accessor for DiagnosticsConsentProvider();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C773C(&qword_1002D6630);
  __chkstk_darwin(v7 - 8, v8);
  v10 = v19 - v9;
  v11 = type metadata accessor for SummaryEventConfiguration();
  __chkstk_darwin(v11 - 8, v12);
  type metadata accessor for AppSessionManager();
  type metadata accessor for TrackingConsent();
  static TrackingConsent.shared.getter();
  static SummaryEventConfiguration.defaultCadence.getter();
  v13 = type metadata accessor for UserDataConfiguration();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v10, a1, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  v15 = type metadata accessor for RCAnalyticsAppSessionManagerFactory();
  (*(v3 + 16))(v6, a1 + *(v15 + 20), v2);
  v16 = type metadata accessor for CrashDetector();
  v17 = static CrashDetector.shared.getter();
  v19[4] = v16;
  v19[5] = &protocol witness table for CrashDetector;
  v19[1] = v17;
  return AppSessionManager.__allocating_init(trackingConsent:crashDetector:summaryEventConfiguration:userDataConfiguration:diagnosticsConsentProvider:)();
}

uint64_t sub_1001A6C78()
{
  v0[13] = *(v0[4] + 64);
  type metadata accessor for AnalyticsActor();
  v0[14] = static AnalyticsActor.shared.getter();
  sub_1001A80D4(&qword_1002CFE10, &type metadata accessor for AnalyticsActor);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001A6D48, v2, v1);
}

uint64_t sub_1001A6D48()
{

  sub_1000EFC64();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return _swift_task_switch(sub_1001A6DB0, v1, v2);
}

uint64_t sub_1001A6DB0()
{
  v1 = v0[9];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];

  sub_1000F5AB8();
  v0[2] = sub_1001A9354();
  v0[3] = v5;
  sub_1000F5E18();
  SessionData.init(key:data:)();
  (*(v4 + 16))(v2, v1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, v2, v3);
  SessionManager.transaction(_:)();

  (*(v4 + 8))(v1, v3);
  sub_1000F5798();
  sub_1000F61A8();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001A6F44()
{
  v0 = type metadata accessor for Date();
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0, v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Session.Kind();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TrackingConsent();
  v14 = static TrackingConsent.shared.getter();
  TrackingConsent.allow()();

  (*(v10 + 104))(v13, enum case for Session.Kind.userEvents(_:), v9);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v5 + 8))(v8, v4);
  Date.init()();
  SessionManager.start(for:identifier:startDate:)();

  (*(v16 + 8))(v3, v17);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1001A71C0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedApplication];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 beginBackgroundTaskWithName:v6 expirationHandler:0];

  *(swift_allocObject() + 16) = v7;
  Date.init()();
  SessionManager.end(endDate:completion:)();

  return (*(v1 + 8))(v4, v0);
}

void sub_1001A7340(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  [v2 endBackgroundTask:a1];
}

id *sub_1001A73B0()
{

  sub_1000158B8((v0 + 9));

  v1 = OBJC_IVAR____TtC10VoiceMemos24SessionManagerController_sessionKind;
  v2 = type metadata accessor for Session.Kind();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1001A7468()
{
  sub_1001A73B0();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A74C8()
{
  result = type metadata accessor for Session.Kind();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001A75A8()
{
  sub_1000C773C(&qword_1002D67B0);

  return sub_1000F5DB0();
}

uint64_t sub_1001A7624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v77 = a4;
  v9 = type metadata accessor for LoggingEventProcessorFormat();
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9, v10);
  v73 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TimeDurationGranularity();
  __chkstk_darwin(v12 - 8, v13);
  v67 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for FlushEvents();
  v60 = *(v64 - 8);
  __chkstk_darwin(v64, v15);
  v66 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SessionManager.Options();
  __chkstk_darwin(v59, v17);
  v65 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DiagnosticsConsentProvider();
  v69 = *(v78 - 8);
  __chkstk_darwin(v78, v19);
  v63 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SessionManagerConfiguration();
  v71 = *(v21 - 8);
  v72 = v21;
  __chkstk_darwin(v21, v22);
  v70 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for TimestampJitter();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24, v26);
  v28 = (&v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1002CDDB0 != -1)
  {
    swift_once();
  }

  v29 = qword_1002E8D18;
  *(v4 + 24) = qword_1002E8D18;
  type metadata accessor for UploadBatchEventConfig();
  v30 = v29;
  v31 = static UploadBatchEventConfig.default.getter();
  v32 = UploadBatchEventConfig.with(debuggingEnabled:)();

  v33 = UploadBatchEventConfig.with(transparencyLoggingEnabled:)();
  *(v5 + 32) = v33;
  if (qword_1002CDDA8 != -1)
  {
    swift_once();
  }

  *(v5 + 64) = qword_1002E8D10;
  *(v5 + 160) = 0;
  *(v5 + OBJC_IVAR____TtC10VoiceMemos24SessionManagerController____lazy_storage___flushController) = 0;
  *(v5 + 40) = a1;
  v34 = OBJC_IVAR____TtC10VoiceMemos24SessionManagerController_sessionKind;
  v35 = type metadata accessor for Session.Kind();
  v61 = *(v35 - 8);
  v36 = *(v61 + 16);
  v62 = v35;
  v36(v5 + v34, a3);
  sub_1000CC430(a2, v80);

  sub_1000C773C(&qword_1002D67B8);
  type metadata accessor for Client();
  v37 = swift_dynamicCast();
  v76 = a3;
  v68 = a1;
  if (v37)
  {
    v38 = v79;
  }

  else
  {
    v39 = [objc_opt_self() mainBundle];
    v38 = Client.__allocating_init(bundle:)();
  }

  *(v5 + 16) = v38;
  v55 = a2;
  sub_100015488(a2, v5 + 72);
  *v28 = xmmword_10024F850;
  v58 = v25;
  v40 = *(v25 + 104);
  v57 = v28;
  v40(v28, enum case for TimestampJitter.enabled(_:), v24);
  v80[3] = v24;
  v80[4] = &protocol witness table for TimestampJitter;
  v56 = v24;
  v41 = sub_100015800(v80);
  (*(v25 + 16))(v41, v28, v24);
  type metadata accessor for RCPrivacyValidationProvider();
  swift_allocObject();
  DenylistDescriptor.init(value:)();
  DenylistDescriptor.init(value:)();
  DenylistDescriptor.init(value:)();
  DenylistDescriptor.init(value:)();
  DenylistDescriptor.init(value:)();
  v54 = sub_1001A80D4(&qword_1002D67C0, type metadata accessor for RCPrivacyValidationProvider);
  v42 = v69;
  (*(v69 + 16))(v63, v77, v78);
  v79 = _swiftEmptyArrayStorage;
  sub_1001A80D4(&qword_1002D67C8, &type metadata accessor for SessionManager.Options);
  sub_1000C773C(&qword_1002D67D0);
  sub_100015864(&qword_1002D67D8, &qword_1002D67D0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_1000C773C(&qword_1002D67E0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100244070;
  static FlushEvents.didStartSession.getter();
  static FlushEvents.didEndSession.getter();
  static FlushEvents.didLeaveGroup.getter();
  v79 = v43;
  sub_1001A80D4(&qword_1002D67E8, &type metadata accessor for FlushEvents);
  sub_1000C773C(&qword_1002D67F0);
  sub_100015864(&qword_1002D67F8, &qword_1002D67F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for FlushProcessor();
  swift_allocObject();
  FlushProcessor.init(flushEvents:flushInterval:)();
  static TimeDurationGranularity.milliseconds.getter();
  v44 = v70;
  SessionManagerConfiguration.init(options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:diagnosticsConsentProvider:timeDurationGranularity:)();
  *(v5 + 48) = AppSessionManager.createSessionManager(with:)();

  v45 = SessionManager.tracker.getter();

  *(v5 + 56) = v45;
  type metadata accessor for UploadBatchEventProcessor();
  v46 = *(v5 + 24);
  v47 = *(v5 + 32);
  v48 = *(v5 + 16);
  v49 = v46;
  v50 = v47;
  UploadBatchEventProcessor.__allocating_init(client:endpoint:contentType:config:)();
  SessionManager.processorManager.getter();

  ProcessorManager.add(eventProcessor:)();

  type metadata accessor for LoggingEventProcessor();
  v52 = v73;
  v51 = v74;
  *v73 = 11;
  (*(v51 + 104))(v52, enum case for LoggingEventProcessorFormat.json(_:), v75);
  LoggingEventProcessor.__allocating_init(logFormat:)();
  SessionManager.processorManager.getter();

  ProcessorManager.add(eventProcessor:)();

  (*(v42 + 8))(v77, v78);
  (*(v61 + 8))(v76, v62);
  sub_1000158B8(v55);
  (*(v71 + 8))(v44, v72);
  (*(v58 + 8))(v57, v56);
  return v5;
}

uint64_t sub_1001A80D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001A811C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_1001A8140, 0, 0);
}

uint64_t sub_1001A8140()
{
  if (qword_1002CDDB8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_1001A8210;
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[6];

  return sub_1000F6804(v4, v2, v3);
}

uint64_t sub_1001A8210()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001A8344, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1001A8344()
{
  v13 = v0;
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100018D90(v1, qword_1002E8CB0);
  v2 = static os_log_type_t.error.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();

  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_10001901C(0xD000000000000025, 0x8000000100236480, &v12);
    *(v4 + 12) = 2080;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_10001901C(v5, v6, &v12);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v3, v2, "%s Unable to retrieve existing transcription with error - %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v8 = *(v0 + 48);
  v9 = type metadata accessor for TranscriptionData(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001A8584(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for AttributedString.CharacterView();
  v2[3] = swift_task_alloc();
  v5 = type metadata accessor for AttributedString();
  v2[4] = v5;
  v2[5] = *(v5 - 8);
  v2[6] = swift_task_alloc();
  sub_1000C773C(&unk_1002D4AC0);
  v6 = swift_task_alloc();
  v2[7] = v6;
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_1001A86F8;

  return sub_1001A811C(v6, a1, a2);
}

uint64_t sub_1001A86F8()
{

  return _swift_task_switch(sub_1001A87F4, 0, 0);
}

uint64_t sub_1001A87F4()
{
  v1 = v0[7];
  v2 = type metadata accessor for TranscriptionData(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_100003CBC(v1, &unk_1002D4AC0);
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    (*(v6 + 16))(v5, v1 + *(v2 + 20), v7);
    sub_1000FC460(v1);
    sub_10017C6C0(&unk_1002D4AD0, &type metadata accessor for AttributedString);
    dispatch thunk of AttributedStringProtocol.characters.getter();
    sub_10017C6C0(&qword_1002D1340, &type metadata accessor for AttributedString.CharacterView);
    v3 = String.init<A>(_:)();
    v4 = v8;
    (*(v6 + 8))(v5, v7);
  }

  v9 = v0[1];

  return v9(v3, v4);
}

uint64_t sub_1001A8B60(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1001A8C30;

  return sub_1001A8584(v5, v7);
}

uint64_t sub_1001A8C30(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v4 + 24);
  (v8)[2](v8, v7);

  _Block_release(v8);
  v9 = *(v6 + 8);

  return v9();
}

id sub_1001A8DF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCControlsActionHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001A8E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v24 - v11;
  sub_1000D91F8(a3, v24 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100003CBC(v12, &unk_1002D1D90);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
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
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = String.utf8CString.getter() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_100003CBC(a3, &unk_1002D1D90);

    return v22;
  }

LABEL_8:
  sub_100003CBC(a3, &unk_1002D1D90);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1001A913C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002001C;

  return sub_1001A8B60(v2, v3, v4);
}

uint64_t sub_1001A91F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002001C;

  return sub_100018364(a1, v4);
}

uint64_t sub_1001A92A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001A92F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001A9354()
{
  v0 = 0x746C7561666564;
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 stringForKey:v2];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      return v4;
    }

    else
    {
    }
  }

  return v0;
}

uint64_t sub_1001A943C()
{
  v0 = type metadata accessor for Locale.Language();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C773C(&qword_1002D6828);
  __chkstk_darwin(v10 - 8, v11);
  v13 = &v18 - v12;
  static Locale.current.getter();
  Locale.language.getter();
  (*(v6 + 8))(v9, v5);
  Locale.Language.region.getter();
  (*(v1 + 8))(v4, v0);
  v14 = type metadata accessor for Locale.Region();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1001A969C(v13);
    return 0;
  }

  else
  {
    v17 = Locale.Region.identifier.getter();
    (*(v15 + 8))(v13, v14);
    return v17;
  }
}

uint64_t sub_1001A969C(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D6828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001A9794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCToggleButtonFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001A97EC(void *a1)
{
  v2 = sub_1000C773C(&unk_1002D4320);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v20 - v4;
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedStyleProvider];
  static UIButton.Configuration.glass()();
  v12 = a1;
  UIButton.Configuration.image.setter();
  v13 = [v11 editingToolbarImageSymbolConfiguration];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v14 = [objc_allocWithZone(UIButton) init];
  (*(v7 + 16))(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  UIButton.configuration.setter();
  [v14 setPointerInteractionEnabled:{objc_msgSend(v11, "supportsPointerInteractions")}];
  v15 = v14;
  [v15 setShowsLargeContentViewer:1];
  v16 = v15;
  v17 = String._bridgeToObjectiveC()();
  [v16 setAccessibilityLabel:v17];

  v18 = String._bridgeToObjectiveC()();
  [v16 setLargeContentTitle:v18];

  (*(v7 + 8))(v10, v6);
  return v16;
}

id sub_1001A9A70()
{
  v0 = [objc_opt_self() sharedStyleProvider];
  v1 = [v0 playbackSettingsImage];
  v2 = [objc_opt_self() mainBundle];
  v7._object = 0x8000000100236570;
  v3._object = 0x8000000100236550;
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  v3._countAndFlagsBits = 0xD000000000000014;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v7);

  v5 = sub_1001A97EC(v1);

  return v5;
}

id sub_1001A9B88()
{
  v0 = [objc_opt_self() sharedStyleProvider];
  v1 = [v0 transcriptionImage];
  v2 = [objc_opt_self() mainBundle];
  v7._object = 0x8000000100236530;
  v3._object = 0x8000000100236510;
  v7._countAndFlagsBits = 0xD00000000000001DLL;
  v3._countAndFlagsBits = 0xD000000000000010;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v7);

  v5 = sub_1001A97EC(v1);

  return v5;
}

uint64_t sub_1001A9CA4(void *a1)
{
  sub_10000AACC(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_10000AACC(v3, v3[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100014B64(v3);
    return Date.init(timeIntervalSince1970:)();
  }

  return result;
}

uint64_t sub_1001A9D6C(uint64_t a1, void *a2)
{
  sub_10000AACC(a2, a2[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  result = Date.timeIntervalSince1970.getter();
  v4 = v3 * 1000.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    sub_10001466C(v5, v6);
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    return sub_100014B64(v5);
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_1001A9E8C(uint64_t a1)
{
  v2 = type metadata accessor for JSONEncoder.DateEncodingStrategy();
  v133 = *(v2 - 8);
  v134 = v2;
  __chkstk_darwin(v2, v3);
  v132 = (&v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000C773C(&qword_1002D6958);
  v130 = *(v5 - 8);
  v131 = v5;
  __chkstk_darwin(v5, v6);
  v129 = &v113 - v7;
  v8 = type metadata accessor for TimedData();
  v139 = *(v8 - 8);
  v140 = v8;
  __chkstk_darwin(v8, v9);
  v138 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for AppSessionEndEvent.Model(0);
  __chkstk_darwin(v135, v11);
  v143 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v141 = *(v13 - 8);
  v142 = v13;
  v15 = __chkstk_darwin(v13, v14);
  v137 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v136 = &v113 - v19;
  v21 = __chkstk_darwin(v18, v20);
  v144 = &v113 - v22;
  __chkstk_darwin(v21, v23);
  v145 = &v113 - v24;
  v149 = type metadata accessor for BatchEvent.Metadata();
  v146 = *(v149 - 8);
  v26 = __chkstk_darwin(v149, v25);
  v147 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26, v28);
  v30 = &v113 - v29;
  v31 = type metadata accessor for BatchEvent();
  v148 = *(v31 - 8);
  v33 = __chkstk_darwin(v31, v32);
  v35 = &v113 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33, v36);
  v38 = &v113 - v37;
  v39 = type metadata accessor for JSONDecoder.DateDecodingStrategy();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39, v41);
  v43 = (&v113 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (Batch.contentType.getter())
  {
    return _swiftEmptyArrayStorage;
  }

  v124 = v39;
  v125 = v40;
  v127 = v31;
  v128 = v38;
  v118 = v30;
  v126 = v35;
  Batch.groupName.getter();
  if (v44)
  {

    return _swiftEmptyArrayStorage;
  }

  v46 = a1;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v47 = JSONDecoder.init()();
  *v43 = sub_1001A9CA4;
  v43[1] = 0;
  (*(v125 + 104))(v43, enum case for JSONDecoder.DateDecodingStrategy.custom(_:), v124);
  v117 = v47;
  dispatch thunk of JSONDecoder.dateDecodingStrategy.setter();
  Batch.events.getter();
  v48 = objc_opt_self();
  sub_1000C773C(&qword_1002D6960);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v151[0] = 0;
  v50 = [v48 dataWithJSONObject:isa options:0 error:v151];

  v51 = v151[0];
  if (v50)
  {
    v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    sub_1000C773C(&qword_1002D6968);
    sub_1001AC060();
    v55 = v150;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v55)
    {
      sub_1000D4388(v52, v54);
    }

    v114 = v48;
    v115 = v46;
    v150 = 0;
    sub_1000D4388(v52, v54);
    v57 = 0;
    v58 = v151[0];
    v116 = 0x8000000100236610;
    v119 = *(v151[0] + 2);
    v120 = 0x8000000100236630;
    v59 = v148;
    v123 = (v146 + 8);
    v124 = (v148 + 8);
    v125 = v148 + 16;
    v61 = v127;
    v60 = v128;
    v62 = v118;
    v146 = v151[0];
    while (v119 != v57)
    {
      if (v57 >= *(v58 + 2))
      {
        __break(1u);
LABEL_34:
        __break(1u);
      }

      v65 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v121 = *(v59 + 72);
      v122 = *(v59 + 16);
      v122(v60, &v58[v65 + v121 * v57], v61);
      BatchEvent.metadata.getter();
      v66 = BatchEvent.Metadata.name.getter();
      v68 = v67;
      v69 = *v123;
      (*v123)(v62, v149);
      if (v66 == 0xD000000000000014 && v120 == v68)
      {

        v64 = *v124;
        (*v124)(v128, v61);
        v58 = v146;
        v70 = v147;
        goto LABEL_18;
      }

      ++v57;
      v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v64 = *v124;
      v60 = v128;
      (*v124)(v128, v61);
      v59 = v148;
      v58 = v146;
      if (v63)
      {
        v70 = v147;
LABEL_18:
        v71 = v126;
        v72 = &v58[v65];
        v73 = -v119;
        v74 = -1;
        while (v73 + v74 != -1)
        {
          if (++v74 >= *(v58 + 2))
          {
            goto LABEL_34;
          }

          v122(v71, v72, v61);
          v77 = v70;
          BatchEvent.metadata.getter();
          v78 = BatchEvent.Metadata.name.getter();
          v80 = v79;
          v69(v77, v149);
          if (v78 == 0xD000000000000012 && v116 == v80)
          {

            v64(v126, v127);
LABEL_25:

            return _swiftEmptyArrayStorage;
          }

          v72 += v121;
          v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v76 = v126;
          v61 = v127;
          v64(v126, v127);
          v71 = v76;
          v58 = v146;
          v70 = v147;
          if (v75)
          {
            goto LABEL_25;
          }
        }

        break;
      }
    }

    v81 = v115;
    Batch.sessionData.getter();
    v82 = Dictionary._bridgeToObjectiveC()().super.isa;

    v151[0] = 0;
    v83 = [v114 dataWithJSONObject:v82 options:0 error:v151];

    v84 = v151[0];
    if (!v83)
    {
      v89 = v84;

      _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    sub_1001AC114();
    v88 = v150;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v88)
    {

      return sub_1000D4388(v85, v87);
    }

    else
    {
      sub_1000D4388(v85, v87);
      memcpy(v152, v151, 0x11AuLL);
      v90 = v144;
      v91 = v145;
      sub_1001AAD60(v145, v144, v146, v81);

      v92 = v141;
      v93 = *(v141 + 16);
      v94 = v142;
      v93(v136, v91, v142);
      v93(v137, v90, v94);
      v95 = v138;
      TimedData.init(startTimestamp:endTimestamp:)();
      sub_1001ABBC0(v95, v152, v143);
      v96 = v94;
      (*(v139 + 8))(v95, v140);
      sub_10018DE98(v152);
      Batch.groupName.getter();
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v98 = v132;
      v97 = v133;
      *v132 = sub_1001A9D6C;
      v98[1] = 0;
      (*(v97 + 104))(v98, enum case for JSONEncoder.DateEncodingStrategy.custom(_:), v134);
      dispatch thunk of JSONEncoder.dateEncodingStrategy.setter();
      sub_1001AC168(&qword_1002D6988, type metadata accessor for AppSessionEndEvent.Model);
      dispatch thunk of JSONEncoder.encode<A>(_:)();
      v150 = 0;
      v100 = objc_allocWithZone(type metadata accessor for JSON());
      v101 = v92;
      if (JSON.init(_:)())
      {
        type metadata accessor for AppSessionEndEvent(0);
        sub_1001AC168(&qword_1002D3130, type metadata accessor for AppSessionEndEvent);
        v102 = v129;
        ProcessEvent.init(name:json:groupName:)();

        sub_1000C773C(&qword_1002D6990);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_100242C70;
        v104 = v131;
        *(v103 + 56) = v131;
        *(v103 + 64) = sub_1001AC1B0();
        v105 = sub_100015800((v103 + 32));
        (*(v130 + 32))(v105, v102, v104);

        sub_10014379C(v143);
        v106 = *(v101 + 8);
        v106(v144, v96);
        v106(v145, v96);
        return v103;
      }

      else
      {

        v151[0] = 0;
        v151[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(50);
        v107._countAndFlagsBits = 0xD000000000000030;
        v107._object = 0x8000000100236650;
        String.append(_:)(v107);
        v108 = v143;
        _print_unlocked<A, B>(_:_:)();
        v109 = v151[0];
        v110 = v151[1];
        sub_1001ABF2C();
        v111 = swift_allocError();
        *v112 = v109;
        v112[1] = v110;
        v150 = v111;
        swift_willThrow();

        sub_10014379C(v108);
        v99 = *(v92 + 8);
        v99(v144, v96);
        return (v99)(v145, v96);
      }
    }
  }

  else
  {
    v56 = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1001AAD60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a4;
  v79 = a2;
  v80 = a1;
  v5 = sub_1000C773C(&qword_1002D6948);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v85 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v11 = &v74 - v10;
  v96 = type metadata accessor for BatchEvent.Event();
  v12 = *(v96 - 8);
  __chkstk_darwin(v96, v13);
  v100 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C773C(&qword_1002CED20);
  v17 = __chkstk_darwin(v15 - 8, v16);
  v78 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17, v19);
  v74 = &v74 - v21;
  v23 = __chkstk_darwin(v20, v22);
  v95 = &v74 - v24;
  v26 = __chkstk_darwin(v23, v25);
  v28 = &v74 - v27;
  __chkstk_darwin(v26, v29);
  v75 = &v74 - v30;
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  v34 = __chkstk_darwin(v31, v33);
  v84 = &v74 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34, v36);
  v39 = &v74 - v38;
  __chkstk_darwin(v37, v40);
  v77 = &v74 - v41;
  v99 = type metadata accessor for BatchEvent();
  __chkstk_darwin(v99, v42);
  v98 = &v74 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(a3 + 16);
  v86 = v32;
  if (v45)
  {
    v47 = *(v43 + 16);
    v46 = v43 + 16;
    v48 = a3 + ((*(v46 + 64) + 32) & ~*(v46 + 64));
    v92 = *(v46 + 56);
    v93 = v47;
    v81 = (v32 + 8);
    v82 = (v32 + 16);
    v90 = (v12 + 8);
    v91 = (v32 + 56);
    v88 = (v32 + 48);
    v89 = (v46 - 8);
    v87 = (v32 + 32);
    v49 = _swiftEmptyArrayStorage;
    v83 = v28;
    v94 = v46;
    v47(v98, v48, v99);
    while (1)
    {
      BatchEvent.data.getter();
      BatchEvent.Event.eventData.getter();
      v50 = type metadata accessor for EventData();
      v51 = *(v50 - 8);
      if ((*(v51 + 48))(v11, 1, v50) == 1)
      {
        v52 = v95;
        (*v91)(v95, 1, 1, v31);
      }

      else
      {
        v53 = v11;
        v97 = v49;
        v54 = v85;
        sub_1001ABF80(v11, v85);
        v55 = v39;
        v56 = v84;
        EventData.eventTimestamp.getter();
        v52 = v95;
        (*v82)(v95, v56, v31);
        (*v91)(v52, 0, 1, v31);
        v57 = v56;
        v39 = v55;
        (*v81)(v57, v31);
        v58 = v54;
        v49 = v97;
        v11 = v53;
        v28 = v83;
        (*(v51 + 8))(v58, v50);
      }

      sub_100003CBC(v11, &qword_1002D6948);
      (*v90)(v100, v96);
      sub_1001ABFF0(v52, v28);
      (*v89)(v98, v99);
      if ((*v88)(v28, 1, v31) == 1)
      {
        sub_100003CBC(v28, &qword_1002CED20);
      }

      else
      {
        v59 = *v87;
        (*v87)(v39, v28, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1000F2D64(0, v49[2] + 1, 1, v49);
        }

        v61 = v49[2];
        v60 = v49[3];
        if (v61 >= v60 >> 1)
        {
          v49 = sub_1000F2D64(v60 > 1, v61 + 1, 1, v49);
        }

        v49[2] = v61 + 1;
        v59(v49 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v61, v39, v31);
      }

      v48 += v92;
      if (!--v45)
      {
        break;
      }

      v93(v98, v48, v99);
    }
  }

  else
  {
    v49 = _swiftEmptyArrayStorage;
  }

  v62 = v75;
  Batch.sessionStartDate.getter();
  v63 = v86;
  v64 = *(v86 + 48);
  v65 = v64(v62, 1, v31);
  v97 = v49;
  if (v65 == 1)
  {
    v66 = v74;
    sub_1001AB660(v49, v74);
    v67 = v64(v66, 1, v31);
    v68 = v77;
    if (v67 == 1)
    {
      Date.init()();
      v69 = v64(v66, 1, v31);
      v70 = v80;
      v71 = v79;
      v72 = v78;
      if (v69 != 1)
      {
        sub_100003CBC(v66, &qword_1002CED20);
      }
    }

    else
    {
      (*(v63 + 32))(v77, v66, v31);
      v70 = v80;
      v71 = v79;
      v72 = v78;
    }

    if (v64(v62, 1, v31) != 1)
    {
      sub_100003CBC(v62, &qword_1002CED20);
    }
  }

  else
  {
    v68 = v77;
    (*(v63 + 32))(v77, v62, v31);
    v70 = v80;
    v71 = v79;
    v72 = v78;
  }

  sub_1001AB910(v97, v72);

  if (v64(v72, 1, v31) == 1)
  {
    Date.init()();
    if (v64(v72, 1, v31) != 1)
    {
      sub_100003CBC(v72, &qword_1002CED20);
    }
  }

  else
  {
    (*(v63 + 32))(v71, v72, v31);
  }

  return (*(v63 + 32))(v70, v68, v31);
}

uint64_t sub_1001AB660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v6 = __chkstk_darwin(*(v4 - 8), v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v24 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v10 + 16);
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v27 = v10;
    v25 = a2;
    v26 = v14;
    v14(&v24 - v11, v15, v4);
    result = v27;
    if (v13 == 1)
    {
LABEL_3:
      v17 = v25;
      (*(result + 32))(v25, v12, v4);
      return (*(v27 + 56))(v17, 0, 1, v4);
    }

    else
    {
      v19 = (v27 + 32);
      v20 = 1;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v26(v8, v15 + *(result + 72) * v20, v4);
        sub_1001AC168(&qword_1002D6950, &type metadata accessor for Date);
        v22 = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *(v27 + 8);
        if (v22)
        {
          v23(v12, v4);
          (*v19)(v12, v8, v4);
        }

        else
        {
          v23(v8, v4);
        }

        ++v20;
        result = v27;
        if (v21 == v13)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v18 = *(v10 + 56);

    return v18(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1001AB910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v6 = __chkstk_darwin(*(v4 - 8), v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v6, v9);
  v12 = &v24 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v10 + 16);
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v27 = v10;
    v25 = a2;
    v26 = v14;
    v14(&v24 - v11, v15, v4);
    result = v27;
    if (v13 == 1)
    {
LABEL_3:
      v17 = v25;
      (*(result + 32))(v25, v12, v4);
      return (*(v27 + 56))(v17, 0, 1, v4);
    }

    else
    {
      v19 = (v27 + 32);
      v20 = 1;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v26(v8, v15 + *(result + 72) * v20, v4);
        sub_1001AC168(&qword_1002D6950, &type metadata accessor for Date);
        v22 = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *(v27 + 8);
        if (v22)
        {
          v23(v12, v4);
          (*v19)(v12, v8, v4);
        }

        else
        {
          v23(v8, v4);
        }

        ++v20;
        result = v27;
        if (v21 == v13)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v18 = *(v10 + 56);

    return v18(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1001ABBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v5 = type metadata accessor for Date();
  __chkstk_darwin(v5 - 8, v6);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 264);
  v13 = *(a2 + 272);
  v15 = *(a2 + 280);
  if (v13 && (*(a2 + 256) & 1) == 0)
  {
    v34 = v14 >> 40;
    v38 = *(a2 + 240);
    v33 = v15;
    v23 = v10;

    UUID.init()();
    v24 = UUID.uuidString.getter();
    v32[0] = v25;
    v32[1] = v24;
    (*(v8 + 8))(v12, v23);
    v26 = v39;
    TimedData.endTimestamp.getter();

    EventData.init(eventID:eventTimestamp:eventPath:sessionID:appSessionID:)();
    v27 = type metadata accessor for AppSessionEndEvent.Model(0);
    v28 = v27[8];
    v29 = type metadata accessor for TimedData();
    result = (*(*(v29 - 8) + 16))(a3 + v28, v26, v29);
    v30 = a3 + v27[5];
    *v30 = v14;
    *(v30 + 4) = BYTE4(v14) & 1;
    *(v30 + 5) = v34;
    *(v30 + 8) = v13;
    v31 = BYTE1(v33);
    *(v30 + 16) = v33 & 1;
    *(v30 + 17) = v31 & 1;
    *(a3 + v27[6]) = v38;
    *(a3 + v27[7]) = 0;
  }

  else
  {
    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(51);
    v37 = v35;
    v16._countAndFlagsBits = 0xD000000000000018;
    v16._object = 0x80000001002365D0;
    String.append(_:)(v16);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v36 = v15;
    sub_1000C773C(&qword_1002D6930);
    v17._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v17);

    v18._object = 0x80000001002365F0;
    v18._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v18);
    v35 = *(a2 + 240);
    LOBYTE(v36) = *(a2 + 256);
    sub_1000C773C(&qword_1002D6938);
    v19._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v19);

    v20 = v37;
    sub_1001ABF2C();
    swift_allocError();
    *v21 = v20;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1001ABF2C()
{
  result = qword_1002D6940;
  if (!qword_1002D6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6940);
  }

  return result;
}

uint64_t sub_1001ABF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D6948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001ABFF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CED20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001AC060()
{
  result = qword_1002D6970;
  if (!qword_1002D6970)
  {
    sub_1000C7784(&qword_1002D6968);
    sub_1001AC168(&qword_1002D6978, &type metadata accessor for BatchEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6970);
  }

  return result;
}

unint64_t sub_1001AC114()
{
  result = qword_1002D6980;
  if (!qword_1002D6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6980);
  }

  return result;
}

uint64_t sub_1001AC168(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001AC1B0()
{
  result = qword_1002D6998;
  if (!qword_1002D6998)
  {
    sub_1000C7784(&qword_1002D6958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6998);
  }

  return result;
}

void sub_1001AC238(uint64_t a1, void *a2)
{
  v4 = sub_1000C773C(&qword_1002D1DB8);
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = aBlock - v8;
  (*(v5 + 16))(aBlock - v8, a1, v4, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v9, v4);
  aBlock[4] = sub_100134828;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10012ED20;
  aBlock[3] = &unk_100295990;
  v12 = _Block_copy(aBlock);

  [a2 goToAllRecordingsIfNeeded:1 completion:v12];
  _Block_release(v12);
}

uint64_t sub_1001AC3EC(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001AC484, v3, v2);
}

uint64_t sub_1001AC484()
{

  v1 = [objc_opt_self() sharedAppDelegate];
  if (v1 && (v2 = v1, v3 = [v1 defaultSceneDelegate], v2, v3) && (v4 = objc_msgSend(v3, "window"), v3, v5 = objc_msgSend(v4, "windowScene"), v4, v5))
  {
    v6 = *(v0 + 16);
    *v6 = v5;
    v7 = enum case for IntentSceneConfiguration.existingScene(_:);
    v8 = type metadata accessor for IntentSceneConfiguration();
    (*(*(v8 - 8) + 104))(v6, v7, v8);
  }

  else
  {
    v9 = *(v0 + 16);
    v10 = enum case for IntentSceneConfiguration.newScene(_:);
    v11 = type metadata accessor for IntentSceneConfiguration();
    (*(*(v11 - 8) + 104))(v9, v10, v11);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001AC608(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002001C;

  return (sub_1001AC6BC)(a1, a2);
}

uint64_t sub_1001AC6BC(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v2[10] = type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v4;
  v2[13] = v3;

  return _swift_task_switch(sub_1001AC758, v4, v3);
}

uint64_t sub_1001AC758()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 64);
    v4 = [v2 delegate];
    *(v0 + 112) = v4;
    if (!v4)
    {
      v15 = *(v0 + 64);

      goto LABEL_14;
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5 || (v6 = v5, sub_1000CC430(*(v0 + 72), v0 + 16), sub_1000C773C(&qword_1002D69A0), !swift_dynamicCast()))
    {
      v14 = *(v0 + 64);
      swift_unknownObjectRelease();

      goto LABEL_14;
    }

    v7 = [v6 mainViewController];
    *(v0 + 120) = v7;
    v8 = [v7 splitViewController];
    *(v0 + 128) = v8;
    if (!v8)
    {
      v17 = *(v0 + 64);
      swift_unknownObjectRelease();

      goto LABEL_14;
    }

    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
      v18 = *(v0 + 64);

      swift_unknownObjectRelease();

      goto LABEL_14;
    }

    if ([v10 isCollapsedAndShowingPrimary])
    {
      v11 = static MainActor.shared.getter();
      *(v0 + 136) = v11;
      v12 = swift_task_alloc();
      *(v0 + 144) = v12;
      *(v12 + 16) = v7;
      v13 = swift_task_alloc();
      *(v0 + 152) = v13;
      *v13 = v0;
      v13[1] = sub_1001ACA70;

      return withCheckedContinuation<A>(isolation:function:_:)(v13, v11, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x8000000100236690, sub_1001ACC60, v12, &type metadata for () + 8);
    }

    swift_unknownObjectRelease();
  }

LABEL_14:
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1001ACA70()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return _swift_task_switch(sub_1001ACBD0, v3, v2);
}

uint64_t sub_1001ACBD0()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);

  swift_unknownObjectRelease();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001ACC68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1001ACCEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VMRecordingContext();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t storeEnumTagSinglePayload for AutoScrollType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1001ACD84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001ACDA0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_1001ACDE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000C773C(&qword_1002D6AC0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_10001931C(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for Key(0);
    v15 = v14;
    swift_dynamicCast();
    sub_10000B668((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_10000B668(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_10000B668(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v7[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*&v7[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_10000B668(v31, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001AD0A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000C773C(&qword_1002D6AC8);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    sub_1000CC230(*(a1 + 56) + 40 * v11, v27);
    v26 = v12;
    v23[4] = v27[0];
    v23[5] = v27[1];
    v24 = v28;
    v13 = v12;
    swift_dynamicCast();
    sub_10000B668((v25 + 8), v23);
    sub_10000B668(v23, v25);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << v1[32];
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v6[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v6[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v6[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v9) = v13;
    result = sub_10000B668(v25, (*(v1 + 7) + 32 * v9));
    ++*(v1 + 2);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001AD364(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_10002C20C(a1[2], a2[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001AD38C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t sub_1001AD3BC(void *a1)
{
  v2 = v1;
  sub_1001ADDB0();
  if (static NSObject.== infix(_:_:)())
  {
    return 1;
  }

  v4 = [a1 string];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [v2 string];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  if ([v2 length] < 1)
  {
LABEL_26:

    return 1;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = &qword_1002CE138;
  while (1)
  {
    if (__OFADD__(v31, v30))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    if (v17 >= v31 + v30)
    {

      v19 = [v2 attributesAtIndex:v17 effectiveRange:&v30];
      type metadata accessor for Key(0);
      sub_1000255C0(v18, type metadata accessor for Key);
      v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    if (__OFADD__(v29, v28))
    {
      goto LABEL_31;
    }

    if (v17 >= v29 + v28)
    {

      v20 = [a1 attributesAtIndex:v17 effectiveRange:&v28];
      type metadata accessor for Key(0);
      sub_1000255C0(v18, type metadata accessor for Key);
      v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    if (v15)
    {
      if (v16)
      {
        sub_1001ACDE0(v15);
        v21 = objc_allocWithZone(NSDictionary);
        v27 = v15;
        v22 = v16;
        v23 = v18;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v25 = [v21 initWithDictionary:isa];

        sub_1001ACDE0(v22);
        v26 = Dictionary._bridgeToObjectiveC()().super.isa;

        LOBYTE(v21) = [v25 isEqualToDictionary:v26];

        v18 = v23;
        v16 = v22;
        v15 = v27;
        if ((v21 & 1) == 0)
        {
          break;
        }
      }
    }

    if (__OFADD__(v29, v28))
    {
      goto LABEL_32;
    }

    if (__OFADD__(v31, v30))
    {
      goto LABEL_33;
    }

    if (v31 + v30 >= v29 + v28)
    {
      v17 = v29 + v28;
    }

    else
    {
      v17 = v31 + v30;
    }

    if (v17 >= [v2 length])
    {
      goto LABEL_26;
    }
  }

  return 0;
}

uint64_t sub_1001AD7C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1001AD3BC(*a2) & (v2 == v3);
}

uint64_t sub_1001AD808(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); *(v3 - 2) == *(i - 2) && *(v3 - 1) == *(i - 1); i += 3)
    {
      v6 = *v3;
      v7 = *i;

      v8 = sub_10002C20C(v6, v7);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1001AD8CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIContentUnavailableConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C773C(&qword_1002D4308);
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v28 - v11;
  v13 = sub_1000C773C(&qword_1002D42F8);
  __chkstk_darwin(v13, v14);
  v16 = &v28 - v15;
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10002C20C(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_1001AD808(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    goto LABEL_33;
  }

  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      goto LABEL_33;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
    if ((*(a2 + 64) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))), xmmword_10024FBE0)) & 0xF) != 0)
    {
      return v17 & 1;
    }
  }

  v18 = *(a2 + 89);
  if (*(a1 + 89))
  {
    goto LABEL_12;
  }

  if (*(a2 + 89))
  {
    goto LABEL_33;
  }

  v18 = *(a2 + 88);
  if (*(a1 + 88))
  {
LABEL_12:
    if ((v18 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  if (*(a2 + 88))
  {
    goto LABEL_33;
  }

  LOBYTE(v17) = 0;
  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80))
  {
LABEL_13:
    v17 = *(a2 + 96);
    if (*(a1 + 96))
    {
      if (!v17)
      {
        return v17 & 1;
      }

      v19 = *(a1 + 104);
      v29 = *(a2 + 104);
      v30 = v19;
      v20 = v17;
      v21 = sub_1001AD3BC(v20);

      LOBYTE(v17) = 0;
      if ((v21 & 1) == 0 || v30 != v29)
      {
        return v17 & 1;
      }
    }

    else if (v17)
    {
      goto LABEL_33;
    }

    v30 = type metadata accessor for TranscriptViewModel();
    v22 = v30[10];
    v23 = *(v13 + 48);
    sub_1001ADD40(a1 + v22, v16);
    sub_1001ADD40(a2 + v22, &v16[v23]);
    v24 = *(v5 + 48);
    if (v24(v16, 1, v4) == 1)
    {
      if (v24(&v16[v23], 1, v4) == 1)
      {
        sub_100003CBC(v16, &qword_1002D4308);
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    sub_1001ADD40(v16, v12);
    if (v24(&v16[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
LABEL_30:
      sub_100003CBC(v16, &qword_1002D42F8);
      goto LABEL_33;
    }

    (*(v5 + 32))(v8, &v16[v23], v4);
    sub_1000255C0(&unk_1002D4310, &type metadata accessor for UIContentUnavailableConfiguration);
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26 = *(v5 + 8);
    v26(v8, v4);
    v26(v12, v4);
    sub_100003CBC(v16, &qword_1002D4308);
    if (v25)
    {
LABEL_32:
      if (*(a1 + v30[11]) == *(a2 + v30[11]))
      {
        LOBYTE(v17) = *(a1 + v30[12]) ^ *(a2 + v30[12]) ^ 1;
        return v17 & 1;
      }
    }

LABEL_33:
    LOBYTE(v17) = 0;
  }

  return v17 & 1;
}

uint64_t sub_1001ADD40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002D4308);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001ADDB0()
{
  result = qword_1002D6AB8;
  if (!qword_1002D6AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D6AB8);
  }

  return result;
}

uint64_t sub_1001ADDFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v23 = *(a1 + 16);
  sub_1001AE6FC(0, v1, 0);
  v3 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v5 = v23;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(*(a1 + 48) + result);
    v11 = *(a1 + 36);
    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      v21 = *(a1 + 36);
      v22 = result;
      sub_1001AE6FC((v12 > 1), v13 + 1, 1);
      v5 = v23;
      v11 = v21;
      result = v22;
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    *(&_swiftEmptyArrayStorage[4] + v13) = v10;
    v7 = 1 << *(a1 + 32);
    if (result >= v7)
    {
      goto LABEL_22;
    }

    v14 = *(v3 + 8 * v8);
    if ((v14 & v9) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (result & 0x3F));
    if (v15)
    {
      v7 = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v8 << 6;
      v17 = v8 + 1;
      v18 = (a1 + 64 + 8 * v8);
      while (v17 < (v7 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          sub_10011F4F0(result, v11, 0);
          v5 = v23;
          v7 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      sub_10011F4F0(result, v11, 0);
      v5 = v23;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v5)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1001AE018(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        *(result + 32) = 514;
        *(result + 34) = 2;
        *(result + 40) = _swiftEmptyArrayStorage;
      }

      goto LABEL_9;
    }
  }

  if (a2 == 2 || a2 == 3)
  {
  }

LABEL_9:
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unknown enum case encountered.  Please update this switch statement to handle the new case.", v11, 2u);
  }

  else
  {
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1001AE248()
{
  *(v0 + 24) = [objc_opt_self() sharedApplicationModel];
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1001AE2FC;

  return sub_1000226DC();
}

uint64_t sub_1001AE2FC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1001AE418, 0, 0);
}

uint64_t sub_1001AE418()
{
  result = sub_1000224C4(v0[5]);
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = v0[2];
  v4 = v3[32];
  v5 = sub_1001B1B90();

  v7 = sub_1001B1B1C(v6);

  v8 = sub_1001ADDFC(v7);

  v9 = v3[33] & 1 | ((v3[34] & 1) << 8);
  v10 = v0[1];

  return v10(v2 | ((v4 & 1) << 32) | (v5 << 40), v8, v9);
}

uint64_t sub_1001AE58C()
{

  return swift_deallocClassInstance();
}

char *sub_1001AE5D4(char *a1, int64_t a2, char a3)
{
  result = sub_1001AE73C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001AE5F4(char *a1, int64_t a2, char a3)
{
  result = sub_1001AE85C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001AE614(char *a1, int64_t a2, char a3)
{
  result = sub_1001AE968(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001AE634(char *a1, int64_t a2, char a3)
{
  result = sub_1001AEA88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001AE654(size_t a1, int64_t a2, char a3)
{
  result = sub_1001AEC90(a1, a2, a3, *v3, &qword_1002D6CA0, &unk_10024FE28, &type metadata accessor for AttributedString.Index);
  *v3 = result;
  return result;
}

char *sub_1001AE698(char *a1, int64_t a2, char a3)
{
  result = sub_1001AEB8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001AE6B8(size_t a1, int64_t a2, char a3)
{
  result = sub_1001AEC90(a1, a2, a3, *v3, &qword_1002CFFC8, &unk_10024FE30, type metadata accessor for TimeRangeRun);
  *v3 = result;
  return result;
}

char *sub_1001AE6FC(char *a1, int64_t a2, char a3)
{
  result = sub_1001AEE6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001AE71C(void *a1, int64_t a2, char a3)
{
  result = sub_1001AEF60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001AE73C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C773C(&unk_1002CF8B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001AE85C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C773C(&unk_1002D02A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001AE968(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C773C(&qword_1002CF828);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001AEA88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C773C(&qword_1002D6CC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1001AEB8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C773C(&qword_1002CFFF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

size_t sub_1001AEC90(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000C773C(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1001AEE6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000C773C(&qword_1002D6C60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1001AEF60(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000C773C(&qword_1002D6C78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000C773C(&qword_1002D6C80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1001AF094(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Transcriber.TranscriptionOption();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1001B1E0C(&qword_1002CE180, &type metadata accessor for Transcriber.TranscriptionOption);
  v34 = a2;
  v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1001B1E0C(&qword_1002CE188, &type metadata accessor for Transcriber.TranscriptionOption);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1001B027C(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1001AF374(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DenylistDescriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1001B1E0C(&qword_1002D6CA8, &type metadata accessor for DenylistDescriptor);
  v34 = a2;
  v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1001B1E0C(&qword_1002D6CB0, &type metadata accessor for DenylistDescriptor);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1001B0668(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1001AF654(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1001B0930(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1001AF74C()
{
  v1 = v0;
  v36 = type metadata accessor for Transcriber.TranscriptionOption();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36, v3);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000C773C(&qword_1002CE178);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v2 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v2 + 72) * (v16 | (v8 << 6));
      v20 = *(v2 + 32);
      v32 = *(v2 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1001B1E0C(&qword_1002CE180, &type metadata accessor for Transcriber.TranscriptionOption);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1001AFAA8()
{
  v1 = v0;
  v2 = *v0;
  sub_1000C773C(&qword_1002D6C88);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 4 * (v13 | (v5 << 6)));
      result = static Hasher._hash(seed:bytes:count:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 4 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1001AFCD0()
{
  v1 = v0;
  v36 = type metadata accessor for DenylistDescriptor();
  v2 = *(v36 - 8);
  __chkstk_darwin(v36, v3);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000C773C(&qword_1002D6CB8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v0;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v2 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v2 + 72) * (v16 | (v8 << 6));
      v20 = *(v2 + 32);
      v32 = *(v2 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1001B1E0C(&qword_1002D6CA8, &type metadata accessor for DenylistDescriptor);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v1 = v30;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1001B002C()
{
  v1 = v0;
  v2 = *v0;
  sub_1000C773C(&qword_1002D6C70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
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
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1001B027C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for Transcriber.TranscriptionOption();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001AF74C();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1001B0BBC(&type metadata accessor for Transcriber.TranscriptionOption, &qword_1002CE178);
      goto LABEL_12;
    }

    sub_1001B0F34();
  }

  v13 = *v3;
  sub_1001B1E0C(&qword_1002CE180, &type metadata accessor for Transcriber.TranscriptionOption);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1001B1E0C(&qword_1002CE188, &type metadata accessor for Transcriber.TranscriptionOption);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001B0544(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001AFAA8();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1001B0A7C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001B1250();
  }

  v8 = *v3;
  result = static Hasher._hash(seed:bytes:count:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1001B0668(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for DenylistDescriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001AFCD0();
  }

  else
  {
    if (v12 > v11)
    {
      sub_1001B0BBC(&type metadata accessor for DenylistDescriptor, &qword_1002D6CB8);
      goto LABEL_12;
    }

    sub_1001B1444();
  }

  v13 = *v3;
  sub_1001B1E0C(&qword_1002D6CA8, &type metadata accessor for DenylistDescriptor);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1001B1E0C(&qword_1002D6CB0, &type metadata accessor for DenylistDescriptor);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1001B0930(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1001B002C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1001B0DF4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1001B1760();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1001B0A7C()
{
  v1 = v0;
  sub_1000C773C(&qword_1002D6C88);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1001B0BBC(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v25 - v8;
  sub_1000C773C(a2);
  v10 = *v2;
  v11 = static _SetStorage.copy(original:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v4;
    result = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 56 + 8 * v14)
    {
      result = memmove(result, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    v27 = v6 + 32;
    for (i = v6 + 16; v19; result = (*(v6 + 32))(*(v12 + 48) + v24, v9, v5))
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = *(v6 + 72) * (v21 | (v16 << 6));
      (*(v6 + 16))(v9, *(v10 + 48) + v24, v5);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {

        v4 = v26;
        goto LABEL_21;
      }

      v23 = *(v10 + 56 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v12;
  }

  return result;
}

void *sub_1001B0DF4()
{
  v1 = v0;
  sub_1000C773C(&qword_1002D6C70);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_1001B0F34()
{
  v1 = v0;
  v33 = type metadata accessor for Transcriber.TranscriptionOption();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1000C773C(&qword_1002CE178);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v0;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v2 + 16;
    v32 = v2;
    v15 = v7 + 56;
    v29 = (v2 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1001B1E0C(&qword_1002CE180, &type metadata accessor for Transcriber.TranscriptionOption);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1001B1250()
{
  v1 = v0;
  v2 = *v0;
  sub_1000C773C(&qword_1002D6C88);
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
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      result = static Hasher._hash(seed:bytes:count:)();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001B1444()
{
  v1 = v0;
  v33 = type metadata accessor for DenylistDescriptor();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_1000C773C(&qword_1002D6CB8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v0;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v2 + 16;
    v32 = v2;
    v15 = v7 + 56;
    v29 = (v2 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1001B1E0C(&qword_1002D6CA8, &type metadata accessor for DenylistDescriptor);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_1001B1760()
{
  v1 = v0;
  v2 = *v0;
  sub_1000C773C(&qword_1002D6C70);
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
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1001B1980(uint64_t a1)
{
  v2 = type metadata accessor for DenylistDescriptor();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  sub_1001B1E0C(&qword_1002D6CA8, &type metadata accessor for DenylistDescriptor);
  result = Set.init(minimumCapacity:)();
  v19 = result;
  if (v11)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1001AF374(v10, v7);
      (*(v13 - 8))(v10, v2);
      v16 += v17;
      --v11;
    }

    while (v11);
    return v19;
  }

  return result;
}

uint64_t sub_1001B1B1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1001B1D64();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1001AF654(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

id sub_1001B1B90()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  if (RCSpatialAudioCaptureAvailable())
  {
    v6 = [v5 rc_channelConfiguration];

    if (v6 >= 3)
    {
      Logger.init(subsystem:category:)();
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Unsupported channel configuration", v9, 2u);
      }

      (*(v1 + 8))(v4, v0);
      return 0;
    }
  }

  else
  {
    v6 = [v5 rc_useStereoRecording];
  }

  return v6;
}

unint64_t sub_1001B1D64()
{
  result = qword_1002D6C68;
  if (!qword_1002D6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6C68);
  }

  return result;
}

unint64_t sub_1001B1DB8()
{
  result = qword_1002D6C90;
  if (!qword_1002D6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6C90);
  }

  return result;
}

uint64_t sub_1001B1E0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B1E74(uint64_t result)
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

  result = sub_1000F2C38(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

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

uint64_t sub_1001B1F90(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001B4644(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1001B4DE0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1001B2080(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1001B4644(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1001B221C()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper____lazy_storage___defaultDoneButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper____lazy_storage___defaultDoneButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper____lazy_storage___defaultDoneButtonItem);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider) doneButtonImage];
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v4 style:2 target:v0 action:"doneButtonAction:"];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

objc_class *sub_1001B22DC()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper____lazy_storage___menuDoneButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper____lazy_storage___menuDoneButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper____lazy_storage___menuDoneButtonItem);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider) doneButtonImage];
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = sub_10011266C(1, Strong);
    swift_unknownObjectRelease();
    sub_1000067AC(0, &qword_1002D6E20);
    v7 = v4;
    v8 = v6;
    v14.value.super.isa = v4;
    v14.is_nil = 0;
    v15.value.super.super.isa = v6;
    v9 = v0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v14, v15, v16).super.super.isa;
    [(objc_class *)isa setStyle:2];

    v11 = *(v0 + v1);
    *(v9 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void *sub_1001B262C()
{
  v1 = v0;
  v2 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider) hostsTransportAndDoneButtonInBottomSection];
  sub_1000C773C(&unk_1002CE190);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1002432E0;
    *(v3 + 32) = sub_1001B3768();
    *(v3 + 40) = sub_1001B2F14();
    v13 = v3;
    if (qword_1002CDE28 != -1)
    {
      swift_once();
    }

    v4 = qword_1002E8DC0;

    CurrentValueSubject.value.getter();

    if (v12 == 1)
    {
      sub_1001B3008();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002432E0;
    v6 = *(v1 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_fixedSpace);
    *(inited + 32) = v6;
    v7 = v6;
    *(inited + 40) = sub_1001B30FC();
    sub_1001B2080(inited, sub_1001B4F7C);
    sub_1001B285C();
    return &_swiftEmptyArrayStorage;
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1002432F0;
    *(v9 + 32) = sub_1001B3BD4();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1002432F0;
    v11 = sub_1001B3A3C();
    result = v9;
    *(v10 + 32) = v11;
  }

  return result;
}

void sub_1001B285C()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v2 + 24);
        v9 = *(v1 + 8 * v4 + 32);
        v10 = v8;
LABEL_10:
        v11 = v10;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_1001B470C(v1);
          v12 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v12) = 0;
        }

        v13 = v1 & 0xFFFFFFFFFFFFFF8;
        v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v11;

        if ((v1 & 0x8000000000000000) != 0 || v12)
        {
          v1 = sub_1001B470C(v1);
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        v15 = v13 + 8 * v2;
        v16 = *(v15 + 24);
        *(v15 + 24) = v9;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v17 = v2 - 2;
        --v2;
        if (v4 >= v17)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }

      v2 = _CocoaArrayWrapper.endIndex.getter();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

_OWORD *sub_1001B2A0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider);
  if ([v1 hostsCancelButtonInToolbar])
  {
    sub_1000C773C(&unk_1002CE190);
    v2 = swift_allocObject();
    v2[1] = xmmword_1002432F0;
    *(v2 + 4) = sub_1001B31E0();
  }

  else
  {
    v2 = &_swiftEmptyArrayStorage;
  }

  if (([v1 hostsTransportAndDoneButtonInBottomSection] & 1) == 0)
  {
    sub_1000C773C(&unk_1002CE190);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1002432F0;
    *(v3 + 32) = sub_1001B34A4();
    [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_applyButtonItem) setEnabled:*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__canSave)];
  }

  return v2;
}

id sub_1001B2B14()
{
  sub_10001BFBC();
  v1 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider) hostsTransportAndDoneButtonInBottomSection];
  if (*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__displayMode))
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = !v2 || *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__activityMode) != 3;
  [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_applyButtonItem) setHidden:v3];
  sub_1001B2BFC();
  v4 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_playbackSettingsButtonItem;
  v5 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__activityMode;
  [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_playbackSettingsButtonItem) setHidden:*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__activityMode) == 3];
  [*(v0 + v4) setEnabled:*(v0 + v5) != 1];
  sub_1001B2D30();

  return sub_1001B2E20();
}

id sub_1001B2BFC()
{
  v1 = OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_moreActionsButtonItem;
  [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_moreActionsButtonItem) setHidden:*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__displayMode) != 2];
  v2 = [*(v0 + v1) menu];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 children];
    sub_1000067AC(0, &qword_1002CFE50);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v6 > 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + v1);
  v9 = (*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__activityMode) != 1) & v7;

  return [v8 setEnabled:v9];
}

id sub_1001B2D30()
{
  if (qword_1002CDE28 != -1)
  {
    swift_once();
  }

  v1 = qword_1002E8DC0;

  CurrentValueSubject.value.getter();

  v2 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider) hostsTranscriptionButtonInToolbar];
  v3 = 1;
  if (v5 == 1 && v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__displayMode) != 2;
  }

  return [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_transcriptionButtonItem) setHidden:v3];
}

id sub_1001B2E20()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider) hostsTrimButtonInToolbar];
  v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__activityMode);
  if (v2 == 1)
  {
    v3 = (v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_trimButtonItem);
    [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_trimButtonItem) setEnabled:0];
    v4 = 0;
    goto LABEL_5;
  }

  if (v2 == 3)
  {
    v3 = (v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_trimButtonItem);
    v4 = 1;
LABEL_5:
    v5 = &selRef_setHidden_;
    goto LABEL_7;
  }

  v6 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__isTranscriptViewDisplayed);
  v4 = v6 ^ 1;
  v3 = (v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_trimButtonItem);
  [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_trimButtonItem) setHidden:v6 & ~v1 & 1];
  v5 = &selRef_setEnabled_;
LABEL_7:
  v7 = *v3;
  v8 = *v5;

  return [v7 v8];
}

id sub_1001B2F14()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider) playbackSettingsImage];
  v2 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v1 style:0 target:v0 action:"displayPlaybackSettings"];

  v3 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_playbackSettingsButtonItem);
  *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_playbackSettingsButtonItem) = v2;
  v4 = v2;

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  [v5 setAccessibilityIdentifier:v6];

  sub_1001B4354(*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__hasPlaybackSettings));
  return v5;
}

id sub_1001B3008()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider) transcriptionImage];
  v2 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v1 style:0 target:v0 action:"toggleTranscriptView"];

  v3 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_transcriptionButtonItem);
  *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_transcriptionButtonItem) = v2;
  v4 = v2;

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  [v5 setAccessibilityIdentifier:v6];

  sub_1001B42E4(*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__isTranscriptViewDisplayed));
  return v5;
}

id sub_1001B30FC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider) trimImage];
  v2 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v1 style:0 target:v0 action:"handleTrim"];

  v3 = v2;
  v4 = String._bridgeToObjectiveC()();
  [v3 setAccessibilityIdentifier:v4];

  v5 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_trimButtonItem);
  *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_trimButtonItem) = v3;
  v6 = v3;

  return v6;
}

id sub_1001B31E0()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8, v2);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8, v4);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v21 = type metadata accessor for RCRecordingViewNavigationBarHelper();
  v20[0] = v0;
  v5 = v0;
  v6 = String._bridgeToObjectiveC()();

  v7 = v21;
  if (v21)
  {
    v8 = sub_10000AACC(v20, v21);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8, v8);
    v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    sub_100014B64(v20);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v6 style:0 target:v12 action:"cancelButtonAction"];

  swift_unknownObjectRelease();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  [v14 setAccessibilityIdentifier:v15];

  v16 = *&v5[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_cancelButtonItem];
  *&v5[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_cancelButtonItem] = v14;
  v17 = v14;

  return v17;
}

id sub_1001B34A4()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8, v2);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8, v4);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v21 = type metadata accessor for RCRecordingViewNavigationBarHelper();
  v20[0] = v0;
  v5 = v0;
  v6 = String._bridgeToObjectiveC()();

  v7 = v21;
  if (v21)
  {
    v8 = sub_10000AACC(v20, v21);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8, v8);
    v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v9 + 8))(v11, v7);
    sub_100014B64(v20);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v6 style:0 target:v12 action:"applyButtonAction"];

  swift_unknownObjectRelease();
  v14 = v13;
  v15 = String._bridgeToObjectiveC()();
  [v14 setAccessibilityIdentifier:v15];

  v16 = *&v5[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_applyButtonItem];
  *&v5[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_applyButtonItem] = v14;
  v17 = v14;

  return v17;
}

id sub_1001B3768()
{
  type metadata accessor for Locale();
  (__chkstk_darwin)();
  type metadata accessor for String.LocalizationValue();
  (__chkstk_darwin)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v17 = type metadata accessor for RCRecordingViewNavigationBarHelper();
  v16[0] = v0;
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();

  v3 = v17;
  if (v17)
  {
    v4 = sub_10000AACC(v16, v17);
    v5 = *(v3 - 8);
    __chkstk_darwin(v4, v4);
    v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v7, v3);
    sub_100014B64(v16);
  }

  else
  {
    v8 = 0;
  }

  v9 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v2 style:0 target:v8 action:"undoButtonAction"];

  swift_unknownObjectRelease();
  v10 = v9;
  v11 = String._bridgeToObjectiveC()();
  [v10 setAccessibilityIdentifier:v11];

  v12 = *&v1[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_undoButtonItem];
  *&v1[OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_undoButtonItem] = v10;
  v13 = v10;

  sub_10001BFBC();
  return v13;
}

id sub_1001B3A3C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8, v2);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8, v4);
  if (*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__doneButtonItemShowsMenu) == 1)
  {
    v5 = sub_1001B22DC();
  }

  else
  {
    v5 = sub_1001B221C();
  }

  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  [v6 setAccessibilityIdentifier:v7];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v8 = String._bridgeToObjectiveC()();

  [v6 setAccessibilityLabel:v8];

  return v6;
}

objc_class *sub_1001B3BD4()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8, v3);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8, v5);
  sub_1000067AC(0, &qword_1002D6E20);
  v6 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_styleProvider) ellipsisImage];
  v7 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper__moreMenu);
  v8 = v7;
  v16.value.super.isa = v6;
  v16.is_nil = 0;
  v17.value.super.super.isa = v7;
  v9 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v16, v17, v18).super.super.isa;
  v10 = String._bridgeToObjectiveC()();
  [(objc_class *)v9 setAccessibilityIdentifier:v10];

  v11 = v9;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v12 = String._bridgeToObjectiveC()();

  [(objc_class *)v11 setAccessibilityLabel:v12];

  v13 = *(v1 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_moreActionsButtonItem);
  *(v1 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_moreActionsButtonItem) = v11;
  v14 = v11;

  return v14;
}

id sub_1001B3E44()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + OBJC_IVAR____TtC10VoiceMemos34RCRecordingViewNavigationBarHelper_transcriptionButtonItem);
    [v2 performControlsAction:42 position:v3 source:0.0];

    swift_unknownObjectRelease();
  }

  return sub_1001B2E20();
}

uint64_t sub_1001B402C(void *a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(v2 + *a1);
    [v6 performControlsAction:a2 position:v7 source:0.0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001B410C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_10010D1B8(a1, v11);
    v4 = v12;
    if (v12)
    {
      v5 = sub_10000AACC(v11, v12);
      v6 = *(v4 - 8);
      v7 = __chkstk_darwin(v5, v5);
      v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v9, v7);
      v10 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v6 + 8))(v9, v4);
      sub_100014B64(v11);
    }

    else
    {
      v10 = 0;
    }

    [v3 performControlsAction:24 position:v10 source:0.0];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1001B4370(char a1, uint64_t *a2, SEL *a3, SEL *a4)
{
  v8 = *a2;
  [*(v4 + *a2) setSelected:a1 & 1];
  v12 = [objc_opt_self() sharedStyleProvider];
  if ([v12 shouldUseTintedImageForSelectedUIBarButtonItems])
  {
    v9 = *(v4 + v8);
    if (a1)
    {
      v10 = a3;
    }

    else
    {
      v10 = a4;
    }

    v11 = [v12 *v10];
    [v9 setImage:v11];
  }
}

id sub_1001B44F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCRecordingViewNavigationBarHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001B4644(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1001B470C(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t (*sub_1001B4770(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1001B47F0;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1001B47F8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    return sub_1001B5170;
  }

  __break(1u);
  return result;
}

void (*sub_1001B4878(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1001B48F8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001B4900(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1001B511C(&unk_1002D6E58, &qword_1002D6E50);
          for (i = 0; i != v6; ++i)
          {
            sub_1000C773C(&qword_1002D6E50);
            v9 = sub_1001B47F8(v13, i, a3);
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
        sub_1000067AC(0, &qword_1002D13B0);
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

uint64_t sub_1001B4AA0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1001B511C(&unk_1002D6E40, &qword_1002D6E38);
          for (i = 0; i != v6; ++i)
          {
            sub_1000C773C(&qword_1002D6E38);
            v9 = sub_1001B4878(v13, i, a3);
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
        sub_1000067AC(0, &qword_1002CFE50);
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

uint64_t sub_1001B4C40(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1001B511C(&qword_1002D6E88, &qword_1002D6E80);
          for (i = 0; i != v6; ++i)
          {
            sub_1000C773C(&qword_1002D6E80);
            v9 = sub_1001B47F8(v13, i, a3);
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
        sub_1000067AC(0, &qword_1002D1208);
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

uint64_t sub_1001B4DE0(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1001B511C(&unk_1002D6E70, &qword_1002D6E68);
          for (i = 0; i != v6; ++i)
          {
            sub_1000C773C(&qword_1002D6E68);
            v9 = sub_1001B4770(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        sub_1000C773C(&qword_1002D1200);
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

uint64_t sub_1001B4F7C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_1001B511C(&qword_1002D6E30, &qword_1002D6E28);
          for (i = 0; i != v6; ++i)
          {
            sub_1000C773C(&qword_1002D6E28);
            v9 = sub_1001B47F8(v13, i, a3);
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
        sub_1000067AC(0, &qword_1002D6E20);
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

uint64_t sub_1001B511C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B5274()
{
  v1 = sub_1000C773C(&unk_1002D4320);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v6);
  v8 = &v12 - v7;
  v9 = type metadata accessor for RCDoneButton();
  v12.receiver = v0;
  v12.super_class = v9;
  objc_msgSendSuper2(&v12, "updateConfiguration");
  UIButton.configuration.getter();
  v10 = type metadata accessor for UIButton.Configuration();
  if (!(*(*(v10 - 8) + 48))(v8, 1, v10))
  {

    UIButton.Configuration.title.setter();
  }

  sub_1001B5490(v8, v4);
  UIButton.configuration.setter();
  return sub_1001B5500(v8);
}

id sub_1001B540C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCDoneButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001B5490(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&unk_1002D4320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B5500(uint64_t a1)
{
  v2 = sub_1000C773C(&unk_1002D4320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1001B5568()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8, v2);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8, v4);
  v5 = OBJC_IVAR____TtC10VoiceMemos12RCDoneButton_styleProvider;
  *(v0 + v5) = [objc_opt_self() sharedStyleProvider];
  *(v0 + OBJC_IVAR____TtC10VoiceMemos12RCDoneButton_defaultPadding) = 0x4034000000000000;
  v6 = (v0 + OBJC_IVAR____TtC10VoiceMemos12RCDoneButton_titleString);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *v6 = String.init(localized:table:bundle:locale:comment:)();
  v6[1] = v7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001B5734(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RecorderAppDelegate applicationWillTerminate:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s -- VMAudioService shutdown error: %@", &v2, 0x16u);
}

void sub_1001B57C0(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RecorderAppDelegate(RCTesting) _selectFirstVoiceMemoInActiveRecordingsCollectionViewControllerWithCompletionBlock:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Failed to select first voice memo in the active collectionViewController", &v1, 0xCu);
}

void sub_1001B5844(id *a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 21);
    v2 = [a1 isRunning];
    if (v2 != [WeakRetained ioStarted])
    {
      [WeakRetained setIoStarted:v2];
    }
  }
}

void sub_1001B58C4(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 184) == 0.0)
    {
      RCCurrentMediaTime();
      *(a1 + 184) = v2;
    }

    sub_1001B595C(a1);
    sub_100039CDC();
    v4 = 3221225472;
    v5 = sub_100037FB8;
    v6 = &unk_10028A3B8;
    v7 = a1;
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_1001B595C(uint64_t a1)
{
  if (!a1 || (*(a1 + 136) & 1) != 0)
  {
    return;
  }

  os_unfair_lock_lock((a1 + 140));
  RCCurrentMediaTime();
  v3 = v2;
  v4 = [sub_100039D84() firstObject];
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  while (1)
  {
    v6 = [v5 audioTime];
    +[AVAudioTime secondsForHostTime:](AVAudioTime, "secondsForHostTime:", [v6 hostTime]);
    v8 = v7;

    v9 = [v5 audioBuffer];
    v10 = v9;
    v11 = *(a1 + 184);
    if (v11 != 0.0)
    {
      break;
    }

    v12 = [v9 frameLength];
    v13 = [v10 format];
    [v13 sampleRate];
    v15 = v12 / v14;

    VMAudioWriteDelay();
    if (v8 + v15 > v3 - v16)
    {
      goto LABEL_18;
    }

    sub_1001B6640(a1, v10);
LABEL_9:
    [sub_100039D84() removeObjectAtIndex:0];
    v17 = [sub_100039D84() firstObject];

    v5 = v17;
    if (!v17)
    {
      goto LABEL_19;
    }
  }

  v18 = fmax(v11 - v8, 0.0);
  v19 = [v9 format];
  [v19 sampleRate];
  v21 = (v18 * v20);

  v22 = [v10 frameLength];
  v23 = v22;
  if (v22 >= v21)
  {
    v24 = v21;
  }

  else
  {
    v24 = v22;
  }

  if (v24 < [v10 frameLength])
  {
    [v10 setFrameLength:v24];
  }

  sub_1001B6640(a1, v10);
  if (v23 < v21)
  {
    goto LABEL_9;
  }

  *(a1 + 136) = 1;
LABEL_18:

LABEL_19:
  if (*(a1 + 136) == 1)
  {
    [sub_100039D84() removeAllObjects];
  }

  os_unfair_lock_unlock((a1 + 140));
}

void sub_1001B5B98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v16 = v5;
    v6 = a3;
    sub_1001B5CEC(a1, v16, v6);
    sub_1001B595C(a1);
    v7 = [v16 frameLength];
    v8 = [v6 hostTime];

    v9 = *(a1 + 208);
    *(a1 + 208) = v9 + v7;
    v10 = *(a1 + 48);
    v11 = 16;
    if (v10 != a1 + 16)
    {
      v11 = -16;
    }

    v12 = v10 + v11;
    *(a1 + 48) = v12;
    *(v12 + 8) = v9;
    **(a1 + 48) = v8 - [AVAudioTime hostTimeForSeconds:*(a1 + 104)];
    WeakRetained = objc_loadWeakRetained((a1 + 168));
    v14 = [WeakRetained waveformDataSource];
    v15 = [v14 waveformGenerator];

    if (v15 && [v15 state] == 1)
    {
      [v15 appendAveragePowerLevelsByDigestingAudioPCMBuffer:v16];
    }

    v5 = v16;
  }
}

void sub_1001B5CEC(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    os_unfair_lock_lock((a1 + 140));
    v7 = *(a1 + 200);
    v8 = [[VMRecordingEngineBuffer alloc] initWithAudioBuffer:v6 audioTime:v5];

    [v7 addObject:v8];

    os_unfair_lock_unlock((a1 + 140));
  }
}

uint64_t sub_1001B5DA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = v6;
    [v8 rc_hostTimeInSeconds];
    v10 = v9;
    [v5 rc_durationInSeconds];
    RCTimeRangeMake();
    v12 = v11;
    v14 = v13;
    [*(a1 + 112) rc_hostTimeInSeconds];
    v16 = v15;
    v17 = OSLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sub_100039CFC();
      v36 = v16;
      v37 = v18;
      v38 = v12;
      v39 = v18;
      v40 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s -- playerBegin = %f, bufferRange = [%f - %f]", &v34, 0x2Au);
    }

    if (RCTimeRangeContainsTime())
    {
      v19 = v16 - v10;
      [v8 sampleRate];
      v21 = (v19 * v20);
      v22 = OSLogForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        sub_100039CFC();
        v36 = v19;
        v37 = 1024;
        LODWORD(v38) = v21;
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "%s -- durationToSkip = %f, framesToSkip = %u", &v34, 0x1Cu);
      }

      if (v21 < 1 || v21 >= [v5 frameLength])
      {
        sub_1000385E4(a1, v5, v8);
      }

      else
      {
        v23 = [v5 trimmedBuffer:v21];
        if (v23)
        {
          v24 = [v8 rc_adjustedBySamples:v21];
          sub_1000385E4(a1, v23, v24);
        }

        else
        {
          v24 = OSLogForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            v34 = 136315138;
            v35 = "[VMRecordingEngine _recordTrimmedAudioBuffer:time:]";
            _os_log_fault_impl(&_mh_execute_header, v24, OS_LOG_TYPE_FAULT, "%s -- could not allocate trimmed buffer", &v34, 0xCu);
          }
        }
      }
    }

    else
    {
      if (v16 >= v10)
      {
        a1 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v25 = v10 - v16;
      v26 = OSLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        sub_100039CFC();
        v36 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s -- padding first buffer with %f seconds of silence", &v34, 0x16u);
      }

      [v8 sampleRate];
      v28 = (v25 * v27);
      v29 = [AVAudioPCMBuffer alloc];
      v30 = [v5 format];
      v31 = [v29 initWithPCMFormat:v30 frameCapacity:v28];

      [v31 setFrameLength:v28];
      v32 = [v8 rc_adjustedBySeconds:v25];
      sub_1000385E4(a1, v31, v32);
      sub_1000385E4(a1, v5, v8);
    }

    a1 = 1;
    goto LABEL_21;
  }

LABEL_22:

  return a1;
}

void sub_1001B6150(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = OSLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v19 = "[VMRecordingEngine _startPlayback:time:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s -- First overdub buffer received", buf, 0xCu);
    }

    v8 = *(a1 + 120);
    v9 = [[VMRecordingEngineBuffer alloc] initWithAudioBuffer:v6 audioTime:v5];

    [v8 addObject:v9];
    v10 = dispatch_get_global_queue(25, 0);
    sub_100039CDC();
    v14 = 3221225472;
    v15 = sub_100038AF8;
    v16 = &unk_10028A3B8;
    v17 = a1;
    dispatch_async(v11, block);

    v12 = *(a1 + 128);
    *(a1 + 128) = &stru_10028A558;
  }
}

void sub_1001B62E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 140));
    v7 = *(a1 + 112);
    os_unfair_lock_unlock((a1 + 140));
    v8 = *(a1 + 120);
    if (v7)
    {
      v9 = v8;
      v10 = v9;
      if (*(a1 + 120))
      {
        v29 = v5;
        v11 = [v9 objectEnumerator];
        v12 = *(a1 + 120);
        *(a1 + 120) = 0;

        v13 = 0;
        do
        {
          v14 = v13;
          v13 = [v11 nextObject];

          if (!v13)
          {

            v5 = v29;
            goto LABEL_19;
          }

          v15 = [v13 audioBuffer];
          v16 = [v13 audioTime];
          v17 = sub_1001B5DA0(a1, v15, v16);
        }

        while (!v17);
        v28 = v10;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v18 = v11;
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v31;
          do
          {
            v22 = 0;
            v23 = v13;
            do
            {
              if (*v31 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v13 = *(*(&v30 + 1) + 8 * v22);

              v24 = [v13 audioBuffer];
              v25 = [v13 audioTime];
              sub_1000385E4(a1, v24, v25);

              v22 = v22 + 1;
              v23 = v13;
            }

            while (v20 != v22);
            v20 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v20);
        }

        v5 = v29;
        sub_1000385E4(a1, v29, v6);
        [a1 _startRecording];
      }

      else
      {
LABEL_19:
        v27 = *(a1 + 128);
        *(a1 + 128) = &stru_10028A578;

        sub_1001B65BC(a1, v5, v6);
      }
    }

    else
    {
      v26 = [[VMRecordingEngineBuffer alloc] initWithAudioBuffer:v5 audioTime:v6];
      [v8 addObject:v26];
    }
  }
}

void sub_1001B65BC(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (a1 && sub_1001B5DA0(a1, v6, v5))
  {
    [a1 _startRecording];
  }
}

void sub_1001B6640(id *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && [v3 frameLength])
  {
    v5 = [a1[19] url];
    if (v5)
    {
      v6 = a1[19];
      v9 = 0;
      v7 = [v6 writeFromBuffer:v4 error:&v9];
      v8 = v9;
      if ((v7 & 1) == 0)
      {
        [a1 _handleRecordingError:v8];
      }
    }

    else
    {
      v8 = OSLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v11 = "[VMRecordingEngine _writeBufferToStorage:]";
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s -- Attempted to write audio without asset writer", buf, 0xCu);
      }
    }
  }
}

void sub_1001B6CC8(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCRecorderStyleProvider multitrackImageForLayerNumber:rounded:slash:circleFill:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s -- Unable to load multitrackImage: %@", &v2, 0x16u);
}

void sub_1001B6D68(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCShuttleBar setRecentlyDeleted:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Unexpected number of columns and rows in RCShuttleBar", &v1, 0xCu);
}

void sub_1001B6FAC()
{
  v1[0] = 136315394;
  sub_100039D10();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s -- Unexpected itemIdentifier %@", v1, 0x16u);
}

void sub_1001B702C()
{
  v1[0] = 136315394;
  sub_100039D10();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s -- unexpected supplementary element kind - %@", v1, 0x16u);
}

void sub_1001B70AC(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[RCRecordingCellDisplayModel recordingDisplayModelWithTitle:creationDate:duration:UUID:recentlyDeleted:representsDownloadingFile:isFavorite:isEnhanced:hasTranscription:hasMultipleTracks:isSpatialRecording:wasManuallyRenamed:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s -- RCRecordingDisplayModel created with a nil UUID", &v1, 0xCu);
}

void sub_1001B7158(void *a1, uint64_t a2)
{
  v5 = +[NSAssertionHandler currentHandler];
  v4 = [a1 accessibilityContainer];
  [v5 handleFailureInMethod:a2 object:a1 file:@"RCWaveformSelectionOverlay.m" lineNumber:1261 description:{@"Unexpected class for container of waveform selection bar: %@", v4}];
}

void sub_1001B71F0(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[VMAudioOutputRenderer _prepareAudioUnits:maxFramesPerRender:]";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%s -- Failed to create time stretch audio unit with error - %@", &v2, 0x16u);
}

void sub_1001B7290()
{
  v3[0] = 136315650;
  sub_100039D10();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%s -- Incorrect file extension for multi layer voice memo. Changing from %@ to %@.", v3, 0x20u);
}

void sub_1001B75EC()
{
  v1[0] = 136315394;
  sub_100039D10();
  _os_log_fault_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "%s -- Failed to remove title metadata in place, no known handler for error: %@", v1, 0x16u);
}

void sub_1001B7850(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCWaveformColorCalculator resolvedColorWithLiveWaveform:selected:muted:trimMode:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- ERROR: RCWaveformColorOptions as index is out of bounds for _resolvedColors", &v1, 0xCu);
}

void sub_1001B78D4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCWaveformRenderer _renderTimeRangeOfSegments:withDuration:needsWaveformCalculation:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- requestedPillsToRender.length is 0. There will be nothing to render.", &v1, 0xCu);
}

void sub_1001B7958(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCWaveformRenderer _renderTimeRangeOfSegments:withDuration:needsWaveformCalculation:]_block_invoke";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Failed to create waveform slices. Will re-attempt on the next try.", &v1, 0xCu);
}

void sub_1001B7A08()
{
  sub_100039D10();
  sub_100069C4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001B7B04()
{
  sub_100039D10();
  sub_100069C4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001B7B80()
{
  sub_100039D10();
  sub_100069C4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001B7CFC()
{
  sub_100039D10();
  sub_100069C4C();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001B7DEC(void *a1, NSObject *a2)
{
  v3 = [a1 recordingID];
  v4[0] = 136315394;
  sub_100039D10();
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s -- Recording already started for recordingID = %@", v4, 0x16u);
}

void sub_1001B7F74(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCStoreChangeMerger handleChange:]_block_invoke";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s -- ERROR:  transaction is malformed:  %@", &v2, 0x16u);
}

void sub_1001B8000(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a1 + 16);
  v4 = 136315650;
  v5 = "[RCStoreChangeMerger handleChange:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- ERROR: failed to load transaction after current token %@ (%@)", &v4, 0x20u);
}

void sub_1001B80A0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 48);
  v3 = 136315394;
  v4 = "[RCRecordingsCollectionViewControllerDataCoordinator _performSearch]_block_invoke_2";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s -- Failed to query transcripts via spotlight, error = %@", &v3, 0x16u);
}

void sub_1001B8144(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCTimelineGenerator timelinesForDateInterval:displayedRecordingTime:timelineIdentifier:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s -- Unable to generate timelines for a nil recording start time.", &v1, 0xCu);
}

void sub_1001B81C8(void *a1)
{
  v1 = [a1 bls_shortLoggingString];
  sub_100039D10();
  sub_100071968(&_mh_execute_header, v2, v3, "%s -- recording start time = %@", v4, v5, v6, v7, 2u);
}

void sub_1001B8258()
{
  v0 = RCDebugStringForTimeInterval();
  sub_100039D10();
  sub_100071968(&_mh_execute_header, v1, v2, "%s -- recording elapsed time = %@", v3, v4, v5, v6, 2u);
}

void sub_1001B82E8(void *a1)
{
  v1 = [a1 startDate];
  v2 = [v1 bls_shortLoggingString];
  sub_100039D10();
  sub_100071968(&_mh_execute_header, v3, v4, "%s -- timeline start date = %@", v5, v6, v7, v8, 2u);
}

void sub_1001B8390(void *a1)
{
  v1 = [a1 endDate];
  v2 = [v1 bls_shortLoggingString];
  sub_100039D10();
  sub_100071968(&_mh_execute_header, v3, v4, "%s -- timeline end date = %@", v5, v6, v7, v8, 2u);
}

void sub_1001B8438(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [a2 endDate];
  v6 = 136315650;
  v7 = "[RCTimelineGenerator _dateEntriesForRecordingStartTime:lastRecordingTime:elapsedTimeAtRecordingStart:recordingDurationAtRecordingStart:timelineDateInterval:]";
  v8 = 2112;
  v9 = a1;
  v10 = 2112;
  v11 = v5;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "%s -- Unable to generate timeline date entries. The recordingStartTime %@ must not be later than the timelineDateInterval.endDate %@", &v6, 0x20u);
}

void sub_1001B84FC()
{
  v2 = 136315650;
  sub_100039D10();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- Integrity lost with visible UUIDS:\n%@\ndata UUIDs:\n%@\n", v2);
}

void sub_1001B8578(char a1, NSObject *a2)
{
  if (a1)
  {
    v2 = &stru_100295BB8;
  }

  else
  {
    v2 = @"do not ";
  }

  v3 = 136315394;
  v4 = "[RCRecordingsCollectionViewController _logWhetherVisibleCellsHaveIntegrity]";
  v5 = 2112;
  v6 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s -- Change type: Visible cells %@have integrity", &v3, 0x16u);
}

void sub_1001B861C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCRecordingsCollectionViewController selectItemWithUUID:animated:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Attempting to select a UUID with an invalid indexPath", &v1, 0xCu);
}

void sub_1001B86A0()
{
  v2 = 136315650;
  sub_100039D10();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- loadFileRepresentationForTypeIdentifier failed for url %@ - error: '%@'", v2);
}

void sub_1001B871C()
{
  v1[0] = 136315394;
  sub_100039D10();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "%s -- WARNING: no recording matching URI: '%@'", v1, 0x16u);
}

void sub_1001B879C(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 cellWhoseTitleIsBeingEdited];
  v7[0] = 136315650;
  sub_100039D10();
  v8 = v6;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "%s -- prior cell being edited: %@ is the one whose editing is ending: %@", v7, 0x20u);
}

void sub_1001B8850(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCRecordingsCollectionViewController _searchScopeForScopeButtonIndex:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- Unexpected scope button index", &v1, 0xCu);
}

void sub_1001B88D4()
{
  v1[0] = 136315394;
  sub_100039D10();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s -- registerError = %@", v1, 0x16u);
}

void sub_1001B8954()
{
  v1[0] = 136315394;
  sub_100039D10();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s -- recordingsCollectionViewController thinks cell %@ is being edited, but it is not", v1, 0x16u);
}

void sub_1001B89D4(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCCompositionComposedAssetWriter writeCompositionWithCompletionBlock:]";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%s -- ERROR: Unable to create temporary directory URLForDirectory error = %@", &v2, 0x16u);
}

void sub_1001B8A60(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCCompositionComposedAssetWriter writeCompositionWithCompletionBlock:]_block_invoke";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- ERROR: Unable to compose recording - there was a problem determining export settings", &v1, 0xCu);
}

void sub_1001B8AE4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(*a1 + 8);
  v4 = *(*(*a2 + 8) + 40);
  v5 = 136315650;
  v6 = "[RCCompositionComposedAssetWriter writeCompositionWithCompletionBlock:]_block_invoke";
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- ERROR: Unable to compose recording - _exportSession = %@, underlying error = %@", &v5, 0x20u);
}

void sub_1001B8B90(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCCompositionComposedAssetWriter writeCompositionWithCompletionBlock:]_block_invoke";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s -- Export session produced file with no audio tracks", &v1, 0xCu);
}

void sub_1001B8C14(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCDisplayLinkManager _pauseDisplayLink]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Pausing display link", &v1, 0xCu);
}

void sub_1001B8C98(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCDisplayLinkManager _startDisplayLinkIfNeeded]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Starting display link", &v1, 0xCu);
}

void sub_1001B8D1C(os_log_t log, float a2)
{
  v2 = 136315394;
  v3 = "[RCDisplayLinkManager setPreferredFrameRateRange:]";
  v4 = 2048;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- preferredFrameRate = %f", &v2, 0x16u);
}

void sub_1001B8EA0(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCPlatterWaveformView removeSliceWithType:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Unexpected slice type", &v1, 0xCu);
}

void sub_1001B8F9C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCRecordingViewController _trackIndexForCurrentTrackState]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Unexpected multi-track state", &v1, 0xCu);
}

void sub_1001B9020(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCPlatterSceneDelegate scene:willConnectToSession:options:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s -- No recording in progress", &v1, 0xCu);
}

void sub_1001B90A4(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 136315394;
  v5 = "[RCRecordingsModelInteractor duplicateRecordingWithUUID:]";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s -- Error duplicating file: %@", &v4, 0x16u);
}

void sub_1001B9150(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCRecordingsModelInteractor builtInFolderOfType:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Requesting a built-in folder of type 'RCFolderTypeUserDefined' is invalid.", &v1, 0xCu);
}

void sub_1001B91D4(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCRecordingsModelInteractor builtInFolderOfType:]";
  v4 = 2048;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s -- Unexpected built-in folder type %lu", &v2, 0x16u);
}

void sub_1001B9260()
{
  v1[0] = 136315394;
  sub_100039D10();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s -- ERROR: fetching places of interest: %@", v1, 0x16u);
}

void sub_1001B92E0()
{
  v1[0] = 136315394;
  sub_100039D10();
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s -- %@", v1, 0x16u);
}

void sub_1001B95A4(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = [NSNumber numberWithUnsignedInteger:a1];
  v6 = [a2 currentRoute];
  v7 = 136315650;
  v8 = "[VMAudioService _handleAudioSessionNotification:]";
  v9 = 2112;
  v10 = v5;
  v11 = 2112;
  v12 = v6;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%s -- reason = %@, currentRoute = %@", &v7, 0x20u);
}

void sub_1001BA464(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCFoldersFetchedResultsController userFolders]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s -- ERROR: FRC Unable to perform fetch (%@.)", &v2, 0x16u);
}

void sub_1001BA4F0(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCFoldersDiffableDataSource collectionView:viewForSupplementaryElementOfKind:atIndexPath:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s -- unexpected supplementary element kind - %@", &v2, 0x16u);
}

void sub_1001BA57C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCFolderBrowsingCollectionViewController _pushViewControllerForFolderOfType:withName:folderUUID:animated:completion:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- Unable to push view controller. UISplitViewController is nil", &v1, 0xCu);
}

void sub_1001BA600(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCFolderBrowsingCollectionViewController goToBuiltInFolderOfType:animated:completion:]";
  v4 = 2048;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s -- Unable to navigate to built-in folder of type %ld", &v2, 0x16u);
}

void sub_1001BA68C(os_log_t log)
{
  v1 = 136315138;
  v2 = "+[RCRecordingDisplayModel recordingDisplayModelWithTitle:creationDate:duration:UUID:recentlyDeleted:representsDownloadingFile:isFavorite:isEnhanced:hasTranscription:isSpatialRecording:wasManuallyRenamed:]";
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "%s -- RCRecordingDisplayModel created with a nil UUID", &v1, 0xCu);
}

void sub_1001BA710(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCMainViewController setForegroundCompletionBlock:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Set foreground completion block in main view controller while it was already set to something else - this must be investigated", &v1, 0xCu);
}

void sub_1001BA794(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCMainViewController performAction:atPosition:forUUID:sourceController:source:trackIndex:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- UUID == nil, but action requires UUID", &v1, 0xCu);
}

void sub_1001BA818(uint64_t a1, void *a2)
{
  v2 = [a2 playbackSettings];
  v3 = [v2 uuid];
  sub_1000AA4C0();
  sub_1000AA4DC(&_mh_execute_header, v4, v5, "%s -- Unable to toggle Speech Isolator. UUID being displayed %@ does not match the UUID in the playbackSettings %@", v6, v7, v8, v9, 2u);
}

void sub_1001BA8C8(uint64_t a1, void *a2)
{
  v2 = [a2 playbackSettings];
  v3 = [v2 uuid];
  sub_1000AA4C0();
  sub_1000AA4DC(&_mh_execute_header, v4, v5, "%s -- Unable to toggle Speech Isolator. UUID being displayed %@ does not match the UUID in the playbackSettings %@", v6, v7, v8, v9, 2u);
}

void sub_1001BA978(uint64_t a1, void *a2)
{
  v2 = [a2 playbackSettings];
  v3 = [v2 uuid];
  sub_1000AA4C0();
  sub_1000AA4DC(&_mh_execute_header, v4, v5, "%s -- Unable to toggle Remove Silence. UUID being displayed %@ does not match the UUID in the playbackSettings %@", v6, v7, v8, v9, 2u);
}

void sub_1001BAA3C(void *a1, NSObject *a2)
{
  v3 = 136315394;
  v4 = "[RCApplicationModel _recordingsControllerWithFolder:]";
  v5 = 2048;
  v6 = [a1 folderType];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s -- Invalid folder type %li", &v3, 0x16u);
}

void sub_1001BAADC(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RCApplicationModel.m" lineNumber:169 description:{@"Invalid parameter not satisfying: %@", @"folder.folderType == RCFolderTypeUserDefined"}];
}

void sub_1001BAB58(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RCApplicationModel.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"newIndex < folders.count"}];
}

void sub_1001BABD4(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[RCApplicationModel moveFolder:toIndexPath:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s -- existing index not found: %@", &v2, 0x16u);
}

void sub_1001BAC60(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCApplicationModel insertRecordingWithAudioFile:duration:date:customTitleBase:uniqueID:error:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- No locations of interest discovered near current location.", &v1, 0xCu);
}

void sub_1001BACE4(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCSplitViewController setViewController:forColumn:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Unexpected view controller type for UISplitViewControllerColumnSupplementary", &v1, 0xCu);
}

void sub_1001BAD7C(void *a1)
{
  v1 = [a1 recordingError];
  sub_100039D10();
  sub_1000BE558();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001BAE94(void *a1)
{
  v1 = [a1 recordingError];
  sub_100039D10();
  sub_1000BE558();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001BAF2C(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCMainControllerHelper _beginOrResumeCaptureSessionWithReplace:trackIndex:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Cannot begin replace / resume yet - unable to acquire access token.", &v1, 0xCu);
}

void sub_1001BAFB0()
{
  sub_100039D10();
  sub_10008CF64();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001BB02C()
{
  sub_100039D10();
  sub_10008CF64();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001BB128(uint64_t a1, void *a2)
{
  v2 = [a2 uuidOfPlayingRecording];
  sub_1000AA4C0();
  sub_1000BE558();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1001BB1D0(uint64_t a1, void *a2)
{
  v2 = [a2 uuidOfPlayingRecording];
  sub_1000AA4C0();
  sub_1000BE558();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

void sub_1001BB278()
{
  sub_100039D10();
  sub_10008CF64();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001BB374(void *a1)
{
  v1 = [a1 recordingError];
  sub_100039D10();
  sub_1000BE558();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001BB40C()
{
  sub_100039D10();
  sub_10008CF64();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001BB488()
{
  sub_100039D10();
  sub_10008CF64();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001BB504()
{
  v2 = 136315650;
  sub_1000BE53C();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- cannot get silence removed for UUID %@ that does not match audio player UUID %@", v2);
}

void sub_1001BB578()
{
  v2 = 136315650;
  sub_1000BE53C();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- cannot get playback speed for UUID %@ that does not match audio player UUID %@", v2);
}

void sub_1001BB5EC()
{
  v2 = 136315650;
  sub_1000BE53C();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- cannot get layer mix for UUID %@ that does not match audio player UUID %@", v2);
}

void sub_1001BB660()
{
  v2 = 136315650;
  sub_1000BE53C();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- cannot get speech isolator enabled for UUID %@ that does not match audio player UUID %@", v2);
}

void sub_1001BB6D4()
{
  v2 = 136315650;
  sub_1000BE53C();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- cannot get speech isolator for UUID %@ that does not match audio player UUID %@", v2);
}

void sub_1001BB748()
{
  v2 = 136315650;
  sub_1000BE53C();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- cannot set remove silence for UUID %@ that does not match audio player UUID %@", v2);
}

void sub_1001BB7BC()
{
  v2 = 136315650;
  sub_1000BE53C();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- cannot set playback speed for UUID %@ that does not match audio player UUID %@", v2);
}

void sub_1001BB830()
{
  v2 = 136315650;
  sub_1000BE53C();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- cannot set layer mix for UUID %@ that does not match audio player UUID %@", v2);
}

void sub_1001BB8A4()
{
  v2 = 136315650;
  sub_1000BE53C();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- cannot set looping for UUID %@ that does not match audio player UUID %@", v2);
}

void sub_1001BB918()
{
  v2 = 136315650;
  sub_1000BE53C();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- cannot set speech isolator enabled for UUID %@ that does not match audio player UUID %@", v2);
}

void sub_1001BB98C()
{
  v2 = 136315650;
  sub_1000BE53C();
  sub_100078F88(&_mh_execute_header, v0, v1, "%s -- cannot set speech isolator for UUID %@ that does not match audio player UUID %@", v2);
}

void sub_1001BBA00(void *a1)
{
  v1 = [a1 recordingError];
  sub_100039D10();
  sub_1000BE558();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001BBA98(void *a1)
{
  v1 = [a1 recordingError];
  sub_100039D10();
  sub_1000BE558();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_1001BBB30(void *a1)
{
  v1 = [a1 uuid];
  sub_100039D10();
  sub_100071968(&_mh_execute_header, v2, v3, "%s -- addObserver %@", v4, v5, v6, v7, 2u);
}

void sub_1001BBBC0(void *a1)
{
  v1 = [a1 uuid];
  sub_100039D10();
  sub_100071968(&_mh_execute_header, v2, v3, "%s -- removeObserver %@", v4, v5, v6, v7, 2u);
}

void sub_1001BBC50(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCMainControllerHelper setAllowedTimeRange:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- use actual time ranges for this please.", &v1, 0xCu);
}

void sub_1001BBCD4()
{
  sub_100039D10();
  sub_10008CF64();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001BBD50(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "+[RCShareableComposition _createTemporaryDirectory]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s -- Failed to create temporary directory: %@", &v2, 0x16u);
}

void sub_1001BBDDC(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[RCShareableComposition _cleanUpManagedTemporaryDirectories]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- Failed to clean up shared file URL", buf, 0xCu);
}

void sub_1001BBE2C(void *a1, NSObject *a2)
{
  v4 = [a1 composition];
  v5 = [v4 decomposedFragments];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
  v7 = 136315650;
  v8 = "[RCShareableComposition activityViewController:itemsForActivityType:]";
  v9 = 2112;
  v10 = a1;
  v11 = 2112;
  v12 = v6;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "%s -- composition %@ is not shareable (has %@ decomposed fragments yet to be composed)", &v7, 0x20u);
}

uint64_t EntityProperty<>.init(title:)()
{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)()
{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

uint64_t AttributedString.Runs.subscript.getter()
{
  return AttributedString.Runs.subscript.getter();
}

{
  return AttributedString.Runs.subscript.getter();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

__C::CMTime __swiftcall CMTime.init(value:timescale:)(Swift::Int64 value, Swift::Int32 timescale)
{
  v2 = CMTime.init(value:timescale:)(value, *&timescale);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = *(&v3 + 4);
  result.value = v2;
  return result;
}

__C::CMTime __swiftcall CMTime.init(seconds:preferredTimescale:)(Swift::Double seconds, Swift::Int32 preferredTimescale)
{
  v2 = CMTime.init(seconds:preferredTimescale:)(*&preferredTimescale, seconds);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = *(&v3 + 4);
  result.value = v2;
  return result;
}

uint64_t _NSRange.init<A, B>(_:in:)()
{
  return _NSRange.init<A, B>(_:in:)();
}

{
  return _NSRange.init<A, B>(_:in:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}