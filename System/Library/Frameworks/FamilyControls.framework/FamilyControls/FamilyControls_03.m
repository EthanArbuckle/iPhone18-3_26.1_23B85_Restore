void *sub_10004BD00(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_10001CA18(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100003720(&qword_10006BF18, &unk_100056F90);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10004BE08(uint64_t result)
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

    v4 = sub_10001C90C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_10001D9BC(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
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
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_10001C90C((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_10001D648();
  *v1 = v4;
  return result;
}

uint64_t sub_10004C0DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v5 = type metadata accessor for Notification();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  a4(v9);

  return (*(v6 + 8))(v9, v5);
}

void sub_10004C1D4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 176);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 objectForKey:v12];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  aBlock = v27;
  v24 = v28;
  if (!*(&v28 + 1))
  {
    sub_10000D5C4(&aBlock, &qword_10006BE28, qword_100056F60);
LABEL_11:
    v17 = String._bridgeToObjectiveC()();
    [v11 setDouble:v17 forKey:a3];

    v18 = *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_retrySharing);
    [v18 setInterval:a3];
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a2;
    v25 = sub_100052E04;
    v26 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v24 = sub_10004C724;
    *(&v24 + 1) = &unk_100067678;
    v21 = _Block_copy(&aBlock);

    [v18 scheduleWithBlock:v21];
    _Block_release(v21);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0 || v22[1] >= a3)
  {
    goto LABEL_11;
  }

  static Logger.syncEngine.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Background activity to retry sharing has already been scheduled.", v16, 2u);
  }

  (*(v7 + 8))(v10, v6);
}

void sub_10004C520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.syncEngine.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Running background sharing activity", v14, 2u);
  }

  (*(v8 + 8))(v11, v7);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100048430("Invalidating background sharing activity", sub_100052D1C, &unk_1000675B0);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_sharingCoordinator);

    sub_100015DB0(a4, a1, a2);
  }
}

uint64_t sub_10004C724(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_100052E44, v5);
}

void sub_10004C7B8(uint64_t a1)
{
  v1 = *(a1 + 160);
  v3[4] = sub_100053568;
  v3[5] = a1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10004C724;
  v3[3] = &unk_100067AB0;
  v2 = _Block_copy(v3);

  [v1 scheduleWithBlock:v2];
  _Block_release(v2);
}

uint64_t sub_10004C880(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_10004CBA8(sub_1000535A8, v4);
}

uint64_t sub_10004C904(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  if (a2)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_10001FFAC(a1, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = a3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v28 = a1;
      v29 = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v19 = String.init<A>(describing:)();
      v21 = sub_100002CB4(v19, v20, &v29);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Updating visited web domains was unsuccessful: %{public}s", v17, 0xCu);
      sub_1000032BC(v18);

      a3 = v27;
    }

    (*(v7 + 8))(v11, v6);
  }

  else
  {
    static Logger.syncEngine.getter();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Successfully updated visited web domains", v24, 2u);
    }

    (*(v7 + 8))(v13, v6);
  }

  return a3(1);
}

uint64_t sub_10004CBA8(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v76 = a2;
  v2 = type metadata accessor for Logger();
  v78 = *(v2 - 8);
  v79 = v2;
  v3 = *(v78 + 64);
  __chkstk_darwin(v2);
  v77 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DateInterval();
  v73 = *(v84 - 8);
  v5 = *(v73 + 64);
  v6 = __chkstk_darwin(v84);
  v71 = v7;
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v83 = &v69 - v8;
  v9 = type metadata accessor for Calendar.Component();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Calendar();
  v14 = *(v81 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v81);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003720(&qword_10006BA50, &qword_100056770);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v69 - v20;
  v22 = type metadata accessor for Date();
  v80 = *(v22 - 8);
  v23 = *(v80 + 64);
  v24 = __chkstk_darwin(v22);
  v70 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v27 = __chkstk_darwin(v26);
  v29 = &v69 - v28;
  v30 = __chkstk_darwin(v27);
  v82 = &v69 - v31;
  __chkstk_darwin(v30);
  v33 = &v69 - v32;
  static Date.now.getter();
  static Calendar.current.getter();
  (*(v10 + 104))(v13, enum case for Calendar.Component.month(_:), v9);
  v85 = v33;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v10 + 8))(v13, v9);
  v34 = v80;
  (*(v14 + 8))(v17, v81);
  v35 = v34;
  v36 = v22;
  if ((*(v34 + 48))(v21, 1, v22) == 1)
  {
    sub_10000D5C4(v21, &qword_10006BA50, &qword_100056770);
    v37 = v77;
    static Logger.syncEngine.getter();
    v38 = v70;
    (*(v34 + 16))(v70, v85, v22);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v86 = v42;
      *v41 = 136315138;
      sub_1000535B4(&qword_10006C890, &type metadata accessor for Date);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      v46 = *(v35 + 8);
      v46(v38, v22);
      v47 = sub_100002CB4(v43, v45, &v86);

      *(v41 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to subtract a month from now %s", v41, 0xCu);
      sub_1000032BC(v42);

      (*(v78 + 8))(v37, v79);
      return (v46)(v85, v22);
    }

    else
    {

      v68 = *(v34 + 8);
      v68(v38, v22);
      (*(v78 + 8))(v37, v79);
      return (v68)(v85, v22);
    }
  }

  else
  {
    v49 = v34;
    v50 = *(v34 + 32);
    v51 = v82;
    v69 = v36;
    v50(v82, v21, v36);
    (*(v34 + 16))(v29, v51, v36);
    static Date.now.getter();
    v52 = v83;
    DateInterval.init(start:end:)();
    v53 = v73;
    v54 = v74;
    v56 = *(v74 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_usageReporting);
    v55 = *(v74 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_usageReporting + 8);
    v57 = v72;
    v58 = v84;
    (*(v73 + 16))(v72, v52, v84);
    v59 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v60 = (v71 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    *(v61 + 16) = v54;
    (*(v53 + 32))(v61 + v59, v57, v58);
    v62 = (v61 + v60);
    v64 = v75;
    v63 = v76;
    *v62 = v75;
    v62[1] = v63;
    v65 = *(v55 + 16);

    sub_100011230(v64);
    v65(sub_10005301C, v61, v56, v55);

    (*(v53 + 8))(v83, v84);
    v66 = *(v49 + 8);
    v67 = v69;
    v66(v82, v69);
    return (v66)(v85, v67);
  }
}

void sub_10004D388(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_retrySharing) invalidate];
  v2 = *(a1 + 176);
  v3 = String._bridgeToObjectiveC()();
  [v2 removeObjectForKey:v3];
}

void sub_10004D414(uint64_t a1, char a2, uint64_t a3, NSObject *a4, const char *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_beginAccess();
    v15 = *(a3 + 16);
    *(a3 + 16) = a1;
    swift_errorRetain();
  }

  else
  {
    static Logger.syncEngine.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, a5, v18, 2u);
    }

    (*(v11 + 8))(v14, v10);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_10004D5A0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  result = swift_beginAccess();
  v5 = *(a1 + 16);
  if (v5)
  {
    if (a2)
    {
      swift_errorRetain();
      a2(v5, 1);
    }
  }

  else if (a2)
  {
    return (a2)(0, 0);
  }

  return result;
}

uint64_t sub_10004D630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v89 = a6;
  v96 = a5;
  v93 = a4;
  v8 = 0;
  v95 = type metadata accessor for Logger();
  v94 = *(v95 - 8);
  v9 = *(v94 + 64);
  v10 = __chkstk_darwin(v95);
  v88 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v86 - v12;
  v13 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v125 = (&v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_100003720(&qword_10006BE78, &qword_100056C00);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v119 = &v86 - v19;
  v118 = type metadata accessor for UsageItemRecord.Source();
  v127 = *(v118 - 8);
  v20 = v127[8];
  __chkstk_darwin(v118);
  v117 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for UUID();
  v22 = *(v116 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v116);
  v115 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for UsageItemRecord.UsageType();
  v25 = *(v114 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v114);
  v113 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for UsageItemRecord();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v124 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for URL();
  v91 = *(v92 - 8);
  v32 = *(v91 + 64);
  __chkstk_darwin(v92);
  v90 = &v86 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 16))
  {
    v34 = a3;
    v35 = *(a3 + 16);
    v126 = type metadata accessor for UsageStore();
    v97 = CTCategoryIdentifierOther;
    v108 = enum case for UsageItemRecord.UsageType.application(_:);
    v107 = (v25 + 104);
    v106 = (v22 + 8);
    v105 = enum case for UsageItemRecord.Source.local(_:);
    v104 = (v127 + 13);
    v103 = (v29 + 16);
    v102 = (v29 + 56);
    v101 = (v14 + 104);
    v100 = (v29 + 8);
    v36 = v14;
    v37 = &_swiftEmptyArrayStorage;
    v110 = v36;
    v99 = v36 + 32;
    v98 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
    v38 = (v34 + 40);
    v111 = a1;
    v112 = v13;
    v109 = v28;
    v39 = v35;
    do
    {
      v127 = v37;
      v41 = *(v38 - 1);
      v40 = *v38;

      v42 = static UsageStore.shared.getter();
      __chkstk_darwin(v42);
      *(&v86 - 2) = v41;
      *(&v86 - 1) = v40;
      v43 = UsageStore.contains(where:)();

      if (v43)
      {

        v37 = v127;
      }

      else
      {
        v122 = v39;
        v123 = v8;
        if (a1 && *(a1 + 16) && (v44 = sub_100041270(v41, v40), (v45 & 1) != 0))
        {
          v121 = *(*(a1 + 56) + 8 * v44);
          v46 = [v121 identifier];
        }

        else
        {
          v46 = v97;
          v121 = 0;
        }

        (*v107)(v113, v108, v114);
        v120 = v46;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v47 = v115;
        UUID.init()();
        UUID.uuidString.getter();
        (*v106)(v47, v116);
        (*v104)(v117, v105, v118);
        v48 = v124;
        UsageItemRecord.init(identifier:recordName:type:source:category:totalUsage:)();
        static UsageStore.shared.getter();
        v49 = v119;
        v50 = v109;
        (*v103)(v119, v48, v109);
        (*v102)(v49, 0, 1, v50);
        UsageStore.subscript.setter();

        sub_1000112B4(0, &qword_10006BE80, CKRecordID_ptr);
        v51 = UsageItemRecord.recordName.getter();
        v53 = v52;
        if (qword_10006B788 != -1)
        {
          swift_once();
        }

        v54 = qword_10006C960;
        v55._countAndFlagsBits = v51;
        v55._object = v53;
        isa = CKRecordID.init(recordName:zoneID:)(v55, v54).super.isa;
        *v125 = isa;
        v57 = v112;
        (*v101)();
        v58 = isa;
        v37 = v127;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_10001CCB8(0, v37[2] + 1, 1, v37);
        }

        v8 = v123;
        a1 = v111;
        v60 = v37[2];
        v59 = v37[3];
        if (v60 >= v59 >> 1)
        {
          v37 = sub_10001CCB8(v59 > 1, v60 + 1, 1, v37);
        }

        (*v100)(v124, v50);
        v37[2] = v60 + 1;
        (*(v110 + 32))(v37 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v60, v125, v57);
        v39 = v122;
      }

      v38 += 2;
      --v39;
    }

    while (v39);
  }

  else
  {
    v37 = &_swiftEmptyArrayStorage;
  }

  type metadata accessor for UsageStore();
  static UsageStore.shared.getter();
  v61 = v93;
  v62 = v90;
  Locations.familyControlsStore.getter();
  dispatch thunk of UsageStore.save(to:)();
  if (v8)
  {
    (*(v91 + 8))(v62, v92);

    v63 = v88;
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v128 = v8;
      v129 = v67;
      *v66 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v68 = String.init<A>(describing:)();
      v70 = sub_100002CB4(v68, v69, &v129);

      *(v66 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v64, v65, "Failed to save usage store during category lookup: %{public}s", v66, 0xCu);
      sub_1000032BC(v67);
    }

    (*(v94 + 8))(v63, v95);
    v71 = v96;
    if (v96)
    {
      swift_errorRetain();
      v71(v8, 1);
    }
  }

  else
  {
    (*(v91 + 8))(v62, v92);

    v73 = v87;
    static Logger.syncEngine.getter();

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v129 = v77;
      *v76 = 136446210;
      v78 = Array.description.getter();
      v80 = v37;
      v81 = v73;
      v82 = sub_100002CB4(v78, v79, &v129);

      *(v76 + 4) = v82;

      _os_log_impl(&_mh_execute_header, v74, v75, "telling sync engine about changes: %{public}s", v76, 0xCu);
      sub_1000032BC(v77);

      v83 = v81;
      v37 = v80;
      (*(v94 + 8))(v83, v95);
    }

    else
    {

      (*(v94 + 8))(v73, v95);
    }

    v84 = v96;
    v85 = *(v61 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine);

    CKSyncEngine.state.getter();

    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v37);

    if (v84)
    {
      return (v84)(0, 0);
    }
  }

  return result;
}

uint64_t sub_10004E32C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1000112B4(0, &qword_10006C8C0, CTCategory_ptr);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_10004E3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v34 = a5;
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = a3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v32 = v9;
      v19 = v18;
      v36 = a1;
      v37[0] = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v20 = String.init<A>(describing:)();
      v22 = sub_100002CB4(v20, v21, v37);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to synchronize usage: %{public}s", v17, 0xCu);
      sub_1000032BC(v19);

      a3 = v33;

      (*(v10 + 8))(v13, v32);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }

    a5 = v34;
  }

  v24 = *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_usageReporting + 8);
  v25 = *(v24 + 8);
  v38 = *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_usageReporting);
  v23 = v38;
  v39 = v24;
  sub_10001C8A8(v37);
  v25(v23, v24);
  DateInterval.duration.getter();
  v27 = v26;
  v28 = swift_allocObject();
  v29 = v35;
  v28[2] = v35;
  v28[3] = a5;
  v28[4] = a2;
  v30 = *(v24 + 24);
  sub_100011230(v29);

  v30(a3, sub_100053108, v28, v23, v24, v27);

  return sub_1000032BC(v37);
}

uint64_t sub_10004E6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void))
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  result = __chkstk_darwin(v11);
  v14 = &v25 - v13;
  if (!a3)
  {
    if (!a4)
    {
      return result;
    }

    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v9;
      v19 = v18;
      v28 = a4;
      v29 = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v20 = String.init<A>(describing:)();
      v22 = sub_100002CB4(v20, v21, &v29);
      v26 = v8;
      v23 = a5;
      v24 = v22;

      *(v17 + 4) = v24;
      a5 = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to fetch usage: %{public}s", v17, 0xCu);
      sub_1000032BC(v19);

      (*(v27 + 8))(v14, v26);
      if (!v23)
      {
      }
    }

    else
    {

      (*(v9 + 8))(v14, v8);
      if (!a5)
      {
      }
    }

    swift_errorRetain();
    a5(a4, 1);
  }

  result = sub_10004EADC();
  if (a5)
  {
    return (a5)(0, 0);
  }

  return result;
}

uint64_t sub_10004EADC()
{
  v2 = v1;
  v3 = v0;
  v98 = type metadata accessor for URL();
  v97 = *(v98 - 8);
  v4 = *(v97 + 64);
  __chkstk_darwin(v98);
  v142 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v134 = *(v144 - 8);
  v6 = *(v134 + 64);
  v7 = __chkstk_darwin(v144);
  v141 = (&v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v114 = (&v93 - v9);
  v10 = sub_100003720(&qword_10006BE78, &qword_100056C00);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v133 = &v93 - v12;
  v132 = type metadata accessor for UsageItemRecord.Source();
  v13 = *(v132 - 8);
  v14 = v13[8];
  __chkstk_darwin(v132);
  v131 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for UUID();
  v16 = *(v130 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v130);
  v129 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for UsageItemRecord.UsageType();
  v19 = *(v128 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v128);
  v136 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for UsageItemRecord();
  v22 = *(v143 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v143);
  v140 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v113 = &v93 - v27;
  v99 = v26;
  if (v26 >> 62)
  {
    goto LABEL_77;
  }

  result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
LABEL_3:
    v29 = 0;
    v30 = v26 & 0xC000000000000001;
    v94 = v26 & 0xFFFFFFFFFFFFFF8;
    v93 = v26 + 32;
    v127 = enum case for UsageItemRecord.UsageType.webDomain(_:);
    v126 = (v19 + 104);
    v125 = (v16 + 8);
    v124 = enum case for UsageItemRecord.Source.local(_:);
    v123 = (v13 + 13);
    v122 = (v22 + 16);
    v121 = (v22 + 56);
    v120 = enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:);
    v119 = (v134 + 104);
    v118 = (v22 + 8);
    v117 = v134 + 32;
    v147._rawValue = &_swiftEmptyArrayStorage;
    v104 = v3;
    v22 = v2;
    v96 = result;
    v95 = v26 & 0xC000000000000001;
    while (1)
    {
      if (v30)
      {
        v31 = v29;
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *(v94 + 16))
        {
          __break(1u);
          return result;
        }

        v31 = v29;
        v32 = *(v93 + 8 * v29);
      }

      v103 = v32;
      v33 = __OFADD__(v31, 1);
      v13 = (v31 + 1);
      if (v33)
      {
        goto LABEL_75;
      }

      v100 = v13;
      v34 = [v103 categoryUsage];
      sub_1000112B4(0, &qword_10006C898, USCategoryUsageReport_ptr);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v35 = v16;
      v106 = v16;
      if (v16 >> 62)
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
        v35 = v106;
        v13 = v142;
        if (!v36)
        {
          goto LABEL_68;
        }

LABEL_11:
        v37 = 0;
        v107 = v35 & 0xC000000000000001;
        v102 = v35 & 0xFFFFFFFFFFFFFF8;
        v101 = v35 + 32;
        v105 = v36;
        while (2)
        {
          if (v107)
          {
            v38 = v37;
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v37 >= *(v102 + 16))
            {
              goto LABEL_76;
            }

            v38 = v37;
            v39 = *(v101 + 8 * v37);
          }

          v112 = v39;
          v33 = __OFADD__(v38, 1);
          v13 = (v38 + 1);
          if (v33)
          {
            goto LABEL_73;
          }

          v108 = v13;
          v40 = v112;
          v135 = [v112 categoryIdentifier];
          v41 = [v40 applicationUsage];
          sub_1000112B4(0, &qword_10006C8A0, USApplicationUsageReport_ptr);
          v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v16 >> 62)
          {
            v13 = _CocoaArrayWrapper.endIndex.getter();
            if (v13)
            {
LABEL_20:
              v19 = 0;
              v139 = v16 & 0xC000000000000001;
              v116 = v16 & 0xFFFFFFFFFFFFFF8;
              v115 = v16 + 32;
              v137 = v13;
              v138 = v16;
              do
              {
                if (v139)
                {
                  v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  v33 = __OFADD__(v19++, 1);
                  if (v33)
                  {
                    goto LABEL_71;
                  }
                }

                else
                {
                  if (v19 >= *(v116 + 16))
                  {
                    goto LABEL_72;
                  }

                  v42 = *(v115 + 8 * v19);
                  v33 = __OFADD__(v19++, 1);
                  if (v33)
                  {
LABEL_71:
                    __break(1u);
LABEL_72:
                    __break(1u);
LABEL_73:
                    __break(1u);
LABEL_74:
                    __break(1u);
LABEL_75:
                    __break(1u);
LABEL_76:
                    __break(1u);
LABEL_77:
                    result = _CocoaArrayWrapper.endIndex.getter();
                    v26 = v99;
                    if (!result)
                    {
                      goto LABEL_78;
                    }

                    goto LABEL_3;
                  }
                }

                v145 = v42;
                v146 = v19;
                v13 = [v42 webUsageByDomain];
                sub_1000112B4(0, &qword_10006BF48, NSNumber_ptr);
                v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                v3 = 0;
                v43 = v16 + 64;
                v44 = 1 << *(v16 + 32);
                if (v44 < 64)
                {
                  v45 = ~(-1 << v44);
                }

                else
                {
                  v45 = -1;
                }

                v2 = v45 & *(v16 + 64);
                v46 = ((v44 + 63) >> 6);
                v149 = v46;
                v150 = v16;
                v148 = v16 + 64;
LABEL_32:
                v47 = v3;
                if (!v2)
                {
                  goto LABEL_34;
                }

                do
                {
                  v3 = v47;
LABEL_37:
                  v48 = __clz(__rbit64(v2));
                  v2 &= v2 - 1;
                  v49 = v48 | (v3 << 6);
                  v50 = (*(v150 + 48) + 16 * v49);
                  v51 = *v50;
                  v52 = v50[1];
                  v53 = *(*(v150 + 56) + 8 * v49);
                  v13 = type metadata accessor for UsageStore();

                  v54 = v53;
                  v16 = static UsageStore.shared.getter();
                  v19 = &v93;
                  __chkstk_darwin(v16);
                  *(&v93 - 2) = v51;
                  *(&v93 - 1) = v52;
                  v55 = v22;
                  v56 = UsageStore.contains(where:)();
                  v151 = v55;

                  if ((v56 & 1) == 0)
                  {
                    (*v126)(v136, v127, v128);
                    v110 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v109 = v57;

                    v111 = v54;
                    [v54 doubleValue];
                    v58 = v129;
                    UUID.init()();
                    UUID.uuidString.getter();
                    (*v125)(v58, v130);
                    (*v123)(v131, v124, v132);
                    v59 = v113;
                    UsageItemRecord.init(identifier:recordName:type:source:category:totalUsage:)();
                    static UsageStore.shared.getter();
                    v60 = v133;
                    v61 = v143;
                    (*v122)(v133, v59, v143);
                    (*v121)(v60, 0, 1, v61);
                    UsageStore.subscript.setter();

                    sub_1000112B4(0, &qword_10006BE80, CKRecordID_ptr);
                    v62 = UsageItemRecord.recordName.getter();
                    v64 = v63;
                    if (qword_10006B788 != -1)
                    {
                      swift_once();
                    }

                    v65 = qword_10006C960;
                    v66._countAndFlagsBits = v62;
                    v66._object = v64;
                    isa = CKRecordID.init(recordName:zoneID:)(v66, v65).super.isa;
                    *v114 = isa;
                    (*v119)();
                    v13 = isa;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v147._rawValue = sub_10001CCB8(0, *(v147._rawValue + 2) + 1, 1, v147._rawValue);
                    }

                    v19 = v111;
                    v69 = *(v147._rawValue + 2);
                    v68 = *(v147._rawValue + 3);
                    v16 = v69 + 1;
                    if (v69 >= v68 >> 1)
                    {
                      v147._rawValue = sub_10001CCB8(v68 > 1, v69 + 1, 1, v147._rawValue);
                    }

                    (*v118)(v113, v143);
                    rawValue = v147._rawValue;
                    *(v147._rawValue + 2) = v16;
                    (*(v134 + 32))(rawValue + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v69, v114, v144);
                    v22 = v151;
                    v43 = v148;
                    v46 = v149;
                    goto LABEL_32;
                  }

                  v47 = v3;
                  v22 = v151;
                  v43 = v148;
                  v46 = v149;
                }

                while (v2);
                while (1)
                {
LABEL_34:
                  v3 = v47 + 1;
                  if (__OFADD__(v47, 1))
                  {
                    __break(1u);
                    goto LABEL_71;
                  }

                  if (v3 >= v46)
                  {
                    break;
                  }

                  v2 = *(v43 + 8 * v3);
                  ++v47;
                  if (v2)
                  {
                    goto LABEL_37;
                  }
                }

                v13 = v137;
                v16 = v138;
                v19 = v146;
              }

              while (v146 != v137);
            }
          }

          else
          {
            v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v13)
            {
              goto LABEL_20;
            }
          }

          v71 = [v112 webUsage];
          sub_1000112B4(0, &qword_10006C8A8, USWebUsageReport_ptr);
          v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v3 >> 62)
          {
            v2 = _CocoaArrayWrapper.endIndex.getter();
            v13 = v142;
            if (v2)
            {
LABEL_50:
              v150 = type metadata accessor for UsageStore();
              if (v2 < 1)
              {
                goto LABEL_74;
              }

              v72 = 0;
              v73 = v3 & 0xC000000000000001;
              v145 = v3;
              v138 = v3 & 0xC000000000000001;
              v139 = v2;
              do
              {
                if (v73)
                {
                  v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v74 = *(v3 + 8 * v72 + 32);
                }

                v75 = v74;
                v16 = static UsageStore.shared.getter();
                v19 = &v93;
                __chkstk_darwin(v16);
                *(&v93 - 2) = v75;
                v76 = UsageStore.contains(where:)();

                if (v76)
                {
                }

                else
                {
                  v151 = v22;
                  v77 = [v75 domainIdentifier];
                  static String._unconditionallyBridgeFromObjectiveC(_:)();

                  (*v126)(v136, v127, v128);
                  v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v146 = v78;

                  v149 = v75;
                  [v75 totalUsageTime];
                  v79 = v129;
                  UUID.init()();
                  UUID.uuidString.getter();
                  (*v125)(v79, v130);
                  (*v123)(v131, v124, v132);
                  v80 = v140;
                  UsageItemRecord.init(identifier:recordName:type:source:category:totalUsage:)();
                  static UsageStore.shared.getter();
                  v81 = v133;
                  v82 = v143;
                  (*v122)(v133, v80, v143);
                  (*v121)(v81, 0, 1, v82);
                  UsageStore.subscript.setter();

                  sub_1000112B4(0, &qword_10006BE80, CKRecordID_ptr);
                  v83 = UsageItemRecord.recordName.getter();
                  v85 = v84;
                  if (qword_10006B788 != -1)
                  {
                    swift_once();
                  }

                  v86 = qword_10006C960;
                  v87._countAndFlagsBits = v83;
                  v87._object = v85;
                  v88 = CKRecordID.init(recordName:zoneID:)(v87, v86).super.isa;
                  *v141 = v88;
                  (*v119)();
                  v89 = v88;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v147._rawValue = sub_10001CCB8(0, *(v147._rawValue + 2) + 1, 1, v147._rawValue);
                  }

                  v22 = v151;
                  v3 = v145;
                  v73 = v138;
                  v2 = v139;
                  v19 = *(v147._rawValue + 2);
                  v90 = *(v147._rawValue + 3);
                  v16 = v19 + 1;
                  if (v19 >= v90 >> 1)
                  {
                    v147._rawValue = sub_10001CCB8(v90 > 1, v19 + 1, 1, v147._rawValue);
                  }

                  (*v118)(v140, v143);
                  v91 = v147._rawValue;
                  *(v147._rawValue + 2) = v16;
                  (*(v134 + 32))(v91 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v19, v141, v144);
                }

                ++v72;
                v13 = v142;
              }

              while (v2 != v72);
            }
          }

          else
          {
            v2 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v13 = v142;
            if (v2)
            {
              goto LABEL_50;
            }
          }

          v37 = v108;
          v3 = v104;
          v35 = v106;
          if (v108 == v105)
          {
            goto LABEL_68;
          }

          continue;
        }
      }

      v36 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v142;
      if (v36)
      {
        goto LABEL_11;
      }

LABEL_68:
      v16 = v35;

      result = v96;
      v29 = v100;
      v30 = v95;
      if (v100 == v96)
      {
        goto LABEL_79;
      }
    }
  }

LABEL_78:
  v147._rawValue = &_swiftEmptyArrayStorage;
  v22 = v2;
  v13 = v142;
LABEL_79:
  type metadata accessor for UsageStore();
  static UsageStore.shared.getter();
  Locations.familyControlsStore.getter();
  dispatch thunk of UsageStore.save(to:)();
  (*(v97 + 8))(v13, v98);
  if (v22)
  {
  }

  else
  {

    v92 = *(v3 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine);

    CKSyncEngine.state.getter();

    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v147);
  }
}

uint64_t sub_10004FD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UsageItemRecord.Source();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v21 - v16;
  if (v15 == a4 && a2 == a5 || (v18 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    UsageItemRecord.source.getter();
    (*(v10 + 104))(v14, enum case for UsageItemRecord.Source.local(_:), v9);
    v18 = static UsageItemRecord.Source.== infix(_:_:)();
    v19 = *(v10 + 8);
    v19(v14, v9);
    v19(v17, v9);
  }

  return v18 & 1;
}

uint64_t sub_10004FEFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for UsageItemRecord.Source();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = [a4 domainIdentifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 == a1 && v18 == a2)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = 0;
    if ((v20 & 1) == 0)
    {
      return v21 & 1;
    }
  }

  UsageItemRecord.source.getter();
  (*(v8 + 104))(v12, enum case for UsageItemRecord.Source.local(_:), v7);
  v21 = static UsageItemRecord.Source.== infix(_:_:)();
  v22 = *(v8 + 8);
  v22(v12, v7);
  v22(v14, v7);
  return v21 & 1;
}

void sub_1000500C4(void *a1, char a2, uint64_t a3, void *a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  v11 = *(a3 + 168);
  sub_10003319C(a4);
  if (a2)
  {
    v12 = a1;
    v13 = 1;
LABEL_8:
    a5(v12, v13);
    return;
  }

  if (!a1)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_8;
  }

  v14 = a1;
  sub_10004ABB4(a1, a4, a5, a6);

  sub_10001FF94(a1, 0);
}

uint64_t sub_100050190(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  if ((a2 & 1) == 0)
  {
    static Logger.syncEngine.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Successfully fetched all shared authorization zones", v27, 2u);
    }

    v28 = *(v10 + 8);
    v29 = v16;
    goto LABEL_8;
  }

  static Logger.syncEngine.getter();
  swift_errorRetain();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  sub_10001FFAC(a1, 1);
  if (!os_log_type_enabled(v17, v18))
  {

    v28 = *(v10 + 8);
    v29 = v14;
LABEL_8:
    v28(v29, v9);
    return sub_10005045C(a4, a5);
  }

  v19 = swift_slowAlloc();
  v32 = v9;
  v20 = v19;
  v31 = swift_slowAlloc();
  v33 = a1;
  v34 = v31;
  *v20 = 136446210;
  swift_errorRetain();
  sub_100003720(&qword_10006BF60, &qword_100056CA0);
  v21 = String.init<A>(describing:)();
  v23 = a5;
  v24 = sub_100002CB4(v21, v22, &v34);

  *(v20 + 4) = v24;
  a5 = v23;
  _os_log_impl(&_mh_execute_header, v17, v18, "Failed to fetch shared authorization zones: %{public}s", v20, 0xCu);
  sub_1000032BC(v31);

  (*(v10 + 8))(v14, v32);
  return sub_10005045C(a4, a5);
}

uint64_t sub_10005045C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100003720(&qword_10006C930, &qword_100057A20);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  v10 = sub_100003720(&qword_10006C8D0, &qword_1000579F0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v33 - v12;
  if (qword_10006B778 != -1)
  {
    swift_once();
  }

  v14 = qword_10006C950;
  v15 = *(v3 + 168);
  v16 = sub_100003720(&qword_10006C8D8, &qword_1000579F8);
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = sub_100051BC8(v14, v15, v13);
  sub_10000D5C4(v13, &qword_10006C8D0, &qword_1000579F0);
  v18 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine;
  v19 = *(v3 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine);
  *(v3 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine) = v17;

  v20 = *(v3 + 176);
  v21 = String._bridgeToObjectiveC()();
  LOBYTE(v20) = [v20 BOOLForKey:v21];

  if ((v20 & 1) == 0)
  {
    v22 = *(v3 + v18);

    CKSyncEngine.state.getter();

    sub_100003720(&qword_10006C888, &qword_1000579E8);
    v23 = type metadata accessor for CKSyncEngine.PendingDatabaseChange();
    v24 = *(v23 - 8);
    v25 = *(v24 + 72);
    v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100056C30;
    if (qword_10006B7A0 != -1)
    {
      swift_once();
    }

    v28 = qword_10006C978;
    *(v27 + v26) = qword_10006C978;
    (*(v24 + 104))(v27 + v26, enum case for CKSyncEngine.PendingDatabaseChange.saveZone(_:), v23);
    v29 = v28;
    CKSyncEngine.State.add(pendingDatabaseChanges:)(v27);
  }

  v30 = type metadata accessor for TaskPriority();
  (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v3;
  v31[5] = a1;
  v31[6] = a2;

  sub_1000516D8(0, 0, v9, &unk_100057A30, v31);
}

uint64_t sub_10005081C(uint64_t a1, void *a2, char a3, uint64_t a4, const char *a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    sub_10001FF94(a2, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = a2;
      v25 = v17;
      *v16 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v18 = String.init<A>(describing:)();
      v20 = sub_100002CB4(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, a5, v16, 0xCu);
      sub_1000032BC(v17);
    }

    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    v22 = *(a4 + 168);
    v23 = *(a4 + OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_sharedEngine);

    sub_1000315AC(a2);
  }
}

void sub_100050A58(void *a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  if (a2)
  {
    v6 = 1;
LABEL_8:
    a5(a1, v6);
    return;
  }

  if (!a1)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v11 = a1;
  sub_10004A2B8(a1, a4, a5, a6);

  sub_10001FF94(a1, 0);
}

void sub_100050AFC(uint64_t a1)
{
  if (qword_10006B800 != -1)
  {
    swift_once();
  }

  v2 = [qword_10006C9D8 sharedCloudDatabase];
  [v2 addOperation:a1];
}

uint64_t sub_100050B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for Logger();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  Changes = type metadata accessor for CKSyncEngine.FetchChangesOptions.Scope();
  v6[14] = Changes;
  v11 = *(Changes - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();
  ChangesOptions = type metadata accessor for CKSyncEngine.FetchChangesOptions();
  v6[17] = ChangesOptions;
  v14 = *(ChangesOptions - 8);
  v6[18] = v14;
  v15 = *(v14 + 64) + 15;
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_100050D14, 0, 0);
}

uint64_t sub_100050D14()
{
  sub_100003720(&qword_10006C018, &qword_100056D40);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100056C40;
  if (qword_10006B798 != -1)
  {
    v13 = v1;
    swift_once();
    v1 = v13;
  }

  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[8];
  v7 = qword_10006C970;
  *(v1 + 32) = qword_10006C970;
  *v4 = v1;
  (*(v3 + 104))(v4, enum case for CKSyncEngine.FetchChangesOptions.Scope.zoneIDs(_:), v5);
  v8 = v7;
  CKSyncEngine.FetchChangesOptions.init(scope:operationGroup:)();
  v9 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine;
  v0[20] = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_privateEngine;
  v0[21] = *(v6 + v9);
  v10 = async function pointer to CKSyncEngine.fetchChanges(_:)[1];

  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_100050E90;
  v12 = v0[19];

  return CKSyncEngine.fetchChanges(_:)(v12);
}

uint64_t sub_100050E90()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);

  if (v0)
  {
    v6 = sub_100051298;
  }

  else
  {
    v6 = sub_100050FC4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100050FC4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[23];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_locations;
  v4 = type metadata accessor for Locations();
  v0[5] = v4;
  v0[6] = &protocol witness table for Locations;
  v5 = sub_10001C8A8(v0 + 2);
  (*(*(v4 - 8) + 16))(v5, v2 + v3, v4);
  v6 = sub_1000426F0(v0 + 2);
  if (v1)
  {
    v8 = v0[9];
    v9 = v0[10];
    swift_errorRetain();
    v8(v1, 0, 1);
  }

  else
  {
    v26 = v7;
    v10 = v6;
    v11 = *(v0[8] + v0[20]);

    CKSyncEngine.state.getter();

    sub_100003720(&qword_10006BFD8, &qword_1000579E0);
    v12 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
    v13 = *(v12 - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100056C30;
    if (qword_10006B7A8 != -1)
    {
      swift_once();
    }

    v17 = qword_10006C980;
    *(v16 + v15) = qword_10006C980;
    v19 = v0[9];
    v18 = v0[10];
    (*(v13 + 104))(v16 + v15, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v12);
    v20 = v17;
    CKSyncEngine.State.add(pendingRecordZoneChanges:)(v16);

    sub_10000DA30(v10, v26);
    v19(v10, v26, 0);
    sub_100007644(v10, v26);
    sub_100007644(v10, v26);
  }

  v21 = v0[19];
  v22 = v0[16];
  v23 = v0[13];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100051298()
{
  v42 = v0;
  v1 = v0[23];
  v2 = v0[13];
  (*(v0[18] + 8))(v0[19], v0[17]);
  static Logger.syncEngine.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v6 = v0[12];
    v39 = v0[13];
    v7 = v0[11];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v41 = v9;
    *v8 = 136446210;
    v0[7] = v5;
    swift_errorRetain();
    sub_100003720(&qword_10006BF60, &qword_100056CA0);
    v10 = String.init<A>(describing:)();
    v12 = sub_100002CB4(v10, v11, &v41);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch changes for authorization zone: %{public}s", v8, 0xCu);
    sub_1000032BC(v9);

    (*(v6 + 8))(v39, v7);
  }

  else
  {
    v13 = v0[23];
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[11];

    (*(v15 + 8))(v14, v16);
  }

  v17 = v0[8];
  v18 = OBJC_IVAR____TtC19FamilyControlsAgent16FamilySyncEngine_locations;
  v19 = type metadata accessor for Locations();
  v0[5] = v19;
  v0[6] = &protocol witness table for Locations;
  v20 = sub_10001C8A8(v0 + 2);
  (*(*(v19 - 8) + 16))(v20, v17 + v18, v19);
  v21 = sub_1000426F0(v0 + 2);
  v40 = v22;
  v23 = v21;
  v24 = *(v0[8] + v0[20]);

  CKSyncEngine.state.getter();

  sub_100003720(&qword_10006BFD8, &qword_1000579E0);
  v25 = type metadata accessor for CKSyncEngine.PendingRecordZoneChange();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100056C30;
  if (qword_10006B7A8 != -1)
  {
    swift_once();
  }

  v30 = qword_10006C980;
  *(v29 + v28) = qword_10006C980;
  v32 = v0[9];
  v31 = v0[10];
  (*(v26 + 104))(v29 + v28, enum case for CKSyncEngine.PendingRecordZoneChange.saveRecord(_:), v25);
  v33 = v30;
  CKSyncEngine.State.add(pendingRecordZoneChanges:)(v29);

  sub_10000DA30(v23, v40);
  v32(v23, v40, 0);
  sub_100007644(v23, v40);
  sub_100007644(v23, v40);
  v34 = v0[19];
  v35 = v0[16];
  v36 = v0[13];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1000516D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003720(&qword_10006C930, &qword_100057A20);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001DD64(a3, v27 - v11, &qword_10006C930, &qword_100057A20);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000D5C4(v12, &qword_10006C930, &qword_100057A20);
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

      sub_10000D5C4(a3, &qword_10006C930, &qword_100057A20);

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

  sub_10000D5C4(a3, &qword_10006C930, &qword_100057A20);
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

uint64_t sub_1000519D8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100051AD0;

  return v7(a1);
}

uint64_t sub_100051AD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100051BC8(void *a1, void *a2, uint64_t a3)
{
  v125 = a3;
  v128 = a1;
  v129 = a2;
  v3 = type metadata accessor for CKSyncEngine.Configuration();
  v132 = *(v3 - 8);
  v133 = v3;
  v4 = *(v132 + 64);
  v5 = __chkstk_darwin(v3);
  v131 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v130 = &v107 - v7;
  v8 = type metadata accessor for CKSyncEngine.State.Serialization();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v113 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for Logger();
  v118 = *(v123 - 8);
  v12 = *(v118 + 64);
  v13 = __chkstk_darwin(v123);
  v117 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v121 = &v107 - v16;
  __chkstk_darwin(v15);
  v18 = &v107 - v17;
  v19 = sub_100003720(&qword_10006C8D0, &qword_1000579F0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v107 - v21;
  v23 = sub_100003720(&qword_10006C8D8, &qword_1000579F8);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v107 - v26;
  v28 = sub_100003720(&qword_10006C248, &unk_100057A00);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v114 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v127 = &v107 - v33;
  v34 = __chkstk_darwin(v32);
  v120 = &v107 - v35;
  v36 = __chkstk_darwin(v34);
  v119 = &v107 - v37;
  v38 = __chkstk_darwin(v36);
  v112 = &v107 - v39;
  __chkstk_darwin(v38);
  v41 = &v107 - v40;
  v126 = sub_1000535B4(&qword_10006C8E0, _s10DataSourceCMa);
  v122 = v9;
  v42 = v9[7];
  v124 = v8;
  v116 = v9 + 7;
  v115 = v42;
  v42(v41, 1, 1, v8);
  sub_10001DD64(v125, v22, &qword_10006C8D0, &qword_1000579F0);
  v43 = *(v24 + 48);
  v125 = v23;
  if (v43(v22, 1, v23) == 1)
  {
    v44 = &qword_10006C8D0;
    v45 = &qword_1000579F0;
    v46 = v22;
LABEL_23:
    sub_10000D5C4(v46, v44, v45);
    goto LABEL_24;
  }

  sub_1000534F8(v22, v27, &qword_10006C8D8, &qword_1000579F8);
  v47 = [objc_opt_self() defaultManager];
  URL.path(percentEncoded:)(1);
  v48 = String._bridgeToObjectiveC()();

  v49 = [v47 fileExistsAtPath:v48];

  v50 = v27;
  if ((v49 & 1) == 0)
  {
    v68 = 0;
    v57 = v124;
    v58 = v121;
    v59 = v122;
LABEL_8:
    v61 = v119;
    v60 = v120;
    goto LABEL_15;
  }

  static Logger.syncEngine.getter();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "Migrating deprecated sync metadata to sync state serialization", v53, 2u);
  }

  v54 = v118 + 8;
  v111 = *(v118 + 8);
  v111(v18, v123);
  v55 = Data.init(contentsOf:options:)();
  v56 = v124;
  v63 = v62;
  v110 = v54;
  v64 = v55;
  sub_10000DA30(v55, v62);
  v65 = v113;
  CKSyncEngine.State.Serialization.init(deprecatedData:)();
  v66 = v112;
  (v122)[2](v112, v65, v56);
  v115(v66, 0, 1, v56);
  v67 = *(v125 + 48);
  v109 = v27;
  v68 = 0;
  sub_100037438(v66, &v27[v67]);
  v108 = v63;
  sub_10000D5C4(v66, &qword_10006C248, &unk_100057A00);
  v50 = v109;
  URL.path(percentEncoded:)(1);
  v69 = String._bridgeToObjectiveC()();

  v135 = 0;
  v70 = [v47 removeItemAtPath:v69 error:&v135];

  if (v70)
  {
    v71 = v135;
    sub_10000D5C4(v41, &qword_10006C248, &unk_100057A00);
    sub_100007644(v64, v108);
    v59 = v122;
    v57 = v124;
    (v122)[4](v41, v113, v124);
    v115(v41, 0, 1, v57);
    v58 = v121;
    goto LABEL_8;
  }

  v72 = v135;
  v73 = _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_100007644(v64, v108);
  v57 = v124;
  (v122[1])(v113, v124);
  v113 = 0;
  v74 = v110;
  v75 = v117;
  static Logger.syncEngine.getter();
  swift_errorRetain();
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v135 = v79;
    *v78 = 136446210;
    v134 = v73;
    swift_errorRetain();
    sub_100003720(&qword_10006BF60, &qword_100056CA0);
    v80 = String.init<A>(describing:)();
    v82 = sub_100002CB4(v80, v81, &v135);
    v110 = v74;
    v83 = v47;
    v84 = v82;
    v85 = v124;

    *(v78 + 4) = v84;
    v47 = v83;
    _os_log_impl(&_mh_execute_header, v76, v77, "Failed to migrate deprecated sync metadata: %{public}s", v78, 0xCu);
    sub_1000032BC(v79);

    v57 = v85;

    v111(v117, v123);
  }

  else
  {

    v111(v75, v123);
  }

  v58 = v121;
  v59 = v122;
  v61 = v119;
  v60 = v120;
  v68 = v113;
LABEL_15:
  sub_10001DD64(v41, v61, &qword_10006C248, &unk_100057A00);
  if ((v59[6])(v61, 1, v57) != 1)
  {
    sub_10000D5C4(v50, &qword_10006C8D8, &qword_1000579F8);

    v44 = &qword_10006C248;
    v45 = &unk_100057A00;
    v46 = v61;
    goto LABEL_23;
  }

  v122 = v47;
  sub_10000D5C4(v61, &qword_10006C248, &unk_100057A00);
  _s10DataSourceCMa();
  v86 = *(v125 + 48);
  sub_100033928(v50 + v86, v60);
  if (v68)
  {
    v87 = v68;
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = v50;
      v92 = swift_slowAlloc();
      v135 = v92;
      *v90 = 136446210;
      v134 = v87;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v93 = String.init<A>(describing:)();
      v95 = sub_100002CB4(v93, v94, &v135);

      *(v90 + 4) = v95;
      v57 = v124;
      _os_log_impl(&_mh_execute_header, v88, v89, "Failed to read sync serialization: %{public}s", v90, 0xCu);
      sub_1000032BC(v92);
      v50 = v91;

      (*(v118 + 8))(v121, v123);
    }

    else
    {

      (*(v118 + 8))(v58, v123);
    }

    v96 = v114;
    v115(v114, 1, 1, v57);
    sub_100037438(v96, v50 + v86);

    sub_10000D5C4(v96, &qword_10006C248, &unk_100057A00);
    v44 = &qword_10006C8D8;
    v45 = &qword_1000579F8;
    v46 = v50;
    goto LABEL_23;
  }

  sub_10000D5C4(v50, &qword_10006C8D8, &qword_1000579F8);
  sub_10000D5C4(v41, &qword_10006C248, &unk_100057A00);
  sub_1000534F8(v60, v41, &qword_10006C248, &unk_100057A00);
LABEL_24:
  sub_10001DD64(v41, v127, &qword_10006C248, &unk_100057A00);
  v97 = v128;
  v98 = v129;
  v99 = v130;
  CKSyncEngine.Configuration.init(database:stateSerialization:delegate:)();
  static FamilyControlsService.nameAPS.getter();
  CKSyncEngine.Configuration.apsMachServiceName.setter();
  v100 = v132;
  v101 = v133;
  (*(v132 + 16))(v131, v99, v133);
  v102 = type metadata accessor for CKSyncEngine();
  v103 = *(v102 + 48);
  v104 = *(v102 + 52);
  swift_allocObject();
  v105 = CKSyncEngine.init(_:)();
  (*(v100 + 8))(v99, v101);
  sub_10000D5C4(v41, &qword_10006C248, &unk_100057A00);
  return v105;
}

uint64_t sub_1000529D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v6 = 0;
    for (i = (a1 + 32); ; i += 5)
    {
      v8 = i[4];
      sub_100007504(i, i[3]);
      v9 = dispatch thunk of FamilyMemberable.altDSID.getter();
      if (v10)
      {
        if (a3)
        {
          if (v9 == a2 && v10 == a3)
          {

            return v6;
          }

          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v12)
          {
            return v6;
          }
        }

        else
        {
        }
      }

      else if (!a3)
      {
        return v6;
      }

      if (v3 == ++v6)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t sub_100052AE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a1;
  v24 = a2;
  result = sub_1000529D8(v6, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return v5[2];
  }

  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_38;
  }

  v12 = v5 + 2;
  v11 = v5[2];
  if (v10 == v11)
  {
    return v9;
  }

  v13 = 40 * result + 72;
  while (v10 < v11)
  {
    sub_10001D958(v5 + v13, &v22);
    sub_100007504(&v22, v23);
    v14 = dispatch thunk of FamilyMemberable.altDSID.getter();
    if (!v15)
    {
      if (!a3)
      {
        goto LABEL_32;
      }

LABEL_23:
      result = sub_1000032BC(&v22);
      if (v10 != v9)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    if (!a3)
    {

      goto LABEL_23;
    }

    if (v14 == v24 && v15 == a3)
    {

LABEL_32:
      result = sub_1000032BC(&v22);
      goto LABEL_9;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = sub_1000032BC(&v22);
    if ((v17 & 1) == 0)
    {
      if (v10 != v9)
      {
LABEL_24:
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_34;
        }

        v18 = *v12;
        if (v9 >= *v12)
        {
          goto LABEL_35;
        }

        result = sub_10001D958(&v5[5 * v9 + 4], &v22);
        if (v10 >= v18)
        {
          goto LABEL_36;
        }

        sub_10001D958(v5 + v13, v21);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_10001CFDC(v5);
        }

        v19 = &v5[5 * v9];
        sub_1000032BC(v19 + 4);
        result = sub_10001D888(v21, (v19 + 4));
        if (v10 >= v5[2])
        {
          goto LABEL_37;
        }

        sub_1000032BC((v5 + v13));
        result = sub_10001D888(&v22, v5 + v13);
        *a1 = v5;
      }

LABEL_8:
      ++v9;
    }

LABEL_9:
    ++v10;
    v12 = v5 + 2;
    v11 = v5[2];
    v13 += 40;
    if (v10 == v11)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100052D04(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100052D10(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100052D24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100052D3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100052D8C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052DC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100052E0C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052E58()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100052EE4()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100052F38()
{
  v1 = type metadata accessor for DateInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10005301C(uint64_t a1)
{
  v3 = *(type metadata accessor for DateInterval() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_10004E3E0(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1000530C0()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100053108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  return sub_10004E6E4(a1, a2, a3, a4, *(v4 + 16));
}

uint64_t sub_10005313C()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100053198(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000531F0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100053244()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100053294()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000532E8()
{
  v1 = *(v0 + 24);

  sub_10001FFAC(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100053360(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10005336C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100053470()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000534F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003720(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100053570()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000535B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000535FC()
{
  sub_1000032BC((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100053648()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100053690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003411C;

  return sub_100050B98(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100053758(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100038104;

  return sub_1000519D8(a1, v5);
}

uint64_t sub_100053810(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10003411C;

  return sub_1000519D8(a1, v5);
}