uint64_t sub_10001ABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001AC48, v8, v7);
}

uint64_t sub_10001AC48()
{
  v1 = v0[9];
  v2 = v0[7];

  if (!v2)
  {
    v16 = v0[4];
    v15 = v0[5];
    v17 = objc_allocWithZone(ISIcon);
    v18 = String._bridgeToObjectiveC()();
    v9 = [v17 initWithBundleIdentifier:v18];

    if (v16 == 0xD000000000000026 && 0x8000000100045470 == v15 || (v19 = v0[4], v20 = v0[5], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v21 = String._bridgeToObjectiveC()();
      v14 = [objc_opt_self() imageNamed:v21];

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v0[6] != 0xD000000000000013 || 0x80000001000454A0 != v0[7])
  {
    v4 = v0[7];
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v0[6];
    if ((v5 & 1) == 0)
    {
      v22 = objc_allocWithZone(ISIcon);
      v23 = String._bridgeToObjectiveC()();
      v9 = [v22 initWithType:v23];

      goto LABEL_14;
    }
  }

  v7 = objc_allocWithZone(ISIcon);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithBundleIdentifier:v8];

  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v10];

  if (!v11)
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v12 = [v11 imageWithRenderingMode:2];

  v13 = [objc_opt_self() whiteColor];
  v14 = [v12 imageWithTintColor:v13];

LABEL_15:
  v24 = v0[8];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25 = v0[2];
  if (*(v25 + 16) && (v26 = sub_100029BB8(v0[3]), (v27 & 1) != 0))
  {
    v28 = v0[3];
    v29 = *(*(v25 + 56) + 8 * v26);

    sub_10001108C(v9, v28);
    sub_1000110A0(v14, v28);
  }

  else
  {
  }

  v30 = v0[8];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v0[2])
  {
    v31 = v0[3];
    sub_10001108C(v9, v31);
    sub_1000110A0(v14, v31);
  }

  v32 = v0[1];

  return v32();
}

uint64_t sub_10001B02C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v38[0];
  if (!*(v38[0] + 16))
  {
  }

  v12 = sub_100029BB8(a1);
  if ((v13 & 1) == 0)
  {
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  v15 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v16 = *(v14 + v15);
  if (*(v16 + 16))
  {

    v17 = sub_100029BB8(a1);
    if (v18)
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (LOBYTE(v38[0]) != 1 || (a2 & 1) != 0)
      {
        v37 = v19;
        if (qword_10005A198 != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        sub_100005D84(v21, qword_10005B420);
        (*(v7 + 16))(v10, a1, v6);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v35 = v24;
          v36 = swift_slowAlloc();
          v38[0] = v36;
          *v24 = 136315138;
          sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID);
          v25 = dispatch thunk of CustomStringConvertible.description.getter();
          v27 = v26;
          (*(v7 + 8))(v10, v6);
          v28 = sub_100029504(v25, v27, v38);

          v29 = v35;
          *(v35 + 1) = v28;
          _os_log_impl(&_mh_execute_header, v22, v23, "Ending session for task identifier %s", v29, 0xCu);
          sub_100005E20(v36);
        }

        else
        {

          (*(v7 + 8))(v10, v6);
        }

        sub_1000153A0();
        swift_getKeyPath();
        swift_getKeyPath();
        v30 = static Published.subscript.modify();
        sub_1000191D8(a1, &qword_10005A5A0, &qword_10003E430);

        v30(v38, 0);

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v31 = v38[0];
        if (v38[0])
        {
          v32 = swift_allocObject();
          *(v32 + 16) = v31;
          *(v32 + 24) = v3;

          v33 = v3;
          sub_100011FE4(a1, sub_1000237D8, v32);
        }

        v34 = *&v3[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_pillController];
        sub_100006FF8();
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

uint64_t sub_10001B550(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  result = swift_beginAccess();
  if (!*(*(a1 + v4) + 16))
  {
    sub_1000153A0();
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = a2;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10001B5F0()
{
  v46 = type metadata accessor for UUID();
  v1 = *(v46 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v46);
  v45 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005D3C(&qword_10005B5B0, &qword_10003FB80);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v41 = v0;
  static Published.subscript.getter();
  v11 = v10;

  v13 = 0;
  v14 = *(v47 + 64);
  v35 = v47 + 64;
  v39 = v1;
  v40 = v47;
  v15 = 1 << *(v47 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v36 = v1 + 16;
  v37 = v11;
  v43 = (v1 + 8);
  v44 = (v1 + 32);
  v38 = v8;
  v42 = v18;
  if ((v16 & v14) != 0)
  {
    while (1)
    {
      v19 = v13;
LABEL_12:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v39;
      v25 = v40;
      (*(v39 + 16))(v45, *(v40 + 48) + *(v39 + 72) * v23, v46);
      v26 = *(*(v25 + 56) + 8 * v23);
      v27 = sub_100005D3C(&qword_10005B5B8, &qword_10003FB88);
      v28 = *(v27 + 48);
      v8 = v38;
      (*(v24 + 32))();
      *&v8[v28] = v26;
      (*(*(v27 - 8) + 56))(v8, 0, 1, v27);

      v21 = v19;
      v11 = v37;
LABEL_13:
      sub_100023720(v8, v11);
      v29 = sub_100005D3C(&qword_10005B5B8, &qword_10003FB88);
      if ((*(*(v29 - 8) + 48))(v11, 1, v29) == 1)
      {
      }

      v30 = *(v11 + *(v29 + 48));

      v31 = v45;
      v32 = v46;
      (*v44)(v45, v11, v46);
      sub_10001B02C(v31, 0);
      result = (*v43)(v31, v32);
      v13 = v21;
      v18 = v42;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v18 <= v13 + 1)
    {
      v20 = v13 + 1;
    }

    else
    {
      v20 = v18;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v19 >= v18)
      {
        v33 = sub_100005D3C(&qword_10005B5B8, &qword_10003FB88);
        (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
        v17 = 0;
        goto LABEL_13;
      }

      v17 = *(v35 + 8 * v19);
      ++v13;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001BA08@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v38 = a8;
  v33 = a7;
  v34 = a5;
  v41 = a4;
  v42 = a6;
  v35 = a3;
  v40 = a2;
  v9 = type metadata accessor for UUID();
  v36 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v33 - v14;
  v39 = &v33 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  type metadata accessor for MainActor();

  v38 = v38;

  v18 = static MainActor.shared.getter();
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = v18;
  *(v24 + 3) = &protocol witness table for MainActor;
  *(v24 + 4) = v17;
  (*(v10 + 32))(&v24[v19], v37, v36);
  *&v24[v20] = v38;
  v25 = &v24[v21];
  v26 = v35;
  *v25 = v40;
  *(v25 + 1) = v26;
  v27 = &v24[v22];
  v28 = v34;
  *v27 = v41;
  *(v27 + 1) = v28;
  v29 = &v24[v23];
  v30 = v33;
  *v29 = v42;
  *(v29 + 1) = v30;
  v31 = &v24[(v23 + 23) & 0xFFFFFFFFFFFFFFF8];
  *v31 = 0;
  *(v31 + 1) = 0;

  sub_100018ED4(0, 0, v39, &unk_10003FD80, v24);
}

uint64_t sub_10001BD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v42 = a5;
  v47 = a4;
  v48 = a8;
  v38 = a7;
  v39 = a3;
  v45 = a2;
  v46 = a6;
  v37 = a9;
  v43 = a10;
  v11 = type metadata accessor for UUID();
  v40 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v41 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v36 - v16;
  v44 = &v36 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  type metadata accessor for MainActor();

  v43 = v43;

  v20 = static MainActor.shared.getter();
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 2) = v20;
  *(v26 + 3) = &protocol witness table for MainActor;
  *(v26 + 4) = v19;
  (*(v12 + 32))(&v26[v21], v41, v40);
  *&v26[v22] = v43;
  v27 = &v26[v23];
  v28 = v39;
  *v27 = v45;
  *(v27 + 1) = v28;
  v29 = &v26[v24];
  v30 = v38;
  *v29 = v46;
  *(v29 + 1) = v30;
  v31 = &v26[v25];
  v32 = v37;
  *v31 = v48;
  *(v31 + 1) = v32;
  v33 = &v26[(v25 + 23) & 0xFFFFFFFFFFFFFFF8];
  v34 = v42;
  *v33 = v47;
  *(v33 + 1) = v34;

  sub_100018ED4(0, 0, v44, &unk_10003FCD0, v26);
}

uint64_t sub_10001C1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 480) = v21;
  *(v8 + 488) = v22;
  *(v8 + 448) = v19;
  *(v8 + 464) = v20;
  *(v8 + 432) = a7;
  *(v8 + 440) = a8;
  *(v8 + 416) = a5;
  *(v8 + 424) = a6;
  *(v8 + 408) = a4;
  v9 = type metadata accessor for Date();
  *(v8 + 496) = v9;
  v10 = *(v9 - 8);
  *(v8 + 504) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  *(v8 + 528) = v12;
  v13 = *(v12 - 8);
  *(v8 + 536) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 592) = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 600) = v16;
  *(v8 + 608) = v15;

  return _swift_task_switch(sub_10001C368, v16, v15);
}

uint64_t sub_10001C368()
{
  v94 = v0;
  v1 = *(v0 + 408);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 616) = Strong;
  if (!Strong)
  {
    v42 = *(v0 + 592);

LABEL_17:
    v58 = *(v0 + 584);
    v59 = *(v0 + 576);
    v60 = *(v0 + 568);
    v61 = *(v0 + 560);
    v62 = *(v0 + 552);
    v63 = *(v0 + 544);
    v64 = *(v0 + 520);
    v65 = *(v0 + 512);

    v66 = *(v0 + 8);

    return v66();
  }

  v3 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(*(v0 + 352) + 16))
  {
    sub_100029BB8(*(v0 + 416));
    if (v4)
    {
      v5 = *(v0 + 592);

      if (qword_10005A198 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 552);
      v7 = *(v0 + 536);
      v8 = *(v0 + 528);
      v9 = *(v0 + 416);
      v10 = type metadata accessor for Logger();
      sub_100005D84(v10, qword_10005B420);
      (*(v7 + 16))(v6, v9, v8);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 552);
      v15 = *(v0 + 536);
      v16 = *(v0 + 528);
      if (v13)
      {
        v17 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v93[0] = v92;
        *v17 = 136315138;
        sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID);
        v18 = v3;
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        (*(v15 + 8))(v14, v16);
        v22 = v19;
        v3 = v18;
        v23 = sub_100029504(v22, v21, v93);

        *(v17 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v11, v12, "BackgroundActivitySessionsController: Received call to start new activity for existing task ID %s, converting to an updateProgress call", v17, 0xCu);
        sub_100005E20(v92);
      }

      else
      {

        (*(v15 + 8))(v14, v16);
      }

      sub_10001D3A8(*(v0 + 424), *(v0 + 416));

      goto LABEL_17;
    }
  }

  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v24 = *(v0 + 584);
  v25 = *(v0 + 536);
  v26 = *(v0 + 528);
  v27 = *(v0 + 440);
  v28 = *(v0 + 416);
  v29 = type metadata accessor for Logger();
  v30 = sub_100005D84(v29, qword_10005B420);
  v90 = *(v25 + 16);
  v90(v24, v28, v26);

  v74 = v30;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v34 = *(v0 + 584);
  v35 = *(v0 + 536);
  v36 = *(v0 + 528);
  if (v33)
  {
    v86 = *(v0 + 432);
    v88 = *(v0 + 440);
    v37 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v37 = 136315394;
    sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    v91 = *(v35 + 8);
    v91(v34, v36);
    v41 = sub_100029504(v38, v40, v93);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    *(v37 + 14) = sub_100029504(v86, v88, v93);
    _os_log_impl(&_mh_execute_header, v31, v32, "Starting new activity for task ID %s and bundle ID %s", v37, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v91 = *(v35 + 8);
    v91(v34, v36);
  }

  v43 = *(v0 + 576);
  v44 = *(v0 + 568);
  v75 = *(v0 + 560);
  v45 = *(v0 + 528);
  v84 = *(v0 + 520);
  v85 = *(v0 + 504);
  v87 = *(v0 + 512);
  v89 = *(v0 + 496);
  v81 = *(v0 + 464);
  v82 = *(v0 + 472);
  v79 = *(v0 + 448);
  v80 = *(v0 + 456);
  v77 = *(v0 + 432);
  v78 = *(v0 + 440);
  v47 = *(v0 + 416);
  v46 = *(v0 + 424);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v0 + 624) = *(*(v0 + 360) + 16);

  v48 = [v46 ns];
  *(v0 + 632) = v48;
  v90(v43, v47, v45);
  v49 = type metadata accessor for BackgroundActivitySessionTask(0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  *(v0 + 640) = v52;
  v53 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__icon;
  *(v0 + 368) = 0;
  v76 = v48;
  sub_100005D3C(&qword_10005AD40, "ʎ");
  Published.init(initialValue:)();
  v54 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__iconImageOverride;
  *(v0 + 376) = 0;
  sub_100005D3C(&unk_10005B650, &qword_10003FCE0);
  Published.init(initialValue:)();
  v83 = v45;
  v90(v44, v43, v45);
  swift_beginAccess();
  v90(v75, v44, v45);
  Published.init(initialValue:)();
  v91(v44, v45);
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 304) = v77;
  *(v0 + 312) = v78;

  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 320) = v79;
  *(v0 + 328) = v80;

  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 336) = v81;
  *(v0 + 344) = v82;

  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 400) = v76;
  sub_100009E1C(0, &qword_10005AD30, NSProgress_ptr);
  v55 = v76;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v56 = sub_100005D3C(&unk_10005B660, &qword_10003F528);
  (*(*(v56 - 8) + 8))(v52 + v53, v56);
  *(v0 + 384) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v57 = sub_100005D3C(&qword_10005B3B8, &qword_10003F530);
  (*(*(v57 - 8) + 8))(v52 + v54, v57);
  *(v0 + 392) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  LOBYTE(v45) = sub_10000F0AC();
  swift_beginAccess();
  *(v0 + 656) = v45 & 1;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 657) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  *(v0 + 658) = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  Date.init()();
  swift_beginAccess();
  (*(v85 + 16))(v87, v84, v89);
  Published.init(initialValue:)();
  (*(v85 + 8))(v84, v89);
  swift_endAccess();

  v91(v43, v83);
  sub_10001A5C8();
  sub_10001AA34(v52);
  v68 = swift_task_alloc();
  *(v0 + 648) = v68;
  *v68 = v0;
  v68[1] = sub_10001D148;
  v69 = *(v0 + 480);
  v70 = *(v0 + 488);
  v71 = *(v0 + 432);
  v72 = *(v0 + 440);
  v73 = *(v0 + 416);

  return sub_10001ABA8(v73, v71, v72, v69, v70);
}

uint64_t sub_10001D148()
{
  v1 = *v0;
  v2 = *(*v0 + 648);
  v6 = *v0;

  v3 = *(v1 + 608);
  v4 = *(v1 + 600);

  return _swift_task_switch(sub_10001D268, v4, v3);
}

uint64_t sub_10001D268()
{
  v1 = v0[78];
  v2 = v0[74];

  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[77];
  if (v1)
  {
    v6 = *&v5[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_hapticGenerator];
    [v6 notificationOccurred:0];
  }

  else
  {

    v5[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_shouldPlayHapticOnSceneActivation] = 1;
  }

  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[69];
  v12 = v0[68];
  v13 = v0[65];
  v14 = v0[64];

  v15 = v0[1];

  return v15();
}

uint64_t sub_10001D3A8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();

  v14 = a1;
  v15 = static MainActor.shared.getter();
  v16 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = v15;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = v13;
  (*(v5 + 32))(&v18[v16], v7, v4);
  *&v18[v17] = v14;

  sub_100018ED4(0, 0, v11, &unk_10003FCC0, v18);
}

uint64_t sub_10001D7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = type metadata accessor for UUID();
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[13] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001D89C, v11, v10);
}

uint64_t sub_10001D89C()
{
  v40 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = *(v0 + 40);
    if (*(v5 + 16) && (v6 = sub_100029BB8(*(v0 + 64)), (v7 & 1) != 0))
    {
      v9 = *(v0 + 64);
      v8 = *(v0 + 72);
      v10 = *(*(v5 + 56) + 8 * v6);

      v11 = [v8 ns];
      sub_10001125C(v11, v9);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (*(v0 + 48))
      {
        v12 = *(v0 + 64);
        v13 = [*(v0 + 72) ns];
        sub_10001125C(v13, v12);
      }

      else
      {
      }
    }

    else
    {

      if (qword_10005A198 != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 88);
      v14 = *(v0 + 96);
      v17 = *(v0 + 72);
      v16 = *(v0 + 80);
      v18 = *(v0 + 64);
      v19 = type metadata accessor for Logger();
      sub_100005D84(v19, qword_10005B420);
      (*(v15 + 16))(v14, v18, v16);
      v20 = v17;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      v23 = os_log_type_enabled(v21, v22);
      v25 = *(v0 + 88);
      v24 = *(v0 + 96);
      v26 = *(v0 + 80);
      if (v23)
      {
        v37 = *(v0 + 72);
        v27 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = v38;
        *v27 = 136315394;
        sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        (*(v25 + 8))(v24, v26);
        v31 = sub_100029504(v28, v30, &v39);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2112;
        v32 = [v37 ns];
        *(v27 + 14) = v32;
        *v36 = v32;
        _os_log_impl(&_mh_execute_header, v21, v22, "BackgroundActivitySessionsController: No session found when updating progress for task ID %s to %@", v27, 0x16u);
        sub_10000619C(v36, &qword_10005BC80, &qword_10003E860);

        sub_100005E20(v38);
      }

      else
      {

        (*(v25 + 8))(v24, v26);
      }
    }
  }

  v33 = *(v0 + 96);

  v34 = *(v0 + 8);

  return v34();
}

void sub_10001DCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a1;
  v32 = a3;
  v27 = a2;
  v7 = type metadata accessor for UUID();
  v28 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v27 - v12;
  v30 = &v27 - v12;
  sub_100009E1C(0, &unk_10005B640, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(1).super.super.isa;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v7);
  type metadata accessor for MainActor();

  v17 = a4;

  v18 = isa;
  v19 = static MainActor.shared.getter();
  v20 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v21 = (v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = v19;
  *(v23 + 3) = &protocol witness table for MainActor;
  *(v23 + 4) = v16;
  (*(v8 + 32))(&v23[v20], v29, v28);
  v24 = &v23[v21];
  v25 = v27;
  *v24 = v31;
  *(v24 + 1) = v25;
  v26 = &v23[v22];
  *v26 = v32;
  *(v26 + 1) = v17;
  *&v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8] = v18;

  sub_100018ED4(0, 0, v30, &unk_10003FCB0, v23);
}

uint64_t sub_10001DFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v32 = a5;
  v33 = a1;
  v28 = a4;
  v29 = a2;
  v34 = a3;
  v7 = type metadata accessor for UUID();
  v30 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v27 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v7);
  type metadata accessor for MainActor();

  v16 = v32;
  v17 = static MainActor.shared.getter();
  v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = v17;
  *(v21 + 3) = &protocol witness table for MainActor;
  *(v21 + 4) = v15;
  (*(v8 + 32))(&v21[v18], v31, v30);
  v22 = &v21[v19];
  v23 = v29;
  *v22 = v33;
  *(v22 + 1) = v23;
  v24 = &v21[v20];
  v25 = v28;
  *v24 = v34;
  *(v24 + 1) = v25;
  *&v21[(v20 + 23) & 0xFFFFFFFFFFFFFFF8] = v16;

  sub_100018ED4(0, 0, v13, &unk_10003FC18, v21);
}

uint64_t sub_10001E398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v16;
  v8[20] = v17;
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = type metadata accessor for UUID();
  v8[21] = v9;
  v10 = *(v9 - 8);
  v8[22] = v10;
  v11 = *(v10 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[25] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001E4AC, v13, v12);
}

uint64_t sub_10001E4AC()
{
  v78 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 112);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v4 = Strong;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = *(v0 + 96);
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v6 = sub_100029BB8(*(v0 + 120));
  if ((v7 & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  v9 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v10 = *(v8 + v9);
  if (*(v10 + 16))
  {
    v11 = *(v0 + 120);

    v12 = sub_100029BB8(v11);
    if (v13)
    {
      v73 = *(*(v10 + 56) + 8 * v12);
      v75 = v4;

      if (qword_10005A198 != -1)
      {
        swift_once();
      }

      v14 = *(v0 + 192);
      v15 = *(v0 + 168);
      v16 = *(v0 + 176);
      v17 = *(v0 + 152);
      v18 = *(v0 + 136);
      v19 = *(v0 + 120);
      v20 = type metadata accessor for Logger();
      sub_100005D84(v20, qword_10005B420);
      (*(v16 + 16))(v14, v19, v15);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 192);
      v25 = *(v0 + 168);
      v26 = *(v0 + 176);
      if (v23)
      {
        v66 = *(v0 + 144);
        v68 = *(v0 + 152);
        v64 = *(v0 + 128);
        v65 = *(v0 + 136);
        v27 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *v27 = 136315650;
        sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID);
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        v30 = v29;
        (*(v26 + 8))(v24, v25);
        v31 = sub_100029504(v28, v30, &v77);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_100029504(v64, v65, &v77);
        *(v27 + 22) = 2080;
        *(v27 + 24) = sub_100029504(v66, v68, &v77);
        _os_log_impl(&_mh_execute_header, v21, v22, "Updating title and subtitle for task identifier %s to title: %s and subtitle: %s", v27, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        (*(v26 + 8))(v24, v25);
      }

      v54 = *(v0 + 144);
      v72 = *(v0 + 152);
      v55 = *(v0 + 128);
      v56 = *(v0 + 136);
      v57 = *(v0 + 120);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v58 = *(v0 + 72);
      v70 = *(v0 + 64);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v60 = *(v0 + 80);
      v59 = *(v0 + 88);
      sub_100011718(v55, v56, v54, v72, v57);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (*(v0 + 104))
      {
        sub_100011718(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 120));
      }

      if (![*(v0 + 160) BOOLValue])
      {

        goto LABEL_18;
      }

      if (v70 == *(v0 + 128) && v58 == *(v0 + 136))
      {
      }

      else
      {
        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v61 & 1) == 0)
        {

LABEL_36:
          v63 = *&v75[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_hapticGenerator];
          [v63 notificationOccurred:0];

          goto LABEL_18;
        }
      }

      if (v60 == *(v0 + 144) && v59 == *(v0 + 152))
      {

LABEL_34:

        goto LABEL_18;
      }

      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v62)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    }

LABEL_12:

    goto LABEL_13;
  }

LABEL_13:
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 176);
  v32 = *(v0 + 184);
  v34 = *(v0 + 168);
  v35 = *(v0 + 152);
  v36 = *(v0 + 136);
  v37 = *(v0 + 120);
  v38 = type metadata accessor for Logger();
  sub_100005D84(v38, qword_10005B420);
  (*(v33 + 16))(v32, v37, v34);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 176);
  v43 = *(v0 + 184);
  v44 = *(v0 + 168);
  if (v41)
  {
    v71 = *(v0 + 144);
    v74 = *(v0 + 152);
    v67 = *(v0 + 128);
    v69 = *(v0 + 136);
    v45 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v45 = 136315650;
    sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID);
    v76 = v4;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    (*(v42 + 8))(v43, v44);
    v49 = sub_100029504(v46, v48, &v77);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    *(v45 + 14) = sub_100029504(v67, v69, &v77);
    *(v45 + 22) = 2080;
    *(v45 + 24) = sub_100029504(v71, v74, &v77);
    _os_log_impl(&_mh_execute_header, v39, v40, "BackgroundActivitySessionsController: No session found when updating name and description for task ID %s to name: %s and description: %s", v45, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v42 + 8))(v43, v44);
  }

LABEL_18:
  v51 = *(v0 + 184);
  v50 = *(v0 + 192);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_10001EE60(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(v5, a1, v2);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = v11;
  (*(v3 + 32))(&v14[v13], v5, v2);

  sub_100018ED4(0, 0, v9, &unk_10003FC08, v14);
}

uint64_t sub_10001F088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10001F17C, v10, v9);
}

uint64_t sub_10001F17C()
{
  v31 = v0;
  v1 = v0[11];
  v2 = v0[6];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v5 = v0[5];
    if (*(v5 + 16) && (v6 = sub_100029BB8(v0[7]), (v7 & 1) != 0))
    {
      v8 = v0[7];
      v9 = *(*(v5 + 56) + 8 * v6);

      sub_10001B02C(v8, 0);
    }

    else
    {

      if (qword_10005A198 != -1)
      {
        swift_once();
      }

      v11 = v0[9];
      v10 = v0[10];
      v13 = v0[7];
      v12 = v0[8];
      v14 = type metadata accessor for Logger();
      sub_100005D84(v14, qword_10005B420);
      (*(v11 + 16))(v10, v13, v12);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      v17 = os_log_type_enabled(v15, v16);
      v19 = v0[9];
      v18 = v0[10];
      v20 = v0[8];
      if (v17)
      {
        v21 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = v29;
        *v21 = 136315138;
        sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID);
        v22 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v23;
        (*(v19 + 8))(v18, v20);
        v25 = sub_100029504(v22, v24, &v30);

        *(v21 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v15, v16, "BackgroundActivitySessionsController: No session found when end activity for task ID %s", v21, 0xCu);
        sub_100005E20(v29);
      }

      else
      {

        (*(v19 + 8))(v18, v20);
      }
    }
  }

  v26 = v0[10];

  v27 = v0[1];

  return v27();
}

void sub_10001F574(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v41 - v10;
  v12 = [a1 integerValue];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v43;
  if (v43[2])
  {
    v14 = sub_100029BB8(a2);
    if (v15)
    {
      v16 = *(v13[7] + 8 * v14);

      if (qword_10005A198 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100005D84(v17, qword_10005B420);
      (*(v5 + 16))(v11, a2, v4);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v18, v19))
      {

        (*(v5 + 8))(v11, v4);
LABEL_29:
        sub_100013B28(v12, a2);

        return;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v43 = v21;
      *v20 = 136315394;
      LODWORD(v42) = v19;
      v41[1] = v21;
      if (v12 <= 2)
      {
        switch(v12)
        {
          case 0:
            v22 = v4;
            v23 = 0xEC00000073736572;
            v24 = 0x676F7250776F6C73;
            goto LABEL_28;
          case 1:
            v22 = v4;
            v23 = 0xE800000000000000;
            v24 = 0x6E69617244436F53;
            goto LABEL_28;
          case 2:
            v22 = v4;
            v23 = 0x8000000100045070;
            v24 = 0xD000000000000011;
LABEL_28:
            v36 = sub_100029504(v24, v23, &v43);

            *(v20 + 4) = v36;
            *(v20 + 12) = 2080;
            sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID);
            v37 = dispatch thunk of CustomStringConvertible.description.getter();
            v39 = v38;
            (*(v5 + 8))(v11, v22);
            v40 = sub_100029504(v37, v39, &v43);

            *(v20 + 14) = v40;
            _os_log_impl(&_mh_execute_header, v18, v42, "BackgroundActivitySessionsController handle event %s for task ID %s", v20, 0x16u);
            swift_arrayDestroy();

            goto LABEL_29;
        }
      }

      else
      {
        if (v12 <= 4)
        {
          v22 = v4;
          if (v12 == 3)
          {
            v23 = 0x8000000100045050;
            v24 = 0xD000000000000014;
          }

          else
          {
            v23 = 0x8000000100045030;
            v24 = 0xD000000000000012;
          }

          goto LABEL_28;
        }

        if (v12 == 5)
        {
          v22 = v4;
          v23 = 0x8000000100045010;
          v24 = 0xD000000000000016;
          goto LABEL_28;
        }

        if (v12 == 6)
        {
          v22 = v4;
          v24 = 0xD000000000000010;
          v23 = 0x8000000100044FF0;
          goto LABEL_28;
        }
      }

      v22 = v4;
      v23 = 0xE700000000000000;
      v24 = 0x6E776F6E6B6E75;
      goto LABEL_28;
    }
  }

  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100005D84(v25, qword_10005B420);
  (*(v5 + 16))(v9, a2, v4);
  v26 = a1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v42;
    *v29 = 138412546;
    *(v29 + 4) = v26;
    *v30 = v26;
    *(v29 + 12) = 2080;
    sub_1000247B8(&qword_10005B5C0, &type metadata accessor for UUID);
    v31 = v26;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    (*(v5 + 8))(v9, v4);
    v35 = sub_100029504(v32, v34, &v43);

    *(v29 + 14) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "BackgroundActivitySessionsController can't handle unknown event %@ for task ID %s", v29, 0x16u);
    sub_10000619C(v30, &qword_10005BC80, &qword_10003E860);

    sub_100005E20(v42);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_10001FC5C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = a1;
  a5(v13, v12);

  return (*(v9 + 8))(v12, v8);
}

void sub_10001FD68(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 setTargetQueue:*(a2 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_queue)];
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v6];

  [a1 setInterface:a3];
  [a1 setInterfaceTarget:a2];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_100023D30;
  v17 = v7;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100006890;
  v15 = &unk_1000528A8;
  v8 = _Block_copy(&v12);

  [a1 setActivationHandler:v8];
  _Block_release(v8);
  v16 = sub_1000201C4;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100006890;
  v15 = &unk_1000528D0;
  v9 = _Block_copy(&v12);
  [a1 setInterruptionHandler:v9];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v16 = sub_100023D70;
  v17 = v10;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100006890;
  v15 = &unk_100052920;
  v11 = _Block_copy(&v12);

  [a1 setInvalidationHandler:v11];
  _Block_release(v11);
}

void sub_10001FFE4(void *a1)
{
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005D84(v2, qword_10005B420);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BackgroundActivitySessionsController: connection activated from client!", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([a1 remoteTarget])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v10[0] = v11;
    v10[1] = v12;
    if (*(&v12 + 1))
    {
      sub_100005D3C(&unk_10005B630, &unk_10003FBF0);
      if (swift_dynamicCast())
      {
        v8 = *&v7[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient];
        *&v7[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient] = v9;

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      sub_10000619C(v10, &qword_10005A9B0, &qword_10003EA60);
    }
  }
}

id sub_1000201C4(void *a1)
{
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005D84(v2, qword_10005B420);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BackgroundActivitySessionsController: connection interrupted, reconnecting", v5, 2u);
  }

  return [a1 activate];
}

uint64_t sub_1000202BC()
{
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005D84(v0, qword_10005B420);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "BackgroundActivitySessionsController: connection invalidated", v3, 2u);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = *&Strong[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_connection];
  *&Strong[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_connection] = 0;

  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = *&v6[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient];
  *&v6[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient] = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_1000203EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000204D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for APKDeviceLockState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v37 = v12;
  v38 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v32 - v13;
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005D84(v15, qword_10005B420);
  v36 = *(v9 + 16);
  v36(v14, a1, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = v7;
    v19 = v18;
    v33 = swift_slowAlloc();
    v39 = v33;
    *v19 = 136315138;
    sub_1000247B8(&qword_10005B598, &type metadata accessor for APKDeviceLockState);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = a1;
    v21 = v2;
    v23 = v22;
    (*(v9 + 8))(v14, v8);
    v24 = sub_100029504(v20, v23, &v39);
    v2 = v21;
    a1 = v34;

    *(v19 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v16, v17, "Lock state changed to %s", v19, 0xCu);
    sub_100005E20(v33);

    v7 = v35;
  }

  else
  {

    (*(v9 + 8))(v14, v8);
  }

  v25 = type metadata accessor for TaskPriority();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  v26 = v38;
  v36(v38, a1, v8);
  type metadata accessor for MainActor();
  v27 = v2;
  v28 = static MainActor.shared.getter();
  v29 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v30 = swift_allocObject();
  *(v30 + 2) = v28;
  *(v30 + 3) = &protocol witness table for MainActor;
  *(v30 + 4) = v27;
  (*(v9 + 32))(&v30[v29], v26, v8);
  sub_100018ED4(0, 0, v7, &unk_10003FA80, v30);
}

uint64_t sub_1000208D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100020970, v7, v6);
}

uint64_t sub_100020970()
{
  v15 = v0;
  v1 = v0[5];
  v2 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v0[2];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_1000219D4(*(v3 + 16), 0);
    v6 = sub_100023598(&v14, v5 + 4, v4, v3);
    sub_1000236EC();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_5:
  v7 = v0[3];
  v14 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v0[2])
  {
    v8 = v0[2];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v13 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v5 = v14;
  }

  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  sub_100020DC0(sub_1000236FC, v10, v5);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100020B88(uint64_t *a1, char *a2)
{
  v5 = type metadata accessor for APKDeviceLockState();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v19 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  v12 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000247B8(&unk_10005B5A0, &type metadata accessor for APKDeviceLockState);
  v13 = a2;
  v14 = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = v6[1];
  result = v15(v11, v5);
  if ((v14 & 1) == 0)
  {
    v18[1] = v2;
    v17 = v6[2];
    v17(v11, v13, v5);
    v18[0] = swift_getKeyPath();
    swift_getKeyPath();
    v17(v19, v11, v5);

    static Published.subscript.setter();
    return v15(v11, v5);
  }

  return result;
}

uint64_t sub_100020DC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100020ED8()
{
  v1 = type metadata accessor for APKDeviceLockState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100020FA4(uint64_t a1)
{
  v4 = *(type metadata accessor for APKDeviceLockState() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100007EE0;

  return sub_1000208D8(a1, v6, v7, v8, v1 + v5);
}

id sub_10002109C()
{
  result = sub_1000210BC();
  qword_10005B438 = result;
  return result;
}

id sub_1000210BC()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() interfaceWithIdentifier:v0];

  v2 = objc_opt_self();
  v3 = [v2 protocolForProtocol:&OBJC_PROTOCOL___APKActivityProgressUIServer];
  [v1 setServer:v3];

  v4 = [v2 protocolForProtocol:&OBJC_PROTOCOL___APKActivityProgressUIClient];
  [v1 setClient:v4];

  [v1 setClientMessagingExpectation:0];
  return v1;
}

uint64_t sub_100021204@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_100021294(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100021314@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100021394(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_10002140C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10002148C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100021500(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10002157C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for APKDeviceLockState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  static Published.subscript.setter();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1000216EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10002176C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_1000217E4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000218DC;

  return v7(a1);
}

uint64_t sub_1000218DC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_1000219D4(uint64_t a1, uint64_t a2)
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

  sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_100021A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021ACC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100021B04(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007EE0;

  return sub_1000217E4(a1, v5);
}

uint64_t sub_100021BBC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100007B74;

  return sub_1000217E4(a1, v5);
}

uint64_t sub_100021CA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005D3C(&unk_10005A5B0, &qword_10003E440);
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

        swift_unknownObjectRetain();
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

uint64_t sub_100021F4C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_100005D3C(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_1000247B8(&qword_10005B288, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_100022328(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100005D3C(&qword_10005A678, &qword_10003E538);
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

uint64_t sub_1000225D0(uint64_t result, uint64_t a2)
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

unint64_t sub_100022780(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1000247B8(&qword_10005B288, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_100022AA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100029C3C(a2, a3);
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
      sub_100021CA4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100029C3C(a2, a3);
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
      sub_100023040();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
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

uint64_t sub_100022C30(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = sub_100029BB8(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      sub_1000231B0(v30, v31);
      goto LABEL_7;
    }

    sub_100021F4C(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = sub_100029BB8(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return sub_100022F88(v17, v14, a1, v23);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t sub_100022E0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100029C3C(a2, a3);
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
      sub_100022328(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100029C3C(a2, a3);
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
      sub_100023428();
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

uint64_t sub_100022F88(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_100023040()
{
  v1 = v0;
  sub_100005D3C(&unk_10005A5B0, &qword_10003E440);
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

        result = swift_unknownObjectRetain();
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

void *sub_1000231B0(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005D3C(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_100023428()
{
  v1 = v0;
  sub_100005D3C(&qword_10005A678, &qword_10003E538);
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

void *sub_100023598(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
        goto LABEL_27;
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

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100023720(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005D3C(&qword_10005B5B0, &qword_10003FB80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023798()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000237E0(void *a1)
{
  v2 = v1;
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005D84(v4, qword_10005B420);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "BackgroundActivitySessionsController received a connection! %@", v8, 0xCu);
    sub_10000619C(v9, &qword_10005BC80, &qword_10003E860);
  }

  if (qword_10005A1A8 != -1)
  {
    swift_once();
  }

  v11 = qword_10005B438;
  v12 = [v5 remoteProcess];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 hasEntitlement:v13];

  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = v11;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_100023CB0;
    *(v16 + 24) = v15;
    v32 = sub_100023CB8;
    v33 = v16;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v31 = sub_100024850;
    *(&v31 + 1) = &unk_100052858;
    v17 = _Block_copy(&aBlock);
    v18 = v2;
    v19 = v11;

    [v5 configureConnection:v17];
    _Block_release(v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if ((v17 & 1) == 0)
    {
      [v5 activate];
      v20 = *&v18[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_connection];
      *&v18[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_connection] = v5;
      v21 = v5;

      if ([v21 remoteTarget])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0u;
        v29 = 0u;
      }

      aBlock = v28;
      v31 = v29;
      if (*(&v29 + 1))
      {
        sub_100005D3C(&unk_10005B630, &unk_10003FBF0);
        if (swift_dynamicCast())
        {
          v24 = v27;
LABEL_22:
          v25 = *&v18[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient];
          *&v18[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient] = v24;

          swift_unknownObjectRelease();
          return;
        }
      }

      else
      {
        sub_10000619C(&aBlock, &qword_10005A9B0, &qword_10003EA60);
      }

      v24 = 0;
      goto LABEL_22;
    }

    __break(1u);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v22, "BackgroundActivitySessionsController got a connection from an un-entitled process!", v23, 2u);
    }
  }
}

uint64_t sub_100023C70()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100023CB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100023CE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100023CF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023D38()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023D78()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100023E44(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100007B74;

  return sub_10001F088(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100023F40(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[3];
  v18 = v1[2];
  v9 = v1[4];
  v10 = (v1 + v6);
  v11 = *v10;
  v12 = v10[1];
  v14 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v15 = *(v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100007EE0;

  return sub_10001E398(a1, v18, v8, v9, v1 + v5, v11, v12, v14);
}

uint64_t sub_10002414C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5 + 8);

  v11 = *(v0 + v6 + 8);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_10002425C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10002433C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100007EE0;

  return sub_10001D7A4(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_10002446C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = v1[3];
  v24 = v1[2];
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v1 + v6);
  v22 = v1[4];
  v11 = *(v1 + v7 + 8);
  v20 = *(v1 + v7);
  v13 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v14 = *(v1 + v9);
  v15 = *(v1 + v9 + 8);
  v16 = *(v1 + v10);
  v17 = *(v1 + v10 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_100007EE0;

  return sub_10001C1B0(a1, v24, v23, v22, v1 + v5, v21, v20, v11);
}

uint64_t sub_100024614()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + 16);
  swift_unknownObjectRelease();
  v11 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  v12 = *(v0 + v6 + 8);

  v13 = *(v0 + v7 + 8);

  v14 = *(v0 + v8 + 8);

  v15 = *(v0 + v9 + 8);

  return _swift_deallocObject(v0, v9 + 16, v3 | 7);
}

unint64_t sub_100024754()
{
  result = qword_10005B698;
  if (!qword_10005B698)
  {
    sub_100005F90(&qword_10005B690, qword_10003FD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B698);
  }

  return result;
}

uint64_t sub_1000247B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100024858@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LayoutSubviews();
  sub_100027594(&qword_10005B998, &type metadata accessor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v9[4] == v9[0])
  {
    v2 = type metadata accessor for LayoutSubview();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = dispatch thunk of Collection.subscript.read();
    v6 = v5;
    v7 = type metadata accessor for LayoutSubview();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

uint64_t sub_100024A24(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) ^ *(a2 + 16) ^ 1u;
  }

  return 0;
}

double sub_100024A60@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_100024AE4(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return static EdgeInsets.== infix(_:_:)(a1[2], a1[3], a1[4], a1[5], a2[2], a2[3], a2[4], a2[5]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100024B14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100024B8C()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI29APUISystemApertureLayoutState__metrics;
  v2 = sub_100005D3C(&qword_10005B950, &qword_100040390);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18ActivityProgressUI29APUISystemApertureLayoutState__context;
  v4 = sub_100005D3C(&qword_10005B958, &qword_100040398);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100024C80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for APUISystemApertureLayoutState();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100024CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v48 = a2;
  v47 = sub_100005D3C(&qword_10005B8D0, &qword_1000402B0);
  v3 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v5 = v42 - v4;
  v45 = sub_100005D3C(&qword_10005B8D8, &qword_1000402B8);
  v6 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v8 = v42 - v7;
  v46 = sub_100005D3C(&qword_10005B8E0, &qword_1000402C0);
  v43 = *(v46 - 8);
  v9 = *(v43 + 64);
  __chkstk_darwin(v46);
  v11 = v42 - v10;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v2 + 8);
  v17 = *v2;
  v55 = *v2;
  if (v56 == 1)
  {
    if ((v17 & 1) == 0)
    {
LABEL_3:
      v53 = v2[2];
      v54 = *(v2 + 24);
      v52 = *(v2 + 2);
      v18 = v2[7];
      v19 = swift_allocObject();
      v20 = *(v2 + 1);
      v19[1] = *v2;
      v19[2] = v20;
      v21 = *(v2 + 3);
      v19[3] = *(v2 + 2);
      v19[4] = v21;
      v22 = sub_100005D3C(&qword_10005B8F0, &qword_1000402D0);
      (*(*(v22 - 8) + 16))(v5, v44, v22);
      v23 = &v5[*(v47 + 36)];
      *v23 = 0;
      *(v23 + 1) = 0;
      *(v23 + 2) = sub_100026A04;
      *(v23 + 3) = v19;
      sub_1000064B0(v5, v8, &qword_10005B8D0, &qword_1000402B0);
      swift_storeEnumTagMultiPayload();
      sub_1000064B0(&v55, &v49, &qword_10005B8E8, &qword_1000402C8);
      sub_1000064B0(&v53, &v49, &qword_10005B8E8, &qword_1000402C8);
      sub_1000064B0(&v52, &v49, &qword_10005B8F8, &qword_1000402D8);
      v24 = sub_100006260(&qword_10005B900, &qword_10005B8F0, &qword_1000402D0);
      v25 = sub_100026A2C();

      *&v49 = v22;
      *(&v49 + 1) = &type metadata for APUISystemApertureLayoutState.Context;
      v50 = v24;
      v51 = v25;
      swift_getOpaqueTypeConformance2();
      sub_100026A80();
      _ConditionalContent<>.init(storage:)();
      return sub_10000619C(v5, &qword_10005B8D0, &qword_1000402B0);
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000619C(&v55, &qword_10005B8E8, &qword_1000402C8);
    (*(v13 + 8))(v16, v12);
    if (v49 != 1)
    {
      goto LABEL_3;
    }
  }

  v28 = v2[4];
  v42[1] = v2[5];
  BYTE8(v52) = *(v2 + 24);
  v29 = v2[2];
  *&v52 = v29;
  if (BYTE8(v52) == 1)
  {
    if ((v29 & 1) == 0)
    {
LABEL_7:
      v30 = 0;
      v31 = 0uLL;
      goto LABEL_11;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000619C(&v52, &qword_10005B8E8, &qword_1000402C8);
    (*(v13 + 8))(v16, v12);
    if ((v49 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  if (!v28)
  {
    type metadata accessor for APUISystemApertureLayoutState();
    sub_100027594(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v31 = v49;
  v30 = v50;
LABEL_11:
  v49 = v31;
  LOBYTE(v50) = v30;
  v33 = v2[7];
  v34 = swift_allocObject();
  v35 = *(v2 + 1);
  v34[1] = *v2;
  v34[2] = v35;
  v36 = *(v2 + 3);
  v34[3] = *(v2 + 2);
  v34[4] = v36;
  sub_1000064B0(&v55, &v53, &qword_10005B8E8, &qword_1000402C8);
  sub_1000064B0(&v52, &v53, &qword_10005B8E8, &qword_1000402C8);

  v37 = sub_100005D3C(&qword_10005B8F0, &qword_1000402D0);
  v38 = sub_100006260(&qword_10005B900, &qword_10005B8F0, &qword_1000402D0);
  v39 = sub_100026A2C();
  View.onChange<A>(of:initial:_:)();

  v40 = v43;
  v41 = v46;
  (*(v43 + 16))(v8, v11, v46);
  swift_storeEnumTagMultiPayload();
  *&v49 = v37;
  *(&v49 + 1) = &type metadata for APUISystemApertureLayoutState.Context;
  v50 = v38;
  v51 = v39;
  swift_getOpaqueTypeConformance2();
  sub_100026A80();
  _ConditionalContent<>.init(storage:)();
  return (*(v40 + 8))(v11, v41);
}

uint64_t View.onDismiss(_:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  type metadata accessor for APUISystemApertureLayoutState();
  sub_100027594(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);
  EnvironmentObject.init()();

  View.modifier<A>(_:)();
}

uint64_t type metadata accessor for APUISystemApertureLayoutState()
{
  result = qword_10005B7B8;
  if (!qword_10005B7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100025648(double a1, double a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v10 = sub_100005D3C(&qword_10005B990, &qword_100040520);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21[-v12];
  v14 = type metadata accessor for LayoutSubview();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100024858(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10000619C(v13, &qword_10005B990, &qword_100040520);
  }

  (*(v15 + 32))(v18, v13, v14);
  v21[24] = a4 & 1;
  v21[16] = a6 & 1;
  LayoutSubview.sizeThatFits(_:)();
  v20 = *(v6 + 8) - *(v6 + 16) + a2;
  static UnitPoint.topLeading.getter();
  v21[8] = 0;
  v21[0] = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_100025878(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_100005D3C(&qword_10005B990, &qword_100040520);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16[-v8];
  v10 = type metadata accessor for LayoutSubview();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100024858(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10000619C(v9, &qword_10005B990, &qword_100040520);
  }

  (*(v11 + 32))(v14, v9, v10);
  v16[8] = a2 & 1;
  v16[0] = a4 & 1;
  LayoutSubview.sizeThatFits(_:)();
  return (*(v11 + 8))(v14, v10);
}

void (*sub_100025B30(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100025BB8;
}

void sub_100025BB8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100025C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v29 = a1;
  v31 = a6;
  v30 = sub_100005D3C(&qword_10005B918, &qword_100040328);
  v9 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v11 = &v28 - v10;
  v12 = sub_100005D3C(&qword_10005B920, &qword_100040330);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - v14;
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000269F8(a2, 0);
    (*(v17 + 8))(v20, v16);
    if (v32 != 1)
    {
      goto LABEL_10;
    }
  }

  if (!a4)
  {
    type metadata accessor for APUISystemApertureLayoutState();
    sub_100027594(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (*&v32 >= 1.0 && *(&v32 + 1) >= 1.0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v22 = v33;
    v23 = v34;
    *v15 = v32;
    *(v15 + 1) = v22;
    *(v15 + 2) = v23;
    v24 = *(v12 + 44);
    v25 = sub_100005D3C(&qword_10005B928, &qword_100040338);
    (*(*(v25 - 8) + 16))(&v15[v24], v29, v25);
    sub_1000064B0(v15, v11, &qword_10005B920, &qword_100040330);
    swift_storeEnumTagMultiPayload();
    sub_100026DF4();
    sub_100006260(&qword_10005B948, &qword_10005B928, &qword_100040338);
    _ConditionalContent<>.init(storage:)();
    return sub_10000619C(v15, &qword_10005B920, &qword_100040330);
  }

LABEL_10:
  v27 = sub_100005D3C(&qword_10005B928, &qword_100040338);
  (*(*(v27 - 8) + 16))(v11, v29, v27);
  swift_storeEnumTagMultiPayload();
  sub_100026DF4();
  sub_100006260(&qword_10005B948, &qword_10005B928, &qword_100040338);
  return _ConditionalContent<>.init(storage:)();
}

Swift::Int _s18ActivityProgressUI35APUISystemApertureVerticalPlacementO9hashValueSivg_0(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000261C0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100026208()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t View.systemApertureVerticalPlacement(_:)()
{
  swift_getKeyPath();
  type metadata accessor for APUISystemApertureLayoutState();
  sub_100027594(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);
  EnvironmentObject.init()();
  View.modifier<A>(_:)();
}

unint64_t sub_100026328()
{
  result = qword_10005B770;
  if (!qword_10005B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B770);
  }

  return result;
}

unint64_t sub_100026380()
{
  result = qword_10005B778;
  if (!qword_10005B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B778);
  }

  return result;
}

void sub_1000263DC()
{
  sub_10000F848(319, &qword_10005B7C8);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000F848(319, &unk_10005B7D0);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000264FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002658C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002666C()
{
  result = qword_10005B8C0;
  if (!qword_10005B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B8C0);
  }

  return result;
}

uint64_t sub_1000266E8(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_100026758()
{
  result = qword_10005B8C8;
  if (!qword_10005B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B8C8);
  }

  return result;
}

__n128 sub_1000267C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000267DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100026824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for APUISystemApertureLayoutState.Context(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for APUISystemApertureLayoutState.Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for APUISystemApertureLayoutState.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100026940(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100026954(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100026974(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1000269F8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100026A04()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1();
}

unint64_t sub_100026A2C()
{
  result = qword_10005B908;
  if (!qword_10005B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B908);
  }

  return result;
}

unint64_t sub_100026A80()
{
  result = qword_10005B910;
  if (!qword_10005B910)
  {
    sub_100005F90(&qword_10005B8D0, &qword_1000402B0);
    sub_100006260(&qword_10005B900, &qword_10005B8F0, &qword_1000402D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B910);
  }

  return result;
}

uint64_t sub_100026B38()
{
  sub_1000269F8(*(v0 + 16), *(v0 + 24));
  sub_1000269F8(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100026B90(uint64_t a1, uint64_t a2)
{
  if (*a2 == 3 && *(a2 + 16) != 0)
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    return v4();
  }

  return result;
}

double sub_100026BD0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t sub_100026C58(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return static Published.subscript.setter();
}

double sub_100026CE0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_100026D6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100026DF4()
{
  result = qword_10005B930;
  if (!qword_10005B930)
  {
    sub_100005F90(&qword_10005B920, &qword_100040330);
    sub_100006260(&qword_10005B938, &qword_10005B940, &qword_100040340);
    sub_100006260(&qword_10005B948, &qword_10005B928, &qword_100040338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B930);
  }

  return result;
}

id sub_100026EE0(void *a1)
{
  v2 = [a1 activeLayoutMode];
  result = [a1 view];
  if (result)
  {
    v4 = result;
    v5 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

    [v5 layoutFrame];
    v7 = v6;
    v9 = v8;

    if (v2 == 4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v21[0] != v7 || v21[1] != v9)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v11 = static Published.subscript.modify();
        *v12 = v7;
        v12[1] = v9;
        v11(v21, 0);
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*&v21[0] != v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v13 = static Published.subscript.modify();
      *v14 = v2;
      v13(v21, 0);

      v15 = [objc_msgSend(a1 "systemApertureElementContext")];
      result = swift_unknownObjectRelease();
      if (v15)
      {
        v16 = [v15 fromLayoutMode];
        swift_getKeyPath();
        swift_getKeyPath();
        v17 = static Published.subscript.modify();
        *(v18 + 8) = v16;
        v17(v21, 0);

        LOBYTE(v16) = [v15 isUserInitiated];
        swift_getKeyPath();
        swift_getKeyPath();
        v19 = static Published.subscript.modify();
        *(v20 + 16) = v16;
        v19(v21, 0);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100027250(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000272B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_100027318()
{
  result = qword_10005B960;
  if (!qword_10005B960)
  {
    sub_100005F90(&qword_10005B968, &qword_100040410);
    sub_100005F90(&qword_10005B8F0, &qword_1000402D0);
    sub_100006260(&qword_10005B900, &qword_10005B8F0, &qword_1000402D0);
    sub_100026A2C();
    swift_getOpaqueTypeConformance2();
    sub_100026A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B960);
  }

  return result;
}

unint64_t sub_10002742C()
{
  result = qword_10005B970;
  if (!qword_10005B970)
  {
    sub_100005F90(&qword_10005B978, qword_100040418);
    sub_100026DF4();
    sub_100006260(&qword_10005B948, &qword_10005B928, &qword_100040338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B970);
  }

  return result;
}

unint64_t sub_1000274E8()
{
  result = qword_10005B980;
  if (!qword_10005B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B980);
  }

  return result;
}

unint64_t sub_100027540()
{
  result = qword_10005B988;
  if (!qword_10005B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B988);
  }

  return result;
}

uint64_t sub_100027594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100027628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_100022AA0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100029C3C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_100023040();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);
      swift_unknownObjectRelease();
      result = sub_1000225D0(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_100027720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_100022E0C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_100029C3C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_100023428();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1000225D0(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_100027818()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005B9A0);
  v1 = sub_100005D84(v0, qword_10005B9A0);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t APUIRemoteAlertPresentationRequest.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t APUIRemoteAlertPresentationRequest.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_100027A4C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t APUIRemoteAlertPresentationHandle.onDismiss.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1000177A8(v1);
  return v1;
}

uint64_t APUIRemoteAlertPresentationHandle.onDismiss.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_100007E00(v5);
}

void APUIRemoteAlertPresentationHandle.dismiss(animated:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_10005A1B0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005D84(v8, qword_10005B9A0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = a2;
    v14 = a3;
    v15 = a1;
    v17 = *(v4 + 16);
    v16 = *(v4 + 24);

    v18 = sub_100029504(v17, v16, aBlock);
    a1 = v15;
    a3 = v14;
    a2 = v13;

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received request to dismiss remote alert with ID: %s", v11, 0xCu);
    sub_100005E20(v12);
  }

  v29 = *(v4 + 32);
  v19 = [v29 presentingViewController];
  if (v19)
  {

    if ((*(v4 + 81) & 1) == 0)
    {
      *(v4 + 81) = 1;
      v20 = swift_allocObject();
      *(v20 + 16) = a2;
      *(v20 + 24) = a3;
      aBlock[4] = sub_100029AFC;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007578;
      aBlock[3] = &unk_100052F30;
      v21 = _Block_copy(aBlock);
      sub_1000177A8(a2);

      [v29 dismissViewControllerAnimated:a1 & 1 completion:v21];
      _Block_release(v21);

      return;
    }
  }

  else
  {

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      aBlock[0] = v25;
      *v24 = 136315138;
      v26 = *(v4 + 16);
      v27 = *(v4 + 24);

      v28 = sub_100029504(v26, v27, aBlock);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Invalidating handle for remote alert which is not yet presented with ID: %s", v24, 0xCu);
      sub_100005E20(v25);
    }

    [*(v4 + 56) invalidate];
  }
}

uint64_t APUIRemoteAlertPresentationHandle.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);
  sub_100007E00(*(v0 + 64));
  return v0;
}

uint64_t APUIRemoteAlertPresentationHandle.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);
  sub_100007E00(*(v0 + 64));

  return swift_deallocClassInstance();
}

id sub_100027F90()
{
  result = [objc_allocWithZone(type metadata accessor for APUIRemoteAlertPresentationManager()) init];
  static APUIRemoteAlertPresentationManager.shared = result;
  return result;
}

id APUISystemApertureElementTransitionCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t *APUIRemoteAlertPresentationManager.shared.unsafeMutableAddressor()
{
  if (qword_10005A1B8 != -1)
  {
    swift_once();
  }

  return &static APUIRemoteAlertPresentationManager.shared;
}

id static APUIRemoteAlertPresentationManager.shared.getter()
{
  if (qword_10005A1B8 != -1)
  {
    swift_once();
  }

  v1 = static APUIRemoteAlertPresentationManager.shared;

  return v1;
}

uint64_t APUIRemoteAlertPresentationManager.present(_:)(uint64_t *a1)
{
  if (qword_10005A1B0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005D84(v2, qword_10005B9A0);
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];

  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v9 = 136315394;
    *(v9 + 4) = sub_100029504(v3, v4, &v34);
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v6;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Asked to present remote alert using request: %s view controller to present: %@", v9, 0x16u);
    sub_100007E58(v10);

    sub_100005E20(v11);
  }

  v13 = [objc_opt_self() identityOfCurrentProcess];
  if (v13)
  {
    v14 = v13;
    v15 = objc_allocWithZone(SBSRemoteAlertDefinition);

    v16 = v14;
    v17 = String._bridgeToObjectiveC()();
    v18 = [v15 initWithSceneProvidingProcess:v16 configurationIdentifier:v17];

    v19 = [objc_opt_self() newHandleWithDefinition:v18 configurationContext:0];
    type metadata accessor for APUIRemoteAlertPresentationHandle();
    v20 = swift_allocObject();
    *(v20 + 64) = 0;
    *(v20 + 72) = 0;
    *(v20 + 80) = 0;
    v21 = *(a1 + 1);
    *(v20 + 16) = *a1;
    *(v20 + 32) = v21;
    *(v20 + 48) = a1[4];
    *(v20 + 56) = v19;
    v22 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
    swift_beginAccess();

    v23 = v6;
    v24 = v19;

    v25 = *(v32 + v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v32 + v22);
    *(v32 + v22) = 0x8000000000000000;
    sub_100022E0C(v20, v3, v4, isUniquelyReferenced_nonNull_native);

    *(v32 + v22) = v33;
    swift_endAccess();
    v27 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    [v27 setInitialSupportedInterfaceOrientations:a1[4]];
    [v24 registerObserver:v32];
    [v24 activateWithContext:v27];
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to get process identity of the current process, dropping request to present view controller", v30, 2u);
    }

    return 0;
  }

  return v20;
}

uint64_t APUIRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:)(void *a1, char a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v20[0] = v13;
  v20[1] = v15;
  v20[2] = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v16 = a1;
  v17 = APUIRemoteAlertPresentationManager.present(_:)(v20);

  return v17;
}

uint64_t APUIRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:onDismiss:)(void *a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v11 + 8))(v14, v10);
  v27[0] = v15;
  v27[1] = v17;
  v27[2] = a1;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v18 = a1;
  v19 = APUIRemoteAlertPresentationManager.present(_:)(v27);

  if (v19)
  {
    swift_beginAccess();
    v21 = *(v19 + 64);
    v22 = *(v19 + 72);
    v23 = v25;
    v24 = v26;
    *(v19 + 64) = v25;
    *(v19 + 72) = v24;
    sub_1000177A8(v23);
    sub_100007E00(v21);
  }

  return result;
}

uint64_t APUIRemoteAlertPresentationManager.presentationHandle(for:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  v7 = sub_100029C3C(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __swiftcall APUIRemoteAlertPresentationManager.presentationRequest(for:)(ActivityProgressUI::APUIRemoteAlertPresentationRequest_optional *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v13 = 0;
    v12 = 0;
    v18 = 0;
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v9 = sub_100029C3C(countAndFlagsBits, object);
  if ((v10 & 1) == 0)
  {

    v13 = 0;
    v12 = 0;
    v18 = 0;
    v8 = 0;
    goto LABEL_8;
  }

  v11 = *(*(v7 + 56) + 8 * v9);

  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  v14 = *(v11 + 32);
  v15 = *(v11 + 40);
  v16 = *(v11 + 41);
  v17 = *(v11 + 48);

  v18 = v14;

  v19 = 256;
  if (!v16)
  {
    v19 = 0;
  }

  v8 = v19 | v15;
LABEL_9:
  retstr->value.id._countAndFlagsBits = v13;
  retstr->value.id._object = v12;
  retstr->value.viewControllerToPresent.super.super.isa = v18;
  *&retstr->value.animated = v8;
  retstr->value.supportedInterfaceOrientations.rawValue = v17;
}

id APUIRemoteAlertPresentationManager.init()()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  *&v0[v1] = sub_1000048C0(&_swiftEmptyArrayStorage);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for APUIRemoteAlertPresentationManager();
  return objc_msgSendSuper2(&v3, "init");
}

id APUIRemoteAlertPresentationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APUIRemoteAlertPresentationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void APUIRemoteAlertPresentationManager.remoteAlertHandleDidActivate(_:)()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  swift_beginAccess();
  v2 = *(v1 + v0);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v1 + v0);
  swift_bridgeObjectRetain_n();
  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v1 = *(*(v2 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
      sub_10002A0D4();
      v10 = v1[7];

      v11 = v10;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v5 &= v5 - 1;

      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (qword_10005A1B0 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return;
      }

      v5 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_13:
  v13 = type metadata accessor for Logger();
  sub_100005D84(v13, qword_10005B9A0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    v18 = v1[2];
    v19 = v1[3];

    v20 = sub_100029504(v18, v19, &v21);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "RemoteAlertPresentationManager did activate alert for request: %s", v16, 0xCu);
    sub_100005E20(v17);
  }

  else
  {
  }
}

uint64_t APUIRemoteAlertPresentationManager.remoteAlertHandleDidDeactivate(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  swift_beginAccess();
  v4 = *(v3 + v1);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = *(v3 + v1);
  swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v3 = *(*(v4 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));
      sub_10002A0D4();
      v12 = v3[7];

      v13 = v12;
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    if (qword_10005A1B0 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_13:
  v16 = type metadata accessor for Logger();
  sub_100005D84(v16, qword_10005B9A0);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v19 = 136315138;
    v21 = v3[2];
    v22 = v3[3];

    v23 = sub_100029504(v21, v22, &v24);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "RemoteAlertPresentationManager did deactivate for request: %s", v19, 0xCu);
    sub_100005E20(v20);
  }

  [a1 invalidate];
}

uint64_t APUIRemoteAlertPresentationManager.remoteAlertHandle(_:didInvalidateWithError:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18ActivityProgressUI34APUIRemoteAlertPresentationManager_remoteAlertPresentationHandlesByID;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = *(v2 + v4);
  swift_bridgeObjectRetain_n();
  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v3 = *(*(v5 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v8)))));
      sub_10002A0D4();
      v13 = *(v3 + 56);

      v14 = v13;
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    if (qword_10005A1B0 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
      }

      v8 = *(v5 + 64 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_13:
  v17 = type metadata accessor for Logger();
  sub_100005D84(v17, qword_10005B9A0);

  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = v22;
    *v20 = 136315394;
    v23 = *(v3 + 16);
    v24 = *(v3 + 24);

    v25 = sub_100029504(v23, v24, &v37);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2112;
    if (a2)
    {
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v20 + 14) = v26;
    *v21 = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "RemoteAlertPresentationManager did invalidate for request: %s with error: %@", v20, 0x16u);
    sub_100007E58(v21);

    sub_100005E20(v22);
  }

  else
  {
  }

  v28 = *(v3 + 16);
  v29 = *(v3 + 24);
  swift_beginAccess();

  sub_100027720(0, v28, v29);
  swift_endAccess();
  v30 = *(v3 + 80);
  *(v3 + 80) = 1;
  if (v30 != 1)
  {
    swift_beginAccess();
    v31 = *(v3 + 64);
    if (v31)
    {
      v32 = *(v3 + 72);

      v31(v33);
      sub_100007E00(v31);
      v34 = *(v3 + 64);
    }

    else
    {
      v34 = 0;
    }

    v35 = *(v3 + 72);
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    sub_100007E00(v34);
  }
}

uint64_t sub_100029404(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100029450(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_1000294A8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100029504(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100029504(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000295D0(v11, 0, 0, 1, a1, a2);
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
    sub_100016CE8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005E20(v11);
  return v7;
}

unint64_t sub_1000295D0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000296DC(a5, a6);
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

char *sub_1000296DC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100029728(a1, a2);
  sub_100029858(&off_100051CA0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100029728(uint64_t a1, unint64_t a2)
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

  v6 = sub_100029944(v5, 0);
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
        v7 = sub_100029944(v10, 0);
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

uint64_t sub_100029858(uint64_t result)
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

  result = sub_1000299B8(result, v12, 1, v3);
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

void *sub_100029944(uint64_t a1, uint64_t a2)
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

  sub_100005D3C(&qword_10005BBA8, "t~");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000299B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005D3C(&qword_10005BBA8, "t~");
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

_BYTE **sub_100029AAC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100029ABC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029AFC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_100029B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100029B44(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_100029BB8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_10002A204(&qword_10005B288);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_100029D48(a1, v5);
}

unint64_t sub_100029C3C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100029EF4(a1, a2, v6);
}

unint64_t sub_100029CB4(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100029FAC(a1, v4);
}

unint64_t sub_100029D48(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10002A204(&qword_10005BBA0);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100029EF4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_100029FAC(uint64_t a1, uint64_t a2)
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

unint64_t sub_10002A0D4()
{
  result = qword_10005B9C0;
  if (!qword_10005B9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005B9C0);
  }

  return result;
}

__n128 sub_10002A12C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002A140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10002A188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002A204(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_10002A254(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002A268(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10002A2B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10002A32C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100005D3C(&qword_10005BBB8, &qword_1000407D0);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = sub_100005D3C(&qword_10005BBC0, &qword_1000407D8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  sub_10002A558(&v21 - v15);
  sub_10002AAEC(v9);
  sub_10002B1E8(v16, v14);
  v17 = v3[2];
  v17(v7, v9, v2);
  sub_10002B1E8(v14, a1);
  v18 = sub_100005D3C(&qword_10005BBC8, &unk_1000407E0);
  v17((a1 + *(v18 + 48)), v7, v2);
  v19 = v3[1];
  v19(v9, v2);
  sub_10000619C(v16, &qword_10005BBC0, &qword_1000407D8);
  v19(v7, v2);
  return sub_10000619C(v14, &qword_10005BBC0, &qword_1000407D8);
}

__n128 sub_10002A558@<Q0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v47 = sub_100005D3C(&qword_10005BBE8, &qword_100040828);
  v2 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v4 = v46 - v3;
  v5 = v1[3];
  v6 = v1[4];
  v7 = *(v1 + 40);
  type metadata accessor for BackgroundActivitySession(0);
  sub_10002B8A0(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
  v8 = StateObject.wrappedValue.getter();
  v9 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v10 = *(v8 + v9);

  v11 = *(v10 + 16);

  if (v11 == 1)
  {
    if (qword_10005A208 != -1)
    {
      swift_once();
    }

    v12 = qword_10005C6E8;
    v13 = qword_10005A1E8;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = &qword_10005C6C8;
  }

  else
  {
    if (qword_10005A210 != -1)
    {
      swift_once();
    }

    v12 = qword_10005C6F0;
    v15 = qword_10005A1F0;

    if (v15 != -1)
    {
      swift_once();
    }

    v14 = &qword_10005C6D0;
  }

  v46[0] = v12;
  v46[1] = *v14;

  v16 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  v17 = *v1;
  v18 = v1[1];
  v19 = *(v1 + 16);
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_10002B8A0(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10002B5A4();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  LOBYTE(v18) = v23;

  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_10002B5F8(v20, v22, v18 & 1);

  LODWORD(v49) = static HierarchicalShapeStyle.primary.getter();
  v29 = Text.foregroundStyle<A>(_:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_10002B5F8(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  v37 = &v4[*(v47 + 36)];
  v38 = *(sub_100005D3C(&qword_10005BBF0, &qword_100040830) + 28);
  v39 = enum case for Text.TruncationMode.tail(_:);
  v40 = type metadata accessor for Text.TruncationMode();
  (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
  *v37 = swift_getKeyPath();
  *v4 = v29;
  *(v4 + 1) = v31;
  v4[16] = v33 & 1;
  *(v4 + 3) = v35;
  *(v4 + 4) = KeyPath;
  *(v4 + 5) = 1;
  v4[48] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();

  v41 = v48;
  sub_10002B908(v4, v48, &qword_10005BBE8, &qword_100040828);
  v42 = v41 + *(sub_100005D3C(&qword_10005BBC0, &qword_1000407D8) + 36);
  v43 = v54;
  *(v42 + 64) = v53;
  *(v42 + 80) = v43;
  *(v42 + 96) = v55;
  v44 = v50;
  *v42 = v49;
  *(v42 + 16) = v44;
  result = v52;
  *(v42 + 32) = v51;
  *(v42 + 48) = result;
  return result;
}

uint64_t sub_10002AAEC@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v60 = sub_100005D3C(&qword_10005BBD0, &unk_1000412C0);
  v2 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v4 = &v55[-v3];
  v61 = sub_100005D3C(&qword_10005BBD8, &qword_1000407F0);
  v5 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v62 = &v55[-v6];
  v8 = *(v1 + 24);
  v7 = *(v1 + 32);
  v57 = v1;
  v9 = *(v1 + 40);
  v10 = type metadata accessor for BackgroundActivitySession(0);
  v11 = sub_10002B8A0(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
  v68 = v8;
  v67 = v7;
  v66 = v9;
  v65 = v10;
  v64 = v11;
  v12 = StateObject.wrappedValue.getter();
  v13 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v14 = *(v12 + v13);

  v15 = *(v14 + 16);

  if (v15 == 1)
  {
    if (qword_10005A218 != -1)
    {
      swift_once();
    }

    v16 = qword_10005C6F8;
    v17 = qword_10005A1F8;

    if (v17 != -1)
    {
      swift_once();
    }

    v18 = &qword_10005C6D8;
  }

  else
  {
    if (qword_10005A220 != -1)
    {
      swift_once();
    }

    v16 = qword_10005C700;
    v19 = qword_10005A200;

    if (v19 != -1)
    {
      swift_once();
    }

    v18 = &qword_10005C6E0;
  }

  v20 = *v18;

  v21 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  v59 = v16;
  v58 = v20;

  v22 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  if (v22 == 1)
  {
    v23 = static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    v23 = static HierarchicalShapeStyle.primary.getter();
  }

  v56 = v23;
  v24 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  if (v24)
  {
    v25 = 0.6;
  }

  else
  {
    v25 = 1.0;
  }

  *&v69 = sub_10002B258(*v57, *(v57 + 8), *(v57 + 16));
  *(&v69 + 1) = v26;
  sub_10002B5A4();
  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;

  v32 = Text.font(_:)();
  v34 = v33;
  v36 = v35;

  sub_10002B5F8(v27, v29, v31 & 1);

  LODWORD(v69) = v56;
  v37 = Text.foregroundStyle<A>(_:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_10002B5F8(v32, v34, v36 & 1);

  KeyPath = swift_getKeyPath();
  v45 = &v4[*(sub_100005D3C(&qword_10005BBE8, &qword_100040828) + 36)];
  v46 = *(sub_100005D3C(&qword_10005BBF0, &qword_100040830) + 28);
  v47 = enum case for Text.TruncationMode.tail(_:);
  v48 = type metadata accessor for Text.TruncationMode();
  (*(*(v48 - 8) + 104))(v45 + v46, v47, v48);
  *v45 = swift_getKeyPath();
  *v4 = v37;
  *(v4 + 1) = v39;
  v4[16] = v41 & 1;
  *(v4 + 3) = v43;
  *(v4 + 4) = KeyPath;
  *(v4 + 5) = 1;
  v4[48] = 0;
  *&v4[*(v60 + 36)] = v25;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v49 = v62;
  sub_10002B908(v4, v62, &qword_10005BBD0, &unk_1000412C0);
  v50 = &v49[*(v61 + 36)];
  v51 = v74;
  v50[4] = v73;
  v50[5] = v51;
  v50[6] = v75;
  v52 = v70;
  *v50 = v69;
  v50[1] = v52;
  v53 = v72;
  v50[2] = v71;
  v50[3] = v53;
  sub_10002B618();
  View.monospacedDigit()();

  return sub_10000619C(v49, &qword_10005BBD8, &qword_1000407F0);
}

uint64_t sub_10002B180@<X0>(uint64_t a1@<X8>)
{
  v5 = *v1;
  *v6 = v1[1];
  *&v6[9] = *(v1 + 25);
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100005D3C(&qword_10005BBB0, &qword_1000407C8);
  return sub_10002A32C(a1 + *(v3 + 44));
}

uint64_t sub_10002B1E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005D3C(&qword_10005BBC0, &qword_1000407D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B258(uint64_t a1, uint64_t a2, int a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_10002B8A0(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v16;
  v14 = a3;
  v15 = a2;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v10;
  if (v16 == 1)
  {

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v11 = String.init(localized:table:bundle:locale:comment:)();
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v16 == 1)
  {

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }

  return v11;
}

unint64_t sub_10002B5A4()
{
  result = qword_10005BBE0;
  if (!qword_10005BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BBE0);
  }

  return result;
}

uint64_t sub_10002B5F8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10002B618()
{
  result = qword_10005BBF8;
  if (!qword_10005BBF8)
  {
    sub_100005F90(&qword_10005BBD8, &qword_1000407F0);
    sub_10002B6A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BBF8);
  }

  return result;
}

unint64_t sub_10002B6A4()
{
  result = qword_10005BC00;
  if (!qword_10005BC00)
  {
    sub_100005F90(&qword_10005BBD0, &unk_1000412C0);
    sub_10002B730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC00);
  }

  return result;
}

unint64_t sub_10002B730()
{
  result = qword_10005BC08;
  if (!qword_10005BC08)
  {
    sub_100005F90(&qword_10005BBE8, &qword_100040828);
    sub_10002B7E8();
    sub_100006260(&qword_10005BC30, &qword_10005BBF0, &qword_100040830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC08);
  }

  return result;
}

unint64_t sub_10002B7E8()
{
  result = qword_10005BC10;
  if (!qword_10005BC10)
  {
    sub_100005F90(&qword_10005BC18, &qword_1000412D0);
    sub_100006260(&qword_10005BC20, &qword_10005BC28, &qword_100040870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC10);
  }

  return result;
}

uint64_t sub_10002B8A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002B908(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005D3C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002B9C0()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005BC50);
  v1 = sub_100005D84(v0, qword_10005BC50);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10002BA88()
{
  result = [objc_opt_self() defaultValue];
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      qword_10005C698 = result;
      return result;
    }

    result = swift_unknownObjectRelease();
  }

  qword_10005C698 = 0;
  return result;
}

void sub_10002BB34(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_10002BBA4()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_10005C6C0 = result;
  return result;
}

id sub_10002BBD8@<X0>(void *a1@<X8>)
{
  if (qword_10005A1C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_10005C698;
  *a1 = qword_10005C698;

  return v2;
}

uint64_t sub_10002BC98(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_10002BCF8()
{
  if (qword_10005A1E0 != -1)
  {
    swift_once();
  }

  return byte_10005C6C0;
}

void sub_10002BD50(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UITraitOverrides();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_10005A1C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005D84(v7, qword_10005BC50);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "Update home icon style trait %@", v11, 0xCu);
      sub_100007E58(v12);
    }

    v14 = v6;
    UIViewController.traitOverrides.getter();
    sub_10002C870();
    v15 = v8;
    dispatch thunk of UIMutableTraits.subscript.setter();
    UIViewController.traitOverrides.setter();
  }
}

char *APUIUIViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for UITraitOverrides();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeScreenService;
  *&v3[v8] = [objc_allocWithZone(SBSHomeScreenService) init];
  *&v3[OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeStyleObserver] = 0;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for APUIUIViewController();
  v27.receiver = v3;
  v27.super_class = v10;
  v11 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", v9, a3);

  v12 = qword_10005A1C0;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005D84(v14, qword_10005BC50);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = [*&v13[OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeScreenService] homeScreenIconStyleConfiguration];
    *(v17 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "Initial home icon style trait %@", v17, 0xCu);
    sub_100007E58(v18);
  }

  v20 = OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeScreenService;
  v21 = *&v13[OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeScreenService];
  v22 = v13;
  [v21 homeScreenIconStyleConfiguration];
  UIViewController.traitOverrides.getter();
  sub_10002C870();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIViewController.traitOverrides.setter();
  v23 = *&v13[v20];
  v24 = [v23 addHomeScreenIconStyleObserver:v22];

  v25 = *&v22[OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeStyleObserver];
  *&v22[OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeStyleObserver] = v24;

  swift_unknownObjectRelease();
  return v22;
}

id APUISystemApertureView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void APUIUIViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeScreenService;
  *(v0 + v1) = [objc_allocWithZone(SBSHomeScreenService) init];
  *(v0 + OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeStyleObserver) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id APUIUIViewController.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC18ActivityProgressUI20APUIUIViewController_homeStyleObserver];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for APUIUIViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002C5A0(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C8D4();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_10002C998;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007578;
  aBlock[3] = &unk_1000530D8;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10002C9B8();
  sub_100005D3C(&qword_10005BD10, &qword_100040A60);
  sub_10002CA10();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_10002C870()
{
  result = qword_10005BC78;
  if (!qword_10005BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BC78);
  }

  return result;
}

unint64_t sub_10002C8D4()
{
  result = qword_10005B680;
  if (!qword_10005B680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005B680);
  }

  return result;
}

uint64_t sub_10002C920()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002C958()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C9A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10002C9B8()
{
  result = qword_10005B300;
  if (!qword_10005B300)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B300);
  }

  return result;
}

unint64_t sub_10002CA10()
{
  result = qword_10005B308;
  if (!qword_10005B308)
  {
    sub_100005F90(&qword_10005BD10, &qword_100040A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B308);
  }

  return result;
}

uint64_t sub_10002CAE0(uint64_t a1)
{
  v2 = sub_100005D3C(&qword_10005BD18, qword_100040A68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002CBFC(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  v5 = sub_100005D3C(&qword_10005BD18, qword_100040A68);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v13 - v8;
  a2(v7);
  v10 = type metadata accessor for Font.Design();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = static Font.system(size:weight:design:)();
  result = sub_10002CAE0(v9);
  *a3 = v11;
  return result;
}

uint64_t sub_10002CCF4()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005BD20);
  v1 = sub_100005D84(v0, qword_10005BD20);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10002CDBC(char a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    if (qword_10005A228 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005D84(v6, qword_10005BD20);

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100029504(a3, a4, &v19);
      _os_log_impl(&_mh_execute_header, oslog, v7, "App launch succeeded for bundle ID %s", v8, 0xCu);
      sub_100005E20(v9);

LABEL_16:

      return;
    }
  }

  else
  {
    if (qword_10005A228 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005D84(v11, qword_10005BD20);

    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v13 = 136315394;
      *(v13 + 4) = sub_100029504(a3, a4, &v19);
      *(v13 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v16 = _swift_stdlib_bridgeErrorToNSError();
        v17 = v16;
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      *(v13 + 14) = v16;
      *v14 = v17;
      _os_log_impl(&_mh_execute_header, oslog, v12, "App launch for bundle ID %s failed: %@", v13, 0x16u);
      sub_100007E58(v14);

      sub_100005E20(v15);

      goto LABEL_16;
    }
  }
}

void sub_10002D0AC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t APKActivityProgressEvent.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x676F7250776F6C73;
      case 1:
        return 0x6E69617244436F53;
      case 2:
        return 0xD000000000000011;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0xD000000000000016;
    }

    if (a1 == 6)
    {
      return 0xD000000000000010;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 3)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t APKActivityProgressEventResult.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 0x6C41737961776C61;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6465696E6564;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6465776F6C6C61;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6D72657465646E75;
  }
}

uint64_t sub_10002D318()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x6C41737961776C61;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6465696E6564;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0x6465776F6C6C61;
      }

      return 0x6E776F6E6B6E75;
    }

    return 0x6D72657465646E75;
  }
}

void sub_10002D3EC(uint64_t a1, unint64_t a2)
{
  if (qword_10005A228 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005D84(v4, qword_10005BD20);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100029504(a1, a2, v22);
    _os_log_impl(&_mh_execute_header, v5, v6, "Launching app for bundle ID %s", v7, 0xCu);
    sub_100005E20(v8);
  }

  sub_100005D3C(&unk_10005BDD0, "(}");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10003ED90;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v11;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v12;
  *(inited + 104) = v13;
  sub_100004E20(inited);
  swift_setDeallocating();
  sub_100005D3C(&qword_10005A6C8, &unk_10003E708);
  swift_arrayDestroy();
  v14 = [objc_allocWithZone(_LSOpenConfiguration) init];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v14 setFrontBoardOptions:isa];

  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v17 = v16;

    v18 = String._bridgeToObjectiveC()();
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    v22[4] = sub_10002D79C;
    v22[5] = v19;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_10002D0AC;
    v22[3] = &unk_100053128;
    v20 = _Block_copy(v22);

    v21 = v14;

    [v17 openApplicationWithBundleIdentifier:v18 usingConfiguration:v21 completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10002D764()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002D7A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002D7BC()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005C708);
  sub_100005D84(v0, qword_10005C708);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002D83C()
{
  sub_10000E524();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_10002D878()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005BDE0);
  v1 = sub_100005D84(v0, qword_10005BDE0);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id APUISystemApertureElementTransitionCoordinator.init()()
{
  v1 = &v0[OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_delegate];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v2 = &v0[OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_systemApertureLayoutModeCustomFrameInScreen];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_screenWidth;
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 bounds];
  v7 = v6;

  *&v0[v3] = v7;
  v8 = OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_animationPositionTransformYOffset;
  v9 = [v4 mainScreen];
  [v9 bounds];
  v11 = v10;

  *&v0[v8] = v11 / 3.0;
  v12 = OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_cornerRadius;
  v13 = objc_opt_self();
  v14 = [v13 sharedInstanceForEmbeddedDisplay];
  [v14 maximumContinuousCornerRadius];
  v16 = v15;

  *&v0[v12] = v16;
  v17 = OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_systemApertureEdgeInset;
  v18 = [v13 sharedInstanceForEmbeddedDisplay];
  [v18 minimumScreenEdgeInsets];
  v20 = v19;

  *&v0[v17] = v20;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for APUISystemApertureElementTransitionCoordinator();
  return objc_msgSendSuper2(&v22, "init");
}

void sub_10002DC24(void *a1)
{
  v2 = v1;
  v4 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v4)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = v4;
  v6 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v6)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_isPresentingFullScreenOverlay;
  if (v1[OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_isPresentingFullScreenOverlay])
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  v56 = [v10 view];
  if (!v56)
  {
    goto LABEL_29;
  }

  v49 = OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_transitionCoordinator;
  v11 = *&v1[OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_transitionCoordinator] + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_systemApertureLayoutModeCustomFrameInScreen;
  v13 = *v11;
  v12 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v16 = &selRef_initialFrameForViewController_;
  if (v1[v8])
  {
    v16 = &selRef_finalFrameForViewController_;
  }

  v53 = v10;
  [a1 *v16];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [objc_opt_self() effectWithStyle:8];
  v26 = [objc_allocWithZone(UIVisualEffectView) init];
  [v26 setFrame:{v18, v20, v22, v24}];
  [v26 setAutoresizingMask:18];

  v54 = v7;
  v51 = v12;
  if (v2[v8] == 1)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  [v26 setEffect:v27];

  v28 = [objc_allocWithZone(UIView) init];
  v29 = [objc_opt_self() whiteColor];
  [v28 setBackgroundColor:v29];

  [v28 setClipsToBounds:1];
  v30 = [v28 layer];
  [v30 setCornerRadius:*(*&v2[v49] + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_cornerRadius)];

  v31 = [v28 layer];
  [v31 setCornerCurve:kCACornerCurveID0];

  v32 = [a1 containerView];
  [v32 addSubview:v56];

  v33 = a1;
  v34 = [a1 containerView];
  [v34 addSubview:v26];

  [v56 setFrame:{v18, v20, v22, v24}];
  if (v2[v8] == 1)
  {
    v35 = *(*&v2[v49] + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_animationPositionTransformYOffset);
  }

  [v56 frame];
  [v56 setFrame:?];
  v36 = [a1 containerView];
  [v36 setMaskView:v28];

  if (v2[v8])
  {
    v37 = v13;
  }

  else
  {
    v37 = v18;
  }

  if (v2[v8])
  {
    v38 = v51;
  }

  else
  {
    v38 = v20;
  }

  if (v2[v8])
  {
    v39 = v14;
  }

  else
  {
    v39 = v22;
  }

  if (v2[v8])
  {
    v40 = v15;
  }

  else
  {
    v40 = v24;
  }

  [v28 setFrame:{v37, v38, v39, v40}];
  v55 = objc_opt_self();
  v41 = swift_allocObject();
  *(v41 + 16) = v26;
  *(v41 + 24) = v2;
  *(v41 + 32) = v25;
  *(v41 + 40) = v56;
  *(v41 + 48) = v18;
  *(v41 + 56) = v20;
  *(v41 + 64) = v22;
  *(v41 + 72) = v24;
  *(v41 + 80) = v28;
  *(v41 + 88) = v13;
  *(v41 + 96) = v51;
  *(v41 + 104) = v14;
  *(v41 + 112) = v15;
  v62 = sub_10002FCA8;
  v63 = v41;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100007578;
  v61 = &unk_1000532F0;
  v50 = _Block_copy(&aBlock);
  v42 = v26;
  v52 = v25;
  v43 = v2;
  v57 = v56;
  v44 = v28;

  v45 = swift_allocObject();
  v45[2] = v42;
  v45[3] = v33;
  v45[4] = v43;
  v62 = sub_10002FD10;
  v63 = v45;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_10002E4C8;
  v61 = &unk_100053340;
  v46 = _Block_copy(&aBlock);
  v47 = v42;
  v48 = v43;
  swift_unknownObjectRetain();

  [v55 _animateUsingSpringWithDuration:0 delay:v50 options:v46 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];

  _Block_release(v46);
  _Block_release(v50);
}

id sub_10002E240(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v23 = OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_isPresentingFullScreenOverlay;
  if (*(a2 + OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_isPresentingFullScreenOverlay))
  {
    a3 = 0;
  }

  [a1 setEffect:a3];
  [a4 setFrame:{a6, a7, a8, a9}];
  if ((*(a2 + v23) & 1) == 0)
  {
    v24 = *(*(a2 + OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_transitionCoordinator) + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_animationPositionTransformYOffset);
  }

  [a4 frame];
  [a4 setFrame:?];
  if (*(a2 + v23))
  {
    v25 = a6;
  }

  else
  {
    v25 = a10;
  }

  if (*(a2 + v23))
  {
    v26 = a7;
  }

  else
  {
    v26 = a11;
  }

  if (*(a2 + v23))
  {
    v27 = a8;
  }

  else
  {
    v27 = a12;
  }

  v28 = a13;
  if (*(a2 + v23))
  {
    v28 = a9;
  }

  return [a5 setFrame:{v25, v26, v27, v28}];
}

uint64_t sub_10002E378(char a1, id a2, void *a3, uint64_t a4)
{
  [a2 removeFromSuperview];
  v7 = [a3 containerView];
  [v7 setMaskView:0];

  [a3 completeTransition:a1 & 1];
  v8 = *(a4 + OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_transitionCoordinator);
  sub_1000064B0(v8 + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_delegate, v16, &unk_10005BF70, &qword_100040CF8);
  if (!v17)
  {
    return sub_10000619C(v16, &unk_10005BF70, &qword_100040CF8);
  }

  sub_10002FD1C(v16, v13);
  v9 = v8;
  sub_10000619C(v16, &unk_10005BF70, &qword_100040CF8);
  v10 = v14;
  v11 = v15;
  sub_100015A8C(v13, v14);
  (*(v11 + 24))(v9, v10, v11);

  return sub_100005E20(v13);
}

uint64_t sub_10002E4C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_10002E5D0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10002E61C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for EnvironmentValues();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 != 1 || (*a1 & 1) != 0)
  {
    return;
  }

  v45 = v14;
  v17 = *(a3 + 48);
  v18 = (*(a3 + 40))();
  v55 = *(a3 + 8);
  v54 = *a3;
  v19 = v54;
  if (v55 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    static os_log_type_t.fault.getter();
    v20 = static Log.runtimeIssuesLog.getter();
    v44 = v10;
    v21 = v6;
    v22 = v7;
    v23 = v20;
    os_log(_:dso:log:_:_:)();

    v7 = v22;
    v6 = v21;
    v10 = v44;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000619C(&v54, &qword_10005BEF8, &qword_100040CE0);
    (*(v12 + 8))(v16, v45);
    v19 = aBlock;
  }

  if (v19)
  {
    [v18 setModalPresentationStyle:4];
    [v18 setTransitioningDelegate:v19];
    swift_unknownObjectRelease();
    if (*(a3 + 33))
    {
LABEL_8:
      v24 = [objc_allocWithZone(SBSLockScreenService) init];
      if (qword_10005A238 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100005D84(v25, qword_10005BDE0);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Requesting device unlock if necessary", v28, 2u);
      }

      v29 = *(a3 + 24);
      v53 = *(a3 + 16);
      v30 = swift_allocObject();
      v31 = *(a3 + 16);
      *(v30 + 24) = *a3;
      *(v30 + 16) = v18;
      *(v30 + 40) = v31;
      *(v30 + 56) = *(a3 + 32);
      *(v30 + 72) = *(a3 + 48);
      *(v30 + 80) = v24;
      v50 = sub_10002FB74;
      v51 = v30;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_10002E4C8;
      v49 = &unk_100053278;
      v32 = _Block_copy(&aBlock);
      sub_1000064B0(&v54, v52, &qword_10005BEF8, &qword_100040CE0);
      v33 = v18;
      sub_10002FA50(&v53, v52);

      v34 = v24;

      [v34 requestPasscodeUnlockUIWithOptions:0 withCompletion:v32];

      _Block_release(v32);
      return;
    }
  }

  else
  {
    [v18 setModalPresentationStyle:0];
    if (*(a3 + 33))
    {
      goto LABEL_8;
    }
  }

  if (qword_10005A1B8 != -1)
  {
    swift_once();
  }

  v35 = *(a3 + 24);
  v53 = *(a3 + 16);
  v36 = swift_allocObject();
  v37 = *(a3 + 16);
  *(v36 + 16) = *a3;
  *(v36 + 32) = v37;
  *(v36 + 48) = *(a3 + 32);
  *(v36 + 64) = *(a3 + 48);
  sub_1000064B0(&v54, &aBlock, &qword_10005BEF8, &qword_100040CE0);

  sub_10002FA50(&v53, &aBlock);
  UUID.init()();
  v38 = UUID.uuidString.getter();
  v40 = v39;
  (*(v7 + 8))(v10, v6);
  aBlock = v38;
  v47 = v40;
  v48 = v18;
  LOWORD(v49) = 1;
  v50 = 2;
  v41 = APUIRemoteAlertPresentationManager.present(_:)(&aBlock);

  if (v41)
  {
    swift_beginAccess();
    v42 = *(v41 + 64);
    v43 = *(v41 + 72);
    *(v41 + 64) = sub_10002FE18;
    *(v41 + 72) = v36;

    sub_100007E00(v42);
  }
}

id sub_10002EC04(char a1, void *a2, uint64_t *a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    if (qword_10005A238 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005D84(v13, qword_10005BDE0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Device was unlocked", v16, 2u);
    }

    if (qword_10005A1B8 != -1)
    {
      swift_once();
    }

    v17 = *a3;
    v37 = *(a3 + 8);
    v18 = a3[3];
    v35 = a3[2];
    v36 = v17;
    v19 = a3[6];
    v20 = swift_allocObject();
    v21 = *(a3 + 1);
    *(v20 + 16) = *a3;
    *(v20 + 32) = v21;
    *(v20 + 48) = *(a3 + 2);
    *(v20 + 64) = a3[6];

    sub_1000064B0(&v36, &v38, &qword_10005BEF8, &qword_100040CE0);
    sub_10002FA50(&v35, &v38);
    UUID.init()();
    v22 = UUID.uuidString.getter();
    v24 = v23;
    (*(v9 + 8))(v12, v8);
    *&v38 = v22;
    *(&v38 + 1) = v24;
    v39 = a2;
    v40 = 1;
    v41 = 2;
    v25 = a2;
    v26 = APUIRemoteAlertPresentationManager.present(_:)(&v38);

    if (v26)
    {
      swift_beginAccess();
      v27 = *(v26 + 64);
      v28 = *(v26 + 72);
      *(v26 + 64) = sub_10002FBF0;
      *(v26 + 72) = v20;

      sub_100007E00(v27);
    }
  }

  else
  {
    if (qword_10005A238 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100005D84(v29, qword_10005BDE0);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Device was not unlocked", v32, 2u);
    }

    v38 = *(a3 + 1);
    LOBYTE(v39) = *(a3 + 32);
    v34[0] = 0;
    sub_100005D3C(&qword_10005BEF0, &qword_100040CD8);
    Binding.wrappedValue.setter();
  }

  return [a4 invalidate];
}

uint64_t sub_10002EFF8()
{
  v1 = v0[3];
  v3 = *(v0 + 32);
  v4 = v0[6];
  v8 = v0[2];
  v2 = v8;
  v9 = v1;
  v10 = v3;
  sub_100005D3C(&qword_10005BEF0, &qword_100040CD8);
  Binding.wrappedValue.getter();
  v7[15] = v7[0];
  v8 = *v0;
  LOBYTE(v9) = *(v0 + 8);
  v11 = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = *v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  *(v5 + 48) = v3;
  *(v5 + 49) = *(v0 + 33);
  *(v5 + 56) = v0[5];
  *(v5 + 64) = v4;
  sub_1000064B0(&v8, v7, &qword_10005BEF8, &qword_100040CE0);
  sub_10002FA50(&v11, v7);

  sub_100005D3C(&qword_10005BF00, &unk_100040CE8);
  sub_10002FAAC();
  View.onChange<A>(of:initial:_:)();
}

uint64_t View.remoteAlert(isPresented:requireUnlock:content:)()
{
  swift_getKeyPath();

  View.modifier<A>(_:)();
}

uint64_t View.remoteAlert<A>(isPresented:requireUnlock:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a8;
  v14[4] = a9;
  v14[5] = a10;
  v14[6] = a5;
  v14[7] = a6;
  swift_getKeyPath();

  View.modifier<A>(_:)();
}

uint64_t sub_10002F384(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for APUISecureHostingController();
  a1();
  v10 = sub_10003AB2C(v9);
  (*(v6 + 8))(v9, a4);
  return v10;
}

void sub_10002F478(void *a1, uint64_t a2)
{
  if ([a1 activeLayoutMode] == 4)
  {
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = *(a2 + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_screenWidth) * 0.5;
      v18.origin.x = v7;
      v18.origin.y = v9;
      v18.size.width = v11;
      v18.size.height = v13;
      Width = CGRectGetWidth(v18);
      v16 = *(a2 + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_systemApertureEdgeInset);
      v17 = a2 + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_systemApertureLayoutModeCustomFrameInScreen;
      *v17 = v14 - Width * 0.5;
      *(v17 + 8) = v16;
      *(v17 + 16) = v11;
      *(v17 + 24) = v13;
    }

    else
    {
      __break(1u);
    }
  }
}

id _s18ActivityProgressUI46APUISystemApertureElementTransitionCoordinatorC19animationController12forPresented10presenting6sourceSo06UIViewJ21AnimatedTransitioning_pSgSo0oJ0C_A2KtF_0()
{
  v1 = v0;
  sub_1000064B0(v0 + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_delegate, v12, &unk_10005BF70, &qword_100040CF8);
  if (v13)
  {
    sub_10002FD1C(v12, v8);
    sub_10000619C(v12, &unk_10005BF70, &qword_100040CF8);
    v2 = v9;
    v3 = v10;
    sub_100015A8C(v8, v9);
    (*(v3 + 8))(v0, v2, v3);
    sub_100005E20(v8);
  }

  else
  {
    sub_10000619C(v12, &unk_10005BF70, &qword_100040CF8);
  }

  v4 = type metadata accessor for APUISystemApertureElementTransition();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_isPresentingFullScreenOverlay] = 1;
  *&v5[OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_transitionCoordinator] = v1;
  v11.receiver = v5;
  v11.super_class = v4;
  v6 = v1;
  return objc_msgSendSuper2(&v11, "init");
}

id _s18ActivityProgressUI46APUISystemApertureElementTransitionCoordinatorC19animationController12forDismissedSo06UIViewJ21AnimatedTransitioning_pSgSo0mJ0C_tF_0()
{
  v1 = v0;
  sub_1000064B0(v0 + OBJC_IVAR____TtC18ActivityProgressUI46APUISystemApertureElementTransitionCoordinator_delegate, v12, &unk_10005BF70, &qword_100040CF8);
  if (v13)
  {
    sub_10002FD1C(v12, v8);
    sub_10000619C(v12, &unk_10005BF70, &qword_100040CF8);
    v2 = v9;
    v3 = v10;
    sub_100015A8C(v8, v9);
    (*(v3 + 16))(v0, v2, v3);
    sub_100005E20(v8);
  }

  else
  {
    sub_10000619C(v12, &unk_10005BF70, &qword_100040CF8);
  }

  v4 = type metadata accessor for APUISystemApertureElementTransition();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_isPresentingFullScreenOverlay] = 0;
  *&v5[OBJC_IVAR____TtC18ActivityProgressUIP33_A73398DBE9C416E2311A5D216094DCE135APUISystemApertureElementTransition_transitionCoordinator] = v1;
  v11.receiver = v5;
  v11.super_class = v4;
  v6 = v1;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_10002F7C4()
{
  v1 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002F7FC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return sub_10002F384(*(v0 + 48), *(v0 + 56), *(v0 + 16), *(v0 + 24));
}

uint64_t sub_10002F830(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ModifiedContent();
  sub_10002F894();
  return swift_getWitnessTable();
}

unint64_t sub_10002F894()
{
  result = qword_10005BEE8;
  if (!qword_10005BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BEE8);
  }

  return result;
}

uint64_t sub_10002F8E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  type metadata accessor for ModifiedContent();
  sub_10002F894();
  return swift_getWitnessTable();
}

__n128 sub_10002F95C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10002F978(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10002F9C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002FA3C(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_10002FAAC()
{
  result = qword_10005BF08;
  if (!qword_10005BF08)
  {
    sub_100005F90(&qword_10005BF00, &unk_100040CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005BF08);
  }

  return result;
}

uint64_t sub_10002FB10()
{
  sub_10002FA3C(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10002FB84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002FB9C()
{
  sub_10002FA3C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002FBF4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  sub_100005D3C(&qword_10005BEF0, &qword_100040CD8);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10002FC50()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10002FCC8()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10002FD1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002FD90()
{
  sub_100005F90(&qword_10005BF00, &unk_100040CE8);
  sub_10002FAAC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10002FE24()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005BF80);
  v1 = sub_100005D84(v0, qword_10005BF80);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000300D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WindowSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100030204(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = qword_10005A240;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005D84(v8, qword_10005BF80);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      v14 = [v5 description];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = sub_100029504(v15, v17, &v24);

      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "WindowSceneDelegate: Received windowScene: %s. Hosting debugging UI for ActivityProgressUI Launch Angel.", v12, 0xCu);
      sub_100005E20(v13);
    }

    v19 = [objc_allocWithZone(type metadata accessor for APUISecureWindow()) initWithWindowScene:v5];
    *(v2 + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_testAppView) = 0;
    v20 = objc_allocWithZone(sub_100005D3C(&unk_10005BFD0, "|"));
    v23 = UIHostingController.init(rootView:)();
    v21 = v19;
    [v21 setRootViewController:v23];
    [v21 makeKeyAndVisible];
    v22 = *(v2 + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC18ActivityProgressUI19WindowSceneDelegate_window) = v21;

    if (qword_10005A1A0 != -1)
    {
      swift_once();
    }

    sub_10001B5F0();
  }
}

void sub_1000304C0(const char *a1)
{
  if (qword_10005A240 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005D84(v2, qword_10005BF80);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

double APUISystemApertureView.sizeThatFits(_:for:)(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return 48.3333;
  }

  else
  {
    return dbl_100040E20[a1 + 1];
  }
}

uint64_t APUISystemApertureView.createConstraints(forSubview:offset:alignedToEdge:)(void *a1, uint64_t a2, double a3)
{
  if (a2 <= 3)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
LABEL_4:
        sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_100040DB0;
        v8 = [a1 widthAnchor];
        v9 = [v3 widthAnchor];
        v10 = -a3;
        v11 = [v8 constraintEqualToAnchor:v9 constant:v10];

        *(v7 + 32) = v11;
        v12 = [a1 heightAnchor];
        v13 = [v3 heightAnchor];
        v14 = [v12 constraintEqualToAnchor:v13 constant:v10];

        result = v7;
        *(v7 + 40) = v14;
        return result;
      }

      goto LABEL_7;
    }

LABEL_10:
    sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100040DB0;
    v27 = [a1 widthAnchor];
    v28 = [v3 widthAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:-a3];

    *(v26 + 32) = v29;
    v30 = [a1 heightAnchor];
    v31 = [a1 widthAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    *(v26 + 40) = v32;
    v35 = v26;
    if (a2 == 1)
    {
      v23 = [a1 topAnchor];
      v24 = [v3 topAnchor];
    }

    else
    {
      v23 = [a1 bottomAnchor];
      v24 = [v3 bottomAnchor];
    }

    goto LABEL_9;
  }

  if (a2 == 4)
  {
    goto LABEL_10;
  }

  if (a2 != 8)
  {
    goto LABEL_4;
  }

LABEL_7:
  sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100040DB0;
  v17 = [a1 heightAnchor];
  v18 = [v3 heightAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-a3];

  *(v16 + 32) = v19;
  v20 = [a1 widthAnchor];
  v21 = [a1 heightAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v35 = v16;
  if (a2 == 2)
  {
    v23 = [a1 leadingAnchor];
    v24 = [v3 leadingAnchor];
  }

  else
  {
    v23 = [a1 trailingAnchor];
    v24 = [v3 trailingAnchor];
  }

LABEL_9:
  v25 = [v23 constraintEqualToAnchor:v24];
  v33 = v25;

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v35;
}

uint64_t APUISystemApertureView.expanded.getter()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t APUISystemApertureView.expanded.setter(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id APUISystemApertureView.init()()
{
  v0[OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APUISystemApertureView();
  return objc_msgSendSuper2(&v2, "initWithFrame:", 0.0, 0.0, 23.0, 23.0);
}

void APUISystemApertureView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double static APUISystemApertureView.size(forExpanded:)(char a1)
{
  result = 48.3333;
  if ((a1 & 1) == 0)
  {
    return 23.0;
  }

  return result;
}

double APUISystemApertureView.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)()
{
  v1 = (*((swift_isaMask & *v0) + 0x58))();
  result = 48.3333;
  if ((v1 & 1) == 0)
  {
    return 23.0;
  }

  return result;
}

id APUISystemApertureView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

id APUISystemApertureView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APUISystemApertureView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10003103C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100031060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1000310A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100031110(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_100031158(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000311C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v7 = sub_100005D3C(&qword_10005C018, &qword_100041108);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v53 = (v50 - v9);
  v56 = sub_100005D3C(&qword_10005C020, &qword_100041110);
  v10 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v57 = v50 - v11;
  v12 = sub_100005D3C(&qword_10005C028, &qword_100041118);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v50 - v14;
  type metadata accessor for BackgroundActivitySession(0);
  v16 = sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
  v17 = StateObject.wrappedValue.getter();
  v18 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v19 = *(v17 + v18);

  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v20 - 1;
    v22 = type metadata accessor for UUID();
    v23 = a3;
    v24 = v16;
    v25 = a1;
    v26 = *(v22 - 8);
    (*(v26 + 16))(v15, v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21, v22);

    (*(v26 + 56))(v15, 0, 1, v22);
    a1 = v25;
    v16 = v24;
    a3 = v23;
  }

  else
  {

    v27 = type metadata accessor for UUID();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  }

  v28 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);

  v55 = v15;
  if (v28 == 1)
  {
    v29 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

    if (v29)
    {
      v30 = 0x4030000000000000;
    }

    else
    {
      v30 = 0x402C000000000000;
    }

    v31 = 0x402A000000000000;
    if (v29)
    {
      v31 = 0x4034000000000000;
    }

    v51 = v31;
    v52 = v30;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v32 = static HorizontalAlignment.leading.getter();
  v33 = v53;
  *v53 = v32;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  v50[2] = *(sub_100005D3C(&qword_10005C030, &qword_100041120) + 44);
  v34 = StateObject.wrappedValue.getter();
  v54 = v16;
  v35 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v36 = *(v34 + v35);

  v59 = v36;
  v50[1] = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = a1;
  *(v37 + 24) = a2;
  *(v37 + 32) = a3 & 1;
  sub_100006258();
  sub_100005D3C(&qword_10005B2B0, &qword_10003F0F8);
  sub_100005D3C(&qword_10005C038, &qword_100041160);
  sub_100006260(&qword_10005C040, &qword_10005B2B0, &qword_10003F0F8);
  sub_100036C68();
  ForEach<>.init(_:id:content:)();
  LODWORD(v34) = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  if (v34 == 1 && (v38 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession), , v38 == 1))
  {
    v39 = static Color.black.getter();
  }

  else
  {
    v39 = static Color.clear.getter();
  }

  v40 = v39;
  v41 = v55;
  v42 = static Edge.Set.all.getter();
  v43 = v57;
  sub_10002B908(v33, v57, &qword_10005C018, &qword_100041108);
  v44 = v43 + *(v56 + 36);
  *v44 = v40;
  *(v44 + 8) = v42;
  LOBYTE(v40) = static Edge.Set.all.getter();
  sub_10000619C(v41, &qword_10005C028, &qword_100041118);
  v45 = v58;
  sub_10002B908(v43, v58, &qword_10005C020, &qword_100041110);
  result = sub_100005D3C(&qword_10005C058, &qword_100041168);
  v47 = v45 + *(result + 36);
  *v47 = v40;
  v49 = v51;
  v48 = v52;
  *(v47 + 8) = v52;
  *(v47 + 16) = v49;
  *(v47 + 24) = v48;
  *(v47 + 32) = v49;
  *(v47 + 40) = 0;
  return result;
}

uint64_t sub_100031808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for BackgroundActivityTaskView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BackgroundActivitySession(0);
  sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
  v15 = StateObject.wrappedValue.getter();
  v16 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v17 = *(v15 + v16);

  if (*(v17 + 16) && (v18 = sub_100029BB8(a1), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = a4 & 1;
    sub_100006258();
    type metadata accessor for APUISystemApertureLayoutState();
    sub_100039A08(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);
    v22 = EnvironmentObject.init()();
    v24 = v23;
    *&v14[*(v10 + 28)] = swift_getKeyPath();
    sub_100005D3C(&qword_10005C060, &qword_1000411A0);
    swift_storeEnumTagMultiPayload();
    *v14 = sub_100037D94;
    *(v14 + 1) = v21;
    v14[16] = 0;
    *(v14 + 3) = sub_1000088C4;
    *(v14 + 4) = v20;
    v14[40] = 0;
    *(v14 + 6) = v22;
    *(v14 + 7) = v24;
    sub_100037E04(v14, a5);
    v25 = 0;
  }

  else
  {

    v25 = 1;
  }

  return (*(v11 + 56))(a5, v25, 1, v10);
}

uint64_t sub_100031AC4()
{
  type metadata accessor for BackgroundActivitySession(0);
  sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession);

  return StateObject.wrappedValue.getter();
}

uint64_t sub_100031B58@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005D3C(&qword_10005C060, &qword_1000411A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for BackgroundActivityTaskView();
  sub_1000064B0(v1 + *(v12 + 28), v11, &qword_10005C060, &qword_1000411A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ColorScheme();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100031D6C@<X0>(uint64_t *a1@<X8>)
{
  v310 = a1;
  v2 = type metadata accessor for ColorScheme();
  v259 = *(v2 - 8);
  v260 = v2;
  v3 = *(v259 + 64);
  v4 = __chkstk_darwin(v2);
  v253 = v246 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v252 = v246 - v6;
  v249 = sub_100005D3C(&qword_10005C268, &qword_1000413D8);
  v7 = *(*(v249 - 8) + 64);
  __chkstk_darwin(v249);
  v258 = v246 - v8;
  v255 = sub_100005D3C(&qword_10005C270, &qword_1000413E0);
  v9 = *(*(v255 - 8) + 64);
  __chkstk_darwin(v255);
  v257 = v246 - v10;
  v254 = sub_100005D3C(&qword_10005C278, &qword_1000413E8);
  v11 = *(*(v254 - 8) + 64);
  __chkstk_darwin(v254);
  v256 = v246 - v12;
  v13 = sub_100005D3C(&qword_10005C280, &qword_1000413F0);
  v286 = *(v13 - 8);
  v287 = v13;
  v14 = *(v286 + 64);
  v15 = __chkstk_darwin(v13);
  v251 = v246 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v250 = v246 - v17;
  v18 = sub_100005D3C(&qword_10005C288, &qword_1000413F8);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v289 = v246 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v288 = v246 - v22;
  v23 = type metadata accessor for APKDeviceLockState();
  v279 = *(v23 - 8);
  v280 = v23;
  v24 = *(v279 + 64);
  v25 = __chkstk_darwin(v23);
  v278 = v246 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v277 = v246 - v27;
  v308 = sub_100005D3C(&qword_10005C290, &qword_100041400);
  v282 = *(v308 - 8);
  v28 = *(v282 + 64);
  v29 = __chkstk_darwin(v308);
  v307 = v246 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v306 = v246 - v31;
  v32 = type metadata accessor for BackgroundActivityTaskView();
  v269 = *(v32 - 8);
  v33 = *(v269 + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v247 = v246 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v300 = v246 - v37;
  v270 = v38;
  __chkstk_darwin(v36);
  v313 = v246 - v39;
  v281 = sub_100005D3C(&qword_10005C298, &qword_100041408);
  v302 = *(v281 - 8);
  v40 = v302[8];
  v41 = __chkstk_darwin(v281);
  v301 = v246 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v305 = v246 - v43;
  v44 = sub_100005D3C(&qword_10005C2A0, &qword_100041410);
  v45 = *(*(v44 - 8) + 64);
  v46 = __chkstk_darwin(v44 - 8);
  v285 = v246 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v309 = (v246 - v48);
  v299 = type metadata accessor for UUID();
  v311 = *(v299 - 8);
  v49 = *(v311 + 64);
  __chkstk_darwin(v299);
  v265 = v246 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_100005D3C(&qword_10005C2A8, &qword_100041418);
  v51 = *(*(v304 - 8) + 64);
  v52 = __chkstk_darwin(v304);
  v276 = v246 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v55 = v246 - v54;
  v56 = sub_100005D3C(&qword_10005C028, &qword_100041118);
  v57 = *(*(v56 - 8) + 64);
  v58 = __chkstk_darwin(v56 - 8);
  v271 = v246 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v303 = v246 - v61;
  v62 = __chkstk_darwin(v60);
  v291 = v246 - v63;
  v64 = __chkstk_darwin(v62);
  v266 = v246 - v65;
  v66 = __chkstk_darwin(v64);
  v292 = v246 - v67;
  __chkstk_darwin(v66);
  v293 = v246 - v68;
  v69 = *v1;
  v70 = *(v1 + 8);
  v319 = v1;
  v71 = *(v1 + 16);
  v72 = type metadata accessor for BackgroundActivitySession(0);
  v73 = sub_100039A08(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
  v74 = StateObject.wrappedValue.getter();
  v75 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v76 = *(v74 + v75);

  v77 = v71;

  v318 = *(v76 + 16);

  LODWORD(v75) = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);

  v78 = 0x402A000000000000;
  v295 = 0x402A000000000000;
  v79 = 0x402A000000000000;
  if (v75 == 1)
  {
    v80 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

    if (v80)
    {
      v79 = 0x4036000000000000;
    }

    else
    {
      v79 = 0x402A000000000000;
    }

    v78 = 0x4031000000000000;
    if (!v80)
    {
      v78 = 0x402A000000000000;
    }

    v295 = 0;
  }

  v283 = v78;
  v284 = v79;
  v81 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);

  if (v81 == 1)
  {
    v82 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);
  }

  else
  {
    v82 = 0;
  }

  v275 = v55;
  v268 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  v246[1] = v318 == 1;
  v83 = 0x4030000000000000;
  if (v318 == 1)
  {
    v83 = 0x4032000000000000;
  }

  v267 = v83;
  v84 = 32.0;
  if (v318 == 1)
  {
    v84 = 38.0;
  }

  LODWORD(v290) = v82;
  if (v82)
  {
    v85 = 6.0;
  }

  else
  {
    v85 = 11.0;
  }

  if (v82)
  {
    v86 = v84;
  }

  else
  {
    v86 = 38.0;
  }

  v317 = v69;
  v315 = v77;
  v87 = StateObject.wrappedValue.getter();
  v88 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v89 = *(v87 + v88);

  v90 = *(v89 + 16);
  v316 = v70;
  v312 = v72;
  v314 = v73;
  if (v90)
  {
    v91 = v311;
    v92 = v293;
    v93 = v299;
    (*(v311 + 16))(v293, v89 + ((*(v311 + 80) + 32) & ~*(v311 + 80)), v299);
    v94 = 0;
  }

  else
  {
    v94 = 1;
    v91 = v311;
    v93 = v299;
    v92 = v293;
  }

  v95 = *(v91 + 56);
  v95(v92, v94, 1, v93);
  v96 = *(v319 + 24);
  v97 = *(v319 + 32);
  v98 = *(v319 + 40);
  v99 = type metadata accessor for BackgroundActivitySessionTask(0);
  v100 = sub_100039A08(&qword_10005B410, type metadata accessor for BackgroundActivitySessionTask);
  v298 = v97;
  v299 = v96;
  LODWORD(v297) = v98;
  v296 = v99;
  v294 = v100;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v101 = v292;
  static Published.subscript.getter();

  v273 = v95;
  v274 = v91 + 56;
  v95(v101, 0, 1, v93);
  v102 = *(v304 + 48);
  v103 = v92;
  v104 = v92;
  v105 = v275;
  sub_1000064B0(v104, v275, &qword_10005C028, &qword_100041118);
  sub_1000064B0(v101, v105 + v102, &qword_10005C028, &qword_100041118);
  v106 = *(v311 + 48);
  v107 = v106(v105, 1, v93);
  v108 = v93;
  v272 = v106;
  if (v107 == 1)
  {
    sub_10000619C(v101, &qword_10005C028, &qword_100041118);
    sub_10000619C(v103, &qword_10005C028, &qword_100041118);
    if (v106(v105 + v102, 1, v93) == 1)
    {
      sub_10000619C(v105, &qword_10005C028, &qword_100041118);
      LODWORD(v293) = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v109 = v266;
    sub_1000064B0(v105, v266, &qword_10005C028, &qword_100041118);
    if (v106(v105 + v102, 1, v93) != 1)
    {
      v111 = v311;
      v112 = v265;
      (*(v311 + 32))(v265, v105 + v102, v93);
      sub_100039A08(&qword_10005BBA0, &type metadata accessor for UUID);
      LODWORD(v264) = dispatch thunk of static Equatable.== infix(_:_:)();
      v113 = *(v111 + 8);
      v113(v112, v93);
      sub_10000619C(v292, &qword_10005C028, &qword_100041118);
      sub_10000619C(v293, &qword_10005C028, &qword_100041118);
      v113(v266, v93);
      sub_10000619C(v105, &qword_10005C028, &qword_100041118);
      v110 = v264 ^ 1;
      goto LABEL_31;
    }

    sub_10000619C(v292, &qword_10005C028, &qword_100041118);
    sub_10000619C(v293, &qword_10005C028, &qword_100041118);
    (*(v311 + 8))(v109, v93);
  }

  sub_10000619C(v105, &qword_10005C2A8, &qword_100041418);
  v110 = 1;
LABEL_31:
  LODWORD(v293) = v110;
LABEL_32:
  v114 = v291;
  v115 = StateObject.wrappedValue.getter();
  v116 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v117 = *(v115 + v116);

  v118 = *(v117 + 16);
  if (v118)
  {
    (*(v311 + 16))(v114, v117 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * (v118 - 1), v93);
    v119 = 0;
  }

  else
  {
    v119 = 1;
  }

  v120 = v273;
  (v273)(v114, v119, 1, v108);
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v121 = v303;
  static Published.subscript.getter();

  v120(v121, 0, 1, v108);
  v122 = v121;
  v123 = *(v304 + 48);
  v124 = v276;
  sub_1000064B0(v114, v276, &qword_10005C028, &qword_100041118);
  sub_1000064B0(v122, v124 + v123, &qword_10005C028, &qword_100041118);
  v125 = v272;
  if ((v272)(v124, 1, v108) == 1)
  {
    sub_10000619C(v122, &qword_10005C028, &qword_100041118);
    sub_10000619C(v114, &qword_10005C028, &qword_100041118);
    if (v125(v124 + v123, 1, v108) == 1)
    {
      sub_10000619C(v124, &qword_10005C028, &qword_100041118);
      v126 = 1;
LABEL_41:
      v130 = v290;
      goto LABEL_43;
    }

LABEL_40:
    sub_10000619C(v124, &qword_10005C2A8, &qword_100041418);
    v126 = 0;
    goto LABEL_41;
  }

  v127 = v271;
  sub_1000064B0(v124, v271, &qword_10005C028, &qword_100041118);
  v128 = v125(v124 + v123, 1, v108);
  v129 = v108;
  if (v128 == 1)
  {
    sub_10000619C(v303, &qword_10005C028, &qword_100041118);
    sub_10000619C(v114, &qword_10005C028, &qword_100041118);
    (*(v311 + 8))(v127, v108);
    goto LABEL_40;
  }

  v131 = v311;
  v132 = v265;
  (*(v311 + 32))(v265, v124 + v123, v129);
  sub_100039A08(&qword_10005BBA0, &type metadata accessor for UUID);
  v126 = dispatch thunk of static Equatable.== infix(_:_:)();
  v133 = *(v131 + 8);
  v133(v132, v129);
  sub_10000619C(v303, &qword_10005C028, &qword_100041118);
  sub_10000619C(v291, &qword_10005C028, &qword_100041118);
  v133(v271, v129);
  v130 = v290;
  sub_10000619C(v124, &qword_10005C028, &qword_100041118);
LABEL_43:
  v134 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

  v135 = static HorizontalAlignment.leading.getter();
  v136 = v310;
  *v310 = v135;
  v136[1] = 0;
  *(v136 + 16) = 0;
  v248 = v134;
  LODWORD(v271) = v126;
  v261 = v130 ^ 1;
  LODWORD(v266) = v293 | v130 ^ 1;
  if ((v266 & 1) != 0 || v318 == 1)
  {
    goto LABEL_49;
  }

  if (!*(v319 + 48))
  {
    goto LABEL_83;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (*v346 < 1.0 || *&v346[8] < 1.0)
  {
LABEL_49:
    v293 = 0;
    v291 = 0;
    v275 = 0;
    v276 = 0;
    v273 = 0;
    v274 = 0;
    v272 = 0;
    LODWORD(v292) = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LODWORD(v292) = 0;
    v293 = v377;
    v291 = v379;
    v275 = v382;
    v276 = v381;
    LOBYTE(v329[0]) = 1;
    LOBYTE(v334[0]) = v378;
    LOBYTE(v331) = v380;
    v272 = 1;
    v273 = v378;
    v274 = v380;
    v346[0] = 0;
  }

  v137 = v318 != 1;
  v138 = static VerticalAlignment.center.getter();
  v139 = 0x4028000000000000;
  if (v268)
  {
    v139 = v267;
  }

  v140 = v309;
  *v309 = v138;
  v140[1] = v139;
  *(v140 + 16) = 0;
  v141 = v319;
  v142 = v313;
  sub_100038E90(v319, v313);
  v143 = *(v269 + 80);
  v144 = (v143 + 16) & ~v143;
  v145 = v144 + v270;
  v146 = swift_allocObject();
  sub_100037E04(v142, v146 + v144);
  v147 = v300;
  sub_100038E90(v141, v300);
  v148 = swift_allocObject();
  sub_100037E04(v147, v148 + v144);
  v352 = 0;
  v351 = 0;
  *v346 = sub_100039C60;
  *&v346[8] = v146;
  v346[16] = 0;
  *&v346[24] = sub_100039C68;
  *&v346[32] = v148;
  v346[40] = 0;
  *&v346[48] = v86;
  *&v346[56] = v85;
  v346[64] = 0;
  sub_100038E90(v141, v142);
  v303 = v145;
  v304 = v143;
  v149 = swift_allocObject();
  v311 = v144;
  sub_100037E04(v142, v149 + v144);
  sub_100008730();
  View.onTapGesture(count:perform:)();

  v353[2] = *&v346[32];
  v353[3] = *&v346[48];
  v354 = v346[64];
  v353[1] = *&v346[16];
  v353[0] = *v346;
  sub_100038EF8(v353);
  v150 = static HorizontalAlignment.leading.getter();
  v350 = 0;
  v270 = v150;
  if ((v266 | v137))
  {
    goto LABEL_53;
  }

  if (*(v319 + 48))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*v346 >= 1.0 && *&v346[8] >= 1.0)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v268 = 0;
      v269 = v362;
      v266 = v366;
      v267 = v364;
      LOBYTE(v329[0]) = 1;
      LOBYTE(v334[0]) = v363;
      LOBYTE(v331) = v365;
      v262 = 1;
      v263 = v363;
      v264 = v365;
      v265 = v367;
      v346[0] = 0;
      goto LABEL_58;
    }

LABEL_53:
    v269 = 0;
    v266 = 0;
    v267 = 0;
    v264 = 0;
    v265 = 0;
    v262 = 0;
    v263 = 0;
    v268 = 1;
LABEL_58:
    v151 = v319;
    v152 = v313;
    sub_100038E90(v319, v313);
    v153 = swift_allocObject();
    v154 = v311;
    sub_100037E04(v152, v153 + v311);
    v155 = v300;
    sub_100038E90(v151, v300);
    v156 = swift_allocObject();
    sub_100037E04(v155, v156 + v154);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v349 = 0;
    v348 = 0;
    *&v347[55] = v358;
    *&v347[71] = v359;
    *&v347[87] = v360;
    *&v347[103] = v361;
    *&v347[7] = v355;
    *&v347[23] = v356;
    *&v347[39] = v357;
    *&v331 = sub_100038F28;
    *(&v331 + 1) = v153;
    LOBYTE(v332) = 0;
    *(&v332 + 1) = sub_100038F40;
    *&v333[0] = v156;
    BYTE8(v333[0]) = 0;
    *(v333 + 9) = *v347;
    *(&v333[3] + 9) = *&v347[48];
    *(&v333[2] + 9) = *&v347[32];
    *(&v333[1] + 9) = *&v347[16];
    *(&v333[7] + 1) = *(&v361 + 1);
    *(&v333[6] + 9) = *&v347[96];
    *(&v333[5] + 9) = *&v347[80];
    *(&v333[4] + 9) = *&v347[64];
    *&v330[23] = v332;
    *&v330[7] = v331;
    *&v330[87] = v333[3];
    *&v330[71] = v333[2];
    *&v330[55] = v333[1];
    *&v330[39] = v333[0];
    *&v330[151] = v333[7];
    *&v330[135] = v333[6];
    *&v330[119] = v333[5];
    *&v330[103] = v333[4];
    v343 = *&v347[64];
    v344 = *&v347[80];
    *v345 = *&v347[96];
    v334[0] = sub_100038F28;
    v334[1] = v153;
    v335 = 0;
    v336 = sub_100038F40;
    v337 = v156;
    v338 = 0;
    *&v345[15] = *(&v361 + 1);
    v339 = *v347;
    v340 = *&v347[16];
    v341 = *&v347[32];
    v342 = *&v347[48];
    sub_1000064B0(&v331, v346, &qword_10005C2B0, &qword_100041468);
    sub_10000619C(v334, &qword_10005C2B0, &qword_100041468);
    *(&v329[25] + 1) = *&v330[112];
    *(&v329[27] + 1) = *&v330[128];
    *(&v329[29] + 1) = *&v330[144];
    *(&v329[17] + 1) = *&v330[48];
    *(&v329[19] + 1) = *&v330[64];
    *(&v329[21] + 1) = *&v330[80];
    *(&v329[23] + 1) = *&v330[96];
    *(&v329[11] + 1) = *v330;
    *(&v329[13] + 1) = *&v330[16];
    v329[0] = v270;
    v329[1] = 0;
    LOBYTE(v329[2]) = v350;
    v329[3] = 0;
    v329[4] = v262;
    v329[5] = v269;
    v329[6] = v263;
    v329[7] = v267;
    v329[8] = v264;
    v329[9] = v266;
    v329[10] = v265;
    LOBYTE(v329[11]) = v268;
    v329[31] = *&v330[159];
    *(&v329[15] + 1) = *&v330[32];
    LOBYTE(v329[32]) = 0;
    v157 = v313;
    sub_100038E90(v319, v313);
    v158 = swift_allocObject();
    sub_100037E04(v157, v158 + v154);
    sub_100005D3C(&qword_10005C2B8, &qword_100041470);
    sub_100038FB8();
    View.onTapGesture(count:perform:)();

    memcpy(v346, v329, sizeof(v346));
    sub_10000619C(v346, &qword_10005C2B8, &qword_100041470);
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v159 = v277;
    static Published.subscript.getter();

    v161 = v278;
    v160 = v279;
    v162 = v280;
    (*(v279 + 104))(v278, enum case for APKDeviceLockState.unlocked(_:), v280);
    LOBYTE(v157) = static APKDeviceLockState.== infix(_:_:)();
    v163 = *(v160 + 8);
    v163(v161, v162);
    v163(v159, v162);
    if ((v157 & 1) == 0)
    {
      goto LABEL_61;
    }

    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v329[0] & 1) != 0 || (StateObject.wrappedValue.getter(), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , , LOBYTE(v329[0]) == 1))
    {
LABEL_61:
      v299 = 0;
      v300 = 0;
      v296 = 0;
      v297 = 0;
      v294 = 0;
      v290 = 0;
      v298 = 0;
      v279 = 0;
      v280 = 0;
      v277 = 0;
      v278 = 255;
    }

    else
    {
      v196 = v247;
      sub_100038E90(v319, v247);
      v197 = swift_allocObject();
      sub_100037E04(v196, v197 + v311);
      LODWORD(v196) = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

      if (v196 == 1)
      {
        v198 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);

        v199 = 0x10000;
        if (!v198)
        {
          v199 = 0;
        }
      }

      else
      {
        v199 = 0;
      }

      v277 = v199;
      v296 = v197;
      static Alignment.trailing.getter();
      _FrameLayout.init(width:height:alignment:)();
      LOBYTE(v329[0]) = 0;
      v294 = v368;
      v290 = v369;
      v297 = v372;
      v298 = v371;
      v280 = v373;
      v278 = 0;
      v299 = sub_100039C60;
      v300 = v370;
      v279 = 256;
    }

    v164 = sub_100005D3C(&qword_10005C2E8, &qword_1000414D0);
    v165 = v309 + *(v164 + 44);
    v166 = v301;
    v167 = v302[2];
    v168 = v281;
    v167(v301, v305, v281);
    v169 = v282;
    v170 = *(v282 + 16);
    v170(v307, v306, v308);
    v171 = v279 | v277 | v278;
    v167(v165, v166, v168);
    v172 = sub_100005D3C(&qword_10005C2F0, &qword_1000414D8);
    v173 = v308;
    v170(&v165[*(v172 + 48)], v307, v308);
    v174 = &v165[*(v172 + 64)];
    *&v324 = v299;
    *(&v324 + 1) = v296;
    *&v325 = v171;
    v175 = v294;
    *(&v325 + 1) = v294;
    v176 = v290;
    *&v326 = v290;
    *(&v326 + 1) = v300;
    *&v327 = v298;
    *(&v327 + 1) = v297;
    v177 = v280;
    v328 = v280;
    v178 = v327;
    *(v174 + 2) = v326;
    *(v174 + 3) = v178;
    *(v174 + 8) = v177;
    v179 = v325;
    *v174 = v324;
    *(v174 + 1) = v179;
    sub_1000064B0(&v324, v329, &qword_10005C2F8, &qword_1000414E0);
    v180 = *(v169 + 8);
    v180(v306, v173);
    v181 = v302[1];
    v181(v305, v168);
    v329[0] = v299;
    v329[1] = v296;
    v329[2] = v171;
    v329[3] = v175;
    v329[4] = v176;
    v329[5] = v300;
    v329[6] = v298;
    v329[7] = v297;
    v329[8] = v177;
    sub_10000619C(v329, &qword_10005C2F8, &qword_1000414E0);
    v180(v307, v308);
    v181(v301, v168);
    if (v271)
    {
      v182 = v318 == 1;
      v183 = v288;
      (*(v286 + 56))(v288, 1, 1, v287);
      if (((v261 | v182) & 1) == 0)
      {
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        LODWORD(v307) = 0;
        v308 = v374;
        v305 = v376;
        v306 = v375;
        v322 = 1;
        v321 = BYTE8(v374);
        v320 = BYTE8(v375);
        v299 = 1;
        v300 = BYTE8(v374);
        v301 = BYTE8(v375);
        v302 = *(&v376 + 1);
        v323 = 0;
LABEL_80:
        LODWORD(v318) = v318 == 1;
        v213 = sub_100005D3C(&qword_10005C300, &qword_1000414E8);
        v214 = v309;
        v215 = v310 + *(v213 + 44);
        v216 = v285;
        sub_1000064B0(v309, v285, &qword_10005C2A0, &qword_100041410);
        v217 = v289;
        sub_1000064B0(v183, v289, &qword_10005C288, &qword_1000413F8);
        v218 = v272;
        *v215 = 0;
        *(v215 + 1) = v218;
        v219 = v273;
        *(v215 + 2) = v293;
        *(v215 + 3) = v219;
        v220 = v274;
        *(v215 + 4) = v291;
        *(v215 + 5) = v220;
        v221 = v275;
        *(v215 + 6) = v276;
        *(v215 + 7) = v221;
        v215[64] = v292;
        v222 = v183;
        v223 = sub_100005D3C(&qword_10005C308, &qword_1000414F0);
        sub_1000064B0(v216, &v215[v223[12]], &qword_10005C2A0, &qword_100041410);
        sub_1000064B0(v217, &v215[v223[16]], &qword_10005C288, &qword_1000413F8);
        v224 = &v215[v223[20]];
        v225 = v299;
        *v224 = 0;
        *(v224 + 1) = v225;
        v226 = v300;
        *(v224 + 2) = v308;
        *(v224 + 3) = v226;
        v227 = v301;
        *(v224 + 4) = v306;
        *(v224 + 5) = v227;
        v228 = v302;
        *(v224 + 6) = v305;
        *(v224 + 7) = v228;
        v224[64] = v307;
        sub_10000619C(v222, &qword_10005C288, &qword_1000413F8);
        sub_10000619C(v214, &qword_10005C2A0, &qword_100041410);
        sub_10000619C(v217, &qword_10005C288, &qword_1000413F8);
        sub_10000619C(v216, &qword_10005C2A0, &qword_100041410);
        LOBYTE(v214) = static Edge.Set.all.getter();
        v229 = sub_100005D3C(&qword_10005C310, &qword_1000414F8);
        v230 = v310;
        v231 = v310 + *(v229 + 36);
        *v231 = v214;
        v232 = v295;
        v233 = v284;
        *(v231 + 1) = v295;
        *(v231 + 2) = v233;
        v234 = v283;
        *(v231 + 3) = v232;
        *(v231 + 4) = v234;
        v231[40] = 0;
        LOBYTE(v214) = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle);

        v235 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);

        v236 = v230 + *(sub_100005D3C(&qword_10005C318, &qword_100041500) + 36);
        *v236 = v214;
        v236[1] = v235;
        *(v236 + 1) = v318;
        v237 = *(StateObject.wrappedValue.getter() + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);

        v238 = v313;
        sub_100038E90(v319, v313);
        v239 = swift_allocObject();
        sub_100037E04(v238, v239 + v311);
        type metadata accessor for APUISystemApertureLayoutState();
        sub_100039A08(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);
        v240 = EnvironmentObject.init()();
        v242 = v241;
        result = sub_100005D3C(&qword_10005C320, &qword_100041508);
        v244 = v230 + *(result + 36);
        *v244 = v237;
        *(v244 + 1) = v240;
        *(v244 + 2) = v242;
        *(v244 + 3) = sub_1000390A4;
        *(v244 + 4) = v239;
        return result;
      }
    }

    else
    {
      v184 = v287;
      v183 = v288;
      if (v318 == 1)
      {
        v185 = 1;
      }

      else
      {
        v186 = v258;
        Divider.init()();
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v187 = (v186 + *(v249 + 36));
        v188 = v375;
        *v187 = v374;
        v187[1] = v188;
        v187[2] = v376;
        v189 = v252;
        sub_100031B58(v252);
        v191 = v259;
        v190 = v260;
        v192 = v253;
        (*(v259 + 104))(v253, enum case for ColorScheme.dark(_:), v260);
        v193 = static ColorScheme.== infix(_:_:)();
        v194 = *(v191 + 8);
        v194(v192, v190);
        v194(v189, v190);
        if (v193)
        {
          v195 = static Color.white.getter();
        }

        else
        {
          v195 = static Color.black.getter();
        }

        v200 = v195;
        v201 = static Edge.Set.all.getter();
        v202 = v257;
        sub_10002B908(v186, v257, &qword_10005C268, &qword_1000413D8);
        v203 = v202 + *(v255 + 36);
        *v203 = v200;
        *(v203 + 8) = v201;
        if (v248)
        {
          v204 = 0x4048000000000000;
        }

        else
        {
          v204 = 0x4049800000000000;
        }

        v205 = static Edge.Set.all.getter();
        v206 = v202;
        v207 = v256;
        sub_10002B908(v206, v256, &qword_10005C270, &qword_1000413E0);
        v208 = v207 + *(v254 + 36);
        *v208 = v205;
        *(v208 + 8) = 0x4024000000000000;
        *(v208 + 16) = v204;
        *(v208 + 24) = xmmword_100040E50;
        *(v208 + 40) = 0;
        v209 = v207;
        v210 = v251;
        sub_10002B908(v209, v251, &qword_10005C278, &qword_1000413E8);
        *(v210 + *(v184 + 36)) = 0x3FB999999999999ALL;
        v211 = v210;
        v212 = v250;
        sub_10002B908(v211, v250, &qword_10005C280, &qword_1000413F0);
        sub_10002B908(v212, v183, &qword_10005C280, &qword_1000413F0);
        v185 = 0;
      }

      (*(v286 + 56))(v183, v185, 1, v184);
    }

    v308 = 0;
    v305 = 0;
    v306 = 0;
    v301 = 0;
    v302 = 0;
    v299 = 0;
    v300 = 0;
    LODWORD(v307) = 1;
    goto LABEL_80;
  }

LABEL_83:
  v245 = *(v319 + 56);
  type metadata accessor for APUISystemApertureLayoutState();
  sub_100039A08(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}