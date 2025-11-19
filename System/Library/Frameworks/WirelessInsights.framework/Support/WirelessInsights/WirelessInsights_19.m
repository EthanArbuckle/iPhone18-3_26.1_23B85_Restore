uint64_t _s27ClientSignalEnvironmentTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s27ClientSignalEnvironmentTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata accessor for CLAuthorizationStatus()
{
  if (!qword_1002D6720)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1002D6720);
    }
  }
}

unint64_t sub_1001845B0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100189F9C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001845DC()
{
  v1 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentMotionState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100184620(char a1)
{
  v3 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentMotionState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100184670@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentPedometerState;
  swift_beginAccess();
  return sub_10001A718(v1 + v3, a1, &qword_1002D67B0, &qword_10024A640);
}

uint64_t sub_1001846D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentPedometerState;
  swift_beginAccess();
  sub_10018A03C(a1, v1 + v3, &qword_1002D67B0, &qword_10024A640);
  return swift_endAccess();
}

uint64_t sub_100184748(char a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B65F8, v9);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v21 = a1;
    sub_100164A3C(&qword_1002D69E8, &qword_10024A7C8);
    v14 = String.init<A>(describing:)();
    v20 = v5;
    v16 = sub_10017A8A8(v14, v15, &v22);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "Motion Reader. Setting most recent motion state to %s", v12, 0xCu);
    sub_100164B98(v13);

    (*(v6 + 8))(v9, v20);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v17 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentMotionState;
  result = swift_beginAccess();
  *(v2 + v17) = a1;
  return result;
}

uint64_t sub_100184984(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v30 = sub_100164A3C(&qword_1002D67B0, &qword_10024A640);
  v5 = *(*(v30 - 8) + 64);
  v6 = __chkstk_darwin(v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B65F8, v15);
  sub_10001A718(a1, v10, &qword_1002D67B0, &qword_10024A640);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v11;
    v20 = v19;
    v31[0] = v19;
    *v18 = 136315138;
    v28 = v12;
    sub_10001A718(v10, v8, &qword_1002D67B0, &qword_10024A640);
    v21 = String.init<A>(describing:)();
    v30 = v2;
    v22 = a1;
    v24 = v23;
    sub_1000157F0(v10, &qword_1002D67B0, &qword_10024A640);
    v25 = sub_10017A8A8(v21, v24, v31);
    a1 = v22;
    v2 = v30;

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "Motion Reader. Setting most recent pedometer state to %s", v18, 0xCu);
    sub_100164B98(v20);

    (*(v28 + 8))(v15, v29);
  }

  else
  {

    sub_1000157F0(v10, &qword_1002D67B0, &qword_10024A640);
    (*(v12 + 8))(v15, v11);
  }

  v26 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentPedometerState;
  swift_beginAccess();
  sub_10018A598(a1, v2 + v26);
  return swift_endAccess();
}

uint64_t (*sub_100184CBC())(void *a1)
{
  v1 = v0;
  v2 = *v0;
  v3 = (v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___motionActivityUpdateHandler);
  v4 = *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___motionActivityUpdateHandler);
  v5 = *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___motionActivityUpdateHandler + 8);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = v2;
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = v7;
    v6 = sub_10018A848;
    *v3 = sub_10018A848;
    v3[1] = v8;

    sub_10002193C(0);
  }

  sub_10002194C(v4);
  return v6;
}

uint64_t sub_100184D98(void *a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v5 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v48 - v7;
  v9 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v13;
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = type metadata accessor for Logger();
  v53 = *(v16 - 8);
  v17 = *(v53 + 64);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3;
  sub_100003E50(&off_1002B65F8, v19);
  v21 = a1;
  v22 = a1;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  v25 = os_log_type_enabled(v23, v24);
  v51 = v22;
  if (!v25)
  {

    (*(v53 + 8))(v19, v16);
    if (v21)
    {
      goto LABEL_3;
    }

LABEL_5:
    v35 = 1;
    goto LABEL_6;
  }

  v26 = swift_slowAlloc();
  v49 = v10;
  v27 = v26;
  v28 = swift_slowAlloc();
  v50 = v15;
  v48 = v28;
  v56 = v21;
  v57 = v28;
  *v27 = 136315138;
  v29 = v22;
  sub_100164A3C(&qword_1002D69F8, &qword_10024A7F8);
  v30 = String.init<A>(describing:)();
  v32 = v16;
  v33 = sub_10017A8A8(v30, v31, &v57);

  *(v27 + 4) = v33;
  _os_log_impl(&_mh_execute_header, v23, v24, "Motion Reader. Received activity data %s...", v27, 0xCu);
  sub_100164B98(v48);
  v15 = v50;

  v10 = v49;

  (*(v53 + 8))(v19, v32);
  if (!v21)
  {
    goto LABEL_5;
  }

LABEL_3:
  v34 = [v51 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = 0;
LABEL_6:
  v36 = type metadata accessor for Date();
  (*(*(v36 - 8) + 56))(v15, v35, 1, v36);
  v37 = v20;
  v38 = sub_10018525C(v21);
  v39 = type metadata accessor for TaskPriority();
  v40 = v8;
  (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
  v41 = v54;
  sub_10001A718(v15, v54, &unk_1002D7BD0, &unk_10024A800);
  v42 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v43 = (v42 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v42 + v52 + 23) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  sub_100189FCC(v41, v45 + v42);
  v46 = v45 + v43;
  *v46 = v55;
  *(v46 + 8) = v38;
  *(v45 + v44) = v37;

  sub_100176B80(0, 0, v40, &unk_10024A7F0, v45);

  return sub_1000157F0(v15, &unk_1002D7BD0, &unk_10024A800);
}

uint64_t sub_10018525C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  if (!a1)
  {
    sub_100003E50(&off_1002B65F8, &v18 - v8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Motion Reader. Received activity nil", v14, 2u);
    }

    (*(v3 + 8))(v9, v2);
    return 5;
  }

  v10 = a1;
  if ([v10 stationary])
  {

    return 0;
  }

  if ([v10 automotive])
  {

    return 1;
  }

  if ([v10 walking])
  {

    return 2;
  }

  if ([v10 running])
  {

    return 3;
  }

  if (![v10 cycling])
  {
    sub_100003E50(&off_1002B65F8, v7);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Motion Reader. Received activity NOT nil, with unclear activity", v17, 2u);
    }

    (*(v3 + 8))(v7, v2);
    return 5;
  }

  return 4;
}

uint64_t sub_100185510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = a7;
  *(v7 + 240) = a6;
  *(v7 + 40) = a4;
  v8 = type metadata accessor for Logger();
  *(v7 + 64) = v8;
  v9 = *(v8 - 8);
  *(v7 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  v11 = *(*(sub_100164A3C(&unk_1002D7BD0, &unk_10024A800) - 8) + 64) + 15;
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  v12 = type metadata accessor for Date();
  *(v7 + 120) = v12;
  v13 = *(v12 - 8);
  *(v7 + 128) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_1001856C0, 0, 0);
}

uint64_t sub_1001856C0()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_10001A718(v0[5], v3, &unk_1002D7BD0, &unk_10024A800);
  v4 = *(v2 + 48);
  v0[22] = v4;
  v0[23] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[12];
    v6 = v0[7];
    sub_1000157F0(v0[14], &unk_1002D7BD0, &unk_10024A800);
    sub_100003E50(&off_1002B65F8, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Motion Reader. Received activity update with data start date nil or all data is nil. Setting most recent state to nil...", v9, 2u);
    }

    v10 = v0[12];
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[6];

    (*(v12 + 8))(v10, v11);
    v14 = sub_100186294;
    v15 = v13;
  }

  else
  {
    v16 = v0[21];
    v17 = v0[15];
    v18 = v0[16];
    v19 = v0[14];
    v20 = v0[6];
    v21 = *(v18 + 32);
    v0[24] = v21;
    v0[25] = (v18 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v21(v16, v19, v17);
    v14 = sub_100185890;
    v15 = v20;
  }

  return _swift_task_switch(v14, v15, 0);
}

uint64_t sub_100185890()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt;
  swift_beginAccess();
  sub_10001A718(v2 + v3, v1, &unk_1002D7BD0, &unk_10024A800);

  return _swift_task_switch(sub_100185938, 0, 0);
}

uint64_t sub_100185938()
{
  v73 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  if ((*(v0 + 176))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 168);
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    v7 = *(v0 + 80);
    v8 = *(v0 + 56);
    sub_1000157F0(v3, &unk_1002D7BD0, &unk_10024A800);
    sub_100003E50(&off_1002B65F8, v7);
    (*(v6 + 16))(v5, v4, v2);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);
    v14 = *(v0 + 120);
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);
    if (v11)
    {
      v70 = *(v0 + 64);
      v18 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v72 = v66;
      *v18 = 136315138;
      sub_10018A0BC();
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v15;
      v21 = v20;
      v65 = v10;
      v24 = *(v13 + 8);
      v22 = v13 + 8;
      v23 = v24;
      v24(v12, v14);
      v25 = sub_10017A8A8(v19, v21, &v72);

      *(v18 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v9, v65, "Motion Reader. Received pedometer update with data start date %s, but the local timestamp of update start is nil. Setting most recent state to nil...", v18, 0xCu);
      sub_100164B98(v66);

      (*(v16 + 8))(v68, v70);
    }

    else
    {

      v58 = *(v13 + 8);
      v22 = v13 + 8;
      v23 = v58;
      v58(v12, v14);
      (*(v16 + 8))(v15, v17);
    }

    *(v0 + 224) = v22;
    *(v0 + 232) = v23;
    v59 = *(v0 + 48);
    v60 = sub_100186134;
  }

  else
  {
    v26 = *(v0 + 200);
    v27 = *(v0 + 168);
    (*(v0 + 192))(*(v0 + 160), v3, v2);
    Date.distance(to:)();
    if (v28 <= 90.0)
    {
      v59 = *(v0 + 48);
      v60 = sub_100185E44;
    }

    else
    {
      v30 = *(v0 + 160);
      v29 = *(v0 + 168);
      v32 = *(v0 + 144);
      v31 = *(v0 + 152);
      v33 = *(v0 + 120);
      v34 = *(v0 + 128);
      v35 = *(v0 + 56);
      sub_100003E50(&off_1002B65F8, *(v0 + 88));
      v36 = *(v34 + 16);
      v36(v31, v30, v33);
      v36(v32, v29, v33);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 152);
      v71 = *(v0 + 144);
      v42 = *(v0 + 120);
      v41 = *(v0 + 128);
      v43 = *(v0 + 88);
      v44 = *(v0 + 64);
      v45 = *(v0 + 72);
      if (v39)
      {
        log = v37;
        v46 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *v46 = 134218498;
        *(v46 + 4) = 0x4056800000000000;
        *(v46 + 12) = 2080;
        sub_10018A0BC();
        v69 = v43;
        v67 = v44;
        v47 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v38;
        v49 = v48;
        v52 = *(v41 + 8);
        v50 = v41 + 8;
        v51 = v52;
        v52(v40, v42);
        v53 = sub_10017A8A8(v47, v49, &v72);

        *(v46 + 14) = v53;
        *(v46 + 22) = 2080;
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        v52(v71, v42);
        v57 = sub_10017A8A8(v54, v56, &v72);

        *(v46 + 24) = v57;
        _os_log_impl(&_mh_execute_header, log, v63, "Motion Reader. Received outdated activity data (start date more than %fs in past from %s from start date %s. Setting most recent state to nil...", v46, 0x20u);
        swift_arrayDestroy();

        (*(v45 + 8))(v69, v67);
      }

      else
      {

        v61 = *(v41 + 8);
        v50 = v41 + 8;
        v51 = v61;
        v61(v71, v42);
        v61(v40, v42);
        (*(v45 + 8))(v43, v44);
      }

      *(v0 + 208) = v50;
      *(v0 + 216) = v51;
      v59 = *(v0 + 48);
      v60 = sub_100185FBC;
    }
  }

  return _swift_task_switch(v60, v59, 0);
}

uint64_t sub_100185E44()
{
  v1 = *(v0 + 48);
  sub_100184748(*(v0 + 240));

  return _swift_task_switch(sub_100185EB0, 0, 0);
}

uint64_t sub_100185EB0()
{
  v1 = v0[21];
  v2 = v0[15];
  v3 = *(v0[16] + 8);
  v3(v0[20], v2);
  v3(v1, v2);
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  v10 = v0[13];
  v9 = v0[14];
  v12 = v0[11];
  v11 = v0[12];
  v13 = v0[10];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100185FBC()
{
  v1 = *(v0 + 48);
  sub_100184748(5);

  return _swift_task_switch(sub_100186028, 0, 0);
}

uint64_t sub_100186028()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[21];
  v4 = v0[15];
  v1(v0[20], v4);
  v1(v3, v4);
  v6 = v0[20];
  v5 = v0[21];
  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[17];
  v11 = v0[13];
  v10 = v0[14];
  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100186134()
{
  v1 = *(v0 + 48);
  sub_100184748(5);

  return _swift_task_switch(sub_1001861A0, 0, 0);
}

uint64_t sub_1001861A0()
{
  v1 = *(v0 + 224);
  (*(v0 + 232))(*(v0 + 168), *(v0 + 120));
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100186294()
{
  v1 = v0[6];
  sub_100184748(5);
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v8 = v0[13];
  v7 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t (*sub_10018637C())(void *a1, uint64_t a2)
{
  v1 = v0;
  v2 = *v0;
  v3 = (v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___pedometerUpdateHandler);
  v4 = *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___pedometerUpdateHandler);
  v5 = *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___pedometerUpdateHandler + 8);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = v2;
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = v7;
    v6 = sub_10018A608;
    *v3 = sub_10018A608;
    v3[1] = v8;

    sub_10002193C(0);
  }

  sub_10002194C(v4);
  return v6;
}

uint64_t sub_100186458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v110 = a2;
  v111 = a3;
  v6 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v108 = &v93 - v8;
  v9 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v113 = &v93 - v14;
  v15 = _s14PedometerStateVMa(0);
  v16 = *(v15 - 8);
  v104 = v15;
  v105 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v106 = v19;
  v107 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v103 = &v93 - v20;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a4;
  sub_100003E50(&off_1002B65F8, v25);
  v26 = a1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  v29 = os_log_type_enabled(v27, v28);
  v112 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v102 = v13;
    v32 = v31;
    v114 = a1;
    v115 = v31;
    *v30 = 136315138;
    v33 = v26;
    sub_100164A3C(&qword_1002D69F0, &qword_10024A7E0);
    v34 = String.init<A>(describing:)();
    v36 = a1;
    v37 = sub_10017A8A8(v34, v35, &v115);

    *(v30 + 4) = v37;
    a1 = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "Motion Reader. Received pedometer data %s...", v30, 0xCu);
    sub_100164B98(v32);
    v13 = v102;
  }

  (*(v22 + 8))(v25, v21);
  v38 = v113;
  if (!a1)
  {
    v48 = type metadata accessor for Date();
    v49 = *(*(v48 - 8) + 56);
    LODWORD(v112) = 1;
    v49(v38, 1, 1, v48);
    v49(v13, 1, 1, v48);
    v100 = 0;
    v101 = 0;
    v102 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v99 = 1;
    v53 = 1;
    v54 = 1;
    v55 = 1;
    v56 = 1;
    goto LABEL_27;
  }

  v39 = v112;
  v40 = [v112 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = type metadata accessor for Date();
  v42 = *(*(v41 - 8) + 56);
  v43 = 1;
  v42(v38, 0, 1, v41);
  v44 = [v39 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v42(v13, 0, 1, v41);
  v45 = [v39 currentPace];
  if (v45)
  {
    v115 = 0;
    v116 = 1;
    v46 = v45;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    v47 = v115;
    v43 = v116;
  }

  else
  {
    v47 = 0;
  }

  v97 = v47;
  v57 = [v39 currentCadence];
  v98 = v43;
  if (v57)
  {
    v115 = 0;
    v116 = 1;
    v58 = v57;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    v59 = v115;
    v96 = v116;
  }

  else
  {
    v96 = 1;
    v59 = 0;
  }

  v95 = v59;
  v60 = [v39 floorsAscended];
  if (v60)
  {
    v115 = 0;
    v116 = 1;
    v61 = v60;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    v62 = v115;
    v94 = v116;
  }

  else
  {
    v94 = 1;
    v62 = 0;
  }

  v63 = [v39 floorsDescended];
  v64 = v63 == 0;
  if (!v63)
  {
    v67 = 0;
    goto LABEL_18;
  }

  v115 = 0;
  v65 = 1;
  v116 = 1;
  v66 = v63;
  static Double._conditionallyBridgeFromObjectiveC(_:result:)();

  v67 = v115;
  if ((v116 & 1) == 0)
  {
LABEL_18:
    v65 = v64;
  }

  v102 = v67;
  v68 = [v39 numberOfSteps];
  v69 = v68 == 0;
  if (!v68)
  {
    v72 = 0;
    goto LABEL_23;
  }

  v115 = 0;
  v70 = 1;
  v116 = 1;
  v71 = v68;
  static Double._conditionallyBridgeFromObjectiveC(_:result:)();

  v72 = v115;
  if ((v116 & 1) == 0)
  {
LABEL_23:
    v70 = v69;
  }

  v101 = v72;
  v53 = v65;
  v73 = [v112 averageActivePace];
  v99 = v70;
  if (v73)
  {
    v115 = 0;
    v116 = 1;
    v74 = v73;
    static Double._conditionallyBridgeFromObjectiveC(_:result:)();

    v100 = v115;
    LODWORD(v112) = v116;
    v56 = v98;
    v52 = v97;
    v55 = v96;
    v51 = v95;
    v54 = v94;
    v50 = v93;
    v38 = v113;
  }

  else
  {
    v100 = 0;
    v56 = v98;
    v52 = v97;
    v55 = v96;
    v51 = v95;
    v54 = v94;
    v50 = v93;
    v38 = v113;
    LODWORD(v112) = 1;
  }

LABEL_27:
  v75 = v38;
  v76 = v103;
  sub_100189FCC(v75, v103);
  v77 = v104;
  sub_100189FCC(v13, v76 + v104[5]);
  v78 = v76 + v77[6];
  *v78 = v52;
  *(v78 + 8) = v56;
  v79 = v76 + v77[7];
  *v79 = v51;
  *(v79 + 8) = v55;
  v80 = v76 + v77[8];
  *v80 = v50;
  *(v80 + 8) = v54;
  v81 = v76 + v77[9];
  v82 = v101;
  *v81 = v102;
  *(v81 + 8) = v53;
  v83 = v76 + v77[10];
  *v83 = v82;
  *(v83 + 8) = v99;
  v84 = v76 + v77[11];
  *v84 = v100;
  *(v84 + 8) = v112;
  v85 = type metadata accessor for TaskPriority();
  v86 = v108;
  (*(*(v85 - 8) + 56))(v108, 1, 1, v85);
  v87 = v107;
  sub_10018A610(v76, v107);
  v88 = (*(v105 + 80) + 48) & ~*(v105 + 80);
  v89 = (v106 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  v90[2] = 0;
  v90[3] = 0;
  v91 = v111;
  v90[4] = v110;
  v90[5] = v91;
  sub_10018A674(v87, v90 + v88);
  *(v90 + v89) = v109;
  swift_errorRetain();

  sub_100176B80(0, 0, v86, &unk_10024A7D8, v90);

  return sub_10018A7EC(v76);
}

uint64_t sub_100186CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = _s14PedometerStateVMa(0);
  v7[13] = v8;
  v9 = *(v8 - 8);
  v7[14] = v9;
  v10 = *(v9 + 64) + 15;
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v11 = *(*(sub_100164A3C(&qword_1002D67B0, &qword_10024A640) - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v7[24] = v12;
  v13 = *(v12 - 8);
  v7[25] = v13;
  v14 = *(v13 + 64) + 15;
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v15 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v7[31] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v17 = type metadata accessor for Date();
  v7[35] = v17;
  v18 = *(v17 - 8);
  v7[36] = v18;
  v19 = *(v18 + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();

  return _swift_task_switch(sub_100186FA0, 0, 0);
}

uint64_t sub_100186FA0()
{
  v45 = v0;
  if (v0[9])
  {
    v1 = v0[30];
    v2 = v0[12];
    v3 = v0[9];
    swift_errorRetain();
    sub_100003E50(&off_1002B65F8, v1);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[30];
    v8 = v0[24];
    v9 = v0[25];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v44 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v13 = v0[5];
      v12 = v0[6];
      v14 = v0[7];
      v15 = Error.localizedDescription.getter();
      v17 = sub_10017A8A8(v15, v16, &v44);

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v4, v5, "Motion Reader. Received pedometer update with error. %s. Setting most recent state to nil...", v10, 0xCu);
      sub_100164B98(v11);
    }

    (*(v9 + 8))(v7, v8);
    v18 = v0[10];
    (*(v0[14] + 56))(v0[23], 1, 1, v0[13]);
    v19 = sub_100187314;
    goto LABEL_10;
  }

  v20 = v0[35];
  v21 = v0[36];
  v22 = v0[34];
  sub_10001A718(v0[11], v22, &unk_1002D7BD0, &unk_10024A800);
  v23 = *(v21 + 48);
  v0[41] = v23;
  v0[42] = (v21 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v23(v22, 1, v20) != 1)
  {
    v38 = v0[40];
    v39 = v0[35];
    v40 = v0[36];
    v41 = v0[34];
    v18 = v0[10];
    v42 = *(v40 + 32);
    v0[43] = v42;
    v0[44] = (v40 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v42(v38, v41, v39);
    v19 = sub_100187508;
LABEL_10:
    v36 = v19;
    v37 = v18;
    goto LABEL_11;
  }

  v24 = v0[29];
  v25 = v0[12];
  sub_1000157F0(v0[34], &unk_1002D7BD0, &unk_10024A800);
  sub_100003E50(&off_1002B65F8, v24);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Motion Reader. Received pedometer data with start date nil or all data is nil. Setting most recent state to nil...", v28, 2u);
  }

  v29 = v0[29];
  v30 = v0[24];
  v31 = v0[25];
  v32 = v0[23];
  v33 = v0[13];
  v34 = v0[14];
  v35 = v0[10];

  (*(v31 + 8))(v29, v30);
  (*(v34 + 56))(v32, 1, 1, v33);
  v36 = sub_1001885F0;
  v37 = v35;
LABEL_11:

  return _swift_task_switch(v36, v37, 0);
}

uint64_t sub_100187314()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 80);
  sub_100184984(v1);
  sub_1000157F0(v1, &qword_1002D67B0, &qword_10024A640);

  return _swift_task_switch(sub_10018739C, 0, 0);
}

uint64_t sub_10018739C()
{
  v1 = v0[9];

  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[37];
  v5 = v0[38];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[32];
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[28];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[22];
  v18 = v0[21];
  v19 = v0[20];
  v20 = v0[19];
  v21 = v0[18];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[15];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100187508()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 80);
  v3 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt;
  swift_beginAccess();
  sub_10001A718(v2 + v3, v1, &unk_1002D7BD0, &unk_10024A800);

  return _swift_task_switch(sub_1001875B0, 0, 0);
}

uint64_t sub_1001875B0()
{
  v144 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  if ((*(v0 + 328))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 208);
    v6 = *(v0 + 120);
    v5 = *(v0 + 128);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    sub_1000157F0(v3, &unk_1002D7BD0, &unk_10024A800);
    sub_100003E50(&off_1002B65F8, v4);
    sub_10018A610(v8, v5);
    sub_10018A610(v8, v6);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 248);
      v11 = *(v0 + 256);
      v136 = *(v0 + 192);
      v139 = *(v0 + 208);
      v13 = *(v0 + 128);
      log = *(v0 + 120);
      v133 = *(v0 + 200);
      v129 = *(v0 + 104);
      v14 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v14 = 136315394;
      sub_10001A718(v13, v11, &unk_1002D7BD0, &unk_10024A800);
      v15 = String.init<A>(describing:)();
      v17 = v16;
      sub_10018A7EC(v13);
      v18 = sub_10017A8A8(v15, v17, &v143);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      sub_10001A718(log + *(v129 + 20), v11, &unk_1002D7BD0, &unk_10024A800);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      sub_10018A7EC(log);
      v22 = sub_10017A8A8(v19, v21, &v143);

      *(v14 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v9, v10, "Motion Reader. Received pedometer data. Start date: %s, end date: %s, but the local timestamp of update start is nil. Setting most recent state to nil...", v14, 0x16u);
      swift_arrayDestroy();

      (*(v133 + 8))(v139, v136);
    }

    else
    {
      v60 = *(v0 + 200);
      v59 = *(v0 + 208);
      v61 = *(v0 + 192);
      v63 = *(v0 + 120);
      v62 = *(v0 + 128);

      sub_10018A7EC(v63);
      sub_10018A7EC(v62);
      (*(v60 + 8))(v59, v61);
    }

    v64 = *(v0 + 80);
    (*(*(v0 + 112) + 56))(*(v0 + 184), 1, 1, *(v0 + 104));
    v65 = sub_1001883EC;
  }

  else
  {
    v23 = *(v0 + 352);
    v24 = *(v0 + 320);
    v25 = *(v0 + 288);
    (*(v0 + 344))(*(v0 + 312), v3, v2);
    Date.distance(to:)();
    v26 = (v25 + 16);
    v27 = *(v0 + 312);
    v28 = *(v0 + 280);
    if (v29 <= 90.0)
    {
      v66 = *(v0 + 304);
      v68 = *(v0 + 168);
      v67 = *(v0 + 176);
      v141 = *(v0 + 160);
      v69 = *(v0 + 88);
      v70 = *(v0 + 96);
      sub_100003E50(&off_1002B65F8, *(v0 + 224));
      (*v26)(v66, v27, v28);
      sub_10018A610(v69, v67);
      sub_10018A610(v69, v68);
      sub_10018A610(v69, v141);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      v142 = v71;
      v73 = os_log_type_enabled(v71, v72);
      v74 = *(v0 + 304);
      v76 = *(v0 + 280);
      v75 = *(v0 + 288);
      if (v73)
      {
        v77 = *(v0 + 256);
        logb = *(v0 + 200);
        v135 = *(v0 + 192);
        v138 = *(v0 + 224);
        v78 = *(v0 + 176);
        v122 = *(v0 + 168);
        v126 = *(v0 + 152);
        v128 = *(v0 + 160);
        v119 = *(v0 + 248);
        v120 = *(v0 + 104);
        v79 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        *v79 = 136315906;
        sub_10018A0BC();
        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        v124 = v72;
        v82 = v81;
        v85 = *(v75 + 8);
        v83 = v75 + 8;
        v84 = v85;
        v85(v74, v76);
        v86 = sub_10017A8A8(v80, v82, &v143);

        *(v79 + 4) = v86;
        *(v79 + 12) = 2080;
        sub_10001A718(v78, v77, &unk_1002D7BD0, &unk_10024A800);
        v87 = String.init<A>(describing:)();
        v89 = v88;
        sub_10018A7EC(v78);
        v90 = sub_10017A8A8(v87, v89, &v143);

        *(v79 + 14) = v90;
        *(v79 + 22) = 2080;
        sub_10001A718(v122 + *(v120 + 20), v77, &unk_1002D7BD0, &unk_10024A800);
        v91 = String.init<A>(describing:)();
        v93 = v92;
        sub_10018A7EC(v122);
        v94 = sub_10017A8A8(v91, v93, &v143);

        *(v79 + 24) = v94;
        *(v79 + 32) = 2080;
        sub_10018A610(v128, v126);
        v95 = String.init<A>(describing:)();
        v97 = v96;
        sub_10018A7EC(v128);
        v98 = sub_10017A8A8(v95, v97, &v143);

        *(v79 + 34) = v98;
        _os_log_impl(&_mh_execute_header, v142, v124, "Motion Reader. Received pedometer data. Started updates at: %s. Data start date: %s. Data end date: %s. %s. Updating most recent state...", v79, 0x2Au);
        swift_arrayDestroy();

        (logb[1].isa)(v138, v135);
      }

      else
      {
        v107 = *(v0 + 224);
        v108 = *(v0 + 192);
        v109 = *(v0 + 200);
        v111 = *(v0 + 168);
        v110 = *(v0 + 176);
        v112 = *(v0 + 160);

        sub_10018A7EC(v112);
        sub_10018A7EC(v111);
        sub_10018A7EC(v110);
        v113 = *(v75 + 8);
        v83 = v75 + 8;
        v84 = v113;
        v113(v74, v76);
        (*(v109 + 8))(v107, v108);
      }

      *(v0 + 360) = v83;
      *(v0 + 368) = v84;
      v114 = *(v0 + 184);
      v115 = *(v0 + 104);
      v116 = *(v0 + 112);
      v117 = *(v0 + 80);
      sub_10018A610(*(v0 + 88), v114);
      (*(v116 + 56))(v114, 0, 1, v115);
      v105 = sub_100187FB4;
      v106 = v117;
      goto LABEL_16;
    }

    v30 = *(v0 + 296);
    v32 = *(v0 + 136);
    v31 = *(v0 + 144);
    v33 = *(v0 + 88);
    v34 = *(v0 + 96);
    sub_100003E50(&off_1002B65F8, *(v0 + 216));
    (*v26)(v30, v27, v28);
    sub_10018A610(v33, v31);
    sub_10018A610(v33, v32);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 288);
    v39 = *(v0 + 296);
    v40 = *(v0 + 280);
    if (v37)
    {
      loga = v35;
      v41 = *(v0 + 256);
      v134 = *(v0 + 200);
      v137 = *(v0 + 192);
      v140 = *(v0 + 216);
      v42 = *(v0 + 144);
      v127 = *(v0 + 136);
      v121 = *(v0 + 248);
      v123 = *(v0 + 104);
      v43 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      *v43 = 134218754;
      *(v43 + 4) = 0x4056800000000000;
      *(v43 + 12) = 2080;
      sub_10018A0BC();
      v125 = v36;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v49 = *(v38 + 8);
      v47 = v38 + 8;
      v48 = v49;
      v49(v39, v40);
      v50 = sub_10017A8A8(v44, v46, &v143);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2080;
      sub_10001A718(v42, v41, &unk_1002D7BD0, &unk_10024A800);
      v51 = String.init<A>(describing:)();
      v53 = v52;
      sub_10018A7EC(v42);
      v54 = sub_10017A8A8(v51, v53, &v143);

      *(v43 + 24) = v54;
      *(v43 + 32) = 2080;
      sub_10001A718(v127 + *(v123 + 20), v41, &unk_1002D7BD0, &unk_10024A800);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      sub_10018A7EC(v127);
      v58 = sub_10017A8A8(v55, v57, &v143);

      *(v43 + 34) = v58;
      _os_log_impl(&_mh_execute_header, loga, v125, "Motion Reader. Received outdated pedometer data. Tolerance: %fs. Started updates at: %s. Data start date: %s. Data end date: %s. Setting most recent state to nil...", v43, 0x2Au);
      swift_arrayDestroy();

      (*(v134 + 8))(v140, v137);
    }

    else
    {
      v99 = *(v0 + 216);
      v100 = *(v0 + 192);
      v101 = *(v0 + 200);
      v103 = *(v0 + 136);
      v102 = *(v0 + 144);

      sub_10018A7EC(v103);
      sub_10018A7EC(v102);
      v104 = *(v38 + 8);
      v47 = v38 + 8;
      v48 = v104;
      v104(v39, v40);
      (*(v101 + 8))(v99, v100);
    }

    *(v0 + 376) = v47;
    *(v0 + 384) = v48;
    v64 = *(v0 + 80);
    (*(*(v0 + 112) + 56))(*(v0 + 184), 1, 1, *(v0 + 104));
    v65 = sub_1001881D0;
  }

  v105 = v65;
  v106 = v64;
LABEL_16:

  return _swift_task_switch(v105, v106, 0);
}

uint64_t sub_100187FB4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 80);
  sub_100184984(v1);
  sub_1000157F0(v1, &qword_1002D67B0, &qword_10024A640);

  return _swift_task_switch(sub_10018803C, 0, 0);
}

uint64_t sub_10018803C()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[40];
  v4 = v0[35];
  v1(v0[39], v4);
  v1(v3, v4);
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[37];
  v8 = v0[38];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[28];
  v17 = v0[27];
  v18 = v0[26];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[16];
  v27 = v0[15];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001881D0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 80);
  sub_100184984(v1);
  sub_1000157F0(v1, &qword_1002D67B0, &qword_10024A640);

  return _swift_task_switch(sub_100188258, 0, 0);
}

uint64_t sub_100188258()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[40];
  v4 = v0[35];
  v1(v0[39], v4);
  v1(v3, v4);
  v6 = v0[39];
  v5 = v0[40];
  v7 = v0[37];
  v8 = v0[38];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[32];
  v13 = v0[29];
  v12 = v0[30];
  v14 = v0[28];
  v17 = v0[27];
  v18 = v0[26];
  v19 = v0[23];
  v20 = v0[22];
  v21 = v0[21];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];
  v26 = v0[16];
  v27 = v0[15];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001883EC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 80);
  sub_100184984(v1);
  sub_1000157F0(v1, &qword_1002D67B0, &qword_10024A640);

  return _swift_task_switch(sub_100188474, 0, 0);
}

uint64_t sub_100188474()
{
  (*(v0[36] + 8))(v0[40], v0[35]);
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v9 = v0[29];
  v8 = v0[30];
  v10 = v0[28];
  v13 = v0[27];
  v14 = v0[26];
  v15 = v0[23];
  v16 = v0[22];
  v17 = v0[21];
  v18 = v0[20];
  v19 = v0[19];
  v20 = v0[18];
  v21 = v0[17];
  v22 = v0[16];
  v23 = v0[15];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001885F0()
{
  v1 = v0[23];
  v2 = v0[10];
  sub_100184984(v1);
  sub_1000157F0(v1, &qword_1002D67B0, &qword_10024A640);
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[37];
  v6 = v0[38];
  v8 = v0[33];
  v7 = v0[34];
  v9 = v0[32];
  v11 = v0[29];
  v10 = v0[30];
  v12 = v0[28];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[23];
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[17];
  v24 = v0[16];
  v25 = v0[15];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10018877C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_1001887B4();
  return v3;
}

void *sub_1001887B4()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for Logger();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v0[14] = [objc_allocWithZone(NSOperationQueue) init];
  v7 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt;
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_motionActivityManager;
  *(v0 + v9) = [objc_allocWithZone(CMMotionActivityManager) init];
  v10 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_pedometerReader;
  *(v0 + v10) = [objc_allocWithZone(CMPedometer) init];
  *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentMotionState) = 5;
  v11 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentPedometerState;
  v12 = _s14PedometerStateVMa(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = (v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___motionActivityUpdateHandler);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___pedometerUpdateHandler);
  *v14 = 0;
  v14[1] = 0;
  v15 = objc_opt_self();
  v16 = [v15 isActivityAvailable];
  v17 = [v15 authorizationStatus];
  v18 = v17 == 3;
  v19 = objc_opt_self();
  v20 = [v19 isStepCountingAvailable];
  v21 = [v19 authorizationStatus];
  v22 = v21;
  if (v20)
  {
    *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_usePedometer) = v21 == 3;
    if ((v16 & 1) == 0)
    {
LABEL_3:
      v18 = 0;
      v23 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_usePedometer) = 0;
    if ((v16 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v23 = 1;
LABEL_6:
  *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_useMotionActivityManager) = v18;
  sub_100003E50(&off_1002B65F8, v6);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v17 == 3;
    v27 = swift_slowAlloc();
    *v27 = 67110400;
    *(v27 + 4) = v26;
    *(v27 + 8) = 1024;
    *(v27 + 10) = v23;
    *(v27 + 14) = 1024;
    *(v27 + 16) = *(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_useMotionActivityManager);
    *(v27 + 20) = 1024;
    *(v27 + 22) = v22 == 3;
    *(v27 + 26) = 1024;
    *(v27 + 28) = v20;
    *(v27 + 32) = 1024;
    *(v27 + 34) = *(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_usePedometer);

    _os_log_impl(&_mh_execute_header, v24, v25, "Motion Reader. CMMotionActivityManager authorization status %{BOOL}d, availability %{BOOL}d -> useMotionActivityManager: %{BOOL}d. CMPedometer authorization status %{BOOL}d, availability %{BOOL}d -> usePedometer: %{BOOL}d", v27, 0x26u);
  }

  else
  {
  }

  (*(v29 + 8))(v6, v30);
  return v1;
}

void sub_100188B7C()
{
  v1 = v0;
  v94 = *v0;
  v2 = sub_100164A3C(&qword_1002D67B0, &qword_10024A640);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v91 = &v84 - v4;
  v5 = type metadata accessor for Logger();
  v96 = *(v5 - 8);
  v97 = v5;
  v6 = *(v96 + 64);
  v7 = __chkstk_darwin(v5);
  v89 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v95 = &v84 - v10;
  __chkstk_darwin(v9);
  v85 = &v84 - v11;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v86 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v84 - v18;
  __chkstk_darwin(v17);
  v21 = &v84 - v20;
  v87 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v22 = *(*(v87 - 8) + 64);
  v23 = __chkstk_darwin(v87);
  v90 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v93 = &v84 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v84 - v28;
  __chkstk_darwin(v27);
  v31 = &v84 - v30;
  v32 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt;
  swift_beginAccess();
  v98 = v32;
  sub_10001A718(v1 + v32, v31, &unk_1002D7BD0, &unk_10024A800);
  v34 = (v13 + 48);
  v33 = *(v13 + 48);
  v35 = v33(v31, 1, v12);
  v92 = v13;
  if (v35)
  {
    sub_1000157F0(v31, &unk_1002D7BD0, &unk_10024A800);
LABEL_4:
    v40 = v98;
    sub_10001A718(v1 + v98, v29, &unk_1002D7BD0, &unk_10024A800);
    v89 = v34;
    v88 = v33;
    v41 = v33(v29, 1, v12);
    sub_1000157F0(v29, &unk_1002D7BD0, &unk_10024A800);
    v42 = v95;
    if (v41 != 1)
    {
      v43 = v85;
      sub_100003E50(&off_1002B65F8, v85);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Motion Reader. Before starting stopping with Force because previous startedUpdatesAt not NIL", v46, 2u);
      }

      (*(v96 + 8))(v43, v97);
      (*(*v1 + 320))(1);
    }

    sub_100003E50(&off_1002B65F8, v42);

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v49 = 136315394;
      v50 = v93;
      sub_10001A718(v1 + v98, v93, &unk_1002D7BD0, &unk_10024A800);
      v51 = String.init<A>(describing:)();
      v53 = sub_10017A8A8(v51, v52, &aBlock);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      static Date.now.getter();
      sub_10018A0BC();
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v57 = v21;
      v58 = v92;
      (*(v92 + 8))(v57, v12);
      v59 = sub_10017A8A8(v54, v56, &aBlock);

      *(v49 + 14) = v59;
      _os_log_impl(&_mh_execute_header, v47, v48, "Motion Reader. Started pedometerReader, motionActivityManager updates. Changed startedUpdatesAt from %s to %s. Set states to NIL", v49, 0x16u);
      swift_arrayDestroy();
      v40 = v98;

      (*(v96 + 8))(v95, v97);
    }

    else
    {

      (*(v96 + 8))(v42, v97);
      v58 = v92;
      v50 = v93;
    }

    v60 = v88;
    static Date.now.getter();
    (*(v58 + 56))(v50, 0, 1, v12);
    swift_beginAccess();
    sub_10018A03C(v50, v1 + v40, &unk_1002D7BD0, &unk_10024A800);
    swift_endAccess();
    v61 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentMotionState;
    swift_beginAccess();
    *(v1 + v61) = 5;
    v62 = _s14PedometerStateVMa(0);
    v63 = v91;
    (*(*(v62 - 8) + 56))(v91, 1, 1, v62);
    v64 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentPedometerState;
    swift_beginAccess();
    sub_10018A03C(v63, v1 + v64, &qword_1002D67B0, &qword_10024A640);
    swift_endAccess();
    v65 = v90;
    if (*(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_usePedometer) == 1)
    {
      v66 = *(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_pedometerReader);
      sub_10001A718(v1 + v40, v90, &unk_1002D7BD0, &unk_10024A800);
      if (v60(v65, 1, v12) == 1)
      {
        v67 = v86;
        static Date.now.getter();
        if (v60(v65, 1, v12) != 1)
        {
          sub_1000157F0(v65, &unk_1002D7BD0, &unk_10024A800);
        }
      }

      else
      {
        v67 = v86;
        (*(v58 + 32))(v86, v65, v12);
      }

      isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v58 + 8))(v67, v12);
      v103 = sub_10018637C();
      v104 = v69;
      aBlock = _NSConcreteStackBlock;
      v100 = 1107296256;
      v101 = sub_100189778;
      v102 = &unk_1002B65C0;
      v70 = _Block_copy(&aBlock);

      [v66 startPedometerUpdatesFromDate:isa withHandler:v70];
      _Block_release(v70);
    }

    if (*(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_useMotionActivityManager) == 1)
    {
      v71 = *(v1 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_motionActivityManager);
      v72 = v1[14];
      v103 = sub_100184CBC();
      v104 = v73;
      aBlock = _NSConcreteStackBlock;
      v100 = 1107296256;
      v101 = sub_100189804;
      v102 = &unk_1002B6598;
      v74 = _Block_copy(&aBlock);

      [v71 startActivityUpdatesToQueue:v72 withHandler:v74];
      _Block_release(v74);
    }

    return;
  }

  v36 = v89;
  (*(v13 + 16))(v21, v31, v12);
  sub_1000157F0(v31, &unk_1002D7BD0, &unk_10024A800);
  static Date.now.getter();
  Date.distance(to:)();
  v38 = v37;
  v39 = *(v13 + 8);
  v39(v19, v12);
  v39(v21, v12);
  if (v38 > 90.0)
  {
    goto LABEL_4;
  }

  sub_100003E50(&off_1002B65F8, v36);

  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.debug.getter();

  v77 = os_log_type_enabled(v75, v76);
  v78 = v98;
  if (v77)
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    aBlock = v80;
    *v79 = 136315394;
    sub_10001A718(v1 + v78, v93, &unk_1002D7BD0, &unk_10024A800);
    v81 = String.init<A>(describing:)();
    v83 = sub_10017A8A8(v81, v82, &aBlock);

    *(v79 + 4) = v83;
    *(v79 + 12) = 2048;
    *(v79 + 14) = 0x4056800000000000;
    _os_log_impl(&_mh_execute_header, v75, v76, "Motion Reader. Skipped starting pedometerReader, motionActivityManager updates, previously requested start date %s is within %fs tolerance from now", v79, 0x16u);
    sub_100164B98(v80);
  }

  (*(v96 + 8))(v36, v97);
}

void sub_100189778(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_100189804(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id sub_100189870(int a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for Logger();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  v7 = __chkstk_darwin(v5);
  v45 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v44 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v44 - v17;
  v19 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = v44 - v25;
  v46 = a1;
  if (a1)
  {
    goto LABEL_5;
  }

  v44[1] = v24;
  v27 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt;
  swift_beginAccess();
  sub_10001A718(v2 + v27, v26, &unk_1002D7BD0, &unk_10024A800);
  if ((*(v12 + 48))(v26, 1, v11))
  {
    sub_1000157F0(v26, &unk_1002D7BD0, &unk_10024A800);
LABEL_5:
    sub_100003E50(&off_1002B65F8, v10);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 67109120;
      *(v33 + 4) = v46 & 1;
      _os_log_impl(&_mh_execute_header, v31, v32, "Motion Reader. Stopped pedometerReader, motionActivityManager updates with doForce %{BOOL}d. Setting startedUpdatesAt to nil...", v33, 8u);
    }

    (*(v47 + 8))(v10, v48);
    (*(v12 + 56))(v23, 1, 1, v11);
    v34 = OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt;
    swift_beginAccess();
    sub_10018A03C(v23, v2 + v34, &unk_1002D7BD0, &unk_10024A800);
    result = swift_endAccess();
    if (*(v2 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_usePedometer) == 1)
    {
      result = [*(v2 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_pedometerReader) stopPedometerUpdates];
    }

    if (*(v2 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_useMotionActivityManager) == 1)
    {
      return [*(v2 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_motionActivityManager) stopActivityUpdates];
    }

    return result;
  }

  v44[0] = v27;
  (*(v12 + 16))(v18, v26, v11);
  sub_1000157F0(v26, &unk_1002D7BD0, &unk_10024A800);
  static Date.now.getter();
  Date.distance(to:)();
  v29 = v28;
  v30 = *(v12 + 8);
  v30(v16, v11);
  v30(v18, v11);
  if (v29 > 90.0)
  {
    goto LABEL_5;
  }

  v36 = v45;
  sub_100003E50(&off_1002B65F8, v45);

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v49 = v40;
    *v39 = 136315394;
    sub_10001A718(v2 + v44[0], v23, &unk_1002D7BD0, &unk_10024A800);
    v41 = String.init<A>(describing:)();
    v43 = sub_10017A8A8(v41, v42, &v49);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2048;
    *(v39 + 14) = 0x4056800000000000;
    _os_log_impl(&_mh_execute_header, v37, v38, "Motion Reader. Skipped stopping pedometerReader, motionActivityManager updates, previously requested start date %s is within %fs tolerance from now", v39, 0x16u);
    sub_100164B98(v40);
  }

  return (*(v47 + 8))(v36, v48);
}

uint64_t sub_100189E5C()
{
  sub_1000157F0(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_startedUpdatesAt, &unk_1002D7BD0, &unk_10024A800);

  sub_1000157F0(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader_mostRecentPedometerState, &qword_1002D67B0, &qword_10024A640);
  v1 = *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___motionActivityUpdateHandler + 8);
  sub_10002193C(*(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___motionActivityUpdateHandler));
  v2 = *(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___pedometerUpdateHandler + 8);
  sub_10002193C(*(v0 + OBJC_IVAR____TtCV17wirelessinsightsd20WiFiToCellTransition12MotionReader____lazy_storage___pedometerUpdateHandler));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100189F1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  _s12MotionReaderCMa(0);

  return sub_100003E50(a1, a2);
}

unint64_t sub_100189F68()
{
  _s12MotionReaderCMa(0);

  return sub_10000358C();
}

unint64_t sub_100189F9C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_100189FCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018A03C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100164A3C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_10018A0A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10018A0BC()
{
  result = qword_1002D5B88;
  if (!qword_1002D5B88)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D5B88);
  }

  return result;
}

unint64_t sub_10018A118()
{
  result = qword_1002D67B8;
  if (!qword_1002D67B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D67B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoamingPLMNPredictionController.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RoamingPLMNPredictionController.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10018A2E4()
{
  sub_10018A544(319, &qword_1002D7F00, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_10018A390();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10018A390()
{
  if (!qword_1002D5C00)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D5C00);
    }
  }
}

void sub_10018A408()
{
  sub_10018A544(319, &qword_1002D7F00, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10018A544(319, &unk_1002D6880, _s14PedometerStateVMa);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10018A544(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10018A598(uint64_t a1, uint64_t a2)
{
  v4 = sub_100164A3C(&qword_1002D67B0, &qword_10024A640);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018A610(uint64_t a1, uint64_t a2)
{
  v4 = _s14PedometerStateVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018A674(uint64_t a1, uint64_t a2)
{
  v4 = _s14PedometerStateVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10018A6D8()
{
  v2 = *(_s14PedometerStateVMa(0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10017F434;

  return sub_100186CF0(v7, v8, v9, v4, v5, v0 + v3, v6);
}

uint64_t sub_10018A7EC(uint64_t a1)
{
  v2 = _s14PedometerStateVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10018A850()
{
  v2 = *(sub_100164A3C(&unk_1002D7BD0, &unk_10024A800) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = v0 + ((v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v5 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_100002A5C;

  return sub_100185510(v9, v10, v11, v0 + v3, v6, v8, v7);
}

uint64_t _s8SnapshotVMa()
{
  result = qword_1002D9CF0;
  if (!qword_1002D9CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10018A9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, uint64_t a19, unsigned __int8 a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned __int8 a28, uint64_t a29, unsigned __int8 a30, uint64_t a31, unsigned __int8 a32, unsigned __int8 a33, unsigned __int8 a34, unsigned __int8 a35, uint64_t a36)
{
  v126 = a8;
  v124 = a7;
  v122 = a6;
  v119 = a5;
  v117 = a4;
  v139 = a32;
  v140 = a34;
  v138 = a31;
  v137 = a30;
  v136 = a29;
  v135 = a28;
  v133 = a26;
  v134 = a27;
  v131 = a24;
  v132 = a25;
  v130 = a23;
  v129 = a22;
  v128 = a21;
  v127 = a20;
  v125 = a19;
  v123 = a18;
  v121 = a17;
  v120 = a16;
  v118 = a15;
  v116 = a14;
  v115 = a13;
  v40 = sub_100164A3C(&qword_1002D67B0, &qword_10024A640);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v145 = &v115 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v144 = &v115 - v45;
  v46 = __chkstk_darwin(v44);
  v143 = &v115 - v47;
  v48 = __chkstk_darwin(v46);
  v142 = &v115 - v49;
  v50 = __chkstk_darwin(v48);
  v52 = &v115 - v51;
  __chkstk_darwin(v50);
  v54 = &v115 - v53;
  v141 = a1;
  sub_10001A718(a1, a9, &unk_1002D7BD0, &unk_10024A800);
  v55 = _s8SnapshotVMa();
  v56 = 0;
  v57 = a9 + v55[5];
  *v57 = a2;
  *(v57 + 8) = a3 & 1;
  v58 = a9 + v55[6];
  *v58 = v117;
  *(v58 + 8) = v119 & 1;
  v59 = a9 + v55[7];
  *v59 = v122;
  *(v59 + 8) = v124 & 1;
  v60 = a9 + v55[8];
  *v60 = v126;
  *(v60 + 8) = a10 & 1;
  v61 = a9 + v55[9];
  *v61 = a11;
  *(v61 + 8) = a12 & 1;
  v62 = a9 + v55[10];
  *v62 = v115;
  *(v62 + 8) = v116 & 1;
  v63 = (a9 + v55[11]);
  v64 = v120;
  *v63 = v118;
  v63[1] = v64;
  v65 = a9 + v55[12];
  *v65 = v121;
  *(v65 + 8) = v123 & 1;
  v66 = a9 + v55[13];
  *v66 = v125;
  *(v66 + 8) = v127 & 1;
  v67 = a9 + v55[14];
  *v67 = v128;
  *(v67 + 8) = v129 & 1;
  v68 = (a9 + v55[15]);
  v69 = v131;
  *v68 = v130;
  v68[1] = v69;
  v70 = (a9 + v55[16]);
  v71 = v133;
  *v70 = v132;
  v70[1] = v71;
  v72 = a9 + v55[17];
  *v72 = v134;
  *(v72 + 8) = v135 & 1;
  v73 = a9 + v55[18];
  *v73 = v136;
  *(v73 + 8) = v137 & 1;
  v74 = a9 + v55[19];
  *v74 = v138;
  *(v74 + 8) = v139 & 1;
  if (a33 != 6)
  {
    v56 = sub_100183DB4(a33);
  }

  v75 = a9 + v55[20];
  *v75 = v56;
  *(v75 + 8) = a33 == 6;
  v76 = v140;
  if (v140 == 7)
  {
    v77 = 0;
  }

  else
  {
    v77 = sub_1001845A8(v140);
  }

  v78 = a9 + v55[21];
  *v78 = v77;
  *(v78 + 8) = v76 == 7;
  if (a35 == 5)
  {
    v79 = 0;
  }

  else
  {
    v79 = sub_100183DB4(a35);
  }

  sub_1000157F0(v141, &unk_1002D7BD0, &unk_10024A800);
  v80 = a9 + v55[22];
  *v80 = v79;
  *(v80 + 8) = a35 == 5;
  sub_10001A718(a36, v54, &qword_1002D67B0, &qword_10024A640);
  v81 = _s14PedometerStateVMa(0);
  v82 = *(*(v81 - 1) + 48);
  if (v82(v54, 1, v81) == 1)
  {
    sub_1000157F0(v54, &qword_1002D67B0, &qword_10024A640);
    v83 = 0;
    v84 = 1;
  }

  else
  {
    v85 = &v54[v81[6]];
    v83 = *v85;
    v84 = v85[8];
    sub_100191EF4(v54, _s14PedometerStateVMa);
  }

  v86 = a9 + v55[23];
  *v86 = v83;
  *(v86 + 8) = v84;
  sub_10001A718(a36, v52, &qword_1002D67B0, &qword_10024A640);
  v87 = v82(v52, 1, v81);
  v88 = v143;
  if (v87 == 1)
  {
    sub_1000157F0(v52, &qword_1002D67B0, &qword_10024A640);
    v89 = 0;
    v90 = 1;
  }

  else
  {
    v91 = &v52[v81[7]];
    v89 = *v91;
    v90 = v91[8];
    sub_100191EF4(v52, _s14PedometerStateVMa);
  }

  v92 = a9 + v55[24];
  *v92 = v89;
  *(v92 + 8) = v90;
  v93 = v142;
  sub_10001A718(a36, v142, &qword_1002D67B0, &qword_10024A640);
  v94 = v82(v93, 1, v81);
  v95 = v144;
  if (v94 == 1)
  {
    sub_1000157F0(v93, &qword_1002D67B0, &qword_10024A640);
    v96 = 0;
    v97 = 1;
  }

  else
  {
    v98 = v93 + v81[8];
    v99 = v93;
    v96 = *v98;
    v97 = *(v98 + 8);
    sub_100191EF4(v99, _s14PedometerStateVMa);
  }

  v100 = a9 + v55[25];
  *v100 = v96;
  *(v100 + 8) = v97;
  sub_10001A718(a36, v88, &qword_1002D67B0, &qword_10024A640);
  if (v82(v88, 1, v81) == 1)
  {
    sub_1000157F0(v88, &qword_1002D67B0, &qword_10024A640);
    v101 = 0;
    v102 = 1;
  }

  else
  {
    v103 = v88 + v81[9];
    v101 = *v103;
    v102 = *(v103 + 8);
    sub_100191EF4(v88, _s14PedometerStateVMa);
  }

  v104 = a9 + v55[26];
  *v104 = v101;
  *(v104 + 8) = v102;
  sub_10001A718(a36, v95, &qword_1002D67B0, &qword_10024A640);
  if (v82(v95, 1, v81) == 1)
  {
    sub_1000157F0(v95, &qword_1002D67B0, &qword_10024A640);
    v105 = 0;
    v106 = 1;
  }

  else
  {
    v107 = v95 + v81[10];
    v105 = *v107;
    v106 = *(v107 + 8);
    sub_100191EF4(v95, _s14PedometerStateVMa);
  }

  v108 = a9 + v55[27];
  *v108 = v105;
  *(v108 + 8) = v106;
  v109 = v145;
  sub_100191E28(a36, v145, &qword_1002D67B0, &qword_10024A640);
  if (v82(v109, 1, v81) == 1)
  {
    result = sub_1000157F0(v109, &qword_1002D67B0, &qword_10024A640);
    v111 = 0;
    v112 = 1;
  }

  else
  {
    v113 = v109 + v81[11];
    v111 = *v113;
    v112 = *(v113 + 8);
    result = sub_100191EF4(v109, _s14PedometerStateVMa);
  }

  v114 = a9 + v55[28];
  *v114 = v111;
  *(v114 + 8) = v112;
  return result;
}

unint64_t sub_10018B254(char a1)
{
  result = 0x6F72656C65636361;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
    case 4:
    case 5:
      return result;
    case 6:
      result = 1769173874;
      break;
    case 7:
      result = 0x4E6B726F7774656ELL;
      break;
    case 8:
      result = 7499379;
      break;
    case 9:
      result = 6382435;
      break;
    case 10:
      result = 0x4E6C656E6E616863;
      break;
    case 11:
      result = 0x576C656E6E616863;
      break;
    case 12:
      result = 0x426C656E6E616863;
      break;
    case 13:
    case 17:
    case 24:
      v3 = 10;
      goto LABEL_14;
    case 14:
    case 22:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      v3 = 9;
LABEL_14:
      result = v3 | 0xD000000000000010;
      break;
    case 18:
    case 23:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0x6574656D6F646570;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_10018B4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100190DA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10018B514(uint64_t a1)
{
  v2 = sub_100191DD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10018B550(uint64_t a1)
{
  v2 = sub_100191DD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10018B590(void *a1)
{
  v3 = v1;
  v5 = sub_100164A3C(&qword_1002D6A00, &qword_10024A810);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v85 - v8;
  v10 = a1[4];
  sub_100014E1C(a1, a1[3]);
  sub_100191DD4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v86 = 0;
  type metadata accessor for Date();
  sub_100192750(&qword_1002D6A08, &type metadata accessor for Date);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = _s8SnapshotVMa();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = *(v12 + 8);
    v86 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = *(v15 + 8);
    v86 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = *(v18 + 8);
    v86 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = (v3 + v11[8]);
    v22 = *v21;
    v23 = *(v21 + 8);
    v86 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = (v3 + v11[9]);
    v25 = *v24;
    v26 = *(v24 + 8);
    v86 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = (v3 + v11[10]);
    v28 = *v27;
    v29 = *(v27 + 8);
    v86 = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = (v3 + v11[11]);
    v31 = *v30;
    v32 = v30[1];
    v86 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = (v3 + v11[12]);
    v34 = *v33;
    v35 = *(v33 + 8);
    v86 = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v36 = (v3 + v11[13]);
    v37 = *v36;
    v38 = *(v36 + 8);
    v86 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v39 = (v3 + v11[14]);
    v40 = *v39;
    v41 = *(v39 + 8);
    v86 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = (v3 + v11[15]);
    v43 = *v42;
    v44 = v42[1];
    v86 = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v45 = (v3 + v11[16]);
    v46 = *v45;
    v47 = v45[1];
    v86 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v48 = (v3 + v11[17]);
    v49 = *v48;
    v50 = *(v48 + 8);
    v86 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v51 = (v3 + v11[18]);
    v52 = *v51;
    v53 = *(v51 + 8);
    v86 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v54 = (v3 + v11[19]);
    v55 = *v54;
    v56 = *(v54 + 8);
    v86 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v57 = (v3 + v11[20]);
    v58 = *v57;
    v59 = *(v57 + 8);
    v86 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v60 = (v3 + v11[21]);
    v61 = *v60;
    v62 = *(v60 + 8);
    v86 = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v63 = (v3 + v11[22]);
    v64 = *v63;
    v65 = *(v63 + 8);
    v86 = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v66 = (v3 + v11[23]);
    v67 = *v66;
    v68 = *(v66 + 8);
    v86 = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v69 = (v3 + v11[24]);
    v70 = *v69;
    v71 = *(v69 + 8);
    v86 = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v72 = (v3 + v11[25]);
    v73 = *v72;
    v74 = *(v72 + 8);
    v86 = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v75 = (v3 + v11[26]);
    v76 = *v75;
    v77 = *(v75 + 8);
    v86 = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v78 = (v3 + v11[27]);
    v79 = *v78;
    v80 = *(v78 + 8);
    v86 = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v81 = (v3 + v11[28]);
    v82 = *v81;
    v83 = *(v81 + 8);
    v86 = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_10018BBF4()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v74 - v9;
  sub_10001A718(v1, &v74 - v9, &unk_1002D7BD0, &unk_10024A800);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    Hasher._combine(_:)(1u);
    sub_100192750(&qword_1002D7160, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v6, v2);
  }

  v11 = _s8SnapshotVMa();
  v12 = v1 + v11[5];
  if (*(v12 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v13 = *v12;
    Hasher._combine(_:)(1u);
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    Hasher._combine(_:)(v14);
  }

  v15 = v1 + v11[6];
  if (*(v15 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = *v15;
    Hasher._combine(_:)(1u);
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    Hasher._combine(_:)(v17);
  }

  v18 = v1 + v11[7];
  if (*(v18 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v19 = *v18;
    Hasher._combine(_:)(1u);
    if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    Hasher._combine(_:)(v20);
  }

  v21 = v1 + v11[8];
  if (*(v21 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v22 = *v21;
    Hasher._combine(_:)(1u);
    if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    Hasher._combine(_:)(v23);
  }

  v24 = v1 + v11[9];
  if (*(v24 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v25 = *v24;
    Hasher._combine(_:)(1u);
    if ((v25 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    Hasher._combine(_:)(v26);
  }

  v27 = v1 + v11[10];
  if (*(v27 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v28 = *v27;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v28);
  }

  v29 = (v1 + v11[11]);
  if (v29[1])
  {
    v30 = *v29;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v31 = v1 + v11[12];
  if (*(v31 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v32 = *v31;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v32);
  }

  v33 = v1 + v11[13];
  if (*(v33 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v34 = *v33;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v34);
  }

  v35 = v1 + v11[14];
  if (*(v35 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v36 = *v35;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v36);
  }

  v37 = (v1 + v11[15]);
  if (v37[1])
  {
    v38 = *v37;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v39 = (v1 + v11[16]);
  if (v39[1])
  {
    v40 = *v39;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v41 = v1 + v11[17];
  if (*(v41 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v42 = *v41;
    Hasher._combine(_:)(1u);
    if ((v42 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v43 = v42;
    }

    else
    {
      v43 = 0;
    }

    Hasher._combine(_:)(v43);
  }

  v44 = v1 + v11[18];
  if (*(v44 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = *v44;
    Hasher._combine(_:)(1u);
    if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    Hasher._combine(_:)(v46);
  }

  v47 = v1 + v11[19];
  if (*(v47 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v48 = *v47;
    Hasher._combine(_:)(1u);
    if ((v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    Hasher._combine(_:)(v49);
  }

  v50 = v1 + v11[20];
  if (*(v50 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v51 = *v50;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v51);
  }

  v52 = v1 + v11[21];
  if (*(v52 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = *v52;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v53);
  }

  v54 = v1 + v11[22];
  if (*(v54 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v55 = *v54;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v55);
  }

  v56 = v1 + v11[23];
  if (*(v56 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v57 = *v56;
    Hasher._combine(_:)(1u);
    if ((v57 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v58 = v57;
    }

    else
    {
      v58 = 0;
    }

    Hasher._combine(_:)(v58);
  }

  v59 = v1 + v11[24];
  if (*(v59 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v60 = *v59;
    Hasher._combine(_:)(1u);
    if ((v60 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    Hasher._combine(_:)(v61);
  }

  v62 = v1 + v11[25];
  if (*(v62 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v63 = *v62;
    Hasher._combine(_:)(1u);
    if ((v63 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    Hasher._combine(_:)(v64);
  }

  v65 = v1 + v11[26];
  if (*(v65 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v66 = *v65;
    Hasher._combine(_:)(1u);
    if ((v66 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v67 = v66;
    }

    else
    {
      v67 = 0;
    }

    Hasher._combine(_:)(v67);
  }

  v68 = v1 + v11[27];
  if (*(v68 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v69 = *v68;
    Hasher._combine(_:)(1u);
    if ((v69 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v70 = v69;
    }

    else
    {
      v70 = 0;
    }

    Hasher._combine(_:)(v70);
  }

  v71 = v1 + v11[28];
  if (*(v71 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v72 = *v71;
    Hasher._combine(_:)(1u);
    if ((v72 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }

    Hasher._combine(_:)(v73);
  }
}

uint64_t sub_10018C3C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v4 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v95 - v6;
  v99 = sub_100164A3C(&qword_1002D6A10, &qword_10024A818);
  v8 = *(v99 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v99);
  v11 = &v95 - v10;
  v12 = _s8SnapshotVMa();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v100 = a1;
  sub_100014E1C(a1, v17);
  sub_100191DD4();
  v98 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100164B98(v100);
  }

  v96 = v15;
  type metadata accessor for Date();
  v101 = 0;
  sub_100192750(&qword_1002D6A18, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v18 = v96;
  sub_100191E28(v7, v96, &unk_1002D7BD0, &unk_10024A800);
  v101 = 1;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v20 = v18 + v12[5];
  *v20 = v19;
  *(v20 + 8) = v21 & 1;
  v101 = 2;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v18 + v12[6];
  *v23 = v22;
  *(v23 + 8) = v24 & 1;
  v101 = 3;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v18 + v12[7];
  *v26 = v25;
  *(v26 + 8) = v27 & 1;
  v101 = 4;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v18 + v12[8];
  *v29 = v28;
  *(v29 + 8) = v30 & 1;
  v101 = 5;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v18 + v12[9];
  *v32 = v31;
  *(v32 + 8) = v33 & 1;
  v101 = 6;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = v18 + v12[10];
  *v35 = v34;
  *(v35 + 8) = v36 & 1;
  v101 = 7;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v38 = (v18 + v12[11]);
  *v38 = v37;
  v38[1] = v39;
  v101 = 8;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v41 = v18 + v12[12];
  *v41 = v40;
  *(v41 + 8) = v42 & 1;
  v101 = 9;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = &v96[v12[13]];
  *v44 = v43;
  v44[8] = v45 & 1;
  v101 = 10;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v47 = &v96[v12[14]];
  *v47 = v46;
  v47[8] = v48 & 1;
  v101 = 11;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v50 = &v96[v12[15]];
  *v50 = v49;
  v50[1] = v51;
  v101 = 12;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v53 = &v96[v12[16]];
  *v53 = v52;
  v53[1] = v54;
  v101 = 13;
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v56 = &v96[v12[17]];
  *v56 = v55;
  v56[8] = v57 & 1;
  v101 = 14;
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v59 = &v96[v12[18]];
  *v59 = v58;
  v59[8] = v60 & 1;
  v101 = 15;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v62 = &v96[v12[19]];
  *v62 = v61;
  v62[8] = v63 & 1;
  v101 = 16;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v65 = &v96[v12[20]];
  *v65 = v64;
  v65[8] = v66 & 1;
  v101 = 17;
  v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v68 = &v96[v12[21]];
  *v68 = v67;
  v68[8] = v69 & 1;
  v101 = 18;
  v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v71 = &v96[v12[22]];
  *v71 = v70;
  v71[8] = v72 & 1;
  v101 = 19;
  v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v74 = &v96[v12[23]];
  *v74 = v73;
  v74[8] = v75 & 1;
  v101 = 20;
  v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v77 = &v96[v12[24]];
  *v77 = v76;
  v77[8] = v78 & 1;
  v101 = 21;
  v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v80 = &v96[v12[25]];
  *v80 = v79;
  v80[8] = v81 & 1;
  v101 = 22;
  v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v83 = &v96[v12[26]];
  *v83 = v82;
  v83[8] = v84 & 1;
  v101 = 23;
  v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v86 = &v96[v12[27]];
  *v86 = v85;
  v86[8] = v87 & 1;
  v101 = 24;
  v88 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v90 = v89;
  (*(v8 + 8))(v98, v99);
  v92 = v96;
  v91 = v97;
  v93 = &v96[v12[28]];
  *v93 = v88;
  v93[8] = v90 & 1;
  sub_100191E90(v92, v91);
  sub_100164B98(v100);
  return sub_100191EF4(v92, _s8SnapshotVMa);
}

Swift::Int sub_10018CD84()
{
  Hasher.init(_seed:)();
  sub_10018BBF4();
  return Hasher._finalize()();
}

Swift::Int sub_10018CDC8()
{
  Hasher.init(_seed:)();
  sub_10018BBF4();
  return Hasher._finalize()();
}

uint64_t sub_10018CE08(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  *(result + 40) = a4;
  *(result + 48) = a5 & 1;
  return result;
}

void sub_10018CE70()
{
  v1 = v0;
  v2 = *(v0 + 16);
  sub_10018CFD8();
  if (*(v1 + 32))
  {
    goto LABEL_6;
  }

  if ((~*(v1 + 24) & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = *(v1 + 24);
  if (v3 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001906EC(isa, 0xD000000000000016, 0x800000010025BE50, isUniquelyReferenced_nonNull_native);
LABEL_6:
  if (*(v1 + 48))
  {
    return;
  }

  if ((~*(v1 + 40) & 0x7FF0000000000000) == 0)
  {
    goto LABEL_14;
  }

  v6 = *(v1 + 40);
  if (v6 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v7 = Int._bridgeToObjectiveC()().super.super.isa;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001906EC(v7, 0xD00000000000001FLL, 0x800000010025BE30, v8);
}

void sub_10018CFD8()
{
  v1 = sub_100164A3C(&qword_1002D6A20, qword_10024A820);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v381 = &v354 - v3;
  v4 = type metadata accessor for TimeZone();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v370 = &v354 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v8 = *(v378 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v378);
  v11 = &v354 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v376 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v386 = *(v376 - 8);
  v12 = v386[8];
  __chkstk_darwin(v376);
  v372 = &v354 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v383 = *(v375 - 8);
  v14 = *(v383 + 64);
  __chkstk_darwin(v375);
  v371 = &v354 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v374 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v366 = *(v374 - 8);
  v16 = *(v366 + 64);
  __chkstk_darwin(v374);
  v373 = &v354 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = type metadata accessor for Date.ISO8601FormatStyle();
  v356 = *(v369 - 8);
  v18 = *(v356 + 64);
  __chkstk_darwin(v369);
  v368 = &v354 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v379 = &v354 - v22;
  v388 = _s8SnapshotVMa();
  v385 = *(v388 - 8);
  v23 = *(v385 + 64);
  v24 = __chkstk_darwin(v388);
  v26 = &v354 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v380 = &v354 - v27;
  v28 = *(v0 + 24);
  v29 = &_swiftEmptyDictionarySingleton;
  v355 = v0;
  if (v28 != 2)
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v390 = &_swiftEmptyDictionarySingleton;
    sub_1001906EC(isa, 0x69736E6172547369, 0xEC0000006E6F6974, isUniquelyReferenced_nonNull_native);
    v0 = v355;
    v29 = v390;
  }

  v32 = *(v0 + 136);
  v377 = v11;
  if (v32)
  {
    goto LABEL_8;
  }

  if ((~*(v0 + 128) & 0x7FF0000000000000) == 0)
  {
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  v33 = *(v0 + 128);
  if (v33 > -9.22337204e18)
  {
    if (v33 >= 9.22337204e18)
    {
      goto LABEL_245;
    }

    v34 = Int._bridgeToObjectiveC()().super.super.isa;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v390 = v29;
    sub_1001906EC(v34, 0xD00000000000001ALL, 0x800000010025C0F0, v35);
    v0 = v355;
    v29 = v390;
LABEL_8:
    if (*(v0 + 137) != 2)
    {
      v36 = Bool._bridgeToObjectiveC()().super.super.isa;
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v390 = v29;
      sub_1001906EC(v36, 0xD00000000000001BLL, 0x800000010025C0D0, v37);
      v29 = v390;
    }

    v38 = String._bridgeToObjectiveC()();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v389 = v29;
    sub_1001906EC(v38, 0xD000000000000011, 0x800000010025BE70, v39);
    v40 = v389;
    v390 = v389;
    v41 = *(v355 + 16);
    v387 = v41;
    if (v41)
    {
      v42 = *(v41 + 16);
      v43 = _swiftEmptyArrayStorage;
      if (v42)
      {
        v389 = _swiftEmptyArrayStorage;
        v382 = v42;
        sub_100190A50(0, v42, 0);
        v44 = 0;
        v43 = v389;
        v384 = v41 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v367 = enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:);
        v366 += 104;
        v365 = enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:);
        v364 = (v383 + 104);
        v363 = enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:);
        v362 = (v386 + 13);
        v361 = enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:);
        v360 = (v8 + 104);
        v359 = (v5 + 48);
        v357 = (v5 + 32);
        v356 += 8;
        v45 = v380;
        v46 = v381;
        v383 = v4;
        v47 = v379;
        v358 = v26;
        while (v44 < *(v41 + 16))
        {
          v386 = v43;
          sub_100191E90(v384 + *(v385 + 72) * v44, v45);
          sub_10001A718(v45, v47, &unk_1002D7BD0, &unk_10024A800);
          v48 = type metadata accessor for Date();
          v49 = *(v48 - 8);
          if ((*(v49 + 48))(v47, 1, v48) == 1)
          {
            sub_100191EF4(v45, _s8SnapshotVMa);
            sub_1000157F0(v47, &unk_1002D7BD0, &unk_10024A800);
            v50 = 0;
            v51 = 0;
          }

          else
          {
            (*v366)(v373, v367, v374);
            (*v364)(v371, v365, v375);
            (*v362)(v372, v363, v376);
            (*v360)(v377, v361, v378);
            TimeZone.init(secondsFromGMT:)();
            if ((*v359)(v46, 1, v4) == 1)
            {
              goto LABEL_246;
            }

            (*v357)(v370, v46, v4);
            v52 = v368;
            Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
            v53 = v379;
            v54 = Date.ISO8601Format(_:)();
            v46 = v381;
            v50 = v54;
            v51 = v55;
            v56 = v52;
            v47 = v53;
            (*v356)(v56, v369);
            v45 = v380;
            sub_100191EF4(v380, _s8SnapshotVMa);
            (*(v49 + 8))(v47, v48);
            v26 = v358;
          }

          v43 = v386;
          v389 = v386;
          v58 = v386[2];
          v57 = v386[3];
          if (v58 >= v57 >> 1)
          {
            sub_100190A50((v57 > 1), v58 + 1, 1);
            v45 = v380;
            v46 = v381;
            v43 = v389;
          }

          ++v44;
          v43[2] = v58 + 1;
          v59 = &v43[2 * v58];
          v59[4] = v50;
          v59[5] = v51;
          v4 = v383;
          v41 = v387;
          if (v382 == v44)
          {
            v40 = v390;
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_243;
      }
    }

    else
    {
      v43 = 0;
    }

LABEL_23:
    v60 = v388;
    v61 = sub_100191F54(v43);

    v62 = swift_isUniquelyReferenced_nonNull_native();
    v389 = v40;
    sub_1001906EC(v61, 0xD000000000000011, 0x800000010025BE90, v62);
    v63 = v389;
    v390 = v389;
    v64 = v387;
    if (v387)
    {
      v65 = *(v387 + 16);
      v66 = _swiftEmptyArrayStorage;
      if (v65)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190A50(0, v65, 0);
        v66 = v389;
        v67 = v64 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v68 = *(v385 + 72);
        do
        {
          sub_100191E90(v67, v26);
          v69 = &v26[*(v388 + 60)];
          v71 = *v69;
          v70 = *(v69 + 1);

          sub_100191EF4(v26, _s8SnapshotVMa);
          v389 = v66;
          v73 = v66[2];
          v72 = v66[3];
          if (v73 >= v72 >> 1)
          {
            sub_100190A50((v72 > 1), v73 + 1, 1);
            v66 = v389;
          }

          v66[2] = v73 + 1;
          v74 = &v66[2 * v73];
          v74[4] = v71;
          v74[5] = v70;
          v67 += v68;
          --v65;
        }

        while (v65);
        v64 = v387;
        v60 = v388;
      }

      v75 = sub_100191F54(v66);

      v76 = swift_isUniquelyReferenced_nonNull_native();
      v389 = v63;
      sub_1001906EC(v75, 0x576C656E6E616863, 0xEC00000068746469, v76);
      v390 = v389;
      v77 = *(v64 + 16);
      v78 = _swiftEmptyArrayStorage;
      if (v77)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v77, sub_100190A50);
        v79 = v64 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v80 = *(v385 + 72);
        v78 = v389;
        do
        {
          sub_100191E90(v79, v26);
          v81 = &v26[v60[16]];
          v82 = *v81;
          v83 = *(v81 + 1);

          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A50(0, v78[2] + 1, 1);
            v78 = v389;
          }

          v85 = v78[2];
          v84 = v78[3];
          if (v85 >= v84 >> 1)
          {
            sub_100190A50((v84 > 1), v85 + 1, 1);
            v78 = v389;
          }

          v78[2] = v85 + 1;
          v86 = &v78[2 * v85];
          v86[4] = v82;
          v86[5] = v83;
          v79 += v80;
          --v77;
        }

        while (v77);
        v64 = v387;
      }

      v87 = sub_100191F54(v78);

      sub_10018FD68(v87, 0x426C656E6E616863, 0xEB00000000646E61);
      v88 = *(v64 + 16);
      v89 = _swiftEmptyArrayStorage;
      if (v88)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v88, sub_100190A20);
        v90 = v64 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v91 = *(v385 + 72);
        v89 = v389;
        do
        {
          sub_100191E90(v90, v26);
          v92 = &v26[v60[14]];
          v93 = *v92;
          v94 = v92[8];
          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v89[2] + 1, 1);
            v89 = v389;
          }

          v96 = v89[2];
          v95 = v89[3];
          if (v96 >= v95 >> 1)
          {
            sub_100190A20((v95 > 1), v96 + 1, 1);
            v89 = v389;
          }

          v89[2] = v96 + 1;
          v97 = &v89[2 * v96];
          v97[4] = v93;
          *(v97 + 40) = v94;
          v90 += v91;
          --v88;
        }

        while (v88);
        v64 = v387;
      }
    }

    else
    {
      v98 = sub_100191F54(0);

      v99 = swift_isUniquelyReferenced_nonNull_native();
      v389 = v63;
      sub_1001906EC(v98, 0x576C656E6E616863, 0xEC00000068746469, v99);
      v390 = v389;
      v100 = String._bridgeToObjectiveC()();

      sub_10018FD68(v100, 0x426C656E6E616863, 0xEB00000000646E61);
      v89 = 0;
    }

    v101 = sub_1001920D8(v89);

    sub_10018FD68(v101, 0x4E6C656E6E616863, 0xED00007265626D75);
    if (v64)
    {
      v102 = *(v64 + 16);
      v103 = _swiftEmptyArrayStorage;
      if (v102)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v102, sub_100190A20);
        v104 = v64 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v105 = *(v385 + 72);
        v103 = v389;
        do
        {
          sub_100191E90(v104, v26);
          v106 = &v26[v60[20]];
          v107 = *v106;
          v108 = v106[8];
          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v103[2] + 1, 1);
            v103 = v389;
          }

          v110 = v103[2];
          v109 = v103[3];
          if (v110 >= v109 >> 1)
          {
            sub_100190A20((v109 > 1), v110 + 1, 1);
            v103 = v389;
          }

          v103[2] = v110 + 1;
          v111 = &v103[2 * v110];
          v111[4] = v107;
          *(v111 + 40) = v108;
          v104 += v105;
          --v102;
          v60 = v388;
        }

        while (v102);
      }

      v112 = sub_1001920D8(v103);

      sub_10018FD68(v112, 0xD000000000000019, 0x800000010025BEB0);
      v113 = v387;
      v114 = *(v387 + 16);
      v115 = _swiftEmptyArrayStorage;
      if (v114)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v114, sub_100190A20);
        v116 = v113 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v117 = *(v385 + 72);
        v115 = v389;
        do
        {
          sub_100191E90(v116, v26);
          v118 = &v26[v60[21]];
          v119 = *v118;
          v120 = v118[8];
          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v115[2] + 1, 1);
            v115 = v389;
          }

          v122 = v115[2];
          v121 = v115[3];
          if (v122 >= v121 >> 1)
          {
            sub_100190A20((v121 > 1), v122 + 1, 1);
            v115 = v389;
          }

          v115[2] = v122 + 1;
          v123 = &v115[2 * v122];
          v123[4] = v119;
          *(v123 + 40) = v120;
          v116 += v117;
          --v114;
        }

        while (v114);
      }
    }

    else
    {
      v124 = String._bridgeToObjectiveC()();

      sub_10018FD68(v124, 0xD000000000000019, 0x800000010025BEB0);
      v115 = 0;
    }

    v125 = sub_1001920D8(v115);

    sub_10018FD68(v125, 0xD00000000000001ALL, 0x800000010025BED0);
    v126 = v387;
    if (v387)
    {
      v127 = *(v387 + 16);
      v128 = _swiftEmptyArrayStorage;
      if (v127)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v127, sub_100190A20);
        v129 = v126 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v130 = *(v385 + 72);
        v128 = v389;
        do
        {
          sub_100191E90(v129, v26);
          v131 = &v26[v60[22]];
          v132 = *v131;
          v133 = v131[8];
          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v128[2] + 1, 1);
            v128 = v389;
          }

          v135 = v128[2];
          v134 = v128[3];
          if (v135 >= v134 >> 1)
          {
            sub_100190A20((v134 > 1), v135 + 1, 1);
            v128 = v389;
          }

          v128[2] = v135 + 1;
          v136 = &v128[2 * v135];
          v136[4] = v132;
          *(v136 + 40) = v133;
          v129 += v130;
          --v127;
          v60 = v388;
        }

        while (v127);
      }

      v137 = sub_1001920D8(v128);

      sub_10018FD68(v137, 0xD000000000000016, 0x800000010025BEF0);
      v126 = v387;
      v138 = *(v387 + 16);
      v139 = _swiftEmptyArrayStorage;
      if (v138)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v138, sub_100190A20);
        v140 = v126 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v141 = *(v385 + 72);
        v139 = v389;
        do
        {
          sub_100191E90(v140, v26);
          v142 = &v26[v60[10]];
          v143 = *v142;
          v144 = v142[8];
          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v139[2] + 1, 1);
            v139 = v389;
          }

          v146 = v139[2];
          v145 = v139[3];
          if (v146 >= v145 >> 1)
          {
            sub_100190A20((v145 > 1), v146 + 1, 1);
            v139 = v389;
          }

          v139[2] = v146 + 1;
          v147 = &v139[2 * v146];
          v147[4] = v143;
          *(v147 + 40) = v144;
          v140 += v141;
          --v138;
        }

        while (v138);
        v126 = v387;
      }
    }

    else
    {
      v148 = String._bridgeToObjectiveC()();

      sub_10018FD68(v148, 0xD000000000000016, 0x800000010025BEF0);
      v139 = 0;
    }

    v149 = sub_1001920D8(v139);

    sub_10018FD68(v149, 1769173874, 0xE400000000000000);
    if (v126)
    {
      v150 = *(v126 + 16);
      v151 = _swiftEmptyArrayStorage;
      if (v150)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v150, sub_100190A20);
        v152 = v126 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v153 = *(v385 + 72);
        v151 = v389;
        do
        {
          sub_100191E90(v152, v26);
          v154 = &v26[v60[12]];
          v155 = *v154;
          v156 = v154[8];
          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v151[2] + 1, 1);
            v151 = v389;
          }

          v158 = v151[2];
          v157 = v151[3];
          if (v158 >= v157 >> 1)
          {
            sub_100190A20((v157 > 1), v158 + 1, 1);
            v151 = v389;
          }

          v151[2] = v158 + 1;
          v159 = &v151[2 * v158];
          v159[4] = v155;
          *(v159 + 40) = v156;
          v152 += v153;
          --v150;
        }

        while (v150);
        v126 = v387;
      }

      v160 = sub_1001920D8(v151);

      sub_10018FD68(v160, 7499379, 0xE300000000000000);
      v161 = *(v126 + 16);
      v162 = _swiftEmptyArrayStorage;
      if (v161)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v161, sub_100190A20);
        v163 = v126 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v164 = *(v385 + 72);
        v162 = v389;
        do
        {
          sub_100191E90(v163, v26);
          v165 = &v26[v60[13]];
          v166 = *v165;
          v167 = v165[8];
          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100190A20(0, v162[2] + 1, 1);
            v162 = v389;
          }

          v169 = v162[2];
          v168 = v162[3];
          if (v169 >= v168 >> 1)
          {
            sub_100190A20((v168 > 1), v169 + 1, 1);
            v162 = v389;
          }

          v162[2] = v169 + 1;
          v170 = &v162[2 * v169];
          v170[4] = v166;
          *(v170 + 40) = v167;
          v163 += v164;
          --v161;
        }

        while (v161);
        v126 = v387;
      }
    }

    else
    {
      v171 = String._bridgeToObjectiveC()();

      sub_10018FD68(v171, 7499379, 0xE300000000000000);
      v162 = 0;
    }

    v172 = sub_1001920D8(v162);

    sub_10018FD68(v172, 6382435, 0xE300000000000000);
    if (v126)
    {
      v173 = *(v126 + 16);
      v174 = _swiftEmptyArrayStorage;
      if (v173)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v173, sub_1001909F0);
        v175 = v126 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v176 = *(v385 + 72);
        v174 = v389;
        do
        {
          sub_100191E90(v175, v26);
          v177 = &v26[v60[17]];
          v178 = *v177;
          v179 = v177[8];
          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001909F0(0, v174[2] + 1, 1);
            v174 = v389;
          }

          v181 = v174[2];
          v180 = v174[3];
          if (v181 >= v180 >> 1)
          {
            sub_1001909F0((v180 > 1), v181 + 1, 1);
            v174 = v389;
          }

          v174[2] = v181 + 1;
          v182 = &v174[2 * v181];
          v182[4] = v178;
          *(v182 + 40) = v179;
          v175 += v176;
          --v173;
          v60 = v388;
        }

        while (v173);
      }

      v183 = sub_10018FFE0(v174);

      sub_10018FD68(v183, 0xD00000000000001ALL, 0x800000010025BF10);
      v126 = v387;
      v184 = *(v387 + 16);
      v185 = _swiftEmptyArrayStorage;
      if (v184)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v184, sub_1001909F0);
        v186 = v126 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v187 = *(v385 + 72);
        v185 = v389;
        do
        {
          sub_100191E90(v186, v26);
          v188 = &v26[v60[18]];
          v189 = *v188;
          v190 = v188[8];
          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001909F0(0, v185[2] + 1, 1);
            v185 = v389;
          }

          v192 = v185[2];
          v191 = v185[3];
          if (v192 >= v191 >> 1)
          {
            sub_1001909F0((v191 > 1), v192 + 1, 1);
            v185 = v389;
          }

          v185[2] = v192 + 1;
          v193 = &v185[2 * v192];
          v193[4] = v189;
          *(v193 + 40) = v190;
          v186 += v187;
          --v184;
        }

        while (v184);
        v126 = v387;
      }
    }

    else
    {
      v194 = String._bridgeToObjectiveC()();

      sub_10018FD68(v194, 0xD00000000000001ALL, 0x800000010025BF10);
      v185 = 0;
    }

    v195 = sub_10018FFE0(v185);

    sub_10018FD68(v195, 0xD000000000000018, 0x800000010025BF30);
    if (v126)
    {
      v196 = *(v126 + 16);
      v197 = _swiftEmptyArrayStorage;
      if (v196)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v196, sub_1001909F0);
        v198 = v126 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v199 = *(v385 + 72);
        v197 = v389;
        do
        {
          sub_100191E90(v198, v26);
          v200 = &v26[v60[19]];
          v201 = *v200;
          v202 = v200[8];
          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001909F0(0, v197[2] + 1, 1);
            v197 = v389;
          }

          v204 = v197[2];
          v203 = v197[3];
          if (v204 >= v203 >> 1)
          {
            sub_1001909F0((v203 > 1), v204 + 1, 1);
            v197 = v389;
          }

          v197[2] = v204 + 1;
          v205 = &v197[2 * v204];
          v205[4] = v201;
          *(v205 + 40) = v202;
          v198 += v199;
          --v196;
          v60 = v388;
        }

        while (v196);
        v126 = v387;
      }

      v206 = sub_10018FFE0(v197);

      sub_10018FD68(v206, 0xD000000000000010, 0x800000010025BF50);
      if (!v126)
      {
        v231 = String._bridgeToObjectiveC()();

        sub_10018FD68(v231, 0x6F72656C65636361, 0xEE0058726574656DLL);
        v220 = 0;
        goto LABEL_146;
      }

      v207 = *(v126 + 16);
      v208 = _swiftEmptyArrayStorage;
      if (v207)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v207, sub_1001909F0);
        v209 = v126 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v210 = *(v385 + 72);
        v208 = v389;
        do
        {
          sub_100191E90(v209, v26);
          v211 = &v26[v60[7]];
          v212 = *v211;
          v213 = v211[8];
          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001909F0(0, v208[2] + 1, 1);
            v208 = v389;
          }

          v215 = v208[2];
          v214 = v208[3];
          if (v215 >= v214 >> 1)
          {
            sub_1001909F0((v214 > 1), v215 + 1, 1);
            v208 = v389;
          }

          v208[2] = v215 + 1;
          v216 = &v208[2 * v215];
          v216[4] = v212;
          *(v216 + 40) = v213;
          v209 += v210;
          --v207;
          v60 = v388;
        }

        while (v207);
        v126 = v387;
      }
    }

    else
    {
      v217 = String._bridgeToObjectiveC()();

      sub_10018FD68(v217, 0xD000000000000010, 0x800000010025BF50);
      v208 = 0;
    }

    v218 = sub_10018FFE0(v208);

    sub_10018FD68(v218, 0x6F72656C65636361, 0xEE0058726574656DLL);
    if (!v126)
    {
      v229 = String._bridgeToObjectiveC()();

      sub_10018FD68(v229, 0x6F72656C65636361, 0xEE0059726574656DLL);
      v230 = 0;
      goto LABEL_156;
    }

    v219 = *(v126 + 16);
    v220 = _swiftEmptyArrayStorage;
    if (v219)
    {
      v389 = _swiftEmptyArrayStorage;
      sub_100190208(v219, sub_1001909F0);
      v221 = v126 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
      v222 = *(v385 + 72);
      v220 = v389;
      do
      {
        sub_100191E90(v221, v26);
        v223 = &v26[v60[8]];
        v224 = *v223;
        v225 = v223[8];
        sub_100191EF4(v26, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v220[2] + 1, 1);
          v220 = v389;
        }

        v227 = v220[2];
        v226 = v220[3];
        if (v227 >= v226 >> 1)
        {
          sub_1001909F0((v226 > 1), v227 + 1, 1);
          v220 = v389;
        }

        v220[2] = v227 + 1;
        v228 = &v220[2 * v227];
        v228[4] = v224;
        *(v228 + 40) = v225;
        v221 += v222;
        --v219;
      }

      while (v219);
      v126 = v387;
    }

LABEL_146:
    v232 = sub_10018FFE0(v220);

    sub_10018FD68(v232, 0x6F72656C65636361, 0xEE0059726574656DLL);
    if (!v126)
    {
      v242 = String._bridgeToObjectiveC()();

      sub_10018FD68(v242, 0x6F72656C65636361, 0xEE005A726574656DLL);
      v243 = 0;
      goto LABEL_164;
    }

    v233 = *(v126 + 16);
    v230 = _swiftEmptyArrayStorage;
    if (v233)
    {
      v389 = _swiftEmptyArrayStorage;
      sub_100190208(v233, sub_1001909F0);
      v234 = v126 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
      v235 = *(v385 + 72);
      v230 = v389;
      do
      {
        sub_100191E90(v234, v26);
        v236 = &v26[v60[9]];
        v237 = *v236;
        v238 = v236[8];
        sub_100191EF4(v26, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v230[2] + 1, 1);
          v230 = v389;
        }

        v240 = v230[2];
        v239 = v230[3];
        if (v240 >= v239 >> 1)
        {
          sub_1001909F0((v239 > 1), v240 + 1, 1);
          v230 = v389;
        }

        v230[2] = v240 + 1;
        v241 = &v230[2 * v240];
        v241[4] = v237;
        *(v241 + 40) = v238;
        v234 += v235;
        --v233;
      }

      while (v233);
      v126 = v387;
    }

LABEL_156:
    v244 = sub_10018FFE0(v230);

    sub_10018FD68(v244, 0x6F72656C65636361, 0xEE005A726574656DLL);
    if (!v126)
    {
      v266 = String._bridgeToObjectiveC()();

      sub_10018FD68(v266, 0xD000000000000011, 0x800000010025BF70);
      v257 = 0;
      goto LABEL_174;
    }

    v245 = *(v126 + 16);
    v243 = _swiftEmptyArrayStorage;
    if (v245)
    {
      v389 = _swiftEmptyArrayStorage;
      sub_100190208(v245, sub_1001909F0);
      v246 = v126 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
      v247 = *(v385 + 72);
      v243 = v389;
      do
      {
        sub_100191E90(v246, v26);
        v248 = &v26[v60[5]];
        v249 = *v248;
        v250 = v248[8];
        sub_100191EF4(v26, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v243[2] + 1, 1);
          v243 = v389;
        }

        v252 = v243[2];
        v251 = v243[3];
        if (v252 >= v251 >> 1)
        {
          sub_1001909F0((v251 > 1), v252 + 1, 1);
          v243 = v389;
        }

        v243[2] = v252 + 1;
        v253 = &v243[2 * v252];
        v253[4] = v249;
        *(v253 + 40) = v250;
        v246 += v247;
        --v245;
      }

      while (v245);
    }

LABEL_164:
    v254 = sub_10018FFE0(v243);

    sub_10018FD68(v254, 0xD000000000000011, 0x800000010025BF70);
    v255 = v387;
    if (!v387)
    {
      v280 = String._bridgeToObjectiveC()();

      sub_10018FD68(v280, 0xD000000000000010, 0x800000010025BF90);
      v269 = 0;
      goto LABEL_185;
    }

    v256 = *(v387 + 16);
    v257 = _swiftEmptyArrayStorage;
    if (v256)
    {
      v389 = _swiftEmptyArrayStorage;
      sub_100190208(v256, sub_1001909F0);
      v258 = v255 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
      v259 = *(v385 + 72);
      v257 = v389;
      do
      {
        sub_100191E90(v258, v26);
        v260 = &v26[v60[6]];
        v261 = *v260;
        v262 = v260[8];
        sub_100191EF4(v26, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v257[2] + 1, 1);
          v257 = v389;
        }

        v264 = v257[2];
        v263 = v257[3];
        if (v264 >= v263 >> 1)
        {
          sub_1001909F0((v263 > 1), v264 + 1, 1);
          v257 = v389;
        }

        v257[2] = v264 + 1;
        v265 = &v257[2 * v264];
        v265[4] = v261;
        *(v265 + 40) = v262;
        v258 += v259;
        --v256;
      }

      while (v256);
    }

LABEL_174:
    v267 = sub_10018FFE0(v257);

    sub_10018FD68(v267, 0xD000000000000010, 0x800000010025BF90);
    v255 = v387;
    if (!v387)
    {
      v278 = String._bridgeToObjectiveC()();

      sub_10018FD68(v278, 0x6574656D6F646570, 0xED00006563615072);
      v279 = 0;
      goto LABEL_193;
    }

    v268 = *(v387 + 16);
    v269 = _swiftEmptyArrayStorage;
    if (v268)
    {
      v389 = _swiftEmptyArrayStorage;
      sub_100190208(v268, sub_1001909F0);
      v270 = v255 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
      v271 = *(v385 + 72);
      v269 = v389;
      do
      {
        sub_100191E90(v270, v26);
        v272 = &v26[v60[23]];
        v273 = *v272;
        v274 = v272[8];
        sub_100191EF4(v26, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v269[2] + 1, 1);
          v269 = v389;
        }

        v276 = v269[2];
        v275 = v269[3];
        if (v276 >= v275 >> 1)
        {
          sub_1001909F0((v275 > 1), v276 + 1, 1);
          v269 = v389;
        }

        v269[2] = v276 + 1;
        v277 = &v269[2 * v276];
        v277[4] = v273;
        *(v277 + 40) = v274;
        v270 += v271;
        --v268;
      }

      while (v268);
      v255 = v387;
    }

LABEL_185:
    v281 = sub_10018FFE0(v269);

    sub_10018FD68(v281, 0x6574656D6F646570, 0xED00006563615072);
    if (!v255)
    {
      v305 = String._bridgeToObjectiveC()();

      sub_10018FD68(v305, 0xD000000000000010, 0x800000010025BFB0);
      v294 = 0;
      goto LABEL_204;
    }

    v282 = *(v255 + 16);
    v279 = _swiftEmptyArrayStorage;
    if (v282)
    {
      v389 = _swiftEmptyArrayStorage;
      sub_100190208(v282, sub_1001909F0);
      v283 = v255 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
      v284 = *(v385 + 72);
      v279 = v389;
      do
      {
        sub_100191E90(v283, v26);
        v285 = &v26[v60[24]];
        v286 = *v285;
        v287 = v285[8];
        sub_100191EF4(v26, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v279[2] + 1, 1);
          v279 = v389;
        }

        v289 = v279[2];
        v288 = v279[3];
        if (v289 >= v288 >> 1)
        {
          sub_1001909F0((v288 > 1), v289 + 1, 1);
          v279 = v389;
        }

        v279[2] = v289 + 1;
        v290 = &v279[2 * v289];
        v290[4] = v286;
        *(v290 + 40) = v287;
        v283 += v284;
        --v282;
      }

      while (v282);
    }

LABEL_193:
    v291 = sub_10018FFE0(v279);

    sub_10018FD68(v291, 0xD000000000000010, 0x800000010025BFB0);
    v292 = v387;
    if (!v387)
    {
      v303 = String._bridgeToObjectiveC()();

      sub_10018FD68(v303, 0xD000000000000017, 0x800000010025BFD0);
      v304 = 0;
      goto LABEL_212;
    }

    v293 = *(v387 + 16);
    v294 = _swiftEmptyArrayStorage;
    if (v293)
    {
      v389 = _swiftEmptyArrayStorage;
      sub_100190208(v293, sub_1001909F0);
      v295 = v292 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
      v296 = *(v385 + 72);
      v294 = v389;
      do
      {
        sub_100191E90(v295, v26);
        v297 = &v26[v60[25]];
        v298 = *v297;
        v299 = v297[8];
        sub_100191EF4(v26, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v294[2] + 1, 1);
          v294 = v389;
        }

        v301 = v294[2];
        v300 = v294[3];
        if (v301 >= v300 >> 1)
        {
          sub_1001909F0((v300 > 1), v301 + 1, 1);
          v294 = v389;
        }

        v294[2] = v301 + 1;
        v302 = &v294[2 * v301];
        v302[4] = v298;
        *(v302 + 40) = v299;
        v295 += v296;
        --v293;
      }

      while (v293);
    }

LABEL_204:
    v306 = sub_10018FFE0(v294);

    sub_10018FD68(v306, 0xD000000000000017, 0x800000010025BFD0);
    v307 = v387;
    if (!v387)
    {
      v330 = String._bridgeToObjectiveC()();

      sub_10018FD68(v330, 0xD000000000000018, 0x800000010025BFF0);
      v320 = 0;
      goto LABEL_223;
    }

    v308 = *(v387 + 16);
    v304 = _swiftEmptyArrayStorage;
    if (v308)
    {
      v389 = _swiftEmptyArrayStorage;
      sub_100190208(v308, sub_1001909F0);
      v309 = v307 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
      v310 = *(v385 + 72);
      v304 = v389;
      do
      {
        sub_100191E90(v309, v26);
        v311 = &v26[v60[26]];
        v312 = *v311;
        v313 = v311[8];
        sub_100191EF4(v26, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v304[2] + 1, 1);
          v304 = v389;
        }

        v315 = v304[2];
        v314 = v304[3];
        if (v315 >= v314 >> 1)
        {
          sub_1001909F0((v314 > 1), v315 + 1, 1);
          v304 = v389;
        }

        v304[2] = v315 + 1;
        v316 = &v304[2 * v315];
        v316[4] = v312;
        *(v316 + 40) = v313;
        v309 += v310;
        --v308;
      }

      while (v308);
    }

LABEL_212:
    v317 = sub_10018FFE0(v304);

    sub_10018FD68(v317, 0xD000000000000018, 0x800000010025BFF0);
    v318 = v387;
    if (!v387)
    {
      v329 = String._bridgeToObjectiveC()();

      sub_10018FD68(v329, 0xD000000000000016, 0x800000010025C010);
      goto LABEL_232;
    }

    v319 = *(v387 + 16);
    v320 = _swiftEmptyArrayStorage;
    if (v319)
    {
      v389 = _swiftEmptyArrayStorage;
      sub_100190208(v319, sub_1001909F0);
      v321 = v318 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
      v322 = *(v385 + 72);
      v320 = v389;
      do
      {
        sub_100191E90(v321, v26);
        v323 = &v26[v60[27]];
        v324 = *v323;
        v325 = v323[8];
        sub_100191EF4(v26, _s8SnapshotVMa);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001909F0(0, v320[2] + 1, 1);
          v320 = v389;
        }

        v327 = v320[2];
        v326 = v320[3];
        if (v327 >= v326 >> 1)
        {
          sub_1001909F0((v326 > 1), v327 + 1, 1);
          v320 = v389;
        }

        v320[2] = v327 + 1;
        v328 = &v320[2 * v327];
        v328[4] = v324;
        *(v328 + 40) = v325;
        v321 += v322;
        --v319;
      }

      while (v319);
    }

LABEL_223:
    v331 = sub_10018FFE0(v320);

    sub_10018FD68(v331, 0xD000000000000016, 0x800000010025C010);
    v332 = v387;
    if (v387)
    {
      v333 = *(v387 + 16);
      v334 = _swiftEmptyArrayStorage;
      if (v333)
      {
        v389 = _swiftEmptyArrayStorage;
        sub_100190208(v333, sub_1001909F0);
        v335 = v332 + ((*(v385 + 80) + 32) & ~*(v385 + 80));
        v336 = *(v385 + 72);
        v334 = v389;
        do
        {
          sub_100191E90(v335, v26);
          v337 = &v26[v60[28]];
          v338 = *v337;
          v339 = v337[8];
          sub_100191EF4(v26, _s8SnapshotVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001909F0(0, v334[2] + 1, 1);
            v334 = v389;
          }

          v341 = v334[2];
          v340 = v334[3];
          if (v341 >= v340 >> 1)
          {
            sub_1001909F0((v340 > 1), v341 + 1, 1);
            v334 = v389;
          }

          v334[2] = v341 + 1;
          v342 = &v334[2 * v341];
          v342[4] = v338;
          *(v342 + 40) = v339;
          v335 += v336;
          --v333;
        }

        while (v333);
      }

      goto LABEL_233;
    }

LABEL_232:
    v334 = 0;
LABEL_233:
    v343 = sub_10018FFE0(v334);

    sub_10018FD68(v343, 0xD00000000000001ALL, 0x800000010025C030);
    v344 = v355;
    if ((*(v355 + 40) & 1) == 0)
    {
      v345 = *(v355 + 32);
      v346.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
      sub_10018FD68(v346.super.super.isa, 0xD000000000000010, 0x800000010025C090);
      v344 = v355;
      if ((*(v355 + 56) & 1) == 0)
      {
        v347 = *(v355 + 48);
        v348.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
        sub_10018FD68(v348.super.super.isa, 0xD000000000000013, 0x800000010025C0B0);
        v344 = v355;
      }
    }

    if (*(v344 + 121) != 2)
    {
      v349.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      sub_10018FD68(v349.super.super.isa, 0xD000000000000015, 0x800000010025C070);
      v344 = v355;
    }

    if ((*(v344 + 104) & 1) == 0 && (*(v344 + 120) & 1) == 0)
    {
      v350 = *(v344 + 96);
      v351 = *(v344 + 112);
      v352.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
      sub_10018FD68(v352.super.super.isa, 0x697469736E617274, 0xEE0072756F486E6FLL);
      v353.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
      sub_10018FD68(v353.super.super.isa, 0xD000000000000011, 0x800000010025C050);
    }

    return;
  }

LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
}

uint64_t sub_10018FD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1001906EC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100164498(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_100190864();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_10019053C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_10018FE60()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10018FEA8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, char a16, char a17)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 128) = a3;
  *(result + 136) = a4 & 1;
  v23 = a5;
  if ((a5 & &_mh_execute_header) != 0)
  {
    v23 = 0;
  }

  *(result + 32) = v23;
  *(result + 40) = BYTE4(a5) & 1;
  *(result + 48) = a6;
  *(result + 56) = a7 & 1;
  *(result + 64) = a8;
  *(result + 72) = a9 & 1;
  *(result + 80) = a10;
  *(result + 88) = a11 & 1;
  *(result + 96) = a12;
  *(result + 104) = a13 & 1;
  *(result + 112) = a14;
  *(result + 120) = a15 & 1;
  *(result + 121) = a16;
  *(result + 137) = a17;
  return result;
}

NSString sub_10018FFE0(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      sub_1001909D0(0, v3, 0);
      v4 = _swiftEmptyArrayStorage;
      v5 = (a1 + 40);
      do
      {
        if (*v5)
        {
          v6 = 0;
          v7 = 0xE000000000000000;
        }

        else
        {
          v8 = *(v5 - 1);
          sub_100164A3C(&qword_1002D6CE0, &qword_10024AB10);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_1002497B0;
          *(v9 + 56) = &type metadata for Double;
          *(v9 + 64) = &protocol witness table for Double;
          *(v9 + 32) = v8;
          v6 = String.init(format:_:)();
        }

        v17 = v4;
        v11 = v4[2];
        v10 = v4[3];
        if (v11 >= v10 >> 1)
        {
          v16 = v6;
          v13 = v7;
          sub_1001909D0((v10 > 1), v11 + 1, 1);
          v7 = v13;
          v6 = v16;
          v4 = v17;
        }

        v4[2] = v11 + 1;
        v12 = &v4[2 * v11];
        v12[4] = v6;
        v12[5] = v7;
        v5 += 16;
        --v3;
      }

      while (v3);
    }

    sub_100164A3C(&qword_1002D6CD0, &qword_10024AB08);
    sub_1001926EC();
    BidirectionalCollection<>.joined(separator:)();

    v14 = String._bridgeToObjectiveC()();

    return v14;
  }

  else
  {

    return String._bridgeToObjectiveC()();
  }
}

uint64_t sub_1001901C0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_100190208(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

uint64_t sub_100190298(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100164A3C(&qword_1002D5C68, &qword_10024AB20);
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

uint64_t sub_10019053C(uint64_t result, uint64_t a2)
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
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1001906EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100164498(a2, a3);
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
      sub_100190298(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100164498(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100190864();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
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

id sub_100190864()
{
  v1 = v0;
  sub_100164A3C(&qword_1002D5C68, &qword_10024AB20);
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

char *sub_1001909D0(char *a1, int64_t a2, char a3)
{
  result = sub_100190A70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001909F0(char *a1, int64_t a2, char a3)
{
  result = sub_100190B7C(a1, a2, a3, *v3, &qword_1002D6CC8, &qword_10024AB00);
  *v3 = result;
  return result;
}

char *sub_100190A20(char *a1, int64_t a2, char a3)
{
  result = sub_100190B7C(a1, a2, a3, *v3, &qword_1002D6CC0, &qword_10024AAF8);
  *v3 = result;
  return result;
}

void *sub_100190A50(void *a1, int64_t a2, char a3)
{
  result = sub_100190C74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100190A70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100164A3C(&qword_1002D6CE8, &qword_10024AB18);
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

char *sub_100190B7C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100164A3C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  v17 = 16 * v10;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[v17])
    {
      memmove(v15, v16, v17);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, v17);
  }

  return v12;
}

void *sub_100190C74(void *result, int64_t a2, char a3, void *a4)
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
    sub_100164A3C(&qword_1002D6CB0, &qword_10024AAE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100164A3C(&qword_1002D6CB8, &qword_10024AAF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100190DA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000010025BE90 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010025BF70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010025BF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F72656C65636361 && a2 == 0xEE0058726574656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F72656C65636361 && a2 == 0xEE0059726574656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F72656C65636361 && a2 == 0xEE005A726574656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1769173874 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E6B726F7774656ELL && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7499379 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 6382435 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4E6C656E6E616863 && a2 == 0xED00007265626D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x576C656E6E616863 && a2 == 0xEC00000068746469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x426C656E6E616863 && a2 == 0xEB00000000646E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010025BF10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010025BF30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010025BF50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000019 && 0x800000010025BEB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010025BED0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010025BEF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6574656D6F646570 && a2 == 0xED00006563615072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010025BFB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010025BFD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010025BFF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010025C010 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010025C030 == a2)
  {

    return 24;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

BOOL sub_10019156C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v149 - v11;
  v13 = sub_100164A3C(&qword_1002D6CF0, &qword_10024AB28);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v149 - v16;
  v18 = *(v15 + 56);
  sub_10001A718(a1, &v149 - v16, &unk_1002D7BD0, &unk_10024A800);
  sub_10001A718(a2, &v17[v18], &unk_1002D7BD0, &unk_10024A800);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_1000157F0(v17, &unk_1002D7BD0, &unk_10024A800);
      goto LABEL_9;
    }

LABEL_6:
    sub_1000157F0(v17, &qword_1002D6CF0, &qword_10024AB28);
    return 0;
  }

  sub_10001A718(v17, v12, &unk_1002D7BD0, &unk_10024A800);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v8, &v17[v18], v4);
  sub_100192750(&qword_1002D6CF8, &type metadata accessor for Date);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_1000157F0(v17, &unk_1002D7BD0, &unk_10024A800);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v23 = _s8SnapshotVMa();
  v24 = v23[5];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  v29 = v23[6];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = *(a2 + v29 + 8);
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      return 0;
    }
  }

  v34 = v23[7];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 8);
  if (v36)
  {
    if (!v38)
    {
      return 0;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  v39 = v23[8];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 8);
  if (v41)
  {
    if (!v43)
    {
      return 0;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if (v43)
    {
      return 0;
    }
  }

  v44 = v23[9];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 8);
  if (v46)
  {
    if (!v48)
    {
      return 0;
    }
  }

  else
  {
    if (*v45 != *v47)
    {
      LOBYTE(v48) = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  v49 = v23[10];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = *(a2 + v49 + 8);
  if (v51)
  {
    if (!v53)
    {
      return 0;
    }
  }

  else
  {
    if (*v50 != *v52)
    {
      LOBYTE(v53) = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  v54 = v23[11];
  v55 = (a1 + v54);
  v56 = *(a1 + v54 + 8);
  v57 = (a2 + v54);
  v58 = v57[1];
  if (v56)
  {
    if (!v58)
    {
      return 0;
    }

    if (*v55 != *v57 || v56 != v58)
    {
      v59 = v23;
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v23 = v59;
      if ((v60 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v58)
  {
    return 0;
  }

  v61 = v23[12];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  v64 = (a2 + v61);
  v65 = *(a2 + v61 + 8);
  if (v63)
  {
    if (!v65)
    {
      return 0;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      LOBYTE(v65) = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  v66 = v23[13];
  v67 = (a1 + v66);
  v68 = *(a1 + v66 + 8);
  v69 = (a2 + v66);
  v70 = *(a2 + v66 + 8);
  if (v68)
  {
    if (!v70)
    {
      return 0;
    }
  }

  else
  {
    if (*v67 != *v69)
    {
      LOBYTE(v70) = 1;
    }

    if (v70)
    {
      return 0;
    }
  }

  v71 = v23[14];
  v72 = (a1 + v71);
  v73 = *(a1 + v71 + 8);
  v74 = (a2 + v71);
  v75 = *(a2 + v71 + 8);
  if (v73)
  {
    if (!v75)
    {
      return 0;
    }
  }

  else
  {
    if (*v72 != *v74)
    {
      LOBYTE(v75) = 1;
    }

    if (v75)
    {
      return 0;
    }
  }

  v76 = v23[15];
  v77 = (a1 + v76);
  v78 = *(a1 + v76 + 8);
  v79 = (a2 + v76);
  v80 = v79[1];
  if (v78)
  {
    if (!v80)
    {
      return 0;
    }

    if (*v77 != *v79 || v78 != v80)
    {
      v81 = v23;
      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v23 = v81;
      if ((v82 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v80)
  {
    return 0;
  }

  v83 = v23[16];
  v84 = (a1 + v83);
  v85 = *(a1 + v83 + 8);
  v86 = (a2 + v83);
  v87 = v86[1];
  if (v85)
  {
    if (!v87)
    {
      return 0;
    }

    v88 = v23;
    if ((*v84 != *v86 || v85 != v87) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v88 = v23;
    if (v87)
    {
      return 0;
    }
  }

  v89 = v88[17];
  v90 = (a1 + v89);
  v91 = *(a1 + v89 + 8);
  v92 = (a2 + v89);
  v93 = *(a2 + v89 + 8);
  if (v91)
  {
    if (!v93)
    {
      return 0;
    }
  }

  else
  {
    if (*v90 != *v92)
    {
      LOBYTE(v93) = 1;
    }

    if (v93)
    {
      return 0;
    }
  }

  v94 = v88[18];
  v95 = (a1 + v94);
  v96 = *(a1 + v94 + 8);
  v97 = (a2 + v94);
  v98 = *(a2 + v94 + 8);
  if (v96)
  {
    if (!v98)
    {
      return 0;
    }
  }

  else
  {
    if (*v95 != *v97)
    {
      LOBYTE(v98) = 1;
    }

    if (v98)
    {
      return 0;
    }
  }

  v99 = v88[19];
  v100 = (a1 + v99);
  v101 = *(a1 + v99 + 8);
  v102 = (a2 + v99);
  v103 = *(a2 + v99 + 8);
  if (v101)
  {
    if (!v103)
    {
      return 0;
    }
  }

  else
  {
    if (*v100 != *v102)
    {
      LOBYTE(v103) = 1;
    }

    if (v103)
    {
      return 0;
    }
  }

  v104 = v88[20];
  v105 = (a1 + v104);
  v106 = *(a1 + v104 + 8);
  v107 = (a2 + v104);
  v108 = *(a2 + v104 + 8);
  if (v106)
  {
    if (!v108)
    {
      return 0;
    }
  }

  else
  {
    if (*v105 != *v107)
    {
      LOBYTE(v108) = 1;
    }

    if (v108)
    {
      return 0;
    }
  }

  v109 = v88[21];
  v110 = (a1 + v109);
  v111 = *(a1 + v109 + 8);
  v112 = (a2 + v109);
  v113 = *(a2 + v109 + 8);
  if (v111)
  {
    if (!v113)
    {
      return 0;
    }
  }

  else
  {
    if (*v110 != *v112)
    {
      LOBYTE(v113) = 1;
    }

    if (v113)
    {
      return 0;
    }
  }

  v114 = v88[22];
  v115 = (a1 + v114);
  v116 = *(a1 + v114 + 8);
  v117 = (a2 + v114);
  v118 = *(a2 + v114 + 8);
  if (v116)
  {
    if (!v118)
    {
      return 0;
    }
  }

  else
  {
    if (*v115 != *v117)
    {
      LOBYTE(v118) = 1;
    }

    if (v118)
    {
      return 0;
    }
  }

  v119 = v88[23];
  v120 = (a1 + v119);
  v121 = *(a1 + v119 + 8);
  v122 = (a2 + v119);
  v123 = *(a2 + v119 + 8);
  if (v121)
  {
    if (!v123)
    {
      return 0;
    }
  }

  else
  {
    if (*v120 != *v122)
    {
      LOBYTE(v123) = 1;
    }

    if (v123)
    {
      return 0;
    }
  }

  v124 = v88[24];
  v125 = (a1 + v124);
  v126 = *(a1 + v124 + 8);
  v127 = (a2 + v124);
  v128 = *(a2 + v124 + 8);
  if (v126)
  {
    if (!v128)
    {
      return 0;
    }
  }

  else
  {
    if (*v125 != *v127)
    {
      LOBYTE(v128) = 1;
    }

    if (v128)
    {
      return 0;
    }
  }

  v129 = v88[25];
  v130 = (a1 + v129);
  v131 = *(a1 + v129 + 8);
  v132 = (a2 + v129);
  v133 = *(a2 + v129 + 8);
  if (v131)
  {
    if (!v133)
    {
      return 0;
    }
  }

  else
  {
    if (*v130 != *v132)
    {
      LOBYTE(v133) = 1;
    }

    if (v133)
    {
      return 0;
    }
  }

  v134 = v88[26];
  v135 = (a1 + v134);
  v136 = *(a1 + v134 + 8);
  v137 = (a2 + v134);
  v138 = *(a2 + v134 + 8);
  if (v136)
  {
    if (!v138)
    {
      return 0;
    }
  }

  else
  {
    if (*v135 != *v137)
    {
      LOBYTE(v138) = 1;
    }

    if (v138)
    {
      return 0;
    }
  }

  v139 = v88[27];
  v140 = (a1 + v139);
  v141 = *(a1 + v139 + 8);
  v142 = (a2 + v139);
  v143 = *(a2 + v139 + 8);
  if (v141)
  {
    if (!v143)
    {
      return 0;
    }
  }

  else
  {
    if (*v140 != *v142)
    {
      LOBYTE(v143) = 1;
    }

    if (v143)
    {
      return 0;
    }
  }

  v144 = v88[28];
  v145 = (a1 + v144);
  v146 = *(a1 + v144 + 8);
  v147 = (a2 + v144);
  v148 = *(a2 + v144 + 8);
  if ((v146 & 1) == 0)
  {
    if (*v145 != *v147)
    {
      v148 = 1;
    }

    return (v148 & 1) == 0;
  }

  return (v148 & 1) != 0;
}

unint64_t sub_100191DD4()
{
  result = qword_1002D9AE0[0];
  if (!qword_1002D9AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002D9AE0);
  }

  return result;
}

uint64_t sub_100191E28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100164A3C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100191E90(uint64_t a1, uint64_t a2)
{
  v4 = _s8SnapshotVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100191EF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NSString sub_100191F54(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      sub_1001909D0(0, v3, 0);
      v4 = _swiftEmptyArrayStorage;
      v5 = (a1 + 40);
      v6 = (a1 + 40);
      do
      {
        v8 = *v6;
        v6 += 2;
        v7 = v8;
        if (v8)
        {
          v17 = *(v5 - 1);

          v7 = String.init<A>(describing:)();
        }

        else
        {
          v9 = 0xE000000000000000;
        }

        v18 = v4;
        v11 = v4[2];
        v10 = v4[3];
        if (v11 >= v10 >> 1)
        {
          v13 = v7;
          v14 = v9;
          sub_1001909D0((v10 > 1), v11 + 1, 1);
          v9 = v14;
          v7 = v13;
          v4 = v18;
        }

        v4[2] = v11 + 1;
        v12 = &v4[2 * v11];
        v12[4] = v7;
        v12[5] = v9;
        v5 = v6;
        --v3;
      }

      while (v3);
    }

    sub_100164A3C(&qword_1002D6CD0, &qword_10024AB08);
    sub_1001926EC();
    BidirectionalCollection<>.joined(separator:)();

    v15 = String._bridgeToObjectiveC()();

    return v15;
  }

  else
  {

    return String._bridgeToObjectiveC()();
  }
}

NSString sub_1001920D8(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      sub_1001909D0(0, v3, 0);
      v4 = _swiftEmptyArrayStorage;
      v5 = (a1 + 40);
      do
      {
        if (*v5)
        {
          v6 = 0;
          v7 = 0xE000000000000000;
        }

        else
        {
          v15 = *(v5 - 1);
          v6 = String.init<A>(describing:)();
        }

        v16 = v4;
        v9 = v4[2];
        v8 = v4[3];
        if (v9 >= v8 >> 1)
        {
          v11 = v6;
          v12 = v7;
          sub_1001909D0((v8 > 1), v9 + 1, 1);
          v7 = v12;
          v6 = v11;
          v4 = v16;
        }

        v4[2] = v9 + 1;
        v10 = &v4[2 * v9];
        v10[4] = v6;
        v10[5] = v7;
        v5 += 16;
        --v3;
      }

      while (v3);
    }

    sub_100164A3C(&qword_1002D6CD0, &qword_10024AB08);
    sub_1001926EC();
    BidirectionalCollection<>.joined(separator:)();

    v13 = String._bridgeToObjectiveC()();

    return v13;
  }

  else
  {

    return String._bridgeToObjectiveC()();
  }
}

void sub_1001922C8()
{
  sub_1001923F4();
  if (v0 <= 0x3F)
  {
    sub_100164220(319, &qword_1002D5C00);
    if (v1 <= 0x3F)
    {
      sub_100164220(319, qword_1002D8100);
      if (v2 <= 0x3F)
      {
        sub_100164220(319, &unk_1002D7D10);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001923F4()
{
  if (!qword_1002D7F00)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002D7F00);
    }
  }
}

uint64_t _s8SnapshotV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8SnapshotV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001925E8()
{
  result = qword_1002D9E00[0];
  if (!qword_1002D9E00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002D9E00);
  }

  return result;
}

unint64_t sub_100192640()
{
  result = qword_1002D9F10;
  if (!qword_1002D9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D9F10);
  }

  return result;
}

unint64_t sub_100192698()
{
  result = qword_1002D9F18[0];
  if (!qword_1002D9F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002D9F18);
  }

  return result;
}

unint64_t sub_1001926EC()
{
  result = qword_1002D6CD8;
  if (!qword_1002D6CD8)
  {
    sub_100169B50(&qword_1002D6CD0, &qword_10024AB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6CD8);
  }

  return result;
}

uint64_t sub_100192750(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10019279C(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  [a1 activate];
  return v2;
}

uint64_t sub_1001927E8()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 eventIDWithType:0 interfaceName:0];
  [v3 setEventHandler:0 eventID:v4];

  [*(v0 + 16) stopMonitoringAllEvents];
  [*(v0 + 16) invalidate];

  return v0;
}

uint64_t sub_100192898()
{
  sub_1001927E8();

  return swift_deallocClassInstance();
}

id sub_1001928CC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(v3 + 16);
  if (a2)
  {
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000191C0;
    aBlock[3] = &unk_1002B6820;
    v6 = _Block_copy(aBlock);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v5 interfaceName];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_opt_self();
  v11 = [v10 eventIDWithType:a1 interfaceName:v9];

  [v5 setEventHandler:v6 eventID:v11];
  _Block_release(v6);
  v12 = [v5 interfaceName];
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v15 = [v10 eventIDWithType:a1 interfaceName:v14];

  aBlock[0] = 0;
  v16 = [v5 startMonitoringEvent:v15 error:aBlock];

  if (v16)
  {
    return aBlock[0];
  }

  v18 = aBlock[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100192B30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100192B48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v25 = [v3 RSSI];
  v4 = [v3 networkName];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v7;
    v23 = v6;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v8 = [v3 noise];
  v9 = [v3 CCA];
  v10 = [v3 channel];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 channel];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v3 channel];
  if (v13)
  {
    v14 = v13;
    [v13 width];

    sub_100192D40();
    v15 = BinaryInteger.description.getter();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  result = [v3 channel];
  if (result)
  {
    v19 = result;
    [result band];

    sub_100192D40();
    result = BinaryInteger.description.getter();
  }

  else
  {
    v20 = 0;
  }

  *a1 = v25;
  *(a1 + 8) = 0;
  *(a1 + 16) = v24;
  *(a1 + 24) = v22;
  *(a1 + 32) = v8;
  *(a1 + 40) = 0;
  *(a1 + 48) = v9;
  *(a1 + 56) = 0;
  *(a1 + 64) = v12;
  *(a1 + 72) = v11 == 0;
  *(a1 + 80) = v15;
  *(a1 + 88) = v17;
  *(a1 + 96) = result;
  *(a1 + 104) = v20;
  return result;
}

unint64_t sub_100192D40()
{
  result = qword_1002D6D00;
  if (!qword_1002D6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D6D00);
  }

  return result;
}

__n128 sub_100192DA4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100192DC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100192E24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void *sub_100192ED8()
{
  if (qword_1002D9FA0 != -1)
  {
    swift_once();
  }

  return &unk_1002DBF98;
}

BOOL sub_100192F28()
{
  v1 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  if (!*(*(v0 + 144) + 16) || *(v0 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_numberOfEventsUndersampledOnNoTransition) > 1)
  {
    return 0;
  }

  v13 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_lastNoTransitionEventTimestamp;
  swift_beginAccess();
  sub_10001A718(v0 + v13, v4, &unk_1002D7BD0, &unk_10024A800);
  v14 = *(v6 + 48);
  if (v14(v4, 1, v5) == 1)
  {
    static Date.distantPast.getter();
    if (v14(v4, 1, v5) != 1)
    {
      sub_1000157F0(v4, &unk_1002D7BD0, &unk_10024A800);
    }
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
  }

  static Date.now.getter();
  Date.distance(to:)();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v10, v5);
  v18(v12, v5);
  return v17 >= 3600.0;
}

uint64_t sub_100193194()
{
  v1[5] = v0;
  v1[6] = swift_getObjectType();
  v2 = *(*(sub_100164A3C(&unk_1002D7BD0, &unk_10024A800) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v6 = type metadata accessor for ContinuousClock();
  v1[12] = v6;
  v7 = *(v6 - 8);
  v1[13] = v7;
  v8 = *(v7 + 64) + 15;
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100193300, v0, 0);
}

uint64_t sub_100193300()
{
  v1 = *(v0 + 112);
  v2 = static Duration.seconds(_:)();
  v4 = v3;
  static Clock<>.continuous.getter();
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_1001933E4;
  v6 = *(v0 + 112);

  return sub_10019A818(v2, v4, 0, 0, 1);
}

uint64_t sub_1001933E4()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 40);
  if (v0)
  {
    v9 = sub_100193738;
  }

  else
  {
    v9 = sub_10019356C;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_10019356C()
{
  v1 = v0[6];
  sub_100003E50(&off_1002B69B8, v0[11]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = 0x40AC200000000000;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reached max waiting time %fs after link down, timestamp of next link up is unknown, submitting collected events...", v4, 0xCu);
  }

  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
  v9 = v0[5];

  (*(v7 + 8))(v5, v6);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkUpChange;
  swift_beginAccess();
  sub_10019B228(v8, v9 + v11);
  swift_endAccess();
  sub_100197E7C();
  v12 = v0[14];
  v13 = v0[10];
  v14 = v0[11];
  v15 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_100193738()
{
  v1 = v0[6];
  sub_100003E50(&off_1002B69B8, v0[10]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[16];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Task waiting to submit events after a max waiting time is canceled, link went up earlier than max waiting time", v9, 2u);
  }

  (*(v7 + 8))(v6, v8);
  v10 = v0[14];
  v11 = v0[10];
  v12 = v0[11];
  v13 = v0[7];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100193888(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = swift_getObjectType();
  v3 = type metadata accessor for Logger();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100193958, v1, 0);
}

uint64_t sub_100193958()
{
  v1 = *(v0 + 24);
  sub_100003E50(&off_1002B69B8, *(v0 + 48));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting wistoolTreatDisassocAsBeaconLost to %{BOOL}d", v5, 8u);
  }

  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v10 = *(v0 + 56);

  (*(v7 + 8))(v6, v8);
  *(v9 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_wistoolTreatDisassocAsBeaconLost) = v10;

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100193A98()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v6 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B69B8, v14);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Starting snapshot task...", v17, 2u);
  }

  (*(v11 + 8))(v14, v10);
  static Date.now.getter();
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  v19 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_startTimeOfCurrentSnapshotTask;
  swift_beginAccess();
  sub_10019B228(v9, v1 + v19);
  swift_endAccess();
  v20 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask;
  if (*(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask))
  {
    v21 = *(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask);

    sub_100164A3C(&qword_1002D7A10, &qword_10024AC20);
    Task.cancel()();

    v22 = *(v1 + v20);
  }

  *(v1 + v20) = 0;

  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v1;

  v25 = sub_100193EC0(0, 0, v5, &unk_10024ADD8, v24);
  sub_1000157F0(v5, &qword_1002D7180, &qword_10024ABF0);
  v26 = *(v1 + v20);
  *(v1 + v20) = v25;
}

uint64_t sub_100193E30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002A58;

  return sub_100194400();
}

uint64_t sub_100193EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10001A718(a3, v24 - v10, &qword_1002D7180, &qword_10024ABF0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000157F0(v11, &qword_1002D7180, &qword_10024ABF0);
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

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10019412C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003E50(&off_1002B69B8, v10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Stopping snapshot task...", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_startTimeOfCurrentSnapshotTask;
  swift_beginAccess();
  sub_10019B228(v5, v1 + v15);
  swift_endAccess();
  v16 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask;
  if (*(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask))
  {
    v17 = *(v1 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask);

    sub_100164A3C(&qword_1002D7A10, &qword_10024AC20);
    Task.cancel()();

    v18 = *(v1 + v16);
  }

  *(v1 + v16) = 0;

  return (*((swift_isaMask & *v1) + 0x280))(1);
}

uint64_t sub_100194400()
{
  v1[5] = v0;
  v1[6] = swift_getObjectType();
  v2 = type metadata accessor for ContinuousClock();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v5 = *(*(sub_100164A3C(&unk_1002D7BD0, &unk_10024A800) - 8) + 64) + 15;
  v1[11] = swift_task_alloc();
  v6 = *(*(sub_100164A3C(&qword_1002D7180, &qword_10024ABF0) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v1[13] = v7;
  v8 = *(v7 - 8);
  v1[14] = v8;
  v9 = *(v8 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v1[17] = v10;
  v11 = *(v10 - 8);
  v1[18] = v11;
  v12 = *(v11 + 64) + 15;
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100003738, v0, 0);
}

uint64_t sub_10019460C()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_10019471C, v2, 0);
}

uint64_t sub_10019471C()
{
  if (*(*(v0 + 40) + *(v0 + 176)) == 1)
  {
    v1 = sub_100195DD8()[2];

    if (v1 >= 0x12)
    {
      v2 = *(v0 + 40);
      v3 = *(v0 + 48);
      sub_100003E50(&off_1002B69B8, *(v0 + 120));

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = *(v0 + 192);
        v7 = *(v0 + 40);
        result = swift_slowAlloc();
        *result = 134218496;
        v9 = *(v7 + v6);
        *(result + 4) = v9;
        *(result + 12) = 2048;
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_13;
        }

        v11 = *(v0 + 40);
        *(result + 14) = v10;
        v12 = result;

        *(v12 + 22) = 2048;
        *(v12 + 24) = 2;
        _os_log_impl(&_mh_execute_header, v4, v5, "Undersampling a NO transition event. Current number of undersampled events with NO transition on current network: %ld, increasing to %ld, max. allowed is %ld", v12, 0x20u);
      }

      else
      {
        v13 = *(v0 + 40);
      }

      v14 = *(v0 + 264);
      v15 = *(v0 + 208);
      v17 = *(v0 + 184);
      v16 = *(v0 + 192);
      v19 = *(v0 + 144);
      v18 = *(v0 + 152);
      v20 = *(v0 + 136);
      v21 = *(v0 + 88);
      v22 = *(v0 + 40);
      (*(v0 + 200))(*(v0 + 120), *(v0 + 104));
      sub_1001964D8(0, v18, 0, v14);
      (*(v19 + 16))(v21, v18, v20);
      (*(v19 + 56))(v21, 0, 1, v20);
      swift_beginAccess();
      sub_10019B228(v21, v22 + v17);
      result = swift_endAccess();
      v23 = *(v22 + v16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (!v24)
      {
        v26 = *(v0 + 176);
        v27 = *(v0 + 40);
        *(v27 + *(v0 + 192)) = v25;
        *(v27 + v26) = 0;
        goto LABEL_9;
      }

      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }
  }

LABEL_9:
  v28 = *(v0 + 80);
  static Clock<>.continuous.getter();
  v29 = swift_task_alloc();
  *(v0 + 224) = v29;
  *v29 = v0;
  v29[1] = sub_1001949DC;
  v30 = *(v0 + 80);

  return sub_10019A818(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1001949DC()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 224);
  v5 = *v1;

  v6 = v2[10];
  v7 = v2[8];
  v8 = v2[7];
  v9 = v2[5];
  v10 = (v7 + 8);
  if (v0)
  {

    v11 = *v10;
    v3[30] = *v10;
    v11(v6, v8);
    v12 = sub_100002E98;
  }

  else
  {
    v13 = *v10;
    v3[29] = *v10;
    v13(v6, v8);
    v12 = sub_100194B90;
  }

  return _swift_task_switch(v12, v9, 0);
}

uint64_t sub_100194B90()
{
  *(v0 + 248) = *(v0 + 232);
  v1 = *(v0 + 168);
  v2 = *(v0 + 72);
  v3 = *(v0 + 40);
  (*(v0 + 160))(0);
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_100194C7C;
  v5 = *(v0 + 72);

  return sub_10019A818(4000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100194C7C()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;

  v5 = v2[31];
  v6 = v2[9];
  v7 = v2[8];
  v8 = v2[7];
  v9 = v2[5];
  if (v0)
  {

    v5(v6, v8);
    v10 = sub_10019C104;
  }

  else
  {
    v5(v6, v8);
    v10 = sub_100194E38;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100194E38()
{
  (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  if (static Task<>.isCancelled.getter())
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 176);
    v11 = *(v0 + 152);
    v12 = *(v0 + 40);
    static Date.now.getter();
    if (*(v12 + v10))
    {
      v13 = 1;
    }

    else
    {
      v14 = *(v0 + 40);
      v13 = sub_100192F28() && vcvtd_n_f64_u64(sub_10019B150(0x20000000000001uLL), 0x35uLL) < 0.0025;
    }

    v15 = *(v0 + 128);
    v16 = *(v0 + 48);
    *(*(v0 + 40) + *(v0 + 176)) = v13;
    sub_100003E50(&off_1002B69B8, v15);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 176);
      v20 = *(v0 + 40);
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = *(v20 + v19);

      _os_log_impl(&_mh_execute_header, v17, v18, "Currently undersampling a no transition event: %{BOOL}d", v21, 8u);
    }

    else
    {
      v22 = *(v0 + 40);
    }

    v23 = *(v0 + 128);
    v24 = *(v0 + 104);
    v25 = *(v0 + 112);
    v26 = *(v0 + 40);
    v27 = *(v25 + 8);
    *(v0 + 200) = v27;
    *(v0 + 208) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v23, v24);
    v28 = sub_100002F84();
    *(v0 + 264) = v28 & 1;
    v29 = *(v0 + 40);
    if ((v28 & 1) != 0 || *(v29 + *(v0 + 176)) == 1)
    {
      if ((*(v29 + 152) & 1) == 0)
      {
        v30 = *(v0 + 96);
        v31 = *(v0 + 48);
        v32 = type metadata accessor for TaskPriority();
        (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
        v33 = sub_10019BF0C(&qword_1002D6DA8, type metadata accessor for WiFiToCellTransitionMonitor);
        v34 = swift_allocObject();
        v34[2] = v29;
        v34[3] = v33;
        v34[4] = v29;
        v34[5] = v31;
        swift_retain_n();
        sub_100176B80(0, 0, v30, &unk_10024ADB0, v34);
      }

      v35 = swift_task_alloc();
      *(v0 + 216) = v35;
      *v35 = v0;
      v35[1] = sub_10019460C;
      v36 = *(v0 + 152);
      v37 = *(v0 + 40);

      return sub_100199678(v36);
    }

    else
    {
      v39 = *(v0 + 160);
      v38 = *(v0 + 168);
      sub_1000035A8();
      v39(1);
      v40 = *(v0 + 80);
      static Clock<>.continuous.getter();
      v41 = swift_task_alloc();
      *(v0 + 224) = v41;
      *v41 = v0;
      v41[1] = sub_1001949DC;
      v42 = *(v0 + 80);

      return sub_10019A818(1000000000000000000, 0, 0, 0, 1);
    }
  }
}

uint64_t sub_10019528C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = type metadata accessor for Logger();
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_100195350, a4, 0);
}

uint64_t sub_100195350()
{
  v1 = v0[3];
  sub_100003E50(&off_1002B69B8, v0[6]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting all readers (ioKitReader, motionReader, locationEnvironmentReader)...", v4, 2u);
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 112);
  sub_100182E54();
  v10 = *(v8 + 120);
  v0[7] = v10;
  v11 = *v10;
  v0[8] = *(*v10 + 264);
  v0[9] = (v11 + 264) & 0xFFFFFFFFFFFFLL | 0x360000000000000;

  return _swift_task_switch(sub_1001954B0, v10, 0);
}

uint64_t sub_1001954B0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  (*(v0 + 64))();

  return _swift_task_switch(sub_100195520, v3, 0);
}

uint64_t sub_100195520()
{
  v1 = *(v0[2] + 128);
  v0[10] = v1;
  v2 = *v1 + 312;
  v0[11] = *v2;
  v0[12] = v2 & 0xFFFFFFFFFFFFLL | 0x9549000000000000;
  return _swift_task_switch(sub_100195568, v1, 0);
}

uint64_t sub_100195568()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);
  (*(v0 + 88))();

  return _swift_task_switch(sub_1001955D8, v3, 0);
}

uint64_t sub_1001955D8()
{
  v1 = v0[6];
  *(v0[2] + 152) = 1;

  v2 = v0[1];

  return v2();
}

uint64_t sub_100195644(int a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100164A3C(&qword_1002D7180, &qword_10024ABF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v12) = *(v2 + 152);
  v24 = a1;
  if (v12 == 1)
  {
    *(v2 + 153) = 0;
    v14 = 1;
  }

  else if ((a1 & 1) != 0 && (*(v2 + 153) & 1) == 0)
  {
    v14 = 1;
    *(v2 + 153) = 1;
  }

  else
  {
    v14 = 0;
  }

  sub_100003E50(&off_1002B69B8, v13);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v23 = v10;
    v18 = v17;
    *v17 = 67109888;
    *(v17 + 4) = *(v2 + 152);
    *(v17 + 8) = 1024;
    *(v17 + 10) = *(v2 + 153);

    *(v18 + 14) = 1024;
    *(v18 + 16) = v24 & 1;
    *(v18 + 20) = 1024;
    *(v18 + 22) = v14;
    _os_log_impl(&_mh_execute_header, v15, v16, "Stopping all readers with areReadersRunning %{BOOL}d and forcedReadersStop %{BOOL}d (doForce %{BOOL}d) -> isStopNecessary %{BOOL}d", v18, 0x1Au);
    v10 = v23;
  }

  else
  {
  }

  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    v21 = sub_10019BF0C(&qword_1002D6DA8, type metadata accessor for WiFiToCellTransitionMonitor);
    v22 = swift_allocObject();
    *(v22 + 16) = v2;
    *(v22 + 24) = v21;
    *(v22 + 32) = v24 & 1;
    *(v22 + 40) = v2;
    *(v22 + 48) = ObjectType;
    swift_retain_n();
    sub_100176B80(0, 0, v8, &unk_10024AC00, v22);
  }

  return result;
}

uint64_t sub_10019598C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  *(v6 + 104) = a4;
  v8 = type metadata accessor for Logger();
  *(v6 + 32) = v8;
  v9 = *(v8 - 8);
  *(v6 + 40) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_100195A54, a5, 0);
}

uint64_t sub_100195A54()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100003E50(&off_1002B69B8, *(v0 + 48));

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = *(v0 + 104);
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = v7;
    *(v8 + 8) = 1024;
    *(v8 + 10) = *(v6 + 153);

    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping all readers (ioKitReader, motionReader, locationEnvironmentReader) with doForce %{BOOL}d, forcedReadersStop %{BOOL}d...", v8, 0xEu);
  }

  else
  {
    v9 = *(v0 + 16);
  }

  v10 = *(v0 + 16);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v11 = *(v10 + 120);
  *(v0 + 56) = v11;
  v12 = *v11;
  *(v0 + 64) = *(*v11 + 272);
  *(v0 + 72) = (v12 + 272) & 0xFFFFFFFFFFFFLL | 0x5D58000000000000;

  return _swift_task_switch(sub_100195BE4, v11, 0);
}

uint64_t sub_100195BE4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 16);
  (*(v0 + 64))();

  return _swift_task_switch(sub_100195C54, v3, 0);
}

uint64_t sub_100195C54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 112);
  sub_1001830C4(*(v0 + 104));
  v3 = *(v1 + 128);
  *(v0 + 80) = v3;
  v4 = *v3;
  *(v0 + 88) = *(*v3 + 320);
  *(v0 + 96) = (v4 + 320) & 0xFFFFFFFFFFFFLL | 0x55B7000000000000;

  return _swift_task_switch(sub_100195CFC, v3, 0);
}

uint64_t sub_100195CFC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);
  (*(v0 + 88))(*(v0 + 104));

  return _swift_task_switch(sub_100195D70, v3, 0);
}

uint64_t sub_100195D70()
{
  v1 = v0[6];
  *(v0[2] + 152) = 0;

  v2 = v0[1];

  return v2();
}

void *sub_100195DD8()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for Logger();
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  v3 = __chkstk_darwin(v1);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v47 = &v46 - v5;
  v56 = _s8SnapshotVMa();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v56);
  v54 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  v12 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshots;
  swift_beginAccess();
  v49 = v0;
  v48 = v12;
  v13 = *(v0 + v12);
  v14 = *(v13 + 16);
  v55 = v11 + 8;

  v16 = (v14 + 1);
  v17 = 2 * v14 + 3;
  do
  {
    if (!v14)
    {

      v38 = v50;
      sub_100003E50(&off_1002B69B8, v50);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v39, v40))
      {
        goto LABEL_29;
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = "There are no snapshots with network name not nil";
      goto LABEL_28;
    }

    if (v14 > *(v13 + 16))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    --v14;
    v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v19 = *(v6 + 72);
    sub_100191E90(v13 + v18 + v19 * v14, v11);
    v20 = *&v55[*(v56 + 44)];

    result = sub_10019BE18(v11);
    --v16;
    v17 -= 2;
  }

  while (!v20);

  v21 = *(v49 + v48);
  v22 = (v14 + 1);
  if ((v14 + 1) > *(v21 + 16) || (v23 = (v21 + v18 + *(v56 + 44) + v19 * v14), (v24 = v23[1]) == 0))
  {
    v38 = v47;
    sub_100003E50(&off_1002B69B8, v47);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v39, v40))
    {
      goto LABEL_29;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    v42 = "Invalid snapshot index";
LABEL_28:
    _os_log_impl(&_mh_execute_header, v39, v40, v42, v41, 2u);

LABEL_29:

    (*(v52 + 8))(v38, v53);
    return _swiftEmptyArrayStorage;
  }

  v25 = (v14 - 17);
  if (v22 < 18)
  {
    v25 = 0;
  }

  if (v22 >= v25)
  {
    v52 = v21 + v18;
    v55 = v25;
    if ((v25 & 0x8000000000000000) == 0)
    {
      v26 = *v23;

      v27 = 18;
      if (v16 > 18)
      {
        v27 = v16;
      }

      v28 = v21;
      v29 = v27 - v14 - 19;
      ObjectType = v28;
      v30 = v28 + v18 + v19 * v14;
      v31 = -v19;
      v53 = (v14 + 1);
      while (1)
      {
        if (v55 >= v22)
        {
          goto LABEL_42;
        }

        v33 = v54;
        sub_100191E90(v30, v54);
        v34 = (v33 + *(v56 + 44));
        v35 = v34[1];
        if (!v35)
        {
          break;
        }

        if (*v34 == v26 && v35 == v24)
        {
          result = sub_10019BE18(v54);
        }

        else
        {
          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = sub_10019BE18(v54);
          if ((v37 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v30 += v31;
        --v22;
        if (__CFADD__(v29++, 1))
        {
          v43 = v55;
          v22 = v55;
          goto LABEL_35;
        }
      }

      sub_10019BE18(v54);
LABEL_33:
      v43 = v55;
LABEL_35:

      if (v53 < v22)
      {
        goto LABEL_45;
      }

      if (v22 < v43)
      {
        goto LABEL_46;
      }

      v57[10] = v53;
      v57[11] = v22;
      v57[12] = ObjectType;
      v57[13] = v52;
      v57[14] = 0;
      v57[15] = v17;
      if ((v22 - 1) == v14)
      {

        return _swiftEmptyArrayStorage;
      }

      v44 = sub_10019AFAC(&v14[-v22 + 1], 0);
      v45 = sub_10019B7D0(v57, v44 + v18, &v14[-v22 + 1]) + v22 - 1;

      result = swift_unknownObjectRelease();
      if (v45 == v14)
      {

        return v44;
      }

      goto LABEL_47;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_100196360(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = _s8SnapshotVMa();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = 0;
    while (1)
    {
      if (v13 >= *(a3 + 16))
      {
        __break(1u);
        return result;
      }

      sub_100191E90(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v11);
      v14 = a1(v11);
      result = sub_10019BE18(v11);
      if (v3)
      {

        return a3;
      }

      if ((v14 & 1) == 0)
      {
        break;
      }

      if (v12 == ++v13)
      {
        v13 = v12;
        break;
      }
    }

    if (*(a3 + 16) < v13)
    {
      __break(1u);
    }
  }

  v15 = *(v7 + 80);
  return a3;
}

uint64_t sub_1001964D8(int a1, void (*a2)(char *, void, uint64_t), void *a3, int a4)
{
  v91 = a4;
  v95 = a3;
  v103 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v93 = *(v5 - 8);
  v94 = v5;
  v6 = *(v93 + 64);
  __chkstk_darwin(v5);
  v88 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v96 = &v87 - v10;
  v11 = type metadata accessor for Logger();
  v105 = *(v11 - 8);
  v106 = v11;
  v12 = *(v105 + 64);
  v13 = __chkstk_darwin(v11);
  v98 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v90 = &v87 - v16;
  v17 = __chkstk_darwin(v15);
  v97 = &v87 - v18;
  __chkstk_darwin(v17);
  v92 = &v87 - v19;
  v20 = type metadata accessor for Calendar.Component();
  v21 = *(v20 - 8);
  v22 = v21[8];
  __chkstk_darwin(v20);
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Calendar();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v30 = v21[13];
  v30(v24, enum case for Calendar.Component.weekday(_:), v20);
  v100 = v30;
  v89 = Calendar.component(_:from:)();
  v101 = v21[1];
  v101(v24, v20);
  v31 = *(v26 + 8);
  v31(v29, v25);
  static Calendar.current.getter();
  v30(v24, enum case for Calendar.Component.hour(_:), v20);
  v32 = a2;
  v99 = Calendar.component(_:from:)();
  v33 = v101;
  v101(v24, v20);
  v31(v29, v25);
  static Calendar.current.getter();
  v100(v24, enum case for Calendar.Component.minute(_:), v20);
  v100 = v32;
  v34 = Calendar.component(_:from:)();
  v33(v24, v20);
  LOBYTE(v20) = v103;
  v35 = v102;
  v31(v29, v25);
  v36 = v20;
  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }

  v37 = v35 + 144;
  if (*(*(v35 + 144) + 16) >= 0x18uLL)
  {
    v25 = v92;
    sub_100003E50(&off_1002B69B8, v92);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = 24;
      _os_log_impl(&_mh_execute_header, v38, v39, "Seen minutes of day amount is >= %ld, removing the oldest entry", v24, 0xCu);
    }

    (*(v105 + 8))(v25, v106);
    if (!*(*v37 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v29 = (v35 + 144);
    sub_10019BB04(0, 1, sub_10019AEA8, sub_10019BA5C);
  }

  v40 = v34 - v34 % 5;
  if (__OFSUB__(v34, v34 % 5))
  {
    __break(1u);
    goto LABEL_43;
  }

  v41 = 60 * v99;
  if ((v99 * 60) >> 64 != (60 * v99) >> 63)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v42 = __OFADD__(v41, v40);
  v43 = v41 + v40;
  if (v42)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v25 = v43 + 10;
  if (__OFADD__(v43, 10))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v29 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v37 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_46:
    v29 = sub_10019AEA8(0, *(v29 + 2) + 1, 1, v29);
    *v37 = v29;
  }

  v46 = *(v29 + 2);
  v45 = *(v29 + 3);
  if (v46 >= v45 >> 1)
  {
    v29 = sub_10019AEA8((v45 > 1), v46 + 1, 1, v29);
  }

  *(v29 + 2) = v46 + 1;
  *&v29[8 * v46 + 32] = v25;
  *v37 = v29;
  v47 = v97;
  sub_100003E50(&off_1002B69B8, v97);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134218240;
    *(v50 + 4) = v99;
    *(v50 + 12) = 2048;
    *(v50 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v48, v49, "Added %ld hour, %ld minute to seen minutes of day", v50, 0x16u);
  }

  (*(v105 + 8))(v47, v106);
LABEL_17:
  if (!*(v35 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask) || (v51 = *(v35 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask), , isCancelled = swift_task_isCancelled(), , (isCancelled & 1) != 0))
  {
    v53 = v98;
    sub_100003E50(&off_1002B69B8, v98);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "Transition is relevant but snapshot task is not running. Ignoring...", v56, 2u);
    }

    return (*(v105 + 8))(v53, v106);
  }

  v58 = sub_100195DD8();
  __chkstk_darwin(v58);
  v86 = v100;
  v37 = sub_100196360(sub_10019BFEC, v85, v59);
  v24 = v96;
  if ((v62 & 1) == 0)
  {
    goto LABEL_23;
  }

  v34 = v62;
  v33 = v61;
  v25 = v60;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v68 = swift_dynamicCastClass();
  if (!v68)
  {
    swift_unknownObjectRelease();
    v68 = _swiftEmptyArrayStorage;
  }

  v69 = v68[2];

  if (__OFSUB__(v34 >> 1, v33))
  {
    goto LABEL_48;
  }

  if (v69 != (v34 >> 1) - v33)
  {
LABEL_49:
    swift_unknownObjectRelease();
    v62 = v34;
    v61 = v33;
    v60 = v25;
LABEL_23:
    sub_10019B574(v37, v60, v61, v62);
    v64 = v63;
    v65 = v94;
    v66 = v95;
    v67 = v93;
    goto LABEL_30;
  }

  v64 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v65 = v94;
  v66 = v95;
  v67 = v93;
  if (v64)
  {
    goto LABEL_31;
  }

  v64 = _swiftEmptyArrayStorage;
LABEL_30:
  swift_unknownObjectRelease();
LABEL_31:
  if (v64[2] == 18)
  {
    v70 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_startTimeOfCurrentSnapshotTask;
    swift_beginAccess();
    sub_10001A718(v35 + v70, v24, &unk_1002D7BD0, &unk_10024A800);
    v71 = (*(v67 + 48))(v24, 1, v65);
    if (v71)
    {
      sub_1000157F0(v24, &unk_1002D7BD0, &unk_10024A800);
      v72 = 0;
      if (v66)
      {
LABEL_34:
        v73 = [v66 reason];
        v74 = [v66 subreason];
        v75 = v73;
        v76 = [v66 isInvoluntaryLinkDown];
LABEL_41:
        _s15TransitionEventCMa();
        v107 = v66 == 0;
        sub_10018FEA8(v64, v36 & 1, v72, v71 != 0, v75 | (v107 << 32), v74, v107, 0, 1, 0, 1, v99, 0, v89, 0, v76, v91);
        sub_1000035A8();
        sub_100199A38();
      }
    }

    else
    {
      v82 = v88;
      (*(v67 + 16))(v88, v24, v65);
      sub_1000157F0(v24, &unk_1002D7BD0, &unk_10024A800);
      Date.distance(to:)();
      v84 = v83;
      (*(v67 + 8))(v82, v65);
      v72 = v84;
      if (v66)
      {
        goto LABEL_34;
      }
    }

    v75 = 0;
    v74 = 0;
    v76 = 2;
    goto LABEL_41;
  }

  v77 = v90;
  sub_100003E50(&off_1002B69B8, v90);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 134218240;
    v81 = v64[2];

    *(v80 + 4) = v81;

    *(v80 + 12) = 2048;
    *(v80 + 14) = 18;
    _os_log_impl(&_mh_execute_header, v78, v79, "Number of sending snapshots %ld is not equal to expected (%ld). Not sending a CA event", v80, 0x16u);
  }

  else
  {
  }

  return (*(v105 + 8))(v77, v106);
}

void sub_1001970D4()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v5 = *v0;
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_20;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);

    if (!v2)
    {
LABEL_6:
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_16:
    if (v4)
    {
      sub_10019BCDC(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

BOOL sub_1001971AC(uint64_t a1)
{
  v2 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  sub_10001A718(a1, &v11 - v4, &unk_1002D7BD0, &unk_10024A800);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000157F0(v5, &unk_1002D7BD0, &unk_10024A800);
    return 0;
  }

  else
  {
    Date.distance(to:)();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
    return v10 <= 105.0;
  }
}

uint64_t sub_100197308(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v2[15] = swift_getObjectType();
  v3 = *(*(sub_100164A3C(&qword_1002D7180, &qword_10024ABF0) - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v4 = *(*(sub_100164A3C(&unk_1002D7BD0, &unk_10024A800) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v2[18] = v5;
  v6 = *(v5 - 8);
  v2[19] = v6;
  v7 = *(v6 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v2[24] = v8;
  v9 = *(v8 - 8);
  v2[25] = v9;
  v10 = *(v9 + 64) + 15;
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_1001974C4, v1, 0);
}

uint64_t sub_1001974C4()
{
  v102 = v0;
  if ([*(v0 + 104) type] != 6)
  {
    goto LABEL_17;
  }

  v1 = [*(v0 + 104) info];
  if (!v1)
  {
    v16 = *(v0 + 104);
    v17 = *(v0 + 120);
    sub_100003E50(&off_1002B69B8, *(v0 + 160));
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 152);
    v23 = *(v0 + 160);
    v24 = *(v0 + 144);
    if (v21)
    {
      v25 = *(v0 + 104);
      v100 = *(v0 + 160);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v101 = v27;
      *v26 = 136315138;
      v28 = [v25 description];
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = sub_10017A8A8(v29, v31, &v101);

      *(v26 + 4) = v32;
      v33 = "Link changed: %s. Info of the event is nil. Ignoring the event...";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v19, v20, v33, v26, 0xCu);
      sub_100164B98(v27);

      (*(v22 + 8))(v100, v24);
      goto LABEL_17;
    }

LABEL_16:

    (*(v22 + 8))(v23, v24);
LABEL_17:
    v44 = *(v0 + 112);
    if (*(v44 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask))
    {
      v45 = *(v44 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask);

      isCancelled = swift_task_isCancelled();

      v47 = isCancelled ^ 1;
    }

    else
    {
      v47 = 0;
    }

    goto LABEL_20;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

    goto LABEL_12;
  }

  v6 = sub_100164498(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_12:

LABEL_13:
    v34 = *(v0 + 104);
    v35 = *(v0 + 120);
    sub_100003E50(&off_1002B69B8, *(v0 + 168));
    v36 = v34;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    v37 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 168);
    v24 = *(v0 + 144);
    v22 = *(v0 + 152);
    if (v37)
    {
      v38 = *(v0 + 104);
      v100 = *(v0 + 168);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v101 = v27;
      *v26 = 136315138;
      v39 = [v38 description];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = sub_10017A8A8(v40, v42, &v101);

      *(v26 + 4) = v43;
      v33 = "Link changed: %s. Link status of the event is nil";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  sub_1001675EC(*(v3 + 56) + 32 * v6, v0 + 16);

  sub_10019B1DC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v9 = *(v0 + 96);
  if ([v9 isLinkDown] && (objc_msgSend(v9, "reason") == 2 || *(*(v0 + 112) + OBJC_IVAR___WISWiFiToCellTransitionMonitor_wistoolTreatDisassocAsBeaconLost) == 1 && objc_msgSend(v9, "reason") == 8))
  {
    v11 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 192);
    v13 = *(v0 + 112);
    static Date.now.getter();
    v14 = sub_100002F84();
    v15 = v9;
    sub_1001964D8(1, v10, v9, v14 & 1);

    (*(v11 + 8))(v10, v12);
  }

  if ([v9 isLinkDown])
  {
    v57 = *(v0 + 120);
    sub_100003E50(&off_1002B69B8, *(v0 + 176));
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "WiFi link changed state to DOWN", v60, 2u);
    }

    v61 = *(v0 + 192);
    v62 = *(v0 + 200);
    v63 = *(v0 + 176);
    v64 = *(v0 + 144);
    v65 = *(v0 + 152);
    v66 = *(v0 + 136);
    v67 = *(v0 + 112);

    (*(v65 + 8))(v63, v64);
    static Date.now.getter();
    (*(v62 + 56))(v66, 0, 1, v61);
    v68 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkDownChange;
    swift_beginAccess();
    sub_10019B228(v66, v67 + v68);
    swift_endAccess();
    sub_10019412C();
    sub_1000035A8();
    v69 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask;
    if (*(v67 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask))
    {
      v70 = *(v67 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask);

      sub_100164A3C(&qword_1002D7A10, &qword_10024AC20);
      Task.cancel()();

      v71 = *(v67 + v69);
    }

    v90 = *(v0 + 128);
    v91 = *(v0 + 112);
    *(v67 + v69) = 0;

    v92 = type metadata accessor for TaskPriority();
    (*(*(v92 - 8) + 56))(v90, 1, 1, v92);
    v93 = swift_allocObject();
    v93[2] = 0;
    v93[3] = 0;
    v93[4] = v91;

    v94 = sub_100193EC0(0, 0, v90, &unk_10024AC30, v93);
    sub_1000157F0(v90, &qword_1002D7180, &qword_10024ABF0);
    v95 = *(v67 + v69);
    *(v67 + v69) = v94;
  }

  else
  {
    v72 = *(v0 + 112);
    if (!*(v72 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask) || (v73 = *(v72 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask), , v74 = swift_task_isCancelled(), , (v74 & 1) != 0))
    {
      v75 = *(v0 + 120);
      sub_100003E50(&off_1002B69B8, *(v0 + 184));
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "WiFi link changed state to UP", v78, 2u);
      }

      v79 = *(v0 + 192);
      v80 = *(v0 + 200);
      v81 = *(v0 + 184);
      v82 = *(v0 + 144);
      v83 = *(v0 + 152);
      v84 = *(v0 + 136);
      v85 = *(v0 + 112);

      (*(v83 + 8))(v81, v82);
      *(v85 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_numberOfEventsUndersampledOnNoTransition) = 0;
      static Date.now.getter();
      (*(v80 + 56))(v84, 0, 1, v79);
      v86 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkUpChange;
      swift_beginAccess();
      sub_10019B228(v84, v85 + v86);
      swift_endAccess();
      v87 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask;
      if (*(v85 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask))
      {
        v88 = *(v85 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_submitEventsAfterMaxWaitingTimeTask);

        sub_100164A3C(&qword_1002D7A10, &qword_10024AC20);
        Task.cancel()();

        v89 = *(v85 + v87);
      }

      v96 = *(v0 + 112);
      *(v85 + v87) = 0;

      sub_100197E7C();
      sub_100193A98();
    }
  }

  v97 = *(v0 + 112);
  if (*(v97 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask))
  {
    v98 = *(v97 + OBJC_IVAR___WISWiFiToCellTransitionMonitor_snapshotTask);

    v99 = swift_task_isCancelled();

    v47 = v99 ^ 1;
  }

  else
  {

    v47 = 0;
  }

LABEL_20:
  v48 = *(v0 + 208);
  v49 = *(v0 + 176);
  v50 = *(v0 + 184);
  v52 = *(v0 + 160);
  v51 = *(v0 + 168);
  v54 = *(v0 + 128);
  v53 = *(v0 + 136);

  v55 = *(v0 + 8);

  return v55(v47 & 1);
}

uint64_t sub_100197DEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100002960;

  return sub_100193194();
}

uint64_t sub_100197E7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v101 = type metadata accessor for Logger();
  v98 = *(v101 - 8);
  v3 = *(v98 + 64);
  v4 = __chkstk_darwin(v101);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v105 = &v81 - v7;
  v8 = sub_100164A3C(&unk_1002D7BD0, &unk_10024A800);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v102 = &v81 - v14;
  v15 = __chkstk_darwin(v13);
  v86 = &v81 - v16;
  __chkstk_darwin(v15);
  v18 = &v81 - v17;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v91 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v81 - v24;
  v26 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkDownChange;
  swift_beginAccess();
  v85 = v26;
  v27 = v20;
  sub_10001A718(v1 + v26, v18, &unk_1002D7BD0, &unk_10024A800);
  v103 = v20[6];
  v104 = v20 + 6;
  if (v103(v18, 1, v19) != 1)
  {
    v32 = v20[4];
    v100 = v19;
    v90 = v20 + 4;
    v89 = v32;
    v32(v25, v18, v19);
    v33 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_transitionEventsToSend;
    swift_beginAccess();
    v34 = *(v1 + v33);
    if (v34 >> 62)
    {
      if (v34 < 0)
      {
        v80 = *(v1 + v33);
      }

      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (!v35)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_31;
      }
    }

    result = _s23CompleteTransitionEventCMa();
    v99 = result;
    if (v35 < 1)
    {
      __break(1u);
      return result;
    }

    v82 = v33;
    v93 = v25;
    v84 = v12;
    v36 = OBJC_IVAR___WISWiFiToCellTransitionMonitor_timestampOfLastLinkUpChange;
    v95 = v34 & 0xC000000000000001;

    v96 = v36;
    swift_beginAccess();
    v37 = v34;
    v38 = 0;
    v94 = (v98 + 8);
    v83 = v20;
    v92 = (v20 + 1);
    *&v39 = 136315394;
    v87 = v39;
    v40 = v105;
    v98 = v34;
    v97 = v35;
    v88 = ObjectType;
    do
    {
      if (v95)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v50 = *(v37 + 8 * v38 + 32);
      }

      sub_100003E50(&off_1002B69B8, v40);

      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = v1;
        v54 = v101;
        v55 = swift_slowAlloc();
        v107[0] = swift_slowAlloc();
        *v55 = v87;
        v56 = sub_100180154();
        v57 = *v56;
        v58 = v56[1];

        v59 = sub_10017A8A8(v57, v58, v107);

        *(v55 + 4) = v59;
        *(v55 + 12) = 2080;
        if (*(v50 + 40))
        {
          v60 = 0xE200000000000000;
          v61 = 20302;
        }

        else
        {
          v106 = *(v50 + 32);
          sub_10019C0B0();
          v61 = BinaryInteger.description.getter();
          v60 = v62;
        }

        v63 = sub_10017A8A8(v61, v60, v107);

        *(v55 + 14) = v63;
        _os_log_impl(&_mh_execute_header, v51, v52, "Sending a CA event %s for %s transition...", v55, 0x16u);
        swift_arrayDestroy();

        (*v94)(v105, v54);
        v1 = v53;
        ObjectType = v88;
      }

      else
      {

        (*v94)(v40, v101);
      }

      v64 = *(v50 + 16);
      v65 = v100;
      v66 = v102;
      if (v64)
      {
        v67 = *(v64 + 16);
        if (v67)
        {
          v68 = v67 - 1;
          v69 = *(_s8SnapshotVMa() - 8);
          v70 = v64 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v68;
          v71 = v86;
          sub_10001A718(v70, v86, &unk_1002D7BD0, &unk_10024A800);
          if (v103(v71, 1, v65) == 1)
          {
            sub_1000157F0(v71, &unk_1002D7BD0, &unk_10024A800);
            v64 = 0;
            v72 = 1;
          }

          else
          {
            Date.distance(to:)();
            v74 = v73;
            (*v92)(v71, v65);
            v72 = 0;
            v64 = v74;
          }

          v66 = v102;
        }

        else
        {
          v64 = 0;
          v72 = 1;
        }
      }

      else
      {
        v72 = 1;
      }

      sub_10001A718(v1 + v96, v66, &unk_1002D7BD0, &unk_10024A800);
      v75 = v65;
      v76 = v103(v66, 1, v65);
      if (v76 == 1)
      {
        v47 = 0;
      }

      else
      {
        v41 = ObjectType;
        v42 = v1;
        v43 = v91;
        v89(v91, v66, v75);
        Date.distance(to:)();
        v45 = v44;
        v46 = v43;
        v1 = v42;
        ObjectType = v41;
        (*v92)(v46, v75);
        v47 = v45;
      }

      ++v38;

      sub_10018CE08(v48, v64, v72, v47, v76 == 1);
      v49 = *sub_100180104();

      sub_100180160();

      v37 = v98;
      v40 = v105;
    }

    while (v97 != v38);

    v12 = v84;
    v27 = v83;
    v25 = v93;
    v33 = v82;
LABEL_31:
    v77 = v100;
    (v27[1])(v25, v100);
    v78 = *(v1 + v33);
    *(v1 + v33) = _swiftEmptyArrayStorage;

    (v27[7])(v12, 1, 1, v77);
    v79 = v85;
    swift_beginAccess();
    sub_10019B228(v12, v1 + v79);
    return swift_endAccess();
  }

  sub_1000157F0(v18, &unk_1002D7BD0, &unk_10024A800);
  sub_100003E50(&off_1002B69B8, v6);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Skipping sending CA events: no link down event is logged", v30, 2u);
  }

  return (*(v98 + 8))(v6, v101);
}