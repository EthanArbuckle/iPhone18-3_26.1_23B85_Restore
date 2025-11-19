uint64_t sub_10009D4E0(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100054568();
  v10 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;
  if (!v9)
  {
    v13 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionRemoteAlertPresentationsByID;
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (*(v14 + 16))
    {
      v15 = *(v2 + v13);

      v16 = sub_10003EDEC(&a1[v10]);
      if (v17)
      {
        v18 = *(*(v14 + 56) + 8 * v16);

LABEL_10:
        (*(v5 + 16))(v8, &a1[v10], v4);
        swift_beginAccess();
        sub_100027388(v18, v8);
        return swift_endAccess();
      }
    }

    v18 = sub_1000A8FFC(a1);
    goto LABEL_10;
  }

  v11 = &a1[OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id];

  return sub_1000A25B0(v11);
}

uint64_t sub_10009D6A8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  if (sub_100054568() == 1)
  {
    v48 = v8;
    v49 = v5;
    v50 = v2;
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100007D20(v17, qword_10017F350);
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v47 = v4;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v22 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_1000A53A0(&unk_1001764E0, &type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v10 + 8))(v16, v9);
      v26 = sub_10003E81C(v23, v25, &v51);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "update activity kit activity for model state:%s", v22, 0xCu);
      sub_100007920(v46);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v27 = (*(v10 + 88))(v13, v9);
    v28 = enum case for SFAirDrop.NearbySharingInteraction.State.connectionInterrupted(_:);
    result = (*(v10 + 8))(v13, v9);
    v31 = v49;
    v30 = v50;
    if (v27 == v28)
    {
      v32 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity;
      if (!*(v50 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity))
      {
        v33 = sub_1000A972C(v18);
        sub_100095714(v33);
        v34 = *(v30 + v32);
        *(v30 + v32) = v33;
      }

      return result;
    }

    v36 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;
    v37 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionActivitiesByID;
    swift_beginAccess();
    v38 = *(v30 + v37);
    if (*(v38 + 16))
    {
      v39 = *(v30 + v37);

      v40 = sub_10003EDEC(&v18[v36]);
      if (v41)
      {
        v42 = *(*(v38 + 56) + 8 * v40);

LABEL_17:
        v43 = &v18[v36];
        v44 = v48;
        (*(v31 + 16))(v48, v43, v47);
        swift_beginAccess();
        sub_10002739C(v42, v44);
        return swift_endAccess();
      }
    }

    v42 = sub_1000A972C(v18);
    goto LABEL_17;
  }

  v35 = a1 + OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;

  return sub_1000A2DD0(v35);
}

uint64_t sub_10009DBB0(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = a2;
  v3 = sub_1000077C8(&qword_1001764C8, &qword_10011E5D8);
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v68 = &v54 - v9;
  __chkstk_darwin(v8);
  v62 = &v54 - v10;
  v11 = sub_1000077C8(&qword_1001764D0, &qword_10011E5E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v58 = &v54 - v13;
  v56 = sub_1000077C8(&qword_1001764D8, &qword_10011E5E8);
  v14 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v55 = &v54 - v15;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v54 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionActivitiesByID;
  swift_beginAccess();
  v57 = v2;
  v21 = *(v2 + v20);
  v22 = v21 + 64;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 64);
  v26 = (v23 + 63) >> 6;
  v61 = v17 + 16;
  v65 = (v17 + 8);
  v66 = v17;
  v67 = v21;
  result = swift_bridgeObjectRetain_n();
  v28 = 0;
  v60 = v22;
  if (v25)
  {
    while (1)
    {
      v29 = v7;
      v30 = v28;
LABEL_9:
      v31 = __clz(__rbit64(v25)) | (v30 << 6);
      v32 = v67;
      v33 = v62;
      (*(v66 + 16))(v62, *(v67 + 48) + *(v66 + 72) * v31, v16);
      *&v33[*(v3 + 48)] = *(*(v32 + 56) + 8 * v31);
      v34 = v33;
      v35 = v68;
      sub_100021A84(v34, v68, &qword_1001764C8, &qword_10011E5D8);
      v36 = v35;
      v7 = v29;
      sub_100007BA4(v36, v29, &qword_1001764C8, &qword_10011E5D8);
      v37 = *(v29 + *(v3 + 48));

      v38 = Activity.id.getter();
      v40 = v39;

      if (v38 == v63 && v40 == v64)
      {
        break;
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*v65)(v7, v16);
      if (v42)
      {
        goto LABEL_18;
      }

      v25 &= v25 - 1;
      result = sub_1000159AC(v68, &qword_1001764C8, &qword_10011E5D8);
      v28 = v30;
      v22 = v60;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    (*v65)(v7, v16);
LABEL_18:

    v44 = v58;
    sub_100021A84(v68, v58, &qword_1001764C8, &qword_10011E5D8);
    v43 = v59;
    (*(v59 + 56))(v44, 0, 1, v3);
LABEL_19:

    if ((*(v43 + 48))(v44, 1, v3) == 1)
    {
      sub_1000159AC(v44, &qword_1001764D0, &qword_10011E5E0);
      return 0;
    }

    else
    {
      v45 = *(v44 + *(v3 + 48));
      v47 = v55;
      v46 = v56;
      v48 = *(v56 + 48);
      v50 = v66 + 32;
      v49 = *(v66 + 32);
      v49(v55, v44, v16);
      *&v47[v48] = v45;
      v51 = *&v47[*(v46 + 48)];

      v52 = v54;
      v49(v54, v47, v16);
      v53 = sub_10009E13C(v52);
      (*(v50 - 24))(v52, v16);
      return v53;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v26)
      {

        v44 = v58;
        v43 = v59;
        (*(v59 + 56))(v58, 1, 1, v3);
        goto LABEL_19;
      }

      v25 = *(v22 + 8 * v30);
      ++v28;
      if (v25)
      {
        v29 = v7;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_10009E13C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v8;
  if (*(v8 + 16))
  {
    v3 = sub_10003EDEC(a1);
    if (v4)
    {
      goto LABEL_5;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = v8;
  if (!*(v8 + 16))
  {
    goto LABEL_6;
  }

  v3 = sub_10003EDEC(a1);
  if (v5)
  {
LABEL_5:
    v6 = *(*(v2 + 56) + 8 * v3);

    return v6;
  }

  else
  {
LABEL_6:

    return 0;
  }
}

uint64_t sub_10009E25C(uint64_t a1, void (*a2)(void, void), void *a3)
{
  v109 = a3;
  v105 = a2;
  v4 = sub_1000077C8(&unk_100176430, &qword_10011E550);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v93 = &v90 - v6;
  v96 = sub_1000077C8(&unk_100177100, &qword_10011E558);
  v95 = *(v96 - 8);
  v7 = *(v95 + 64);
  __chkstk_darwin(v96);
  v94 = &v90 - v8;
  v9 = sub_1000077C8(&qword_1001764C0, &qword_10011B188);
  v103 = *(v9 - 8);
  v104 = v9;
  v10 = *(v103 + 64);
  __chkstk_darwin(v9);
  v102 = &v90 - v11;
  v12 = type metadata accessor for UUID();
  v110 = *(v12 - 8);
  v111 = v12;
  v13 = *(v110 + 64);
  __chkstk_darwin(v12);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v106 = &v90 - v17;
  __chkstk_darwin(v18);
  v107 = &v90 - v19;
  v20 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v100 = v23;
  v101 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v90 - v25;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100007D20(v27, qword_10017F350);
  v98 = *(v21 + 16);
  v99 = v21 + 16;
  v98(v26, a1, v20);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v30 = os_log_type_enabled(v28, v29);
  v97 = v15;
  v108 = a1;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v91 = v31;
    v92 = swift_slowAlloc();
    v114 = v92;
    *v31 = 136315138;
    v32 = v107;
    SFAirDrop.NearbySharingInteraction.id.getter();
    sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
    v33 = v111;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v37 = v32;
    a1 = v108;
    (*(v110 + 8))(v37, v33);
    (*(v21 + 8))(v26, v20);
    v38 = sub_10003E81C(v34, v36, &v114);

    v39 = v91;
    *(v91 + 1) = v38;
    _os_log_impl(&_mh_execute_header, v28, v29, "Creating nearby sharing interaction view model for AirDrop interaction ID: %s", v39, 0xCu);
    sub_100007920(v92);
  }

  else
  {

    (*(v21 + 8))(v26, v20);
  }

  v40 = v101;
  v49 = v98;
  v98(v101, a1, v20);
  v92 = type metadata accessor for NearbySharingInteractionViewModel(0);
  v41 = objc_allocWithZone(v92);
  v42 = v109;

  v43 = sub_100057034(v40, v42);

  swift_beginAccess();
  sub_1000077C8(&qword_100174408, &qword_10011E5C0);
  v109 = v43;
  v44 = v102;
  Published.projectedValue.getter();
  swift_endAccess();
  v45 = swift_allocObject();
  v46 = v112;
  swift_unknownObjectWeakInit();
  (v49)(v40, a1, v20);
  v47 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v48 = swift_allocObject();
  LOBYTE(v49) = v48;
  v50 = v105;
  *(v48 + 16) = v45;
  *(v48 + 24) = v50;
  (*(v21 + 32))(v48 + v47, v40, v20);
  sub_1000199C8(&qword_100174420, &qword_1001764C0, &qword_10011B188);

  v51 = v104;
  Publisher<>.sink(receiveValue:)();

  (*(v103 + 8))(v44, v51);
  v52 = v106;
  SFAirDrop.NearbySharingInteraction.id.getter();
  v53 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
  swift_beginAccess();
  v54 = *(v46 + v53);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v113 = *(v46 + v53);
  v56 = v113;
  *(v46 + v53) = 0x8000000000000000;
  v58 = sub_10003EDEC(v52);
  v59 = v56[2];
  v60 = (v57 & 1) == 0;
  v61 = v59 + v60;
  if (__OFADD__(v59, v60))
  {
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v49) = v57;
  if (v56[3] >= v61)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_1000402A8(v61, isUniquelyReferenced_nonNull_native);
    v56 = v113;
    v62 = sub_10003EDEC(v52);
    if ((v49 & 1) != (v63 & 1))
    {
      goto LABEL_25;
    }

    v58 = v62;
  }

  while (1)
  {
    *(v112 + v53) = v56;
    if ((v49 & 1) == 0)
    {
      v64 = v107;
      (*(v110 + 16))(v107, v52, v111);
      sub_100041BA0(v58, v64, &_swiftEmptySetSingleton, v56);
    }

    v65 = v56[7];
    AnyCancellable.store(in:)();
    v105 = *(v110 + 8);
    v106 = (v110 + 8);
    v105(v52, v111);
    swift_endAccess();

    sub_1000A53A0(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel);
    v114 = ObservableObject<>.objectWillChange.getter();
    sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
    v66 = static OS_dispatch_queue.main.getter();
    v113 = v66;
    v67 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v68 = v93;
    (*(*(v67 - 8) + 56))(v93, 1, 1, v67);
    type metadata accessor for ObservableObjectPublisher();
    sub_1000A5BEC(&qword_100177110, &qword_100173D90, OS_dispatch_queue_ptr);
    v69 = v94;
    Publisher.receive<A>(on:options:)();
    sub_1000159AC(v68, &unk_100176430, &qword_10011E550);

    v70 = swift_allocObject();
    v71 = v112;
    swift_unknownObjectWeakInit();
    v72 = swift_allocObject();
    v73 = v109;
    *(v72 + 16) = v70;
    *(v72 + 24) = v73;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_1000AB28C;
    *(v74 + 24) = v72;
    sub_1000199C8(&qword_1001764A0, &unk_100177100, &qword_10011E558);
    v75 = v73;
    v76 = v96;
    v58 = Publisher<>.sink(receiveValue:)();

    (*(v95 + 8))(v69, v76);
    v77 = v97;
    SFAirDrop.NearbySharingInteraction.id.getter();
    swift_beginAccess();
    v78 = *(v71 + v53);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v113 = *(v71 + v53);
    v79 = v113;
    *(v71 + v53) = 0x8000000000000000;
    v49 = sub_10003EDEC(v77);
    v81 = v79[2];
    v82 = (v80 & 1) == 0;
    v83 = v81 + v82;
    if (!__OFADD__(v81, v82))
    {
      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    sub_100042430();
    v56 = v113;
  }

  v84 = v80;
  if (v79[3] >= v83)
  {
    if ((v52 & 1) == 0)
    {
      sub_100042430();
      v79 = v113;
    }

    goto LABEL_19;
  }

  sub_1000402A8(v83, v52);
  v79 = v113;
  v85 = sub_10003EDEC(v77);
  if ((v84 & 1) != (v86 & 1))
  {
LABEL_25:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v49 = v85;
LABEL_19:
  *(v112 + v53) = v79;
  if ((v84 & 1) == 0)
  {
    v87 = v107;
    (*(v110 + 16))(v107, v77, v111);
    sub_100041BA0(v49, v87, &_swiftEmptySetSingleton, v79);
  }

  v88 = v79[7];
  AnyCancellable.store(in:)();
  v105(v77, v111);
  swift_endAccess();

  return v75;
}

void sub_10009EE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a3;
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    (*(v12 + 104))(v15, enum case for SFAirDrop.NearbySharingInteraction.State.ended(_:), v11);
    v18 = static SFAirDrop.NearbySharingInteraction.State.== infix(_:_:)();
    (*(v12 + 8))(v15, v11);
    if (v18)
    {
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
      (*(v5 + 16))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v4);
      v20 = (*(v5 + 80) + 40) & ~*(v5 + 80);
      v21 = swift_allocObject();
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      *(v21 + 4) = v24;
      (*(v5 + 32))(&v21[v20], &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

      sub_1000E1D28(0, 0, v10, &unk_10011E5D0, v21);
    }

    else
    {
    }
  }
}

uint64_t sub_10009F11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_10009F1DC, 0, 0);
}

uint64_t sub_10009F1DC()
{
  v1 = v0[6];
  v2 = v0[3];
  SFAirDrop.NearbySharingInteraction.id.getter();
  v3 = async function pointer to SFAirDropClient.endNearbySharingInteraction(_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100034EC8;
  v5 = v0[6];
  v6 = v0[2];

  return SFAirDropClient.endNearbySharingInteraction(_:)(v5);
}

uint64_t sub_10009F284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v162 = a2;
  v6 = sub_1000077C8(&unk_100176430, &qword_10011E550);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v146 = &v143 - v8;
  v149 = sub_1000077C8(&unk_100177100, &qword_10011E558);
  v148 = *(v149 - 8);
  v9 = *(v148 + 64);
  __chkstk_darwin(v149);
  v147 = &v143 - v10;
  v165 = sub_1000077C8(&qword_100176440, &qword_10011E560);
  v163 = *(v165 - 8);
  v11 = *(v163 + 64);
  __chkstk_darwin(v165);
  v161 = &v143 - v12;
  v167 = sub_1000077C8(&qword_100176448, &qword_10011E568);
  v166 = *(v167 - 8);
  v13 = *(v166 + 64);
  __chkstk_darwin(v167);
  v164 = &v143 - v14;
  v15 = sub_1000077C8(&qword_100176450, &qword_10011E570);
  v169 = *(v15 - 8);
  v170 = v15;
  v16 = *(v169 + 64);
  __chkstk_darwin(v15);
  v181 = &v143 - v17;
  v18 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v158 = &v143 - v20;
  v21 = sub_1000077C8(&qword_100176458, &qword_10011E578);
  v157 = *(v21 - 8);
  v22 = *(v157 + 64);
  __chkstk_darwin(v21);
  v155 = &v143 - v23;
  v24 = sub_1000077C8(&qword_100176460, &qword_10011E580);
  v175 = *(v24 - 8);
  v176 = v24;
  v25 = *(v175 + 64);
  __chkstk_darwin(v24);
  v160 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v26;
  __chkstk_darwin(v27);
  v184 = &v143 - v28;
  v29 = sub_1000077C8(&qword_100176468, &qword_10011E588);
  v173 = *(v29 - 8);
  v174 = v29;
  v30 = *(v173 + 64);
  __chkstk_darwin(v29);
  v156 = &v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = v31;
  __chkstk_darwin(v32);
  v34 = &v143 - v33;
  v185 = type metadata accessor for UUID();
  v182 = *(v185 - 8);
  v35 = *(v182 + 64);
  __chkstk_darwin(v185);
  v145 = &v143 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v143 - v38;
  __chkstk_darwin(v40);
  v172 = &v143 - v41;
  v42 = type metadata accessor for SFProximityHandoff.Interaction();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v180 = &v143 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v45;
  __chkstk_darwin(v46);
  v48 = &v143 - v47;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v168 = v39;
  v178 = v3;
  v49 = type metadata accessor for Logger();
  sub_100007D20(v49, qword_10017F350);
  v179 = v43;
  v51 = *(v43 + 16);
  v50 = (v43 + 16);
  v152 = v51;
  v51(v48, a1, v42);
  v52 = Logger.logObject.getter();
  v53 = a1;
  v54 = static os_log_type_t.default.getter();
  v55 = os_log_type_enabled(v52, v54);
  v56 = v42;
  v183 = v53;
  v171 = v34;
  if (v55)
  {
    v57 = swift_slowAlloc();
    v177 = a3;
    v58 = v57;
    v150 = swift_slowAlloc();
    v187 = v150;
    *v58 = 136315138;
    v151 = v21;
    v59 = v172;
    SFProximityHandoff.Interaction.id.getter();
    sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
    v60 = v185;
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v64 = v59;
    v21 = v151;
    v65 = v60;
    v56 = v42;
    (*(v182 + 8))(v64, v65);
    (*(v179 + 8))(v48, v42);
    v66 = sub_10003E81C(v61, v63, &v187);
    v67 = v171;

    *(v58 + 4) = v66;
    _os_log_impl(&_mh_execute_header, v52, v54, "Creating nearby sharing interaction view model for Proximity Handoff interaction ID: %s", v58, 0xCu);
    sub_100007920(v150);
    v68 = v183;

    a3 = v177;
  }

  else
  {

    (*(v179 + 8))(v48, v42);
    v68 = v53;
    v67 = v34;
  }

  v69 = v180;
  v70 = v152;
  v152(v180, v68, v56);
  v144 = type metadata accessor for NearbySharingInteractionViewModel(0);
  v71 = objc_allocWithZone(v144);

  v150 = v50;
  v72 = v69;
  v177 = sub_100057C8C(v69, a3);

  v73 = type metadata accessor for SFNearbySharingInteractionViewState();
  v74 = v157;
  v75 = v56;
  v76 = v155;
  (*(v157 + 104))(v155, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v21);
  v151 = v73;
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v74 + 8))(v76, v21);
  v77 = type metadata accessor for TaskPriority();
  v78 = v158;
  (*(*(v77 - 8) + 56))(v158, 1, 1, v77);
  v79 = v68;
  v81 = v173;
  v80 = v174;
  v82 = v156;
  (*(v173 + 16))(v156, v67, v174);
  v83 = v75;
  v70(v72, v79, v75);
  v84 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v85 = v179;
  v86 = (v154 + *(v179 + 80) + v84) & ~*(v179 + 80);
  v87 = (v153 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v88 = swift_allocObject();
  (*(v81 + 32))(v88 + v84, v82, v80);
  (*(v85 + 32))(v88 + v86, v180, v83);
  *(v88 + v87) = v162;

  v179 = static Task<>.noThrow(priority:operation:)();

  sub_1000159AC(v78, &qword_100172F50, &qword_10011E500);
  v89 = v161;
  sub_100053BA8(v161);
  sub_1000199C8(&qword_100176470, &qword_100176440, &qword_10011E560);
  v90 = v164;
  v91 = v165;
  Publisher.map<A>(_:)();
  (*(v163 + 8))(v89, v91);
  sub_1000199C8(&qword_100176478, &qword_100176448, &qword_10011E568);
  sub_1000A53A0(&qword_100176480, &type metadata accessor for SFNearbySharingInteractionViewState);
  v92 = v167;
  Publisher<>.removeDuplicates()();
  (*(v166 + 8))(v90, v92);
  v93 = v175;
  v94 = v176;
  v95 = *(v175 + 16);
  v96 = v160;
  v97 = v184;
  v95(v160, v184, v176);
  v98 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v180 = swift_allocObject();
  v99 = *(v93 + 32);
  v99(&v180[v98], v96, v94);
  v95(v96, v97, v94);
  v100 = swift_allocObject();
  v101 = v100;
  v99((v100 + v98), v96, v94);
  sub_1000199C8(&qword_100176488, &qword_100176450, &qword_10011E570);
  v102 = v181;
  v103 = v170;
  Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v169 + 8))(v102, v103);
  v104 = v168;
  SFProximityHandoff.Interaction.id.getter();
  v105 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_subscriptionsByID;
  v106 = v178;
  swift_beginAccess();
  v107 = *(v106 + v105);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v186 = *(v106 + v105);
  v109 = v186;
  *(v106 + v105) = 0x8000000000000000;
  v111 = sub_10003EDEC(v104);
  v112 = v109[2];
  v113 = (v110 & 1) == 0;
  v114 = v112 + v113;
  if (__OFADD__(v112, v113))
  {
    __break(1u);
    goto LABEL_23;
  }

  v101 = v110;
  if (v109[3] >= v114)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_1000402A8(v114, isUniquelyReferenced_nonNull_native);
    v109 = v186;
    v115 = sub_10003EDEC(v104);
    if ((v101 & 1) != (v116 & 1))
    {
      goto LABEL_25;
    }

    v111 = v115;
  }

  while (1)
  {
    *(v106 + v105) = v109;
    if ((v101 & 1) == 0)
    {
      v117 = v172;
      (*(v182 + 16))(v172, v104, v185);
      sub_100041BA0(v111, v117, &_swiftEmptySetSingleton, v109);
    }

    v118 = v109[7];
    AnyCancellable.store(in:)();
    v180 = *(v182 + 8);
    v181 = (v182 + 8);
    (v180)(v104, v185);
    swift_endAccess();

    sub_1000A53A0(&unk_100176490, type metadata accessor for NearbySharingInteractionViewModel);
    v119 = v177;
    v187 = ObservableObject<>.objectWillChange.getter();
    sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
    v120 = static OS_dispatch_queue.main.getter();
    v186 = v120;
    v121 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v122 = v146;
    (*(*(v121 - 8) + 56))(v146, 1, 1, v121);
    type metadata accessor for ObservableObjectPublisher();
    sub_1000A5BEC(&qword_100177110, &qword_100173D90, OS_dispatch_queue_ptr);
    v123 = v147;
    Publisher.receive<A>(on:options:)();
    sub_1000159AC(v122, &unk_100176430, &qword_10011E550);

    v124 = swift_allocObject();
    v104 = v178;
    swift_unknownObjectWeakInit();
    v125 = swift_allocObject();
    *(v125 + 16) = v124;
    *(v125 + 24) = v119;
    v126 = swift_allocObject();
    *(v126 + 16) = sub_1000AC274;
    *(v126 + 24) = v125;
    sub_1000199C8(&qword_1001764A0, &unk_100177100, &qword_10011E558);
    v127 = v119;
    v128 = v149;
    v101 = Publisher<>.sink(receiveValue:)();

    (*(v148 + 8))(v123, v128);
    v129 = v145;
    SFProximityHandoff.Interaction.id.getter();
    swift_beginAccess();
    v130 = *(v104 + v105);
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v186 = *(v104 + v105);
    v131 = v186;
    *(v104 + v105) = 0x8000000000000000;
    v111 = sub_10003EDEC(v129);
    v133 = v131[2];
    v134 = (v132 & 1) == 0;
    v135 = v133 + v134;
    if (!__OFADD__(v133, v134))
    {
      break;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    sub_100042430();
    v109 = v186;
  }

  v136 = v132;
  if (v131[3] >= v135)
  {
    if ((v106 & 1) == 0)
    {
      sub_100042430();
      v131 = v186;
    }

    goto LABEL_19;
  }

  sub_1000402A8(v135, v106);
  v131 = v186;
  v137 = sub_10003EDEC(v129);
  if ((v136 & 1) != (v138 & 1))
  {
LABEL_25:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v111 = v137;
LABEL_19:
  v139 = v171;
  *(v104 + v105) = v131;
  if ((v136 & 1) == 0)
  {
    v140 = v172;
    (*(v182 + 16))(v172, v129, v185);
    sub_100041BA0(v111, v140, &_swiftEmptySetSingleton, v131);
  }

  v141 = v131[7];
  AnyCancellable.store(in:)();
  (v180)(v129, v185);
  swift_endAccess();

  (*(v175 + 8))(v184, v176);
  (*(v173 + 8))(v139, v174);
  return v127;
}

uint64_t sub_1000A05A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = type metadata accessor for UUID();
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v8 = type metadata accessor for SFProximityHandoff.Interaction();
  v4[8] = v8;
  v9 = *(v8 - 8);
  v4[9] = v9;
  v10 = *(v9 + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for SFNearbySharingInteractionViewState();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v14 = *(*(sub_1000077C8(&qword_1001764B0, &qword_10011E5A8) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v15 = sub_1000077C8(&qword_1001764B8, &unk_10011E5B0);
  v4[20] = v15;
  v16 = *(v15 - 8);
  v4[21] = v16;
  v17 = *(v16 + 64) + 15;
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000A07FC, 0, 0);
}

uint64_t sub_1000A07FC()
{
  v1 = v0[22];
  v2 = v0[2];
  sub_1000077C8(&qword_100176468, &qword_10011E588);
  AsyncStream.makeAsyncIterator()();
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_1000A08C4;
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[20];

  return AsyncStream.Iterator.next(isolation:)(v6, 0, 0, v7);
}

uint64_t sub_1000A08C4()
{
  v1 = *(*v0 + 184);
  v3 = *v0;

  return _swift_task_switch(sub_1000A09C0, 0, 0);
}

uint64_t sub_1000A09C0()
{
  v99 = v0;
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[13];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[15];
    (*(v0[21] + 8))(v0[22], v0[20]);
    (*(v3 + 104))(v4, enum case for SFNearbySharingInteractionViewState.idle(_:), v2);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v5 = v0[14];
    v6 = v0[15];
    v7 = v0[12];
    v8 = v0[13];
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    v12 = v0[3];
    v13 = type metadata accessor for Logger();
    v14 = sub_100007D20(v13, qword_10017F350);
    v15 = *(v8 + 16);
    v0[28] = v14;
    v95 = v15;
    v15(v5, v6, v7);
    (*(v10 + 16))(v9, v12, v11);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v91 = v17;
      v18 = v0[16];
      log = v16;
      v20 = v0[13];
      v19 = v0[14];
      v21 = v0[12];
      v22 = v0[7];
      v87 = v0[9];
      v89 = v0[8];
      v23 = v0[6];
      v83 = v0[10];
      v85 = v0[5];
      v24 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v24 = 136315394;
      v95(v18, v19, v21);
      v25 = String.init<A>(describing:)();
      v27 = v26;
      v28 = *(v20 + 8);
      v28(v19, v21);
      v29 = sub_10003E81C(v25, v27, &v98);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      SFProximityHandoff.Interaction.id.getter();
      sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v23 + 8))(v22, v85);
      (*(v87 + 8))(v83, v89);
      v33 = sub_10003E81C(v30, v32, &v98);

      *(v24 + 14) = v33;
      _os_log_impl(&_mh_execute_header, log, v91, "Sending final viewState %s for interaction ID %s to proximity handoff client", v24, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v64 = v0[13];
      v65 = v0[14];
      v66 = v0[12];
      v68 = v0[9];
      v67 = v0[10];
      v69 = v0[8];

      (*(v68 + 8))(v67, v69);
      v28 = *(v64 + 8);
      v28(v65, v66);
    }

    v0[29] = v28;
    v70 = *(&async function pointer to dispatch thunk of SFProximityHandoffClient.nearbySharingInteractionView(update:viewState:) + 1);
    v97 = (&async function pointer to dispatch thunk of SFProximityHandoffClient.nearbySharingInteractionView(update:viewState:) + async function pointer to dispatch thunk of SFProximityHandoffClient.nearbySharingInteractionView(update:viewState:));
    v71 = swift_task_alloc();
    v0[30] = v71;
    *v71 = v0;
    v71[1] = sub_1000A1324;
    v72 = v0[15];
  }

  else
  {
    (*(v3 + 32))(v0[18], v1, v2);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v34 = v0[17];
    v35 = v0[18];
    v36 = v0[12];
    v37 = v0[13];
    v38 = v0[11];
    v39 = v0[8];
    v40 = v0[9];
    v41 = v0[3];
    v42 = type metadata accessor for Logger();
    v43 = sub_100007D20(v42, qword_10017F350);
    v44 = *(v37 + 16);
    v0[24] = v43;
    v96 = v44;
    v44(v34, v35, v36);
    (*(v40 + 16))(v38, v41, v39);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v0[17];
    if (v47)
    {
      loga = v45;
      v49 = v0[16];
      v50 = v0[12];
      v51 = v0[13];
      v88 = v0[9];
      v90 = v0[8];
      v92 = v46;
      v53 = v0[6];
      v52 = v0[7];
      v84 = v0[11];
      v86 = v0[5];
      v54 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v54 = 136315394;
      v96(v49, v48, v50);
      v55 = String.init<A>(describing:)();
      v57 = v56;
      v58 = *(v51 + 8);
      v58(v48, v50);
      v59 = sub_10003E81C(v55, v57, &v98);

      *(v54 + 4) = v59;
      *(v54 + 12) = 2080;
      SFProximityHandoff.Interaction.id.getter();
      sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v53 + 8))(v52, v86);
      (*(v88 + 8))(v84, v90);
      v63 = sub_10003E81C(v60, v62, &v98);

      *(v54 + 14) = v63;
      _os_log_impl(&_mh_execute_header, loga, v92, "Sending viewState %s for interaction ID %s to proximity handoff client", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v74 = v0[12];
      v73 = v0[13];
      v75 = v0[11];
      v76 = v0[8];
      v77 = v0[9];

      (*(v77 + 8))(v75, v76);
      v58 = *(v73 + 8);
      v58(v48, v74);
    }

    v0[25] = v58;
    v78 = *(&async function pointer to dispatch thunk of SFProximityHandoffClient.nearbySharingInteractionView(update:viewState:) + 1);
    v97 = (&async function pointer to dispatch thunk of SFProximityHandoffClient.nearbySharingInteractionView(update:viewState:) + async function pointer to dispatch thunk of SFProximityHandoffClient.nearbySharingInteractionView(update:viewState:));
    v79 = swift_task_alloc();
    v0[26] = v79;
    *v79 = v0;
    v79[1] = sub_1000A1150;
    v72 = v0[18];
  }

  v80 = v0[3];
  v81 = v0[4];

  return v97(v80, v72);
}

uint64_t sub_1000A1150()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1000A1538;
  }

  else
  {
    v3 = sub_1000A1264;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A1264()
{
  v1 = *(v0 + 104) + 8;
  (*(v0 + 200))(*(v0 + 144), *(v0 + 96));
  v2 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_1000A08C4;
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);

  return AsyncStream.Iterator.next(isolation:)(v5, 0, 0, v6);
}

uint64_t sub_1000A1324()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1000A1700;
  }

  else
  {
    v3 = sub_1000A1438;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000A1438()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 112);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v12 = *(v0 + 56);
  v9 = (*(v0 + 104) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 232))(*(v0 + 120), *(v0 + 96));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000A1538()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 216);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to forward viewState to proximityHandoffClient: %@", v7, 0xCu);
    sub_1000159AC(v8, &qword_100172EB0, &qword_100119410);
  }

  else
  {
    v10 = *(v0 + 216);
  }

  v11 = *(v0 + 104) + 8;
  (*(v0 + 200))(*(v0 + 144), *(v0 + 96));
  v12 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  v13[1] = sub_1000A08C4;
  v14 = *(v0 + 176);
  v15 = *(v0 + 152);
  v16 = *(v0 + 160);

  return AsyncStream.Iterator.next(isolation:)(v15, 0, 0, v16);
}

uint64_t sub_1000A1700()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 248);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to forward final viewState to proximityHandoffClient: %@", v7, 0xCu);
    sub_1000159AC(v8, &qword_100172EB0, &qword_100119410);
  }

  else
  {
    v10 = *(v0 + 248);
  }

  v11 = *(v0 + 176);
  v13 = *(v0 + 144);
  v12 = *(v0 + 152);
  v15 = *(v0 + 128);
  v14 = *(v0 + 136);
  v16 = *(v0 + 112);
  v18 = *(v0 + 80);
  v17 = *(v0 + 88);
  v22 = *(v0 + 56);
  v19 = (*(v0 + 104) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 232))(*(v0 + 120), *(v0 + 96));

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1000A18F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NearbySharingInteractionViewState(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100007D20(v11, qword_10017F350);
  sub_1000AB044(a1, v10, type metadata accessor for NearbySharingInteractionViewState);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    sub_1000AB044(v10, v7, type metadata accessor for NearbySharingInteractionViewState);
    v16 = String.init<A>(describing:)();
    v22 = a1;
    v17 = a2;
    v19 = v18;
    sub_1000AB0AC(v10, type metadata accessor for NearbySharingInteractionViewState);
    v20 = sub_10003E81C(v16, v19, &v23);
    a2 = v17;
    a1 = v22;

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "New (internal) viewState: %s", v14, 0xCu);
    sub_100007920(v15);
  }

  else
  {

    sub_1000AB0AC(v10, type metadata accessor for NearbySharingInteractionViewState);
  }

  sub_1000AB044(a1, v7, type metadata accessor for NearbySharingInteractionViewState);
  return sub_1000A1B7C(v7, a2);
}

uint64_t sub_1000A1B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NearbySharingInteractionViewState(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB044(a1, v7, type metadata accessor for NearbySharingInteractionViewState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1000AB0AC(a1, type metadata accessor for NearbySharingInteractionViewState);
      v16 = v7;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1000AB0AC(a1, type metadata accessor for NearbySharingInteractionViewState);
        v21 = *(v7 + 24);
        v19 = *(v7 + 10);
        v20 = *(v7 + 11);
        sub_1000588EC(*v7, *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4), *(v7 + 5), *(v7 + 6), *(v7 + 7), *(v7 + 8), *(v7 + 9));
        v12 = enum case for SFNearbySharingInteractionViewState.contentPreview(_:);
        v13 = type metadata accessor for SFNearbySharingInteractionViewState();
        (*(*(v13 - 8) + 104))(a2, v12, v13);
        return sub_100056D60((v7 + 104));
      }

      v16 = a1;
    }

    sub_1000AB0AC(v16, type metadata accessor for NearbySharingInteractionViewState);
    v15 = &enum case for SFNearbySharingInteractionViewState.idle(_:);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1000AB0AC(a1, type metadata accessor for NearbySharingInteractionViewState);
      v9 = enum case for SFNearbySharingInteractionViewState.idle(_:);
      v10 = type metadata accessor for SFNearbySharingInteractionViewState();
      (*(*(v10 - 8) + 104))(a2, v9, v10);
      return sub_1000AB0AC(v7, type metadata accessor for NearbySharingInteractionViewState);
    }

    v14 = *v7;
    dispatch thunk of ShockwaveAnimationCoordinator.state.getter();

    sub_1000AB0AC(a1, type metadata accessor for NearbySharingInteractionViewState);
    v15 = &enum case for SFNearbySharingInteractionViewState.shockwave(_:);
  }

  v17 = *v15;
  v18 = type metadata accessor for SFNearbySharingInteractionViewState();
  return (*(*(v18 - 8) + 104))(a2, v17, v18);
}

void sub_1000A1E2C()
{
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100007D20(v0, qword_10017F350);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "viewStatePublisher ended", v3, 2u);
  }

  sub_1000077C8(&qword_100176460, &qword_10011E580);
  AsyncStream.Continuation.finish()();
}

uint64_t sub_1000A1F24(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_1000077C8(&qword_1001764A8, &qword_10011E5A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v31 = &v27 - v6;
  v7 = type metadata accessor for SFNearbySharingInteractionViewState();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100007D20(v15, qword_10017F350);
  v33 = *(v8 + 16);
  v33(v14, a1, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a1;
    v19 = v18;
    v27 = swift_slowAlloc();
    v34 = v27;
    *v19 = 136315138;
    v33(v11, v14, v7);
    v20 = String.init<A>(describing:)();
    v29 = v4;
    v30 = v3;
    v21 = v20;
    v23 = v22;
    (*(v8 + 8))(v14, v7);
    v24 = sub_10003E81C(v21, v23, &v34);
    v4 = v29;

    *(v19 + 4) = v24;
    v3 = v30;
    _os_log_impl(&_mh_execute_header, v16, v17, "New viewState: %s", v19, 0xCu);
    sub_100007920(v27);

    a1 = v28;
  }

  else
  {

    (*(v8 + 8))(v14, v7);
  }

  v33(v11, a1, v7);
  sub_1000077C8(&qword_100176460, &qword_10011E580);
  v25 = v31;
  AsyncStream.Continuation.yield(_:)();
  return (*(v4 + 8))(v25, v3);
}

void sub_1000A2298(uint64_t a1, char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10009D4E0(a2);
    sub_10009D6A8(a2);
  }
}

uint64_t sub_1000A22FC(void *a1)
{
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20 - v4;
  result = sub_100054568();
  if (!result)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100007D20(v7, qword_10017F350);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      type metadata accessor for UUID();
      sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = sub_10003E81C(v13, v14, &v21);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "Ending nearby sharing interaction with ID: %s due to remote alert dismissal", v11, 0xCu);
      sub_100007920(v12);
    }

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    type metadata accessor for MainActor();
    v17 = v8;
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v17;
    sub_1000F9860(0, 0, v5, &unk_10011E690, v19);
  }

  return result;
}

uint64_t sub_1000A25B0(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionRemoteAlertPresentationsByID;
  result = swift_beginAccess();
  v13 = *(v1 + v11);
  if (*(v13 + 16))
  {

    v14 = sub_10003EDEC(a1);
    if (v15)
    {
      v30 = *(*(v13 + 56) + 8 * v14);

      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100007D20(v16, qword_10017F350);
      v29 = *(v4 + 16);
      v29(v10, a1, v3);
      v17 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v28))
      {
        v18 = swift_slowAlloc();
        v26 = v18;
        v27 = swift_slowAlloc();
        v31 = v27;
        *v18 = 136315138;
        sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
        v25 = v17;
        v19 = dispatch thunk of CustomStringConvertible.description.getter();
        v21 = v20;
        (*(v4 + 8))(v10, v3);
        v22 = sub_10003E81C(v19, v21, &v31);

        v24 = v25;
        v23 = v26;
        *(v26 + 1) = v22;
        _os_log_impl(&_mh_execute_header, v24, v28, "Dismissing remote alert for nearby sharing interaction with ID: %s", v23, 0xCu);
        sub_100007920(v27);
      }

      else
      {

        (*(v4 + 8))(v10, v3);
      }

      dispatch thunk of SFRemoteAlertPresentationHandle.dismiss(animated:completion:)();
      v29(v7, a1, v3);
      swift_beginAccess();
      sub_100027388(0, v7);
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000A2920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A29B8, v6, v5);
}

uint64_t sub_1000A29B8()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_10004F4F8();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A2A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A2AB4, v7, v6);
}

uint64_t sub_1000A2AB4()
{
  v1 = v0[4];

  if (qword_100172250 != -1)
  {
    swift_once();
  }

  v2 = v0[2];

  sub_1000FC284(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000A2DD0(uint64_t a1)
{
  v53 = a1;
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v42[-v4];
  v6 = type metadata accessor for ActivityUIDismissalPolicy();
  v50 = *(v6 - 8);
  v51 = v6;
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000077C8(&qword_100176400, &qword_10011E508);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v42[-v12];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v52 = &v42[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v42[-v19];
  v21 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_nearbySharingInteractionActivitiesByID;
  result = swift_beginAccess();
  v23 = *(v1 + v21);
  if (*(v23 + 16))
  {

    v24 = sub_10003EDEC(v53);
    if (v25)
    {
      v48 = *(*(v23 + 56) + 8 * v24);
      v49 = v5;

      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100007D20(v26, qword_10017F350);
      v46 = *(v15 + 16);
      v47 = v15 + 16;
      v46(v20, v53, v14);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v44 = v29;
        v45 = swift_slowAlloc();
        v54 = v45;
        *v29 = 136315138;
        sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
        v43 = v28;
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        (*(v15 + 8))(v20, v14);
        v33 = sub_10003E81C(v30, v32, &v54);

        v34 = v44;
        *(v44 + 1) = v33;
        _os_log_impl(&_mh_execute_header, v27, v43, "Ending activity for nearby sharing interaction with ID: %s", v34, 0xCu);
        sub_100007920(v45);
      }

      else
      {

        (*(v15 + 8))(v20, v14);
      }

      v35 = sub_1000077C8(&qword_100176408, &qword_10011E510);
      (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
      static ActivityUIDismissalPolicy.immediate.getter();
      v36 = v48;
      dispatch thunk of Activity.endSync(_:dismissalPolicy:)();
      (*(v50 + 8))(v9, v51);
      sub_1000159AC(v13, &qword_100176400, &qword_10011E508);
      v37 = type metadata accessor for TaskPriority();
      v38 = v49;
      (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
      type metadata accessor for MainActor();

      v39 = static MainActor.shared.getter();
      v40 = swift_allocObject();
      v40[2] = v39;
      v40[3] = &protocol witness table for MainActor;
      v40[4] = v36;
      sub_1000F9860(0, 0, v38, &unk_10011E548, v40);

      v41 = v52;
      v46(v52, v53, v14);
      swift_beginAccess();
      sub_10002739C(0, v41);
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000A3380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000A3418, v6, v5);
}

uint64_t sub_1000A3418()
{
  v1 = v0[3];

  if (qword_100172250 != -1)
  {
    swift_once();
  }

  v2 = v0[2];

  sub_1000FC4A4();

  v3 = v0[1];

  return v3();
}

void sub_1000A34D0()
{
  v1 = v0;
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for ActivityUIDismissalPolicy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000077C8(&qword_100176400, &qword_10011E508);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v29 - v13;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100007D20(v15, qword_10017F350);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Ending failure activity", v18, 2u);
  }

  v19 = OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity;
  v20 = *(v0 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity);
  if (v20)
  {
    v21 = sub_1000077C8(&qword_100176408, &qword_10011E510);
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);

    static ActivityUIDismissalPolicy.immediate.getter();
    dispatch thunk of Activity.endSync(_:dismissalPolicy:)();
    (*(v7 + 8))(v10, v6);
    sub_1000159AC(v14, &qword_100176400, &qword_10011E508);
    v22 = type metadata accessor for TaskPriority();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    type metadata accessor for MainActor();

    v23 = static MainActor.shared.getter();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = &protocol witness table for MainActor;
    v24[4] = v20;
    sub_1000F9860(0, 0, v5, &unk_10011E520, v24);

    v25 = *(v1 + v19);
    *(v1 + v19) = 0;
  }

  else
  {
    v30 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v30, v26, "No current failure activity found", v27, 2u);
    }

    v28 = v30;
  }
}

void sub_1000A38EC()
{
  if (!qword_1001761A8)
  {
    sub_100007CCC(&qword_1001761B0, &unk_10011E1F0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1001761A8);
    }
  }
}

uint64_t sub_1000A3950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000AC238, v6, v5);
}

uint64_t sub_1000A39E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NearbySharingInteractionCoordinator(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000A3A28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000A8C80(*&v37[0], sub_1000A7C50, 0, isUniquelyReferenced_nonNull_native, v37);

  v39 = _swiftEmptyArrayStorage;
  v1 = *&v37[0] + 64;
  v2 = 1 << *(*&v37[0] + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(*&v37[0] + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v28 = v6;
  while (v4)
  {
LABEL_11:
    v10 = *(*(v6 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    swift_getKeyPath();
    swift_getKeyPath();
    v11 = v10;
    static Published.subscript.getter();

    v37[0] = v30;
    v37[1] = v31;
    v37[2] = v32;
    v37[3] = v33;
    v37[4] = v34;
    v37[5] = v35;
    v38 = v36;

    v8 = &_swiftEmptySetSingleton;
    if (*(&v34 + 1) <= 0xFFFFFFFEFFFFFFFFLL)
    {

      if (*(&v34 + 1) >> 62)
      {

        sub_1000159AC(v37, &unk_1001763B0, &qword_10011AF00);

        v8 = v32;
      }

      else
      {
        sub_1000159AC(v37, &unk_1001763B0, &qword_10011AF00);
        v8 = v33;
      }
    }

    v4 &= v4 - 1;
    sub_1000A5DC8(v8);
    v6 = v28;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);

      __break(1u);
      return result;
    }

    if (v9 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_11;
    }
  }

  v12 = v39;
  v27 = v39[2];
  if (v27)
  {
    v13 = 0;
    v14 = v39 + 51;
    v15 = _swiftEmptyArrayStorage;
    v26 = v39;
    while (v13 < v12[2])
    {
      v16 = *(v14 - 19);
      v17 = *(v14 - 11);
      v18 = *(v14 - 3);
      v19 = *(v14 - 2);
      v20 = *(v14 - 1);
      v21 = *v14;

      v29 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1000A5AD0(0, *(v15 + 2) + 1, 1, v15);
      }

      v23 = *(v15 + 2);
      v22 = *(v15 + 3);
      if (v23 >= v22 >> 1)
      {
        v15 = sub_1000A5AD0((v22 > 1), v23 + 1, 1, v15);
      }

      ++v13;
      *(v15 + 2) = v23 + 1;
      v24 = &v15[24 * v23];
      *(v24 + 4) = v16;
      *(v24 + 5) = v17;
      v24[48] = v29;
      v24[49] = v19;
      v24[50] = v20;
      v24[51] = v21;
      v14 += 24;
      v12 = v26;
      if (v27 == v13)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_26;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_24:

  return v15;
}

uint64_t sub_1000A3E84(unint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v4 = sub_1000A3A28();
  v5 = 0;
  v6 = *(v4 + 16);
  v7 = v4 + 40;
LABEL_2:
  v8 = (v7 + 24 * v5);
  while (1)
  {
    if (v6 == v5)
    {

      if (_swiftEmptyArrayStorage >> 62)
      {
        goto LABEL_41;
      }

      v16 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_36;
      }

      goto LABEL_11;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    ++v5;
    v9 = v8 + 3;
    v11 = *(v8 - 1);
    v10 = *v8;
    v12 = objc_opt_self();

    v13 = String._bridgeToObjectiveC()();
    v14 = [v12 normalizedHandleWithDestinationID:v13];

    v8 = v9;
    if (v14)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v4 + 40;
      goto LABEL_2;
    }
  }

  while (2)
  {
    __break(1u);
    do
    {
      __break(1u);
      do
      {
        __break(1u);
LABEL_41:
        v16 = _CocoaArrayWrapper.endIndex.getter();
        if (!v16)
        {
          goto LABEL_36;
        }

LABEL_11:
        v17 = 0;
        v38 = v16;
LABEL_12:
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_16;
        }
      }

      while (v17 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10));
      v18 = _swiftEmptyArrayStorage[v17 + 4];
LABEL_16:
      v42 = v18;
      v19 = __OFADD__(v17, 1);
      v20 = v17 + 1;
    }

    while (v19);
    v39 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_1000165C4(0, a2, a3);
      sub_1000A5BEC(a4, a2, a3);
      Set.Iterator.init(_cocoa:)();
      v21 = _swiftEmptyArrayStorage;
      v22 = v44;
      v23 = v45;
      v24 = v46;
      v25 = v47;
    }

    else
    {
      v21 = a1;
      v26 = -1 << *(a1 + 32);
      v23 = ~v26;
      v27 = -v26;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      else
      {
        v28 = -1;
      }

      v25 = v28 & *(a1 + 56);

      v24 = 0;
      v22 = a1 + 56;
    }

    v29 = (v23 + 64) >> 6;
    while ((v21 & 0x8000000000000000) != 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_35;
      }

      sub_1000165C4(0, a2, a3);
      swift_dynamicCast();
      v32 = v43;
      if (!v43)
      {
        goto LABEL_35;
      }

LABEL_33:
      v33 = [v32 handle];
      v34 = [v33 isEquivalentToHandle:v42];

      if (v34)
      {

        sub_100026860();

        return 1;
      }
    }

    v30 = v24;
    v31 = v25;
    if (!v25)
    {
      while (1)
      {
        v24 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v24 >= v29)
        {
          goto LABEL_35;
        }

        v31 = *(v22 + 8 * v24);
        ++v30;
        if (v31)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      continue;
    }

    break;
  }

LABEL_29:
  v25 = (v31 - 1) & v31;
  v32 = *(*(v21 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v31)))));
  if (v32)
  {
    goto LABEL_33;
  }

LABEL_35:
  sub_100026860();

  v17 = v39;
  if (v39 != v38)
  {
    goto LABEL_12;
  }

LABEL_36:

  return 0;
}

uint64_t sub_1000A42D0(void *a1)
{
  if ([a1 state])
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_10017F350);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_23;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Not permitting auto-join of Boop to SharePlay as the conversation is already joined", v5, 2u);
LABEL_22:

LABEL_23:

    return 0;
  }

  v6 = [a1 remoteMembers];
  sub_1000165C4(0, &unk_100176390, TUConversationMember_ptr);
  sub_1000A5BEC(&qword_100172E90, &unk_100176390, TUConversationMember_ptr);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v6) = sub_1000A3E84(v7, &unk_100176390, TUConversationMember_ptr, &qword_100172E90);

  if ((v6 & 1) == 0)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100007D20(v18, qword_10017F350);
    v19 = a1;
    v3 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v3, v13))
    {
      goto LABEL_23;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v19;
    *v15 = v19;
    v20 = v19;
    v17 = "Ignoring conversation which does not match any of the current nearby contacts: %@";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v3, v13, v17, v14, 0xCu);
    sub_1000159AC(v15, &qword_100172EB0, &qword_100119410);

    goto LABEL_22;
  }

  v8 = [a1 activeRemoteParticipants];
  sub_1000165C4(0, &qword_1001763A0, TUConversationParticipant_ptr);
  sub_1000A5BEC(&qword_1001763A8, &qword_1001763A0, TUConversationParticipant_ptr);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_1000A3E84(v9, &qword_1001763A0, TUConversationParticipant_ptr, &qword_1001763A8);

  if ((v10 & 1) == 0)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100007D20(v21, qword_10017F350);
    v22 = a1;
    v3 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v3, v13))
    {
      goto LABEL_23;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v22;
    *v15 = v22;
    v23 = v22;
    v17 = "Ignoring conversation where the nearby contact is not an active participant: %@";
    goto LABEL_21;
  }

  if ([a1 avMode])
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100007D20(v11, qword_10017F350);
    v12 = a1;
    v3 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v3, v13))
    {
      goto LABEL_23;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v12;
    *v15 = v12;
    v16 = v12;
    v17 = "Not permitting auto-join of Boop to SharePlay as the conversation is no longer AVLess: %@";
    goto LABEL_21;
  }

  v25 = [a1 provider];
  v26 = [v25 isDefaultProvider];

  if ((v26 & 1) == 0)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100007D20(v27, qword_10017F350);
    v28 = a1;
    v3 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v3, v13))
    {
      goto LABEL_23;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v28;
    *v15 = v28;
    v29 = v28;
    v17 = "Not permitting auto-join of Boop to SharePlay as the conversation is not from the default provider: %@";
    goto LABEL_21;
  }

  return 1;
}

void sub_1000A48AC(unint64_t a1)
{
  if (qword_100172218 != -1)
  {
LABEL_22:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_10017F350);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    sub_1000165C4(0, &unk_100177FF0, TUConversation_ptr);
    v7 = Array.description.getter();
    v9 = sub_10003E81C(v7, v8, &v23);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Updating using filtered conversation invitations: %s", v5, 0xCu);
    sub_100007920(v6);
  }

  if (a1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v12 = *(a1 + 8 * i + 32);
    }

    v13 = v12;
    v14 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_1000A42D0(v12))
    {
      break;
    }

    if (v14 == v10)
    {
      return;
    }
  }

  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "Joining SharePlay conversation for nearby sharing interaction: %@", v18, 0xCu);
    sub_1000159AC(v19, &qword_100172EB0, &qword_100119410);
  }

  v21 = [objc_allocWithZone(TUJoinConversationRequest) initWithConversation:v15];
  [v21 setAvMode:0];
  v22 = [objc_opt_self() sharedInstance];
  [v22 launchAppForJoinRequest:v21];
}

void sub_1000A4C38(void *a1)
{
  v1 = [a1 activeConversations];
  sub_1000165C4(0, &unk_100177FF0, TUConversation_ptr);
  sub_1000A5BEC(&qword_1001763E0, &unk_100177FF0, TUConversation_ptr);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);
  }

  v19 = v4;
  v20 = v2;
  v10 = (v4 + 64) >> 6;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_16:
  if (__CocoaSet.Iterator.next()() && (swift_dynamicCast(), v15 = v21, v13 = v5, v14 = v6, v21))
  {
    while (1)
    {
      if ([v15 state])
      {

        v5 = v13;
        v6 = v14;
        if (v2 < 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v16 = [v15 remoteMembers];
        sub_1000165C4(0, &unk_100176390, TUConversationMember_ptr);
        sub_1000A5BEC(&qword_100172E90, &unk_100176390, TUConversationMember_ptr);
        v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v16) = sub_1000A3E84(v17, &unk_100176390, TUConversationMember_ptr, &qword_100172E90);

        if (v16)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v18 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v5 = v13;
        v6 = v14;
        v2 = v20;
        if (v20 < 0)
        {
          goto LABEL_16;
        }
      }

LABEL_10:
      v11 = v5;
      v12 = v6;
      v13 = v5;
      if (!v6)
      {
        break;
      }

LABEL_14:
      v14 = (v12 - 1) & v12;
      v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
      if (!v15)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_24;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    sub_100026860();
  }
}

uint64_t sub_1000A4FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1000077C8(&qword_1001780C0, &qword_100120BD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000A510C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1000077C8(&qword_1001780C0, &qword_100120BD0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000A5234()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000A52B8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000A52B8()
{
  if (!qword_1001762E8)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001762E8);
    }
  }
}

uint64_t sub_1000A53A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000A53EC()
{
  result = qword_100176328;
  if (!qword_100176328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176328);
  }

  return result;
}

unint64_t sub_1000A5444()
{
  result = qword_100176330;
  if (!qword_100176330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176330);
  }

  return result;
}

unint64_t sub_1000A549C()
{
  result = qword_100176338;
  if (!qword_100176338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176338);
  }

  return result;
}

unint64_t sub_1000A54F4()
{
  result = qword_100176340;
  if (!qword_100176340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176340);
  }

  return result;
}

unint64_t sub_1000A5548()
{
  result = qword_100176350;
  if (!qword_100176350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176350);
  }

  return result;
}

unint64_t sub_1000A559C()
{
  result = qword_100176360;
  if (!qword_100176360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176360);
  }

  return result;
}

uint64_t sub_1000A55F0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

void *sub_1000A568C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000077C8(&qword_100172F48, &unk_100118BD0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_1000077C8(&qword_100172F40, &qword_10011EA40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000A57E8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000077C8(a5, a6);
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

char *sub_1000A59C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000077C8(&qword_100172A80, &unk_1001187D0);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_1000A5AD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000077C8(&qword_100172A88, &qword_10011E4C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000A5BEC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000165C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A5CD0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000A5AD0(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

uint64_t sub_1000A5DC8(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_1000A5AD0(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_1000A7D10(&v60, &v4[24 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_66:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v63 = v24;
          v64 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v57 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v60;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v61;
  v15 = v62;
  v2 = v63;
  v59 = v61;
  if (!v64)
  {
    goto LABEL_19;
  }

  v20 = (v64 - 1) & v64;
  v21 = __clz(__rbit64(v64)) | (v63 << 6);
  v57 = v62;
  v22 = (v62 + 64) >> 6;
LABEL_27:
  v58 = result;
  v27 = *(result + 48) + 24 * v21;
  v29 = *v27;
  v28 = *(v27 + 8);
  v30 = *(v27 + 16);
  v31 = *(v27 + 17);
  v32 = *(v27 + 18);
  v33 = *(v27 + 19);
  if (v31)
  {
    v34 = 256;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34 | v30;
  if (v32)
  {
    v36 = 0x10000;
  }

  else
  {
    v36 = 0;
  }

  if (v33)
  {
    v37 = 0x1000000;
  }

  else
  {
    v37 = 0;
  }

  v38 = v35 | v36 | v37;

  v39 = v59;
LABEL_38:
  while (1)
  {
    v40 = *(v4 + 3);
    v41 = v40 >> 1;
    if ((v40 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v41)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v4 + 2) = v13;
  }

  v55 = sub_1000A5AD0((v40 > 1), v13 + 1, 1, v4);
  v39 = v59;
  v4 = v55;
  v41 = *(v55 + 3) >> 1;
  if (v13 >= v41)
  {
    goto LABEL_37;
  }

LABEL_40:
  while (1)
  {
    v42 = &v4[24 * v13 + 32];
    *v42 = v29;
    *(v42 + 8) = v28;
    *(v42 + 16) = v38 & 1;
    *(v42 + 17) = BYTE1(v38) & 1;
    *(v42 + 18) = BYTE2(v38) & 1;
    *(v42 + 19) = HIBYTE(v38) & 1;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v58;
LABEL_47:
    v45 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v46 = *(result + 48) + 24 * (v45 | (v2 << 6));
    v29 = *v46;
    v28 = *(v46 + 8);
    v47 = *(v46 + 16);
    v48 = *(v46 + 17);
    v49 = *(v46 + 18);
    v50 = *(v46 + 19);
    if (v48)
    {
      v51 = 256;
    }

    else
    {
      v51 = 0;
    }

    v52 = v51 | v47;
    if (v49)
    {
      v53 = 0x10000;
    }

    else
    {
      v53 = 0;
    }

    if (v50)
    {
      v54 = 0x1000000;
    }

    else
    {
      v54 = 0;
    }

    v38 = v52 | v53 | v54;

    v39 = v59;
    if (v13 == v41)
    {
      v13 = v41;
      *(v4 + 2) = v41;
      goto LABEL_38;
    }
  }

  v43 = v2;
  result = v58;
  while (1)
  {
    v44 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v44 >= v22)
    {
      break;
    }

    v20 = *(v39 + 8 * v44);
    ++v43;
    if (v20)
    {
      v2 = v44;
      goto LABEL_47;
    }
  }

  if (v22 <= v2 + 1)
  {
    v56 = v2 + 1;
  }

  else
  {
    v56 = v22;
  }

  v62 = v57;
  v63 = v56 - 1;
  v64 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_100026860();
  *v1 = v4;
  return result;
}

unint64_t *sub_1000A613C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v59[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v50 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v55 = v4;
  v56 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v53 = v5 + 1;
    v11 = *(v2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v12 = Hasher._finalize()();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & v7[v14 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v53;
    if (v53 == v3)
    {
      goto LABEL_42;
    }
  }

  v17 = (*(v2 + 48) + 16 * v14);
  if (*v17 != v10 || v17[1] != v9)
  {
    v19 = ~v13;
    while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = 1 << v14;
      if (((1 << v14) & v7[v14 >> 6]) == 0)
      {
        v6 = v56;
        goto LABEL_6;
      }

      v20 = (*(v2 + 48) + 16 * v14);
      if (*v20 == v10 && v20[1] == v9)
      {
        break;
      }
    }
  }

  v59[1] = v53;

  v22 = *(v2 + 32);
  v51 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v51;
  v24 = v56;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v44 = v23;

  v45 = v44;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v52 = &v49;
    __chkstk_darwin(v21);
    v14 = &v49 - ((v25 + 15) & 0x3FFFFFFFFFFFFFF0);
    v58 = v7;
    memcpy(v14, v7, v25);
    v57 = v2;
    v26 = *(v2 + 16);
    v27 = *(v14 + 8 * v15) & ~v16;
    v54 = v14;
    *(v14 + 8 * v15) = v27;
    v28 = v26 - 1;
    v29 = v55;
    v7 = *(v55 + 16);
    v30 = v53;
    while (1)
    {
      v53 = v28;
      if (v30 == v7)
      {
LABEL_41:
        v2 = sub_1000A7704(v54, v51, v53, v57);
LABEL_42:

        return v2;
      }

      v15 = v30;
      while (1)
      {
        if (v30 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v15 >= *(v29 + 16))
        {
          goto LABEL_45;
        }

        v32 = (v24 + 16 * v15);
        v33 = *v32;
        v16 = v32[1];
        ++v15;
        v2 = v57;
        v34 = *(v57 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v35 = Hasher._finalize()();
        v36 = -1 << *(v2 + 32);
        v37 = v35 & ~v36;
        v14 = v37 >> 6;
        v38 = 1 << v37;
        if (((1 << v37) & v58[v37 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v24 = v56;
        if (v15 == v7)
        {
          goto LABEL_41;
        }
      }

      v39 = (*(v2 + 48) + 16 * v37);
      if (*v39 != v33 || v39[1] != v16)
      {
        v41 = ~v36;
        v2 = 1;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v37 = (v37 + 1) & v41;
          v14 = v37 >> 6;
          v38 = 1 << v37;
          if (((1 << v37) & v58[v37 >> 6]) == 0)
          {
            v29 = v55;
            goto LABEL_37;
          }

          v42 = (*(v57 + 48) + 16 * v37);
          if (*v42 == v33 && v42[1] == v16)
          {
            break;
          }
        }
      }

      v29 = v55;
      v31 = v54[v14];
      v54[v14] = v31 & ~v38;
      if ((v31 & v38) == 0)
      {
        goto LABEL_22;
      }

      v28 = v53 - 1;
      v24 = v56;
      if (__OFSUB__(v53, 1))
      {
        __break(1u);
      }

      v30 = v15;
      if (v53 == 1)
      {

        v2 = &_swiftEmptySetSingleton;
        goto LABEL_42;
      }
    }
  }

  v46 = swift_slowAlloc();
  memcpy(v46, v7, v45);
  v47 = v50;
  v48 = sub_1000A704C(v46, v51, v2, v14, v59);

  if (!v47)
  {

    return v48;
  }

  __break(1u);
  return result;
}

void *sub_1000A65E8(uint64_t a1, void *a2)
{
  v5 = sub_1000077C8(&qword_100172F08, &unk_10011E530);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = (&v69 - v10);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v89 = (&v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v69 - v16);
  __chkstk_darwin(v18);
  v84 = (&v69 - v20);
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v70 = v11;
  v72 = v8;
  v22 = a1 + 64;
  v21 = *(a1 + 64);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = a2 + 7;
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 64; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      sub_1000159AC(v32, &qword_100172F08, &unk_10011E530);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = a2[5];
    v74 = sub_1000A53A0(&unk_100173CF0, &type metadata accessor for UUID);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v17, a2[6] + v88 * v26, v12);
    v38 = sub_1000A53A0(&qword_100175DE0, &type metadata accessor for UUID);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v91 = *v92;
    v91(v17, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    __chkstk_darwin(v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = a2[2];
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        sub_1000159AC(v26, &qword_100172F08, &unk_10011E530);
        a2 = sub_1000A7928(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = a2[5];
      v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v17, v56[6] + v58 * v88, v12);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v91(v17, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v17, v56[6] + v58 * v88, v12);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v91(v17, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = &_swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v64 = v25;

    v84 = a2;
    v65 = v64;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v66 = v84;

      a2 = v66;
      continue;
    }

    break;
  }

  v67 = swift_slowAlloc();
  memcpy(v67, v86, v65);
  sub_1000A7230(v67, v69, v84, v26, &v93);
  a2 = v68;

LABEL_52:
  sub_100026860();
  return a2;
}

unint64_t *sub_1000A704C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v27 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_1000A7704(v28, a2, v27, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        v16 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v17 = Hasher._finalize()();
        v18 = -1 << *(a3 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        v21 = 1 << v19;
        if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 != v15 || v22[1] != v14)
      {
        v24 = ~v18;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v19 = (v19 + 1) & v24;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v25 = (*(a3 + 48) + 16 * v19);
          if (*v25 == v15 && v25[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v28[v20];
      v28[v20] = v10 & ~v21;
    }

    while ((v10 & v21) == 0);
    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v27 != 1)
    {
      continue;
    }

    return &_swiftEmptySetSingleton;
  }
}

void sub_1000A7230(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_1000077C8(&qword_100172F08, &unk_10011E530);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v66 = &v49 - v18;
  v19 = *(a3 + 16);
  v20 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v21 = *(a1 + v20);
  v52 = a1;
  v53 = v12;
  *(a1 + v20) = v21 & ((-1 << a4) - 1);
  v22 = v19 - 1;
  v63 = v23 + 16;
  v64 = a3;
  v57 = (v23 + 48);
  v58 = (v23 + 56);
  v56 = (v23 + 32);
  v62 = a3 + 56;
  v59 = v23;
  v65 = (v23 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v22;
    do
    {
      while (1)
      {
        v25 = *a5;
        v26 = a5[1];
        v28 = a5[2];
        v27 = a5[3];
        v29 = a5[4];
        if (!v29)
        {
          v31 = (v28 + 64) >> 6;
          if (v31 <= v27 + 1)
          {
            v32 = v27 + 1;
          }

          else
          {
            v32 = (v28 + 64) >> 6;
          }

          v33 = v32 - 1;
          while (1)
          {
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v30 >= v31)
            {
              v34 = 0;
              v35 = 1;
              goto LABEL_15;
            }

            v29 = *(v26 + 8 * v30);
            ++v27;
            if (v29)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v30 = a5[3];
LABEL_14:
        v34 = (v29 - 1) & v29;
        (*(v59 + 16))(v12, *(v25 + 48) + *(v59 + 72) * (__clz(__rbit64(v29)) | (v30 << 6)), v13, v17);
        v35 = 0;
        v33 = v30;
LABEL_15:
        (*v58)(v12, v35, 1, v13);
        *a5 = v25;
        a5[1] = v26;
        a5[2] = v28;
        a5[3] = v33;
        a5[4] = v34;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1000159AC(v12, &qword_100172F08, &unk_10011E530);
          v48 = v64;

          sub_1000A7928(v52, v50, v51, v48);
          return;
        }

        (*v56)(v66, v12, v13);
        v36 = v64;
        v37 = *(v64 + 40);
        sub_1000A53A0(&unk_100173CF0, &type metadata accessor for UUID);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v36 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v24 = *v65;
LABEL_4:
        v24(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_1000A53A0(&qword_100175DE0, &type metadata accessor for UUID);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      v24(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v22 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v51 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1000A7704(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000077C8(&qword_100176590, &qword_10011E7C0);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000A7928(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = type metadata accessor for UUID();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000077C8(&qword_100175DE8, &qword_10011DC90);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    sub_1000A53A0(&unk_100173CF0, &type metadata accessor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_1000A7C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_1000077C8(&qword_1001763D0, &qword_100121C60) + 48);
  v5 = *(sub_1000077C8(&qword_1001763C8, &unk_10011E4D0) + 48);
  v8 = *(a1 + v4);
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  *(a2 + v5) = v8;

  return v8;
}

void *sub_1000A7D10(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = *(a4 + 48) + 24 * (__clz(__rbit64(v9)) | (v12 << 6));
      v19 = *v17;
      v18 = *(v17 + 8);
      v9 &= v9 - 1;
      v20 = *(v17 + 16);
      v21 = *(v17 + 17);
      v22 = *(v17 + 18);
      LOBYTE(v17) = *(v17 + 19);
      *v11 = v19;
      *(v11 + 8) = v18;
      *(v11 + 16) = v20;
      *(v11 + 17) = v21;
      *(v11 + 18) = v22;
      *(v11 + 19) = v17;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 24;

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
      v24 = v12 + 1;
    }

    else
    {
      v24 = (63 - v7) >> 6;
    }

    v12 = v24 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1000A7E88(uint64_t a1@<X8>)
{
  v3 = sub_1000077C8(&qword_1001763D0, &qword_100121C60);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v6 = &v43 - v5;
  v46 = type metadata accessor for UUID();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000077C8(&qword_1001763D8, &unk_10011E4E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v17 = &v43 - v15;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v43 = v6;
  v49 = v21;
  if (v22)
  {
    v45 = a1;
    v23 = v20;
LABEL_11:
    v44 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = v46;
    (*(v7 + 16))(v10, *(v18 + 48) + *(v7 + 72) * v27, v46, v16);
    v29 = *(*(v18 + 56) + 8 * v27);
    v30 = *(v48 + 48);
    v31 = v10;
    v32 = v48;
    (*(v7 + 32))(v17, v31, v28);
    *&v17[v30] = v29;
    v33 = v47;
    (*(v47 + 56))(v17, 0, 1, v32);
    v34 = v29;
    v35 = v44;
    a1 = v45;
    v26 = v23;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v36 = v50;
    v1[2] = v49;
    v1[3] = v26;
    v1[4] = v35;
    v37 = v1[5];
    v38 = v1[6];
    sub_100021A84(v17, v36, &qword_1001763D8, &unk_10011E4E0);
    v39 = 1;
    if ((*(v33 + 48))(v36, 1, v32) != 1)
    {
      v40 = v36;
      v41 = v43;
      sub_100021A84(v40, v43, &qword_1001763D0, &qword_100121C60);
      v37(v41);
      sub_1000159AC(v41, &qword_1001763D0, &qword_100121C60);
      v39 = 0;
    }

    v42 = sub_1000077C8(&qword_1001763C8, &unk_10011E4D0);
    (*(*(v42 - 8) + 56))(a1, v39, 1, v42);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v33 = v47;
        v32 = v48;
        (*(v47 + 56))(&v43 - v15, 1, 1, v48, v16);
        v35 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1000A8264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000077C8(&qword_1001765B0, &qword_10011A8B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10003EEC0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000A8368(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000077C8(&qword_100173C90, &qword_10011A2F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003EEC0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000A846C(uint64_t a1)
{
  v2 = sub_1000077C8(&qword_100176598, &qword_10011E7C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000077C8(&unk_1001765A0, &qword_10011A2F0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100007BA4(v10, v6, &qword_100176598, &qword_10011E7C8);
      result = sub_10003EF38(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for SFAirDrop.TransferIdentifier();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1000A8654(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_1000077C8(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_1000077C8(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_100007BA4(v17, v13, a2, v28);
      result = sub_10003EDEC(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UUID();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t sub_1000A8834(uint64_t a1)
{
  v2 = sub_1000077C8(&unk_100176570, &unk_10011E790);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000077C8(&unk_100173D10, &qword_10011A398);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100007BA4(v10, v6, &unk_100176570, &unk_10011E790);
      result = sub_10003EDEC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1000A8A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000077C8(&qword_1001763E8, &qword_10011E4F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007BA4(v4, &v11, &unk_1001763F0, &qword_10011E4F8);
      v5 = v11;
      result = sub_10003F050(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100058DC8(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1000A8B44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000077C8(&qword_1001765E8, &qword_10011EA28);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007BA4(v4, v13, &qword_1001765F0, &unk_10011EA30);
      result = sub_10003F00C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100058DC8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_1000A8C80(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v58 = a5;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000077C8(&qword_1001763C0, &qword_10011E4C8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v47 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v51 = a1;
  v52 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v53 = v19;
  v54 = 0;
  v55 = v22 & v20;
  v56 = a2;
  v57 = a3;
  v49 = v10;
  v50 = (v10 + 32);
  v48 = (v10 + 8);

  v47 = a3;

  while (1)
  {
    sub_1000A7E88(v17);
    v26 = sub_1000077C8(&qword_1001763C8, &unk_10011E4D0);
    if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
    {
      sub_100026860();
    }

    v27 = *(v26 + 48);
    v28 = *v50;
    v29 = v9;
    (*v50)(v13, v17, v9);
    v30 = *&v17[v27];
    v31 = *v58;
    v33 = sub_10003EDEC(v13);
    v34 = *(v31 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      break;
    }

    v37 = v32;
    if (*(v31 + 24) >= v36)
    {
      if ((a4 & 1) == 0)
      {
        sub_1000421BC();
      }
    }

    else
    {
      v38 = v58;
      sub_10003FECC(v36, a4 & 1);
      v39 = *v38;
      v40 = sub_10003EDEC(v13);
      if ((v37 & 1) != (v41 & 1))
      {
        goto LABEL_19;
      }

      v33 = v40;
    }

    v42 = *v58;
    if (v37)
    {
      v23 = *(v42[7] + 8 * v33);

      v9 = v29;
      (*v48)(v13, v29);
      v24 = v42[7];
      v25 = *(v24 + 8 * v33);
      *(v24 + 8 * v33) = v23;

      a4 = 1;
    }

    else
    {
      v42[(v33 >> 6) + 8] |= 1 << v33;
      v9 = v29;
      v28((v42[6] + *(v49 + 72) * v33), v13, v29);
      *(v42[7] + 8 * v33) = v30;
      v43 = v42[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_18;
      }

      v42[2] = v45;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000A8FFC(void *a1)
{
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v53 - v4;
  v6 = type metadata accessor for SFRemoteAlertPresentationRequest.PresentationType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100054568())
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100007D20(v11, qword_10017F350);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v15 = 136315394;
      type metadata accessor for UUID();
      sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = sub_10003E81C(v16, v17, &v56);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v55 = sub_100054568();
      v19 = String.init<A>(describing:)();
      v21 = sub_10003E81C(v19, v20, &v56);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Not creating remote alert for interaction with ID: %s preferred presentation style is: %s", v15, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    v24 = sub_100007D20(v23, qword_10017F350);
    v25 = a1;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v53 = v24;
      v29 = v28;
      v30 = swift_slowAlloc();
      v54 = v5;
      v31 = v30;
      v56 = v30;
      *v29 = 136315138;
      type metadata accessor for UUID();
      sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = sub_10003E81C(v32, v33, &v56);

      *(v29 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "Creating remote alert presentation for nearby sharing interaction with ID: %s", v29, 0xCu);
      sub_100007920(v31);
      v5 = v54;
    }

    v35 = objc_allocWithZone(type metadata accessor for NearbySharingInteractionViewController(0));
    v36 = v25;
    v37 = sub_1000D9AE4(v36);
    type metadata accessor for AUIRemoteAlertPresentationManager();
    v38 = sub_100078F40();
    (*(v7 + 104))(v10, enum case for SFRemoteAlertPresentationRequest.PresentationType.unknown(_:), v6);
    v22 = dispatch thunk of SFRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:hideViewController:presentationType:)();

    (*(v7 + 8))(v10, v6);
    if (v22)
    {
      *(swift_allocObject() + 16) = v36;
      v39 = v36;

      dispatch thunk of SFRemoteAlertPresentationHandle.onDismiss.setter();

      return v22;
    }

    v41 = v36;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v45;
      *v44 = 136315138;
      type metadata accessor for UUID();
      sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = sub_10003E81C(v46, v47, &v56);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "Could not create remote alert for interaction with ID: %s, ending the interaction", v44, 0xCu);
      sub_100007920(v45);
    }

    v49 = type metadata accessor for TaskPriority();
    (*(*(v49 - 8) + 56))(v5, 1, 1, v49);
    type metadata accessor for MainActor();
    v50 = v41;
    v51 = static MainActor.shared.getter();
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = &protocol witness table for MainActor;
    v52[4] = v50;
    sub_1000F9860(0, 0, v5, &unk_10011E680, v52);
  }

  return 0;
}

uint64_t sub_1000A972C(char *a1)
{
  v104 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v101 = *(v104 - 8);
  v2 = *(v101 + 64);
  __chkstk_darwin(v104);
  v99 = v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for NearbySharingInteractionAttributes(0);
  v4 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v6 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityPresentationOptions();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v13 = *(v12 - 8);
  v14 = v13[8];
  __chkstk_darwin(v12);
  v103 = v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v86 - v17;
  v19 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v86 - v21;
  v23 = sub_100054568();
  v106 = a1;
  if (v23 == 1)
  {
    v97 = v8;
    v24 = type metadata accessor for TaskPriority();
    v25 = *(v24 - 8);
    v94 = *(v25 + 56);
    v95 = v24;
    v93 = v25 + 56;
    v94(v22, 1, 1);
    v96 = type metadata accessor for MainActor();
    v26 = static MainActor.shared.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = &protocol witness table for MainActor;
    sub_1000F9860(0, 0, v22, &unk_10011E640, v27);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v90 = v13[11];
    v91 = v13 + 11;
    LODWORD(v26) = v90(v18, v12);
    v28 = enum case for SFAirDrop.NearbySharingInteraction.State.connectionInterrupted(_:);
    v29 = v13[1];
    v92 = v12;
    v86[1] = v13 + 1;
    v86[0] = v29;
    v29(v18, v12);
    v89 = v28;
    v105 = v11;
    v100 = v22;
    v98 = v7;
    v87 = v13;
    if (v26 == v28)
    {
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100007D20(v30, qword_10017F350);
      v31 = v106;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v88 = v6;
        v36 = v35;
        v108[0] = v35;
        *v34 = 136315138;
        type metadata accessor for UUID();
        sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = sub_10003E81C(v37, v38, v108);

        *(v34 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v32, v33, "Creating failure activity for nearby sharing interaction with ID: %s", v34, 0xCu);
        sub_100007920(v36);
        v6 = v88;
      }

      if (!SBUIIsSystemApertureEnabled())
      {
LABEL_8:
        v40 = v101;
        sub_1000077C8(&qword_100175D30, &qword_10011D980);
        v41 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
        v42 = *(v41 - 8);
        v43 = *(v42 + 72);
        v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1001186F0;
        (*(v42 + 104))(v45 + v44, enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:), v41);
LABEL_20:
        v66 = v104;
        ActivityPresentationOptions.init(destinations:)();
        v67 = OBJC_IVAR____TtC9AirDropUI33NearbySharingInteractionViewModel_id;
        v68 = type metadata accessor for UUID();
        v69 = *(*(v68 - 8) + 16);
        v104 = v67;
        v69(v6, &v106[v67], v68);
        v70 = *(v102 + 20);
        v71 = *(v40 + 56);
        v71(&v6[v70], 1, 1, v66);
        swift_getKeyPath();
        swift_getKeyPath();
        v72 = v103;
        static Published.subscript.getter();

        v73 = v92;
        v74 = v90(v72, v92);
        if (v74 == v89)
        {
          (v87[12])(v72, v73);
          v75 = *(v40 + 32);
          v76 = v99;
          v75(v99, v72, v66);
          sub_1000159AC(&v6[v70], &qword_1001780C0, &qword_100120BD0);
          v75(&v6[v70], v76, v66);
          v71(&v6[v70], 0, 1, v66);
        }

        else
        {
          (v86[0])(v72, v73);
        }

        v77 = v100;
        sub_1000077C8(&unk_1001764F0, &qword_10011E650);
        v78 = v105;
        v79 = static Activity.request(attributes:contentState:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:)();
        v80 = v106;
        v82 = v79;
        (v94)(v77, 1, 1, v95);
        v83 = v80;

        v84 = static MainActor.shared.getter();
        v85 = swift_allocObject();
        v85[2] = v84;
        v85[3] = &protocol witness table for MainActor;
        v85[4] = v82;
        v85[5] = v83;
        sub_1000F9860(0, 0, v77, &unk_10011E670, v85);

        (*(v97 + 8))(v78, v98);
        sub_1000AB0AC(v6, type metadata accessor for NearbySharingInteractionAttributes);
        return v82;
      }
    }

    else
    {
      v88 = v6;
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      sub_100007D20(v57, qword_10017F350);
      v58 = v106;
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v108[0] = v62;
        *v61 = 136315138;
        type metadata accessor for UUID();
        sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = sub_10003E81C(v63, v64, v108);

        *(v61 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v59, v60, "Creating activity for nearby sharing interaction with ID: %s", v61, 0xCu);
        sub_100007920(v62);
      }

      v6 = v88;
      if (!SBUIIsSystemApertureEnabled())
      {
        goto LABEL_8;
      }
    }

    v40 = v101;
    static ActivityPresentationOptions.ActivityPresentationDestination.systemApertureOnly.getter();
    goto LABEL_20;
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100007D20(v46, qword_10017F350);
  v47 = v106;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v108[0] = swift_slowAlloc();
    *v50 = 136315394;
    type metadata accessor for UUID();
    sub_1000A53A0(&qword_1001770E0, &type metadata accessor for UUID);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = sub_10003E81C(v51, v52, v108);

    *(v50 + 4) = v53;
    *(v50 + 12) = 2080;
    v107 = sub_100054568();
    v54 = String.init<A>(describing:)();
    v56 = sub_10003E81C(v54, v55, v108);

    *(v50 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v48, v49, "Not creating activity for interaction with ID: %s preferred presentation style is: %s", v50, 0x16u);
    swift_arrayDestroy();
  }

  return 0;
}

void *sub_1000AA5C4(void *a1)
{
  v2 = sub_1000077C8(&qword_100172EE0, &qword_10011B220);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v35 = &v34 - v4;
  v5 = type metadata accessor for URL();
  v36 = *(v5 - 8);
  v37 = v5;
  v6 = *(v36 + 64);
  __chkstk_darwin(v5);
  v34 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000A3A28();
  v9 = result;
  v10 = result[2];
  if (!v10)
  {
LABEL_13:
  }

  v11 = 0;
  v12 = result + 5;
  while (1)
  {
    if (v11 >= v9[2])
    {
      __break(1u);
      return result;
    }

    v14 = *(v12 - 1);
    v13 = *v12;

    v15 = [a1 sender];
    if (!v15)
    {

      goto LABEL_4;
    }

    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v14 == v17 && v13 == v19)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_17;
    }

LABEL_4:
    ++v11;
    v12 += 3;
    if (v10 == v11)
    {
      goto LABEL_13;
    }
  }

LABEL_17:

  result = [a1 body];
  if (result)
  {
    v22 = result;
    v23 = [result string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v35;
    URL.init(string:)();

    v26 = v36;
    v25 = v37;
    if ((*(v36 + 48))(v24, 1, v37) == 1)
    {
      return sub_1000159AC(v24, &qword_100172EE0, &qword_10011B220);
    }

    else
    {
      v27 = v34;
      (*(v26 + 32))(v34, v24, v25);
      v28 = [objc_opt_self() sharedApplication];
      v29 = v26;
      URL._bridgeToObjectiveC()(v30);
      v32 = v31;
      sub_1000A8A1C(_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_1000A53A0(&qword_100172860, type metadata accessor for OpenExternalURLOptionsKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v28 openURL:v32 options:isa completionHandler:0];

      return (*(v29 + 8))(v27, v25);
    }
  }

  return result;
}

uint64_t sub_1000AA9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_1000A3950(a1, v4, v5, v6);
}

uint64_t sub_1000AAA84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AAA9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AAADC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000BCF0;

  return sub_1000A3380(a1, v4, v5, v6);
}

uint64_t sub_1000AAB90()
{
  v1 = sub_1000077C8(&qword_100176468, &qword_10011E588);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for SFProximityHandoff.Interaction();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v12 = *(v0 + v11);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_1000AACF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000077C8(&qword_100176468, &qword_10011E588) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for SFProximityHandoff.Interaction() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1000167E4;

  return sub_1000A05A4(a1, v1 + v6, v1 + v9, v10);
}

void sub_1000AAE7C()
{
  v0 = *(*(sub_1000077C8(&qword_100176460, &qword_10011E580) - 8) + 80);

  sub_1000A1E2C();
}

uint64_t sub_1000AAEF8()
{
  v1 = sub_1000077C8(&qword_100176460, &qword_10011E580);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000AAF8C(uint64_t a1)
{
  v3 = *(sub_1000077C8(&qword_100176460, &qword_10011E580) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000A1F24(a1, v4);
}

uint64_t sub_1000AB008()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AB044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000AB0AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000AB10C()
{
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000AB1D8(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_10009EE24(a1, v4, v5, v6);
}

uint64_t sub_1000AB24C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AB2A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AB2E0()
{
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
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

uint64_t sub_1000AB3AC(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000BCF0;

  return sub_10009F11C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000AB4AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AB4E4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000167E4;

  return sub_1000791B0();
}

uint64_t sub_1000AB594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_1000A2920(a1, v4, v5, v6);
}

uint64_t sub_1000AB648()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000AB690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000167E4;

  return sub_1000A2A1C(a1, v4, v5, v7, v6);
}

uint64_t sub_1000AB750(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_100096C6C(a1, v4, v5, v6);
}

uint64_t sub_1000AB804()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AB844(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_100096C6C(a1, v4, v5, v6);
}

uint64_t sub_1000AB8F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_100096C6C(a1, v4, v5, v6);
}

uint64_t sub_1000AB9AC()
{
  v1 = type metadata accessor for SFAirDrop.NearbySharingAssertionRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000ABA80(uint64_t a1)
{
  v4 = *(type metadata accessor for SFAirDrop.NearbySharingAssertionRequest() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000167E4;

  return sub_10009A720(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1000ABB84()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000ABBCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000167E4;

  return sub_1000989CC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000ABC8C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000ABCDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000167E4;

  return sub_100097C64(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000ABDAC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000ABDEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000167E4;

  return sub_100096C6C(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for NearbySharingInteractionPresentationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbySharingInteractionPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000AC02C()
{
  result = qword_1001765B8;
  if (!qword_1001765B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001765B8);
  }

  return result;
}

unint64_t sub_1000AC084()
{
  result = qword_1001765C0;
  if (!qword_1001765C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001765C0);
  }

  return result;
}

unint64_t sub_1000AC0DC()
{
  result = qword_1001765C8;
  if (!qword_1001765C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001765C8);
  }

  return result;
}

unint64_t sub_1000AC134()
{
  result = qword_1001765D0;
  if (!qword_1001765D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001765D0);
  }

  return result;
}

unint64_t sub_1000AC18C()
{
  result = qword_1001765D8;
  if (!qword_1001765D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001765D8);
  }

  return result;
}

unint64_t sub_1000AC1E4()
{
  result = qword_1001765E0;
  if (!qword_1001765E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001765E0);
  }

  return result;
}

uint64_t sub_1000AC2A0()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_10017F308);
  sub_100007D20(v0, qword_10017F308);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000AC31C()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_10017F320);
  sub_100007D20(v0, qword_10017F320);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000AC3E4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_1000154C0(v3, a2);
  sub_100007D20(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000AC470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000077C8(&qword_100176628, qword_10011EAB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000AC550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000077C8(&qword_100176628, qword_10011EAB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AirDropAskRequestView()
{
  result = qword_100176688;
  if (!qword_100176688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000AC664()
{
  sub_1000AC708();
  if (v0 <= 0x3F)
  {
    sub_1000AC760();
    if (v1 <= 0x3F)
    {
      sub_10004DD64();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000AC708()
{
  if (!qword_100176698)
  {
    type metadata accessor for DynamicTypeSize();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100176698);
    }
  }
}

void sub_1000AC760()
{
  if (!qword_1001766A0)
  {
    type metadata accessor for AirDropTransferSession();
    sub_1000C9AAC(&qword_100173460, type metadata accessor for AirDropTransferSession);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1001766A0);
    }
  }
}

void *sub_1000AC810(uint64_t a1)
{
  v37 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v29 = v1;
    v41 = _swiftEmptyArrayStorage;
    sub_10000E474(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = _HashTable.startBucket.getter();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = v40[2];
      v19 = v40[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_10000E474((v19 > 1), v20 + 1, 1);
        v18 = v41;
      }

      v18[2] = v20 + 1;
      v21 = &v18[2 * v20];
      v21[4] = v39;
      v21[5] = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_100047AC0(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_100047AC0(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000ACB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000ACC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000ACD08()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100176610);
  v1 = sub_100007D20(v0, qword_100176610);
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F338);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000ACDD0()
{
  v1 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + *(type metadata accessor for AirDropAskRequestView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = (*(v2 + 88))(v5, v1);
  if (v7 == enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    (*(v2 + 96))(v5, v1);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = v16[15];
    v9 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  else if (v7 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
  {
    (*(v2 + 96))(v5, v1);
    v10 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
    v11 = *&v5[*(v10 + 48)];

    v12 = *(v10 + 64);
    v13 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
    (*(*(v13 - 8) + 8))(&v5[v12], v13);
    v14 = type metadata accessor for SFAirDropReceive.ItemDestination();
    (*(*(v14 - 8) + 8))(v5, v14);
    return 1;
  }

  else
  {
    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return v8;
}

uint64_t sub_1000AD0A4@<X0>(uint64_t a1@<X8>)
{
  v203 = a1;
  v154 = sub_1000077C8(&qword_1001766E0, &qword_10011EB38);
  v153 = *(v154 - 8);
  v2 = *(v153 + 64);
  __chkstk_darwin(v154);
  v151 = &v148 - v3;
  v168 = sub_1000077C8(&qword_1001766E8, &qword_10011EB40);
  v4 = *(*(v168 - 8) + 64);
  __chkstk_darwin(v168);
  v152 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v155 = &v148 - v7;
  v164 = sub_1000077C8(&qword_1001766F0, &qword_10011EB48);
  v8 = *(*(v164 - 8) + 64);
  __chkstk_darwin(v164);
  v166 = &v148 - v9;
  v196 = sub_1000077C8(&qword_1001766F8, &qword_10011EB50);
  v10 = *(*(v196 - 8) + 64);
  __chkstk_darwin(v196);
  v167 = &v148 - v11;
  v165 = sub_1000077C8(&qword_100176700, &qword_10011EB58);
  v12 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v162 = &v148 - v13;
  v14 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v173 = &v148 - v16;
  v175 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v174 = *(v175 - 8);
  v17 = *(v174 + 64);
  __chkstk_darwin(v175);
  v161 = &v148 - v18;
  v19 = sub_1000077C8(&qword_100176708, &qword_10011EB60);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v184 = &v148 - v21;
  v188 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v182 = *(v188 - 8);
  v22 = *(v182 + 64);
  __chkstk_darwin(v188);
  v160 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v159 = &v148 - v25;
  __chkstk_darwin(v26);
  v172 = &v148 - v27;
  __chkstk_darwin(v28);
  v181 = &v148 - v29;
  v191 = sub_1000077C8(&qword_100176710, &qword_10011EB68);
  v30 = *(*(v191 - 8) + 64);
  __chkstk_darwin(v191);
  v192 = &v148 - v31;
  v194 = sub_1000077C8(&qword_100176718, &qword_10011EB70);
  v32 = *(*(v194 - 8) + 64);
  __chkstk_darwin(v194);
  v193 = &v148 - v33;
  v202 = sub_1000077C8(&qword_100176720, &qword_10011EB78);
  v34 = *(*(v202 - 8) + 64);
  __chkstk_darwin(v202);
  v195 = &v148 - v35;
  v204 = sub_1000077C8(&qword_100176728, &qword_10011EB80);
  v36 = *(*(v204 - 8) + 64);
  __chkstk_darwin(v204);
  v163 = (&v148 - v37);
  v179 = sub_1000077C8(&qword_100176730, &unk_10011EB88);
  v38 = *(*(v179 - 8) + 64);
  __chkstk_darwin(v179);
  v158 = &v148 - v39;
  v171 = sub_1000077C8(&qword_100175008, &qword_10011C610);
  v157 = *(v171 - 8);
  v40 = *(v157 + 64);
  __chkstk_darwin(v171);
  v170 = &v148 - v41;
  v185 = sub_1000077C8(&qword_100176738, &qword_10011EB98);
  v42 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v185);
  v187 = &v148 - v43;
  v176 = sub_1000077C8(&qword_100176740, &qword_10011EBA0);
  v44 = *(*(v176 - 8) + 64);
  __chkstk_darwin(v176);
  v177 = &v148 - v45;
  v186 = sub_1000077C8(&qword_100176748, &qword_10011EBA8);
  v46 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v178 = &v148 - v47;
  v198 = sub_1000077C8(&qword_100176750, &unk_10011EBB0);
  v48 = *(*(v198 - 8) + 64);
  __chkstk_darwin(v198);
  v183 = &v148 - v49;
  v50 = sub_1000077C8(&unk_100174F80, &unk_10011AE60);
  v197 = *(v50 - 8);
  v51 = *(v197 + 64);
  __chkstk_darwin(v50);
  v169 = &v148 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v180 = &v148 - v54;
  v190 = sub_1000077C8(&qword_100176758, &unk_10011EBC0);
  v55 = *(*(v190 - 8) + 64);
  __chkstk_darwin(v190);
  v189 = &v148 - v56;
  v57 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v58 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57 - 8);
  v60 = &v148 - v59;
  v61 = type metadata accessor for SFAirDropSend.Transfer.State();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  __chkstk_darwin(v61);
  v65 = &v148 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v68 = &v148 - v67;
  v69 = sub_1000077C8(&qword_100176760, &qword_10011EBD0);
  v200 = *(v69 - 8);
  v201 = v69;
  v70 = *(v200 + 64);
  __chkstk_darwin(v69);
  v199 = &v148 - v71;
  v150 = type metadata accessor for AirDropAskRequestView();
  v72 = *(v1 + *(v150 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
  v73 = v61;
  v74 = v62;

  if ((*(v62 + 48))(v60, 1, v73) == 1)
  {
    v75 = v1;
    sub_1000159AC(v60, &qword_100172FD0, &qword_10011A210);
    swift_getKeyPath();
    swift_getKeyPath();
    v76 = v181;
    static Published.subscript.getter();

    v77 = v184;
    SFAirDropReceive.Transfer.State.contactResponsePermissionRequest.getter();
    v78 = v182;
    v79 = *(v182 + 8);
    v80 = v188;
    v79(v76, v188);
    v81 = v197;
    if ((*(v197 + 48))(v77, 1, v50) == 1)
    {
      sub_1000159AC(v77, &qword_100176708, &qword_10011EB60);
      swift_getKeyPath();
      swift_getKeyPath();
      v82 = v172;
      static Published.subscript.getter();

      v83 = v173;
      SFAirDropReceive.Transfer.State.permissionRequest.getter();
      v79(v82, v80);
      v84 = v174;
      v85 = v175;
      if ((*(v174 + 48))(v83, 1, v175) == 1)
      {
        sub_1000159AC(v83, &qword_100173D50, &unk_10011D120);
        swift_getKeyPath();
        swift_getKeyPath();
        v86 = v159;
        static Published.subscript.getter();

        v87 = v160;
        (*(v78 + 104))(v160, enum case for SFAirDropReceive.Transfer.State.created(_:), v80);
        v88 = static SFAirDropReceive.Transfer.State.== infix(_:_:)();
        v79(v87, v80);
        v79(v86, v80);
        if (v88)
        {
          v89 = v151;
          ProgressView<>.init<>()();
          v90 = *(v75 + *(v150 + 24));
          static Alignment.center.getter();
          _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
          v91 = v152;
          (*(v153 + 32))(v152, v89, v154);
          v92 = (v91 + *(v168 + 36));
          v93 = v210;
          v92[4] = v209;
          v92[5] = v93;
          v92[6] = v211;
          v94 = v206;
          *v92 = v205;
          v92[1] = v94;
          v95 = v208;
          v92[2] = v207;
          v92[3] = v95;
          v96 = v155;
          sub_100021A84(v91, v155, &qword_1001766E8, &qword_10011EB40);
          sub_100007BA4(v96, v166, &qword_1001766E8, &qword_10011EB40);
          swift_storeEnumTagMultiPayload();
          sub_1000C7F9C(&qword_100176820, &qword_100176700, &qword_10011EB58, sub_1000C7F6C);
          sub_1000C80D8();
          v97 = v167;
          _ConditionalContent<>.init(storage:)();
          sub_1000C7A04();
          sub_1000C7EB4();
          v98 = v195;
          sub_1000ACC10(v97, v194, v196);
          sub_1000159AC(v97, &qword_1001766F8, &qword_10011EB50);
          sub_1000C7978();
          sub_1000C7DFC();
          v99 = v199;
          sub_1000ACB18(v98, v202);
          sub_1000159AC(v98, &qword_100176720, &qword_10011EB78);
          sub_1000159AC(v96, &qword_1001766E8, &qword_10011EB40);
        }

        else
        {
          v138 = static VerticalAlignment.center.getter();
          v139 = v163;
          *v163 = v138;
          *(v139 + 8) = 0;
          *(v139 + 16) = 1;
          v140 = sub_1000077C8(&qword_100176768, &qword_10011EC68);
          sub_1000C4B40(v75, v139 + *(v140 + 44));
          v141 = static Edge.Set.all.getter();
          EdgeInsets.init(_all:)();
          v142 = v204;
          v143 = v139 + *(v204 + 36);
          *v143 = v141;
          *(v143 + 8) = v144;
          *(v143 + 16) = v145;
          *(v143 + 24) = v146;
          *(v143 + 32) = v147;
          *(v143 + 40) = 0;
          sub_1000C7978();
          sub_1000C7DFC();
          v99 = v199;
          sub_1000ACC10(v139, v202, v142);
          sub_1000159AC(v139, &qword_100176728, &qword_10011EB80);
        }
      }

      else
      {
        v121 = v161;
        (*(v84 + 32))(v161, v83, v85);
        v122 = v162;
        sub_1000B3AD8(v162);
        sub_100007BA4(v122, v166, &qword_100176700, &qword_10011EB58);
        swift_storeEnumTagMultiPayload();
        sub_1000C7F9C(&qword_100176820, &qword_100176700, &qword_10011EB58, sub_1000C7F6C);
        sub_1000C80D8();
        v123 = v167;
        _ConditionalContent<>.init(storage:)();
        sub_1000C7A04();
        sub_1000C7EB4();
        v124 = v195;
        sub_1000ACC10(v123, v194, v196);
        sub_1000159AC(v123, &qword_1001766F8, &qword_10011EB50);
        sub_1000C7978();
        sub_1000C7DFC();
        v99 = v199;
        sub_1000ACB18(v124, v202);
        sub_1000159AC(v124, &qword_100176720, &qword_10011EB78);
        sub_1000159AC(v122, &qword_100176700, &qword_10011EB58);
        (*(v84 + 8))(v121, v85);
      }
    }

    else
    {
      v111 = v169;
      (*(v81 + 32))(v169, v77, v50);
      v112 = v183;
      sub_1000AECC0(v183);
      sub_100007BA4(v112, v192, &qword_100176750, &unk_10011EBB0);
      swift_storeEnumTagMultiPayload();
      sub_1000C7ABC();
      sub_1000C7F9C(&qword_100176790, &qword_100176750, &unk_10011EBB0, sub_1000C7C2C);
      v113 = v193;
      _ConditionalContent<>.init(storage:)();
      sub_1000C7A04();
      sub_1000C7EB4();
      v114 = v195;
      sub_1000ACB18(v113, v194);
      sub_1000159AC(v113, &qword_100176718, &qword_10011EB70);
      sub_1000C7978();
      sub_1000C7DFC();
      v99 = v199;
      sub_1000ACB18(v114, v202);
      sub_1000159AC(v114, &qword_100176720, &qword_10011EB78);
      sub_1000159AC(v112, &qword_100176750, &unk_10011EBB0);
      (*(v81 + 8))(v111, v50);
    }
  }

  else
  {
    v100 = v197;
    (*(v62 + 32))(v68, v60, v73);
    (*(v62 + 16))(v65, v68, v73);
    v101 = (*(v62 + 88))(v65, v73);
    v102 = v65;
    v149 = v68;
    v156 = v73;
    if (v101 == enum case for SFAirDropSend.Transfer.State.waitingForShareContactPermissionResponse(_:))
    {
      (*(v62 + 96))(v65, v73);
      v103 = sub_1000077C8(&qword_100175010, &qword_10011C618);
      v104 = *(v100 + 32);
      v105 = &v65[*(v103 + 48)];
      v148 = v50;
      v104(v180, v105, v50);
      v106 = v183;
      sub_1000AECC0(v183);
      sub_100007BA4(v106, v177, &qword_100176750, &unk_10011EBB0);
      swift_storeEnumTagMultiPayload();
      sub_1000C7F9C(&qword_100176790, &qword_100176750, &unk_10011EBB0, sub_1000C7C2C);
      sub_1000C7F9C(&qword_1001767C8, &qword_100176730, &unk_10011EB88, sub_1000C7D14);
      v107 = v178;
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v107, v187, &qword_100176748, &qword_10011EBA8);
      swift_storeEnumTagMultiPayload();
      sub_1000C7B48();
      sub_1000C7DFC();
      v108 = v189;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v107, &qword_100176748, &qword_10011EBA8);
      sub_1000159AC(v106, &qword_100176750, &unk_10011EBB0);
      v109 = v108;
      (*(v100 + 8))(v180, v148);
      v110 = type metadata accessor for SFAirDrop.ContactInfo();
      (*(*(v110 - 8) + 8))(v65, v110);
    }

    else
    {
      v115 = v204;
      if (v101 == enum case for SFAirDropSend.Transfer.State.waitingForImportContactResponse(_:))
      {
        (*(v62 + 96))(v65, v73);
        v116 = sub_1000077C8(&qword_100175000, &unk_10011ECC0);
        v117 = v157;
        (*(v157 + 32))(v170, &v65[*(v116 + 48)], v171);
        v118 = v158;
        sub_1000B13CC(v158);
        sub_100007BA4(v118, v177, &qword_100176730, &unk_10011EB88);
        swift_storeEnumTagMultiPayload();
        sub_1000C7F9C(&qword_100176790, &qword_100176750, &unk_10011EBB0, sub_1000C7C2C);
        sub_1000C7F9C(&qword_1001767C8, &qword_100176730, &unk_10011EB88, sub_1000C7D14);
        v119 = v178;
        _ConditionalContent<>.init(storage:)();
        sub_100007BA4(v119, v187, &qword_100176748, &qword_10011EBA8);
        swift_storeEnumTagMultiPayload();
        sub_1000C7B48();
        sub_1000C7DFC();
        v109 = v189;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v119, &qword_100176748, &qword_10011EBA8);
        sub_1000159AC(v118, &qword_100176730, &unk_10011EB88);
        (*(v117 + 8))(v170, v171);
        v120 = type metadata accessor for SFAirDrop.ContactInfo();
        (*(*(v120 - 8) + 8))(v102, v120);
      }

      else
      {
        v125 = static VerticalAlignment.center.getter();
        v126 = v163;
        *v163 = v125;
        *(v126 + 8) = 0;
        *(v126 + 16) = 1;
        v127 = sub_1000077C8(&qword_100176768, &qword_10011EC68);
        sub_1000C4B40(v1, v126 + *(v127 + 44));
        v128 = static Edge.Set.all.getter();
        EdgeInsets.init(_all:)();
        v129 = v126 + *(v115 + 36);
        *v129 = v128;
        *(v129 + 8) = v130;
        *(v129 + 16) = v131;
        *(v129 + 24) = v132;
        *(v129 + 32) = v133;
        *(v129 + 40) = 0;
        sub_100007BA4(v126, v187, &qword_100176728, &qword_10011EB80);
        swift_storeEnumTagMultiPayload();
        sub_1000C7B48();
        sub_1000C7DFC();
        v109 = v189;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v126, &qword_100176728, &qword_10011EB80);
        (*(v74 + 8))(v65, v156);
      }
    }

    v99 = v199;
    sub_100007BA4(v109, v192, &qword_100176758, &unk_10011EBC0);
    swift_storeEnumTagMultiPayload();
    sub_1000C7ABC();
    sub_1000C7F9C(&qword_100176790, &qword_100176750, &unk_10011EBB0, sub_1000C7C2C);
    v134 = v109;
    v135 = v193;
    _ConditionalContent<>.init(storage:)();
    sub_1000C7A04();
    sub_1000C7EB4();
    v136 = v195;
    sub_1000ACB18(v135, v194);
    sub_1000159AC(v135, &qword_100176718, &qword_10011EB70);
    sub_1000C7978();
    sub_1000C7DFC();
    sub_1000ACB18(v136, v202);
    sub_1000159AC(v136, &qword_100176720, &qword_10011EB78);
    sub_1000159AC(v134, &qword_100176758, &unk_10011EBC0);
    (*(v74 + 8))(v149, v156);
  }

  sub_1000C8190();
  (*(v200 + 16))(v203, v99, v201);
  return sub_1000159AC(v99, &qword_100176760, &qword_10011EBD0);
}

uint64_t sub_1000AECC0@<X0>(uint64_t a1@<X8>)
{
  v307 = a1;
  v305 = sub_1000077C8(&qword_100176B38, &qword_10011F098);
  v1 = *(*(v305 - 8) + 64);
  __chkstk_darwin(v305);
  v306 = &v237 - v2;
  v291 = sub_1000077C8(&qword_100176B40, &qword_10011F0A0);
  v3 = *(*(v291 - 8) + 64);
  __chkstk_darwin(v291);
  v292 = &v237 - v4;
  v304 = sub_1000077C8(&qword_1001767A0, &qword_10011EC70);
  v5 = *(*(v304 - 8) + 64);
  __chkstk_darwin(v304);
  v293 = &v237 - v6;
  v281 = sub_1000077C8(&qword_100176B48, &qword_10011F0A8);
  v7 = *(*(v281 - 8) + 64);
  __chkstk_darwin(v281);
  v264 = (&v237 - v8);
  v300 = sub_1000077C8(&qword_100176888, &qword_10011ECE8);
  v9 = *(*(v300 - 8) + 64);
  __chkstk_darwin(v300);
  v288 = (&v237 - v10);
  v11 = sub_1000077C8(&qword_100176B50, &qword_10011F0B0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v274 = (&v237 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v255 = (&v237 - v15);
  __chkstk_darwin(v16);
  v269 = (&v237 - v17);
  v287 = sub_1000077C8(&qword_100176B58, &qword_10011F0B8);
  v18 = *(*(v287 - 8) + 64);
  __chkstk_darwin(v287);
  v289 = &v237 - v19;
  v285 = sub_1000077C8(&qword_100176B60, &qword_10011F0C0);
  v20 = *(*(v285 - 8) + 64);
  __chkstk_darwin(v285);
  v286 = &v237 - v21;
  v273 = sub_1000077C8(&qword_100176B68, &qword_10011F0C8);
  v22 = *(*(v273 - 8) + 64);
  __chkstk_darwin(v273);
  v280 = &v237 - v23;
  v279 = sub_1000077C8(&qword_100176B70, &qword_10011F0D0);
  v24 = *(*(v279 - 8) + 64);
  __chkstk_darwin(v279);
  v251 = &v237 - v25;
  v302 = sub_1000077C8(&qword_100176B78, &qword_10011F0D8);
  v309 = *(v302 - 8);
  v26 = *(v309 + 64);
  __chkstk_darwin(v302);
  v277 = &v237 - v27;
  v299 = type metadata accessor for DeviceLockState();
  v308 = *(v299 - 8);
  v28 = *(v308 + 64);
  __chkstk_darwin(v299);
  v297 = &v237 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v298 = &v237 - v31;
  v32 = sub_1000077C8(&qword_100176B80, &qword_10011F0E0);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v263 = &v237 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v262 = &v237 - v36;
  __chkstk_darwin(v37);
  v39 = &v237 - v38;
  __chkstk_darwin(v40);
  v303 = &v237 - v41;
  __chkstk_darwin(v42);
  v253 = &v237 - v43;
  v294 = sub_1000077C8(&qword_1001768C8, &qword_10011ED28);
  v44 = *(*(v294 - 8) + 64);
  __chkstk_darwin(v294);
  v296 = &v237 - v45;
  v295 = sub_1000077C8(&qword_1001768D0, &qword_10011ED30);
  v46 = *(*(v295 - 8) + 64);
  __chkstk_darwin(v295);
  v48 = &v237 - v47;
  v49 = sub_1000077C8(&qword_1001768D8, &qword_10011ED38);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v257 = &v237 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v270 = &v237 - v53;
  __chkstk_darwin(v54);
  v268 = &v237 - v55;
  __chkstk_darwin(v56);
  v301 = &v237 - v57;
  __chkstk_darwin(v58);
  v267 = &v237 - v59;
  v310 = sub_1000077C8(&qword_100176B88, &qword_10011F0E8);
  v60 = *(*(v310 - 8) + 64);
  __chkstk_darwin(v310);
  v261 = &v237 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v260 = &v237 - v63;
  __chkstk_darwin(v64);
  v259 = &v237 - v65;
  __chkstk_darwin(v66);
  v256 = &v237 - v67;
  __chkstk_darwin(v68);
  v258 = &v237 - v69;
  __chkstk_darwin(v70);
  v254 = &v237 - v71;
  __chkstk_darwin(v72);
  v272 = &v237 - v73;
  __chkstk_darwin(v74);
  v252 = &v237 - v75;
  __chkstk_darwin(v76);
  v271 = &v237 - v77;
  __chkstk_darwin(v78);
  v266 = (&v237 - v79);
  v80 = sub_1000077C8(&qword_100176B90, &qword_10011F0F0);
  v81 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80 - 8);
  v282 = &v237 - v82;
  v83 = sub_1000077C8(&qword_1001767C0, &qword_10011EC80);
  v84 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83 - 8);
  v86 = &v237 - v85;
  v290 = sub_1000077C8(&qword_1001767B0, &qword_10011EC78);
  v87 = *(*(v290 - 8) + 64);
  __chkstk_darwin(v290);
  v283 = &v237 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v284 = &v237 - v90;
  v91 = type metadata accessor for SFAirDrop.DeclineAction();
  v92 = *(v91 - 8);
  v93 = *(v92 + 64);
  __chkstk_darwin(v91);
  v95 = &v237 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1000077C8(&qword_100176B98, &qword_10011F0F8);
  v97 = *(v96 - 8);
  v98 = *(v97 + 64);
  __chkstk_darwin(v96);
  v100 = (&v237 - v99);
  sub_1000077C8(&unk_100174F80, &unk_10011AE60);
  SFAirDrop.PermissionRequest.style.getter();
  v101 = (*(v97 + 88))(v100, v96);
  if (v101 == enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
  {
    v247 = v39;
    (*(v97 + 96))(v100, v96);
    v103 = *v100;
    v102 = v100[1];
    v105 = v100[2];
    v104 = v100[3];
    v275 = v100[4];
    v106 = sub_1000077C8(&qword_100176BB0, &qword_10011F110);
    (*(v92 + 32))(v95, v100 + *(v106 + 80), v91);
    *v86 = static HorizontalAlignment.center.getter();
    *(v86 + 1) = 0;
    v86[16] = 0;
    v107 = type metadata accessor for AirDropAskRequestView();
    _ZF = v311[*(v107 + 24)] == 1;
    v250 = v91;
    v249 = v92;
    v265 = v95;
    v248 = v86;
    v278 = v102;
    v276 = v104;
    if (_ZF)
    {
      v109 = static HorizontalAlignment.leading.getter();
      v110 = v266;
      *v266 = v109;
      v110[1] = 0x402E000000000000;
      *(v110 + 16) = 0;
      *v48 = static VerticalAlignment.top.getter();
      *(v48 + 1) = 0x4034000000000000;
      v48[16] = 0;
      v111 = sub_1000077C8(&qword_100176998, &qword_10011EDF8);
      v112 = v311;
      sub_1000B7298(v311, v103, v102, v105, v104, &v48[*(v111 + 44)]);
      sub_100007BA4(v48, v296, &qword_1001768D0, &qword_10011ED30);
      swift_storeEnumTagMultiPayload();
      sub_1000C821C();
      sub_1000199C8(&qword_100176938, &qword_100176888, &qword_10011ECE8);
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v48, &qword_1001768D0, &qword_10011ED30);
      v113 = *(v112 + *(v107 + 20) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v114 = v298;
      static Published.subscript.getter();

      v115 = v308;
      v116 = v297;
      v117 = v299;
      (*(v308 + 104))(v297, enum case for DeviceLockState.unlocked(_:), v299);
      LOBYTE(v113) = static DeviceLockState.== infix(_:_:)();
      v118 = *(v115 + 8);
      v118(v116, v117);
      v118(v114, v117);
      if (v113)
      {
        v119 = static Axis.Set.horizontal.getter();
        v120 = v251;
        *v251 = v119;
        v121 = sub_1000077C8(&qword_100176C10, &qword_10011F148);
        sub_1000B66BC(v311, v275, v95, v120 + *(v121 + 44));
        sub_100007BA4(v120, v280, &qword_100176B70, &qword_10011F0D0);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176C00, &qword_100176B70, &qword_10011F0D0);
        sub_1000199C8(&qword_100176C08, &qword_100176B48, &qword_10011F0A8);
        v122 = v277;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v120, &qword_100176B70, &qword_10011F0D0);
        v123 = v253;
        sub_100021A84(v122, v253, &qword_100176B78, &qword_10011F0D8);
        v124 = 0;
        v125 = v303;
        v126 = v309;
      }

      else
      {
        v124 = 1;
        v125 = v303;
        v126 = v309;
        v123 = v253;
      }

      (*(v126 + 56))(v123, v124, 1, v302);
      v220 = sub_1000077C8(&qword_100176BB8, &qword_10011F118);
      v221 = v266;
      v222 = v266 + *(v220 + 44);
      v223 = v267;
      v224 = v301;
      sub_100007BA4(v267, v301, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v123, v125, &qword_100176B80, &qword_10011F0E0);
      sub_100007BA4(v224, v222, &qword_1001768D8, &qword_10011ED38);
      v225 = sub_1000077C8(&qword_100176BC0, &qword_10011F120);
      sub_100007BA4(v125, v222 + *(v225 + 48), &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v123, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v223, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v125, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v224, &qword_1001768D8, &qword_10011ED38);
      v226 = static Edge.Set.all.getter();
      v227 = v221 + *(v310 + 36);
      *v227 = v226;
      *(v227 + 8) = xmmword_10011EA80;
      *(v227 + 24) = xmmword_10011EA90;
      v227[40] = 0;
      sub_100007BA4(v221, v286, &qword_100176B88, &qword_10011F0E8);
      swift_storeEnumTagMultiPayload();
      sub_1000C8FC8();
      sub_1000199C8(&qword_100176BE8, &qword_100176B58, &qword_10011F0B8);
      v219 = v282;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v221, &qword_100176B88, &qword_10011F0E8);
    }

    else
    {
      *v289 = static Axis.Set.vertical.getter();
      v132 = static HorizontalAlignment.leading.getter();
      v133 = v269;
      *v269 = v132;
      v133[1] = 0x4030000000000000;
      *(v133 + 16) = 0;
      v134 = static VerticalAlignment.top.getter();
      v135 = v288;
      *v288 = v134;
      *(v135 + 8) = 0x4034000000000000;
      *(v135 + 16) = 0;
      v253 = sub_1000077C8(&qword_100176910, &qword_10011ED70);
      v136 = v135 + *(v253 + 44);
      v137 = v311;
      v267 = v103;
      v266 = v105;
      sub_1000B6928(v311, v103, v102, v105, v104, v136);
      sub_100007BA4(v135, v296, &qword_100176888, &qword_10011ECE8);
      v138 = 1;
      swift_storeEnumTagMultiPayload();
      v139 = sub_1000C821C();
      v140 = sub_1000199C8(&qword_100176938, &qword_100176888, &qword_10011ECE8);
      v251 = v139;
      v245 = v140;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v135, &qword_100176888, &qword_10011ECE8);
      v141 = *(v137 + *(v107 + 20) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v142 = v298;
      v246 = v141;
      static Published.subscript.getter();

      v143 = v308;
      v144 = *(v308 + 104);
      v145 = v297;
      v244 = enum case for DeviceLockState.unlocked(_:);
      v146 = v299;
      v243 = v308 + 104;
      v242 = v144;
      v144(v297);
      v147 = static DeviceLockState.== infix(_:_:)();
      v148 = *(v143 + 8);
      v148(v145, v146);
      v308 = v143 + 8;
      v241 = v148;
      v148(v142, v146);
      v149 = v247;
      if (v147)
      {
        v150 = static VerticalAlignment.center.getter();
        v151 = v264;
        *v264 = v150;
        *(v151 + 8) = 0x4024000000000000;
        *(v151 + 16) = 0;
        v152 = sub_1000077C8(&qword_100176BF8, &qword_10011F140);
        sub_1000B94F4(v265, v311, v275, v151 + *(v152 + 44));
        sub_100007BA4(v151, v280, &qword_100176B48, &qword_10011F0A8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176C00, &qword_100176B70, &qword_10011F0D0);
        sub_1000199C8(&qword_100176C08, &qword_100176B48, &qword_10011F0A8);
        v153 = v277;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v151, &qword_100176B48, &qword_10011F0A8);
        sub_100021A84(v153, v149, &qword_100176B78, &qword_10011F0D8);
        v138 = 0;
      }

      v240 = *(v309 + 56);
      v309 += 56;
      v240(v149, v138, 1, v302);
      v239 = sub_1000077C8(&qword_100176BB8, &qword_10011F118);
      v154 = v269;
      v155 = v269 + *(v239 + 44);
      v156 = v268;
      v157 = v301;
      sub_100007BA4(v268, v301, &qword_1001768D8, &qword_10011ED38);
      v158 = v303;
      sub_100007BA4(v149, v303, &qword_100176B80, &qword_10011F0E0);
      sub_100007BA4(v157, v155, &qword_1001768D8, &qword_10011ED38);
      v238 = sub_1000077C8(&qword_100176BC0, &qword_10011F120);
      sub_100007BA4(v158, v155 + *(v238 + 48), &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v149, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v156, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v158, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v157, &qword_1001768D8, &qword_10011ED38);
      v159 = static Edge.Set.all.getter();
      v160 = v252;
      sub_100021A84(v154, v252, &qword_100176B50, &qword_10011F0B0);
      v161 = v160 + *(v310 + 36);
      *v161 = v159;
      __asm { FMOV            V0.2D, #16.0 }

      *(v161 + 8) = _Q0;
      *(v161 + 24) = _Q0;
      *(v161 + 40) = 0;
      sub_100021A84(v160, v271, &qword_100176B88, &qword_10011F0E8);
      v166 = static HorizontalAlignment.leading.getter();
      v167 = v255;
      *v255 = v166;
      *(v167 + 8) = 0x4026000000000000;
      *(v167 + 16) = 0;
      v168 = static VerticalAlignment.top.getter();
      v169 = v288;
      *v288 = v168;
      *(v169 + 8) = 0x4034000000000000;
      *(v169 + 16) = 0;
      sub_1000B6928(v311, v267, v278, v266, v276, v169 + *(v253 + 44));
      sub_100007BA4(v169, v296, &qword_100176888, &qword_10011ECE8);
      swift_storeEnumTagMultiPayload();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v169, &qword_100176888, &qword_10011ECE8);
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v298;
      static Published.subscript.getter();

      v171 = v297;
      v172 = v299;
      v242(v297, v244, v299);
      v173 = static DeviceLockState.== infix(_:_:)();
      v174 = v241;
      v241(v171, v172);
      v174(v170, v172);
      v175 = 1;
      if (v173)
      {
        v176 = static VerticalAlignment.center.getter();
        v177 = v264;
        *v264 = v176;
        *(v177 + 8) = 0x4024000000000000;
        *(v177 + 16) = 0;
        v178 = sub_1000077C8(&qword_100176BF8, &qword_10011F140);
        sub_1000B94F4(v265, v311, v275, v177 + *(v178 + 44));
        sub_100007BA4(v177, v280, &qword_100176B48, &qword_10011F0A8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176C00, &qword_100176B70, &qword_10011F0D0);
        sub_1000199C8(&qword_100176C08, &qword_100176B48, &qword_10011F0A8);
        v179 = v277;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v177, &qword_100176B48, &qword_10011F0A8);
        sub_100021A84(v179, v262, &qword_100176B78, &qword_10011F0D8);
        v175 = 0;
      }

      v180 = v262;
      v240(v262, v175, 1, v302);
      v181 = v167 + *(v239 + 44);
      v182 = v270;
      v183 = v301;
      sub_100007BA4(v270, v301, &qword_1001768D8, &qword_10011ED38);
      v184 = v303;
      sub_100007BA4(v180, v303, &qword_100176B80, &qword_10011F0E0);
      sub_100007BA4(v183, v181, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v184, v181 + *(v238 + 48), &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v180, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v182, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v184, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v183, &qword_1001768D8, &qword_10011ED38);
      LOBYTE(v181) = static Edge.Set.all.getter();
      v185 = v254;
      sub_100021A84(v167, v254, &qword_100176B50, &qword_10011F0B0);
      v186 = v185 + *(v310 + 36);
      *v186 = v181;
      *(v186 + 8) = xmmword_10011EA60;
      *(v186 + 24) = xmmword_10011EA60;
      *(v186 + 40) = 0;
      sub_100021A84(v185, v272, &qword_100176B88, &qword_10011F0E8);
      v187 = static HorizontalAlignment.leading.getter();
      v188 = v274;
      *v274 = v187;
      v188[1] = 0x4020000000000000;
      *(v188 + 16) = 0;
      v189 = static VerticalAlignment.top.getter();
      v190 = v288;
      *v288 = v189;
      *(v190 + 8) = 0x4034000000000000;
      *(v190 + 16) = 0;
      sub_1000B6928(v311, v267, v278, v266, v276, v190 + *(v253 + 44));
      sub_100007BA4(v190, v296, &qword_100176888, &qword_10011ECE8);
      swift_storeEnumTagMultiPayload();
      v191 = v257;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v190, &qword_100176888, &qword_10011ECE8);
      swift_getKeyPath();
      swift_getKeyPath();
      v192 = v298;
      static Published.subscript.getter();

      v193 = v297;
      v194 = v299;
      v242(v297, v244, v299);
      LOBYTE(v190) = static DeviceLockState.== infix(_:_:)();
      v195 = v241;
      v241(v193, v194);
      v195(v192, v194);
      v196 = 1;
      if (v190)
      {
        v197 = static VerticalAlignment.center.getter();
        v198 = v264;
        *v264 = v197;
        *(v198 + 8) = 0x4024000000000000;
        *(v198 + 16) = 0;
        v199 = sub_1000077C8(&qword_100176BF8, &qword_10011F140);
        sub_1000B94F4(v265, v311, v275, v198 + *(v199 + 44));
        sub_100007BA4(v198, v280, &qword_100176B48, &qword_10011F0A8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176C00, &qword_100176B70, &qword_10011F0D0);
        sub_1000199C8(&qword_100176C08, &qword_100176B48, &qword_10011F0A8);
        v200 = v277;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v198, &qword_100176B48, &qword_10011F0A8);
        sub_100021A84(v200, v263, &qword_100176B78, &qword_10011F0D8);
        v196 = 0;
      }

      v201 = v263;
      v240(v263, v196, 1, v302);
      v202 = sub_1000077C8(&qword_100176BC8, &qword_10011F128);
      v311 = &v289[*(v202 + 44)];
      v203 = v274;
      v204 = v274 + *(v239 + 44);
      v205 = v301;
      sub_100007BA4(v191, v301, &qword_1001768D8, &qword_10011ED38);
      v206 = v191;
      v207 = v303;
      sub_100007BA4(v201, v303, &qword_100176B80, &qword_10011F0E0);
      sub_100007BA4(v205, v204, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v207, v204 + *(v238 + 48), &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v201, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v206, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v207, &qword_100176B80, &qword_10011F0E0);
      sub_1000159AC(v205, &qword_1001768D8, &qword_10011ED38);
      LOBYTE(v204) = static Edge.Set.all.getter();
      v208 = v256;
      sub_100021A84(v203, v256, &qword_100176B50, &qword_10011F0B0);
      v209 = v208 + *(v310 + 36);
      *v209 = v204;
      *(v209 + 8) = xmmword_10011EA70;
      *(v209 + 24) = xmmword_10011EA70;
      *(v209 + 40) = 0;
      v210 = v258;
      sub_100021A84(v208, v258, &qword_100176B88, &qword_10011F0E8);
      v211 = v271;
      v212 = v259;
      sub_100007BA4(v271, v259, &qword_100176B88, &qword_10011F0E8);
      v213 = v272;
      v214 = v260;
      sub_100007BA4(v272, v260, &qword_100176B88, &qword_10011F0E8);
      v215 = v261;
      sub_100007BA4(v210, v261, &qword_100176B88, &qword_10011F0E8);
      v216 = v311;
      sub_100007BA4(v212, v311, &qword_100176B88, &qword_10011F0E8);
      v217 = sub_1000077C8(&qword_100176BD0, &qword_10011F130);
      sub_100007BA4(v214, v216 + *(v217 + 48), &qword_100176B88, &qword_10011F0E8);
      sub_100007BA4(v215, v216 + *(v217 + 64), &qword_100176B88, &qword_10011F0E8);
      sub_1000159AC(v210, &qword_100176B88, &qword_10011F0E8);
      sub_1000159AC(v213, &qword_100176B88, &qword_10011F0E8);
      sub_1000159AC(v211, &qword_100176B88, &qword_10011F0E8);
      sub_1000159AC(v215, &qword_100176B88, &qword_10011F0E8);
      sub_1000159AC(v214, &qword_100176B88, &qword_10011F0E8);
      sub_1000159AC(v212, &qword_100176B88, &qword_10011F0E8);
      v218 = v289;
      sub_100007BA4(v289, v286, &qword_100176B58, &qword_10011F0B8);
      swift_storeEnumTagMultiPayload();
      sub_1000C8FC8();
      sub_1000199C8(&qword_100176BE8, &qword_100176B58, &qword_10011F0B8);
      v219 = v282;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v218, &qword_100176B58, &qword_10011F0B8);
    }

    v228 = sub_1000077C8(&qword_100176BF0, &qword_10011F138);
    v229 = v248;
    sub_100021A84(v219, &v248[*(v228 + 44)], &qword_100176B90, &qword_10011F0F0);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v230 = v283;
    sub_100021A84(v229, v283, &qword_1001767C0, &qword_10011EC80);
    v231 = (v230 + *(v290 + 36));
    v232 = v317;
    v231[4] = v316;
    v231[5] = v232;
    v231[6] = v318;
    v233 = v313;
    *v231 = v312;
    v231[1] = v233;
    v234 = v315;
    v231[2] = v314;
    v231[3] = v234;
    v235 = v284;
    sub_100021A84(v230, v284, &qword_1001767B0, &qword_10011EC78);
    sub_100007BA4(v235, v292, &qword_1001767B0, &qword_10011EC78);
    swift_storeEnumTagMultiPayload();
    sub_1000C7C5C();
    v236 = v293;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v236, v306, &qword_1001767A0, &qword_10011EC70);
    swift_storeEnumTagMultiPayload();
    sub_1000C7C2C();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v236, &qword_1001767A0, &qword_10011EC70);
    sub_1000159AC(v235, &qword_1001767B0, &qword_10011EC78);
    return (*(v249 + 8))(v265, v250);
  }

  else if (v101 == enum case for SFAirDrop.PermissionRequest.Style.intervention<A>(_:))
  {
    (*(v97 + 96))(v100, v96);
    v127 = *(sub_1000077C8(&qword_100176BA0, &qword_10011F100) + 48);
    swift_storeEnumTagMultiPayload();
    sub_1000C7C5C();
    v128 = v293;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v128, v306, &qword_1001767A0, &qword_10011EC70);
    swift_storeEnumTagMultiPayload();
    sub_1000C7C2C();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v128, &qword_1001767A0, &qword_10011EC70);
    v129 = sub_1000077C8(&qword_100176BA8, &qword_10011F108);
    (*(*(v129 - 8) + 8))(v100 + v127, v129);
    v130 = type metadata accessor for SFInterventionWorkflow();
    return (*(*(v130 - 8) + 8))(v100, v130);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000C7C2C();
    _ConditionalContent<>.init(storage:)();
    return (*(v97 + 8))(v100, v96);
  }
}

uint64_t sub_1000B13CC@<X0>(uint64_t a1@<X8>)
{
  v307 = a1;
  v305 = sub_1000077C8(&qword_100176870, &qword_10011ECD0);
  v1 = *(*(v305 - 8) + 64);
  __chkstk_darwin(v305);
  v306 = &v237 - v2;
  v291 = sub_1000077C8(&qword_100176878, &qword_10011ECD8);
  v3 = *(*(v291 - 8) + 64);
  __chkstk_darwin(v291);
  v292 = &v237 - v4;
  v304 = sub_1000077C8(&qword_1001767D8, &qword_10011EC88);
  v5 = *(*(v304 - 8) + 64);
  __chkstk_darwin(v304);
  v293 = &v237 - v6;
  v281 = sub_1000077C8(&qword_100176880, &qword_10011ECE0);
  v7 = *(*(v281 - 8) + 64);
  __chkstk_darwin(v281);
  v264 = (&v237 - v8);
  v300 = sub_1000077C8(&qword_100176888, &qword_10011ECE8);
  v9 = *(*(v300 - 8) + 64);
  __chkstk_darwin(v300);
  v288 = (&v237 - v10);
  v11 = sub_1000077C8(&qword_100176890, &qword_10011ECF0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v274 = (&v237 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v255 = (&v237 - v15);
  __chkstk_darwin(v16);
  v269 = (&v237 - v17);
  v287 = sub_1000077C8(&qword_100176898, &qword_10011ECF8);
  v18 = *(*(v287 - 8) + 64);
  __chkstk_darwin(v287);
  v289 = &v237 - v19;
  v285 = sub_1000077C8(&qword_1001768A0, &qword_10011ED00);
  v20 = *(*(v285 - 8) + 64);
  __chkstk_darwin(v285);
  v286 = &v237 - v21;
  v273 = sub_1000077C8(&qword_1001768A8, &qword_10011ED08);
  v22 = *(*(v273 - 8) + 64);
  __chkstk_darwin(v273);
  v280 = &v237 - v23;
  v279 = sub_1000077C8(&qword_1001768B0, &qword_10011ED10);
  v24 = *(*(v279 - 8) + 64);
  __chkstk_darwin(v279);
  v251 = &v237 - v25;
  v302 = sub_1000077C8(&qword_1001768B8, &qword_10011ED18);
  v309 = *(v302 - 8);
  v26 = *(v309 + 64);
  __chkstk_darwin(v302);
  v277 = &v237 - v27;
  v299 = type metadata accessor for DeviceLockState();
  v308 = *(v299 - 8);
  v28 = *(v308 + 64);
  __chkstk_darwin(v299);
  v297 = &v237 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v298 = &v237 - v31;
  v32 = sub_1000077C8(&qword_1001768C0, &qword_10011ED20);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v263 = &v237 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v262 = &v237 - v36;
  __chkstk_darwin(v37);
  v39 = &v237 - v38;
  __chkstk_darwin(v40);
  v303 = &v237 - v41;
  __chkstk_darwin(v42);
  v253 = &v237 - v43;
  v294 = sub_1000077C8(&qword_1001768C8, &qword_10011ED28);
  v44 = *(*(v294 - 8) + 64);
  __chkstk_darwin(v294);
  v296 = &v237 - v45;
  v295 = sub_1000077C8(&qword_1001768D0, &qword_10011ED30);
  v46 = *(*(v295 - 8) + 64);
  __chkstk_darwin(v295);
  v48 = &v237 - v47;
  v49 = sub_1000077C8(&qword_1001768D8, &qword_10011ED38);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v257 = &v237 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v270 = &v237 - v53;
  __chkstk_darwin(v54);
  v268 = &v237 - v55;
  __chkstk_darwin(v56);
  v301 = &v237 - v57;
  __chkstk_darwin(v58);
  v267 = &v237 - v59;
  v310 = sub_1000077C8(&qword_1001768E0, &qword_10011ED40);
  v60 = *(*(v310 - 8) + 64);
  __chkstk_darwin(v310);
  v261 = &v237 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v260 = &v237 - v63;
  __chkstk_darwin(v64);
  v259 = &v237 - v65;
  __chkstk_darwin(v66);
  v256 = &v237 - v67;
  __chkstk_darwin(v68);
  v258 = &v237 - v69;
  __chkstk_darwin(v70);
  v254 = &v237 - v71;
  __chkstk_darwin(v72);
  v272 = &v237 - v73;
  __chkstk_darwin(v74);
  v252 = &v237 - v75;
  __chkstk_darwin(v76);
  v271 = &v237 - v77;
  __chkstk_darwin(v78);
  v266 = (&v237 - v79);
  v80 = sub_1000077C8(&qword_1001768E8, &qword_10011ED48);
  v81 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80 - 8);
  v282 = &v237 - v82;
  v83 = sub_1000077C8(&qword_1001767F8, &qword_10011EC98);
  v84 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83 - 8);
  v86 = &v237 - v85;
  v290 = sub_1000077C8(&qword_1001767E8, &qword_10011EC90);
  v87 = *(*(v290 - 8) + 64);
  __chkstk_darwin(v290);
  v283 = &v237 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v284 = &v237 - v90;
  v91 = type metadata accessor for SFAirDrop.DeclineAction();
  v92 = *(v91 - 8);
  v93 = *(v92 + 64);
  __chkstk_darwin(v91);
  v95 = &v237 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1000077C8(&qword_1001768F0, &qword_10011ED50);
  v97 = *(v96 - 8);
  v98 = *(v97 + 64);
  __chkstk_darwin(v96);
  v100 = (&v237 - v99);
  sub_1000077C8(&qword_100175008, &qword_10011C610);
  SFAirDrop.PermissionRequest.style.getter();
  v101 = (*(v97 + 88))(v100, v96);
  if (v101 == enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
  {
    v247 = v39;
    (*(v97 + 96))(v100, v96);
    v103 = *v100;
    v102 = v100[1];
    v105 = v100[2];
    v104 = v100[3];
    v275 = v100[4];
    v106 = sub_1000077C8(&qword_100176908, &qword_10011ED68);
    (*(v92 + 32))(v95, v100 + *(v106 + 80), v91);
    *v86 = static HorizontalAlignment.center.getter();
    *(v86 + 1) = 0;
    v86[16] = 0;
    v107 = type metadata accessor for AirDropAskRequestView();
    _ZF = v311[*(v107 + 24)] == 1;
    v250 = v91;
    v249 = v92;
    v265 = v95;
    v248 = v86;
    v278 = v102;
    v276 = v104;
    if (_ZF)
    {
      v109 = static HorizontalAlignment.leading.getter();
      v110 = v266;
      *v266 = v109;
      v110[1] = 0x402E000000000000;
      *(v110 + 16) = 0;
      *v48 = static VerticalAlignment.top.getter();
      *(v48 + 1) = 0x4034000000000000;
      v48[16] = 0;
      v111 = sub_1000077C8(&qword_100176998, &qword_10011EDF8);
      v112 = v311;
      sub_1000B7298(v311, v103, v102, v105, v104, &v48[*(v111 + 44)]);
      sub_100007BA4(v48, v296, &qword_1001768D0, &qword_10011ED30);
      swift_storeEnumTagMultiPayload();
      sub_1000C821C();
      sub_1000199C8(&qword_100176938, &qword_100176888, &qword_10011ECE8);
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v48, &qword_1001768D0, &qword_10011ED30);
      v113 = *(v112 + *(v107 + 20) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v114 = v298;
      static Published.subscript.getter();

      v115 = v308;
      v116 = v297;
      v117 = v299;
      (*(v308 + 104))(v297, enum case for DeviceLockState.unlocked(_:), v299);
      LOBYTE(v113) = static DeviceLockState.== infix(_:_:)();
      v118 = *(v115 + 8);
      v118(v116, v117);
      v118(v114, v117);
      if (v113)
      {
        v119 = static Axis.Set.horizontal.getter();
        v120 = v251;
        *v251 = v119;
        v121 = sub_1000077C8(&qword_1001769A0, &qword_10011EE00);
        sub_1000B6450(v311, v275, v95, v120 + *(v121 + 44));
        sub_100007BA4(v120, v280, &qword_1001768B0, &qword_10011ED10);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176988, &qword_1001768B0, &qword_10011ED10);
        sub_1000199C8(&qword_100176990, &qword_100176880, &qword_10011ECE0);
        v122 = v277;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v120, &qword_1001768B0, &qword_10011ED10);
        v123 = v253;
        sub_100021A84(v122, v253, &qword_1001768B8, &qword_10011ED18);
        v124 = 0;
        v125 = v303;
        v126 = v309;
      }

      else
      {
        v124 = 1;
        v125 = v303;
        v126 = v309;
        v123 = v253;
      }

      (*(v126 + 56))(v123, v124, 1, v302);
      v220 = sub_1000077C8(&qword_100176940, &qword_10011EDC8);
      v221 = v266;
      v222 = v266 + *(v220 + 44);
      v223 = v267;
      v224 = v301;
      sub_100007BA4(v267, v301, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v123, v125, &qword_1001768C0, &qword_10011ED20);
      sub_100007BA4(v224, v222, &qword_1001768D8, &qword_10011ED38);
      v225 = sub_1000077C8(&qword_100176948, &qword_10011EDD0);
      sub_100007BA4(v125, v222 + *(v225 + 48), &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v123, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v223, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v125, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v224, &qword_1001768D8, &qword_10011ED38);
      v226 = static Edge.Set.all.getter();
      v227 = v221 + *(v310 + 36);
      *v227 = v226;
      *(v227 + 8) = xmmword_10011EA80;
      *(v227 + 24) = xmmword_10011EA90;
      v227[40] = 0;
      sub_100007BA4(v221, v286, &qword_1001768E0, &qword_10011ED40);
      swift_storeEnumTagMultiPayload();
      sub_1000C8330();
      sub_1000199C8(&qword_100176970, &qword_100176898, &qword_10011ECF8);
      v219 = v282;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v221, &qword_1001768E0, &qword_10011ED40);
    }

    else
    {
      *v289 = static Axis.Set.vertical.getter();
      v132 = static HorizontalAlignment.leading.getter();
      v133 = v269;
      *v269 = v132;
      v133[1] = 0x4030000000000000;
      *(v133 + 16) = 0;
      v134 = static VerticalAlignment.top.getter();
      v135 = v288;
      *v288 = v134;
      *(v135 + 8) = 0x4034000000000000;
      *(v135 + 16) = 0;
      v253 = sub_1000077C8(&qword_100176910, &qword_10011ED70);
      v136 = v135 + *(v253 + 44);
      v137 = v311;
      v267 = v103;
      v266 = v105;
      sub_1000B6928(v311, v103, v102, v105, v104, v136);
      sub_100007BA4(v135, v296, &qword_100176888, &qword_10011ECE8);
      v138 = 1;
      swift_storeEnumTagMultiPayload();
      v139 = sub_1000C821C();
      v140 = sub_1000199C8(&qword_100176938, &qword_100176888, &qword_10011ECE8);
      v251 = v139;
      v245 = v140;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v135, &qword_100176888, &qword_10011ECE8);
      v141 = *(v137 + *(v107 + 20) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v142 = v298;
      v246 = v141;
      static Published.subscript.getter();

      v143 = v308;
      v144 = *(v308 + 104);
      v145 = v297;
      v244 = enum case for DeviceLockState.unlocked(_:);
      v146 = v299;
      v243 = v308 + 104;
      v242 = v144;
      v144(v297);
      v147 = static DeviceLockState.== infix(_:_:)();
      v148 = *(v143 + 8);
      v148(v145, v146);
      v308 = v143 + 8;
      v241 = v148;
      v148(v142, v146);
      v149 = v247;
      if (v147)
      {
        v150 = static VerticalAlignment.center.getter();
        v151 = v264;
        *v264 = v150;
        *(v151 + 8) = 0x4024000000000000;
        *(v151 + 16) = 0;
        v152 = sub_1000077C8(&qword_100176980, &qword_10011EDF0);
        sub_1000B8974(v265, v311, v275, v151 + *(v152 + 44));
        sub_100007BA4(v151, v280, &qword_100176880, &qword_10011ECE0);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176988, &qword_1001768B0, &qword_10011ED10);
        sub_1000199C8(&qword_100176990, &qword_100176880, &qword_10011ECE0);
        v153 = v277;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v151, &qword_100176880, &qword_10011ECE0);
        sub_100021A84(v153, v149, &qword_1001768B8, &qword_10011ED18);
        v138 = 0;
      }

      v240 = *(v309 + 56);
      v309 += 56;
      v240(v149, v138, 1, v302);
      v239 = sub_1000077C8(&qword_100176940, &qword_10011EDC8);
      v154 = v269;
      v155 = v269 + *(v239 + 44);
      v156 = v268;
      v157 = v301;
      sub_100007BA4(v268, v301, &qword_1001768D8, &qword_10011ED38);
      v158 = v303;
      sub_100007BA4(v149, v303, &qword_1001768C0, &qword_10011ED20);
      sub_100007BA4(v157, v155, &qword_1001768D8, &qword_10011ED38);
      v238 = sub_1000077C8(&qword_100176948, &qword_10011EDD0);
      sub_100007BA4(v158, v155 + *(v238 + 48), &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v149, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v156, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v158, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v157, &qword_1001768D8, &qword_10011ED38);
      v159 = static Edge.Set.all.getter();
      v160 = v252;
      sub_100021A84(v154, v252, &qword_100176890, &qword_10011ECF0);
      v161 = v160 + *(v310 + 36);
      *v161 = v159;
      __asm { FMOV            V0.2D, #16.0 }

      *(v161 + 8) = _Q0;
      *(v161 + 24) = _Q0;
      *(v161 + 40) = 0;
      sub_100021A84(v160, v271, &qword_1001768E0, &qword_10011ED40);
      v166 = static HorizontalAlignment.leading.getter();
      v167 = v255;
      *v255 = v166;
      *(v167 + 8) = 0x4026000000000000;
      *(v167 + 16) = 0;
      v168 = static VerticalAlignment.top.getter();
      v169 = v288;
      *v288 = v168;
      *(v169 + 8) = 0x4034000000000000;
      *(v169 + 16) = 0;
      sub_1000B6928(v311, v267, v278, v266, v276, v169 + *(v253 + 44));
      sub_100007BA4(v169, v296, &qword_100176888, &qword_10011ECE8);
      swift_storeEnumTagMultiPayload();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v169, &qword_100176888, &qword_10011ECE8);
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v298;
      static Published.subscript.getter();

      v171 = v297;
      v172 = v299;
      v242(v297, v244, v299);
      v173 = static DeviceLockState.== infix(_:_:)();
      v174 = v241;
      v241(v171, v172);
      v174(v170, v172);
      v175 = 1;
      if (v173)
      {
        v176 = static VerticalAlignment.center.getter();
        v177 = v264;
        *v264 = v176;
        *(v177 + 8) = 0x4024000000000000;
        *(v177 + 16) = 0;
        v178 = sub_1000077C8(&qword_100176980, &qword_10011EDF0);
        sub_1000B8974(v265, v311, v275, v177 + *(v178 + 44));
        sub_100007BA4(v177, v280, &qword_100176880, &qword_10011ECE0);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176988, &qword_1001768B0, &qword_10011ED10);
        sub_1000199C8(&qword_100176990, &qword_100176880, &qword_10011ECE0);
        v179 = v277;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v177, &qword_100176880, &qword_10011ECE0);
        sub_100021A84(v179, v262, &qword_1001768B8, &qword_10011ED18);
        v175 = 0;
      }

      v180 = v262;
      v240(v262, v175, 1, v302);
      v181 = v167 + *(v239 + 44);
      v182 = v270;
      v183 = v301;
      sub_100007BA4(v270, v301, &qword_1001768D8, &qword_10011ED38);
      v184 = v303;
      sub_100007BA4(v180, v303, &qword_1001768C0, &qword_10011ED20);
      sub_100007BA4(v183, v181, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v184, v181 + *(v238 + 48), &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v180, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v182, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v184, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v183, &qword_1001768D8, &qword_10011ED38);
      LOBYTE(v181) = static Edge.Set.all.getter();
      v185 = v254;
      sub_100021A84(v167, v254, &qword_100176890, &qword_10011ECF0);
      v186 = v185 + *(v310 + 36);
      *v186 = v181;
      *(v186 + 8) = xmmword_10011EA60;
      *(v186 + 24) = xmmword_10011EA60;
      *(v186 + 40) = 0;
      sub_100021A84(v185, v272, &qword_1001768E0, &qword_10011ED40);
      v187 = static HorizontalAlignment.leading.getter();
      v188 = v274;
      *v274 = v187;
      v188[1] = 0x4020000000000000;
      *(v188 + 16) = 0;
      v189 = static VerticalAlignment.top.getter();
      v190 = v288;
      *v288 = v189;
      *(v190 + 8) = 0x4034000000000000;
      *(v190 + 16) = 0;
      sub_1000B6928(v311, v267, v278, v266, v276, v190 + *(v253 + 44));
      sub_100007BA4(v190, v296, &qword_100176888, &qword_10011ECE8);
      swift_storeEnumTagMultiPayload();
      v191 = v257;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v190, &qword_100176888, &qword_10011ECE8);
      swift_getKeyPath();
      swift_getKeyPath();
      v192 = v298;
      static Published.subscript.getter();

      v193 = v297;
      v194 = v299;
      v242(v297, v244, v299);
      LOBYTE(v190) = static DeviceLockState.== infix(_:_:)();
      v195 = v241;
      v241(v193, v194);
      v195(v192, v194);
      v196 = 1;
      if (v190)
      {
        v197 = static VerticalAlignment.center.getter();
        v198 = v264;
        *v264 = v197;
        *(v198 + 8) = 0x4024000000000000;
        *(v198 + 16) = 0;
        v199 = sub_1000077C8(&qword_100176980, &qword_10011EDF0);
        sub_1000B8974(v265, v311, v275, v198 + *(v199 + 44));
        sub_100007BA4(v198, v280, &qword_100176880, &qword_10011ECE0);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176988, &qword_1001768B0, &qword_10011ED10);
        sub_1000199C8(&qword_100176990, &qword_100176880, &qword_10011ECE0);
        v200 = v277;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v198, &qword_100176880, &qword_10011ECE0);
        sub_100021A84(v200, v263, &qword_1001768B8, &qword_10011ED18);
        v196 = 0;
      }

      v201 = v263;
      v240(v263, v196, 1, v302);
      v202 = sub_1000077C8(&qword_100176950, &qword_10011EDD8);
      v311 = &v289[*(v202 + 44)];
      v203 = v274;
      v204 = v274 + *(v239 + 44);
      v205 = v301;
      sub_100007BA4(v191, v301, &qword_1001768D8, &qword_10011ED38);
      v206 = v191;
      v207 = v303;
      sub_100007BA4(v201, v303, &qword_1001768C0, &qword_10011ED20);
      sub_100007BA4(v205, v204, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v207, v204 + *(v238 + 48), &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v201, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v206, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v207, &qword_1001768C0, &qword_10011ED20);
      sub_1000159AC(v205, &qword_1001768D8, &qword_10011ED38);
      LOBYTE(v204) = static Edge.Set.all.getter();
      v208 = v256;
      sub_100021A84(v203, v256, &qword_100176890, &qword_10011ECF0);
      v209 = v208 + *(v310 + 36);
      *v209 = v204;
      *(v209 + 8) = xmmword_10011EA70;
      *(v209 + 24) = xmmword_10011EA70;
      *(v209 + 40) = 0;
      v210 = v258;
      sub_100021A84(v208, v258, &qword_1001768E0, &qword_10011ED40);
      v211 = v271;
      v212 = v259;
      sub_100007BA4(v271, v259, &qword_1001768E0, &qword_10011ED40);
      v213 = v272;
      v214 = v260;
      sub_100007BA4(v272, v260, &qword_1001768E0, &qword_10011ED40);
      v215 = v261;
      sub_100007BA4(v210, v261, &qword_1001768E0, &qword_10011ED40);
      v216 = v311;
      sub_100007BA4(v212, v311, &qword_1001768E0, &qword_10011ED40);
      v217 = sub_1000077C8(&qword_100176958, &qword_10011EDE0);
      sub_100007BA4(v214, v216 + *(v217 + 48), &qword_1001768E0, &qword_10011ED40);
      sub_100007BA4(v215, v216 + *(v217 + 64), &qword_1001768E0, &qword_10011ED40);
      sub_1000159AC(v210, &qword_1001768E0, &qword_10011ED40);
      sub_1000159AC(v213, &qword_1001768E0, &qword_10011ED40);
      sub_1000159AC(v211, &qword_1001768E0, &qword_10011ED40);
      sub_1000159AC(v215, &qword_1001768E0, &qword_10011ED40);
      sub_1000159AC(v214, &qword_1001768E0, &qword_10011ED40);
      sub_1000159AC(v212, &qword_1001768E0, &qword_10011ED40);
      v218 = v289;
      sub_100007BA4(v289, v286, &qword_100176898, &qword_10011ECF8);
      swift_storeEnumTagMultiPayload();
      sub_1000C8330();
      sub_1000199C8(&qword_100176970, &qword_100176898, &qword_10011ECF8);
      v219 = v282;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v218, &qword_100176898, &qword_10011ECF8);
    }

    v228 = sub_1000077C8(&qword_100176978, &qword_10011EDE8);
    v229 = v248;
    sub_100021A84(v219, &v248[*(v228 + 44)], &qword_1001768E8, &qword_10011ED48);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v230 = v283;
    sub_100021A84(v229, v283, &qword_1001767F8, &qword_10011EC98);
    v231 = (v230 + *(v290 + 36));
    v232 = v317;
    v231[4] = v316;
    v231[5] = v232;
    v231[6] = v318;
    v233 = v313;
    *v231 = v312;
    v231[1] = v233;
    v234 = v315;
    v231[2] = v314;
    v231[3] = v234;
    v235 = v284;
    sub_100021A84(v230, v284, &qword_1001767E8, &qword_10011EC90);
    sub_100007BA4(v235, v292, &qword_1001767E8, &qword_10011EC90);
    swift_storeEnumTagMultiPayload();
    sub_1000C7D44();
    v236 = v293;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v236, v306, &qword_1001767D8, &qword_10011EC88);
    swift_storeEnumTagMultiPayload();
    sub_1000C7D14();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v236, &qword_1001767D8, &qword_10011EC88);
    sub_1000159AC(v235, &qword_1001767E8, &qword_10011EC90);
    return (*(v249 + 8))(v265, v250);
  }

  else if (v101 == enum case for SFAirDrop.PermissionRequest.Style.intervention<A>(_:))
  {
    (*(v97 + 96))(v100, v96);
    v127 = *(sub_1000077C8(&qword_1001768F8, &qword_10011ED58) + 48);
    swift_storeEnumTagMultiPayload();
    sub_1000C7D44();
    v128 = v293;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v128, v306, &qword_1001767D8, &qword_10011EC88);
    swift_storeEnumTagMultiPayload();
    sub_1000C7D14();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v128, &qword_1001767D8, &qword_10011EC88);
    v129 = sub_1000077C8(&qword_100176900, &qword_10011ED60);
    (*(*(v129 - 8) + 8))(v100 + v127, v129);
    v130 = type metadata accessor for SFInterventionWorkflow();
    return (*(*(v130 - 8) + 8))(v100, v130);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000C7D14();
    _ConditionalContent<>.init(storage:)();
    return (*(v97 + 8))(v100, v96);
  }
}

uint64_t sub_1000B3AD8@<X0>(uint64_t a1@<X8>)
{
  v307 = a1;
  v305 = sub_1000077C8(&qword_100176CA0, &qword_10011F1E8);
  v1 = *(*(v305 - 8) + 64);
  __chkstk_darwin(v305);
  v306 = &v237 - v2;
  v291 = sub_1000077C8(&qword_100176CA8, &qword_10011F1F0);
  v3 = *(*(v291 - 8) + 64);
  __chkstk_darwin(v291);
  v292 = &v237 - v4;
  v304 = sub_1000077C8(&qword_100176830, &qword_10011ECA8);
  v5 = *(*(v304 - 8) + 64);
  __chkstk_darwin(v304);
  v293 = &v237 - v6;
  v281 = sub_1000077C8(&qword_100176CB0, &qword_10011F1F8);
  v7 = *(*(v281 - 8) + 64);
  __chkstk_darwin(v281);
  v264 = (&v237 - v8);
  v300 = sub_1000077C8(&qword_100176888, &qword_10011ECE8);
  v9 = *(*(v300 - 8) + 64);
  __chkstk_darwin(v300);
  v288 = (&v237 - v10);
  v11 = sub_1000077C8(&qword_100176CB8, &qword_10011F200);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v274 = (&v237 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v255 = (&v237 - v15);
  __chkstk_darwin(v16);
  v269 = (&v237 - v17);
  v287 = sub_1000077C8(&qword_100176CC0, &qword_10011F208);
  v18 = *(*(v287 - 8) + 64);
  __chkstk_darwin(v287);
  v289 = &v237 - v19;
  v285 = sub_1000077C8(&qword_100176CC8, &qword_10011F210);
  v20 = *(*(v285 - 8) + 64);
  __chkstk_darwin(v285);
  v286 = &v237 - v21;
  v273 = sub_1000077C8(&qword_100176CD0, &qword_10011F218);
  v22 = *(*(v273 - 8) + 64);
  __chkstk_darwin(v273);
  v280 = &v237 - v23;
  v279 = sub_1000077C8(&qword_100176CD8, &qword_10011F220);
  v24 = *(*(v279 - 8) + 64);
  __chkstk_darwin(v279);
  v251 = &v237 - v25;
  v302 = sub_1000077C8(&qword_100176CE0, &qword_10011F228);
  v309 = *(v302 - 8);
  v26 = *(v309 + 64);
  __chkstk_darwin(v302);
  v277 = &v237 - v27;
  v299 = type metadata accessor for DeviceLockState();
  v308 = *(v299 - 8);
  v28 = *(v308 + 64);
  __chkstk_darwin(v299);
  v297 = &v237 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v298 = &v237 - v31;
  v32 = sub_1000077C8(&qword_100176CE8, &qword_10011F230);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v263 = &v237 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v262 = &v237 - v36;
  __chkstk_darwin(v37);
  v39 = &v237 - v38;
  __chkstk_darwin(v40);
  v303 = &v237 - v41;
  __chkstk_darwin(v42);
  v253 = &v237 - v43;
  v294 = sub_1000077C8(&qword_1001768C8, &qword_10011ED28);
  v44 = *(*(v294 - 8) + 64);
  __chkstk_darwin(v294);
  v296 = &v237 - v45;
  v295 = sub_1000077C8(&qword_1001768D0, &qword_10011ED30);
  v46 = *(*(v295 - 8) + 64);
  __chkstk_darwin(v295);
  v48 = &v237 - v47;
  v49 = sub_1000077C8(&qword_1001768D8, &qword_10011ED38);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8);
  v257 = &v237 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v270 = &v237 - v53;
  __chkstk_darwin(v54);
  v268 = &v237 - v55;
  __chkstk_darwin(v56);
  v301 = &v237 - v57;
  __chkstk_darwin(v58);
  v267 = &v237 - v59;
  v310 = sub_1000077C8(&qword_100176CF0, &qword_10011F238);
  v60 = *(*(v310 - 8) + 64);
  __chkstk_darwin(v310);
  v261 = &v237 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v260 = &v237 - v63;
  __chkstk_darwin(v64);
  v259 = &v237 - v65;
  __chkstk_darwin(v66);
  v256 = &v237 - v67;
  __chkstk_darwin(v68);
  v258 = &v237 - v69;
  __chkstk_darwin(v70);
  v254 = &v237 - v71;
  __chkstk_darwin(v72);
  v272 = &v237 - v73;
  __chkstk_darwin(v74);
  v252 = &v237 - v75;
  __chkstk_darwin(v76);
  v271 = &v237 - v77;
  __chkstk_darwin(v78);
  v266 = (&v237 - v79);
  v80 = sub_1000077C8(&qword_100176CF8, &unk_10011F240);
  v81 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80 - 8);
  v282 = &v237 - v82;
  v83 = sub_1000077C8(&qword_100176850, &qword_10011ECB8);
  v84 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83 - 8);
  v86 = &v237 - v85;
  v290 = sub_1000077C8(&qword_100176840, &qword_10011ECB0);
  v87 = *(*(v290 - 8) + 64);
  __chkstk_darwin(v290);
  v283 = &v237 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v284 = &v237 - v90;
  v91 = type metadata accessor for SFAirDrop.DeclineAction();
  v92 = *(v91 - 8);
  v93 = *(v92 + 64);
  __chkstk_darwin(v91);
  v95 = &v237 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1000077C8(&qword_100173CA8, &unk_10011A310);
  v97 = *(v96 - 8);
  v98 = *(v97 + 64);
  __chkstk_darwin(v96);
  v100 = (&v237 - v99);
  sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  SFAirDrop.PermissionRequest.style.getter();
  v101 = (*(v97 + 88))(v100, v96);
  if (v101 == enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:))
  {
    v247 = v39;
    (*(v97 + 96))(v100, v96);
    v103 = *v100;
    v102 = v100[1];
    v105 = v100[2];
    v104 = v100[3];
    v275 = v100[4];
    v106 = sub_1000077C8(&qword_100173CC0, qword_10011D010);
    (*(v92 + 32))(v95, v100 + *(v106 + 80), v91);
    *v86 = static HorizontalAlignment.center.getter();
    *(v86 + 1) = 0;
    v86[16] = 0;
    v107 = type metadata accessor for AirDropAskRequestView();
    _ZF = v311[*(v107 + 24)] == 1;
    v250 = v91;
    v249 = v92;
    v265 = v95;
    v248 = v86;
    v278 = v102;
    v276 = v104;
    if (_ZF)
    {
      v109 = static HorizontalAlignment.leading.getter();
      v110 = v266;
      *v266 = v109;
      v110[1] = 0x402E000000000000;
      *(v110 + 16) = 0;
      *v48 = static VerticalAlignment.top.getter();
      *(v48 + 1) = 0x4034000000000000;
      v48[16] = 0;
      v111 = sub_1000077C8(&qword_100176998, &qword_10011EDF8);
      v112 = v311;
      sub_1000B7298(v311, v103, v102, v105, v104, &v48[*(v111 + 44)]);
      sub_100007BA4(v48, v296, &qword_1001768D0, &qword_10011ED30);
      swift_storeEnumTagMultiPayload();
      sub_1000C821C();
      sub_1000199C8(&qword_100176938, &qword_100176888, &qword_10011ECE8);
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v48, &qword_1001768D0, &qword_10011ED30);
      v113 = *(v112 + *(v107 + 20) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v114 = v298;
      static Published.subscript.getter();

      v115 = v308;
      v116 = v297;
      v117 = v299;
      (*(v308 + 104))(v297, enum case for DeviceLockState.unlocked(_:), v299);
      LOBYTE(v113) = static DeviceLockState.== infix(_:_:)();
      v118 = *(v115 + 8);
      v118(v116, v117);
      v118(v114, v117);
      if (v113)
      {
        v119 = static Axis.Set.horizontal.getter();
        v120 = v251;
        *v251 = v119;
        v121 = sub_1000077C8(&qword_100176D68, &qword_10011F298);
        sub_1000B61E4(v311, v275, v95, v120 + *(v121 + 44));
        sub_100007BA4(v120, v280, &qword_100176CD8, &qword_10011F220);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176D58, &qword_100176CD8, &qword_10011F220);
        sub_1000199C8(&qword_100176D60, &qword_100176CB0, &qword_10011F1F8);
        v122 = v277;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v120, &qword_100176CD8, &qword_10011F220);
        v123 = v253;
        sub_100021A84(v122, v253, &qword_100176CE0, &qword_10011F228);
        v124 = 0;
        v125 = v303;
        v126 = v309;
      }

      else
      {
        v124 = 1;
        v125 = v303;
        v126 = v309;
        v123 = v253;
      }

      (*(v126 + 56))(v123, v124, 1, v302);
      v220 = sub_1000077C8(&qword_100176D10, &qword_10011F268);
      v221 = v266;
      v222 = v266 + *(v220 + 44);
      v223 = v267;
      v224 = v301;
      sub_100007BA4(v267, v301, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v123, v125, &qword_100176CE8, &qword_10011F230);
      sub_100007BA4(v224, v222, &qword_1001768D8, &qword_10011ED38);
      v225 = sub_1000077C8(&qword_100176D18, &qword_10011F270);
      sub_100007BA4(v125, v222 + *(v225 + 48), &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v123, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v223, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v125, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v224, &qword_1001768D8, &qword_10011ED38);
      v226 = static Edge.Set.all.getter();
      v227 = v221 + *(v310 + 36);
      *v227 = v226;
      *(v227 + 8) = xmmword_10011EA80;
      *(v227 + 24) = xmmword_10011EA90;
      v227[40] = 0;
      sub_100007BA4(v221, v286, &qword_100176CF0, &qword_10011F238);
      swift_storeEnumTagMultiPayload();
      sub_1000C9254();
      sub_1000199C8(&qword_100176D40, &qword_100176CC0, &qword_10011F208);
      v219 = v282;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v221, &qword_100176CF0, &qword_10011F238);
    }

    else
    {
      *v289 = static Axis.Set.vertical.getter();
      v132 = static HorizontalAlignment.leading.getter();
      v133 = v269;
      *v269 = v132;
      v133[1] = 0x4030000000000000;
      *(v133 + 16) = 0;
      v134 = static VerticalAlignment.top.getter();
      v135 = v288;
      *v288 = v134;
      *(v135 + 8) = 0x4034000000000000;
      *(v135 + 16) = 0;
      v253 = sub_1000077C8(&qword_100176910, &qword_10011ED70);
      v136 = v135 + *(v253 + 44);
      v137 = v311;
      v267 = v103;
      v266 = v105;
      sub_1000B6928(v311, v103, v102, v105, v104, v136);
      sub_100007BA4(v135, v296, &qword_100176888, &qword_10011ECE8);
      v138 = 1;
      swift_storeEnumTagMultiPayload();
      v139 = sub_1000C821C();
      v140 = sub_1000199C8(&qword_100176938, &qword_100176888, &qword_10011ECE8);
      v251 = v139;
      v245 = v140;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v135, &qword_100176888, &qword_10011ECE8);
      v141 = *(v137 + *(v107 + 20) + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      v142 = v298;
      v246 = v141;
      static Published.subscript.getter();

      v143 = v308;
      v144 = *(v308 + 104);
      v145 = v297;
      v244 = enum case for DeviceLockState.unlocked(_:);
      v146 = v299;
      v243 = v308 + 104;
      v242 = v144;
      v144(v297);
      v147 = static DeviceLockState.== infix(_:_:)();
      v148 = *(v143 + 8);
      v148(v145, v146);
      v308 = v143 + 8;
      v241 = v148;
      v148(v142, v146);
      v149 = v247;
      if (v147)
      {
        v150 = static VerticalAlignment.center.getter();
        v151 = v264;
        *v264 = v150;
        *(v151 + 8) = 0x4024000000000000;
        *(v151 + 16) = 0;
        v152 = sub_1000077C8(&qword_100176D50, &qword_10011F290);
        sub_1000B7DF4(v265, v311, v275, v151 + *(v152 + 44));
        sub_100007BA4(v151, v280, &qword_100176CB0, &qword_10011F1F8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176D58, &qword_100176CD8, &qword_10011F220);
        sub_1000199C8(&qword_100176D60, &qword_100176CB0, &qword_10011F1F8);
        v153 = v277;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v151, &qword_100176CB0, &qword_10011F1F8);
        sub_100021A84(v153, v149, &qword_100176CE0, &qword_10011F228);
        v138 = 0;
      }

      v240 = *(v309 + 56);
      v309 += 56;
      v240(v149, v138, 1, v302);
      v239 = sub_1000077C8(&qword_100176D10, &qword_10011F268);
      v154 = v269;
      v155 = v269 + *(v239 + 44);
      v156 = v268;
      v157 = v301;
      sub_100007BA4(v268, v301, &qword_1001768D8, &qword_10011ED38);
      v158 = v303;
      sub_100007BA4(v149, v303, &qword_100176CE8, &qword_10011F230);
      sub_100007BA4(v157, v155, &qword_1001768D8, &qword_10011ED38);
      v238 = sub_1000077C8(&qword_100176D18, &qword_10011F270);
      sub_100007BA4(v158, v155 + *(v238 + 48), &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v149, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v156, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v158, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v157, &qword_1001768D8, &qword_10011ED38);
      v159 = static Edge.Set.all.getter();
      v160 = v252;
      sub_100021A84(v154, v252, &qword_100176CB8, &qword_10011F200);
      v161 = v160 + *(v310 + 36);
      *v161 = v159;
      __asm { FMOV            V0.2D, #16.0 }

      *(v161 + 8) = _Q0;
      *(v161 + 24) = _Q0;
      *(v161 + 40) = 0;
      sub_100021A84(v160, v271, &qword_100176CF0, &qword_10011F238);
      v166 = static HorizontalAlignment.leading.getter();
      v167 = v255;
      *v255 = v166;
      *(v167 + 8) = 0x4026000000000000;
      *(v167 + 16) = 0;
      v168 = static VerticalAlignment.top.getter();
      v169 = v288;
      *v288 = v168;
      *(v169 + 8) = 0x4034000000000000;
      *(v169 + 16) = 0;
      sub_1000B6928(v311, v267, v278, v266, v276, v169 + *(v253 + 44));
      sub_100007BA4(v169, v296, &qword_100176888, &qword_10011ECE8);
      swift_storeEnumTagMultiPayload();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v169, &qword_100176888, &qword_10011ECE8);
      swift_getKeyPath();
      swift_getKeyPath();
      v170 = v298;
      static Published.subscript.getter();

      v171 = v297;
      v172 = v299;
      v242(v297, v244, v299);
      v173 = static DeviceLockState.== infix(_:_:)();
      v174 = v241;
      v241(v171, v172);
      v174(v170, v172);
      v175 = 1;
      if (v173)
      {
        v176 = static VerticalAlignment.center.getter();
        v177 = v264;
        *v264 = v176;
        *(v177 + 8) = 0x4024000000000000;
        *(v177 + 16) = 0;
        v178 = sub_1000077C8(&qword_100176D50, &qword_10011F290);
        sub_1000B7DF4(v265, v311, v275, v177 + *(v178 + 44));
        sub_100007BA4(v177, v280, &qword_100176CB0, &qword_10011F1F8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176D58, &qword_100176CD8, &qword_10011F220);
        sub_1000199C8(&qword_100176D60, &qword_100176CB0, &qword_10011F1F8);
        v179 = v277;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v177, &qword_100176CB0, &qword_10011F1F8);
        sub_100021A84(v179, v262, &qword_100176CE0, &qword_10011F228);
        v175 = 0;
      }

      v180 = v262;
      v240(v262, v175, 1, v302);
      v181 = v167 + *(v239 + 44);
      v182 = v270;
      v183 = v301;
      sub_100007BA4(v270, v301, &qword_1001768D8, &qword_10011ED38);
      v184 = v303;
      sub_100007BA4(v180, v303, &qword_100176CE8, &qword_10011F230);
      sub_100007BA4(v183, v181, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v184, v181 + *(v238 + 48), &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v180, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v182, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v184, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v183, &qword_1001768D8, &qword_10011ED38);
      LOBYTE(v181) = static Edge.Set.all.getter();
      v185 = v254;
      sub_100021A84(v167, v254, &qword_100176CB8, &qword_10011F200);
      v186 = v185 + *(v310 + 36);
      *v186 = v181;
      *(v186 + 8) = xmmword_10011EA60;
      *(v186 + 24) = xmmword_10011EA60;
      *(v186 + 40) = 0;
      sub_100021A84(v185, v272, &qword_100176CF0, &qword_10011F238);
      v187 = static HorizontalAlignment.leading.getter();
      v188 = v274;
      *v274 = v187;
      v188[1] = 0x4020000000000000;
      *(v188 + 16) = 0;
      v189 = static VerticalAlignment.top.getter();
      v190 = v288;
      *v288 = v189;
      *(v190 + 8) = 0x4034000000000000;
      *(v190 + 16) = 0;
      sub_1000B6928(v311, v267, v278, v266, v276, v190 + *(v253 + 44));
      sub_100007BA4(v190, v296, &qword_100176888, &qword_10011ECE8);
      swift_storeEnumTagMultiPayload();
      v191 = v257;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v190, &qword_100176888, &qword_10011ECE8);
      swift_getKeyPath();
      swift_getKeyPath();
      v192 = v298;
      static Published.subscript.getter();

      v193 = v297;
      v194 = v299;
      v242(v297, v244, v299);
      LOBYTE(v190) = static DeviceLockState.== infix(_:_:)();
      v195 = v241;
      v241(v193, v194);
      v195(v192, v194);
      v196 = 1;
      if (v190)
      {
        v197 = static VerticalAlignment.center.getter();
        v198 = v264;
        *v264 = v197;
        *(v198 + 8) = 0x4024000000000000;
        *(v198 + 16) = 0;
        v199 = sub_1000077C8(&qword_100176D50, &qword_10011F290);
        sub_1000B7DF4(v265, v311, v275, v198 + *(v199 + 44));
        sub_100007BA4(v198, v280, &qword_100176CB0, &qword_10011F1F8);
        swift_storeEnumTagMultiPayload();
        sub_1000199C8(&qword_100176D58, &qword_100176CD8, &qword_10011F220);
        sub_1000199C8(&qword_100176D60, &qword_100176CB0, &qword_10011F1F8);
        v200 = v277;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v198, &qword_100176CB0, &qword_10011F1F8);
        sub_100021A84(v200, v263, &qword_100176CE0, &qword_10011F228);
        v196 = 0;
      }

      v201 = v263;
      v240(v263, v196, 1, v302);
      v202 = sub_1000077C8(&qword_100176D20, &qword_10011F278);
      v311 = &v289[*(v202 + 44)];
      v203 = v274;
      v204 = v274 + *(v239 + 44);
      v205 = v301;
      sub_100007BA4(v191, v301, &qword_1001768D8, &qword_10011ED38);
      v206 = v191;
      v207 = v303;
      sub_100007BA4(v201, v303, &qword_100176CE8, &qword_10011F230);
      sub_100007BA4(v205, v204, &qword_1001768D8, &qword_10011ED38);
      sub_100007BA4(v207, v204 + *(v238 + 48), &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v201, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v206, &qword_1001768D8, &qword_10011ED38);
      sub_1000159AC(v207, &qword_100176CE8, &qword_10011F230);
      sub_1000159AC(v205, &qword_1001768D8, &qword_10011ED38);
      LOBYTE(v204) = static Edge.Set.all.getter();
      v208 = v256;
      sub_100021A84(v203, v256, &qword_100176CB8, &qword_10011F200);
      v209 = v208 + *(v310 + 36);
      *v209 = v204;
      *(v209 + 8) = xmmword_10011EA70;
      *(v209 + 24) = xmmword_10011EA70;
      *(v209 + 40) = 0;
      v210 = v258;
      sub_100021A84(v208, v258, &qword_100176CF0, &qword_10011F238);
      v211 = v271;
      v212 = v259;
      sub_100007BA4(v271, v259, &qword_100176CF0, &qword_10011F238);
      v213 = v272;
      v214 = v260;
      sub_100007BA4(v272, v260, &qword_100176CF0, &qword_10011F238);
      v215 = v261;
      sub_100007BA4(v210, v261, &qword_100176CF0, &qword_10011F238);
      v216 = v311;
      sub_100007BA4(v212, v311, &qword_100176CF0, &qword_10011F238);
      v217 = sub_1000077C8(&qword_100176D28, &qword_10011F280);
      sub_100007BA4(v214, v216 + *(v217 + 48), &qword_100176CF0, &qword_10011F238);
      sub_100007BA4(v215, v216 + *(v217 + 64), &qword_100176CF0, &qword_10011F238);
      sub_1000159AC(v210, &qword_100176CF0, &qword_10011F238);
      sub_1000159AC(v213, &qword_100176CF0, &qword_10011F238);
      sub_1000159AC(v211, &qword_100176CF0, &qword_10011F238);
      sub_1000159AC(v215, &qword_100176CF0, &qword_10011F238);
      sub_1000159AC(v214, &qword_100176CF0, &qword_10011F238);
      sub_1000159AC(v212, &qword_100176CF0, &qword_10011F238);
      v218 = v289;
      sub_100007BA4(v289, v286, &qword_100176CC0, &qword_10011F208);
      swift_storeEnumTagMultiPayload();
      sub_1000C9254();
      sub_1000199C8(&qword_100176D40, &qword_100176CC0, &qword_10011F208);
      v219 = v282;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v218, &qword_100176CC0, &qword_10011F208);
    }

    v228 = sub_1000077C8(&qword_100176D48, &qword_10011F288);
    v229 = v248;
    sub_100021A84(v219, &v248[*(v228 + 44)], &qword_100176CF8, &unk_10011F240);

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v230 = v283;
    sub_100021A84(v229, v283, &qword_100176850, &qword_10011ECB8);
    v231 = (v230 + *(v290 + 36));
    v232 = v317;
    v231[4] = v316;
    v231[5] = v232;
    v231[6] = v318;
    v233 = v313;
    *v231 = v312;
    v231[1] = v233;
    v234 = v315;
    v231[2] = v314;
    v231[3] = v234;
    v235 = v284;
    sub_100021A84(v230, v284, &qword_100176840, &qword_10011ECB0);
    sub_100007BA4(v235, v292, &qword_100176840, &qword_10011ECB0);
    swift_storeEnumTagMultiPayload();
    sub_1000C8020();
    v236 = v293;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v236, v306, &qword_100176830, &qword_10011ECA8);
    swift_storeEnumTagMultiPayload();
    sub_1000C7F6C();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v236, &qword_100176830, &qword_10011ECA8);
    sub_1000159AC(v235, &qword_100176840, &qword_10011ECB0);
    return (*(v249 + 8))(v265, v250);
  }

  else if (v101 == enum case for SFAirDrop.PermissionRequest.Style.intervention<A>(_:))
  {
    (*(v97 + 96))(v100, v96);
    v127 = *(sub_1000077C8(&qword_100176D00, &qword_10011F250) + 48);
    swift_storeEnumTagMultiPayload();
    sub_1000C8020();
    v128 = v293;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v128, v306, &qword_100176830, &qword_10011ECA8);
    swift_storeEnumTagMultiPayload();
    sub_1000C7F6C();
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v128, &qword_100176830, &qword_10011ECA8);
    v129 = sub_1000077C8(&qword_100176D08, &unk_10011F258);
    (*(*(v129 - 8) + 8))(v100 + v127, v129);
    v130 = type metadata accessor for SFInterventionWorkflow();
    return (*(*(v130 - 8) + 8))(v100, v130);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000C7F6C();
    _ConditionalContent<>.init(storage:)();
    return (*(v97 + 8))(v100, v96);
  }
}

uint64_t sub_1000B61E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = sub_1000077C8(&qword_100176D70, &qword_10011F2A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = sub_1000077C8(&qword_100176CB0, &qword_10011F1F8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  *v20 = static VerticalAlignment.center.getter();
  *(v20 + 1) = 0x4024000000000000;
  v20[16] = 0;
  v21 = sub_1000077C8(&qword_100176D50, &qword_10011F290);
  sub_1000B7DF4(a3, a1, a2, &v20[*(v21 + 44)]);
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  v22 = sub_1000077C8(&qword_100176D78, &qword_10011F2A8);
  sub_1000BED28(a3, a1, a2, &v13[*(v22 + 44)]);
  sub_100007BA4(v20, v17, &qword_100176CB0, &qword_10011F1F8);
  sub_100007BA4(v13, v10, &qword_100176D70, &qword_10011F2A0);
  v23 = v27;
  sub_100007BA4(v17, v27, &qword_100176CB0, &qword_10011F1F8);
  v24 = sub_1000077C8(&qword_100176D80, &qword_10011F2B0);
  sub_100007BA4(v10, v23 + *(v24 + 48), &qword_100176D70, &qword_10011F2A0);
  sub_1000159AC(v13, &qword_100176D70, &qword_10011F2A0);
  sub_1000159AC(v20, &qword_100176CB0, &qword_10011F1F8);
  sub_1000159AC(v10, &qword_100176D70, &qword_10011F2A0);
  return sub_1000159AC(v17, &qword_100176CB0, &qword_10011F1F8);
}

uint64_t sub_1000B6450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = sub_1000077C8(&qword_1001769A8, &qword_10011EE08);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = sub_1000077C8(&qword_100176880, &qword_10011ECE0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  *v20 = static VerticalAlignment.center.getter();
  *(v20 + 1) = 0x4024000000000000;
  v20[16] = 0;
  v21 = sub_1000077C8(&qword_100176980, &qword_10011EDF0);
  sub_1000B8974(a3, a1, a2, &v20[*(v21 + 44)]);
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  v22 = sub_1000077C8(&qword_1001769B0, &qword_10011EE10);
  sub_1000BF50C(a3, a1, a2, &v13[*(v22 + 44)]);
  sub_100007BA4(v20, v17, &qword_100176880, &qword_10011ECE0);
  sub_100007BA4(v13, v10, &qword_1001769A8, &qword_10011EE08);
  v23 = v27;
  sub_100007BA4(v17, v27, &qword_100176880, &qword_10011ECE0);
  v24 = sub_1000077C8(&qword_1001769B8, &qword_10011EE18);
  sub_100007BA4(v10, v23 + *(v24 + 48), &qword_1001769A8, &qword_10011EE08);
  sub_1000159AC(v13, &qword_1001769A8, &qword_10011EE08);
  sub_1000159AC(v20, &qword_100176880, &qword_10011ECE0);
  sub_1000159AC(v10, &qword_1001769A8, &qword_10011EE08);
  return sub_1000159AC(v17, &qword_100176880, &qword_10011ECE0);
}

uint64_t sub_1000B66BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = sub_1000077C8(&qword_100176C18, &qword_10011F150);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = sub_1000077C8(&qword_100176B48, &qword_10011F0A8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  *v20 = static VerticalAlignment.center.getter();
  *(v20 + 1) = 0x4024000000000000;
  v20[16] = 0;
  v21 = sub_1000077C8(&qword_100176BF8, &qword_10011F140);
  sub_1000B94F4(a3, a1, a2, &v20[*(v21 + 44)]);
  *v13 = static HorizontalAlignment.center.getter();
  *(v13 + 1) = 0x4024000000000000;
  v13[16] = 0;
  v22 = sub_1000077C8(&qword_100176C20, &qword_10011F158);
  sub_1000BFCF0(a3, a1, a2, &v13[*(v22 + 44)]);
  sub_100007BA4(v20, v17, &qword_100176B48, &qword_10011F0A8);
  sub_100007BA4(v13, v10, &qword_100176C18, &qword_10011F150);
  v23 = v27;
  sub_100007BA4(v17, v27, &qword_100176B48, &qword_10011F0A8);
  v24 = sub_1000077C8(&qword_100176C28, &qword_10011F160);
  sub_100007BA4(v10, v23 + *(v24 + 48), &qword_100176C18, &qword_10011F150);
  sub_1000159AC(v13, &qword_100176C18, &qword_10011F150);
  sub_1000159AC(v20, &qword_100176B48, &qword_10011F0A8);
  sub_1000159AC(v10, &qword_100176C18, &qword_10011F150);
  return sub_1000159AC(v17, &qword_100176B48, &qword_10011F0A8);
}

uint64_t sub_1000B6928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v86 = a5;
  v78 = a4;
  v79 = a3;
  v77 = a2;
  v8 = type metadata accessor for DeviceLockState();
  v83 = *(v8 - 8);
  v84 = v8;
  v9 = *(v83 + 64);
  __chkstk_darwin(v8);
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v68 - v12;
  v74 = type metadata accessor for Font.TextStyle();
  v72 = *(v74 - 8);
  v13 = *(v72 + 64);
  __chkstk_darwin(v74);
  v73 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AirDropDescriptionView();
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  v19 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v21 = &v68 - v20;
  v76 = sub_1000077C8(&qword_100176B20, &qword_10011F080);
  v22 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v85 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v68 - v25;
  __chkstk_darwin(v27);
  v92 = &v68 - v28;
  v69 = type metadata accessor for AirDropAskRequestView();
  v29 = *(v69 + 20);
  v71 = a1;
  v30 = *(a1 + v29 + 8);
  v31 = type metadata accessor for AirDropTransferSession();
  v32 = sub_1000C9AAC(&qword_100173460, type metadata accessor for AirDropTransferSession);

  v80 = v30;
  v70 = v31;
  v68 = v32;
  v33 = ObservedObject.init(wrappedValue:)();
  v90 = v34;
  v91 = v33;
  v89 = [objc_allocWithZone(UIColor) initWithRed:0.043 green:0.608 blue:1.0 alpha:1.0];
  if (qword_100172140 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v88 = LOBYTE(v99[0]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(&v113[3] + 1) = *&v113[28];
  *(&v113[11] + 1) = *&v113[36];
  *(&v113[19] + 1) = *&v113[44];
  v87 = static Edge.Set.all.getter();
  LOBYTE(v99[0]) = 0;
  v35 = qword_1001721B8;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_10017F258;
  v99[0] = 0x402C000000000000;
  (*(v72 + 104))(v73, enum case for Font.TextStyle.subheadline(_:), v74);
  sub_10004A578();

  ScaledMetric.init(wrappedValue:relativeTo:)();
  v37 = &v18[v15[5]];
  v38 = v78;
  v39 = v79;
  *v37 = v77;
  *(v37 + 1) = v39;
  v40 = &v18[v15[6]];
  v41 = v86;
  *v40 = v38;
  *(v40 + 1) = v41;
  *(v40 + 2) = v36;
  *(v40 + 3) = 2;
  v40[32] = 0;
  *&v18[v15[7]] = 0x3FF0000000000000;

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000C8DD8(v18, v21, type metadata accessor for AirDropDescriptionView);
  v42 = &v21[*(v75 + 36)];
  v43 = *&v113[92];
  *(v42 + 4) = *&v113[84];
  *(v42 + 5) = v43;
  *(v42 + 6) = *&v113[100];
  v44 = *&v113[60];
  *v42 = *&v113[52];
  *(v42 + 1) = v44;
  v45 = *&v113[76];
  *(v42 + 2) = *&v113[68];
  *(v42 + 3) = v45;
  v46 = static Edge.Set.all.getter();
  sub_100021A84(v21, v26, &qword_100174138, &unk_10011AE80);
  v47 = &v26[*(v76 + 36)];
  *v47 = v46;
  *(v47 + 1) = 0x4010000000000000;
  *(v47 + 2) = 0;
  *(v47 + 3) = 0;
  *(v47 + 4) = 0;
  v47[40] = 0;
  sub_100021A84(v26, v92, &qword_100176B20, &qword_10011F080);
  swift_getKeyPath();
  swift_getKeyPath();
  v48 = v81;
  static Published.subscript.getter();

  v50 = v82;
  v49 = v83;
  v51 = v84;
  (*(v83 + 104))(v82, enum case for DeviceLockState.unlocked(_:), v84);
  v52 = static DeviceLockState.== infix(_:_:)();
  v53 = *(v49 + 8);
  v53(v50, v51);
  v53(v48, v51);
  if (v52)
  {
    v54 = *(v71 + *(v69 + 24));

    v55 = ObservedObject.init(wrappedValue:)();
    v57 = v56;

    v58 = 1;
    v59 = 1;
  }

  else
  {
    v55 = 0;
    v57 = 0;
    v54 = 0;
    v58 = 0;
    v59 = 0;
  }

  v60 = v85;
  sub_100007BA4(v92, v85, &qword_100176B20, &qword_10011F080);
  *&v93 = v91;
  *(&v93 + 1) = v90;
  LOBYTE(v94) = 1;
  *(&v94 + 1) = v115[0];
  DWORD1(v94) = *(v115 + 3);
  *(&v94 + 1) = v89;
  LOBYTE(v95[0]) = v88;
  *(v95 + 1) = *v113;
  *(&v95[1] + 1) = *&v113[8];
  *(&v95[2] + 1) = *&v113[16];
  *&v95[3] = *(&v113[23] + 1);
  BYTE8(v95[3]) = v87;
  *(&v95[3] + 9) = *v114;
  HIDWORD(v95[3]) = *&v114[3];
  v86 = xmmword_10011EAA0;
  v96 = xmmword_10011EAA0;
  v97 = 0uLL;
  v98 = 0;
  *(a6 + 128) = 0;
  v61 = v95[1];
  *(a6 + 32) = v95[0];
  *(a6 + 48) = v61;
  v62 = v94;
  *a6 = v93;
  *(a6 + 16) = v62;
  v63 = v97;
  *(a6 + 96) = v96;
  *(a6 + 112) = v63;
  v64 = v95[3];
  *(a6 + 64) = v95[2];
  *(a6 + 80) = v64;
  v65 = sub_1000077C8(&qword_100176B28, &qword_10011F088);
  sub_100007BA4(v60, a6 + *(v65 + 48), &qword_100176B20, &qword_10011F080);
  v66 = a6 + *(v65 + 64);
  sub_100007BA4(&v93, v99, &qword_100176B30, &qword_10011F090);
  sub_10004DC44(v55, v57, v54, 0, v58);
  sub_10004DCA8(v55, v57, v54, 0, v58);
  *v66 = v55;
  *(v66 + 8) = v57;
  *(v66 + 16) = v54;
  *(v66 + 24) = 0;
  *(v66 + 32) = v58;
  *(v66 + 40) = v59;
  sub_1000159AC(v92, &qword_100176B20, &qword_10011F080);
  sub_10004DCA8(v55, v57, v54, 0, v58);
  sub_1000159AC(v60, &qword_100176B20, &qword_10011F080);
  v104 = *v113;
  v99[0] = v91;
  v99[1] = v90;
  v100 = 1;
  *v101 = v115[0];
  *&v101[3] = *(v115 + 3);
  v102 = v89;
  v103 = v88;
  v105 = *&v113[8];
  *v106 = *&v113[16];
  *&v106[15] = *(&v113[23] + 1);
  v107 = v87;
  *v108 = *v114;
  *&v108[3] = *&v114[3];
  v109 = v86;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  return sub_1000159AC(v99, &qword_100176B30, &qword_10011F090);
}

uint64_t sub_1000B7298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v53 = a6;
  v11 = type metadata accessor for DeviceLockState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = sub_1000077C8(&qword_100176AE8, &qword_10011EFF8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v54 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v52 - v23;
  *v24 = static HorizontalAlignment.leading.getter();
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = sub_1000077C8(&qword_100176AF0, &qword_10011F000);
  sub_1000B774C(a1, a2, a3, a4, a5, &v24[*(v25 + 44)]);
  v26 = type metadata accessor for AirDropAskRequestView();
  v27 = *(a1 + *(v26 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  (*(v12 + 104))(v15, enum case for DeviceLockState.unlocked(_:), v11);
  LOBYTE(a4) = static DeviceLockState.== infix(_:_:)();
  v28 = *(v12 + 8);
  v28(v15, v11);
  v28(v18, v11);
  if (a4)
  {
    v52 = *(a1 + *(v26 + 24));
    type metadata accessor for AirDropTransferSession();
    sub_1000C9AAC(&qword_100173460, type metadata accessor for AirDropTransferSession);

    v29 = ObservedObject.init(wrappedValue:)();
    v31 = v30;
    v32 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    LOBYTE(v61[0]) = 0;
    v41 = v32;
    v42 = 1;
  }

  else
  {
    v29 = 0;
    v31 = 0;
    v42 = 0;
    v41 = 0;
    v52 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
    v40 = 0;
  }

  v43 = v54;
  sub_100007BA4(v24, v54, &qword_100176AE8, &qword_10011EFF8);
  v44 = v53;
  sub_100007BA4(v43, v53, &qword_100176AE8, &qword_10011EFF8);
  v45 = (v44 + *(sub_1000077C8(&qword_100176AF8, &qword_10011F008) + 48));
  *&v55 = v29;
  *(&v55 + 1) = v31;
  v46 = v31;
  v47 = v29;
  v48 = v52;
  v56 = v52;
  v57 = 0;
  *&v58 = v42;
  *(&v58 + 1) = v42;
  *&v59 = v41;
  *(&v59 + 1) = v34;
  *v60 = v36;
  *&v60[8] = v38;
  *&v60[16] = v40;
  v60[24] = 0;
  v49 = v52;
  *v45 = v55;
  v45[1] = v49;
  v50 = v59;
  v45[2] = v58;
  v45[3] = v50;
  v45[4] = *v60;
  *(v45 + 73) = *&v60[9];
  sub_100007BA4(&v55, v61, &qword_100176B00, &unk_10011F010);
  sub_1000159AC(v24, &qword_100176AE8, &qword_10011EFF8);
  v61[0] = v47;
  v61[1] = v46;
  v61[2] = v48;
  v61[3] = 0;
  v61[4] = v42;
  v61[5] = v42;
  v61[6] = v41;
  v61[7] = v34;
  v61[8] = v36;
  v61[9] = v38;
  v61[10] = v40;
  v62 = 0;
  sub_1000159AC(v61, &qword_100176B00, &unk_10011F010);
  return sub_1000159AC(v43, &qword_100176AE8, &qword_10011EFF8);
}

uint64_t sub_1000B774C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v60 = a4;
  v61 = a3;
  v59 = a2;
  v9 = type metadata accessor for Font.TextStyle();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AirDropDescriptionView();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1000077C8(&qword_100174138, &unk_10011AE80);
  v16 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v66 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  __chkstk_darwin(v21);
  v65 = &v50 - v22;
  v23 = *(a1 + *(type metadata accessor for AirDropAskRequestView() + 20) + 8);
  type metadata accessor for AirDropTransferSession();
  sub_1000C9AAC(&qword_100173460, type metadata accessor for AirDropTransferSession);

  v24 = ObservedObject.init(wrappedValue:)();
  v63 = v25;
  v64 = v24;
  v62 = [objc_allocWithZone(UIColor) initWithRed:0.043 green:0.608 blue:1.0 alpha:1.0];
  if (qword_100172140 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v67 = v85;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *(v79 + 7) = *&v79[7];
  *(&v79[2] + 7) = *&v79[9];
  *(&v79[4] + 7) = *&v79[11];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v53 = v81;
  v54 = v79[13];
  v51 = v84;
  v52 = v83;
  v95 = 1;
  v94 = v80;
  v93 = v82;
  v26 = qword_1001721B8;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_10017F258;
  *&v85 = 0x402C000000000000;
  (*(v56 + 104))(v55, enum case for Font.TextStyle.subheadline(_:), v57);
  sub_10004A578();

  ScaledMetric.init(wrappedValue:relativeTo:)();
  v28 = &v15[v12[5]];
  v29 = v60;
  v30 = v61;
  *v28 = v59;
  *(v28 + 1) = v30;
  v31 = &v15[v12[6]];
  *v31 = v29;
  *(v31 + 1) = a5;
  *(v31 + 2) = v27;
  *(v31 + 3) = 0;
  v31[32] = 1;
  *&v15[v12[7]] = 0x3FE0000000000000;

  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000C8DD8(v15, v20, type metadata accessor for AirDropDescriptionView);
  v32 = &v20[*(v58 + 36)];
  v33 = v90;
  *(v32 + 4) = v89;
  *(v32 + 5) = v33;
  *(v32 + 6) = v91;
  v34 = v86;
  *v32 = v85;
  *(v32 + 1) = v34;
  v35 = v88;
  *(v32 + 2) = v87;
  *(v32 + 3) = v35;
  v36 = v65;
  sub_100021A84(v20, v65, &qword_100174138, &unk_10011AE80);
  LOBYTE(v27) = v95;
  v37 = v94;
  v38 = v93;
  v39 = v66;
  sub_100007BA4(v36, v66, &qword_100174138, &unk_10011AE80);
  v41 = v63;
  v40 = v64;
  *&v68 = v64;
  *(&v68 + 1) = v63;
  LOBYTE(v69) = 1;
  *(&v69 + 1) = *v92;
  DWORD1(v69) = *&v92[3];
  v42 = v62;
  *(&v69 + 1) = v62;
  v70[0] = v67;
  *&v70[1] = *v79;
  *&v70[17] = *&v79[2];
  *&v70[33] = *&v79[4];
  v43 = *(&v79[5] + 7);
  *&v70[48] = *(&v79[5] + 7);
  v44 = *&v70[16];
  *(a6 + 32) = *v70;
  *(a6 + 48) = v44;
  *(a6 + 64) = *&v70[32];
  v45 = v69;
  *a6 = v68;
  *(a6 + 16) = v45;
  *(a6 + 80) = v43;
  *(a6 + 88) = 0;
  *(a6 + 96) = v27;
  v46 = v53;
  *(a6 + 104) = v54;
  *(a6 + 112) = v37;
  *(a6 + 120) = v46;
  *(a6 + 128) = v38;
  v47 = v51;
  *(a6 + 136) = v52;
  *(a6 + 144) = v47;
  v48 = sub_1000077C8(&qword_100176B08, &qword_10011F068);
  sub_100007BA4(v39, a6 + *(v48 + 64), &qword_100174138, &unk_10011AE80);
  sub_100007BA4(&v68, v71, &qword_100176B10, &qword_10011F070);
  sub_1000159AC(v36, &qword_100174138, &unk_10011AE80);
  sub_1000159AC(v39, &qword_100174138, &unk_10011AE80);
  v76 = *v79;
  v71[0] = v40;
  v71[1] = v41;
  v72 = 1;
  *v73 = *v92;
  *&v73[3] = *&v92[3];
  v74 = v42;
  v75 = v67;
  v77 = *&v79[2];
  *v78 = *&v79[4];
  *&v78[15] = *(&v79[5] + 7);
  return sub_1000159AC(v71, &qword_100176B10, &qword_10011F070);
}