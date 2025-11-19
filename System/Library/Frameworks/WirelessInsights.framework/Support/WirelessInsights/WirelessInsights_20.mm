void *sub_10019888C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1001988C0();
}

void *sub_1001988C0()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  v4 = __chkstk_darwin(v2);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  swift_defaultActor_initialize();
  _s25LocationEnvironmentReaderCMa();
  *(v0 + 112) = sub_100182524();
  _s11IOKitReaderCMa();
  *(v0 + 120) = sub_100180E3C();
  _s12MotionReaderCMa(0);
  *(v0 + 128) = sub_10018877C();
  _s24WiFiInterfaceStateReaderCMa();
  *(v0 + 136) = sub_10019279C([objc_allocWithZone(CWFInterface) initWithServiceType:1]);
  *(v0 + 144) = _swiftEmptyArrayStorage;
  *(v0 + 152) = 0;
  v12 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_lastNoTransitionEventTimestamp;
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v14(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshots) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_transitionEventsToSend) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_numberOfEventsUndersampledOnNoTransition) = 0;
  v14(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_startTimeOfCurrentSnapshotTask, 1, 1, v13);
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask) = 0;
  v14(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkDownChange, 1, 1, v13);
  v14(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkUpChange, 1, 1, v13);
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask) = 0;
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_wistoolTreatDisassocAsBeaconLost) = 0;
  *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_undersamplingNoTransitionEvent) = 0;
  v15 = type metadata accessor for WiFiToCellTransitionMonitor();
  v30.receiver = v0;
  v30.super_class = v15;
  v16 = objc_msgSendSuper2(&v30, "init");
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  type metadata accessor for MainActor();
  v18 = v16;
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = &protocol witness table for MainActor;
  v20[4] = v18;
  v20[5] = ObjectType;
  sub_100176B80(0, 0, v11, &unk_10024AC40, v20);

  v21 = v18[17];

  sub_1001928CC(6, sub_10019B3C0, v18);

  v22 = v28;
  sub_100003E50(&off_1002B69B8, v7);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "WiFiToCellTransitionMonitor. Finished init", v25, 2u);
  }

  (*(v22 + 8))(v7, v2);
  return v18;
}

uint64_t sub_100198E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100198F30, v6, v5);
}

uint64_t sub_100198F30()
{
  v1 = v0[6];

  if (qword_1002D9FA0 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  swift_beginAccess();
  swift_weakAssign();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100198FEC(void *a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a1;

  v10 = a1;
  sub_100176B80(0, 0, v7, &unk_10024ADC0, v9);
}

uint64_t sub_100199100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = *((swift_isaMask & *a4) + 0x2A8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_10017F434;

  return v11(a5);
}

uint64_t sub_100199264()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - v9;
  v11 = *(v0 + 120);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v11;
  swift_retain_n();
  sub_100176B80(0, 0, v10, &unk_10024AC50, v13);

  sub_100003E50(&off_1002B69B8, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "WiFiToCellTransitionMonitor. Deinit", v16, 2u);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);

  v17 = *(v1 + 120);

  v18 = *(v1 + 128);

  v19 = *(v1 + 136);

  v20 = *(v1 + 144);

  sub_1000157F0(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_lastNoTransitionEventTimestamp, &unk_1002D7BD0, &unk_10024A800);
  v21 = *(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshots);

  v22 = *(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_transitionEventsToSend);

  sub_1000157F0(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_startTimeOfCurrentSnapshotTask, &unk_1002D7BD0, &unk_10024A800);
  v23 = *(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask);

  sub_1000157F0(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkDownChange, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkUpChange, &unk_1002D7BD0, &unk_10024A800);
  v24 = *(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1001995A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[2] = a4;
  v5 = *a4 + 280;
  v4[3] = *v5;
  v4[4] = v5 & 0xFFFFFFFFFFFFLL | 0x36BD000000000000;
  return _swift_task_switch(sub_1001995E8, a4, 0);
}

uint64_t sub_1001995E8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  (*(v0 + 24))();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10019964C()
{
  sub_100199264();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100199678(uint64_t a1)
{
  v2[8] = v1;
  v4 = *(_s8SnapshotVMa() - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[11] = v6;
  v7 = swift_task_alloc();
  v2[12] = v7;
  *v7 = v2;
  v7[1] = sub_100199788;

  return sub_100199B58(v6, a1);
}

uint64_t sub_100199788()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100199898, v2, 0);
}

uint64_t sub_100199898()
{
  v1 = v0[8];
  sub_100191E90(v0[11], v0[10]);
  v2 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshots;
  swift_beginAccess();
  v3 = *(v1 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v2) = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_10019ACD0(0, v3[2] + 1, 1, v3);
    *(v1 + v2) = v3;
  }

  v6 = v3[2];
  v5 = v3[3];
  if (v6 >= v5 >> 1)
  {
    v3 = sub_10019ACD0(v5 > 1, v6 + 1, 1, v3);
  }

  v8 = v0[9];
  v7 = v0[10];
  v3[2] = v6 + 1;
  sub_10019BDB4(v7, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
  *(v1 + v2) = v3;
  swift_endAccess();
  if (v6 >= 0x18)
  {
    swift_beginAccess();
    sub_10019BB04(0, 1, sub_10019ACD0, sub_10019B914);
    swift_endAccess();
  }

  v9 = v0[10];
  sub_10019BE18(v0[11]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100199A38()
{
  v1 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_transitionEventsToSend;
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v4 = *((*(v0 + v1) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v2 = *(v0 + v1);
  swift_endAccess();
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 11)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 11)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1001970D4();
  swift_endAccess();
}

uint64_t sub_100199B58(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = *(*(sub_100164A3C(&unk_1002D7BD0, &unk_10024A800) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v5 = *(*(sub_100164A3C(&qword_1002D67B0, &qword_10024A640) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_100199C3C, v2, 0);
}

uint64_t sub_100199C3C()
{
  v1 = *(v0 + 248);
  v2 = v1[17];
  sub_100192B48(v0 + 16);
  *(v0 + 280) = *(v0 + 32);
  v3 = *(v0 + 48);
  *(v0 + 171) = *(v0 + 56);
  v4 = *(v0 + 64);
  *(v0 + 296) = v3;
  *(v0 + 304) = v4;
  *(v0 + 456) = *(v0 + 72);
  *(v0 + 312) = *(v0 + 80);
  *(v0 + 457) = *(v0 + 88);
  v5 = *(v0 + 112);
  *(v0 + 320) = *(v0 + 96);
  *(v0 + 336) = v5;
  v6 = v1[14];
  sub_100183630(v0 + 128);
  *(v0 + 352) = *(v0 + 144);
  *(v0 + 368) = *(v0 + 160);
  v7 = *(v0 + 168);
  *(v0 + 174) = *(v0 + 170);
  *(v0 + 172) = v7;
  v8 = v1[16];
  *(v0 + 376) = v8;
  v9 = (*v8 + 192) & 0xFFFFFFFFFFFFLL | 0x9076000000000000;
  *(v0 + 384) = *(*v8 + 192);
  *(v0 + 392) = v9;

  return _swift_task_switch(sub_100199D38, v8, 0);
}

uint64_t sub_100199D38()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  *(v0 + 458) = (*(v0 + 384))();
  v3 = (*v2 + 216) & 0xFFFFFFFFFFFFLL | 0x8550000000000000;
  *(v0 + 400) = *(*v2 + 216);
  *(v0 + 408) = v3;

  return _swift_task_switch(sub_100199DC4, v2, 0);
}

uint64_t sub_100199DC4()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 272);
  v4 = *(v0 + 248);
  (*(v0 + 400))();

  return _swift_task_switch(sub_100199E38, v4, 0);
}

uint64_t sub_100199E38()
{
  v1 = *(v0[31] + 120);
  v0[52] = v1;
  v2 = (*v1 + 208) & 0xFFFFFFFFFFFFLL | 0x3425000000000000;
  v0[53] = *(*v1 + 208);
  v0[54] = v2;
  return _swift_task_switch(sub_100199E78, v1, 0);
}

uint64_t sub_100199E78()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  *(v0 + 208) = (*(v0 + 424))();
  *(v0 + 216) = v3;
  *(v0 + 224) = v4;
  v5 = (*v2 + 184) & 0xFFFFFFFFFFFFLL | 0xCEFE000000000000;
  *(v0 + 440) = *(*v2 + 184);
  *(v0 + 448) = v5;

  return _swift_task_switch(sub_100199F08, v2, 0);
}

uint64_t sub_100199F08()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 416);
  v3 = *(v0 + 248);
  *(v0 + 176) = (*(v0 + 440))();
  *(v0 + 184) = v4;
  *(v0 + 192) = v5;
  *(v0 + 200) = v6;

  return _swift_task_switch(sub_100199F84, v3, 0);
}

uint64_t sub_100199F84()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  if (*(v0 + 40) == 1)
  {
    v46 = 1;
    v44 = 0;
    v45 = 0;
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v47 = 0;
    v43 = 1;
    v40 = 1;
    v38 = 1;
  }

  else
  {
    v5 = *(v0 + 344);
    v6 = *(v0 + 328);
    v7 = *(v0 + 288);
    v47 = *(v0 + 16);
    v38 = *(v0 + 24);
    v40 = *(v0 + 171);
    v43 = *(v0 + 456);
    v46 = *(v0 + 457);

    sub_1000157F0(v0 + 16, &qword_1002D6DE0, &qword_10024AD90);
    v44 = *(v0 + 344);
    v45 = *(v0 + 336);
    v41 = *(v0 + 328);
    v42 = *(v0 + 320);
    v39 = *(v0 + 312);
    v36 = *(v0 + 296);
    v37 = *(v0 + 304);
    v34 = *(v0 + 288);
    v35 = *(v0 + 280);
  }

  v8 = *(v0 + 172);
  v9 = v8 | (*(v0 + 174) << 16);
  if ((v8 & 0xFF00) == 0x700)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    LOBYTE(v9) = 1;
    LOBYTE(v29) = 7;
    LOBYTE(v30) = 6;
    LOBYTE(v28) = 1;
    v27 = 1;
  }

  else
  {
    v28 = *(v0 + 360);
    v33 = *(v0 + 128);
    v27 = *(v0 + 136);
    v29 = HIWORD(v9);
    v30 = v9 >> 8;
    v31 = *(v0 + 352);
    v32 = *(v0 + 368);
  }

  v10 = *(v0 + 184);
  v11 = *(v0 + 176);
  v12 = *(v0 + 458);
  v13 = *(v0 + 264);
  v14 = *(v0 + 272);
  v15 = *(v0 + 256);
  v16 = *(v0 + 200) & 1;
  if (*(v0 + 200))
  {
    v11 = 0;
  }

  v24 = *(v0 + 232);
  v25 = v11;
  if (*(v0 + 200))
  {
    v10 = 0;
  }

  v26 = v10;
  if (*(v0 + 200))
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v0 + 192);
  }

  v18 = *(v0 + 224) & 1;
  if (*(v0 + 224))
  {
    v19 = 0;
  }

  else
  {
    v19 = *(v0 + 208);
  }

  if (*(v0 + 224))
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v0 + 216);
  }

  v23 = v20;
  sub_10001A718(v14, v13, &qword_1002D67B0, &qword_10024A640);
  sub_10018A9D4(v15, v19, v18, v23, v18, v25, v16, v26, v24, v16, v17, v16, v47, v38 & 1, v35, v34, v36, v40 & 1, v37, v43 & 1, v39, v46 & 1, v42, v41, v45, v44, v33, v27 & 1, v31, v28 & 1, v32, v9 & 1, v30, v29, v12, v13);
  sub_1000157F0(v14, &qword_1002D67B0, &qword_10024A640);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10019A354(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  v4 = type metadata accessor for WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostRequest();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10019A480, 0, 0);
}

uint64_t sub_10019A480()
{
  v1 = v0[3];
  v2 = WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostRequest.enabled.getter();
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_10019A524;
  v4 = v0[4];

  return sub_100193888(v2 & 1);
}

uint64_t sub_10019A524()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return _swift_task_switch(sub_10019A620, 0, 0);
}

uint64_t sub_10019A620()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[5];
  sub_100003E50(&off_1002B69B8, v0[11]);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[7];
  v9 = v0[8];
  v11 = v0[6];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    v13 = WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostRequest.enabled.getter() & 1;
    (*(v10 + 8))(v9, v11);
    *(v12 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "TreatDissasocDropsAsBeaconLostDrops set to %{BOOL}d", v12, 8u);
  }

  else
  {
    (*(v10 + 8))(v0[8], v0[6]);
  }

  v15 = v0[10];
  v14 = v0[11];
  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[2];

  (*(v15 + 8))(v14, v16);
  WIS.XPC.WiFiToCellTransitionTreatDissasocAsBeaconLostResponse.init()();

  v19 = v0[1];

  return v19();
}

uint64_t sub_10019A7CC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for WiFiToCellTransitionMonitor();

  return sub_100003E50(a1, a2);
}

uint64_t sub_10019A818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
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

  return _swift_task_switch(sub_10019A918, 0, 0);
}

uint64_t sub_10019A918()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = sub_10019BF0C(&qword_1002D6DF0, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_10019BF0C(&qword_1002D6DF8, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_10019AAA8;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_10019AAA8()
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

    return _swift_task_switch(sub_10019AC64, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_10019AC64()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

size_t sub_10019ACD0(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100164A3C(&qword_1002D6DE8, &qword_10024AD98);
  v10 = *(_s8SnapshotVMa() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(_s8SnapshotVMa() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10019AEA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100164A3C(&qword_1002D6E00, &qword_10024ADC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10019AFAC(uint64_t a1, uint64_t a2)
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

  sub_100164A3C(&qword_1002D6DE8, &qword_10024AD98);
  v4 = *(_s8SnapshotVMa() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10019B0A8()
{
  v2 = *(v0 + 32);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10017F434;

  return sub_10019598C(v5, v6, v7, v2, v4, v3);
}

unint64_t sub_10019B150(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10019B1DC()
{
  result = qword_1002D6DB0;
  if (!qword_1002D6DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D6DB0);
  }

  return result;
}

uint64_t sub_10019B228(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019B298()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10017F434;

  return sub_100197DEC();
}

uint64_t sub_10019B32C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_100198E98(v3, v4, v5, v2);
}

uint64_t sub_10019B3C8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_1001995A4(v3, v4, v5, v2);
}

void sub_10019B474()
{
  sub_1001923F4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10019B574(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100164A3C(&qword_1002D6DE8, &qword_10024AD98);
      v7 = *(_s8SnapshotVMa() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(_s8SnapshotVMa() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_10019B714(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    *v1 = result;
  }

  return result;
}

void *sub_10019B7D0(void *result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[5];
  v23 = v7;
  v24 = v3[4];
  if (!a2)
  {
LABEL_21:
    a3 = 0;
LABEL_22:
    v13 = v5;
LABEL_25:
    *result = v4;
    result[1] = v5;
    result[2] = v6;
    result[3] = v23;
    result[4] = v24;
    result[5] = v8;
    result[6] = v13;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v21 = v3[2];
    v22 = result;
    v10 = 0;
    v19 = a3;
    v20 = v3[5];
    v11 = v8 >> 1;
    v12 = a3 - 1;
    while (1)
    {
      if (v4 - v5 == v10)
      {
        v13 = v4;
        a3 = v4 - v5;
        result = v22;
        goto LABEL_24;
      }

      v13 = v5 + v10 + 1;
      if (__OFADD__(v5 + v10, 1))
      {
        break;
      }

      v14 = v5 + v10;
      if (v5 + v10 >= v11 || v4 < v13 || v5 >= v13 || v14 < v24)
      {
        goto LABEL_28;
      }

      v18 = *(*(_s8SnapshotVMa() - 8) + 72);
      result = sub_100191E90(v23 + v18 * v14, v9);
      if (v12 == v10)
      {
        result = v22;
        a3 = v19;
LABEL_24:
        v8 = v20;
        v6 = v21;
        goto LABEL_25;
      }

      v9 += v18;
      v6 = ++v10;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_10019B914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = _s8SnapshotVMa();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_10019BA5C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_10019BB04(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_10019BBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  _s15TransitionEventCMa();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10019BCDC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_10019B714(result);

  return sub_10019BBDC(v4, v2, 0);
}

uint64_t sub_10019BDB4(uint64_t a1, uint64_t a2)
{
  v4 = _s8SnapshotVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10019BE18(uint64_t a1)
{
  v2 = _s8SnapshotVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10019BE74()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_10019528C(v4, v5, v6, v2, v3);
}

uint64_t sub_10019BF0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019BF54()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100002A5C;

  return sub_100199100(v4, v5, v6, v2, v3);
}

uint64_t sub_10019C01C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002A5C;

  return sub_100193E30();
}

unint64_t sub_10019C0B0()
{
  result = qword_1002D6E08;
  if (!qword_1002D6E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6E08);
  }

  return result;
}

uint64_t sub_10019C108(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_10019C1D4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_10019C264@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(v1 + 152);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t sub_10019C2D0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 152);
  v4 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v4;
  *(v1 + 160) = *(a1 + 32);
  *(v1 + 176) = *(a1 + 48);
}

uint64_t sub_10019C414()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_curRegistrationState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10019C458(char a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_curRegistrationState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10019C514(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_lastKnownMCC;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10019C5D4()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_predictionSendState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10019C618(char a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_predictionSendState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10019C6E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_10001A718(v4 + v8, a4, a2, a3);
}

uint64_t sub_10019C76C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_10018A03C(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_10019C8E4(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_10019C92C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_airplaneModeEnableMCC;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10019CBB4@<X0>(uint64_t a1@<X8>)
{
  result = XPCEventPublisher.Token.rawValue.getter();
  *(a1 + 24) = &type metadata for DefaultDateProvider;
  *(a1 + 32) = &off_1002B7A00;
  return result;
}

uint64_t sub_10019CBEC@<X0>(uint64_t a1@<X8>)
{
  result = XPCEventPublisher.Token.rawValue.getter();
  *(a1 + 24) = &type metadata for PredictionMetric.CoreAnalyticsSubmitter;
  *(a1 + 32) = &off_1002B54A8;
  return result;
}

uint64_t sub_10019CC24(__int128 *a1, __int128 *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_10019CC74(a1, a2);
  return v7;
}

uint64_t sub_10019CC74(__int128 *a1, __int128 *a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = &_swiftEmptySetSingleton;
  *(v2 + 120) = 4;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0;
  v5 = OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_lastConnectedToCellAt;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);
  v7(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_curRegistrationState) = 5;
  v8 = v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_lastKnownMCC;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_predictionSendState) = 0;
  v9 = OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_predictionData;
  v10 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  v7(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_airplaneModeEnableTimestamp, 1, 1, v6);
  v11 = v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_airplaneModeEnableMCC;
  *v11 = 0;
  *(v11 + 8) = 1;
  v7(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_airplaneModeDisableTimestamp, 1, 1, v6);
  v7(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_limitedServiceTimestamp, 1, 1, v6);
  v7(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_fullServiceTimestamp, 1, 1, v6);
  sub_10001A700(a1, v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider);
  sub_10001A700(a2, v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_metricSubmitter);
  return v2;
}

uint64_t sub_10019CE74()
{
  v1 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v13 - v3;
  v5 = sub_100164A3C(&qword_1002D6E10, &qword_10024AE18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(*v0 + 384))(v8);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v4, 1, 1, v10);
  (*(*v0 + 408))(v4);
  (*(*v0 + 432))(0, 1);
  v11(v4, 1, 1, v10);
  (*(*v0 + 456))(v4);
  v11(v4, 1, 1, v10);
  (*(*v0 + 480))(v4);
  v11(v4, 1, 1, v10);
  (*(*v0 + 504))(v4);
  return (*(*v0 + 360))(0);
}

uint64_t sub_10019D1BC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v292 = v269 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v285 = v269 - v8;
  v9 = __chkstk_darwin(v7);
  v294 = v269 - v10;
  v11 = __chkstk_darwin(v9);
  v283 = v269 - v12;
  v13 = __chkstk_darwin(v11);
  v291 = v269 - v14;
  v15 = __chkstk_darwin(v13);
  v290 = v269 - v16;
  v17 = __chkstk_darwin(v15);
  v289 = v269 - v18;
  v19 = __chkstk_darwin(v17);
  v288 = v269 - v20;
  __chkstk_darwin(v19);
  v296 = (v269 - v21);
  v298 = type metadata accessor for Date();
  v297 = *(v298 - 8);
  v22 = v297[8];
  v23 = __chkstk_darwin(v298);
  v287 = v269 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v286 = v269 - v26;
  v27 = __chkstk_darwin(v25);
  v275 = v269 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = v269 - v30;
  v32 = __chkstk_darwin(v29);
  v274 = v269 - v33;
  v34 = __chkstk_darwin(v32);
  v282 = v269 - v35;
  v36 = __chkstk_darwin(v34);
  v273 = v269 - v37;
  v38 = __chkstk_darwin(v36);
  v281 = v269 - v39;
  v40 = __chkstk_darwin(v38);
  v280 = v269 - v41;
  __chkstk_darwin(v40);
  v279 = (v269 - v42);
  v301 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  v43 = *(*(v301 - 1) + 64);
  __chkstk_darwin(v301);
  v277 = (v269 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v300 = *(v45 - 8);
  v46 = *(v300 + 64);
  v47 = __chkstk_darwin(v45);
  v303 = v269 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v278 = v269 - v50;
  __chkstk_darwin(v49);
  v276 = v269 - v51;
  v52 = sub_100164A3C(&qword_1002D6E10, &qword_10024AE18);
  v53 = *(*(v52 - 8) + 64);
  v54 = __chkstk_darwin(v52 - 8);
  v295 = v269 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v58 = (v269 - v57);
  __chkstk_darwin(v56);
  v60 = v269 - v59;
  v61 = type metadata accessor for Logger();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  __chkstk_darwin(v61);
  v65 = v269 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B6A68, v65);

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.debug.getter();

  LODWORD(v293) = v67;
  v68 = os_log_type_enabled(v66, v67);
  v302 = v1;
  v284 = v31;
  if (!v68)
  {
    v77 = v45;

    v78 = (*(v62 + 8))(v65, v61);
    v79 = v298;
    v80 = v297;
    v81 = v300;
    goto LABEL_12;
  }

  v270 = v66;
  v271 = v62;
  v272 = v61;
  v69 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v269[2] = v70;
  v304 = v70;
  *v69 = 136315394;
  v71 = *(*v1 + 376);
  v269[1] = *v1 + 376;
  v269[0] = v71;
  v71(v70, v72, v73);
  v74 = *(v300 + 48);
  v299 = v45;
  if (v74(v60, 1, v45))
  {
    sub_1000157F0(v60, &qword_1002D6E10, &qword_10024AE18);
    v75 = 0xE300000000000000;
    v76 = 7104878;
  }

  else
  {
    v82 = v276;
    sub_1001A3408(v60, v276, type metadata accessor for InternalUpcomingFlightPrediction);
    sub_1000157F0(v60, &qword_1002D6E10, &qword_10024AE18);
    v83 = v277;
    sub_1001A3408(v82, v277, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
    sub_1001A3470(v82, type metadata accessor for InternalUpcomingFlightPrediction);
    v84 = sub_1001A4F98();
    v75 = v85;
    sub_1001A3470(v83, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
    v76 = v84;
  }

  v79 = v298;
  v86 = sub_10017A8A8(v76, v75, &v304);

  *(v69 + 4) = v86;
  *(v69 + 12) = 2080;
  (v269[0])(v87);
  v88 = v299;
  v89 = v74(v58, 1, v299);
  v81 = v300;
  if (v89)
  {
    v77 = v88;
    v90 = &qword_1002D6E10;
    v91 = &qword_10024AE18;
    v92 = v58;
  }

  else
  {
    v95 = v278;
    sub_1001A3408(v58, v278, type metadata accessor for InternalUpcomingFlightPrediction);
    sub_1000157F0(v58, &qword_1002D6E10, &qword_10024AE18);
    v77 = v88;
    sub_10001A718(v95 + *(v88 + 20), v307, &qword_1002D71D0, &qword_10024AE20);
    sub_1001A3470(v95, type metadata accessor for InternalUpcomingFlightPrediction);
    if (v308)
    {
      v96 = v309;
      sub_100014E1C(v307, v308);
      v97 = v96[1];
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v93 = v99;
      sub_100164B98(v307);
      v94 = v98;
      v1 = v302;
      v80 = v297;
      goto LABEL_11;
    }

    v90 = &qword_1002D71D0;
    v91 = &qword_10024AE20;
    v92 = v307;
  }

  sub_1000157F0(v92, v90, v91);
  v1 = v302;
  v80 = v297;
  v93 = 0xE300000000000000;
  v94 = 7104878;
LABEL_11:
  v100 = sub_10017A8A8(v94, v93, &v304);

  *(v69 + 14) = v100;
  v101 = v270;
  _os_log_impl(&_mh_execute_header, v270, v293, "Sending CA event with prediction %s and cellular coverage tile %s", v69, 0x16u);
  swift_arrayDestroy();

  v78 = (*(v271 + 8))(v65, v272);
LABEL_12:
  v102 = v296;
  v103 = v295;
  (*(*v1 + 376))(v78);
  if ((*(v81 + 48))(v103, 1, v77) == 1)
  {
    v104 = sub_1000157F0(v103, &qword_1002D6E10, &qword_10024AE18);
    return (*(*v1 + 528))(v104);
  }

  v106 = sub_1001A3358(v103, v303);
  v107 = (*v1 + 352);
  v108 = *v107;
  if ((*v107)(v106) != 2 && v108() != 3)
  {
    v104 = sub_1001A3470(v303, type metadata accessor for InternalUpcomingFlightPrediction);
    return (*(*v1 + 528))(v104);
  }

  v109 = (*v1 + 448);
  v298 = *v109;
  v297 = v109;
  (v298)();
  v300 = v80[6];
  LODWORD(v278) = (v300)(v102, 1, v79);
  v299 = v77;
  if (v278 == 1)
  {
    v110 = sub_1000157F0(v102, &unk_1002D7BD0, &unk_10024A800);
    v271 = 0;
  }

  else
  {
    v111 = v279;
    (v80[4])(v279, v102, v79);
    v112 = v303 + v301[14];
    Date.distance(to:)();
    v271 = v113;
    v110 = (v80[1])(v111, v79);
  }

  v114 = v290;
  v115 = (*v1 + 400);
  v116 = v288;
  v296 = *v115;
  v295 = v115;
  v296(v110);
  v117 = v300;
  LODWORD(v290) = (v300)(v116, 1, v79);
  v118 = v289;
  if (v290 == 1)
  {
    v119 = sub_1000157F0(v116, &unk_1002D7BD0, &unk_10024A800);
  }

  else
  {
    v120 = v280;
    (v80[4])(v280, v116, v79);
    v121 = v303 + v301[13];
    Date.distance(to:)();
    Date.distance(to:)();
    v122 = v120;
    v117 = v300;
    v119 = (v80[1])(v122, v79);
  }

  (v298)(v119);
  if (v117(v118, 1, v79) == 1)
  {
    v123 = sub_1000157F0(v118, &unk_1002D7BD0, &unk_10024A800);
    LODWORD(v289) = 1;
  }

  else
  {
    v124 = v118;
    v125 = v80;
    v126 = v80[4];
    v127 = v281;
    v128 = v126(v281, v124, v79);
    (*(*v1 + 472))(v128);
    if (v117(v114, 1, v79) == 1)
    {
      (v125[1])(v127, v79);
      v123 = sub_1000157F0(v114, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v289) = 1;
    }

    else
    {
      v129 = v273;
      v126(v273, v114, v79);
      Date.distance(to:)();
      v130 = v125[1];
      v131 = v129;
      v117 = v300;
      v130(v131, v79);
      v123 = (v130)(v127, v79);
      LODWORD(v289) = 0;
    }

    v80 = v125;
  }

  v132 = v291;
  (v298)(v123);
  v133 = v132;
  if (v117(v132, 1, v79) == 1)
  {
    v134 = sub_1000157F0(v132, &unk_1002D7BD0, &unk_10024A800);
    LODWORD(v291) = 1;
  }

  else
  {
    v135 = v80;
    v136 = v80[4];
    v137 = v282;
    v138 = v136(v282, v133, v79);
    v139 = v283;
    (*(*v1 + 496))(v138);
    v140 = v139;
    if (v117(v139, 1, v79) == 1)
    {
      (v135[1])(v137, v79);
      v134 = sub_1000157F0(v139, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v291) = 1;
    }

    else
    {
      v141 = v274;
      v136(v274, v140, v79);
      Date.distance(to:)();
      v142 = v135[1];
      v142(v141, v79);
      v134 = (v142)(v137, v79);
      LODWORD(v291) = 0;
    }

    v80 = v135;
  }

  v143 = v294;
  v296(v134);
  if (v117(v143, 1, v79) == 1)
  {
    v144 = sub_1000157F0(v294, &unk_1002D7BD0, &unk_10024A800);
    LODWORD(v288) = 1;
    v145 = v292;
  }

  else
  {
    v146 = v80[4];
    v147 = v284;
    v148 = v146(v284, v294, v79);
    v149 = v285;
    (v298)(v148);
    v150 = v149;
    v117 = v300;
    if ((v300)(v150, 1, v79) == 1)
    {
      (v80[1])(v147, v79);
      v144 = sub_1000157F0(v150, &unk_1002D7BD0, &unk_10024A800);
      LODWORD(v288) = 1;
    }

    else
    {
      v151 = v275;
      v146(v275, v150, v79);
      v152 = v301[14];
      v153 = v303 + v301[13];
      Date.distance(to:)();
      Date.distance(to:)();
      v154 = v80[1];
      v154(v151, v79);
      v144 = (v154)(v147, v79);
      v117 = v300;
      LODWORD(v288) = 0;
    }

    v145 = v292;
  }

  (*(*v1 + 280))(v144);
  v155 = v117(v145, 1, v79);
  v156 = v299;
  if (v155 == 1)
  {
    v157 = sub_1000157F0(v145, &unk_1002D7BD0, &unk_10024A800);
  }

  else
  {
    v158 = v286;
    (v80[4])(v286, v145, v79);
    v159 = *(v1 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 24);
    v160 = *(v1 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 32);
    sub_100014E1C((v1 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider), v159);
    v161 = v287;
    (*(v160 + 8))(v159, v160);
    Date.timeIntervalSince(_:)();
    v163 = v162;
    v164 = v80[1];
    v164(v161, v79);
    v157 = (v164)(v158, v79);
    if (v163 > 60.0)
    {
      v165 = 0;
      v295 = 0;
      v166 = 0;
      v167 = 0;
      v297 = 0;
      v168 = 0;
      LODWORD(v296) = 0;
      goto LABEL_47;
    }
  }

  v157 = (*(*v1 + 256))(v307, v157);
  v165 = v307[0];
  v295 = v307[1];
  v166 = v307[2];
  v167 = v308;
  v168 = v310;
  v297 = v309;
  LODWORD(v296) = v311;
LABEL_47:
  v169 = (*v1 + 424);
  v279 = *v169;
  v277 = v169;
  v170 = (v279)(v157);
  if (v171)
  {
    v172 = 2;
    if (!v167)
    {
      LODWORD(v280) = 2;
      v287 = 0;
      v297 = 0;
      v273 = 0;
      v284 = 0;
      v275 = 0;
      v173 = 0;
      v295 = 0;
      v165 = 0;
LABEL_55:
      v178 = 1;
      LODWORD(v296) = 1;
      goto LABEL_56;
    }
  }

  else
  {
    if (!v167)
    {
      v287 = 0;
      v297 = 0;
      v273 = 0;
      v284 = 0;
      v275 = 0;
      v173 = 0;
      v295 = 0;
      v165 = 0;
      LODWORD(v280) = 2;
      goto LABEL_55;
    }

    v172 = v170 == v165;
  }

  LODWORD(v280) = v172;
  v287 = v168;
  v174 = objc_opt_self();

  v275 = v166;
  v175 = String._bridgeToObjectiveC()();
  v176 = [v174 getRATFromCellMonitorString:v175];

  v273 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v284 = v177;

  v178 = 0;
  v173 = v167;
LABEL_56:
  LODWORD(v300) = v178;
  v179 = *(v156 + 20);
  sub_10001A718(&v179[v303], &v304, &qword_1002D71D0, &qword_10024AE20);
  v180 = v305;
  v285 = v165;
  if (v305)
  {
    v181 = v306;
    sub_100014E1C(&v304, v305);
    v294 = (*(v181 + 80))(v180, v181);
    sub_100164B98(&v304);
  }

  else
  {
    sub_1000157F0(&v304, &qword_1002D71D0, &qword_10024AE20);
    v294 = 0;
  }

  sub_10001A718(&v179[v303], &v304, &qword_1002D71D0, &qword_10024AE20);
  v182 = v305;
  if (v305)
  {
    v183 = v306;
    sub_100014E1C(&v304, v305);
    v293 = (*(v183 + 88))(v182, v183);
    sub_100164B98(&v304);
  }

  else
  {
    sub_1000157F0(&v304, &qword_1002D71D0, &qword_10024AE20);
    v293 = 0;
  }

  sub_10001A718(&v179[v303], &v304, &qword_1002D71D0, &qword_10024AE20);
  v184 = v305;
  v286 = v167;
  if (v305)
  {
    v185 = v306;
    sub_100014E1C(&v304, v305);
    v186 = (*(v185 + 112))(v184, v185);
    sub_100164B98(&v304);
    v187 = objc_opt_self();
    v188 = [v187 getCellMonitorRATFromEnumValue:v186];
    v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v184 = v190;

    v191 = String._bridgeToObjectiveC()();

    v192 = [v187 getRATFromCellMonitorString:v191];

    v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v194 = v193;
  }

  else
  {
    sub_1000157F0(&v304, &qword_1002D71D0, &qword_10024AE20);
    v272 = 0;
    v194 = 0;
    v189 = 0;
  }

  sub_10001A718(&v179[v303], &v304, &qword_1002D71D0, &qword_10024AE20);
  v195 = v305;
  if (v305)
  {
    v196 = v173;
    v197 = v179;
    v198 = v306;
    sub_100014E1C(&v304, v305);
    v199 = *(v198 + 96);
    v200 = v198;
    v179 = v197;
    v173 = v196;
    v283 = v199(v195, v200);
    LODWORD(v281) = v201;
    sub_100164B98(&v304);
  }

  else
  {
    sub_1000157F0(&v304, &qword_1002D71D0, &qword_10024AE20);
    v283 = 0;
    LODWORD(v281) = 1;
  }

  v292 = v179;
  sub_10001A718(&v179[v303], &v304, &qword_1002D71D0, &qword_10024AE20);
  v202 = v305;
  if (v305)
  {
    v203 = v306;
    sub_100014E1C(&v304, v305);
    v282 = (*(v203 + 104))(v202, v203);
    LODWORD(v298) = v204;
    sub_100164B98(&v304);
  }

  else
  {
    sub_1000157F0(&v304, &qword_1002D71D0, &qword_10024AE20);
    v282 = 0;
    LODWORD(v298) = 1;
  }

  v205 = v300;
  if (v180)
  {
    v206 = v300;
  }

  else
  {
    v206 = 1;
  }

  LODWORD(v274) = v206;
  if (!v182)
  {
    v205 = 1;
  }

  LODWORD(v276) = v205;
  if (v173 && v184)
  {
    if (v275 == v189 && v173 == v184)
    {
      v207 = 1;
    }

    else
    {
      v207 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    LODWORD(v275) = v207 & 1;
  }

  else
  {

    LODWORD(v275) = 2;
  }

  sub_100164A3C(&qword_1002D5C48, &qword_100249878);
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_10024ADE0;
  *(v208 + 32) = 0x614D656372756F73;
  v286 = (v208 + 32);
  *(v208 + 40) = 0xEC00000074656B72;
  v209 = v301;
  v210 = v303;
  v211 = (v303 + v301[7]);
  v212 = *v211;
  v213 = v211[1];
  *(v208 + 48) = String._bridgeToObjectiveC()();
  *(v208 + 56) = 0xD000000000000011;
  *(v208 + 64) = 0x800000010025C5B0;
  v214 = (v210 + v209[10]);
  v215 = *v214;
  v216 = v214[1];
  *(v208 + 72) = String._bridgeToObjectiveC()();
  *(v208 + 80) = 0x434D656372756F73;
  *(v208 + 88) = 0xE900000000000043;
  v279();
  if (v217)
  {
    isa = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 96) = isa;
  *(v208 + 104) = 0x756F537441736177;
  *(v208 + 112) = 0xEB00000000656372;
  v219 = *(v303 + v301[5]);
  *(v208 + 120) = Bool._bridgeToObjectiveC()();
  *(v208 + 128) = 0xD00000000000001FLL;
  *(v208 + 136) = 0x800000010025C5D0;
  if (v280 == 2)
  {
    v220 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v220 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 144) = v220;
  strcpy((v208 + 152), "predictedMCC");
  *(v208 + 165) = 0;
  *(v208 + 166) = -5120;
  if (v180)
  {
    v221.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v221.super.super.isa = [objc_allocWithZone(NSNull) init];
  }

  *(v208 + 168) = v221;
  strcpy((v208 + 176), "predictedMNC");
  *(v208 + 189) = 0;
  *(v208 + 190) = -5120;
  if (v182)
  {
    v222.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    v222.super.super.isa = [objc_allocWithZone(NSNull) init];
  }

  *(v208 + 192) = v222;
  strcpy((v208 + 200), "predictedRAT");
  *(v208 + 213) = 0;
  *(v208 + 214) = -5120;
  v223 = v299;
  if (v194)
  {
    v224 = String._bridgeToObjectiveC()();
  }

  else
  {
    v224 = [objc_allocWithZone(NSNull) init];
  }

  *(v208 + 216) = v224;
  strcpy((v208 + 224), "predictedBand");
  *(v208 + 238) = -4864;
  v225 = v281;
  if (v281)
  {
    v226 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v226 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  v227 = v300;
  *(v208 + 240) = v226;
  *(v208 + 248) = 0xD000000000000012;
  *(v208 + 256) = 0x800000010025C5F0;
  if (v298)
  {
    v228 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v228 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 264) = v228;
  *(v208 + 272) = 0x434D6C6175746361;
  *(v208 + 280) = 0xE900000000000043;
  if (v227)
  {
    *(v208 + 288) = [objc_allocWithZone(NSNull) init];
    *(v208 + 296) = 0x4E4D6C6175746361;
    *(v208 + 304) = 0xE900000000000043;
    v229 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    *(v208 + 288) = Int._bridgeToObjectiveC()();
    *(v208 + 296) = 0x4E4D6C6175746361;
    *(v208 + 304) = 0xE900000000000043;
    v229 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 312) = v229;
  *(v208 + 320) = 0x41526C6175746361;
  *(v208 + 328) = 0xE900000000000054;
  if (v284)
  {
    v230 = String._bridgeToObjectiveC()();
  }

  else
  {
    v230 = [objc_allocWithZone(NSNull) init];
  }

  v231 = v296;
  *(v208 + 336) = v230;
  *(v208 + 344) = 0x61426C6175746361;
  *(v208 + 352) = 0xEA0000000000646ELL;
  if (v227)
  {
    v232 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v232 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 360) = v232;
  *(v208 + 368) = 0x72466C6175746361;
  *(v208 + 376) = 0xEF79636E65757165;
  if (v231)
  {
    v233 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v233 = Int._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 384) = v233;
  *(v208 + 392) = 0x614D43434D646964;
  *(v208 + 400) = 0xEB00000000686374;
  if (v274)
  {
    v234 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v234 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 408) = v234;
  *(v208 + 416) = 0x614D434E4D646964;
  *(v208 + 424) = 0xEB00000000686374;
  if (v276)
  {
    v235 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v235 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v236 = v227 | v225;
  *(v208 + 432) = v235;
  *(v208 + 440) = 0x614D544152646964;
  *(v208 + 448) = 0xEB00000000686374;
  if (v275 == 2)
  {
    v237 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v237 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  v238 = v231 | v298;
  *(v208 + 456) = v237;
  strcpy((v208 + 464), "didBandMatch");
  *(v208 + 477) = 0;
  *(v208 + 478) = -5120;
  if (v236)
  {
    v239 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v239 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 480) = v239;
  *(v208 + 488) = 0xD000000000000011;
  *(v208 + 496) = 0x800000010025C610;
  if (v238)
  {
    v240 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v240 = Bool._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 504) = v240;
  *(v208 + 512) = 0xD00000000000002BLL;
  *(v208 + 520) = 0x800000010025C630;
  v241 = v290;
  if (v290 == 1)
  {
    v242 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v242 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 528) = v242;
  *(v208 + 536) = 0xD000000000000025;
  *(v208 + 544) = 0x800000010025C660;
  if (v278 == 1)
  {
    v243 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v243 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 552) = v243;
  *(v208 + 560) = 0xD00000000000002ALL;
  *(v208 + 568) = 0x800000010025C690;
  if (v241 == 1)
  {
    v244 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v244 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 576) = v244;
  *(v208 + 584) = 0xD00000000000001ELL;
  *(v208 + 592) = 0x800000010025C6C0;
  if (v289)
  {
    v245 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v245 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 600) = v245;
  *(v208 + 608) = 0xD00000000000001BLL;
  *(v208 + 616) = 0x800000010025C6E0;
  if (v291)
  {
    v246 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    v246 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 624) = v246;
  *(v208 + 632) = 0xD000000000000011;
  *(v208 + 640) = 0x800000010025C700;
  sub_1001A33BC();
  *(v208 + 648) = NSNumber.init(BOOLeanLiteral:)(0);
  *(v208 + 656) = 0xD000000000000030;
  *(v208 + 664) = 0x800000010025C720;
  if (v288)
  {
    *(v208 + 672) = [objc_allocWithZone(NSNull) init];
    *(v208 + 680) = 0xD000000000000037;
    *(v208 + 688) = 0x800000010025C760;
    *(v208 + 696) = [objc_allocWithZone(NSNull) init];
    *(v208 + 704) = 0xD000000000000014;
    *(v208 + 712) = 0x800000010025C7A0;
    v247 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    *(v208 + 672) = Double._bridgeToObjectiveC()();
    *(v208 + 680) = 0xD000000000000037;
    *(v208 + 688) = 0x800000010025C760;
    *(v208 + 696) = Double._bridgeToObjectiveC()();
    *(v208 + 704) = 0xD000000000000014;
    *(v208 + 712) = 0x800000010025C7A0;
    v247 = Double._bridgeToObjectiveC()().super.super.isa;
  }

  *(v208 + 720) = v247;
  *(v208 + 728) = 0xD000000000000017;
  *(v208 + 736) = 0x800000010025C7C0;
  v248 = v301;
  v249 = v301[14];
  v250 = v303;
  v251 = v303 + v301[13];
  Date.distance(to:)();
  *(v208 + 744) = Double._bridgeToObjectiveC()();
  *(v208 + 752) = 0xD000000000000010;
  *(v208 + 760) = 0x800000010025C7E0;
  sub_1001A4EEC(*(v250 + v248[6]));
  v252 = String._bridgeToObjectiveC()();

  *(v208 + 768) = v252;
  *(v208 + 776) = 0xD00000000000001ELL;
  *(v208 + 784) = 0x800000010025C800;
  sub_10001A718(&v292[v250], &v304, &qword_1002D71D0, &qword_10024AE20);
  v253 = v305;
  if (v305)
  {
    v254 = v306;
    sub_100014E1C(&v304, v305);
    (*(v254 + 120))(v253, v254);
    sub_100164B98(&v304);
    v255.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  }

  else
  {
    sub_1000157F0(&v304, &qword_1002D71D0, &qword_10024AE20);
    v255.super.super.isa = [objc_allocWithZone(NSNull) init];
  }

  *(v208 + 792) = v255;
  strcpy((v208 + 800), "sourceCountry");
  *(v208 + 814) = -4864;
  v256 = (v303 + *(v223 + 24));
  if (v256[1])
  {
    v257 = *v256;
    v258 = String._bridgeToObjectiveC()();
  }

  else
  {
    v258 = [objc_allocWithZone(NSNull) init];
  }

  *(v208 + 816) = v258;
  *(v208 + 824) = 0xD000000000000012;
  *(v208 + 832) = 0x800000010025C820;
  v259 = (v303 + *(v223 + 28));
  if (v259[1])
  {
    v260 = *v259;
    v261 = String._bridgeToObjectiveC()();
  }

  else
  {
    v261 = [objc_allocWithZone(NSNull) init];
  }

  *(v208 + 840) = v261;
  *(v208 + 848) = 0xD000000000000019;
  *(v208 + 856) = 0x800000010025C840;
  v262 = (*(*v302 + 304))();
  if (v262 == 5)
  {
    v263 = [objc_allocWithZone(NSNull) init];
  }

  else
  {
    sub_1001BD474(v262);
    v263 = String._bridgeToObjectiveC()();
  }

  *(v208 + 864) = v263;
  v264 = sub_100164510(v208);
  swift_setDeallocating();
  sub_100164A3C(&qword_1002D5C58, qword_100249880);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v265 = v302;
  v266 = *(v302 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_metricSubmitter + 24);
  v267 = *(v302 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_metricSubmitter + 32);
  sub_100014E1C((v302 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_metricSubmitter), v266);
  (*(v267 + 16))(0xD000000000000034, 0x800000010025C570, v264, v266, v267);

  (*(*v265 + 528))(v268);
  return sub_1001A3470(v303, type metadata accessor for InternalUpcomingFlightPrediction);
}

uint64_t sub_10019F958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  v4 = *v2;
  v197 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v190 = *(v197 - 8);
  v5 = v190[8];
  v6 = __chkstk_darwin(v197);
  v163 = &v161 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v164 = &v161 - v9;
  v10 = __chkstk_darwin(v8);
  v191 = &v161 - v11;
  v12 = __chkstk_darwin(v10);
  v186 = &v161 - v13;
  v14 = __chkstk_darwin(v12);
  v189 = &v161 - v15;
  __chkstk_darwin(v14);
  v185 = &v161 - v16;
  v17 = sub_100164A3C(&qword_1002D6E10, &qword_10024AE18);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v166 = &v161 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v183 = &v161 - v22;
  __chkstk_darwin(v21);
  v24 = &v161 - v23;
  v25 = type metadata accessor for Date();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v25);
  v173 = &v161 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v161 - v30;
  v196 = type metadata accessor for Logger();
  v32 = *(v196 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v196);
  v176 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v168 = &v161 - v37;
  v38 = __chkstk_darwin(v36);
  v169 = &v161 - v39;
  v40 = __chkstk_darwin(v38);
  v177 = &v161 - v41;
  v42 = __chkstk_darwin(v40);
  v44 = &v161 - v43;
  __chkstk_darwin(v42);
  v46 = &v161 - v45;
  v199 = v4;
  sub_100003E50(&off_1002B6A68, &v161 - v45);
  v47 = v26[2];
  v193 = a1;
  v48 = a1;
  v49 = v25;
  v172 = v26 + 2;
  v171 = v47;
  v47(v31, v48, v25);
  v50 = v24;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  v53 = os_log_type_enabled(v51, v52);
  v198 = v50;
  v175 = v25;
  v194 = v44;
  if (v53)
  {
    v54 = swift_slowAlloc();
    v55 = v26;
    v56 = swift_slowAlloc();
    v201[0] = v56;
    *v54 = 136315138;
    sub_1001A34D0(&qword_1002D5B88, &type metadata accessor for Date);
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v58 = v49;
    v60 = v59;
    v170 = v55[1];
    v170(v31, v58);
    v61 = sub_10017A8A8(v57, v60, v201);

    *(v54 + 4) = v61;
    _os_log_impl(&_mh_execute_header, v51, v52, "Fetching most likely prediction for time %s", v54, 0xCu);
    sub_100164B98(v56);
    v62 = v55 + 1;
    v44 = v194;
    v50 = v198;

    v63 = v196;
    v200 = *(v32 + 8);
    v200(v46, v196);
    v64 = v32 + 8;
  }

  else
  {

    v170 = v26[1];
    v170(v31, v25);
    v63 = v196;
    v200 = *(v32 + 8);
    v200(v46, v196);
    v64 = v32 + 8;
    v62 = v26 + 1;
  }

  v66 = v190 + 7;
  v65 = v190[7];
  v67 = v197;
  v65(v50, 1, 1, v197);
  v178 = v65;
  v68 = (v65)(v183, 1, 1, v67);
  result = (*(*v195 + 208))(v68);
  v71 = 0;
  v73 = result + 56;
  v72 = *(result + 56);
  v188 = result;
  v74 = 1 << *(result + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & v72;
  v77 = (v74 + 63) >> 6;
  v179 = v66;
  v192 = (v66 - 1);
  *&v70 = 136315394;
  v181 = v70;
  *&v70 = 136315138;
  v165 = v70;
  v195 = v64;
  v78 = v189;
  v174 = v62;
  v184 = v77;
  v182 = result + 56;
  if ((v75 & v72) != 0)
  {
    while (1)
    {
      while (1)
      {
LABEL_13:
        v81 = v185;
        sub_1001A3408(*(v188 + 48) + v190[9] * (__clz(__rbit64(v76)) | (v71 << 6)), v185, type metadata accessor for InternalUpcomingFlightPrediction);
        sub_1001A3358(v81, v78);
        v187 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
        v82 = v78 + *(v187 + 13);
        Date.distance(to:)();
        v84 = fabs(v83);
        sub_100003E50(&off_1002B6A68, v44);
        v85 = v78;
        v86 = v186;
        sub_1001A3408(v85, v186, type metadata accessor for InternalUpcomingFlightPrediction);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v201[0] = v90;
          *v89 = v181;
          sub_1001A34D0(&qword_1002D6E18, type metadata accessor for InternalUpcomingFlightPrediction);
          v91 = dispatch thunk of CustomStringConvertible.description.getter();
          v93 = v92;
          sub_1001A3470(v86, type metadata accessor for InternalUpcomingFlightPrediction);
          v94 = sub_10017A8A8(v91, v93, v201);

          *(v89 + 4) = v94;
          *(v89 + 12) = 2048;
          *(v89 + 14) = v84;
          _os_log_impl(&_mh_execute_header, v87, v88, "Checking %s. Time diff: %f", v89, 0x16u);
          sub_100164B98(v90);
          v44 = v194;
          v95 = v198;

          v63 = v196;
          v200(v44, v196);
          v96 = v191;
        }

        else
        {

          sub_1001A3470(v86, type metadata accessor for InternalUpcomingFlightPrediction);
          v63 = v196;
          v200(v44, v196);
          v96 = v191;
          v95 = v198;
        }

        v76 &= v76 - 1;
        v78 = v189;
        if (v84 <= 7200.0)
        {
          break;
        }

        v97 = v63;
        v98 = v177;
        sub_100003E50(&off_1002B6A68, v177);
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.debug.getter();
        v101 = os_log_type_enabled(v99, v100);
        v102 = v197;
        if (v101)
        {
          v103 = swift_slowAlloc();
          *v103 = 0;
          _os_log_impl(&_mh_execute_header, v99, v100, "Time diff larger than maximum, skipping", v103, 2u);
          v44 = v194;
        }

        v79 = v98;
        v63 = v97;
        v200(v79, v97);
        result = sub_1001A3470(v78, type metadata accessor for InternalUpcomingFlightPrediction);
        v77 = v184;
        v67 = v102;
        v73 = v182;
        if (!v76)
        {
          goto LABEL_9;
        }
      }

      v67 = v197;
      v180 = *v192;
      if ((v180)(v95, 1, v197))
      {
        if (v84 > 1.79769313e308)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v104 = v95 + *(v187 + 13);
        v105 = v173;
        v106 = v175;
        v171(v173, v104, v175);
        Date.distance(to:)();
        v108 = v107;
        v73 = v182;
        v109 = v106;
        v44 = v194;
        v170(v105, v109);
        if (v84 > fabs(v108))
        {
          goto LABEL_27;
        }
      }

      v110 = v169;
      sub_100003E50(&off_1002B6A68, v169);
      sub_1001A3408(v78, v96, type metadata accessor for InternalUpcomingFlightPrediction);
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v201[0] = v162;
        *v113 = v165;
        sub_1001A34D0(&qword_1002D6E18, type metadata accessor for InternalUpcomingFlightPrediction);
        v114 = dispatch thunk of CustomStringConvertible.description.getter();
        v116 = v115;
        sub_1001A3470(v191, type metadata accessor for InternalUpcomingFlightPrediction);
        v117 = sub_10017A8A8(v114, v116, v201);
        v67 = v197;

        *(v113 + 4) = v117;
        _os_log_impl(&_mh_execute_header, v111, v112, "Prediction is new best match: %s", v113, 0xCu);
        sub_100164B98(v162);
        v118 = v198;

        v63 = v196;
        v200(v110, v196);
      }

      else
      {

        sub_1001A3470(v96, type metadata accessor for InternalUpcomingFlightPrediction);
        v63 = v196;
        v200(v110, v196);
        v118 = v198;
      }

      sub_1000157F0(v118, &qword_1002D6E10, &qword_10024AE18);
      sub_1001A3408(v78, v118, type metadata accessor for InternalUpcomingFlightPrediction);
      v178(v118, 0, 1, v67);
      v44 = v194;
LABEL_27:
      sub_10001A718(v78 + *(v67 + 20), v201, &qword_1002D71D0, &qword_10024AE20);
      if (v201[3])
      {
        sub_1000157F0(v201, &qword_1002D71D0, &qword_10024AE20);
        v119 = v183;
        if ((v180)(v183, 1, v67))
        {
          if (v84 <= 1.79769313e308)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v120 = v119 + *(v187 + 13);
          v121 = v173;
          v122 = v175;
          v171(v173, v120, v175);
          Date.distance(to:)();
          v124 = v123;
          v170(v121, v122);
          if (v84 <= fabs(v124))
          {
LABEL_33:
            v125 = v168;
            sub_100003E50(&off_1002B6A68, v168);
            v126 = v164;
            sub_1001A3408(v78, v164, type metadata accessor for InternalUpcomingFlightPrediction);
            v127 = Logger.logObject.getter();
            v128 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v127, v128))
            {
              v129 = swift_slowAlloc();
              v180 = v129;
              v187 = swift_slowAlloc();
              v201[0] = v187;
              *v129 = v165;
              sub_1001A34D0(&qword_1002D6E18, type metadata accessor for InternalUpcomingFlightPrediction);
              v130 = v126;
              v67 = v197;
              v131 = dispatch thunk of CustomStringConvertible.description.getter();
              v133 = v132;
              sub_1001A3470(v130, type metadata accessor for InternalUpcomingFlightPrediction);
              v134 = sub_10017A8A8(v131, v133, v201);
              v63 = v196;

              v135 = v180;
              *(v180 + 4) = v134;
              _os_log_impl(&_mh_execute_header, v127, v128, "Prediction is new best match with cellular coverage data: %s", v135, 0xCu);
              sub_100164B98(v187);

              v200(v168, v63);
            }

            else
            {

              sub_1001A3470(v126, type metadata accessor for InternalUpcomingFlightPrediction);
              v200(v125, v63);
              v67 = v197;
            }

            v136 = v183;
            sub_1000157F0(v183, &qword_1002D6E10, &qword_10024AE18);
            sub_1001A3358(v78, v136);
            result = (v178)(v136, 0, 1, v67);
            v44 = v194;
            goto LABEL_37;
          }
        }

        result = sub_1001A3470(v78, type metadata accessor for InternalUpcomingFlightPrediction);
      }

      else
      {
        sub_1001A3470(v78, type metadata accessor for InternalUpcomingFlightPrediction);
        result = sub_1000157F0(v201, &qword_1002D71D0, &qword_10024AE20);
      }

LABEL_37:
      v77 = v184;
      if (!v76)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v80 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      __break(1u);
      return result;
    }

    if (v80 >= v77)
    {
      break;
    }

    v76 = *(v73 + 8 * v80);
    ++v71;
    if (v76)
    {
      v71 = v80;
      goto LABEL_13;
    }
  }

  v137 = v176;
  sub_100003E50(&off_1002B6A68, v176);
  v138 = Logger.logObject.getter();
  v139 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v201[0] = swift_slowAlloc();
    *v140 = v181;
    v141 = v183;
    swift_beginAccess();
    v142 = v67;
    v143 = *v192;
    if ((*v192)(v141, 1, v142))
    {
      v144 = 0xE300000000000000;
      v145 = 7104878;
    }

    else
    {
      v146 = v163;
      sub_1001A3408(v141, v163, type metadata accessor for InternalUpcomingFlightPrediction);
      v147 = sub_1001BCC88();
      v144 = v148;
      sub_1001A3470(v146, type metadata accessor for InternalUpcomingFlightPrediction);
      v145 = v147;
      v63 = v196;
    }

    v149 = sub_10017A8A8(v145, v144, v201);

    *(v140 + 4) = v149;
    *(v140 + 12) = 2080;
    v150 = v198;
    swift_beginAccess();
    if (v143(v150, 1, v197))
    {
      v151 = 0xE300000000000000;
      v152 = 7104878;
    }

    else
    {
      v153 = v163;
      sub_1001A3408(v150, v163, type metadata accessor for InternalUpcomingFlightPrediction);
      v154 = sub_1001BCC88();
      v151 = v155;
      sub_1001A3470(v153, type metadata accessor for InternalUpcomingFlightPrediction);
      v152 = v154;
    }

    v156 = sub_10017A8A8(v152, v151, v201);

    *(v140 + 14) = v156;
    _os_log_impl(&_mh_execute_header, v138, v139, "Final result: best match with cellular coverage data %s. Best match %s", v140, 0x16u);
    swift_arrayDestroy();

    v200(v176, v63);
    v67 = v197;
  }

  else
  {

    v200(v137, v63);
    v141 = v183;
  }

  v157 = v166;
  swift_beginAccess();
  sub_10001A718(v141, v157, &qword_1002D6E10, &qword_10024AE18);
  v158 = *v192;
  if ((*v192)(v157, 1, v67) == 1)
  {
    v159 = v198;
    swift_beginAccess();
    sub_10001A718(v159, v167, &qword_1002D6E10, &qword_10024AE18);
    if (v158(v157, 1, v67) != 1)
    {
      sub_1000157F0(v157, &qword_1002D6E10, &qword_10024AE18);
    }
  }

  else
  {
    v160 = v167;
    sub_1001A3358(v157, v167);
    v178(v160, 0, 1, v67);
  }

  sub_1000157F0(v141, &qword_1002D6E10, &qword_10024AE18);
  return sub_1000157F0(v198, &qword_1002D6E10, &qword_10024AE18);
}

uint64_t sub_1001A0FC0()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B6A68, v7);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = v3;
    v11 = v10;
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136315138;
    type metadata accessor for InternalUpcomingFlightPrediction(0);
    sub_1001A34D0(&qword_1002D8250, type metadata accessor for InternalUpcomingFlightPrediction);
    v13 = Set.description.getter();
    v15 = sub_10017A8A8(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received new upcoming flight predictions: %s", v11, 0xCu);
    sub_100164B98(v12);

    (*(v4 + 8))(v7, v19);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }

  v16 = *(*v1 + 216);

  return v16(v17);
}

uint64_t sub_1001A1240(int a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v112 = &v96 - v7;
  v8 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v101 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v109 = *(v11 - 8);
  v12 = *(v109 + 64);
  v13 = __chkstk_darwin(v11);
  v102 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v100 = &v96 - v15;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v106 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100164A3C(&qword_1002D6E10, &qword_10024AE18);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v104 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v103 = &v96 - v25;
  __chkstk_darwin(v24);
  v105 = &v96 - v26;
  v27 = type metadata accessor for Logger();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v110 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v96 - v32;
  v107 = v4;
  sub_100003E50(&off_1002B6A68, &v96 - v32);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  v36 = os_log_type_enabled(v34, v35);
  v108 = v11;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v99 = swift_slowAlloc();
    v113[0] = v99;
    *v37 = 136315138;
    if (a1)
    {
      v38 = 28271;
    }

    else
    {
      v38 = 6710895;
    }

    v111 = v28;
    if (a1)
    {
      v39 = 0xE200000000000000;
    }

    else
    {
      v39 = 0xE300000000000000;
    }

    v40 = sub_10017A8A8(v38, v39, v113);
    LODWORD(v98) = a1;
    v41 = v2;
    v42 = v27;
    v43 = v17;
    v44 = v16;
    v45 = v40;
    v28 = v111;

    *(v37 + 4) = v45;
    v16 = v44;
    v17 = v43;
    v27 = v42;
    v2 = v41;
    _os_log_impl(&_mh_execute_header, v34, v35, "Airplane mode is now %s", v37, 0xCu);
    sub_100164B98(v99);

    v46 = v98;

    v47 = v28;
  }

  else
  {

    v47 = v28;
    v46 = a1;
  }

  v48 = *(v47 + 8);
  v49 = v48(v33, v27);
  result = (*(*v2 + 232))(v49);
  if (v46)
  {
    if (result == 3)
    {
      return result;
    }

    v111 = v28;
    (*(*v2 + 536))();
    v51 = (v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider);
    v52 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 24);
    v53 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 32);
    sub_100014E1C((v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider), v52);
    v54 = v106;
    (*(v53 + 8))(v52, v53);
    v55 = v105;
    (*(*v2 + 544))(v54);
    v56 = *(v17 + 8);
    v106 = v16;
    v56(v54, v16);
    (*(*v2 + 384))(v55);
    v57 = v110;
    sub_100003E50(&off_1002B6A68, v110);

    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v58, v59))
    {

      v70 = v57;
      v71 = v27;
LABEL_25:
      v48(v70, v71);
      (*(*v2 + 360))(1);
      (*(*v2 + 240))(3);
      v90 = v51[3];
      v91 = v51[4];
      sub_100014E1C(v51, v90);
      v92 = v112;
      (*(v91 + 8))(v90, v91);
      (*(v17 + 56))(v92, 0, 1, v106);
      v93 = (*(*v2 + 408))(v92);
      v94 = (*(*v2 + 328))(v93);
      return (*(*v2 + 432))(v94, v95 & 1);
    }

    v97 = v59;
    v98 = v58;
    v99 = v51;
    v105 = v27;
    v107 = v17;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v96 = v61;
    v116[0] = v61;
    *v60 = 136315394;
    v62 = *(*v2 + 376);
    v63 = v103;
    v62(v61);
    v64 = *(v109 + 48);
    v109 += 48;
    if (v64(v63, 1, v108))
    {
      sub_1000157F0(v63, &qword_1002D6E10, &qword_10024AE18);
      v65 = 0xE300000000000000;
      v66 = 7104878;
    }

    else
    {
      v72 = v100;
      sub_1001A3408(v63, v100, type metadata accessor for InternalUpcomingFlightPrediction);
      sub_1000157F0(v63, &qword_1002D6E10, &qword_10024AE18);
      v73 = v101;
      sub_1001A3408(v72, v101, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      sub_1001A3470(v72, type metadata accessor for InternalUpcomingFlightPrediction);
      v74 = sub_1001A4F98();
      v65 = v75;
      sub_1001A3470(v73, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      v66 = v74;
    }

    v76 = sub_10017A8A8(v66, v65, v116);

    *(v60 + 4) = v76;
    *(v60 + 12) = 2080;
    v78 = v104;
    v62(v77);
    v79 = v108;
    if (v64(v78, 1, v108))
    {
      sub_1000157F0(v78, &qword_1002D6E10, &qword_10024AE18);
      v17 = v107;
      v80 = v105;
      v51 = v99;
    }

    else
    {
      v83 = v102;
      sub_1001A3408(v78, v102, type metadata accessor for InternalUpcomingFlightPrediction);
      sub_1000157F0(v78, &qword_1002D6E10, &qword_10024AE18);
      sub_10001A718(v83 + *(v79 + 20), v113, &qword_1002D71D0, &qword_10024AE20);
      sub_1001A3470(v83, type metadata accessor for InternalUpcomingFlightPrediction);
      v17 = v107;
      v80 = v105;
      v51 = v99;
      if (v114)
      {
        v84 = v115;
        sub_100014E1C(v113, v114);
        v85 = *(v84 + 8);
        v86 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = v87;
        sub_100164B98(v113);
        v82 = v86;
        goto LABEL_24;
      }

      sub_1000157F0(v113, &qword_1002D71D0, &qword_10024AE20);
    }

    v81 = 0xE300000000000000;
    v82 = 7104878;
LABEL_24:
    v88 = sub_10017A8A8(v82, v81, v116);

    *(v60 + 14) = v88;
    v89 = v98;
    _os_log_impl(&_mh_execute_header, v98, v97, "Most likely prediction: %s. Cellular coverage tile %s", v60, 0x16u);
    swift_arrayDestroy();

    v70 = v110;
    v71 = v80;
    goto LABEL_25;
  }

  if (result == 3)
  {
    (*(*v2 + 240))(4);
    v67 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 24);
    v68 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 32);
    sub_100014E1C((v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider), v67);
    v69 = v112;
    (*(v68 + 8))(v67, v68);
    (*(v17 + 56))(v69, 0, 1, v16);
    return (*(*v2 + 456))(v69);
  }

  return result;
}

uint64_t sub_1001A1E68(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B6A68, v16);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v43 = v11;
    v20 = v19;
    v21 = swift_slowAlloc();
    v42 = v9;
    v22 = v21;
    v45 = v21;
    *v20 = 136315138;
    v44 = a1;
    sub_1001A3518();
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = sub_10017A8A8(v23, v24, &v45);
    v41 = v12;
    v26 = a1;
    v27 = v25;

    *(v20 + 4) = v27;
    a1 = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "Registration state changed to %s", v20, 0xCu);
    sub_100164B98(v22);
    v9 = v42;

    v11 = v43;

    (*(v13 + 8))(v16, v41);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v28 = (*(*v1 + 312))(a1);
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      result = (*(*v1 + 232))(v28);
      if (result != 3)
      {
        (*(*v1 + 472))();
        v35 = type metadata accessor for Date();
        v36 = *(v35 - 8);
        v37 = (*(v36 + 48))(v9, 1, v35);
        sub_1000157F0(v9, &unk_1002D7BD0, &unk_10024A800);
        if (v37 == 1)
        {
          v38 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 24);
          v39 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 32);
          sub_100014E1C((v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider), v38);
          (*(v39 + 8))(v38, v39);
          (*(v36 + 56))(v11, 0, 1, v35);
          (*(*v2 + 480))(v11);
        }

        return (*(*v2 + 240))(1);
      }
    }

    else
    {
      result = (*(*v1 + 232))(v28);
      if (result != 3)
      {
        return (*(*v1 + 240))(2);
      }
    }
  }

  else if (a1 - 1 >= 2)
  {
    result = (*(*v1 + 232))(v28);
    if (result != 3)
    {
      return (*(*v1 + 240))(4);
    }
  }

  else
  {
    v29 = *(*v1 + 232);
    result = (v29)(v28);
    if (result != 3)
    {
      result = v29();
      if (result)
      {
        v31 = *(v1 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 24);
        v32 = *(v1 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 32);
        sub_100014E1C((v1 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider), v31);
        (*(v32 + 8))(v31, v32);
        v33 = type metadata accessor for Date();
        (*(*(v33 - 8) + 56))(v11, 0, 1, v33);
        (*(*v1 + 504))(v11);
        v34 = (*(*v1 + 240))(0);
        return (*(*v1 + 536))(v34);
      }
    }
  }

  return result;
}

uint64_t sub_1001A250C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v42 = *(a1 + 24);
  v5 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v41 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v37[-v9];
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v37[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100003E50(&off_1002B6A68, v15);
  sub_10001A718(a1, &v44, &qword_1002D7C30, &qword_10024AE28);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  sub_1000157F0(a1, &qword_1002D7C30, &qword_10024AE28);
  if (os_log_type_enabled(v16, v17))
  {
    v38 = v17;
    v39 = v11;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v43 = v19;
    *v18 = 136315138;
    v20 = *(a1 + 24);
    v40 = v10;
    if (v20)
    {
      v44 = *a1;
      v45 = *(a1 + 16);
      v46 = v20;
      v47 = *(a1 + 32);
      v48 = *(a1 + 48);
      v21 = sub_1001BD648();
      v23 = v22;
    }

    else
    {
      v23 = 0xE300000000000000;
      v21 = 7104878;
    }

    v29 = sub_10017A8A8(v21, v23, &v43);

    *(v18 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v16, v38, "Cell update: %s", v18, 0xCu);
    sub_100164B98(v19);

    v24 = (*(v12 + 8))(v15, v39);
    v10 = v40;
    if (!*(a1 + 24))
    {
      goto LABEL_8;
    }

LABEL_5:
    v25 = *a1;
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
    (*(*v2 + 288))(v10);
    (*(*v2 + 336))(v25, 0);
    v27 = *(*v2 + 264);

    return v27(a1);
  }

  v24 = (*(v12 + 8))(v15, v11);
  if (*(a1 + 24))
  {
    goto LABEL_5;
  }

LABEL_8:
  v30 = v10;
  v31 = v41;
  (*(*v2 + 280))(v24);
  v32 = type metadata accessor for Date();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 48))(v31, 1, v32);
  result = sub_1000157F0(v31, &unk_1002D7BD0, &unk_10024A800);
  if (v34 == 1)
  {
    v35 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 24);
    v36 = *(v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider + 32);
    sub_100014E1C((v2 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider), v35);
    (*(v36 + 8))(v35, v36);
    (*(v33 + 56))(v30, 0, 1, v32);
    return (*(*v2 + 288))(v30);
  }

  return result;
}

uint64_t sub_1001A2A74(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  __chkstk_darwin(v5);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100164A3C(&qword_1002D6E10, &qword_10024AE18);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v51 - v10;
  v57 = type metadata accessor for Logger();
  v12 = *(v57 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v57);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v54 = &v51 - v18;
  v19 = __chkstk_darwin(v17);
  v52 = &v51 - v20;
  __chkstk_darwin(v19);
  v22 = &v51 - v21;
  sub_100003E50(&off_1002B6A68, &v51 - v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v23, v24, "Radio state update: %lu", v25, 0xCu);
  }

  v28 = *(v12 + 8);
  v26 = v12 + 8;
  v27 = v28;
  v29 = v57;
  result = (v28)(v22, v57);
  if (a1 == 2)
  {
    v51 = v26;
    if ((*(*v2 + 352))(result) == 1)
    {
      (*(*v2 + 376))();
      v31 = v56;
      if ((*(v55 + 48))(v11, 1, v56))
      {
        sub_1000157F0(v11, &qword_1002D6E10, &qword_10024AE18);
        v59 = 0u;
        v60 = 0u;
        v61 = 0;
LABEL_7:
        sub_1000157F0(&v59, &qword_1002D71D0, &qword_10024AE20);
        v32 = v54;
        sub_100003E50(&off_1002B6A68, v54);
        v33 = Logger.logObject.getter();
        v34 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&_mh_execute_header, v33, v34, "No data available to send to baseband", v35, 2u);
        }

        v27(v32, v29);
        return (*(*v2 + 360))(2);
      }

      v39 = v53;
      sub_1001A3408(v11, v53, type metadata accessor for InternalUpcomingFlightPrediction);
      sub_1000157F0(v11, &qword_1002D6E10, &qword_10024AE18);
      sub_10001A718(v39 + *(v31 + 20), &v59, &qword_1002D71D0, &qword_10024AE20);
      sub_1001A3470(v39, type metadata accessor for InternalUpcomingFlightPrediction);
      if (!*(&v60 + 1))
      {
        goto LABEL_7;
      }

      sub_10001A700(&v59, v62);
      v40 = v52;
      sub_100003E50(&off_1002B6A68, v52);
      sub_100164B34(v62, &v59);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v58 = v44;
        *v43 = 136315138;
        v45 = v61;
        sub_100014E1C(&v59, *(&v60 + 1));
        v46 = *(v45 + 8);
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v49 = v48;
        sub_100164B98(&v59);
        v50 = sub_10017A8A8(v47, v49, &v58);

        *(v43 + 4) = v50;
        _os_log_impl(&_mh_execute_header, v41, v42, "Sending data to baseband: %s", v43, 0xCu);
        sub_100164B98(v44);

        v27(v40, v57);
      }

      else
      {

        v27(v40, v57);
        sub_100164B98(&v59);
      }

      (*(*v2 + 360))(3);
      return sub_100164B98(v62);
    }

    else
    {
      sub_100003E50(&off_1002B6A68, v16);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Prediction not ready to send", v38, 2u);
      }

      return (v27)(v16, v29);
    }
  }

  return result;
}

uint64_t sub_1001A31BC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 152);

  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_lastConnectedToCellAt, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_predictionData, &qword_1002D6E10, &qword_10024AE18);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_airplaneModeEnableTimestamp, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_airplaneModeDisableTimestamp, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_limitedServiceTimestamp, &unk_1002D7BD0, &unk_10024A800);
  sub_1000157F0(v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_fullServiceTimestamp, &unk_1002D7BD0, &unk_10024A800);
  sub_100164B98((v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_dateProvider));
  sub_100164B98((v0 + OBJC_IVAR____TtC17wirelessinsightsd31RoamingPLMNPredictionController_metricSubmitter));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001A32C4()
{
  sub_1001A31BC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001A32F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  type metadata accessor for RoamingPLMNPredictionController();

  return sub_100003E50(a1, a2);
}

uint64_t sub_1001A3358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InternalUpcomingFlightPrediction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001A33BC()
{
  result = qword_1002D5C50;
  if (!qword_1002D5C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002D5C50);
  }

  return result;
}

uint64_t sub_1001A3408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A3470(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001A34D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001A3518()
{
  result = qword_1002D6E20;
  if (!qword_1002D6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6E20);
  }

  return result;
}

unint64_t sub_1001A3570()
{
  result = qword_1002D6E28;
  if (!qword_1002D6E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6E28);
  }

  return result;
}

unint64_t sub_1001A35C8()
{
  result = qword_1002D6E30;
  if (!qword_1002D6E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6E30);
  }

  return result;
}

uint64_t type metadata accessor for RoamingPLMNPredictionController()
{
  result = qword_1002DA310;
  if (!qword_1002DA310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A3670()
{
  sub_1001A37D4(319, &qword_1002D7F00, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1001A37D4(319, &unk_1002D6E60, type metadata accessor for InternalUpcomingFlightPrediction);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1001A37D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RoamingPLMNPredictionController.PredictionSendState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoamingPLMNPredictionController.PredictionSendState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001A3988()
{
  v0 = type metadata accessor for Logger();
  sub_1001A3A40(v0, qword_1002DA328);
  sub_1001A3A08(v0, qword_1002DA328);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001A3A08(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1001A3A40(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

id sub_1001A3AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v15[4] = a4;
  v15[5] = a5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1001A3B90;
  v15[3] = &unk_1002B75C8;
  v12 = _Block_copy(v15);

  v13 = [v11 oneShotTopSuggestionsForSink:a1 count:a2 transportType:a3 callback:v12 onQueue:a6];
  _Block_release(v12);

  return v13;
}

uint64_t sub_1001A3B90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_100164AEC(0, &qword_1002D79A8, MapsSuggestionsEntry_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1001A3CB0()
{
  v1 = (v0 + OBJC_IVAR____TtC17wirelessinsightsd21MapsSuggestionHandler_uniqueName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1001A3D74(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17wirelessinsightsd21MapsSuggestionHandler_uniqueName);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id sub_1001A3F28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsSuggestionHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001A3F70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, double a9, double a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v24 = objc_allocWithZone(v13);
  *&v24[OBJC_IVAR___WISCellularCoverageTile_latitude] = a9;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_longitude] = a10;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_noServiceCount] = a1;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_inServiceCount] = a2;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_limitedServiceCount] = a3;
  if (a4)
  {
    v25 = [a4 integerValue];
  }

  else
  {
    v25 = 0;
  }

  v26 = &v24[OBJC_IVAR___WISCellularCoverageTile_highestFrequencyRsrp];
  *v26 = v25;
  v26[8] = a4 == 0;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_highestCountMCC] = a5;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_highestCountMNC] = a6;
  if (a7)
  {
    v27 = [a7 integerValue];
  }

  else
  {
    v27 = 0;
  }

  v28 = &v24[OBJC_IVAR___WISCellularCoverageTile_highestCountBand];
  *v28 = v27;
  v28[8] = a7 == 0;
  if (a8)
  {
    v29 = [a8 integerValue];
  }

  else
  {
    v29 = 0;
  }

  v30 = &v24[OBJC_IVAR___WISCellularCoverageTile_highestCountARFCN];
  *v30 = v29;
  v30[8] = a8 == 0;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_highestCountRAT] = a11;
  *&v24[OBJC_IVAR___WISCellularCoverageTile_highestCount] = a12;
  v33.receiver = v24;
  v33.super_class = v13;
  v31 = objc_msgSendSuper2(&v33, "init");

  return v31;
}

void sub_1001A47F0()
{
  v1 = *(*v0 + OBJC_IVAR___WISCellularCoverageTile_noServiceCount);
  v2 = *(*v0 + OBJC_IVAR___WISCellularCoverageTile_inServiceCount);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (__OFADD__(v4, *(*v0 + OBJC_IVAR___WISCellularCoverageTile_limitedServiceCount)))
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1001A4850()
{
  v1 = *v0 + OBJC_IVAR___WISCellularCoverageTile_highestFrequencyRsrp;
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1001A486C()
{
  v1 = *(*v0 + OBJC_IVAR___WISCellularCoverageTile_noServiceCount);
  v2 = *(*v0 + OBJC_IVAR___WISCellularCoverageTile_inServiceCount);
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = *(*v0 + OBJC_IVAR___WISCellularCoverageTile_limitedServiceCount);
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A48D8()
{
  v1 = *v0 + OBJC_IVAR___WISCellularCoverageTile_highestCountBand;
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1001A48F4()
{
  v1 = *v0 + OBJC_IVAR___WISCellularCoverageTile_highestCountARFCN;
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1001A4938(uint64_t a1, double a2, double a3)
{
  *(v3 + 160) = a2;
  *(v3 + 168) = a3;
  *(v3 + 152) = a1;
  v4 = sub_100164A3C(&qword_1002D7140, &qword_10024B0A8);
  *(v3 + 176) = v4;
  v5 = *(v4 - 8);
  *(v3 + 184) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_1001A4A08, 0, 0);
}

uint64_t sub_1001A4A08()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[22];
  v9 = *(v1 + 20);
  v8 = *(v1 + 21);
  v13 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v1[25] = v10;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_1001A4C08;
  swift_continuation_init();
  v1[17] = v7;
  v11 = sub_1001B8BDC(v1 + 14);
  sub_100164A3C(&qword_1002D7148, &qword_10024B0B0);
  CheckedContinuation.init(continuation:function:)();
  (*(v6 + 32))(v11, v5, v7);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1001A4DBC;
  v1[13] = &unk_1002B6EA8;
  [v13 cellularCoverageTileConfigurationAtLatitude:v10 longitude:v3 reason:v9 completionHandler:v8];
  (*(v6 + 8))(v11, v7);

  return _swift_continuation_await(v2);
}

uint64_t sub_1001A4C08()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_1001A4CE8, 0, 0);
}

uint64_t sub_1001A4CE8()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = type metadata accessor for CellularCoverageTile();
    v4 = sub_1001B840C(&unk_1002D7150, v3, type metadata accessor for CellularCoverageTile);
  }

  else
  {
    v2 = 0;
    v4 = 0;
    v5 = *(v0 + 152);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
  }

  v6 = *(v0 + 192);
  v7 = *(v0 + 152);
  *v7 = v1;
  v7[3] = v2;
  v7[4] = v4;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001A4DBC(uint64_t a1, void *a2)
{
  sub_100014E1C((a1 + 32), *(a1 + 56));
  v3 = a2;
  sub_100164A3C(&qword_1002D7140, &qword_10024B0A8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1001A4E2C(uint64_t a1, double a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10017F434;

  return sub_1001A4938(a1, a2, a3);
}

uint64_t sub_1001A4F04()
{
  BYTE8(v4) = 0;
  v1._countAndFlagsBits = 0x79745B7972746E45;
  v1._object = 0xEB000000003A6570;
  String.append(_:)(v1);
  *&v4 = *(v0 + 16);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 93;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return *(&v4 + 1);
}

uint64_t sub_1001A4F98()
{
  v1 = v0;
  _StringGuts.grow(_:)(54);
  v2._object = 0x800000010025CF50;
  v2._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v2);
  v3 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  String.append(_:)(*(v0 + v3[7]));
  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5 = v3[13];
  type metadata accessor for Date();
  sub_1001B840C(&qword_1002D5B88, 255, &type metadata accessor for Date);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x203E2D2029;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  String.append(_:)(*(v1 + v3[10]));
  v8._countAndFlagsBits = 10272;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9 = v1 + v3[14];
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x656372756F73202CLL;
  v11._object = 0xEA0000000000203ALL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = sub_1001B7278(*(v1 + v3[6]));
  String.append(_:)(v12);

  return 0;
}

uint64_t sub_1001A5154()
{
  v1 = v0;
  type metadata accessor for Date();
  sub_1001B840C(&qword_1002D7160, 255, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction(0);
  Hasher._combine(_:)(*(v0 + v2[5]));
  Hasher._combine(_:)(*(v0 + v2[6]));
  v3 = (v0 + v2[7]);
  v4 = *v3;
  v5 = v3[1];
  String.hash(into:)();
  v6 = *(v0 + v2[8]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  v7 = *(v0 + v2[9]);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  Hasher._combine(_:)(*&v7);
  v8 = (v0 + v2[10]);
  v9 = *v8;
  v10 = v8[1];
  String.hash(into:)();
  v11 = *(v0 + v2[11]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  Hasher._combine(_:)(*&v11);
  v12 = *(v0 + v2[12]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  Hasher._combine(_:)(*&v12);
  v13 = v0 + v2[13];
  dispatch thunk of Hashable.hash(into:)();
  v14 = v1 + v2[14];
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001A52CC()
{
  Hasher.init(_seed:)();
  sub_1001A5154();
  return Hasher._finalize()();
}

Swift::Int sub_1001A5310()
{
  Hasher.init(_seed:)();
  sub_1001A5154();
  return Hasher._finalize()();
}

uint64_t sub_1001A5354()
{
  _StringGuts.grow(_:)(134);
  v1._countAndFlagsBits = 0xD000000000000029;
  v1._object = 0x800000010025CF70;
  String.append(_:)(v1);
  type metadata accessor for Date();
  sub_1001B840C(&qword_1002D5B88, 255, &type metadata accessor for Date);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0xD000000000000015;
  v3._object = 0x800000010025CFA0;
  String.append(_:)(v3);
  v4 = type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(0);
  v5 = *(v0 + v4[5]);
  Double.write<A>(to:)();
  v6._countAndFlagsBits = 0xD000000000000016;
  v6._object = 0x800000010025CFC0;
  String.append(_:)(v6);
  v7 = *(v0 + v4[6]);
  Double.write<A>(to:)();
  v8._object = 0x800000010025CFE0;
  v8._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v8);
  v9 = *(v0 + v4[7]);
  Double.write<A>(to:)();
  v10._countAndFlagsBits = 0xD000000000000014;
  v10._object = 0x800000010025D000;
  String.append(_:)(v10);
  v11 = *(v0 + v4[8]);
  Double.write<A>(to:)();
  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  return 0;
}

double sub_1001A553C(uint64_t a1, char a2)
{
  v5 = type metadata accessor for PrivateServicePrediction.ServicePredictionType();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:))
  {
    result = 0.1;
    switch(a2)
    {
      case 2:
      case 3:
      case 15:
      case 16:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[6];
        break;
      case 4:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[8];
        break;
      case 5:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[7];
        break;
      case 6:
      case 7:
      case 14:
      case 17:
      case 18:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[9];
        break;
      case 8:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[10];
        break;
      case 9:
      case 10:
      case 11:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[11];
        break;
      case 12:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[12];
        break;
      case 13:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[13];
        break;
      default:
        return result;
    }
  }

  else if (v10 == enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:))
  {
    result = 0.1;
    switch(a2)
    {
      case 2:
      case 3:
      case 15:
      case 16:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[14];
        break;
      case 4:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[16];
        break;
      case 5:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[15];
        break;
      case 6:
      case 7:
      case 14:
      case 17:
      case 18:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[17];
        break;
      case 8:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[18];
        break;
      case 9:
      case 10:
      case 11:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[19];
        break;
      case 12:
        result = 0.6;
        break;
      case 13:
        (*(*v2 + 264))(v13, 0.1);
        result = *&v13[20];
        break;
      default:
        return result;
    }
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    return 0.1;
  }

  return result;
}

__n128 sub_1001A5A24@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 392);
  v4 = *(v1 + 424);
  v5 = *(v1 + 440);
  *(a1 + 160) = *(v1 + 408);
  *(a1 + 176) = v4;
  *(a1 + 192) = v5;
  v6 = *(v1 + 328);
  v7 = *(v1 + 360);
  v8 = *(v1 + 376);
  *(a1 + 96) = *(v1 + 344);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 144) = v3;
  result = *(v1 + 264);
  v10 = *(v1 + 296);
  v11 = *(v1 + 312);
  *(a1 + 32) = *(v1 + 280);
  *(a1 + 48) = v10;
  *(a1 + 64) = v11;
  *(a1 + 80) = v6;
  *a1 = *(v1 + 248);
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1001A5AA4(__int128 *a1)
{
  swift_beginAccess();
  v3 = a1[10];
  v4 = a1[11];
  v5 = a1[8];
  *(v1 + 392) = a1[9];
  *(v1 + 408) = v3;
  v6 = a1[12];
  *(v1 + 424) = v4;
  *(v1 + 440) = v6;
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[4];
  *(v1 + 328) = a1[5];
  *(v1 + 344) = v7;
  *(v1 + 360) = v8;
  *(v1 + 376) = v5;
  result = a1[2];
  v11 = a1[3];
  v12 = *a1;
  *(v1 + 264) = a1[1];
  *(v1 + 280) = result;
  *(v1 + 296) = v11;
  *(v1 + 312) = v9;
  *(v1 + 248) = v12;
  return result;
}

uint64_t sub_1001A5B74()
{
  swift_beginAccess();
  result = *(v0 + 456);
  v2 = *(v0 + 464);
  return result;
}

uint64_t sub_1001A5BAC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 456) = a1;
  *(v2 + 464) = a2 & 1;
  return result;
}

uint64_t sub_1001A5C50()
{
  swift_beginAccess();
  result = *(v0 + 472);
  v2 = *(v0 + 480);
  return result;
}

uint64_t sub_1001A5C88(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 472) = a1;
  *(v2 + 480) = a2 & 1;
  return result;
}

uint64_t sub_1001A5D2C()
{
  swift_beginAccess();
  result = *(v0 + 488);
  v2 = *(v0 + 496);
  return result;
}

uint64_t sub_1001A5D64(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 488) = a1;
  *(v2 + 496) = a2 & 1;
  return result;
}

uint64_t sub_1001A5E08@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_simulatedFlightTravelLocation;
  swift_beginAccess();
  return sub_10001A718(v1 + v3, a1, &qword_1002D7178, &unk_10024B0C0);
}

uint64_t sub_1001A5E70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_simulatedFlightTravelLocation;
  swift_beginAccess();
  sub_1001B85E8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1001A5F30()
{
  v1 = v0 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1001A5F80(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1001A5FEC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1001A608C;
}

void sub_1001A608C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

double sub_1001A6114()
{
  v1 = COERCE_DOUBLE((*(*v0 + 288))());
  if ((v2 & 1) == 0)
  {
    return v1;
  }

  (*(*v0 + 264))(v4, COERCE_DOUBLE(*&v1));
  return v4[0];
}

double sub_1001A619C()
{
  v1 = COERCE_DOUBLE((*(*v0 + 336))());
  if ((v2 & 1) == 0)
  {
    return v1;
  }

  (*(*v0 + 264))(v4, COERCE_DOUBLE(*&v1));
  return *&v4[1];
}

uint64_t sub_1001A6224()
{
  result = (*(*v0 + 312))();
  if (v2)
  {
    (*(*v0 + 264))(v3, result);
    return v3[2];
  }

  return result;
}

uint64_t sub_1001A62A4()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentPredictions;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

void *sub_1001A636C()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_timer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1001A63B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_timer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1001A6470()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_lastLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1001A651C()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentRegistrationState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001A6560(char a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentRegistrationState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001A6610()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentlyInAirplaneMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001A6654(char a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentlyInAirplaneMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001A6704()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_registrationTimeCounter;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1001A676C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

double sub_1001A6828()
{
  v1 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_lastExpectedOutOfServiceDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1001A686C(double a1)
{
  v3 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_lastExpectedOutOfServiceDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1001A691C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MapsSuggestionController.DefaultCellularCoverageTileProvider();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_1002B70A0;
  *a1 = result;
  return result;
}

uint64_t sub_1001A697C(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_100164A3C(&qword_1002D7A00, &qword_10024BA80);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_1001A6A48, 0, 0);
}

uint64_t sub_1001A6A48()
{
  v1 = [objc_allocWithZone(MKReverseGeocodingRequest) initWithLocation:v0[19]];
  if (v1)
  {
    v2 = v1;
    v4 = v0[21];
    v3 = v0[22];
    v5 = v0[20];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1001A6C88;
    swift_continuation_init();
    v0[17] = v5;
    v6 = sub_1001B8BDC(v0 + 14);
    sub_100164A3C(&qword_1002D7A08, &qword_10024BA88);
    sub_100164A3C(&qword_1002D7A10, &qword_10024AC20);
    CheckedContinuation.init(continuation:function:)();
    (*(v4 + 32))(v6, v3, v5);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001A6F64;
    v0[13] = &unk_1002B76B8;
    [v2 getMapItemsWithCompletionHandler:?];

    (*(v4 + 8))(v6, v5);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v7 = v0[22];

    v8 = v0[1];

    return v8(0, 0);
  }
}

uint64_t sub_1001A6C88()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_1001A6EE0;
  }

  else
  {
    v3 = sub_1001A6D98;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001A6D98()
{
  v1 = v0[18];
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    v7 = 0;
    v9 = 0;
    goto LABEL_13;
  }

  if (v1 < 0)
  {
    v10 = v0[18];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 placemark];

  v6 = [v5 countryCode];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

LABEL_13:
  v11 = v0[22];

  v12 = v0[1];

  return v12(v7, v9);
}

uint64_t sub_1001A6EE0()
{
  v1 = v0[23];
  swift_willThrow();

  v2 = v0[22];

  v3 = v0[1];

  return v3(0, 0);
}

void sub_1001A6F64(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100014E1C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_100164A3C(&qword_1002D7A00, &qword_10024BA80);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100164AEC(0, &qword_1002D7A18, MKMapItem_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100164A3C(&qword_1002D7A00, &qword_10024BA80);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1001A702C(int a1, int a2, _OWORD *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10)
{
  v51 = a5;
  v52 = a6;
  v49 = a3;
  v50 = a4;
  v47 = a1;
  v48 = a2;
  v54 = a10;
  v55 = a8;
  v53 = a9;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  __chkstk_darwin(v12);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v17 = type metadata accessor for DispatchQoS();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = *(v10 + 48);
  v20 = *(v10 + 52);
  v21 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v21 + 456) = 0;
  *(v21 + 464) = 1;
  *(v21 + 472) = 0;
  *(v21 + 480) = 1;
  *(v21 + 488) = 0;
  *(v21 + 496) = 1;
  v22 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_simulatedFlightTravelLocation;
  v23 = type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(0);
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v43 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_queue;
  v42 = sub_100164AEC(0, &qword_1002D6640, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_1001B840C(&qword_1002D5E50, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100164A3C(&unk_1002D6650, &qword_100249DD0);
  sub_10017F314(&qword_1002D5E58, &unk_1002D6650, &qword_100249DD0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v45 + 104))(v44, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
  *(v21 + v43) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v24 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_handler;
  *(v21 + v24) = [objc_allocWithZone(type metadata accessor for MapsSuggestionHandler()) init];
  *(v21 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentPredictions) = _swiftEmptyArrayStorage;
  *(v21 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_timer) = 0;
  *(v21 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_lastLocation) = 0;
  v25 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentRegistrationState;
  *(v21 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentRegistrationState) = 0;
  v26 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentlyInAirplaneMode;
  *(v21 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_currentlyInAirplaneMode) = 0;
  v27 = OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_registrationTimeCounter;
  type metadata accessor for RegistrationTimeCounter(0);
  *(v21 + v27) = sub_1001BE4B0();
  *(v21 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_lastExpectedOutOfServiceDuration) = 0;
  swift_beginAccess();
  *(v21 + v26) = v47;
  swift_beginAccess();
  *(v21 + v25) = v48;
  v29 = v49;
  v28 = v50;
  v30 = v49[1];
  *(v21 + 112) = *v49;
  *(v21 + 128) = v30;
  *(v21 + 144) = *(v29 + 4);
  sub_10001A700(v28, v21 + 152);
  v31 = (v21 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_locationControllerFactory);
  v32 = v52;
  *v31 = v51;
  v31[1] = v32;
  *(v21 + 248) = *(a7 + 168);
  v33 = *(a7 + 232);
  *(v21 + 296) = *(a7 + 216);
  *(v21 + 312) = v33;
  v34 = *(a7 + 200);
  *(v21 + 264) = *(a7 + 184);
  *(v21 + 280) = v34;
  v35 = *(a7 + 264);
  v36 = *(a7 + 296);
  v37 = *(a7 + 312);
  *(v21 + 360) = *(a7 + 280);
  *(v21 + 376) = v36;
  *(v21 + 328) = *(a7 + 248);
  *(v21 + 344) = v35;
  v38 = *(a7 + 360);
  v39 = *(a7 + 328);
  *(v21 + 424) = *(a7 + 344);
  *(v21 + 440) = v38;
  *(v21 + 392) = v37;
  *(v21 + 408) = v39;
  sub_10001A700(v55, v21 + 192);
  v40 = v54;
  *(v21 + 232) = v53;
  *(v21 + 240) = v40;
  return v21;
}

uint64_t sub_1001A74C0(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 392);
  v4 = swift_unknownObjectRetain();

  return v6(v4, a2);
}

uint64_t sub_1001A752C(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B70B0, v9);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updating out of service rate threshold override to %f", v12, 0xCu);
  }

  (*(v6 + 8))(v9, v5);
  return (*(*v2 + 296))(*&a1, 0);
}

uint64_t sub_1001A7700(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B70B0, v9);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updating update time interval override to %f", v12, 0xCu);
  }

  (*(v6 + 8))(v9, v5);
  v13 = (*(*v2 + 344))(*&a1, 0);
  return (*(*v2 + 696))(v13);
}

uint64_t sub_1001A790C(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B70B0, v9);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updating rsrp threshold to %ld", v12, 0xCu);
  }

  (*(v6 + 8))(v9, v5);
  v13 = (*(*v2 + 320))(a1, 0);
  return (*(*v2 + 696))(v13);
}

uint64_t sub_1001A7B10(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(0);
  v63 = *(v11 - 1);
  v12 = *(v63 + 64);
  __chkstk_darwin(v11);
  v58 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = *(v60 + 64);
  __chkstk_darwin(v14);
  v59 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100164A3C(&qword_1002D7178, &unk_10024B0C0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v62 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v58 - v21;
  v66 = type metadata accessor for Logger();
  v23 = *(v66 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v66);
  v64 = (&v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __chkstk_darwin(v25);
  v29 = &v58 - v28;
  __chkstk_darwin(v27);
  v31 = &v58 - v30;
  sub_100003E50(&off_1002B70B0, &v58 - v30);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134218752;
    *(v34 + 4) = a1;
    *(v34 + 12) = 2048;
    *(v34 + 14) = a2;
    *(v34 + 22) = 2048;
    *(v34 + 24) = a3;
    *(v34 + 32) = 2048;
    *(v34 + 34) = a4;
    _os_log_impl(&_mh_execute_header, v32, v33, "Updating simulated flight travel, from %f, %f to %f, %f", v34, 0x2Au);
  }

  v35 = *(v23 + 8);
  v36 = v66;
  v65 = v23 + 8;
  v35(v31, v66);
  if (a1 == 0.0 && a2 == 0.0 && a3 == 0.0 && a4 == 0.0)
  {
    sub_100003E50(&off_1002B70B0, v29);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v64;
    if (v39)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Removing simulated flight travel location", v41, 2u);
      v36 = v66;
    }

    v35(v29, v36);
    v42 = 1;
  }

  else
  {
    v43 = v59;
    static Date.now.getter();
    static Date.+ infix(_:_:)();
    (*(v60 + 8))(v43, v61);
    v42 = 0;
    *&v22[v11[5]] = a1;
    *&v22[v11[6]] = a2;
    *&v22[v11[7]] = a3;
    *&v22[v11[8]] = a4;
    v40 = v64;
  }

  v44 = v63;
  (*(v63 + 56))(v22, v42, 1, v11);
  (*(*v5 + 368))(v22);
  sub_100003E50(&off_1002B70B0, v40);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v64 = v35;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v67 = v48;
    *v47 = 136315138;
    v49 = v62;
    (*(*v5 + 360))();
    if ((*(v44 + 48))(v49, 1, v11))
    {
      sub_1000157F0(v49, &qword_1002D7178, &unk_10024B0C0);
      v50 = 0xE300000000000000;
      v51 = 7104878;
    }

    else
    {
      v52 = v58;
      sub_1001B87F8(v49, v58, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
      sub_1000157F0(v49, &qword_1002D7178, &unk_10024B0C0);
      v53 = sub_1001A5354();
      v50 = v54;
      sub_1001B8860(v52, type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation);
      v51 = v53;
    }

    v35 = v64;
    v55 = sub_10017A8A8(v51, v50, &v67);

    *(v47 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v45, v46, "Updated simulated flight travel information %s", v47, 0xCu);
    sub_100164B98(v48);
  }

  v56 = (v35)(v40, v66);
  return (*(*v5 + 696))(v56);
}

uint64_t sub_1001A8270(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B70B0, v13);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Setting timer and updating predictions.", v16, 2u);
  }

  (*(v10 + 8))(v13, v9);
  v17 = *(*v2 + 464);
  v18 = a1;
  v17(a1);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = sub_1001B840C(&qword_1002D7188, 255, type metadata accessor for MapsSuggestionController);
  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = v20;
  v21[4] = v2;
  swift_retain_n();
  sub_100176B80(0, 0, v8, &unk_10024B0E8, v21);
}

uint64_t sub_1001A8558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a4 + 720);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1001A8678;

  return v9(0);
}

uint64_t sub_1001A8678()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001A8778(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v30[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = *(v4 + 504);
  v36 = v4 + 504;
  v40 = (v35)(v13);
  v39 = a1;
  sub_1001B8730();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if ((result & 1) == 0)
  {
    v34 = v10;
    sub_100003E50(&off_1002B70B0, v15);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v32 = v6;
      v20 = v19;
      v21 = swift_slowAlloc();
      v33 = v5;
      v22 = v21;
      v38 = v21;
      *v20 = 136315138;
      v37 = a1;
      sub_1001B8784();
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = sub_10017A8A8(v23, v24, &v38);
      v31 = a1;
      v26 = v25;

      *(v20 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "Registration state updated to %s", v20, 0xCu);
      sub_100164B98(v22);
      v5 = v33;

      v6 = v32;

      v27 = (*(v11 + 8))(v15, v34);
      v28 = v31;
    }

    else
    {

      v27 = (*(v11 + 8))(v15, v34);
      v28 = a1;
    }

    (*(*v1 + 552))(v27);
    v29 = v35();
    j_j___s10Foundation4DateVACycfC();
    sub_1001BDAF8(v29, v9);

    (*(v6 + 8))(v9, v5);
    return (*(*v2 + 512))(v28);
  }

  return result;
}

uint64_t sub_1001A8B2C(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = *v1;
  v23 = type metadata accessor for Date();
  v6 = *(v23 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v5 + 528))(v13);
  if ((result & 1) != v4)
  {
    sub_100003E50(&off_1002B70B0, v15);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v17, v18, "Airplane mode updated to %{BOOL}d", v19, 8u);
    }

    (*(v11 + 8))(v15, v10);
    v20 = (*(*v2 + 536))(a1 & 1);
    v21 = (*(*v2 + 552))(v20);
    j_j___s10Foundation4DateVACycfC(v21);
    if (a1)
    {
      sub_1001BD808(v9);
    }

    else
    {
      sub_1001BD980(v9);
    }

    return (*(v6 + 8))(v9, v23);
  }

  return result;
}

uint64_t sub_1001A8E24(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B70B0, v9);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Updating configuration", v12, 2u);
  }

  (*(v6 + 8))(v9, v5);
  v13 = *(a1 + 344);
  v23[10] = *(a1 + 328);
  v23[11] = v13;
  v14 = *(a1 + 264);
  v15 = *(a1 + 280);
  v17 = *(a1 + 296);
  v16 = *(a1 + 312);
  v23[12] = *(a1 + 360);
  v18 = *(a1 + 248);
  v23[6] = v14;
  v23[7] = v15;
  v23[8] = v17;
  v23[9] = v16;
  v19 = *(a1 + 184);
  v20 = *(a1 + 216);
  v23[2] = *(a1 + 200);
  v23[3] = v20;
  v23[4] = *(a1 + 232);
  v23[5] = v18;
  v21 = *(a1 + 168);
  v23[1] = v19;
  v23[0] = v21;
  return (*(*v2 + 272))(v23);
}

uint64_t sub_1001A9040()
{
  v1 = sub_100164A3C(&qword_1002D7178, &unk_10024B0C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for MapsSuggestionController.SimulatedFlightTravelLocation(0);
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  return (*(*v0 + 368))(v4);
}

uint64_t sub_1001A9128()
{
  v1 = (*(*v0 + 456))();
  [v1 invalidate];

  (*(*v0 + 464))(0);
  v2 = *(*v0 + 704);

  return v2();
}

uint64_t sub_1001A9204()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  __chkstk_darwin(v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  __chkstk_darwin(v7);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v60 = *(v11 - 8);
  v61 = v11;
  v12 = *(v60 + 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v53 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v53 - v20;
  v22 = (*(v2 + 456))(v19);
  if (v22)
  {

    sub_100003E50(&off_1002B70B0, v15);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Already started", v25, 2u);
    }

    return (*(v60 + 1))(v15, v61);
  }

  else
  {
    v53 = v18;
    v54 = v10;
    v55 = v6;
    v56 = v7;
    v57 = v3;
    sub_100003E50(&off_1002B70B0, v21);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Starting maps update timer.", v29, 2u);
    }

    v30 = v61;
    v31 = *(v60 + 1);
    v32 = v31(v21, v61);
    v33 = *(v1 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_locationControllerFactory + 8);
    v34 = [(*(v1 + OBJC_IVAR____TtC17wirelessinsightsd24MapsSuggestionController_locationControllerFactory))(v32) currentLocation];
    v35 = swift_unknownObjectRelease();
    v36 = v54;
    if (v34)
    {
      v37 = v53;
      sub_100003E50(&off_1002B70B0, v53);
      v38 = v34;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v60 = v31;
        v43 = v42;
        *v41 = 138412290;
        *(v41 + 4) = v38;
        *v42 = v34;
        v44 = v38;
        _os_log_impl(&_mh_execute_header, v39, v40, "Set current location to %@.", v41, 0xCu);
        sub_1000157F0(v43, &unk_1002D7190, &qword_10024B0F0);
        v31 = v60;

        v37 = v53;
      }

      v31(v37, v30);
      v45 = *(*v1 + 488);
      v46 = v38;
      v45(v34);
    }

    v47 = (*(*v1 + 416))(v35);
    sub_100164AEC(0, &qword_1002D6640, OS_dispatch_queue_ptr);
    v48 = static OS_dispatch_queue.main.getter();
    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    *(v49 + 24) = v1;
    aBlock[4] = sub_1001B87D8;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001A9DAC;
    aBlock[3] = &unk_1002B6F20;
    v50 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v62 = _swiftEmptyArrayStorage;
    sub_1001B840C(&qword_1002D71A8, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_100164A3C(&qword_1002D71B0, &qword_10024B0F8);
    sub_10017F314(&qword_1002D71B8, &qword_1002D71B0, &qword_10024B0F8);
    v51 = v55;
    v52 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v50);

    (*(v59 + 8))(v51, v52);
    (*(v58 + 8))(v36, v56);
  }
}

uint64_t sub_1001A9928(uint64_t a1, double a2)
{
  v4 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  *(v10 + 32) = a2;
  *(v10 + 40) = a1;
  sub_100176B80(0, 0, v7, &unk_10024BA78, v10);
}

uint64_t sub_1001A9ACC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a5;
  *(v5 + 64) = a1;
  type metadata accessor for MainActor();
  *(v5 + 80) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 88) = v7;
  *(v5 + 96) = v6;

  return _swift_task_switch(sub_1001A9B68, v7, v6);
}

uint64_t sub_1001A9B68()
{
  v1 = *(v0 + 9);
  v2 = v0[8];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_weakInit();
  *(v0 + 6) = sub_100019228;
  *(v0 + 7) = v4;
  *(v0 + 2) = _NSConcreteStackBlock;
  *(v0 + 3) = 1107296256;
  *(v0 + 4) = sub_1000191C0;
  *(v0 + 5) = &unk_1002B7690;
  v5 = _Block_copy(v0 + 2);
  v6 = *(v0 + 7);

  *(v0 + 13) = [v3 scheduledTimerWithTimeInterval:1 repeats:v5 block:v2];
  _Block_release(v5);
  v7 = *v1 + 648;
  v0[14] = *v7;
  *(v0 + 15) = v7 & 0xFFFFFFFFFFFFLL | 0xD4E3000000000000;

  return _swift_task_switch(sub_1001A9CD4, v1, 0);
}

uint64_t sub_1001A9CD4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 72);
  (*(v0 + 112))(*(v0 + 104));
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);

  return _swift_task_switch(sub_1001A9D40, v3, v4);
}

uint64_t sub_1001A9D40()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001A9DAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1001A9DF0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001A9F0C()
{
  v1 = *(*v0 + 2680);
  v2 = *(*v0 + 2672);
  v3 = *(*v0 + 2032);
  v5 = *v0;

  return _swift_task_switch(sub_1001AA038, v3, 0);
}

void sub_1001AA038()
{
  v268 = v0;
  v1 = *(v0 + 2016);
  *(v0 + 2688) = v1;
  v2 = v1;
  v3 = *(v1 + 16);
  *(v0 + 2704) = v3;
  if (v3)
  {
    v4 = *(v0 + 2496);
    v5 = *(*(v0 + 2376) + 80);
    *(v0 + 3176) = v5;
    *(v0 + 3180) = enum case for PrivateServicePrediction.ServicePredictionType.lowSignalStrength(_:);
    *(v0 + 3184) = enum case for PrivateServicePrediction.ServicePredictionSource.userDataLearning(_:);
    *(v0 + 3188) = enum case for PrivateServicePrediction.ServicePredictionType.noCellularDataService(_:);
    *(v0 + 2752) = _swiftEmptyArrayStorage;
    *(v0 + 2744) = _swiftEmptyArrayStorage;
    *(v0 + 2712) = 0u;
    *(v0 + 2728) = 0u;
    if (*(v1 + 16))
    {
      sub_1001B87F8(v1 + ((v5 + 32) & ~v5), v4, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v6 = *(v4 + 16);
      *(v0 + 3220) = v6;
      v7 = qword_10024BA90[v6];
      v8 = qword_10024BB28[v6];
      v9 = qword_10024BBC0[v6];
      v10 = qword_10024BC58[v6];
      v11 = qword_10024BCF0[v6];
      v12 = qword_10024BD88[v6];
      v13 = qword_10024BE20[v6];
      v14 = qword_10024BEB8[v6];
      v15 = qword_10024BF50[v6];
      v16 = qword_10024BFE8[v6];
      v17 = qword_10024C080[v6];
      v18 = qword_10024C118[v6];
      v19 = qword_10024C1B0[v6];
      v20 = qword_10024C248[v6];
      v21 = qword_10024C2E0[v6];
      v22 = qword_10024C378[v6];
      v23 = qword_10024C410[v6];
      *(v0 + 2976) = qword_10024C4A8[v6];
      *(v0 + 2968) = v23;
      *(v0 + 2960) = v22;
      *(v0 + 2952) = v21;
      *(v0 + 2944) = v20;
      *(v0 + 2936) = v19;
      *(v0 + 2928) = v18;
      *(v0 + 2920) = v17;
      *(v0 + 2912) = v16;
      *(v0 + 2904) = v15;
      *(v0 + 2896) = v14;
      *(v0 + 2888) = v13;
      *(v0 + 2880) = v12;
      *(v0 + 2872) = v11;
      *(v0 + 2864) = v10;
      *(v0 + 2856) = v9;
      *(v0 + 2848) = v8;
      *(v0 + 2840) = v7;
      *(v0 + 2832) = v16;
      *(v0 + 2824) = v15;
      *(v0 + 2816) = v14;
      *(v0 + 2808) = v13;
      *(v0 + 2800) = v12;
      *(v0 + 2792) = v11;
      *(v0 + 2784) = v10;
      *(v0 + 2776) = v9;
      *(v0 + 2768) = v8;
      *(v0 + 2760) = v7;
      v24 = *(v0 + 2496);
      v25 = *(v0 + 2488);
      v26 = *(v0 + 2040);
      sub_100003E50(&off_1002B70B0, *(v0 + 2632));
      sub_1001B87F8(v24, v25, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.debug.getter();
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 2648);
      v31 = *(v0 + 2632);
      v32 = *(v0 + 2512);
      v33 = *(v0 + 2488);
      v34 = *(v0 + 2520) + 8;
      if (v29)
      {
        v35 = *(v0 + 2368);
        v261 = *(v0 + 2648);
        v36 = swift_slowAlloc();
        v256 = v31;
        v37 = swift_slowAlloc();
        v267[0] = v37;
        *v36 = 136315138;
        sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v38 = dispatch thunk of CustomStringConvertible.description.getter();
        v40 = v39;
        sub_1001B8860(v33, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v41 = sub_10017A8A8(v38, v40, v267);

        *(v36 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v27, v28, "Fetching coverage tile for %s", v36, 0xCu);
        sub_100164B98(v37);

        v261(v256, v32);
      }

      else
      {

        sub_1001B8860(v33, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v30(v31, v32);
      }

      v69 = *(v0 + 2496);
      v70 = *(v0 + 1576);
      v71 = *(v0 + 1584);
      sub_100014E1C((v0 + 1552), v70);
      v72 = *v69;
      *(v0 + 2984) = *v69;
      v73 = v69[1];
      *(v0 + 2992) = v73;
      v74 = *(v71 + 8);
      v263 = (v74 + *v74);
      v75 = v74[1];
      v76 = swift_task_alloc();
      *(v0 + 3000) = v76;
      *v76 = v0;
      v76[1] = sub_1001AB868;
      v77 = v0 + 1592;
      v78.n128_u64[0] = v72;
      v79.n128_u64[0] = v73;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_52;
  }

  *(v0 + 3008) = _swiftEmptyArrayStorage;
  v42 = *(v0 + 2032);
  v262 = *(*v42 + 432);
  v43 = v262();

  v44 = sub_100004814(v43, _swiftEmptyArrayStorage);

  v45 = *(v2 + 16);

  v46 = _swiftEmptyArrayStorage[2];
  v47 = v42[27];
  v48 = v42[28];
  sub_100014E1C(v42 + 24, v47);
  *(v0 + 1736) = &_s25MapsSuggestionsFetchEventVN;
  *(v0 + 1744) = &off_1002B70F0;
  v49 = swift_allocObject();
  *(v0 + 1712) = v49;
  *(v49 + 16) = v45;
  *(v49 + 24) = v46;
  *(v49 + 40) = 0;
  *(v49 + 48) = 0;
  *(v49 + 32) = 0;
  *(v49 + 56) = (v44 & 1) == 0;
  *(v49 + 57) = *(v0 + 3212);
  *(v49 + 60) = *(v0 + 3215);
  *(v49 + 64) = 0u;
  *(v49 + 80) = 0u;
  *(v49 + 96) = 0u;
  *(v49 + 112) = 0u;
  *(v49 + 128) = 0u;
  *(v49 + 144) = 0u;
  *(v49 + 160) = 0u;
  *(v49 + 176) = 0u;
  *(v49 + 192) = 0u;
  (*(v48 + 8))(0xD00000000000002DLL, 0x800000010025CBE0, v0 + 1712, v47, v48);
  sub_100164B98((v0 + 1712));
  if ((v44 & 1) == 0)
  {
    v50 = *(v0 + 2032);
    v51 = *(v0 + 2040);
    sub_100003E50(&off_1002B70B0, *(v0 + 2536));

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();

    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 2536);
    v56 = *(v0 + 2520);
    v57 = *(v0 + 2512);
    if (v54)
    {
      v58 = *(v0 + 2248);
      v252 = *(v0 + 2536);
      v59 = *(v0 + 2032);
      v60 = swift_slowAlloc();
      v267[0] = swift_slowAlloc();
      *v60 = 136315394;
      v262();
      v61 = Array.description.getter();
      v63 = v62;

      v64 = sub_10017A8A8(v61, v63, v267);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2080;

      v65 = Array.description.getter();
      v67 = v66;

      v68 = sub_10017A8A8(v65, v67, v267);

      *(v60 + 14) = v68;
      _os_log_impl(&_mh_execute_header, v52, v53, "Updating service predictions from %s suggestions to %s", v60, 0x16u);
      swift_arrayDestroy();

      (*(v56 + 8))(v252, v57);
    }

    else
    {

      (*(v56 + 8))(v55, v57);
    }

    v80 = *(v0 + 2032);
    v81 = *(*v80 + 440);

    v83 = v81(v82);
    v84 = (*(*v80 + 384))(v83);
    *(v0 + 3016) = v84;
    if (v84)
    {
      v86 = v85;
      ObjectType = swift_getObjectType();
      v88 = *(v86 + 8);

      v257 = v88 + *v88;
      v89 = v88[1];
      v90 = swift_task_alloc();
      *(v0 + 3024) = v90;
      *v90 = v0;
      v90[1] = sub_1001AFD64;
      v91 = ObjectType;
      v92 = v86;
      v93 = v257;

LABEL_14:
      v93(_swiftEmptyArrayStorage, v91, v92);
      return;
    }
  }

  v94 = *(v0 + 2696);
  v95 = *(v94 + 16);
  *(v0 + 3032) = v95;
  if (v95)
  {
    v96 = *(v0 + 2136);
    v97 = *(v0 + 2120);
    v98 = *(v0 + 2112);
    v99 = *(v0 + 2032);
    v100 = v98[11];
    *(v0 + 3192) = v100;
    v101 = v98[12];
    *(v0 + 3196) = v101;
    *(v0 + 3200) = v98[8];
    *(v0 + 3204) = v98[9];
    v102 = *v99;
    *(v0 + 3040) = *(*v99 + 744);
    *(v0 + 3048) = (v102 + 744) & 0xFFFFFFFFFFFFLL | 0x46AA000000000000;
    LODWORD(v98) = *(v97 + 80);
    *(v0 + 3208) = v98;
    *(v0 + 3056) = *(v97 + 72);
    *(v0 + 3072) = _swiftEmptyArrayStorage;
    *(v0 + 3064) = 0;
    sub_1001B87F8(v94 + ((v98 + 32) & ~v98), v96, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
    v70 = *(v0 + 1576);
    v71 = *(v0 + 1584);
    sub_100014E1C((v0 + 1552), v70);
    v103 = *(v96 + v100);
    *(v0 + 3080) = v103;
    v104 = *(v96 + v101);
    *(v0 + 3088) = v104;
    v105 = *(v71 + 8);
    v263 = (v105 + *v105);
    v106 = v105[1];
    v107 = swift_task_alloc();
    *(v0 + 3096) = v107;
    *v107 = v0;
    v107[1] = sub_1001B0D6C;
    v77 = v0 + 1752;
    v78.n128_u64[0] = v103;
    v79.n128_u64[0] = v104;
LABEL_17:

    v263(v77, v70, v71, v78, v79);
    return;
  }

  *(v0 + 3152) = _swiftEmptyArrayStorage;
  v109 = (*(**(v0 + 2032) + 384))(v108);
  *(v0 + 3160) = v109;
  if (v109)
  {
    v111 = v110;
    v112 = swift_getObjectType();
    v113 = *(v111 + 16);
    v264 = v113 + *v113;
    v114 = v113[1];
    v115 = swift_task_alloc();
    *(v0 + 3168) = v115;
    *v115 = v0;
    v115[1] = sub_1001B225C;
    v91 = v112;
    v92 = v111;
    v93 = v264;

    goto LABEL_14;
  }

  if (*(v0 + 3219) == 1)
  {
    v116 = *(v0 + 2352);
    v117 = *(v0 + 2336);
    v118 = *(v0 + 2328);
    v119 = *(v0 + 2320);
    v120 = *(v0 + 2088);
    v121 = *(v0 + 2032);
    v122 = Date.init()();
    v123 = (*(*v121 + 576))(v122);
    v124 = (*v121 + 416);
    v125 = *v124;
    v126 = v123 / (*v124)();
    v127 = (*(v118 + 16))(v116, v117, v119);
    (v125)(v127);
    v128 = DateInterval.init(start:duration:)();
    v129 = (*v121 + 552);
    v130 = *v129;
    (*v129)(v128);
    v131 = (*(*v121 + 504))();
    j_j___s10Foundation4DateVACycfC();
    sub_1001BDAF8(v131, v116);

    v132 = *(v118 + 8);
    v133 = v132(v116, v119);
    LOBYTE(v116) = (*(*v121 + 528))(v133);
    v258 = v130;
    v130();
    v134 = *(v0 + 2352);
    j_j___s10Foundation4DateVACycfC();
    if (v116)
    {
      sub_1001BD808(v134);
    }

    else
    {
      sub_1001BD980(v134);
    }

    v135 = *(v0 + 2352);
    v136 = *(v0 + 2320);
    v137 = *(v0 + 2032);

    v138 = v132(v135, v136);
    v139 = (v130)(v138);
    swift_beginAccess();
    v140 = *(v139 + 24);

    v142 = round((v126 - v140) / (v125)(v141) * 100.0);
    if ((*&v142 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v142 <= -9.22337204e18)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v142 >= 9.22337204e18)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v143 = *(v0 + 2032);
    v130();
    v144 = sub_1001BDD78();

    (v258)(v145);
    v253 = sub_1001BDE54();

    (v258)(v146);
    v246 = sub_1001BDF30();

    (v258)(v147);
    v244 = sub_1001BE00C();

    (v258)(v148);
    v149 = sub_1001BE0CC();

    v151 = round(v126 * 100.0);
    if ((*&v151 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v151 <= -9.22337204e18)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (v151 >= 9.22337204e18)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v152 = *(v0 + 2032);
    v153 = (v125)(v150);
    if ((*&v153 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (v153 <= -9.22337204e18)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v240 = v149;
    v242 = v125;
    v249 = v132;
    if (v153 >= 9.22337204e18)
    {
LABEL_60:
      __break(1u);
      return;
    }

    v238 = *(v0 + 3008);
    v154 = *(v0 + 2352);
    v236 = *(v0 + 2320);
    v155 = *(v0 + 2032);
    v156 = v153;
    v157 = v155[27];
    v158 = v155[28];
    sub_100014E1C(v155 + 24, v157);
    *(v0 + 1856) = &_s39MapsSuggestionsPredictedPercentageMatchVN;
    *(v0 + 1864) = &off_1002B7100;
    v159 = swift_allocObject();
    *(v0 + 1832) = v159;
    v159[2] = v144;
    v159[3] = v253;
    v159[4] = v246;
    v159[5] = v244;
    v159[6] = v240;
    v159[7] = v151;
    v159[8] = v142;
    v159[9] = v156;
    (*(v158 + 8))(0xD000000000000040, 0x800000010025CC10, v0 + 1832, v157, v158);
    v160 = sub_100164B98((v0 + 1832));
    (v258)(v160);
    j_j___s10Foundation4DateVACycfC();
    sub_1001BE18C(v154);

    v161 = v132(v154, v236);
    v162 = *(v238 + 16);
    if (v162)
    {
      v163 = *(v0 + 2256);
      v164 = *(v0 + 2064);
      v165 = *(v0 + 3008) + ((*(v163 + 80) + 32) & ~*(v163 + 80));
      v166 = (v164 + 8);
      v259 = (v164 + 48);
      v265 = *(v163 + 72);
      v254 = (v164 + 32);

      v167 = 0.0;
      do
      {
        v172 = *(v0 + 2352);
        v173 = *(v0 + 2264);
        v174 = *(v0 + 2088);
        v175 = *(v0 + 2072);
        v176 = *(v0 + 2056);
        v177 = *(v0 + 2048);
        sub_1001B87F8(v165, v173, type metadata accessor for InternalServicePrediction);
        PrivateServicePrediction.predictedStartTime.getter();
        PrivateServicePrediction.predictedDuration.getter();
        sub_1001B8860(v173, type metadata accessor for InternalServicePrediction);
        DateInterval.init(start:duration:)();
        DateInterval.intersection(with:)();
        v178 = *v166;
        (*v166)(v175, v176);
        if ((*v259)(v177, 1, v176) == 1)
        {
          sub_1000157F0(*(v0 + 2048), &qword_1002D71C0, &qword_10024B118);
        }

        else
        {
          v168 = *(v0 + 2080);
          v169 = *(v0 + 2056);
          (*v254)(v168, *(v0 + 2048), v169);
          DateInterval.duration.getter();
          v171 = v170;
          v178(v168, v169);
          v167 = v167 + v171;
        }

        v165 += v265;
        --v162;
      }

      while (v162);
      v179 = *(v0 + 3008);
    }

    else
    {
      v167 = 0.0;
    }

    v180 = *(v0 + 2336);
    v181 = *(v0 + 2320);
    v182 = *(v0 + 2088);
    v183 = *(v0 + 2064);
    v184 = *(v0 + 2056);
    v185 = *(v0 + 2032);
    v186.n128_f64[0] = (v242)(v161);
    if (v186.n128_f64[0] >= v167)
    {
      v186.n128_f64[0] = v167;
    }

    (*(*v185 + 584))(v186);
    (*(v183 + 8))(v182, v184);
    v249(v180, v181);
  }

  v187 = *(v0 + 2504);
  v266 = *(v0 + 3008);

  sub_1000157F0(v187, &qword_1002D7178, &unk_10024B0C0);
  sub_100164B98((v0 + 1552));

  sub_100164B98((v0 + 1472));
  v188 = *(v0 + 2640);
  v189 = *(v0 + 2632);
  v190 = *(v0 + 2624);
  v191 = *(v0 + 2616);
  v192 = *(v0 + 2608);
  v193 = *(v0 + 2600);
  v194 = *(v0 + 2592);
  v195 = *(v0 + 2584);
  v196 = *(v0 + 2576);
  v197 = *(v0 + 2568);
  v199 = *(v0 + 2560);
  v200 = *(v0 + 2552);
  v201 = *(v0 + 2544);
  v202 = *(v0 + 2536);
  v203 = *(v0 + 2528);
  v204 = *(v0 + 2504);
  v205 = *(v0 + 2496);
  v206 = *(v0 + 2488);
  v207 = *(v0 + 2480);
  v208 = *(v0 + 2472);
  v209 = *(v0 + 2464);
  v210 = *(v0 + 2456);
  v211 = *(v0 + 2448);
  v212 = *(v0 + 2440);
  v213 = *(v0 + 2432);
  v214 = *(v0 + 2424);
  v215 = *(v0 + 2416);
  v216 = *(v0 + 2408);
  v217 = *(v0 + 2400);
  v218 = *(v0 + 2392);
  v219 = *(v0 + 2384);
  v220 = *(v0 + 2360);
  v221 = *(v0 + 2352);
  v222 = *(v0 + 2344);
  v223 = *(v0 + 2336);
  v224 = *(v0 + 2312);
  v225 = *(v0 + 2304);
  v226 = *(v0 + 2296);
  v227 = *(v0 + 2288);
  v228 = *(v0 + 2280);
  v229 = *(v0 + 2272);
  v230 = *(v0 + 2264);
  v231 = *(v0 + 2240);
  v232 = *(v0 + 2232);
  v233 = *(v0 + 2224);
  v234 = *(v0 + 2216);
  v235 = *(v0 + 2208);
  v237 = *(v0 + 2184);
  v239 = *(v0 + 2176);
  v241 = *(v0 + 2152);
  v243 = *(v0 + 2144);
  v245 = *(v0 + 2136);
  v247 = *(v0 + 2128);
  v248 = *(v0 + 2104);
  v250 = *(v0 + 2088);
  v251 = *(v0 + 2080);
  v255 = *(v0 + 2072);
  v260 = *(v0 + 2048);

  v198 = *(v0 + 8);

  v198(v266);
}

uint64_t sub_1001AB868()
{
  v1 = *(*v0 + 3000);
  v2 = *(*v0 + 2032);
  v4 = *v0;

  return _swift_task_switch(sub_1001AB978, v2, 0);
}

uint64_t sub_1001AB978()
{
  v769 = v0;
  sub_10001A718(v0 + 1592, v0 + 1672, &qword_1002D71D0, &qword_10024AE20);
  if (!*(v0 + 1696))
  {
    v21 = *(v0 + 2544);
    v22 = *(v0 + 2496);
    v23 = *(v0 + 2384);
    v24 = *(v0 + 2040);
    sub_1000157F0(v0 + 1672, &qword_1002D71D0, &qword_10024AE20);
    sub_100003E50(&off_1002B70B0, v21);
    sub_1001B87F8(v22, v23, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 2648);
    v29 = *(v0 + 2544);
    v30 = *(v0 + 2520);
    v31 = *(v0 + 2512);
    v32 = *(v0 + 2496);
    v33 = *(v0 + 2384);
    if (v27)
    {
      v34 = *(v0 + 2368);
      v742 = *(v0 + 2648);
      v35 = swift_slowAlloc();
      v726 = v29;
      v36 = swift_slowAlloc();
      v768[0] = v36;
      *v35 = 136315138;
      sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v714 = v32;
      v39 = v38;
      sub_1001B8860(v33, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v40 = sub_10017A8A8(v37, v39, v768);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v25, v26, "No coverage tile available for %s", v35, 0xCu);
      sub_100164B98(v36);

      v742(v726, v31);
      sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
      v41 = v714;
    }

    else
    {

      sub_1001B8860(v33, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v28(v29, v31);
      sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
      v41 = v32;
    }

    v84 = sub_1001B8860(v41, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v83 = *(v0 + 2752);
    v1 = *(v0 + 2744);
    v712 = *(v0 + 2728);
    goto LABEL_20;
  }

  v2 = *(v0 + 2728);
  sub_10001A700((v0 + 1672), v0 + 1632);
  if (__OFADD__(v2, 1))
  {
    __break(1u);
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v712 = (v2 + 1);
  v3 = *(v0 + 2496);
  v4 = *(v0 + 2480);
  v5 = *(v0 + 2040);
  sub_100003E50(&off_1002B70B0, *(v0 + 2624));
  sub_1001B87F8(v3, v4, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 2648);
  v10 = *(v0 + 2624);
  v11 = *(v0 + 2520);
  v12 = *(v0 + 2512);
  v13 = *(v0 + 2480);
  if (v8)
  {
    v14 = *(v0 + 2368);
    v15 = swift_slowAlloc();
    v741 = v9;
    v16 = swift_slowAlloc();
    v768[0] = v16;
    *v15 = 136315138;
    sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1001B8860(v13, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v20 = sub_10017A8A8(v17, v19, v768);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Have coverage tile for %s", v15, 0xCu);
    sub_100164B98(v16);

    v741(v10, v12);
  }

  else
  {

    sub_1001B8860(v13, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v9(v10, v12);
  }

  v42 = *(v0 + 2496);
  v43 = *(v0 + 2368);
  v44 = *(v0 + 2360);
  v45 = *(v0 + 2320);
  Date.init()();
  v46 = *(v43 + 36);
  sub_1001B840C(&qword_1002D71E0, 255, &type metadata accessor for Date);
  v47 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v48 = *(v0 + 3220);
  if (v47)
  {
    v49 = *(v0 + 2496);
    v50 = *(v0 + 2360);
    v51 = *(*(v0 + 2368) + 32);
    v52 = *(v0 + 2320);
    v47 = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (v48 == 12)
    {
      v53 = *(v0 + 3220);
      goto LABEL_13;
    }

    if (v47)
    {
      v85 = *(v0 + 2040);
      sub_100003E50(&off_1002B70B0, *(v0 + 2600));
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&_mh_execute_header, v86, v87, "Entry duration is in current window.", v88, 2u);
      }

      v89 = *(v0 + 2648);
      v90 = *(v0 + 2600);
      v91 = *(v0 + 2520);
      v92 = *(v0 + 2512);

      v47 = v89(v90, v92);
      v93 = 1;
LABEL_26:
      v94 = (*(**(v0 + 2032) + 480))(v47);
      if (v94)
      {
        v95 = v94;
        if (v93)
        {
          v96 = *(v0 + 2664);
          v97 = *(v0 + 2656);
          v98 = *(v0 + 2032);
          v99 = [objc_allocWithZone(CLLocation) initWithLatitude:*(v0 + 2984) longitude:*(v0 + 2992)];
          [v95 distanceFromLocation:v99];
          v101 = v100;

          v97();
          if (*(v0 + 680) < v101)
          {
            v102 = *(v0 + 2496);
            v103 = *(v0 + 2456);
            v104 = *(v0 + 2448);
            v105 = *(v0 + 2440);
            v106 = *(v0 + 2040);
            sub_100003E50(&off_1002B70B0, *(v0 + 2592));
            sub_1001B87F8(v102, v103, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            sub_1001B87F8(v102, v104, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            sub_1001B87F8(v102, v105, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            v107 = Logger.logObject.getter();
            v108 = static os_log_type_t.debug.getter();
            v109 = os_log_type_enabled(v107, v108);
            v728 = *(v0 + 2592);
            v743 = *(v0 + 2648);
            v110 = *(v0 + 2520);
            v716 = *(v0 + 2512);
            v755 = *(v0 + 2496);
            v111 = *(v0 + 2456);
            v112 = *(v0 + 2448);
            v113 = *(v0 + 2440);
            if (v109)
            {
              v676 = v107;
              v114 = *(v0 + 2368);
              v693 = *(v0 + 2328);
              v703 = *(v0 + 2360);
              v115 = *(v0 + 2320);
              v116 = swift_slowAlloc();
              v768[0] = swift_slowAlloc();
              *v116 = 136315650;
              sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              v117 = dispatch thunk of CustomStringConvertible.description.getter();
              v662 = v108;
              v119 = v118;
              sub_1001B8860(v111, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              v120 = sub_10017A8A8(v117, v119, v768);

              *(v116 + 4) = v120;
              *(v116 + 12) = 2080;
              v121 = *(v114 + 32);
              sub_1001B840C(&qword_1002D5B88, 255, &type metadata accessor for Date);
              v122 = dispatch thunk of CustomStringConvertible.description.getter();
              v124 = v123;
              sub_1001B8860(v112, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              v125 = sub_10017A8A8(v122, v124, v768);

              *(v116 + 14) = v125;
              *(v116 + 22) = 2080;
              v126 = v113 + *(v114 + 36);
              v127 = dispatch thunk of CustomStringConvertible.description.getter();
              v129 = v128;
              sub_1001B8860(v113, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              v130 = sub_10017A8A8(v127, v129, v768);

              *(v116 + 24) = v130;
              _os_log_impl(&_mh_execute_header, v676, v662, "Skipping %s as it is too far from the last location. %s %s", v116, 0x20u);
              swift_arrayDestroy();

              v743(v728, v716);
              (*(v693 + 8))(v703, v115);
            }

            else
            {
              v475 = *(v0 + 2360);
              v476 = *(v0 + 2328);
              v477 = *(v0 + 2320);

              sub_1001B8860(v113, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              sub_1001B8860(v112, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              sub_1001B8860(v111, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
              v743(v728, v716);
              (*(v476 + 8))(v475, v477);
            }

            sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
            sub_1001B8860(v755, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            v84 = sub_100164B98((v0 + 1632));
            v83 = *(v0 + 2752);
            v1 = *(v0 + 2744);
LABEL_20:
            v692 = *(v0 + 2712);
            v702 = *(v0 + 2720);
            goto LABEL_72;
          }
        }
      }

      v149 = *(v0 + 2032);
      v150 = *(v0 + 1656);
      v151 = *(v0 + 1664);
      sub_100014E1C((v0 + 1632), v150);
      v152 = (*(v151 + 56))(v150, v151);
      v153 = *(*v149 + 408);
      if (v153() >= v152)
      {
        v175 = *(v0 + 1656);
        v176 = *(v0 + 1664);
        sub_100014E1C((v0 + 1632), v175);
        v177 = (*(v176 + 64))(v175, v176);
        if ((v178 & 1) != 0 || (v268 = v177, v269 = *(v0 + 3220), v270 = (*(**(v0 + 2032) + 424))(), v269 < 2) || v268 >= v270)
        {
          v179 = *(v0 + 2496);
          v180 = *(v0 + 2400);
          v181 = *(v0 + 2392);
          v182 = *(v0 + 2032);
          v183 = *(v0 + 2040);
          sub_100003E50(&off_1002B70B0, *(v0 + 2552));
          sub_1001B87F8(v179, v180, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          sub_1001B87F8(v179, v181, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          sub_100164B34(v0 + 1632, v0 + 1872);
          sub_100164B34(v0 + 1632, v0 + 1912);

          v184 = Logger.logObject.getter();
          v185 = static os_log_type_t.debug.getter();
          v186 = os_log_type_enabled(v184, v185);
          v187 = *(v0 + 2520);
          v704 = *(v0 + 2512);
          v188 = *(v0 + 2496);
          v189 = *(v0 + 2400);
          v190 = *(v0 + 2392);
          v745 = *(v0 + 2360);
          v757 = *(v0 + 2648);
          v191 = *(v0 + 2328);
          v718 = *(v0 + 2552);
          v729 = *(v0 + 2320);
          v192 = *(v0 + 2032);
          if (!v186)
          {
            sub_100164B98((v0 + 1912));

            sub_1001B8860(v190, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            sub_1001B8860(v189, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            v757(v718, v704);
            (*(v191 + 8))(v745, v729);
            sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
            sub_1001B8860(v188, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
            sub_100164B98((v0 + 1872));
LABEL_69:
            v83 = *(v0 + 2752);
            v1 = *(v0 + 2744);
            goto LABEL_70;
          }

          v670 = v184;
          v193 = swift_slowAlloc();
          *v193 = 134219264;
          v194 = *v189;
          sub_1001B8860(v189, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          *(v193 + 4) = v194;
          *(v193 + 12) = 2048;
          v195 = *(v190 + 8);
          v196 = sub_1001B8860(v190, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          *(v193 + 14) = v195;
          *(v193 + 22) = 2048;
          *(v193 + 24) = (v153)(v196);
          *(v193 + 32) = 2048;
          v197 = *(v0 + 1896);
          v198 = v185;
          v199 = *(v0 + 1904);
          sub_100014E1C((v0 + 1872), v197);
          v200 = (*(v199 + 56))(v197, v199);
          v201 = sub_100164B98((v0 + 1872));
          *(v193 + 34) = v200;
          *(v193 + 42) = 2048;
          *(v193 + 44) = (*(*v192 + 424))(v201);

          *(v193 + 52) = 2048;
          v202 = *(v0 + 1936);
          v203 = *(v0 + 1944);
          sub_100014E1C((v0 + 1912), v202);
          v204 = (*(v203 + 64))(v202, v203);
          if (v205)
          {
            v206 = 0;
          }

          else
          {
            v206 = v204;
          }

          sub_100164B98((v0 + 1912));
          *(v193 + 54) = v206;
          _os_log_impl(&_mh_execute_header, v670, v198, "Entry location %f, %f does not meet threshold %f for OOS %f and threshold %ld rsrp %ld", v193, 0x3Eu);

          v757(v718, v704);
          (*(v191 + 8))(v745, v729);
          sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
          v207 = v188;
LABEL_68:
          sub_1001B8860(v207, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          goto LABEL_69;
        }

        v271 = *(v0 + 2496);
        v272 = *(v0 + 2416);
        v273 = *(v0 + 2040);
        sub_100003E50(&off_1002B70B0, *(v0 + 2568));
        sub_1001B87F8(v271, v272, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v274 = Logger.logObject.getter();
        v275 = static os_log_type_t.debug.getter();
        v276 = os_log_type_enabled(v274, v275);
        v277 = *(v0 + 2648);
        v278 = *(v0 + 2568);
        v279 = *(v0 + 2512);
        v280 = *(v0 + 2416);
        v281 = *(v0 + 2520) + 8;
        if (v276)
        {
          v282 = *(v0 + 2368);
          v732 = *(v0 + 2568);
          v283 = swift_slowAlloc();
          v721 = v279;
          v284 = swift_slowAlloc();
          v768[0] = v284;
          *v283 = 136315394;
          sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v285 = dispatch thunk of CustomStringConvertible.description.getter();
          v707 = v277;
          v287 = v286;
          sub_1001B8860(v280, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v288 = sub_10017A8A8(v285, v287, v768);

          *(v283 + 4) = v288;
          *(v283 + 12) = 2048;
          *(v283 + 14) = v268;
          _os_log_impl(&_mh_execute_header, v274, v275, "Created low signal strength prediction for %s with rsrp %ld", v283, 0x16u);
          sub_100164B98(v284);

          v707(v732, v721);
        }

        else
        {

          sub_1001B8860(v280, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v277(v278, v279);
        }

        v478 = *(v0 + 2992);
        v479 = *(v0 + 2984);
        v480 = *(v0 + 3184);
        v633 = *(v0 + 3180);
        v688 = *(v0 + 2656);
        v698 = *(v0 + 2664);
        v645 = *(v0 + 2496);
        v481 = *(v0 + 2368);
        v724 = v481;
        v482 = *(v0 + 2352);
        v483 = *(v0 + 2328);
        v639 = *(v0 + 2320);
        v736 = *(v0 + 2280);
        v710 = *(v0 + 2240);
        v681 = *(v0 + 2224);
        v651 = *(v0 + 2216);
        v484 = *(v0 + 2200);
        v621 = *(v0 + 2192);
        v485 = *(v0 + 2184);
        v486 = *(v0 + 2168);
        v615 = *(v0 + 2160);
        v672 = *(v0 + 2152);
        v487 = *(v0 + 2032);
        v627 = *(v484 + 104);
        v654 = *(v0 + 3220);
        v627();
        (*(v486 + 104))(v485, v480, v615);
        (*(v483 + 16))(v482, v645 + *(v481 + 32), v639);
        Date.timeIntervalSinceReferenceDate.getter();
        Date.timeIntervalSinceReferenceDate.getter();
        (v627)(v651, v633, v621);
        (*(*v487 + 248))(v651, v654);
        v488 = (*(v484 + 8))(v651, v621);
        v489 = v688(v488);
        v490 = *(v0 + 416);
        v688(v489);
        v491 = *(v0 + 216);
        PrivateServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
        PrivateServicePrediction.init(type:source:predictedStartTime:predictedDuration:confidenceScore:)();
        v492 = sub_1001B6D9C(v654);
        v494 = v493;
        v495 = XPCEventPublisher.Token.rawValue.getter(v479, v478);
        v497 = v496;
        v498 = sub_1001B7278(*(v645 + 17));
        sub_100162DE0(v710, v492, v494, v495, v497, 0, 0, 1, v736, 0, 1, v498, v499, *(v645 + *(v724 + 40)));
        PrivateServicePrediction.predictedDuration.getter();
        if (v500 > 0.0)
        {
          v501 = *(v0 + 2752);
          sub_1001B87F8(*(v0 + 2280), *(v0 + 2272), type metadata accessor for InternalServicePrediction);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v259 = *(v0 + 2752);
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_156;
          }

          goto LABEL_212;
        }

        v511 = *(v0 + 2496);
        v512 = *(v0 + 2408);
        v513 = *(v0 + 2040);
        sub_100003E50(&off_1002B70B0, *(v0 + 2560));
        sub_1001B87F8(v511, v512, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v292 = Logger.logObject.getter();
        v293 = static os_log_type_t.info.getter();
        v514 = os_log_type_enabled(v292, v293);
        v295 = *(v0 + 2648);
        v747 = *(v0 + 2512);
        v760 = *(v0 + 2560);
        v296 = *(v0 + 2496);
        v297 = *(v0 + 2408);
        v737 = *(v0 + 2520) + 8;
        if (v514)
        {
          v722 = *(v0 + 2496);
          v515 = *(v0 + 2368);
          v299 = *(v0 + 2328);
          v696 = *(v0 + 2320);
          v708 = *(v0 + 2360);
          v686 = *(v0 + 2280);
          v300 = swift_slowAlloc();
          v679 = v295;
          v301 = swift_slowAlloc();
          v768[0] = v301;
          *v300 = 136315138;
          sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v516 = dispatch thunk of CustomStringConvertible.description.getter();
          v518 = v517;
          sub_1001B8860(v297, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v519 = sub_10017A8A8(v516, v518, v768);

          *(v300 + 4) = v519;
          v306 = "Not adding RSRP prediction as duration is not > 0 for %s";
          goto LABEL_64;
        }

        v307 = *(v0 + 2360);
        v308 = *(v0 + 2328);
        v309 = *(v0 + 2320);
        v310 = *(v0 + 2280);
      }

      else
      {
        v154 = *(v0 + 2496);
        v155 = *(v0 + 2432);
        v156 = *(v0 + 2040);
        sub_100003E50(&off_1002B70B0, *(v0 + 2584));
        sub_1001B87F8(v154, v155, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        sub_100164B34(v0 + 1632, v0 + 1952);
        v157 = Logger.logObject.getter();
        v158 = static os_log_type_t.debug.getter();
        v159 = os_log_type_enabled(v157, v158);
        v160 = *(v0 + 2648);
        v161 = *(v0 + 2584);
        v162 = *(v0 + 2520);
        v163 = *(v0 + 2512);
        v164 = *(v0 + 2432);
        if (v159)
        {
          v165 = *(v0 + 2368);
          v166 = swift_slowAlloc();
          v717 = v160;
          v167 = swift_slowAlloc();
          v768[0] = v167;
          *v166 = 136315394;
          sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v168 = dispatch thunk of CustomStringConvertible.description.getter();
          v170 = v169;
          sub_1001B8860(v164, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v171 = sub_10017A8A8(v168, v170, v768);

          *(v166 + 4) = v171;
          *(v166 + 12) = 2048;
          v172 = *(v0 + 1976);
          v173 = *(v0 + 1984);
          sub_100014E1C((v0 + 1952), v172);
          v174 = (*(v173 + 56))(v172, v173);
          sub_100164B98((v0 + 1952));
          *(v166 + 14) = v174;
          _os_log_impl(&_mh_execute_header, v157, v158, "Created no cellular data service prediction for %s with out of service rate %f", v166, 0x16u);
          sub_100164B98(v167);

          v717(v161, v163);
        }

        else
        {

          sub_1001B8860(v164, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v160(v161, v163);
          sub_100164B98((v0 + 1952));
        }

        v227 = *(v0 + 2992);
        v228 = *(v0 + 2984);
        v630 = *(v0 + 3188);
        v229 = *(v0 + 3184);
        v656 = *(v0 + 2656);
        v664 = *(v0 + 2664);
        v731 = *(v0 + 2496);
        v230 = *(v0 + 2368);
        v706 = v230;
        v231 = *(v0 + 2344);
        v232 = *(v0 + 2328);
        v636 = *(v0 + 2320);
        v720 = *(v0 + 2296);
        v642 = *(v0 + 2224);
        v233 = *(v0 + 2208);
        v695 = *(v0 + 2232);
        v234 = *(v0 + 2200);
        v618 = *(v0 + 2192);
        v235 = *(v0 + 2176);
        v236 = *(v0 + 2168);
        v613 = *(v0 + 2160);
        v678 = *(v0 + 2144);
        v237 = *(v0 + 2032);
        v624 = *(v234 + 104);
        v648 = *(v0 + 3220);
        v624();
        (*(v236 + 104))(v235, v229, v613);
        (*(v232 + 16))(v231, v731 + *(v230 + 32), v636);
        Date.timeIntervalSinceReferenceDate.getter();
        Date.timeIntervalSinceReferenceDate.getter();
        (v624)(v642, v630, v618);
        (*(*v237 + 248))(v642, v648);
        v238 = (*(v234 + 8))(v642, v618);
        v656(v238);
        v239 = *(v0 + 1656);
        v240 = *(v0 + 1664);
        sub_100014E1C((v0 + 1632), v239);
        (*(v240 + 56))(v239, v240);
        v241 = *(v0 + 616);
        PrivateServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
        PrivateServicePrediction.init(type:source:predictedStartTime:predictedDuration:confidenceScore:)();
        v242 = sub_1001B6D9C(v648);
        v244 = v243;
        v245 = XPCEventPublisher.Token.rawValue.getter(v228, v227);
        v247 = v246;
        v248 = *(v0 + 1656);
        v249 = *(v0 + 1664);
        sub_100014E1C((v0 + 1632), v248);
        v250 = (*(v249 + 56))(v248, v249);
        v251 = *(v0 + 1656);
        v252 = *(v0 + 1664);
        sub_100014E1C((v0 + 1632), v251);
        v253 = (*(v252 + 72))(v251, v252);
        v254 = sub_1001B7278(*(v731 + 17));
        sub_100162DE0(v695, v242, v244, v245, v247, 0, v250, 0, v720, v253, 0, v254, v255, *(v731 + *(v706 + 40)));
        PrivateServicePrediction.predictedDuration.getter();
        if (v256 > 0.0)
        {
          v257 = *(v0 + 2752);
          sub_1001B87F8(*(v0 + 2296), *(v0 + 2288), type metadata accessor for InternalServicePrediction);
          v258 = swift_isUniquelyReferenced_nonNull_native();
          v259 = *(v0 + 2752);
          if ((v258 & 1) == 0)
          {
            v259 = sub_1001B77F0(0, v259[2] + 1, 1, *(v0 + 2752), &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
          }

          v261 = v259[2];
          v260 = v259[3];
          if (v261 >= v260 >> 1)
          {
            v259 = sub_1001B77F0(v260 > 1, v261 + 1, 1, v259, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
          }

          v759 = *(v0 + 2720);
          v262 = *(v0 + 2496);
          v263 = *(v0 + 2360);
          v264 = *(v0 + 2328);
          v265 = *(v0 + 2320);
          v266 = *(v0 + 2288);
          v267 = *(v0 + 2256);
          sub_1001B8860(*(v0 + 2296), type metadata accessor for InternalServicePrediction);
          (*(v264 + 8))(v263, v265);
          sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
          sub_1001B8860(v262, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v259[2] = v261 + 1;
          sub_1001B88C0(v266, v259 + ((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v261, type metadata accessor for InternalServicePrediction);
          v702 = v759 + 1;
          if (__OFADD__(v759, 1))
          {
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }

          v692 = *(v0 + 2712);
          goto LABEL_57;
        }

        v289 = *(v0 + 2496);
        v290 = *(v0 + 2424);
        v291 = *(v0 + 2040);
        sub_100003E50(&off_1002B70B0, *(v0 + 2576));
        sub_1001B87F8(v289, v290, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v292 = Logger.logObject.getter();
        v293 = static os_log_type_t.info.getter();
        v294 = os_log_type_enabled(v292, v293);
        v295 = *(v0 + 2648);
        v747 = *(v0 + 2512);
        v760 = *(v0 + 2576);
        v296 = *(v0 + 2496);
        v297 = *(v0 + 2424);
        v733 = *(v0 + 2520) + 8;
        if (v294)
        {
          v722 = *(v0 + 2496);
          v298 = *(v0 + 2368);
          v299 = *(v0 + 2328);
          v696 = *(v0 + 2320);
          v708 = *(v0 + 2360);
          v686 = *(v0 + 2296);
          v300 = swift_slowAlloc();
          v679 = v295;
          v301 = swift_slowAlloc();
          v768[0] = v301;
          *v300 = 136315138;
          sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v302 = dispatch thunk of CustomStringConvertible.description.getter();
          v304 = v303;
          sub_1001B8860(v297, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
          v305 = sub_10017A8A8(v302, v304, v768);

          *(v300 + 4) = v305;
          v306 = "Not adding OOS prediction as duration is not > 0 for %s";
LABEL_64:
          _os_log_impl(&_mh_execute_header, v292, v293, v306, v300, 0xCu);
          sub_100164B98(v301);

          v679(v760, v747);
          sub_1001B8860(v686, type metadata accessor for InternalServicePrediction);
          (*(v299 + 8))(v708, v696);
          sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
          v207 = v722;
          goto LABEL_68;
        }

        v307 = *(v0 + 2360);
        v308 = *(v0 + 2328);
        v309 = *(v0 + 2320);
        v310 = *(v0 + 2296);
      }

      sub_1001B8860(v297, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v295(v760, v747);
      sub_1001B8860(v310, type metadata accessor for InternalServicePrediction);
      (*(v308 + 8))(v307, v309);
      sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
      v207 = v296;
      goto LABEL_68;
    }

LABEL_25:
    v93 = 0;
    goto LABEL_26;
  }

  if (v48 != 12)
  {
    goto LABEL_25;
  }

  v53 = 12;
LABEL_13:
  v715 = v53;
  v54 = *(v0 + 2992);
  v55 = *(v0 + 2984);
  v629 = *(v0 + 3188);
  v56 = *(v0 + 3184);
  v675 = *(v0 + 2656);
  v684 = *(v0 + 2664);
  v641 = *(v0 + 2496);
  v57 = *(v0 + 2368);
  v701 = v57;
  v58 = *(v0 + 2352);
  v59 = *(v0 + 2328);
  v635 = *(v0 + 2320);
  v727 = *(v0 + 2312);
  v691 = *(v0 + 2240);
  v669 = *(v0 + 2224);
  v647 = *(v0 + 2216);
  v60 = *(v0 + 2200);
  v617 = *(v0 + 2192);
  v61 = *(v0 + 2184);
  v62 = *(v0 + 2168);
  v612 = *(v0 + 2160);
  v661 = *(v0 + 2152);
  v63 = *(v0 + 2032);
  v623 = *(v60 + 104);
  v623();
  (*(v62 + 104))(v61, v56, v612);
  (*(v59 + 16))(v58, v641 + *(v57 + 32), v635);
  Date.timeIntervalSinceReferenceDate.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (v623)(v647, v629, v617);
  (*(*v63 + 248))(v647, v715);
  v64 = (*(v60 + 8))(v647, v617);
  v65 = v675(v64);
  v66 = *(v0 + 1224);
  v675(v65);
  v67 = *(v0 + 1024);
  PrivateServicePrediction.ConfidenceScore.init(predictionConfidence:startTimeConfidence:durationConfidence:)();
  PrivateServicePrediction.init(type:source:predictedStartTime:predictedDuration:confidenceScore:)();
  v68 = sub_1001B6D9C(v715);
  v70 = v69;
  v71 = XPCEventPublisher.Token.rawValue.getter(v55, v54);
  v73 = v72;
  v74 = sub_1001B7278(*(v641 + 17));
  sub_100162DE0(v691, v68, v70, v71, v73, 0, 0, 1, v727, 0, 1, v74, v75, *(v641 + *(v701 + 40)));
  PrivateServicePrediction.predictedDuration.getter();
  if (v76 > 0.0)
  {
    v77 = *(v0 + 2752);
    sub_1001B87F8(*(v0 + 2312), *(v0 + 2304), type metadata accessor for InternalServicePrediction);
    v78 = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 2752);
    if (v78)
    {
LABEL_15:
      v80 = v1[2];
      v79 = v1[3];
      if (v80 >= v79 >> 1)
      {
        v1 = sub_1001B77F0(v79 > 1, v80 + 1, 1, v1, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
      }

      v81 = *(v0 + 2304);
      v82 = *(v0 + 2256);
      v1[2] = v80 + 1;
      sub_1001B88C0(v81, v1 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v80, type metadata accessor for InternalServicePrediction);
      v83 = v1;
      goto LABEL_45;
    }

LABEL_189:
    v1 = sub_1001B77F0(0, v1[2] + 1, 1, v1, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
    goto LABEL_15;
  }

  v131 = *(v0 + 2496);
  v132 = *(v0 + 2472);
  v133 = *(v0 + 2040);
  sub_100003E50(&off_1002B70B0, *(v0 + 2616));
  sub_1001B87F8(v131, v132, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.info.getter();
  v136 = os_log_type_enabled(v134, v135);
  v137 = *(v0 + 2648);
  v138 = *(v0 + 2616);
  v139 = *(v0 + 2512);
  v140 = *(v0 + 2472);
  v141 = *(v0 + 2520) + 8;
  if (v136)
  {
    v142 = *(v0 + 2368);
    v756 = *(v0 + 2648);
    v143 = swift_slowAlloc();
    v744 = v138;
    v144 = swift_slowAlloc();
    v768[0] = v144;
    *v143 = 136315138;
    sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v145 = dispatch thunk of CustomStringConvertible.description.getter();
    v147 = v146;
    sub_1001B8860(v140, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v148 = sub_10017A8A8(v145, v147, v768);

    *(v143 + 4) = v148;
    _os_log_impl(&_mh_execute_header, v134, v135, "Not adding flight as duration is not > 0 for %s", v143, 0xCu);
    sub_100164B98(v144);

    v756(v744, v139);
  }

  else
  {

    sub_1001B8860(v140, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v137(v138, v139);
  }

  v83 = *(v0 + 2752);
  v1 = *(v0 + 2744);
LABEL_45:
  v208 = *(v0 + 2496);
  v209 = *(v0 + 2464);
  v210 = *(v0 + 2040);
  sub_100003E50(&off_1002B70B0, *(v0 + 2608));
  sub_1001B87F8(v208, v209, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
  v211 = Logger.logObject.getter();
  v212 = static os_log_type_t.debug.getter();
  v213 = os_log_type_enabled(v211, v212);
  v730 = *(v0 + 2608);
  v746 = *(v0 + 2648);
  v719 = *(v0 + 2512);
  v758 = *(v0 + 2496);
  v214 = *(v0 + 2464);
  v705 = *(v0 + 2520) + 8;
  if (v213)
  {
    v671 = v1;
    v215 = *(v0 + 2368);
    v677 = *(v0 + 2328);
    v685 = *(v0 + 2320);
    v694 = *(v0 + 2360);
    v663 = *(v0 + 2312);
    v216 = v83;
    v217 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    v768[0] = v218;
    *v217 = 136315138;
    sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v219 = dispatch thunk of CustomStringConvertible.description.getter();
    v221 = v220;
    sub_1001B8860(v214, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v222 = sub_10017A8A8(v219, v221, v768);

    *(v217 + 4) = v222;
    _os_log_impl(&_mh_execute_header, v211, v212, "Created no cellular data service prediction for flight %s", v217, 0xCu);
    sub_100164B98(v218);

    v83 = v216;

    v746(v730, v719);
    sub_1001B8860(v663, type metadata accessor for InternalServicePrediction);
    (*(v677 + 8))(v694, v685);
    sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
    v1 = v671;
  }

  else
  {
    v223 = *(v0 + 2360);
    v224 = *(v0 + 2328);
    v225 = *(v0 + 2320);
    v226 = *(v0 + 2312);

    sub_1001B8860(v214, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v746(v730, v719);
    sub_1001B8860(v226, type metadata accessor for InternalServicePrediction);
    (*(v224 + 8))(v223, v225);
    sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
  }

  sub_1001B8860(v758, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
LABEL_70:
  v311 = *(v0 + 2712);
  v692 = v311;
  v702 = *(v0 + 2720);
  while (1)
  {
    v84 = sub_100164B98((v0 + 1632));
LABEL_72:
    v312 = *(v0 + 2736) + 1;
    v723 = *(v0 + 2968);
    v734 = *(v0 + 2960);
    v748 = *(v0 + 2976);
    v761 = *(v0 + 2952);
    v313 = *(v0 + 2928);
    v314 = *(v0 + 2920);
    v680 = *(v0 + 2944);
    v687 = *(v0 + 2936);
    if (v312 != *(v0 + 2704))
    {
      break;
    }

    v657 = *(v0 + 2760);
    v665 = *(v0 + 2768);
    *(v0 + 3008) = v1;
    v315 = *(v0 + 2688);
    v316 = *(v0 + 2032);
    v643 = v313;
    v649 = v314;
    v317 = (*v316 + 432);
    v318 = *v317;
    v631 = *(v0 + 2776);
    v637 = vextq_s8(*(v0 + 2824), *(v0 + 2824), 8uLL);
    v610 = v0 + 2776;
    v619 = *(v0 + 2792);
    v625 = vextq_s8(*(v0 + 2808), *(v0 + 2808), 8uLL);
    v319 = (*v317)(v84);

    v320 = sub_100004814(v319, v1);

    v321 = *(v315 + 16);

    v322 = v1[2];
    v323 = v316[27];
    v324 = v316[28];
    sub_100014E1C(v316 + 24, v323);
    *(v0 + 1736) = &_s25MapsSuggestionsFetchEventVN;
    *(v0 + 1744) = &off_1002B70F0;
    v325 = swift_allocObject();
    *(v0 + 1712) = v325;
    *(v325 + 16) = v321;
    *(v325 + 24) = v322;
    *(v325 + 32) = v712;
    *(v325 + 40) = v702;
    *(v325 + 48) = v692;
    *(v325 + 56) = (v320 & 1) == 0;
    *(v325 + 57) = *(v0 + 3212);
    *(v325 + 60) = *(v0 + 3215);
    *(v325 + 64) = v748;
    *(v325 + 72) = v723;
    *(v325 + 80) = v734;
    *(v325 + 88) = v761;
    *(v325 + 96) = v680;
    *(v325 + 104) = v687;
    *(v325 + 112) = v643;
    *(v325 + 120) = v649;
    *(v325 + 128) = v637;
    *(v325 + 144) = v625;
    *(v325 + 160) = vextq_s8(v619, v619, 8uLL);
    *(v325 + 176) = vextq_s8(v631, v631, 8uLL);
    *(v325 + 192) = v665;
    *(v325 + 200) = v657;
    (*(v324 + 8))(0xD00000000000002DLL, 0x800000010025CBE0, v0 + 1712, v323, v324);
    sub_100164B98((v0 + 1712));
    if ((v320 & 1) == 0)
    {
      v326 = v318;
      v327 = v1;
      v328 = *(v0 + 2032);
      v329 = *(v0 + 2040);
      sub_100003E50(&off_1002B70B0, *(v0 + 2536));

      v314 = Logger.logObject.getter();
      v330 = static os_log_type_t.default.getter();

      v331 = os_log_type_enabled(v314, v330);
      v332 = *(v0 + 2536);
      v333 = *(v0 + 2520);
      v259 = *(v0 + 2512);
      if (v331)
      {
        v334 = *(v0 + 2248);
        v762 = *(v0 + 2512);
        v335 = *(v0 + 2032);
        v735 = v330;
        v336 = swift_slowAlloc();
        v768[0] = swift_slowAlloc();
        *v336 = 136315394;
        v326();
        v749 = v332;
        v337 = Array.description.getter();
        v339 = v338;

        v340 = sub_10017A8A8(v337, v339, v768);

        *(v336 + 4) = v340;
        *(v336 + 12) = 2080;
        v341 = v1;

        v342 = Array.description.getter();
        v344 = v343;

        v345 = sub_10017A8A8(v342, v344, v768);

        *(v336 + 14) = v345;
        _os_log_impl(&_mh_execute_header, v314, v735, "Updating service predictions from %s suggestions to %s", v336, 0x16u);
        swift_arrayDestroy();

        (*(v333 + 8))(v749, v762);
      }

      else
      {
LABEL_81:

        (*(v333 + 8))(v332, v259);
        v341 = v327;
      }

      v376 = *(v0 + 2032);
      v377 = *(*v376 + 440);

      v379 = v377(v378);
      v380 = (*(*v376 + 384))(v379);
      *(v0 + 3016) = v380;
      if (v380)
      {
        v382 = v381;
        v383 = v341;
        ObjectType = swift_getObjectType();
        v385 = *(v382 + 8);

        v750 = v385 + *v385;
        v386 = v385[1];
        v387 = swift_task_alloc();
        *(v0 + 3024) = v387;
        *v387 = v0;
        v387[1] = sub_1001AFD64;
        v388 = v383;
        v389 = ObjectType;
        v390 = v382;
        v391 = v750;

        return v391(v388, v389, v390);
      }
    }

    v393 = *(v0 + 2696);
    v394 = *(v393 + 16);
    *(v0 + 3032) = v394;
    if (v394)
    {
      v395 = *(v0 + 2136);
      v396 = *(v0 + 2120);
      v397 = *(v0 + 2112);
      v398 = *(v0 + 2032);
      v399 = v397[11];
      *(v0 + 3192) = v399;
      v400 = v397[12];
      *(v0 + 3196) = v400;
      *(v0 + 3200) = v397[8];
      *(v0 + 3204) = v397[9];
      v401 = *v398;
      *(v0 + 3040) = *(*v398 + 744);
      *(v0 + 3048) = (v401 + 744) & 0xFFFFFFFFFFFFLL | 0x46AA000000000000;
      LODWORD(v397) = *(v396 + 80);
      *(v0 + 3208) = v397;
      *(v0 + 3056) = *(v396 + 72);
      *(v0 + 3072) = &_swiftEmptyArrayStorage;
      *(v0 + 3064) = 0;
      sub_1001B87F8(v393 + ((v397 + 32) & ~v397), v395, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
      v402 = *(v0 + 1576);
      v403 = *(v0 + 1584);
      sub_100014E1C((v0 + 1552), v402);
      v404 = *(v395 + v399);
      *(v0 + 3080) = v404;
      v405 = *(v395 + v400);
      *(v0 + 3088) = v405;
      v406 = *(v403 + 8);
      v763 = (v406 + *v406);
      v407 = v406[1];
      v408 = swift_task_alloc();
      *(v0 + 3096) = v408;
      *v408 = v0;
      v408[1] = sub_1001B0D6C;
      v409 = v0 + 1752;
      v410.n128_u64[0] = v404;
      v411.n128_u64[0] = v405;
      goto LABEL_148;
    }

    *(v0 + 3152) = &_swiftEmptyArrayStorage;
    v413 = (*(**(v0 + 2032) + 384))(v412);
    *(v0 + 3160) = v413;
    if (v413)
    {
      v415 = v414;
      v416 = swift_getObjectType();
      v417 = *(v415 + 16);
      v764 = v417 + *v417;
      v418 = v417[1];
      v419 = swift_task_alloc();
      *(v0 + 3168) = v419;
      *v419 = v0;
      v419[1] = sub_1001B225C;
      v388 = &_swiftEmptyArrayStorage;
      v389 = v416;
      v390 = v415;
      v391 = v764;

      return v391(v388, v389, v390);
    }

    if (*(v610 + 443) != 1)
    {
      goto LABEL_183;
    }

    v420 = *(v0 + 2352);
    v421 = *(v0 + 2336);
    v422 = *(v0 + 2328);
    v423 = *(v0 + 2320);
    v424 = *(v0 + 2088);
    v425 = *(v0 + 2032);
    v426 = Date.init()();
    v427 = (*(*v425 + 576))(v426);
    v428 = (*v425 + 416);
    v429 = *v428;
    v430 = v427 / (*v428)();
    v431 = (*(v422 + 16))(v420, v421, v423);
    (v429)(v431);
    v432 = DateInterval.init(start:duration:)();
    v433 = (*v425 + 552);
    v434 = *v433;
    (*v433)(v432);
    v435 = (*(*v425 + 504))();
    j_j___s10Foundation4DateVACycfC();
    sub_1001BDAF8(v435, v420);

    v436 = *(v422 + 8);
    v437 = v436(v420, v423);
    LOBYTE(v420) = (*(*v425 + 528))(v437);
    v751 = v434;
    v434();
    v438 = *(v0 + 2352);
    j_j___s10Foundation4DateVACycfC();
    if (v420)
    {
      sub_1001BD808(v438);
    }

    else
    {
      sub_1001BD980(v438);
    }

    v520 = *(v0 + 2352);
    v521 = *(v0 + 2320);
    v259 = *(v0 + 2032);

    v522 = v436(v520, v521);
    v523 = (v434)(v522);
    swift_beginAccess();
    v524 = *(v523 + 24);

    v526 = round((v430 - v524) / (v429)(v525) * 100.0);
    if ((*&v526 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_203;
    }

    if (v526 <= -9.22337204e18)
    {
      goto LABEL_204;
    }

    if (v526 >= 9.22337204e18)
    {
      goto LABEL_205;
    }

    v527 = *(v0 + 2032);
    v434();
    v528 = sub_1001BDD78();

    (v751)(v529);
    v738 = sub_1001BDE54();

    (v751)(v530);
    v699 = sub_1001BDF30();

    (v751)(v531);
    v689 = sub_1001BE00C();

    v259 = (v751)(v532);
    v533 = sub_1001BE0CC();

    v535 = round(v430 * 100.0);
    if ((*&v535 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_206;
    }

    if (v535 <= -9.22337204e18)
    {
      goto LABEL_207;
    }

    if (v535 >= 9.22337204e18)
    {
      goto LABEL_208;
    }

    v259 = *(v0 + 2032);
    v536 = (v429)(v534);
    if ((*&v536 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_209;
    }

    if (v536 <= -9.22337204e18)
    {
      goto LABEL_210;
    }

    v673 = v533;
    v682 = v429;
    v712 = v436;
    if (v536 < 9.22337204e18)
    {
      v667 = *(v0 + 3008);
      v537 = *(v0 + 2352);
      v659 = *(v0 + 2320);
      v538 = *(v0 + 2032);
      v539 = v536;
      v540 = v538[27];
      v541 = v538[28];
      sub_100014E1C(v538 + 24, v540);
      *(v0 + 1856) = &_s39MapsSuggestionsPredictedPercentageMatchVN;
      *(v0 + 1864) = &off_1002B7100;
      v542 = swift_allocObject();
      *(v0 + 1832) = v542;
      v542[2] = v528;
      v542[3] = v738;
      v542[4] = v699;
      v542[5] = v689;
      v542[6] = v673;
      v542[7] = v535;
      v542[8] = v526;
      v542[9] = v539;
      (*(v541 + 8))(0xD000000000000040, 0x800000010025CC10, v0 + 1832, v540, v541);
      v543 = sub_100164B98((v0 + 1832));
      (v751)(v543);
      j_j___s10Foundation4DateVACycfC();
      sub_1001BE18C(v537);

      v544 = v436(v537, v659);
      v545 = *(v667 + 2);
      if (v545)
      {
        v546 = *(v0 + 2256);
        v547 = *(v0 + 2064);
        v548 = *(v0 + 3008) + ((*(v546 + 80) + 32) & ~*(v546 + 80));
        v549 = (v547 + 8);
        v753 = (v547 + 48);
        v766 = *(v546 + 72);
        v739 = (v547 + 32);

        v550 = 0.0;
        do
        {
          v555 = *(v0 + 2352);
          v556 = *(v0 + 2264);
          v557 = *(v0 + 2088);
          v558 = *(v0 + 2072);
          v559 = *(v0 + 2056);
          v560 = *(v0 + 2048);
          sub_1001B87F8(v548, v556, type metadata accessor for InternalServicePrediction);
          PrivateServicePrediction.predictedStartTime.getter();
          PrivateServicePrediction.predictedDuration.getter();
          sub_1001B8860(v556, type metadata accessor for InternalServicePrediction);
          DateInterval.init(start:duration:)();
          DateInterval.intersection(with:)();
          v561 = *v549;
          (*v549)(v558, v559);
          if ((*v753)(v560, 1, v559) == 1)
          {
            sub_1000157F0(*(v0 + 2048), &qword_1002D71C0, &qword_10024B118);
          }

          else
          {
            v551 = *(v0 + 2080);
            v552 = *(v0 + 2056);
            (*v739)(v551, *(v0 + 2048), v552);
            DateInterval.duration.getter();
            v554 = v553;
            v561(v551, v552);
            v550 = v550 + v554;
          }

          v548 += v766;
          --v545;
        }

        while (v545);
        v562 = *(v0 + 3008);
      }

      else
      {
        v550 = 0.0;
      }

      v563 = *(v0 + 2336);
      v564 = *(v0 + 2320);
      v565 = *(v0 + 2088);
      v566 = *(v0 + 2064);
      v567 = *(v0 + 2056);
      v568 = *(v0 + 2032);
      v569.n128_f64[0] = (v682)(v544);
      if (v569.n128_f64[0] >= v550)
      {
        v569.n128_f64[0] = v550;
      }

      (*(*v568 + 584))(v569);
      (*(v566 + 8))(v565, v567);
      (v712)(v563, v564);
LABEL_183:
      v570 = *(v0 + 2504);
      v767 = *(v0 + 3008);

      sub_1000157F0(v570, &qword_1002D7178, &unk_10024B0C0);
      sub_100164B98((v0 + 1552));

      sub_100164B98((v0 + 1472));
      v571 = *(v0 + 2640);
      v572 = *(v0 + 2632);
      v573 = *(v0 + 2624);
      v574 = *(v0 + 2616);
      v575 = *(v0 + 2608);
      v576 = *(v0 + 2600);
      v577 = *(v0 + 2592);
      v578 = *(v0 + 2584);
      v579 = *(v0 + 2576);
      v580 = *(v0 + 2568);
      v582 = *(v0 + 2560);
      v583 = *(v0 + 2552);
      v584 = *(v0 + 2544);
      v585 = *(v0 + 2536);
      v586 = *(v0 + 2528);
      v587 = *(v0 + 2504);
      v588 = *(v0 + 2496);
      v589 = *(v0 + 2488);
      v590 = *(v0 + 2480);
      v591 = *(v0 + 2472);
      v592 = *(v0 + 2464);
      v593 = *(v0 + 2456);
      v594 = *(v0 + 2448);
      v595 = *(v0 + 2440);
      v596 = *(v0 + 2432);
      v597 = *(v0 + 2424);
      v598 = *(v0 + 2416);
      v599 = *(v0 + 2408);
      v600 = *(v0 + 2400);
      v601 = *(v0 + 2392);
      v602 = *(v0 + 2384);
      v603 = *(v0 + 2360);
      v604 = *(v0 + 2352);
      v605 = *(v0 + 2344);
      v606 = *(v0 + 2336);
      v607 = *(v0 + 2312);
      v608 = *(v0 + 2304);
      v609 = *(v0 + 2296);
      v611 = *(v0 + 2288);
      v616 = *(v0 + 2280);
      v622 = *(v0 + 2272);
      v628 = *(v0 + 2264);
      v634 = *(v0 + 2240);
      v640 = *(v0 + 2232);
      v646 = *(v0 + 2224);
      v652 = *(v0 + 2216);
      v655 = *(v0 + 2208);
      v660 = *(v0 + 2184);
      v668 = *(v0 + 2176);
      v674 = *(v0 + 2152);
      v683 = *(v0 + 2144);
      v690 = *(v0 + 2136);
      v700 = *(v0 + 2128);
      v711 = *(v0 + 2104);
      v713 = *(v0 + 2088);
      v725 = *(v0 + 2080);
      v740 = *(v0 + 2072);
      v754 = *(v0 + 2048);

      v581 = *(v0 + 8);

      return v581(v767);
    }

LABEL_211:
    __break(1u);
LABEL_212:
    v259 = sub_1001B77F0(0, v259[2] + 1, 1, v259, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
LABEL_156:
    v504 = v259[2];
    v503 = v259[3];
    if (v504 >= v503 >> 1)
    {
      v259 = sub_1001B77F0(v503 > 1, v504 + 1, 1, v259, &qword_1002D79B0, &qword_10024BA20, type metadata accessor for InternalServicePrediction);
    }

    v765 = *(v0 + 2712);
    v505 = *(v0 + 2496);
    v506 = *(v0 + 2360);
    v507 = *(v0 + 2328);
    v508 = *(v0 + 2320);
    v509 = *(v0 + 2272);
    v510 = *(v0 + 2256);
    sub_1001B8860(*(v0 + 2280), type metadata accessor for InternalServicePrediction);
    (*(v507 + 8))(v506, v508);
    sub_1000157F0(v0 + 1592, &qword_1002D71D0, &qword_10024AE20);
    sub_1001B8860(v505, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
    v259[2] = v504 + 1;
    result = sub_1001B88C0(v509, v259 + ((*(v510 + 80) + 32) & ~*(v510 + 80)) + *(v510 + 72) * v504, type metadata accessor for InternalServicePrediction);
    if (__OFADD__(v765, 1))
    {
      __break(1u);
      return result;
    }

    v692 = v765 + 1;
    v702 = *(v0 + 2720);
LABEL_57:
    v83 = v259;
    v1 = v259;
  }

  v346 = *(v0 + 2912);
  v347 = *(v0 + 2904);
  v348 = *(v0 + 2896);
  v349 = *(v0 + 2888);
  v350 = *(v0 + 2880);
  v351 = v83;
  v352 = *(v0 + 2872);
  v353 = *(v0 + 2864);
  v354 = *(v0 + 2856);
  v355 = *(v0 + 2848);
  v332 = *(v0 + 2840);
  v356 = *(v0 + 2832);
  v357 = *(v0 + 2824);
  v358 = *(v0 + 2816);
  v359 = *(v0 + 2808);
  v360 = *(v0 + 2800);
  v361 = *(v0 + 2792);
  v362 = *(v0 + 2784);
  v363 = *(v0 + 2776);
  v364 = *(v0 + 2768);
  v365 = *(v0 + 2760);
  *(v0 + 2752) = v351;
  *(v0 + 2744) = v1;
  *(v0 + 2736) = v312;
  *(v0 + 2728) = v712;
  *(v0 + 2720) = v702;
  *(v0 + 2712) = v692;
  v366 = *(v0 + 2688);
  if (v312 >= *(v366 + 16))
  {
    goto LABEL_188;
  }

  v697 = v347;
  v709 = v348;
  v712 = v349;
  v367 = v355;
  v614 = v356;
  v620 = v357;
  v626 = v358;
  v632 = v359;
  v638 = v360;
  v644 = v361;
  v650 = v362;
  v653 = v363;
  v658 = v364;
  v666 = v365;
  v368 = *(v0 + 2496);
  sub_1001B87F8(v366 + ((*(v0 + 3176) + 32) & ~*(v0 + 3176)) + *(*(v0 + 2376) + 72) * v312, v368, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
  v369 = *(v368 + 16);
  *(v0 + 3220) = v369;
  v259 = v332;
  v370 = v367;
  v371 = v354;
  v372 = v350;
  v374 = v709;
  v373 = v712;
  v327 = v697;
  v333 = v346;
  switch(v369)
  {
    case 1:
      v375 = __OFADD__(v748++, 1);
      if (!v375)
      {
        goto LABEL_133;
      }

      __break(1u);
      goto LABEL_121;
    case 2:
      goto LABEL_106;
    case 3:
      v375 = __OFADD__(v734++, 1);
      if (!v375)
      {
        goto LABEL_133;
      }

      __break(1u);
LABEL_116:
      v442 = v332 + 1;
      if (__OFADD__(v332, 1))
      {
        goto LABEL_197;
      }

      v259 = (v332 + 1);
      v441 = v680;
      v440 = v687;
      goto LABEL_136;
    case 4:
    case 5:
      v375 = __OFADD__(v761++, 1);
      if (!v375)
      {
        goto LABEL_133;
      }

      __break(1u);
      goto LABEL_81;
    case 6:
      v441 = v680 + 1;
      if (!__OFADD__(v680, 1))
      {
        goto LABEL_134;
      }

      __break(1u);
LABEL_128:
      v445 = v353 + 1;
      if (__OFADD__(v353, 1))
      {
        goto LABEL_200;
      }

      ++v353;
      v441 = v680;
      v440 = v687;
      v443 = v658;
      v442 = v666;
      v444 = v653;
      goto LABEL_138;
    case 7:
      v440 = v687 + 1;
      if (__OFADD__(v687, 1))
      {
        goto LABEL_196;
      }

      v441 = v680;
      goto LABEL_135;
    case 8:
      v375 = __OFADD__(v313++, 1);
      if (v375)
      {
        goto LABEL_202;
      }

      goto LABEL_133;
    case 9:
      v375 = __OFADD__(v314, 1);
      v314 = (v314 + 1);
      if (!v375)
      {
        goto LABEL_133;
      }

      __break(1u);
LABEL_106:
      v375 = __OFADD__(v723++, 1);
      if (!v375)
      {
LABEL_133:
        v441 = v680;
LABEL_134:
        v440 = v687;
LABEL_135:
        v442 = v666;
LABEL_136:
        v443 = v658;
LABEL_137:
        v445 = v650;
        v444 = v653;
        goto LABEL_138;
      }

      __break(1u);
LABEL_109:
      v444 = v371 + 1;
      if (__OFADD__(v371, 1))
      {
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
        goto LABEL_211;
      }

      ++v371;
      v441 = v680;
      v440 = v687;
      v443 = v658;
      v442 = v666;
      v445 = v650;
LABEL_138:
      v446 = v644;
LABEL_139:
      v439 = v638;
LABEL_140:
      v447 = v632;
LABEL_141:
      v449 = v626;
LABEL_142:
      v448 = v620;
LABEL_143:
      v450 = v614;
LABEL_144:
      *(v0 + 2976) = v748;
      *(v0 + 2968) = v723;
      *(v0 + 2960) = v734;
      *(v0 + 2952) = v761;
      *(v0 + 2944) = v441;
      *(v0 + 2936) = v440;
      *(v0 + 2928) = v313;
      *(v0 + 2920) = v314;
      *(v0 + 2912) = v333;
      *(v0 + 2904) = v327;
      *(v0 + 2896) = v374;
      *(v0 + 2888) = v373;
      *(v0 + 2880) = v372;
      *(v0 + 2872) = v352;
      *(v0 + 2864) = v353;
      *(v0 + 2856) = v371;
      *(v0 + 2848) = v370;
      *(v0 + 2840) = v259;
      *(v0 + 2832) = v450;
      *(v0 + 2824) = v448;
      *(v0 + 2816) = v449;
      *(v0 + 2808) = v447;
      *(v0 + 2800) = v439;
      *(v0 + 2792) = v446;
      *(v0 + 2784) = v445;
      *(v0 + 2776) = v444;
      *(v0 + 2768) = v443;
      *(v0 + 2760) = v442;
      v451 = *(v0 + 2496);
      v452 = *(v0 + 2488);
      v453 = *(v0 + 2040);
      sub_100003E50(&off_1002B70B0, *(v0 + 2632));
      sub_1001B87F8(v451, v452, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
      v454 = Logger.logObject.getter();
      v455 = static os_log_type_t.debug.getter();
      v456 = os_log_type_enabled(v454, v455);
      v457 = *(v0 + 2648);
      v458 = *(v0 + 2632);
      v459 = *(v0 + 2520);
      v460 = *(v0 + 2512);
      v461 = *(v0 + 2488);
      if (v456)
      {
        v462 = *(v0 + 2368);
        v463 = swift_slowAlloc();
        v752 = v457;
        v464 = swift_slowAlloc();
        v768[0] = v464;
        *v463 = 136315138;
        sub_1001B840C(&qword_1002D71D8, 255, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v465 = dispatch thunk of CustomStringConvertible.description.getter();
        v467 = v466;
        sub_1001B8860(v461, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v468 = sub_10017A8A8(v465, v467, v768);

        *(v463 + 4) = v468;
        _os_log_impl(&_mh_execute_header, v454, v455, "Fetching coverage tile for %s", v463, 0xCu);
        sub_100164B98(v464);

        v752(v458, v460);
      }

      else
      {

        sub_1001B8860(v461, type metadata accessor for MapsSuggestionController.MapsSuggestionEntry);
        v457(v458, v460);
      }

      v469 = *(v0 + 2496);
      v402 = *(v0 + 1576);
      v403 = *(v0 + 1584);
      sub_100014E1C((v0 + 1552), v402);
      v470 = *v469;
      *(v0 + 2984) = *v469;
      v471 = v469[1];
      *(v0 + 2992) = v471;
      v472 = *(v403 + 8);
      v763 = (v472 + *v472);
      v473 = v472[1];
      v474 = swift_task_alloc();
      *(v0 + 3000) = v474;
      *v474 = v0;
      v474[1] = sub_1001AB868;
      v409 = v0 + 1592;
      v410.n128_u64[0] = v470;
      v411.n128_u64[0] = v471;
LABEL_148:

      return v763(v409, v402, v403, v410, v411);
    case 10:
      v450 = v346 + 1;
      if (__OFADD__(v346, 1))
      {
        goto LABEL_201;
      }

      v333 = v346 + 1;
      v441 = v680;
      v440 = v687;
      v443 = v658;
      v442 = v666;
      v445 = v650;
      v444 = v653;
      v446 = v644;
      v439 = v638;
      v447 = v632;
      v449 = v626;
      v448 = v620;
      goto LABEL_144;
    case 11:
      v448 = v697 + 1;
      if (__OFADD__(v697, 1))
      {
        goto LABEL_193;
      }

      v327 = (v697 + 1);
      v441 = v680;
      v440 = v687;
      v443 = v658;
      v442 = v666;
      v445 = v650;
      v444 = v653;
      v446 = v644;
      v439 = v638;
      v447 = v632;
      v449 = v626;
      goto LABEL_143;
    case 12:
      v449 = v709 + 1;
      if (__OFADD__(v709, 1))
      {
        goto LABEL_194;
      }

      v374 = v709 + 1;
      v441 = v680;
      v440 = v687;
      v443 = v658;
      v442 = v666;
      v445 = v650;
      v444 = v653;
      v446 = v644;
      v439 = v638;
      v447 = v632;
      goto LABEL_142;
    case 13:
      v443 = v367 + 1;
      if (__OFADD__(v367, 1))
      {
        goto LABEL_199;
      }

      v370 = v367 + 1;
      v441 = v680;
      v440 = v687;
      v442 = v666;
      goto LABEL_137;
    case 14:
      v447 = v712 + 1;
      if (__OFADD__(v712, 1))
      {
        goto LABEL_192;
      }

      v373 = v712 + 1;
      v441 = v680;
      v440 = v687;
      v443 = v658;
      v442 = v666;
      v445 = v650;
      v444 = v653;
      v446 = v644;
      v439 = v638;
      goto LABEL_141;
    case 15:
      goto LABEL_109;
    case 16:
      v439 = v372 + 1;
      if (__OFADD__(v372, 1))
      {
        goto LABEL_191;
      }

      ++v372;
      v441 = v680;
      v440 = v687;
      v443 = v658;
      v442 = v666;
      v445 = v650;
      v444 = v653;
      v446 = v644;
      goto LABEL_140;
    case 17:
LABEL_121:
      v446 = v352 + 1;
      if (__OFADD__(v352, 1))
      {
        goto LABEL_198;
      }

      ++v352;
      v441 = v680;
      v440 = v687;
      v443 = v658;
      v442 = v666;
      v445 = v650;
      v444 = v653;
      goto LABEL_139;
    case 18:
      goto LABEL_128;
    default:
      goto LABEL_116;
  }
}

uint64_t sub_1001AFD64()
{
  v1 = *(*v0 + 3024);
  v2 = *(*v0 + 3008);
  v3 = *(*v0 + 2032);
  v5 = *v0;

  return _swift_task_switch(sub_1001AFE90, v3, 0);
}

void sub_1001AFE90()
{
  v1 = *(v0 + 3016);
  swift_unknownObjectRelease();
  v2 = *(v0 + 2696);
  v3 = *(v2 + 16);
  *(v0 + 3032) = v3;
  if (v3)
  {
    v4 = *(v0 + 2136);
    v5 = *(v0 + 2120);
    v6 = *(v0 + 2112);
    v7 = *(v0 + 2032);
    v8 = v6[11];
    *(v0 + 3192) = v8;
    v9 = v6[12];
    *(v0 + 3196) = v9;
    *(v0 + 3200) = v6[8];
    *(v0 + 3204) = v6[9];
    v10 = *v7;
    *(v0 + 3040) = *(*v7 + 744);
    *(v0 + 3048) = (v10 + 744) & 0xFFFFFFFFFFFFLL | 0x46AA000000000000;
    LODWORD(v6) = *(v5 + 80);
    *(v0 + 3208) = v6;
    *(v0 + 3056) = *(v5 + 72);
    *(v0 + 3072) = &_swiftEmptyArrayStorage;
    *(v0 + 3064) = 0;
    sub_1001B87F8(v2 + ((v6 + 32) & ~v6), v4, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
    v11 = *(v0 + 1576);
    v12 = *(v0 + 1584);
    sub_100014E1C((v0 + 1552), v11);
    v13 = *(v4 + v8);
    *(v0 + 3080) = v13;
    v14 = *(v4 + v9);
    *(v0 + 3088) = v14;
    v15 = *(v12 + 8);
    v170 = (v15 + *v15);
    v16 = v15[1];
    v17 = swift_task_alloc();
    *(v0 + 3096) = v17;
    *v17 = v0;
    v17[1] = sub_1001B0D6C;
    v18.n128_u64[0] = v13;
    v19.n128_u64[0] = v14;

    v170(v0 + 1752, v11, v12, v18, v19);
    return;
  }

  *(v0 + 3152) = &_swiftEmptyArrayStorage;
  v21 = (*(**(v0 + 2032) + 384))(v20);
  *(v0 + 3160) = v21;
  if (v21)
  {
    v23 = v22;
    ObjectType = swift_getObjectType();
    v25 = *(v23 + 16);
    v171 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    *(v0 + 3168) = v27;
    *v27 = v0;
    v27[1] = sub_1001B225C;

    v171(&_swiftEmptyArrayStorage, ObjectType, v23);
    return;
  }

  if (*(v0 + 3219) == 1)
  {
    v28 = *(v0 + 2352);
    v29 = *(v0 + 2336);
    v30 = *(v0 + 2328);
    v31 = *(v0 + 2320);
    v32 = *(v0 + 2088);
    v33 = *(v0 + 2032);
    v34 = Date.init()();
    v35 = (*(*v33 + 576))(v34);
    v36 = (*v33 + 416);
    v37 = *v36;
    v38 = v35 / (*v36)();
    v39 = (*(v30 + 16))(v28, v29, v31);
    (v37)(v39);
    v40 = DateInterval.init(start:duration:)();
    v41 = (*v33 + 552);
    v42 = *v41;
    (*v41)(v40);
    v43 = (*(*v33 + 504))();
    j_j___s10Foundation4DateVACycfC();
    sub_1001BDAF8(v43, v28);

    v44 = *(v30 + 8);
    v45 = v44(v28, v31);
    LOBYTE(v28) = (*(*v33 + 528))(v45);
    v167 = v42;
    v42();
    v46 = *(v0 + 2352);
    j_j___s10Foundation4DateVACycfC();
    if (v28)
    {
      sub_1001BD808(v46);
    }

    else
    {
      sub_1001BD980(v46);
    }

    v47 = *(v0 + 2352);
    v48 = *(v0 + 2320);
    v49 = *(v0 + 2032);

    v50 = v44(v47, v48);
    v51 = (v42)(v50);
    swift_beginAccess();
    v52 = *(v51 + 24);

    v54 = round((v38 - v52) / (v37)(v53) * 100.0);
    if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v54 > -9.22337204e18)
    {
      if (v54 < 9.22337204e18)
      {
        v55 = *(v0 + 2032);
        v42();
        v56 = sub_1001BDD78();

        (v167)(v57);
        v164 = sub_1001BDE54();

        (v167)(v58);
        v158 = sub_1001BDF30();

        (v167)(v59);
        v156 = sub_1001BE00C();

        (v167)(v60);
        v61 = sub_1001BE0CC();

        v63 = round(v38 * 100.0);
        if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v63 > -9.22337204e18)
          {
            if (v63 < 9.22337204e18)
            {
              v64 = *(v0 + 2032);
              v65 = (v37)(v62);
              if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v65 > -9.22337204e18)
                {
                  v152 = v61;
                  v154 = v37;
                  v161 = v44;
                  if (v65 < 9.22337204e18)
                  {
                    v150 = *(v0 + 3008);
                    v66 = *(v0 + 2352);
                    v148 = *(v0 + 2320);
                    v67 = *(v0 + 2032);
                    v68 = v65;
                    v69 = v67[27];
                    v70 = v67[28];
                    sub_100014E1C(v67 + 24, v69);
                    *(v0 + 1856) = &_s39MapsSuggestionsPredictedPercentageMatchVN;
                    *(v0 + 1864) = &off_1002B7100;
                    v71 = swift_allocObject();
                    *(v0 + 1832) = v71;
                    v71[2] = v56;
                    v71[3] = v164;
                    v71[4] = v158;
                    v71[5] = v156;
                    v71[6] = v152;
                    v71[7] = v63;
                    v71[8] = v54;
                    v71[9] = v68;
                    (*(v70 + 8))(0xD000000000000040, 0x800000010025CC10, v0 + 1832, v69, v70);
                    v72 = sub_100164B98((v0 + 1832));
                    (v167)(v72);
                    j_j___s10Foundation4DateVACycfC();
                    sub_1001BE18C(v66);

                    v73 = v44(v66, v148);
                    v74 = *(v150 + 16);
                    if (v74)
                    {
                      v75 = *(v0 + 2256);
                      v76 = *(v0 + 2064);
                      v77 = *(v0 + 3008) + ((*(v75 + 80) + 32) & ~*(v75 + 80));
                      v78 = (v76 + 8);
                      v168 = (v76 + 48);
                      v172 = *(v75 + 72);
                      v165 = (v76 + 32);

                      v79 = 0.0;
                      do
                      {
                        v84 = *(v0 + 2352);
                        v85 = *(v0 + 2264);
                        v86 = *(v0 + 2088);
                        v87 = *(v0 + 2072);
                        v88 = *(v0 + 2056);
                        v89 = *(v0 + 2048);
                        sub_1001B87F8(v77, v85, type metadata accessor for InternalServicePrediction);
                        PrivateServicePrediction.predictedStartTime.getter();
                        PrivateServicePrediction.predictedDuration.getter();
                        sub_1001B8860(v85, type metadata accessor for InternalServicePrediction);
                        DateInterval.init(start:duration:)();
                        DateInterval.intersection(with:)();
                        v90 = *v78;
                        (*v78)(v87, v88);
                        if ((*v168)(v89, 1, v88) == 1)
                        {
                          sub_1000157F0(*(v0 + 2048), &qword_1002D71C0, &qword_10024B118);
                        }

                        else
                        {
                          v80 = *(v0 + 2080);
                          v81 = *(v0 + 2056);
                          (*v165)(v80, *(v0 + 2048), v81);
                          DateInterval.duration.getter();
                          v83 = v82;
                          v90(v80, v81);
                          v79 = v79 + v83;
                        }

                        v77 += v172;
                        --v74;
                      }

                      while (v74);
                      v91 = *(v0 + 3008);
                    }

                    else
                    {
                      v79 = 0.0;
                    }

                    v92 = *(v0 + 2336);
                    v93 = *(v0 + 2320);
                    v94 = *(v0 + 2088);
                    v95 = *(v0 + 2064);
                    v96 = *(v0 + 2056);
                    v97 = *(v0 + 2032);
                    v98.n128_f64[0] = (v154)(v73);
                    if (v98.n128_f64[0] >= v79)
                    {
                      v98.n128_f64[0] = v79;
                    }

                    (*(*v97 + 584))(v98);
                    (*(v95 + 8))(v94, v96);
                    v161(v92, v93);
                    goto LABEL_33;
                  }

LABEL_44:
                  __break(1u);
                  return;
                }

LABEL_43:
                __break(1u);
                goto LABEL_44;
              }

LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_33:
  v99 = *(v0 + 2504);
  v173 = *(v0 + 3008);

  sub_1000157F0(v99, &qword_1002D7178, &unk_10024B0C0);
  sub_100164B98((v0 + 1552));

  sub_100164B98((v0 + 1472));
  v100 = *(v0 + 2640);
  v101 = *(v0 + 2632);
  v102 = *(v0 + 2624);
  v103 = *(v0 + 2616);
  v104 = *(v0 + 2608);
  v105 = *(v0 + 2600);
  v106 = *(v0 + 2592);
  v107 = *(v0 + 2584);
  v108 = *(v0 + 2576);
  v109 = *(v0 + 2568);
  v111 = *(v0 + 2560);
  v112 = *(v0 + 2552);
  v113 = *(v0 + 2544);
  v114 = *(v0 + 2536);
  v115 = *(v0 + 2528);
  v116 = *(v0 + 2504);
  v117 = *(v0 + 2496);
  v118 = *(v0 + 2488);
  v119 = *(v0 + 2480);
  v120 = *(v0 + 2472);
  v121 = *(v0 + 2464);
  v122 = *(v0 + 2456);
  v123 = *(v0 + 2448);
  v124 = *(v0 + 2440);
  v125 = *(v0 + 2432);
  v126 = *(v0 + 2424);
  v127 = *(v0 + 2416);
  v128 = *(v0 + 2408);
  v129 = *(v0 + 2400);
  v130 = *(v0 + 2392);
  v131 = *(v0 + 2384);
  v132 = *(v0 + 2360);
  v133 = *(v0 + 2352);
  v134 = *(v0 + 2344);
  v135 = *(v0 + 2336);
  v136 = *(v0 + 2312);
  v137 = *(v0 + 2304);
  v138 = *(v0 + 2296);
  v139 = *(v0 + 2288);
  v140 = *(v0 + 2280);
  v141 = *(v0 + 2272);
  v142 = *(v0 + 2264);
  v143 = *(v0 + 2240);
  v144 = *(v0 + 2232);
  v145 = *(v0 + 2224);
  v146 = *(v0 + 2216);
  v147 = *(v0 + 2208);
  v149 = *(v0 + 2184);
  v151 = *(v0 + 2176);
  v153 = *(v0 + 2152);
  v155 = *(v0 + 2144);
  v157 = *(v0 + 2136);
  v159 = *(v0 + 2128);
  v160 = *(v0 + 2104);
  v162 = *(v0 + 2088);
  v163 = *(v0 + 2080);
  v166 = *(v0 + 2072);
  v169 = *(v0 + 2048);

  v110 = *(v0 + 8);

  v110(v173);
}

uint64_t sub_1001B0D6C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 3096);
  v4 = *(*v0 + 3048);
  v5 = *(*v0 + 3040);
  v6 = *(*v0 + 3204);
  v7 = *(*v0 + 3200);
  v8 = *(*v0 + 2136);
  v9 = *v0;

  v10 = *(v8 + v7);
  v11 = *(v8 + v6);
  v19 = (v5 + *v5);
  v12 = v5[1];
  v13 = swift_task_alloc();
  *(v2 + 3104) = v13;
  *v13 = v9;
  v13[1] = sub_1001B0F74;
  v14 = *(v2 + 3048);
  v15 = *(v1 + 2032);
  v16.n128_u64[0] = v10;
  v17.n128_u64[0] = v11;

  return v19(v16, v17);
}

uint64_t sub_1001B0F74(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 3104);
  v6 = *(*v2 + 3048);
  v7 = *(*v2 + 3040);
  v16 = *v2;
  v4[389] = a1;
  v4[390] = a2;

  v15 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v4[391] = v9;
  *v9 = v16;
  v9[1] = sub_1001B1150;
  v10.n128_u64[0] = v4[386];
  v11.n128_u64[0] = v4[385];
  v12 = v4[381];
  v13 = v3[254];

  return v15(v11, v10);
}

uint64_t sub_1001B1150(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 3128);
  v5 = *(*v2 + 2032);
  v7 = *v2;
  *(v3 + 3136) = a1;
  *(v3 + 3144) = a2;

  return _swift_task_switch(sub_1001B126C, v5, 0);
}

void sub_1001B126C()
{
  v1 = *(v0 + 3144);
  v2 = *(v0 + 3136);
  v3 = *(v0 + 3120);
  v4 = *(v0 + 3112);
  v5 = *(v0 + 3072);
  v6 = *(v0 + 2128);
  v7 = *(v0 + 2104);
  sub_1001B88C0(*(v0 + 2136), v6, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
  sub_10001A718(v0 + 1752, v0 + 1792, &qword_1002D71D0, &qword_10024AE20);
  sub_1001BCEFC(v6, v0 + 1792, v4, v3, v2, v1, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 3072);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1001B77F0(0, v9[2] + 1, 1, *(v0 + 3072), &qword_1002D79B8, &qword_10024BA28, type metadata accessor for InternalUpcomingFlightPrediction);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1001B77F0(v10 > 1, v11 + 1, 1, v9, &qword_1002D79B8, &qword_10024BA28, type metadata accessor for InternalUpcomingFlightPrediction);
  }

  v12 = *(v0 + 3032);
  v13 = *(v0 + 2104);
  v14 = *(v0 + 2096);
  v15 = *(v0 + 3064) + 1;
  sub_1000157F0(v0 + 1752, &qword_1002D71D0, &qword_10024AE20);
  v9[2] = v11 + 1;
  sub_1001B88C0(v13, v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11, type metadata accessor for InternalUpcomingFlightPrediction);
  if (v15 == v12)
  {
    v16 = *(v0 + 2696);

    *(v0 + 3152) = v9;
    v18 = (*(**(v0 + 2032) + 384))(v17);
    *(v0 + 3160) = v18;
    if (v18)
    {
      v20 = v19;
      ObjectType = swift_getObjectType();
      v22 = *(v20 + 16);
      v180 = (v22 + *v22);
      v23 = v22[1];
      v24 = swift_task_alloc();
      *(v0 + 3168) = v24;
      *v24 = v0;
      v24[1] = sub_1001B225C;

      (v180)(v9, ObjectType, v20);
      return;
    }

    if (*(v0 + 3219) != 1)
    {
      goto LABEL_37;
    }

    v38 = *(v0 + 2352);
    v39 = *(v0 + 2336);
    v40 = *(v0 + 2328);
    v41 = *(v0 + 2320);
    v42 = *(v0 + 2088);
    v43 = *(v0 + 2032);
    v44 = Date.init()();
    v45 = (*(*v43 + 576))(v44);
    v46 = (*v43 + 416);
    v47 = *v46;
    v48 = v45 / (*v46)();
    v49 = (*(v40 + 16))(v38, v39, v41);
    (v47)(v49);
    v50 = DateInterval.init(start:duration:)();
    v51 = (*v43 + 552);
    v52 = *v51;
    (*v51)(v50);
    v53 = (*(*v43 + 504))();
    j_j___s10Foundation4DateVACycfC();
    sub_1001BDAF8(v53, v38);

    v54 = *(v40 + 8);
    v55 = v54(v38, v41);
    LOBYTE(v38) = (*(*v43 + 528))(v55);
    v177 = v52;
    v52();
    v56 = *(v0 + 2352);
    j_j___s10Foundation4DateVACycfC();
    if (v38)
    {
      sub_1001BD808(v56);
    }

    else
    {
      sub_1001BD980(v56);
    }

    v57 = *(v0 + 2352);
    v58 = *(v0 + 2320);
    v59 = *(v0 + 2032);

    v60 = v54(v57, v58);
    v61 = (v52)(v60);
    swift_beginAccess();
    v62 = *(v61 + 24);

    v64 = round((v48 - v62) / (v47)(v63) * 100.0);
    if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v64 > -9.22337204e18)
    {
      if (v64 < 9.22337204e18)
      {
        v65 = *(v0 + 2032);
        v52();
        v66 = sub_1001BDD78();

        (v177)(v67);
        v174 = sub_1001BDE54();

        (v177)(v68);
        v168 = sub_1001BDF30();

        (v177)(v69);
        v166 = sub_1001BE00C();

        (v177)(v70);
        v71 = sub_1001BE0CC();

        v73 = round(v48 * 100.0);
        if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v73 > -9.22337204e18)
          {
            if (v73 < 9.22337204e18)
            {
              v74 = *(v0 + 2032);
              v75 = (v47)(v72);
              if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v75 > -9.22337204e18)
                {
                  v162 = v71;
                  v164 = v47;
                  v171 = v54;
                  if (v75 < 9.22337204e18)
                  {
                    v160 = *(v0 + 3008);
                    v76 = *(v0 + 2352);
                    v158 = *(v0 + 2320);
                    v77 = *(v0 + 2032);
                    v78 = v75;
                    v79 = v77[27];
                    v80 = v77[28];
                    sub_100014E1C(v77 + 24, v79);
                    *(v0 + 1856) = &_s39MapsSuggestionsPredictedPercentageMatchVN;
                    *(v0 + 1864) = &off_1002B7100;
                    v81 = swift_allocObject();
                    *(v0 + 1832) = v81;
                    v81[2] = v66;
                    v81[3] = v174;
                    v81[4] = v168;
                    v81[5] = v166;
                    v81[6] = v162;
                    v81[7] = v73;
                    v81[8] = v64;
                    v81[9] = v78;
                    (*(v80 + 8))(0xD000000000000040, 0x800000010025CC10, v0 + 1832, v79, v80);
                    v82 = sub_100164B98((v0 + 1832));
                    (v177)(v82);
                    j_j___s10Foundation4DateVACycfC();
                    sub_1001BE18C(v76);

                    v83 = v54(v76, v158);
                    v84 = *(v160 + 16);
                    if (v84)
                    {
                      v85 = *(v0 + 2256);
                      v86 = *(v0 + 2064);
                      v87 = *(v0 + 3008) + ((*(v85 + 80) + 32) & ~*(v85 + 80));
                      v88 = (v86 + 8);
                      v178 = (v86 + 48);
                      v182 = *(v85 + 72);
                      v175 = (v86 + 32);

                      v89 = 0.0;
                      do
                      {
                        v94 = *(v0 + 2352);
                        v95 = *(v0 + 2264);
                        v96 = *(v0 + 2088);
                        v97 = *(v0 + 2072);
                        v98 = *(v0 + 2056);
                        v99 = *(v0 + 2048);
                        sub_1001B87F8(v87, v95, type metadata accessor for InternalServicePrediction);
                        PrivateServicePrediction.predictedStartTime.getter();
                        PrivateServicePrediction.predictedDuration.getter();
                        sub_1001B8860(v95, type metadata accessor for InternalServicePrediction);
                        DateInterval.init(start:duration:)();
                        DateInterval.intersection(with:)();
                        v100 = *v88;
                        (*v88)(v97, v98);
                        if ((*v178)(v99, 1, v98) == 1)
                        {
                          sub_1000157F0(*(v0 + 2048), &qword_1002D71C0, &qword_10024B118);
                        }

                        else
                        {
                          v90 = *(v0 + 2080);
                          v91 = *(v0 + 2056);
                          (*v175)(v90, *(v0 + 2048), v91);
                          DateInterval.duration.getter();
                          v93 = v92;
                          v100(v90, v91);
                          v89 = v89 + v93;
                        }

                        v87 += v182;
                        --v84;
                      }

                      while (v84);
                      v101 = *(v0 + 3008);
                    }

                    else
                    {
                      v89 = 0.0;
                    }

                    v102 = *(v0 + 2336);
                    v103 = *(v0 + 2320);
                    v104 = *(v0 + 2088);
                    v105 = *(v0 + 2064);
                    v106 = *(v0 + 2056);
                    v107 = *(v0 + 2032);
                    v108.n128_f64[0] = (v164)(v83);
                    if (v108.n128_f64[0] >= v89)
                    {
                      v108.n128_f64[0] = v89;
                    }

                    (*(*v107 + 584))(v108);
                    (*(v105 + 8))(v104, v106);
                    v171(v102, v103);
LABEL_37:
                    v109 = *(v0 + 2504);
                    v183 = *(v0 + 3008);

                    sub_1000157F0(v109, &qword_1002D7178, &unk_10024B0C0);
                    sub_100164B98((v0 + 1552));

                    sub_100164B98((v0 + 1472));
                    v110 = *(v0 + 2640);
                    v111 = *(v0 + 2632);
                    v112 = *(v0 + 2624);
                    v113 = *(v0 + 2616);
                    v114 = *(v0 + 2608);
                    v115 = *(v0 + 2600);
                    v116 = *(v0 + 2592);
                    v117 = *(v0 + 2584);
                    v118 = *(v0 + 2576);
                    v119 = *(v0 + 2568);
                    v121 = *(v0 + 2560);
                    v122 = *(v0 + 2552);
                    v123 = *(v0 + 2544);
                    v124 = *(v0 + 2536);
                    v125 = *(v0 + 2528);
                    v126 = *(v0 + 2504);
                    v127 = *(v0 + 2496);
                    v128 = *(v0 + 2488);
                    v129 = *(v0 + 2480);
                    v130 = *(v0 + 2472);
                    v131 = *(v0 + 2464);
                    v132 = *(v0 + 2456);
                    v133 = *(v0 + 2448);
                    v134 = *(v0 + 2440);
                    v135 = *(v0 + 2432);
                    v136 = *(v0 + 2424);
                    v137 = *(v0 + 2416);
                    v138 = *(v0 + 2408);
                    v139 = *(v0 + 2400);
                    v140 = *(v0 + 2392);
                    v141 = *(v0 + 2384);
                    v142 = *(v0 + 2360);
                    v143 = *(v0 + 2352);
                    v144 = *(v0 + 2344);
                    v145 = *(v0 + 2336);
                    v146 = *(v0 + 2312);
                    v147 = *(v0 + 2304);
                    v148 = *(v0 + 2296);
                    v149 = *(v0 + 2288);
                    v150 = *(v0 + 2280);
                    v151 = *(v0 + 2272);
                    v152 = *(v0 + 2264);
                    v153 = *(v0 + 2240);
                    v154 = *(v0 + 2232);
                    v155 = *(v0 + 2224);
                    v156 = *(v0 + 2216);
                    v157 = *(v0 + 2208);
                    v159 = *(v0 + 2184);
                    v161 = *(v0 + 2176);
                    v163 = *(v0 + 2152);
                    v165 = *(v0 + 2144);
                    v167 = *(v0 + 2136);
                    v169 = *(v0 + 2128);
                    v170 = *(v0 + 2104);
                    v172 = *(v0 + 2088);
                    v173 = *(v0 + 2080);
                    v176 = *(v0 + 2072);
                    v179 = *(v0 + 2048);

                    v120 = *(v0 + 8);

                    v120(v183);
                    return;
                  }

LABEL_48:
                  __break(1u);
                  return;
                }

LABEL_47:
                __break(1u);
                goto LABEL_48;
              }

LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_42;
  }

  v25 = *(v0 + 3064) + 1;
  *(v0 + 3072) = v9;
  *(v0 + 3064) = v25;
  v26 = *(v0 + 3196);
  v27 = *(v0 + 3192);
  v28 = *(v0 + 2136);
  sub_1001B87F8(*(v0 + 2696) + ((*(v0 + 3208) + 32) & ~*(v0 + 3208)) + *(v0 + 3056) * v25, v28, type metadata accessor for MapsSuggestionController.UpcomingFlightPrediction);
  v29 = *(v0 + 1576);
  v30 = *(v0 + 1584);
  sub_100014E1C((v0 + 1552), v29);
  v31 = *(v28 + v27);
  *(v0 + 3080) = v31;
  v32 = *(v28 + v26);
  *(v0 + 3088) = v32;
  v33 = *(v30 + 8);
  v181 = (v33 + *v33);
  v34 = v33[1];
  v35 = swift_task_alloc();
  *(v0 + 3096) = v35;
  *v35 = v0;
  v35[1] = sub_1001B0D6C;
  v36.n128_u64[0] = v31;
  v37.n128_u64[0] = v32;

  v181(v0 + 1752, v29, v30, v36, v37);
}

uint64_t sub_1001B225C()
{
  v1 = *(*v0 + 3168);
  v2 = *(*v0 + 3152);
  v3 = *(*v0 + 2032);
  v5 = *v0;

  return _swift_task_switch(sub_1001B2388, v3, 0);
}

void sub_1001B2388()
{
  v1 = *(v0 + 3160);
  swift_unknownObjectRelease();
  if (*(v0 + 3219) == 1)
  {
    v2 = *(v0 + 2352);
    v3 = *(v0 + 2336);
    v4 = *(v0 + 2328);
    v5 = *(v0 + 2320);
    v6 = *(v0 + 2088);
    v7 = *(v0 + 2032);
    v8 = Date.init()();
    v9 = (*(*v7 + 576))(v8);
    v10 = (*v7 + 416);
    v11 = *v10;
    v12 = v9 / (*v10)();
    v13 = (*(v4 + 16))(v2, v3, v5);
    v139 = v11;
    (v11)(v13);
    v14 = DateInterval.init(start:duration:)();
    v15 = (*v7 + 552);
    v16 = *v15;
    (*v15)(v14);
    v17 = (*(*v7 + 504))();
    j_j___s10Foundation4DateVACycfC();
    sub_1001BDAF8(v17, v2);

    v18 = v5;
    v19 = *(v4 + 8);
    v20 = v19(v2, v18);
    LOBYTE(v2) = (*(*v7 + 528))(v20);
    v21 = v16;
    v16();
    v22 = *(v0 + 2352);
    j_j___s10Foundation4DateVACycfC();
    if (v2)
    {
      sub_1001BD808(v22);
    }

    else
    {
      sub_1001BD980(v22);
    }

    v23 = *(v0 + 2352);
    v24 = *(v0 + 2320);
    v25 = *(v0 + 2032);

    v26 = v19;
    v27 = v19(v23, v24);
    v28 = v21;
    v29 = (v21)(v27);
    swift_beginAccess();
    v30 = *(v29 + 24);

    v32 = round((v12 - v30) / (v139)(v31) * 100.0);
    if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -9.22337204e18)
    {
      if (v32 < 9.22337204e18)
      {
        v33 = *(v0 + 2032);
        v21();
        v34 = sub_1001BDD78();

        (v21)(v35);
        v36 = sub_1001BDE54();

        (v28)(v37);
        v149 = sub_1001BDF30();

        (v28)(v38);
        v146 = sub_1001BE00C();

        (v28)(v39);
        v40 = sub_1001BE0CC();

        v42 = round(v12 * 100.0);
        if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v42 > -9.22337204e18)
          {
            if (v42 < 9.22337204e18)
            {
              v43 = *(v0 + 2032);
              v44 = (v139)(v41);
              if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v44 > -9.22337204e18)
                {
                  if (v44 < 9.22337204e18)
                  {
                    v143 = *(v0 + 3008);
                    v128 = v40;
                    v45 = v34;
                    v46 = *(v0 + 2352);
                    v135 = *(v0 + 2320);
                    v137 = v26;
                    v47 = v36;
                    v48 = *(v0 + 2032);
                    v133 = v28;
                    v49 = v44;
                    v50 = v48[27];
                    v51 = v48[28];
                    sub_100014E1C(v48 + 24, v50);
                    *(v0 + 1856) = &_s39MapsSuggestionsPredictedPercentageMatchVN;
                    *(v0 + 1864) = &off_1002B7100;
                    v52 = swift_allocObject();
                    *(v0 + 1832) = v52;
                    v52[2] = v45;
                    v52[3] = v47;
                    v52[4] = v149;
                    v52[5] = v146;
                    v52[6] = v128;
                    v52[7] = v42;
                    v52[8] = v32;
                    v52[9] = v49;
                    (*(v51 + 8))(0xD000000000000040, 0x800000010025CC10, v0 + 1832, v50, v51);
                    v53 = sub_100164B98((v0 + 1832));
                    (v133)(v53);
                    j_j___s10Foundation4DateVACycfC();
                    sub_1001BE18C(v46);

                    v54 = (v26)(v46, v135);
                    v55 = *(v143 + 16);
                    if (v55)
                    {
                      v56 = *(v0 + 2256);
                      v57 = *(v0 + 2064);
                      v58 = *(v0 + 3008) + ((*(v56 + 80) + 32) & ~*(v56 + 80));
                      v59 = (v57 + 8);
                      v147 = (v57 + 48);
                      v150 = *(v56 + 72);
                      v144 = (v57 + 32);

                      v60 = 0.0;
                      do
                      {
                        v65 = *(v0 + 2352);
                        v66 = *(v0 + 2264);
                        v67 = *(v0 + 2088);
                        v68 = *(v0 + 2072);
                        v69 = *(v0 + 2056);
                        v70 = *(v0 + 2048);
                        sub_1001B87F8(v58, v66, type metadata accessor for InternalServicePrediction);
                        PrivateServicePrediction.predictedStartTime.getter();
                        PrivateServicePrediction.predictedDuration.getter();
                        sub_1001B8860(v66, type metadata accessor for InternalServicePrediction);
                        DateInterval.init(start:duration:)();
                        DateInterval.intersection(with:)();
                        v71 = *v59;
                        (*v59)(v68, v69);
                        if ((*v147)(v70, 1, v69) == 1)
                        {
                          sub_1000157F0(*(v0 + 2048), &qword_1002D71C0, &qword_10024B118);
                        }

                        else
                        {
                          v61 = *(v0 + 2080);
                          v62 = *(v0 + 2056);
                          (*v144)(v61, *(v0 + 2048), v62);
                          DateInterval.duration.getter();
                          v64 = v63;
                          v71(v61, v62);
                          v60 = v60 + v64;
                        }

                        v58 += v150;
                        --v55;
                      }

                      while (v55);
                      v72 = *(v0 + 3008);
                    }

                    else
                    {
                      v60 = 0.0;
                    }

                    v73 = *(v0 + 2336);
                    v74 = *(v0 + 2320);
                    v75 = *(v0 + 2088);
                    v76 = *(v0 + 2064);
                    v77 = *(v0 + 2056);
                    v78 = *(v0 + 2032);
                    v79.n128_f64[0] = (v139)(v54);
                    if (v79.n128_f64[0] >= v60)
                    {
                      v79.n128_f64[0] = v60;
                    }

                    (*(*v78 + 584))(v79);
                    (*(v76 + 8))(v75, v77);
                    v137(v73, v74);
                    goto LABEL_25;
                  }

LABEL_36:
                  __break(1u);
                  return;
                }

LABEL_35:
                __break(1u);
                goto LABEL_36;
              }

LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_25:
  v80 = *(v0 + 2504);
  v151 = *(v0 + 3008);

  sub_1000157F0(v80, &qword_1002D7178, &unk_10024B0C0);
  sub_100164B98((v0 + 1552));

  sub_100164B98((v0 + 1472));
  v81 = *(v0 + 2640);
  v82 = *(v0 + 2632);
  v83 = *(v0 + 2624);
  v84 = *(v0 + 2616);
  v85 = *(v0 + 2608);
  v86 = *(v0 + 2600);
  v87 = *(v0 + 2592);
  v88 = *(v0 + 2584);
  v89 = *(v0 + 2576);
  v90 = *(v0 + 2568);
  v92 = *(v0 + 2560);
  v93 = *(v0 + 2552);
  v94 = *(v0 + 2544);
  v95 = *(v0 + 2536);
  v96 = *(v0 + 2528);
  v97 = *(v0 + 2504);
  v98 = *(v0 + 2496);
  v99 = *(v0 + 2488);
  v100 = *(v0 + 2480);
  v101 = *(v0 + 2472);
  v102 = *(v0 + 2464);
  v103 = *(v0 + 2456);
  v104 = *(v0 + 2448);
  v105 = *(v0 + 2440);
  v106 = *(v0 + 2432);
  v107 = *(v0 + 2424);
  v108 = *(v0 + 2416);
  v109 = *(v0 + 2408);
  v110 = *(v0 + 2400);
  v111 = *(v0 + 2392);
  v112 = *(v0 + 2384);
  v113 = *(v0 + 2360);
  v114 = *(v0 + 2352);
  v115 = *(v0 + 2344);
  v116 = *(v0 + 2336);
  v117 = *(v0 + 2312);
  v118 = *(v0 + 2304);
  v119 = *(v0 + 2296);
  v120 = *(v0 + 2288);
  v121 = *(v0 + 2280);
  v122 = *(v0 + 2272);
  v123 = *(v0 + 2264);
  v124 = *(v0 + 2240);
  v125 = *(v0 + 2232);
  v126 = *(v0 + 2224);
  v127 = *(v0 + 2216);
  v129 = *(v0 + 2208);
  v130 = *(v0 + 2184);
  v131 = *(v0 + 2176);
  v132 = *(v0 + 2152);
  v134 = *(v0 + 2144);
  v136 = *(v0 + 2136);
  v138 = *(v0 + 2128);
  v140 = *(v0 + 2104);
  v141 = *(v0 + 2088);
  v142 = *(v0 + 2080);
  v145 = *(v0 + 2072);
  v148 = *(v0 + 2048);

  v91 = *(v0 + 8);

  v91(v151);
}