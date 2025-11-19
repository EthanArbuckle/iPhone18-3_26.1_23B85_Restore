void sub_100014CE4(uint64_t a1, unint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_identFlatList];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 40);
    while (1)
    {
      v9 = *(v8 - 1) == a1 && *v8 == a2;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v7;
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }

    sub_100015074(*&v2[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent], *&v2[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent + 8], &v24);
    if (v25)
    {
      v26[0] = v24;
      v26[1] = v25;
      sub_1000070C0(v26, v23, &qword_10003AD28, &qword_1000289D0);
      sub_100007128(&v24, &qword_10003ACB0, &qword_100028E20);
      if (v7 > 0xFF)
      {
        __break(1u);
        goto LABEL_27;
      }

      dispatch thunk of CAFCameraButtonObservable.selectedEntryIndex.setter();
      sub_100007128(v26, &qword_10003AD28, &qword_1000289D0);
    }

    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000036BC(v18, qword_10003CE48);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_22;
    }

    v21 = swift_slowAlloc();
    *v21 = 16777472;
    if (v7 <= 0xFF)
    {
      if ((((v7 + 1) >> 8) & 1) == 0)
      {
        v21[4] = v7 + 1;
        _os_log_impl(&_mh_execute_header, v19, v20, "[CameraButtonGroup] promoteChild updating selectedEntryIndex %hhu", v21, 5u);

LABEL_22:

        return;
      }

      goto LABEL_28;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

LABEL_9:
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000036BC(v10, qword_10003CE48);

  v11 = v2;
  oslog = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v12))
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10000B720(a1, a2, &v24);
    *(v13 + 12) = 2080;
    v14 = *&v11[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_childrenIdents];
    v15 = Array.description.getter();
    v17 = sub_10000B720(v15, v16, &v24);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, oslog, v12, "[CameraButtonGroup] promoteChild failed finding child %s in parent child list %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

void sub_100015074(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *&v3[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_model];
  v8 = OBJC_IVAR____TtC9CarCamera11CameraModel_buttonDict;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (!*(v9 + 16))
  {
LABEL_5:
    v29 = OBJC_IVAR____TtC9CarCamera11CameraModel_serviceDict;
    swift_beginAccess();
    v30 = *(v7 + v29);
    if (*(v30 + 16))
    {

      v31 = sub_10000F838(a1, a2);
      if (v32)
      {
        v49 = *(*(v30 + 56) + 8 * v31);

        sub_100015CC0();
        sub_100015D14(&qword_10003AF80, sub_100015CC0);
        CAFObserved<>.observable.getter();
        type metadata accessor for ButtonBarLayout(0);
        sub_100015D14(&qword_10003A598, type metadata accessor for ButtonBarLayout);
        *&v51 = EnvironmentObject.init()();
        *(&v51 + 1) = v33;
        KeyPath = swift_getKeyPath();
        type metadata accessor for CameraModel();
        sub_100015D14(&qword_10003AE98, type metadata accessor for CameraModel);
        v34 = EnvironmentObject.init()();
        v48 = v35;
        v36 = v35;
        type metadata accessor for CAFCameraButtonObservable();
        sub_100015D14(&qword_10003AF88, &type metadata accessor for CAFCameraButtonObservable);
        v37 = v4;
        v47 = ObservedObject.init(wrappedValue:)();
        v19 = v38;
        State.init(wrappedValue:)();
        v46 = a2;
        v27 = *(&v58 + 1);
        *&v54[0] = v47;
        *(&v54[0] + 1) = v19;
        v54[1] = v51;
        *&v55 = KeyPath;
        BYTE8(v55) = 0;
        *&v56 = v34;
        *(&v56 + 1) = v36;
        *v57 = v4;
        v57[8] = v58;
        *&v57[16] = *(&v58 + 1);
        v57[24] = 0;
        v58 = v54[0];
        v59 = v51;
        *&v62[9] = *&v57[9];
        v61 = v56;
        *v62 = *v57;
        v60 = v55;
        v23 = *(&v55 + 1);
        v26 = *&v57[8];
        swift_beginAccess();
        sub_10000695C(v54, v53);
        sub_10000695C(v54, v53);

        v39 = *(v7 + v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53[0] = *(v7 + v8);
        *(v7 + v8) = 0x8000000000000000;
        sub_100016648(&v58, a1, v46, isUniquelyReferenced_nonNull_native);

        *(v7 + v8) = v53[0];
        swift_endAccess();

        sub_100009C64(v54);
        v18 = v47;
        v25 = v48;
        v24 = v34;
        v22 = KeyPath;
        v21 = *(&v51 + 1);
        v20 = v51;
LABEL_14:
        v28 = 0;
        goto LABEL_15;
      }
    }

    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_1000036BC(v41, qword_10003CE48);

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *&v58 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_10000B720(a1, a2, &v58);
      _os_log_impl(&_mh_execute_header, v42, v43, "[CameraButtonGroup] button failed  %s", v44, 0xCu);
      sub_100008EDC(v45);
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v4 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_14;
  }

  v10 = *(v7 + v8);

  v11 = sub_10000F838(a1, a2);
  if ((v12 & 1) == 0)
  {

    goto LABEL_5;
  }

  v13 = (*(v9 + 56) + 96 * v11);
  v14 = v13[1];
  v58 = *v13;
  v59 = v14;
  v16 = v13[3];
  v15 = v13[4];
  v17 = v13[2];
  *&v62[9] = *(v13 + 73);
  v61 = v16;
  *v62 = v15;
  v60 = v17;
  sub_10000695C(&v58, v54);

  v19 = *(&v58 + 1);
  v18 = v58;
  v21 = *(&v59 + 1);
  v20 = v59;
  v23 = *(&v60 + 1);
  v22 = v60;
  v25 = *(&v61 + 1);
  v24 = v61;
  v4 = *v62;
  v26 = *&v62[8];
  v27 = *&v62[16];
  v28 = v62[24];
LABEL_15:
  *a3 = v18;
  *(a3 + 8) = v19;
  *(a3 + 16) = v20;
  *(a3 + 24) = v21;
  *(a3 + 32) = v22;
  *(a3 + 40) = v23;
  *(a3 + 48) = v24;
  *(a3 + 56) = v25;
  *(a3 + 64) = v4;
  *(a3 + 72) = v26;
  *(a3 + 80) = v27;
  *(a3 + 88) = v28;
}

uint64_t sub_1000155CC(uint64_t a1, unint64_t a2)
{
  if (!*(*(v2 + OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_childrenIdents) + 16))
  {
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000036BC(v16, qword_10003CE48);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_16;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000B720(a1, a2, &v19);
    v15 = "[CameraButtonGroup] menu group has no children %s";
    goto LABEL_15;
  }

  sub_10001441C(&v19);
  v5 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
  v7 = v6;
  sub_100009C64(&v19);
  if (v5 == a1 && v7 == a2)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      if (qword_10003A258 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000036BC(v10, qword_10003CE48);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_16;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_10000B720(a1, a2, &v18);
      v15 = "[CameraButtonGroup] already showing children of %s";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v11, v12, v15, v13, 0xCu);
      sub_100008EDC(v14);

LABEL_16:

      return 0;
    }
  }

  return 1;
}

id sub_100015890()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraButtonGroup();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100015958@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CameraButtonGroup();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

char *sub_100015994(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026FC(&qword_10003A588, &qword_100028000);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100015AB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026FC(&qword_10003AF98, &qword_1000289E0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100015BB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026FC(&qword_10003AF90, &qword_1000289D8);
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

unint64_t sub_100015CC0()
{
  result = qword_10003ACF8;
  if (!qword_10003ACF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003ACF8);
  }

  return result;
}

uint64_t sub_100015D14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100015D5C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100015DE8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100015DFC(uint64_t result)
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

  result = sub_100015994(result, v11, 1, v3);
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

uint64_t sub_100015EF4(uint64_t result)
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

  result = sub_100015BB4(result, v11, 1, v3);
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

uint64_t sub_100015FE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000026FC(&qword_10003ACE8, &qword_100028488);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v42 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 96 * v22;
      if (v43)
      {
        v46 = *v26;
        v47 = *(v26 + 16);
        v44 = *(v26 + 8);
        v45 = *(v26 + 24);
        v49 = *(v26 + 32);
        v27 = *(v26 + 40);
        v48 = *(v26 + 56);
        v51 = *(v26 + 64);
        v52 = *(v26 + 48);
        v50 = *(v26 + 80);
        v53 = *(v26 + 88);
        v54 = *(v26 + 72);
      }

      else
      {
        v28 = *(v26 + 32);
        v29 = *(v26 + 48);
        v30 = *(v26 + 64);
        *&v58[9] = *(v26 + 73);
        v57 = v29;
        *v58 = v30;
        v56[2] = v28;
        v31 = *(v26 + 16);
        v56[0] = *v26;
        v56[1] = v31;
        v53 = v58[24];
        v54 = BYTE8(v30);
        v50 = *&v58[16];
        v51 = v30;
        v48 = *(&v57 + 1);
        v52 = v57;
        v49 = v28;
        v27 = BYTE8(v28);
        v46 = *&v56[0];
        v47 = v31;
        v44 = *(&v56[0] + 1);
        v45 = *(&v31 + 1);

        sub_10000695C(v56, v55);
      }

      v32 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(v56[0]) = v27;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 96 * v16;
      *v18 = v46;
      *(v18 + 8) = v44;
      *(v18 + 16) = v47;
      *(v18 + 24) = v45;
      *(v18 + 32) = v49;
      *(v18 + 40) = v27;
      *(v18 + 48) = v52;
      *(v18 + 56) = v48;
      *(v18 + 64) = v51;
      *(v18 + 72) = v54;
      *(v18 + 80) = v50;
      *(v18 + 88) = v53;
      ++*(v8 + 16);
      v5 = v42;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v10, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1000163A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1000026FC(&qword_10003ACE0, &qword_100028480);
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

uint64_t sub_100016648(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000F838(a2, a3);
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
      sub_100015FE8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10000F838(a2, a3);
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
      sub_1000167E8();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 96 * v11;

    return sub_1000169B8(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = (v22[7] + 96 * v11);
  v27 = a1[1];
  *v26 = *a1;
  v26[1] = v27;
  v28 = a1[2];
  v29 = a1[3];
  v30 = a1[4];
  *(v26 + 73) = *(a1 + 73);
  v26[3] = v29;
  v26[4] = v30;
  v26[2] = v28;
  v31 = v22[2];
  v15 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v32;
}

void *sub_1000167E8()
{
  v1 = v0;
  sub_1000026FC(&qword_10003ACE8, &qword_100028488);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_10000695C(&v33, &v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = *(v2 + 56);
      v19 = (*(v2 + 48) + 16 * v16);
      v21 = *v19;
      v20 = v19[1];
      v16 *= 96;
      v22 = *(v18 + v16 + 32);
      v23 = *(v18 + v16 + 48);
      v24 = *(v18 + v16 + 64);
      *(v37 + 9) = *(v18 + v16 + 73);
      v36 = v23;
      v37[0] = v24;
      v25 = *(v18 + v16 + 16);
      v33 = *(v18 + v16);
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v21;
      v26[1] = v20;
      v27 = (*(v4 + 56) + v16);
      v28 = v34;
      *v27 = v33;
      v27[1] = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37[0];
      *(v27 + 73) = *(v37 + 9);
      v27[3] = v30;
      v27[4] = v31;
      v27[2] = v29;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

id sub_100016A14()
{
  v1 = v0;
  sub_1000026FC(&qword_10003ACE0, &qword_100028480);
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

id sub_100016BA8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000036BC(v10, qword_10003CE48);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_10000B720(a1, a2, &v21);
    _os_log_impl(&_mh_execute_header, v11, v12, "[CameraButtonGroup] init %s", v13, 0xCu);
    sub_100008EDC(v14);
  }

  *&v5[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_model] = a4;
  v15 = &v5[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_parentIdent];
  *v15 = a1;
  v15[1] = a2;
  *&v5[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_childrenIdents] = a3;
  sub_1000026FC(&qword_10003AF90, &qword_1000289D8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100028940;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  v21 = v16;

  v17 = a4;

  sub_100015EF4(v18);
  *&v5[OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_identFlatList] = v21;
  v20.receiver = v5;
  v20.super_class = type metadata accessor for CameraButtonGroup();
  return objc_msgSendSuper2(&v20, "init");
}

uint64_t sub_100016DC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100016E80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CameraCloseButton()
{
  result = qword_10003AFF8;
  if (!qword_10003AFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100016F70()
{
  sub_100017038();
  if (v0 <= 0x3F)
  {
    sub_1000170CC();
    if (v1 <= 0x3F)
    {
      sub_100017160();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UUID();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100017038()
{
  if (!qword_10003B008)
  {
    type metadata accessor for CAFCameraGeneralObservable();
    sub_10001D7CC(&qword_10003AD18, &type metadata accessor for CAFCameraGeneralObservable);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10003B008);
    }
  }
}

void sub_1000170CC()
{
  if (!qword_10003B010)
  {
    type metadata accessor for LayoutSize();
    sub_10001D7CC(&qword_10003AD10, type metadata accessor for LayoutSize);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10003B010);
    }
  }
}

void sub_100017160()
{
  if (!qword_10003B018)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10003B018);
    }
  }
}

__n128 sub_1000171C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000171E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_10001722C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000172B0@<X0>(_BYTE *a1@<X8>)
{
  sub_100001DCC();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100017300(char *a1)
{
  v2 = *a1;
  sub_100001DCC();
  return EnvironmentValues.subscript.setter();
}

void sub_100017370()
{
  v1 = v0;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000036BC(v2, qword_10003CE48);
  sub_10000695C(v0, v37);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  sub_100009C64(v0);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37[0] = v6;
    *v5 = 136315138;
    v7 = *(v0 + 8);
    v8 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
    v10 = sub_10000B720(v8, v9, v37);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "[CameraActionButton] %s sending action", v5, 0xCu);
    sub_100008EDC(v6);
  }

  v11 = *(v1 + 8);
  v12 = CAFCameraButtonObservable.observed.getter();
  v13 = [v12 hasButtonAction];

  if (v13)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "[CameraActionButton] sendAction to vehicle with .performAction", v16, 2u);
    }

    dispatch thunk of CAFCameraButtonObservable.buttonAction.setter();
    return;
  }

  v17 = dispatch thunk of CAFCameraButtonObservable.contentURLAction.getter();
  if (!v18)
  {
LABEL_23:
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "[CameraActionButton] nothing to do";
LABEL_29:
      _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);
    }

LABEL_30:

    return;
  }

  v19 = v17;
  v20 = v18;
  v21 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    goto LABEL_23;
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_10000B720(v19, v20, v37);
    _os_log_impl(&_mh_execute_header, v22, v23, "[CameraActionButton] RequestContent URL button pressed (URL: %s)", v24, 0xCu);
    sub_100008EDC(v25);
  }

  v26 = [objc_opt_self() sharedApplication];
  v27 = [v26 connectedScenes];

  sub_10001C23C();
  sub_10001D7CC(&qword_10003B120, sub_10001C23C);
  v28 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v29 = sub_1000193BC(v28);

  if (!v29)
  {

    goto LABEL_27;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

LABEL_27:
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = "[CameraActionButton] RequestContent failed, missing window scene.";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (qword_10003A298 != -1)
  {
    swift_once();
  }

  if (*(qword_10003CEB8 + OBJC_IVAR____TtC9CarCamera16CameraCAFManager_requestContentManager))
  {
    v30 = swift_allocObject();
    *(v30 + 16) = v19;
    *(v30 + 24) = v20;
    v31 = *(v1 + 48);
    *(v30 + 64) = *(v1 + 32);
    *(v30 + 80) = v31;
    *(v30 + 96) = *(v1 + 64);
    *(v30 + 105) = *(v1 + 73);
    v32 = *(v1 + 16);
    *(v30 + 32) = *v1;
    *(v30 + 48) = v32;
    sub_10000695C(v1, v37);

    dispatch thunk of CAFUIRequestContentManager.open(contentURLString:in:completion:)();
  }
}

uint64_t sub_100017908(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x656C63726943;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0x80000001000297C0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x656C63726943;
  }

  if (*a2)
  {
    v7 = 0x80000001000297C0;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000179B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100017A34()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100017AA4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100017B24@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1000354F0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100017B84(unint64_t *a1@<X8>)
{
  v2 = 0x80000001000297C0;
  v3 = 0x656C63726943;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_100017BC4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RoundedRectangle();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v8 = *(v5 + 20);
    v9 = enum case for RoundedCornerStyle.continuous(_:);
    v10 = type metadata accessor for RoundedCornerStyle();
    (*(*(v10 - 8) + 104))(&v7[v8], v9, v10);
    __asm { FMOV            V0.2D, #8.0 }

    *v7 = _Q0;
    RoundedRectangle.path(in:)();
    v20 = v22;
    v21 = v23;
    v16 = v24;
    result = sub_10001BF20(v7, &type metadata accessor for RoundedRectangle);
    v19 = v20;
    v18 = v21;
  }

  else
  {
    result = Circle.path(in:)();
    v18 = v23;
    v19 = v22;
    v16 = v24;
  }

  *a1 = v19;
  *(a1 + 16) = v18;
  *(a1 + 32) = v16;
  return result;
}

void (*sub_100017D54(uint64_t *a1))(void *a1)
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
  return sub_100017DDC;
}

void sub_100017DDC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100017E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001BF80();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100017E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001BF80();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100017EF0(uint64_t a1)
{
  v2 = sub_10001BF80();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_100017F3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_1000026FC(&qword_10003B090, &qword_100028D30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v31 - v6;
  v8 = sub_1000026FC(&qword_10003B0E8, &qword_100028DB8);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  v13 = swift_allocObject();
  v14 = v2[3];
  v13[3] = v2[2];
  v13[4] = v14;
  v13[5] = v2[4];
  *(v13 + 89) = *(v2 + 73);
  v15 = v2[1];
  v13[1] = *v2;
  v13[2] = v15;
  v35 = v2;
  sub_10000695C(v2, &v40);
  sub_1000026FC(&qword_10003B098, &qword_100028D38);
  sub_10001A35C();
  Button.init(action:label:)();
  Solarium.init()();
  v16 = sub_1000026FC(&qword_10003B0F0, &qword_100028DC0);
  v17 = sub_100007210(&qword_10003B0C0, &qword_10003B090, &qword_100028D30);
  v40 = v3;
  v41 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.staticIf<A, B, C>(_:then:else:)();
  (*(v4 + 8))(v7, v3);
  v18 = sub_100018B04();
  v36 = v18 & 1;
  v19 = vdupq_n_s64(v18);
  *v19.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v19, xmmword_100028A00), vshlq_u64(v19, xmmword_1000289F0))), 0x1000100010001);
  v37 = vuzp1_s8(*v19.i8, *v19.i8).u32[0];
  v38 = BYTE5(v18) & 1;
  v39 = BYTE6(v18) & 1;
  v40 = v3;
  v41 = &type metadata for Solarium;
  v42 = v16;
  v43 = v3;
  v44 = v17;
  v45 = &protocol witness table for Solarium;
  v46 = OpaqueTypeConformance2;
  v47 = v17;
  swift_getOpaqueTypeConformance2();
  sub_10001A4C0();
  v20 = v34;
  v21 = v32;
  View.buttonStyle<A>(_:)();
  (*(v33 + 8))(v12, v21);
  LOBYTE(v7) = sub_100018B04();
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v7 & 1;
  v24 = (v20 + *(sub_1000026FC(&qword_10003B0F8, &qword_100028DC8) + 36));
  *v24 = KeyPath;
  v24[1] = sub_10001D830;
  v24[2] = v23;
  v25 = swift_allocObject();
  v26 = v2[3];
  v25[3] = v2[2];
  v25[4] = v26;
  v25[5] = v2[4];
  *(v25 + 89) = *(v2 + 73);
  v27 = v2[1];
  v25[1] = *v2;
  v25[2] = v27;
  v28 = (v20 + *(sub_1000026FC(&qword_10003B100, &qword_100028DD0) + 36));
  *v28 = sub_10001C068;
  v28[1] = v25;
  return sub_10000695C(v2, &v40);
}

void sub_1000183D8()
{
  v1 = v0;
  v2 = *(v0 + 48);
  v49 = *(v0 + 32);
  v50 = v2;
  v51[0] = *(v0 + 64);
  *(v51 + 9) = *(v0 + 73);
  v3 = *(v0 + 16);
  v47 = *v0;
  v48 = v3;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000036BC(v4, qword_10003CE48);
  sub_10000695C(v0, v45);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  sub_100009C64(v0);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v45[0] = v8;
    *v7 = 136315138;
    v9 = *(v0 + 8);
    v10 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
    v12 = sub_10000B720(v10, v11, v45);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "[CameraActionButton] performCameraAction entry [%s]", v7, 0xCu);
    sub_100008EDC(v8);
  }

  v13 = v1[2];
  if (!v13)
  {
    v37 = v1[3];
    type metadata accessor for ButtonBarLayout(0);
    sub_10001D7CC(&qword_10003A598, type metadata accessor for ButtonBarLayout);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  swift_beginAccess();
  v14 = *(v13 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  v15 = v14;
  static Published.subscript.getter();

  v45[2] = v42;
  v45[3] = v43;
  v46[0] = v44[0];
  *(v46 + 9) = *(v44 + 9);
  v45[0] = v40;
  v45[1] = v41;

  if (*(&v40 + 1))
  {
    sub_100007128(v45, &qword_10003ACB0, &qword_100028E20);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[CameraActionButton] performCameraAction exiting submenu, and sending action", v18, 2u);
    }

    sub_100017370();
    swift_beginAccess();
    v19 = *(v13 + 24);

    swift_getKeyPath();
    swift_getKeyPath();
    v43 = 0u;
    memset(v44, 0, 25);
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    static Published.subscript.setter();
    if (v1[8])
    {
      v20 = v1[1];
      v21 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
      sub_100014CE4(v21, v22);
    }

    return;
  }

  v23 = v1[8];
  if (!v23)
  {
LABEL_17:

    sub_100017370();
    return;
  }

  v24 = v1[1];
  v25 = v23;
  v26 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
  v28 = sub_1000155CC(v26, v27);

  if ((v28 & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_10000695C(v1, &v40);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  sub_100009C64(v1);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v38 = v25;
    v32 = swift_slowAlloc();
    *&v40 = v32;
    *v31 = 136315138;
    v33 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
    v35 = sub_10000B720(v33, v34, &v40);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "[CameraActionButton] performCameraAction service %s will reveal children", v31, 0xCu);
    sub_100008EDC(v32);
    v25 = v38;
  }

  swift_beginAccess();
  v36 = *(v13 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v50;
  v44[0] = v51[0];
  *(v44 + 9) = *(v51 + 9);
  v40 = v47;
  v41 = v48;
  v42 = v49;
  sub_10000695C(v1, v39);
  static Published.subscript.setter();
}

int8x8_t sub_100018954@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 8);
  dispatch thunk of CAFCameraButtonObservable.symbolName.getter();
  Image.init(automakerSymbolName:)();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v10 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v8, v4);
  v11 = sub_100018B04();
  KeyPath = swift_getKeyPath();
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;
  *(a2 + 33) = v11 & 1;
  v13 = vdupq_n_s64(v11);
  *v13.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v13, xmmword_100028A00), vshlq_u64(v13, xmmword_1000289F0))), 0x1000100010001);
  result = vuzp1_s8(*v13.i8, *v13.i8);
  *(a2 + 34) = result.i32[0];
  *(a2 + 38) = BYTE5(v11) & 1;
  *(a2 + 39) = BYTE6(v11) & 1;
  return result;
}

uint64_t sub_100018B04()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = dispatch thunk of CAFCameraButtonObservable.buttonAction.getter();
  v4 = 0;
  if ((v3 & 0x100) == 0)
  {
    v5 = v3;
    v6 = dispatch thunk of CAFCameraButtonObservable.disabled.getter();
    v4 = v6 != 2 && (v6 & 1) != 0 || v5 != 0;
  }

  v7 = CAFCameraButtonObservable.observed.getter();
  v8 = [v7 selected];

  if (v8)
  {
    goto LABEL_15;
  }

  v9 = *(v1 + 48);
  if (!v9)
  {
    v48 = *(v1 + 56);
    type metadata accessor for CameraModel();
    v46 = &qword_10003AE98;
    v47 = type metadata accessor for CameraModel;
    goto LABEL_50;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v9;
  static Published.subscript.getter();

  v63 = v58;
  v64 = v59;
  v65[0] = v60[0];
  *(v65 + 9) = *(v60 + 9);
  v61 = v56;
  v62 = v57;
  if (*(&v56 + 1))
  {
    v11 = *(&v61 + 1);
    sub_100007128(&v61, &qword_10003ACB0, &qword_100028E20);
    v12 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
    v14 = v13;
  }

  else
  {

    v12 = 0;
    v14 = 0;
  }

  v15 = CAFCameraButtonObservable.observed.getter();
  v16 = [v15 identifier];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v14)
  {
    if (v12 != v17 || v14 != v19)
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v20 = 256;
      if ((v44 & 1) == 0)
      {
        v20 = 0;
      }

      goto LABEL_16;
    }

LABEL_15:
    v20 = 256;
LABEL_16:
    v52 = v20;
    goto LABEL_17;
  }

  v52 = 0;
LABEL_17:
  v53 = v4;
  v61 = *(v1 + 72);
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  State.wrappedValue.getter();
  v21 = *(v1 + 16);
  if (!v21)
  {
    v45 = *(v1 + 24);
    type metadata accessor for ButtonBarLayout(0);
    v46 = &qword_10003A598;
    v47 = type metadata accessor for ButtonBarLayout;
LABEL_50:
    sub_10001D7CC(v46, v47);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v22 = v56;
  swift_beginAccess();
  v23 = *(v21 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v24 = v23;

  static Published.subscript.getter();

  v63 = v58;
  v64 = v59;
  v65[0] = v60[0];
  *(v65 + 9) = *(v60 + 9);
  v61 = v56;
  v62 = v57;
  if (!*(&v56 + 1))
  {

    dispatch thunk of CAFCameraButtonObservable.identifier.getter();
LABEL_25:

    v31 = 0;
    goto LABEL_30;
  }

  v51 = v1;
  v50 = v56;
  v25 = *(&v61 + 1);
  sub_100007128(&v61, &qword_10003ACB0, &qword_100028E20);
  v26 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
  v28 = v27;

  v29 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
  if (!v28)
  {
    v22 = v50;
    v1 = v51;
    goto LABEL_25;
  }

  if (v26 == v29 && v28 == v30)
  {

    v31 = 0x10000000000;
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v32)
    {
      v31 = 0x10000000000;
    }

    else
    {
      v31 = 0;
    }
  }

  v22 = v50;
  v1 = v51;
LABEL_30:
  swift_beginAccess();
  v33 = *(v21 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v58 = v54[2];
  v59 = v54[3];
  v60[0] = v55[0];
  *(v60 + 9) = *(v55 + 9);
  v56 = v54[0];
  v57 = v54[1];
  if (*(&v54[0] + 1))
  {
    sub_100007128(&v56, &qword_10003ACB0, &qword_100028E20);
  }

  else
  {
    v38 = *(v1 + 64);
    if (v38)
    {
      v39 = dispatch thunk of CAFCameraButtonObservable.identifier.getter();
      if (*(*(v38 + OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_childrenIdents) + 16))
      {
        v41 = *(v38 + OBJC_IVAR____TtC9CarCamera17CameraButtonGroup_identFlatList);
        *&v54[0] = v39;
        *(&v54[0] + 1) = v40;
        __chkstk_darwin(v39);
        v49[2] = v54;
        v43 = sub_10001BBF0(sub_10001C120, v49, v42);

        v34 = 0x1000000000000;
        if ((v43 & 1) == 0)
        {
          v34 = 0;
        }

        goto LABEL_33;
      }
    }
  }

  v34 = 0;
LABEL_33:
  v35 = &_mh_execute_header;
  if (!*(v1 + 88))
  {
    v35 = 0;
  }

  v36 = 0x10000;
  if (!v22)
  {
    v36 = 0;
  }

  return v52 | v53 | v31 | v34 | v36 | v35;
}

uint64_t sub_100019114(uint64_t a1)
{
  v13[1] = a1;
  v1 = type metadata accessor for _ShapeSet();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Material();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Material._experimentalGlass.getter();
  sub_1000026FC(&qword_10003B108, &qword_100028E28);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100028940;
  sub_10001C1E8();
  *(v11 + 32) = AnyShape.init<A>(_:)();
  _ShapeSet.init(shapes:smoothness:)();
  sub_1000026FC(&qword_10003B090, &qword_100028D30);
  sub_100007210(&qword_10003B0C0, &qword_10003B090, &qword_100028D30);
  View.materialEffect(_:in:)();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100019344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000026FC(&qword_10003B090, &qword_100028D30);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1000193BC(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_10001C300(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_10001C300(v3, v5, v2 != 0);
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

  sub_10001C30C(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_10001C300(v3, v5, v2 != 0);
  return v13;
}

void sub_1000194D8(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000036BC(v14, qword_10003CE48);

    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10000B720(a2, a3, &v20);
      _os_log_impl(&_mh_execute_header, oslog, v15, "[CameraActionButton] equestContent opening url %s was not successful", v16, 0xCu);
      sub_100008EDC(v17);

      return;
    }

    goto LABEL_14;
  }

  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000036BC(v7, qword_10003CE48);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10000B720(a2, a3, &v20);
    _os_log_impl(&_mh_execute_header, v8, v9, "RequestContent opened url %s successfully", v10, 0xCu);
    sub_100008EDC(v11);
  }

  v12 = *(a4 + 48);
  if (!v12)
  {
    v18 = *(a4 + 56);
    type metadata accessor for CameraModel();
    sub_10001D7CC(&qword_10003AE98, type metadata accessor for CameraModel);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  v13 = *(v12 + OBJC_IVAR____TtC9CarCamera11CameraModel_camera);
  if (v13)
  {
    oslog = [v13 cameraGeneral];
    [oslog setOn:0];
LABEL_14:
  }
}

uint64_t sub_10001980C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  *v7 = v1[4];
  *&v7[9] = *(v1 + 73);
  v3 = *v1;
  v4 = v1[1];
  return sub_100017F3C(a1);
}

unint64_t sub_1000198A0()
{
  result = qword_10003B070;
  if (!qword_10003B070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B070);
  }

  return result;
}

unint64_t sub_1000198F8()
{
  result = qword_10003B078;
  if (!qword_10003B078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B078);
  }

  return result;
}

unint64_t sub_100019950()
{
  result = qword_10003B080;
  if (!qword_10003B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B080);
  }

  return result;
}

unint64_t sub_1000199A8()
{
  result = qword_10003B088;
  if (!qword_10003B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B088);
  }

  return result;
}

uint64_t sub_100019A18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = type metadata accessor for CameraCloseButton();
  v4 = (v3 - 8);
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v34 = v7;
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000026FC(&qword_10003B090, &qword_100028D30);
  v10 = *(v9 - 8);
  v30 = v9;
  v31 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  sub_100006C30(v2, v8);
  v29 = *(v5 + 80);
  v14 = (v29 + 16) & ~v29;
  v32 = v14;
  v15 = swift_allocObject();
  sub_100006BCC(v8, v15 + v14);
  v35 = v2;
  sub_1000026FC(&qword_10003B098, &qword_100028D38);
  sub_10001A35C();
  Button.init(action:label:)();
  v16 = *(v2 + v4[10]);
  v17 = *(v2 + v4[11]);
  v18 = *(v2 + 40);
  v37 = *(v2 + 32);
  LOBYTE(v14) = v37;
  v43 = v18;
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  State.wrappedValue.getter();
  v19 = *(v2 + v4[12]);
  v37 = v16;
  v38 = v17;
  v39 = v36;
  v40 = 1;
  v41 = v19;
  v42 = 0;
  sub_100007210(&qword_10003B0C0, &qword_10003B090, &qword_100028D30);
  sub_10001A4C0();
  v20 = v33;
  v21 = v30;
  View.buttonStyle<A>(_:)();
  (*(v31 + 8))(v13, v21);
  v37 = v14;
  v43 = v18;
  State.wrappedValue.getter();
  KeyPath = swift_getKeyPath();
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  v24 = (v20 + *(sub_1000026FC(&qword_10003B0D0, &qword_100028D80) + 36));
  *v24 = KeyPath;
  v24[1] = sub_10001BD04;
  v24[2] = v23;
  sub_100006C30(v2, v8);
  v25 = v32;
  v26 = swift_allocObject();
  sub_100006BCC(v8, v26 + v25);
  result = sub_1000026FC(&qword_10003B0D8, &qword_100028D88);
  v28 = (v20 + *(result + 36));
  *v28 = sub_10001BE14;
  v28[1] = v26;
  return result;
}

void sub_100019DCC()
{
  v1 = v0;
  v2 = type metadata accessor for CameraCloseButton();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  dispatch thunk of CAFCameraGeneralObservable.on.setter();
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000036BC(v7, qword_10003CE48);
  sub_100006C30(v1, v5);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    v11 = *(v5 + 1);
    LODWORD(v11) = dispatch thunk of CAFCameraGeneralObservable.on.getter() & 1;
    sub_10001BF20(v5, type metadata accessor for CameraCloseButton);
    *(v10 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v8, v9, "[CAMERA] camera.On visiblity button button pressed: %{BOOL}d", v10, 8u);
  }

  else
  {
    sub_10001BF20(v5, type metadata accessor for CameraCloseButton);
  }
}

uint64_t sub_100019F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(systemName:)();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v9 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v8, v4);
  v10 = type metadata accessor for CameraCloseButton();
  v11 = *(a1 + v10[8]);
  LOBYTE(v5) = *(a1 + v10[9]);
  v12 = *(a1 + 40);
  v14[8] = *(a1 + 32);
  v15 = v12;
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  State.wrappedValue.getter();
  LOBYTE(v4) = v14[7];
  LOBYTE(a1) = *(a1 + v10[10]);
  result = swift_getKeyPath();
  *a2 = v9;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  *(a2 + 33) = v11;
  *(a2 + 34) = v5;
  *(a2 + 35) = v4;
  *(a2 + 36) = 1;
  *(a2 + 37) = a1;
  *(a2 + 38) = 0;
  return result;
}

uint64_t sub_10001A130(char *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v3 = *a1;
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  return State.wrappedValue.setter();
}

uint64_t sub_10001A190()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v0 + 8);
  v6 = *v0;
  v10 = *v0;
  if (v11 != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100007128(&v10, &qword_10003A590, &qword_100028270);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

void sub_10001A2F8()
{
  v1 = *(type metadata accessor for CameraCloseButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_100019DCC();
}

unint64_t sub_10001A35C()
{
  result = qword_10003B0A0;
  if (!qword_10003B0A0)
  {
    sub_1000028A8(&qword_10003B098, &qword_100028D38);
    sub_10001A3E8();
    sub_10001A46C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B0A0);
  }

  return result;
}

unint64_t sub_10001A3E8()
{
  result = qword_10003B0A8;
  if (!qword_10003B0A8)
  {
    sub_1000028A8(&qword_10003B0B0, &unk_100028D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B0A8);
  }

  return result;
}

unint64_t sub_10001A46C()
{
  result = qword_10003B0B8;
  if (!qword_10003B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B0B8);
  }

  return result;
}

unint64_t sub_10001A4C0()
{
  result = qword_10003B0C8;
  if (!qword_10003B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B0C8);
  }

  return result;
}

uint64_t sub_10001A514@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000026FC(&qword_10003B090, &qword_100028D30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-v7];
  v9 = swift_allocObject();
  v10 = *(v1 + 16);
  v9[1] = *v1;
  v9[2] = v10;
  v9[3] = *(v1 + 32);
  *(v9 + 57) = *(v1 + 41);
  v22 = v1;
  sub_10001D20C(v1, v24);
  sub_1000026FC(&qword_10003B098, &qword_100028D38);
  sub_10001A35C();
  Button.init(action:label:)();
  v11 = *(v1 + 33);
  v12 = *(v1 + 34);
  v25 = *(v1 + 40);
  v24[0] = *(v1 + 40);
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  State.wrappedValue.getter();
  v13 = *(v1 + 56);
  LOBYTE(v24[0]) = v11;
  BYTE1(v24[0]) = v12;
  BYTE2(v24[0]) = v23;
  BYTE3(v24[0]) = 1;
  BYTE4(v24[0]) = v13;
  *(v24 + 5) = 0;
  sub_100007210(&qword_10003B0C0, &qword_10003B090, &qword_100028D30);
  sub_10001A4C0();
  View.buttonStyle<A>(_:)();
  (*(v5 + 8))(v8, v4);
  v24[0] = v25;
  State.wrappedValue.getter();
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = (a1 + *(sub_1000026FC(&qword_10003B0D0, &qword_100028D80) + 36));
  *v16 = KeyPath;
  v16[1] = sub_10001D830;
  v16[2] = v15;
  v17 = swift_allocObject();
  v18 = v2[1];
  v17[1] = *v2;
  v17[2] = v18;
  v17[3] = v2[2];
  *(v17 + 57) = *(v2 + 41);
  v19 = (a1 + *(sub_1000026FC(&qword_10003B0D8, &qword_100028D88) + 36));
  *v19 = sub_10001D290;
  v19[1] = v17;
  return sub_10001D20C(v2, v24);
}

void sub_10001A834()
{
  v1 = v0;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000036BC(v2, qword_10003CE48);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[CAMERA] NavigationButton action", v5, 2u);
  }

  v6 = *(v0 + 32) >> 6;
  if (!v6)
  {
    goto LABEL_11;
  }

  if (v6 == 1)
  {
    v7 = *(v0 + 16);
    if (!v7)
    {
      goto LABEL_22;
    }

    v8 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pageNumber;
    v1 = *(v7 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pageNumber);
    v9 = v1 - 1;
    if (!__OFSUB__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    v7 = *(v1 + 16);
    if (v7)
    {
      v8 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pageNumber;
      v1 = *(v7 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pageNumber);
      v9 = v1 + 1;
      if (!__OFADD__(v1, 1))
      {
LABEL_13:
        *(v7 + v8) = v9;

        sub_10001E980(v1);

        return;
      }

      __break(1u);
    }

LABEL_22:
    v12 = *(v1 + 24);
    type metadata accessor for ButtonBarLayout(0);
    sub_10001D7CC(&qword_10003A598, type metadata accessor for ButtonBarLayout);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  oslog = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v10, "[CAMERA] NavigationButton action - close action not used here", v11, 2u);
  }
}

uint64_t sub_10001AA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  sub_10001A190();
  Image.init(systemName:)();
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v10 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v8, v4);
  LOBYTE(v4) = *(a1 + 33);
  LOBYTE(v8) = *(a1 + 34);
  v13 = *(a1 + 40);
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  State.wrappedValue.getter();
  v11 = v14;
  LOBYTE(a1) = *(a1 + 56);
  result = swift_getKeyPath();
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  *(a2 + 33) = v4;
  *(a2 + 34) = v8;
  *(a2 + 35) = v11;
  *(a2 + 36) = 1;
  *(a2 + 37) = a1;
  *(a2 + 38) = 0;
  return result;
}

uint64_t sub_10001ACC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[9] = *(v1 + 41);
  return sub_10001A514(a1);
}

uint64_t sub_10001AD0C()
{
  result = static Color.primary.getter();
  qword_10003CE88 = result;
  return result;
}

uint64_t sub_10001AD6C()
{
  v0 = [objc_opt_self() _carSystemFocusColor];
  result = Color.init(_:)();
  qword_10003CEA8 = result;
  return result;
}

uint64_t sub_10001ADC4(uint64_t a1, uint64_t *a2)
{
  static Color.secondary.getter();
  v3 = Color.opacity(_:)();

  *a2 = v3;
  return result;
}

uint64_t sub_10001AE18(uint64_t a1)
{
  if ((a1 & 0x1000000) != 0)
  {
    if ((a1 & 0x10100) != 0)
    {

      return static Color.secondary.getter();
    }

    else
    {

      return static Color.black.getter();
    }
  }

  else
  {
    result = static Color.primary.getter();
    if (a1)
    {
      if (qword_10003A290 != -1)
      {
        swift_once();
      }

      v3 = qword_10003CEB0;

      goto LABEL_6;
    }

    if ((a1 & 0x1010000000000) != 0)
    {
      if ((a1 & 0x10000) != 0)
      {
        v4 = static Color.black.getter();
      }

      else
      {
        v4 = static Color.white.getter();
      }

      v5 = v4;

      return v5;
    }

    else if ((a1 & 0x10100) != 0)
    {
      v3 = static Color.black.getter();
LABEL_6:

      return v3;
    }
  }

  return result;
}

uint64_t sub_10001AF34@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  ButtonStyleConfiguration.label.getter();
  v10 = 0x1000000000000;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = 0x10000000000;
  if (!v8)
  {
    v11 = 0;
  }

  v12 = &_mh_execute_header;
  if (!v7)
  {
    v12 = 0;
  }

  v13 = 0x1000000;
  if (!v6)
  {
    v13 = 0;
  }

  v14 = 0x10000;
  if (!v5)
  {
    v14 = 0;
  }

  if (v4)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_10001CBA8(v15 | v3 | v14 | v13 | v12 | v11 | v10);
  v17 = static Edge.Set.all.getter();
  v18 = a1 + *(sub_1000026FC(&qword_10003B1E8, &qword_100029140) + 36);
  *v18 = v16;
  *(v18 + 8) = v17;
  v19 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v21 = (a1 + *(sub_1000026FC(&qword_10003B1F0, &qword_100029148) + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  v22 = a1 + *(sub_1000026FC(&qword_10003B1F8, &qword_100029150) + 36);
  *v22 = v7;
  *(v22 + 1) = 256;
  v23 = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  v25 = (a1 + *(sub_1000026FC(&qword_10003B200, &qword_100029158) + 36));
  *v25 = v23;
  v25[1] = sub_10001D830;
  v25[2] = v24;
  v26 = ButtonStyleConfiguration.isPressed.getter();
  result = sub_1000026FC(&qword_10003B208, &unk_100029160);
  *(a1 + *(result + 36)) = v26 & 1;
  return result;
}

uint64_t sub_10001B114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a1;
  v63 = a4;
  v62 = a3 & 0x10000000000;
  v6 = sub_1000026FC(&qword_10003B168, &qword_1000290C8);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v53 - v9;
  v11 = sub_1000026FC(&qword_10003B170, &qword_1000290D0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v56 = &v53 - v14;
  v15 = sub_1000026FC(&qword_10003B178, &qword_1000290D8);
  v16 = *(v15 - 8);
  v60 = v15 - 8;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15 - 8);
  v59 = &v53 - v18;
  v19 = sub_1000026FC(&qword_10003B180, &qword_1000290E0);
  v20 = *(v19 - 8);
  v61 = v19 - 8;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19 - 8);
  v23 = &v53 - v22;
  v58 = sub_1000026FC(&qword_10003B188, &qword_1000290E8);
  v24 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v26 = &v53 - v25;
  LOBYTE(v64) = a3 & 1;
  v57 = (a3 >> 40) & 1;
  v54 = a3 >> 8;
  sub_10001B5BC(a2, a3 & 0x101010101010101);
  v53 = a3 & &_mh_execute_header;
  v27 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_1000026FC(&qword_10003B190, &qword_1000290F0);
  (*(*(v36 - 8) + 16))(v10, v55, v36);
  v37 = &v10[*(v7 + 44)];
  *v37 = v27;
  *(v37 + 1) = v29;
  *(v37 + 2) = v31;
  *(v37 + 3) = v33;
  *(v37 + 4) = v35;
  v37[40] = 0;
  LOBYTE(v64) = a3 & 1;
  sub_10001B5BC(a2, a3 & 0x101010101010101);
  LOBYTE(v64) = a3 & 1;
  sub_10001B5BC(a2, a3 & 0x101010101010101);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = v56;
  sub_100002744(v10, v56, &qword_10003B168, &qword_1000290C8);
  v39 = (v38 + *(v12 + 44));
  v40 = v65;
  *v39 = v64;
  v39[1] = v40;
  v39[2] = v66;
  v41 = v54 & 0x10101 | ((v53 | v62) >> 8);
  v42 = v54 & 0x1010000000000;
  v43 = sub_10001CBA8(v41 | v54 & 0x1010000000000);
  LOBYTE(v12) = static Edge.Set.all.getter();
  v44 = v38;
  v45 = v59;
  sub_100002744(v44, v59, &qword_10003B170, &qword_1000290D0);
  v46 = v45 + *(v60 + 44);
  *v46 = v43;
  *(v46 + 8) = v12;
  v47 = sub_10001AE18(v41 | v42);
  KeyPath = swift_getKeyPath();
  sub_100002744(v45, v23, &qword_10003B178, &qword_1000290D8);
  v49 = &v23[*(v61 + 44)];
  *v49 = KeyPath;
  v49[1] = v47;
  v50 = v58;
  sub_100002744(v23, v26, &qword_10003B180, &qword_1000290E0);
  v51 = &v26[*(v50 + 36)];
  *v51 = v57;
  *(v51 + 1) = 256;
  if ((a3 & 0x100000000) != 0)
  {
    static Font.Weight.heavy.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  sub_10001CE08();
  View.fontWeight(_:)();
  return sub_100007128(v26, &qword_10003B188, &qword_1000290E8);
}

void sub_10001B5BC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v16 = a1;
  v17 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (BYTE4(v17) == 1)
  {
    if ((v2 & 1) == 0)
    {
      sub_10001D174(&v16, v15);
      static os_log_type_t.fault.getter();
      v8 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_10001D1AC(&v16);
      v9 = *(v4 + 8);
      v9(v7, v3);
      sub_10001D174(&v16, v15);
      static os_log_type_t.fault.getter();
      v10 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_10001D1AC(&v16);
      v9(v7, v3);
    }
  }

  else if ((v2 & 1) == 0)
  {
    sub_10001D174(&v16, v15);
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001D1AC(&v16);
    v12 = *(v4 + 8);
    v12(v7, v3);
    sub_10001D174(&v16, v15);
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001D1AC(&v16);
    v12(v7, v3);
  }
}

uint64_t sub_10001B920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0x100000000000000;
  if ((*(v2 + 15) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = 0x1000000000000;
  if ((*(v2 + 14) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = 0x10000000000;
  if ((*(v2 + 13) & 1) == 0)
  {
    v5 = 0;
  }

  v6 = &_mh_execute_header;
  if ((*(v2 + 12) & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if ((*(v2 + 11) & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x10000;
  if ((*(v2 + 10) & 1) == 0)
  {
    v8 = 0;
  }

  v9 = 256;
  if ((*(v2 + 9) & 1) == 0)
  {
    v9 = 0;
  }

  return sub_10001B114(a1, *v2, v8 | v9 | v7 | v6 | v5 | v4 | v3 | *(v2 + 8) & 1, a2);
}

void *sub_10001B9CC(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = v4;
  return result;
}

__n128 sub_10001BA14@<Q0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v6;
  *&v10[1] = *&v9[9];
  *v10 = *&v9[8];
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = *v9;
  *(a2 + 73) = *&v10[1];
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_10001BAD0(_OWORD *a1, void **a2)
{
  v3 = a1[3];
  v12[2] = a1[2];
  v12[3] = v3;
  v13[0] = a1[4];
  *(v13 + 9) = *(a1 + 73);
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[3];
  v10[8] = a1[2];
  v10[9] = v6;
  v11[0] = a1[4];
  *(v11 + 9) = *(a1 + 73);
  v7 = a1[1];
  v10[6] = *a1;
  v10[7] = v7;
  v8 = v5;
  sub_10001C178(v12, v10);
  return static Published.subscript.setter();
}

uint64_t sub_10001BB98@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001BBC4(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10001BBF0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10001BC9C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001BD1C()
{
  v1 = (type metadata accessor for CameraCloseButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 16);

  v6 = *(v0 + v3 + 40);

  v7 = v1[9];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001BE14(char *a1)
{
  v3 = *(type metadata accessor for CameraCloseButton() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001A130(a1, v4);
}

uint64_t sub_10001BE84@<X0>(_BYTE *a1@<X8>)
{
  sub_100001DCC();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10001BED4(char *a1)
{
  v2 = *a1;
  sub_100001DCC();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_10001BF20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001BF80()
{
  result = qword_10003B0E0;
  if (!qword_10003B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B0E0);
  }

  return result;
}

uint64_t sub_10001C004()
{
  v1 = *(v0 + 32);

  sub_1000068C0(*(v0 + 48), *(v0 + 56));

  v2 = *(v0 + 96);

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_10001C068(char *a1)
{
  v4 = *(v1 + 88);
  v3 = *a1;
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  return State.wrappedValue.setter();
}

uint64_t sub_10001C0C8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10001C120(void *a1)
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

uint64_t sub_10001C178(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026FC(&qword_10003ACB0, &qword_100028E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001C1E8()
{
  result = qword_10003B110;
  if (!qword_10003B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B110);
  }

  return result;
}

unint64_t sub_10001C23C()
{
  result = qword_10003B118;
  if (!qword_10003B118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003B118);
  }

  return result;
}

uint64_t sub_10001C288()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  sub_1000068C0(*(v0 + 64), *(v0 + 72));

  v3 = *(v0 + 112);

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_10001C300(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_10001C30C(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10001C23C();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10001C23C();
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

__n128 sub_10001C50C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10001C528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
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

uint64_t sub_10001C584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for CameraButtonConfiguration(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t sub_10001C62C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
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

uint64_t sub_10001C674(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_10001C6C8()
{
  result = qword_10003B128;
  if (!qword_10003B128)
  {
    sub_1000028A8(&qword_10003B0D8, &qword_100028D88);
    sub_10001C780();
    sub_100007210(&qword_10003B148, &qword_10003B150, qword_100028FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B128);
  }

  return result;
}

unint64_t sub_10001C780()
{
  result = qword_10003B130;
  if (!qword_10003B130)
  {
    sub_1000028A8(&qword_10003B0D0, &qword_100028D80);
    sub_1000028A8(&qword_10003B090, &qword_100028D30);
    sub_100007210(&qword_10003B0C0, &qword_10003B090, &qword_100028D30);
    sub_10001A4C0();
    swift_getOpaqueTypeConformance2();
    sub_100007210(&qword_10003B138, &qword_10003B140, &qword_100028F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B130);
  }

  return result;
}

unint64_t sub_10001C8C0()
{
  result = qword_10003B158;
  if (!qword_10003B158)
  {
    sub_1000028A8(&qword_10003B100, &qword_100028DD0);
    sub_10001C978();
    sub_100007210(&qword_10003B148, &qword_10003B150, qword_100028FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B158);
  }

  return result;
}

unint64_t sub_10001C978()
{
  result = qword_10003B160;
  if (!qword_10003B160)
  {
    sub_1000028A8(&qword_10003B0F8, &qword_100028DC8);
    sub_1000028A8(&qword_10003B0E8, &qword_100028DB8);
    sub_1000028A8(&qword_10003B090, &qword_100028D30);
    sub_1000028A8(&qword_10003B0F0, &qword_100028DC0);
    sub_100007210(&qword_10003B0C0, &qword_10003B090, &qword_100028D30);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10001A4C0();
    swift_getOpaqueTypeConformance2();
    sub_100007210(&qword_10003B138, &qword_10003B140, &qword_100028F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B160);
  }

  return result;
}

uint64_t sub_10001CBA8(uint64_t a1)
{
  if (a1 & 0x100) != 0 && (a1)
  {
    if (qword_10003A270 != -1)
    {
      swift_once();
    }

    v1 = qword_10003CE90;
  }

  else
  {
    if ((a1 & 0x10000) == 0)
    {
      if ((a1 & 0x100) != 0)
      {
        v2 = a1;
        if (qword_10003A268 != -1)
        {
          swift_once();
        }

        v3 = &qword_10003CE88;
      }

      else
      {
        v2 = a1;
        if ((a1 & 0x1000000) != 0)
        {
          if (qword_10003A288 != -1)
          {
            swift_once();
          }

          v3 = &qword_10003CEA8;
        }

        else
        {
          if (qword_10003A278 != -1)
          {
            swift_once();
          }

          v3 = &qword_10003CE98;
        }
      }

      v1 = *v3;

      if ((v2 & 0x10000000000) != 0)
      {
        if (qword_10003A280 != -1)
        {
          swift_once();
        }

        v5 = qword_10003CEA0;
      }

      else
      {
        if ((v2 & 0x1000000000000) == 0)
        {
          return v1;
        }

        if (qword_10003A278 != -1)
        {
          swift_once();
        }

        v5 = qword_10003CE98;
      }

      return v5;
    }

    if (qword_10003A268 != -1)
    {
      swift_once();
    }

    v1 = qword_10003CE88;
  }

  return v1;
}

uint64_t sub_10001CDB0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001CDDC(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

unint64_t sub_10001CE08()
{
  result = qword_10003B198;
  if (!qword_10003B198)
  {
    sub_1000028A8(&qword_10003B188, &qword_1000290E8);
    sub_10001CEC0();
    sub_100007210(&qword_10003B1D8, &qword_10003B1E0, &qword_100029138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B198);
  }

  return result;
}

unint64_t sub_10001CEC0()
{
  result = qword_10003B1A0;
  if (!qword_10003B1A0)
  {
    sub_1000028A8(&qword_10003B180, &qword_1000290E0);
    sub_10001CF78();
    sub_100007210(&qword_10003B1C8, &qword_10003B1D0, &qword_100029130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B1A0);
  }

  return result;
}

unint64_t sub_10001CF78()
{
  result = qword_10003B1A8;
  if (!qword_10003B1A8)
  {
    sub_1000028A8(&qword_10003B178, &qword_1000290D8);
    sub_10001D030();
    sub_100007210(&qword_10003AF18, &qword_10003AF20, &qword_100028838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B1A8);
  }

  return result;
}

unint64_t sub_10001D030()
{
  result = qword_10003B1B0;
  if (!qword_10003B1B0)
  {
    sub_1000028A8(&qword_10003B170, &qword_1000290D0);
    sub_10001D0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B1B0);
  }

  return result;
}

unint64_t sub_10001D0BC()
{
  result = qword_10003B1B8;
  if (!qword_10003B1B8)
  {
    sub_1000028A8(&qword_10003B168, &qword_1000290C8);
    sub_100007210(&qword_10003B1C0, &qword_10003B190, &qword_1000290F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B1B8);
  }

  return result;
}

uint64_t sub_10001D244()
{
  sub_1000068C0(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_10001D290(char *a1)
{
  v4 = *(v1 + 56);
  v3 = *a1;
  sub_1000026FC(&qword_10003A748, &qword_100027F58);
  return State.wrappedValue.setter();
}

uint64_t sub_10001D2EC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10001D344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10001D39C()
{
  sub_1000028A8(&qword_10003B188, &qword_1000290E8);
  sub_10001CE08();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10001D404()
{
  result = qword_10003B210;
  if (!qword_10003B210)
  {
    sub_1000028A8(&qword_10003B208, &unk_100029160);
    sub_10001D4BC();
    sub_100007210(&qword_10003B240, &qword_10003B248, " @");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B210);
  }

  return result;
}

unint64_t sub_10001D4BC()
{
  result = qword_10003B218;
  if (!qword_10003B218)
  {
    sub_1000028A8(&qword_10003B200, &qword_100029158);
    sub_10001D574();
    sub_100007210(&qword_10003B138, &qword_10003B140, &qword_100028F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B218);
  }

  return result;
}

unint64_t sub_10001D574()
{
  result = qword_10003B220;
  if (!qword_10003B220)
  {
    sub_1000028A8(&qword_10003B1F8, &qword_100029150);
    sub_10001D62C();
    sub_100007210(&qword_10003B1D8, &qword_10003B1E0, &qword_100029138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B220);
  }

  return result;
}

unint64_t sub_10001D62C()
{
  result = qword_10003B228;
  if (!qword_10003B228)
  {
    sub_1000028A8(&qword_10003B1F0, &qword_100029148);
    sub_10001D6E4();
    sub_100007210(&qword_10003B1C8, &qword_10003B1D0, &qword_100029130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B228);
  }

  return result;
}

unint64_t sub_10001D6E4()
{
  result = qword_10003B230;
  if (!qword_10003B230)
  {
    sub_1000028A8(&qword_10003B1E8, &qword_100029140);
    sub_10001D7CC(&qword_10003B238, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100007210(&qword_10003AF18, &qword_10003AF20, &qword_100028838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B230);
  }

  return result;
}

uint64_t sub_10001D7CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001D860()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10001D8F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10001D964()
{
  v1 = v0;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000036BC(v2, qword_10003CE48);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Close changed", v5, 2u);
  }

  v6 = sub_10001DAA8();
  v7 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pager);
  sub_100002E08(v6, *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex), 0, 0, 1, 0xD000000000000014, 0x8000000100029E40);

  sub_10001DE70(v8);
}

uint64_t sub_10001DAA8()
{
  v1 = v0;
  v2 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25[-v4];
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000036BC(v6, qword_10003CE48);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "takePagerState()", v9, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = type metadata accessor for CameraCloseButton();
  v11 = (*(*(v10 - 8) + 48))(v5, 1, v10);
  sub_100007128(v5, &qword_10003AC80, &qword_100027CE8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = v31;
  if (v31)
  {
    sub_1000069B8(v30, SBYTE8(v30), v31);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13 = v31;
  if (v31)
  {
    sub_1000069B8(v30, SBYTE8(v30), v31);
  }

  v14 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex);
  v15 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_tailIndex);
  v16 = (v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent);
  if (*(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 8))
  {
    v17 = v16[3];
    v28[2] = v16[2];
    v28[3] = v17;
    v29[0] = v16[4];
    *(v29 + 9) = *(v16 + 73);
    v18 = v16[1];
    v28[0] = *v16;
    v28[1] = v18;
    if (*(&v28[0] + 1))
    {
      v19 = v16[3];
      v32 = v16[2];
      v33 = v19;
      v34[0] = v16[4];
      v20 = v34[0];
      *(v34 + 9) = *(v16 + 73);
      v21 = v16[1];
      v30 = *v16;
      v31 = v21;
      *(v27 + 9) = *(v34 + 9);
      v26[2] = v32;
      v26[3] = v19;
      v27[0] = v20;
      v26[0] = v30;
      v26[1] = v21;
      sub_10000695C(v26, v25);
      v22 = sub_100009994();
      sub_100007128(v28, &qword_10003ACB0, &qword_100028E20);
      v23 = *(v16 + 1) != 0;
    }

    else
    {
      v22 = 0;
      v23 = 1;
    }
  }

  else
  {
    v22 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_topLevelActionButtons);

    v23 = 0;
  }

  type metadata accessor for PagerState();
  result = swift_allocObject();
  *(result + 16) = v11 != 1;
  *(result + 17) = v12 != 0;
  *(result + 18) = v13 != 0;
  *(result + 24) = v14;
  *(result + 32) = v15;
  *(result + 40) = v22;
  *(result + 48) = v23;
  return result;
}

void sub_10001DE70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v58 - v10;
  __chkstk_darwin(v9);
  v13 = v58 - v12;
  if (!a1)
  {
    return;
  }

  v14 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_isUpdating;
  if ((*(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_isUpdating) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_isUpdating) = 1;
    v20 = qword_10003A258;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000036BC(v21, qword_10003CE48);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "applyPagerState(_:)", v24, 2u);
    }

    if (*(a1 + 48) == 1 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v59))
    {

      __chkstk_darwin(v25);
      v58[-2] = v2;
      v58[-1] = a1;
      static Animation.default.getter();
      withAnimation<A>(_:_:)();
    }

    else
    {
      v26 = sub_100002AD8();
      swift_getKeyPath();
      swift_getKeyPath();
      v59 = v26;

      static Published.subscript.setter();
    }

    if (*(a1 + 16) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v27 = type metadata accessor for CameraCloseButton();
      v28 = (*(*(v27 - 8) + 48))(v13, 1, v27);
      sub_100007128(v13, &qword_10003AC80, &qword_100027CE8);
      if (v28 != 1)
      {
        goto LABEL_23;
      }

      swift_beginAccess();
      v29 = *(v2 + 24);
      swift_getKeyPath();
      swift_getKeyPath();
      v30 = v29;
      static Published.subscript.getter();
    }

    else
    {
      v31 = type metadata accessor for CameraCloseButton();
      (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000070C0(v11, v8, &qword_10003AC80, &qword_100027CE8);

    v32 = static Published.subscript.setter();
    sub_10001D964(v32);
    sub_100007128(v11, &qword_10003AC80, &qword_100027CE8);
LABEL_23:
    v33 = *(a1 + 17);
    swift_getKeyPath();
    swift_getKeyPath();
    if (v33 == 1)
    {
      static Published.subscript.getter();

      if (v61)
      {
        sub_1000069B8(v59, v60, v61);
        goto LABEL_29;
      }

      LODWORD(v58[0]) = *(v2 + 32) | 0x40;
      KeyPath = swift_getKeyPath();
      type metadata accessor for ButtonBarLayout(0);
      sub_100022274(&qword_10003A598, type metadata accessor for ButtonBarLayout);
      v35 = EnvironmentObject.init()();
      v37 = v36;
      v67[0] = 0;
      State.init(wrappedValue:)();
      v38 = v59;
      v39 = v60;
      v68 = 0;
      type metadata accessor for ButtonBarEntity();
      v40 = swift_allocObject();
      v62 = &type metadata for NavigationButton;
      v63 = sub_100020F7C();
      v41 = swift_allocObject();
      v59 = v41;
      *(v41 + 16) = KeyPath;
      *(v41 + 24) = v68;
      *(v41 + 25) = *v67;
      *(v41 + 28) = *&v67[3];
      *(v41 + 32) = v35;
      *(v41 + 40) = v37;
      *(v41 + 48) = v58[0];
      *(v41 + 49) = 0;
      v42 = *&v64[3];
      *(v41 + 51) = v65;
      *(v41 + 55) = v66;
      *(v41 + 56) = v38;
      v43 = *v64;
      *(v41 + 60) = v42;
      *(v41 + 57) = v43;
      *(v41 + 64) = v39;
      *(v41 + 72) = 0;
      *(v40 + 88) = 0u;
      *(v40 + 72) = 0u;
      sub_10000B498(&v59, v40 + 32);
      *(v40 + 72) = 0xD000000000000019;
      *(v40 + 80) = 0x8000000100029E80;
      *(v40 + 88) = sub_1000244F0;
      *(v40 + 96) = 0;
      sub_100008EDC(&v59);
      *(v40 + 16) = 0xD000000000000019;
      *(v40 + 24) = 0x8000000100029E80;
      v44 = swift_getKeyPath();
      swift_getKeyPath();
      swift_getKeyPath();
      v59 = v44;
      v60 = 0;
      v61 = v40;
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
    }

    static Published.subscript.setter();
LABEL_29:
    v45 = *(a1 + 18);
    swift_getKeyPath();
    swift_getKeyPath();
    if (v45 == 1)
    {
      static Published.subscript.getter();

      if (v61)
      {
        sub_1000069B8(v59, v60, v61);
LABEL_35:
        *(v2 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex) = *(a1 + 24);
        v57 = *(a1 + 32);

        *(v2 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_tailIndex) = v57;
        *(v2 + v14) = 0;
        return;
      }

      LODWORD(v58[0]) = *(v2 + 32);
      v46 = swift_getKeyPath();
      type metadata accessor for ButtonBarLayout(0);
      sub_100022274(&qword_10003A598, type metadata accessor for ButtonBarLayout);
      v47 = EnvironmentObject.init()();
      v49 = v48;
      v67[0] = 0;
      State.init(wrappedValue:)();
      v50 = v59;
      v51 = v60;
      v68 = 0;
      type metadata accessor for ButtonBarEntity();
      v52 = swift_allocObject();
      v62 = &type metadata for NavigationButton;
      v63 = sub_100020F7C();
      v53 = swift_allocObject();
      v59 = v53;
      *(v53 + 16) = v46;
      *(v53 + 24) = v68;
      *(v53 + 25) = *v67;
      *(v53 + 28) = *&v67[3];
      *(v53 + 32) = v47;
      *(v53 + 40) = v49;
      *(v53 + 48) = v58[0];
      *(v53 + 49) = 0;
      v54 = *&v64[3];
      *(v53 + 51) = v65;
      *(v53 + 55) = v66;
      *(v53 + 56) = v50;
      v55 = *v64;
      *(v53 + 60) = v54;
      *(v53 + 57) = v55;
      *(v53 + 64) = v51;
      *(v53 + 72) = 0;
      *(v52 + 88) = 0u;
      *(v52 + 72) = 0u;
      sub_10000B498(&v59, v52 + 32);
      *(v52 + 72) = 0xD000000000000015;
      *(v52 + 80) = 0x8000000100029E60;
      *(v52 + 88) = sub_1000244F0;
      *(v52 + 96) = 0;
      sub_100008EDC(&v59);
      *(v52 + 16) = 0xD000000000000015;
      *(v52 + 24) = 0x8000000100029E60;
      v56 = swift_getKeyPath();
      swift_getKeyPath();
      swift_getKeyPath();
      v59 = v56;
      v60 = 0;
      v61 = v52;
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
    }

    static Published.subscript.setter();
    goto LABEL_35;
  }

  v15 = qword_10003A258;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000036BC(v16, qword_10003CE48);
  v58[0] = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v58[0], v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v58[0], v17, "applyPagerState skipped, already in update pass", v18, 2u);
  }

  v19 = v58[0];
}

uint64_t sub_10001E908()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10001E980(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pageNumber);
  if (v2 != result && v2 != -1)
  {
    v4 = result;
    result = sub_10001DAA8();
    if (v2 <= v4)
    {
      v13 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex);
      v10 = v13 - 1;
      if (!__OFSUB__(v13, 1))
      {
        v14 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pager);
        v12 = 0xD00000000000001BLL;
        v8 = 0x8000000100029EA0;
        v6 = 0;
        v9 = 1;
        v11 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_tailIndex);
      v6 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        v7 = *(v1 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pager);
        v8 = 0x8000000100029EC0;
        v9 = 0;
        v10 = 0;
        v11 = 1;
        v12 = 0xD000000000000017;
LABEL_10:
        sub_100002E08(result, v6, v9, v10, v11, v12, v8);

        sub_10001DE70(v15);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001EA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v26 - v10;
  __chkstk_darwin(v9);
  v13 = v26 - v12;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000036BC(v14, qword_10003CE48);
  sub_1000070C0(a1, v13, &qword_10003AC80, &qword_100027CE8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v8;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    v26[1] = a2;
    sub_1000070C0(v13, v11, &qword_10003AC80, &qword_100027CE8);
    v20 = String.init<A>(describing:)();
    v21 = a1;
    v23 = v22;
    sub_100007128(v13, &qword_10003AC80, &qword_100027CE8);
    v24 = sub_10000B720(v20, v23, &v28);
    a1 = v21;

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "sink %s", v18, 0xCu);
    sub_100008EDC(v19);

    v8 = v27;
  }

  else
  {

    sub_100007128(v13, &qword_10003AC80, &qword_100027CE8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000070C0(a1, v11, &qword_10003AC80, &qword_100027CE8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000070C0(v11, v8, &qword_10003AC80, &qword_100027CE8);

    static Published.subscript.setter();
    sub_10001D964();

    return sub_100007128(v11, &qword_10003AC80, &qword_100027CE8);
  }

  return result;
}

uint64_t sub_10001EDD8(uint64_t *a1)
{
  v1 = *a1;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000036BC(v2, qword_10003CE48);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "sink visibleButtons - %ld", v5, 0xCu);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_topLevelActionButtons);
    *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_topLevelActionButtons) = v1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = sub_10001DAA8();

    swift_beginAccess();
    v10 = swift_weakLoadStrong();
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pager);

      sub_100002E08(v9, 0, 0, 0, 1, 0xD000000000000019, 0x8000000100029F30);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_10001DE70(v12);
    }
  }

  return result;
}

uint64_t sub_10001F038(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000036BC(v3, qword_10003CE48);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    if (v1)
    {
      v8 = v1;
    }

    else
    {
      v2 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = sub_10000B720(v2, v8, &v16);

    *(v6 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "sink identifierChanged - %s", v6, 0xCu);
    sub_100008EDC(v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 8);

    if (v11)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
        v12 = sub_10001DAA8();

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v14 = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pager);

          sub_100002E08(v12, 0, 0, 0, 1, 0xD000000000000024, 0x8000000100029F00);
        }

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {

          sub_10001DE70(v15);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10001F2D8(__int128 *a1)
{
  v2 = sub_1000026FC(&qword_10003B758, &qword_1000294B8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v39[-v7];
  v9 = a1[3];
  v45 = a1[2];
  v46 = v9;
  v47[0] = a1[4];
  *(v47 + 9) = *(a1 + 73);
  v10 = a1[1];
  v43 = *a1;
  v44 = v10;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000036BC(v11, qword_10003CE48);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "sink submenuParent", v14, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = (Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent);
    v17 = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 16);
    v41[0] = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent);
    v41[1] = v17;
    v18 = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 32);
    v19 = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 48);
    v20 = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 64);
    *(v42 + 9) = *(Strong + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 73);
    v41[3] = v19;
    v42[0] = v20;
    v41[2] = v18;
    v22 = v46;
    v21 = v47[0];
    v23 = v45;
    *(v16 + 73) = *(v47 + 9);
    v16[3] = v22;
    v16[4] = v21;
    v16[2] = v23;
    v24 = v44;
    *v16 = v43;
    v16[1] = v24;
    sub_1000070C0(&v43, &v40, &qword_10003ACB0, &qword_100028E20);
    sub_100007128(v41, &qword_10003ACB0, &qword_100028E20);
  }

  if (*(&v43 + 1))
  {
    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    if (v25)
    {
      v26 = v25;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_10001FC90(v6);

        v27 = 0;
      }

      else
      {
        v27 = 1;
      }

      v32 = type metadata accessor for StateSnapShot(0);
      (*(*(v32 - 8) + 56))(v6, v27, 1, v32);
      v33 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_snapshot;
      swift_beginAccess();
      sub_100022368(v6, v26 + v33);
      swift_endAccess();
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v34 = sub_10001DAA8();

      swift_beginAccess();
      v35 = swift_weakLoadStrong();
      if (v35)
      {
        v36 = *(v35 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pager);

        sub_100002E08(v34, 0, 0, 0, 1, 0xD00000000000001FLL, 0x8000000100029EE0);
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        sub_10001DE70(v37);
      }

      else
      {
      }
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_beginAccess();
      v29 = swift_weakLoadStrong();
      if (v29)
      {
        v30 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_snapshot;
        v31 = v29;
        swift_beginAccess();
        sub_1000070C0(v31 + v30, v8, &qword_10003B758, &qword_1000294B8);
      }

      else
      {
        v38 = type metadata accessor for StateSnapShot(0);
        (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
      }

      sub_10001F7F0(v8);

      return sub_100007128(v8, &qword_10003B758, &qword_1000294B8);
    }
  }

  return result;
}

uint64_t sub_10001F7F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v11 = sub_1000026FC(&qword_10003B758, &qword_1000294B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v38 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v38 - v15;
  v17 = type metadata accessor for StateSnapShot(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000070C0(a1, v16, &qword_10003B758, &qword_1000294B8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_100007128(v16, &qword_10003B758, &qword_1000294B8);
  }

  sub_1000223D8(v16, v21);
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000036BC(v23, qword_10003CE48);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "applySnapshot(_:)", v26, 2u);
  }

  sub_1000070C0(v21, v10, &qword_10003AC80, &qword_100027CE8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000070C0(v10, v8, &qword_10003AC80, &qword_100027CE8);

  static Published.subscript.setter();
  sub_10001D964();
  sub_100007128(v10, &qword_10003AC80, &qword_100027CE8);
  v27 = &v21[v17[5]];
  v28 = *v27;
  v29 = v27[1];
  v30 = v27[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v28;
  v40 = v29;
  v41 = v30;

  sub_100006D60(v28, v29, v30);
  static Published.subscript.setter();
  v31 = &v21[v17[6]];
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v39 = v32;
  v40 = v33;
  v41 = v34;

  sub_100006D60(v32, v33, v34);
  static Published.subscript.setter();
  *(v2 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex) = *&v21[v17[8]];
  v35 = *&v21[v17[9]];
  sub_10002243C(v21);
  *(v2 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_tailIndex) = v35;
  v36 = v38;
  (*(v18 + 56))(v38, 1, 1, v17);
  v37 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_snapshot;
  swift_beginAccess();
  sub_100022368(v36, v2 + v37);
  return swift_endAccess();
}

__n128 sub_10001FC90@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000036BC(v4, qword_10003CE48);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "takeSnapshot()", v7, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = *(v2 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex);
  v9 = *(v2 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_tailIndex);
  v10 = type metadata accessor for StateSnapShot(0);
  v11 = (a1 + v10[5]);
  result = v14;
  *v11 = v14;
  v11[1].n128_u64[0] = v15;
  v13 = (a1 + v10[6]);
  *v13 = v14;
  v13[1].n128_u64[0] = v15;
  *(a1 + v10[7]) = 0;
  *(a1 + v10[8]) = v8;
  *(a1 + v10[9]) = v9;
  return result;
}

uint64_t sub_10001FEC0()
{
  v1 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__previousButtonItem;
  v2 = sub_1000026FC(&qword_10003B748, &qword_1000294A8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__nextButtonItem, v2);
  v4 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__visibleSubItems;
  v5 = sub_1000026FC(&qword_10003B750, &qword_1000294B0);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__visibleTopItems, v5);
  v7 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__closeButtonItem;
  v8 = sub_1000026FC(&qword_10003ACD0, &qword_100028478);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_cancellables);

  sub_100007128(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_snapshot, &qword_10003B758, &qword_1000294B8);
  v10 = *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pager);

  v14 = *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 88);
  v13 = *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 80);
  sub_1000210B4(*(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 8), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 16), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 24), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 32), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 40), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 48), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 56), *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent + 64));
  v11 = *(v0 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_topLevelActionButtons);

  return v0;
}

uint64_t sub_1000200AC()
{
  sub_10001FEC0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_10002012C()
{
  sub_100020810(319, &qword_10003B2F8, &qword_10003B300, &qword_100029210, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_100020810(319, &qword_10003B308, &qword_10003B310, &qword_100029218, &type metadata accessor for Published);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_100020810(319, &qword_10003AC78, &qword_10003AC80, &qword_100027CE8, &type metadata accessor for Published);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_10002076C(319, &unk_10003B318, type metadata accessor for StateSnapShot);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_100020380(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000203B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ButtonBarLayout(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000203F8()
{
  sub_100002AD8();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000204C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000205B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }

  return result;
}

void sub_100020678()
{
  sub_10002076C(319, &qword_10003B6F0, type metadata accessor for CameraCloseButton);
  if (v0 <= 0x3F)
  {
    sub_1000207C0();
    if (v1 <= 0x3F)
    {
      sub_100020810(319, &unk_10003B700, &qword_10003AC90, &qword_100027CA8, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002076C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1000207C0()
{
  if (!qword_10003B6F8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10003B6F8);
    }
  }
}

void sub_100020810(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000028A8(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100020874@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LayoutSize();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000208C4(uint64_t a1, void **a2)
{
  v4 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000070C0(a1, &v14 - v9, &qword_10003AC80, &qword_100027CE8);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000070C0(v10, v7, &qword_10003AC80, &qword_100027CE8);
  v12 = v11;
  static Published.subscript.setter();
  return sub_100007128(v10, &qword_10003AC80, &qword_100027CE8);
}

uint64_t sub_100020A04(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100020AA4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1000070C0(a1, &v13 - v9, &qword_10003AC80, &qword_100027CE8);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000070C0(v10, v7, &qword_10003AC80, &qword_100027CE8);

  static Published.subscript.setter();
  sub_10001D964();
  return sub_100007128(v10, &qword_10003AC80, &qword_100027CE8);
}

double sub_100020C18@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_100020CB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100006D60(v2, v3, v4);
  return static Published.subscript.setter();
}

uint64_t sub_100020D7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100020E0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100020F7C()
{
  result = qword_10003B740;
  if (!qword_10003B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B740);
  }

  return result;
}

uint64_t sub_100020FD0()
{
  sub_1000068C0(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_100021098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000203F8();
}

uint64_t sub_1000210B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8, void *a9)
{
  if (a2)
  {

    sub_1000068C0(a5, a6 & 1);
  }

  return result;
}

unint64_t sub_100021134(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000026FC(&qword_10003B7A0, &unk_1000294E0);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for AnyCancellable();
    sub_100022274(&qword_10003B7A8, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_100022274(&qword_10003B7B0, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000213C8(void *a1, double a2)
{
  v3 = v2;
  v89 = a1;
  v5 = sub_1000026FC(&qword_10003B760, &qword_1000294C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v74 - v8;
  v10 = sub_1000026FC(&qword_10003B768, &qword_1000294C8);
  v85 = *(v10 - 8);
  v86 = v10;
  v11 = *(v85 + 64);
  __chkstk_darwin(v10);
  v84 = &v74 - v12;
  v13 = sub_1000026FC(&qword_10003B770, &qword_1000294D0);
  v82 = *(v13 - 8);
  v83 = v13;
  v14 = *(v82 + 64);
  __chkstk_darwin(v13);
  v81 = &v74 - v15;
  v16 = sub_1000026FC(&qword_10003B778, &qword_1000294D8);
  v79 = *(v16 - 8);
  v80 = v16;
  v17 = *(v79 + 64);
  __chkstk_darwin(v16);
  v78 = &v74 - v18;
  v90 = sub_1000026FC(&qword_10003ACD0, &qword_100028478);
  v88 = *(v90 - 8);
  v19 = *(v88 + 64);
  __chkstk_darwin(v90);
  v91 = &v74 - v20;
  v87 = sub_1000026FC(&qword_10003AC80, &qword_100027CE8);
  v21 = *(*(v87 - 8) + 64);
  v22 = __chkstk_darwin(v87);
  v92 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v93 = &v74 - v24;
  v25 = sub_1000026FC(&qword_10003B750, &qword_1000294B0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v29 = &v74 - v28;
  v30 = sub_1000026FC(&qword_10003B748, &qword_1000294A8);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  result = __chkstk_darwin(v30);
  v35 = &v74 - v34;
  if (qword_10003CE20)
  {
    v75 = v9;
    v76 = v6;
    v77 = v5;
    v36 = *(qword_10003CE20 + OBJC_IVAR____TtC9CarCamera17CameraAppDelegate_layoutConfig);
    if (v36 != 2)
    {
      *(v3 + 32) = v36 & 1;
      v37 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__previousButtonItem;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      sub_1000026FC(&qword_10003B300, &qword_100029210);
      Published.init(initialValue:)();
      v38 = *(v31 + 32);
      v38(v3 + v37, v35, v30);
      v39 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__nextButtonItem;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      Published.init(initialValue:)();
      v38(v3 + v39, v35, v30);
      v40 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__visibleSubItems;
      v94 = 0;
      sub_1000026FC(&qword_10003B310, &qword_100029218);
      Published.init(initialValue:)();
      v41 = *(v26 + 32);
      v41(v3 + v40, v29, v25);
      v42 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__visibleTopItems;
      v94 = 0;
      Published.init(initialValue:)();
      v41(v3 + v42, v29, v25);
      v43 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout__closeButtonItem;
      v44 = type metadata accessor for CameraCloseButton();
      v45 = v93;
      (*(*(v44 - 8) + 56))(v93, 1, 1, v44);
      sub_1000070C0(v45, v92, &qword_10003AC80, &qword_100027CE8);
      v46 = v91;
      Published.init(initialValue:)();
      sub_100007128(v45, &qword_10003AC80, &qword_100027CE8);
      (*(v88 + 32))(v3 + v43, v46, v90);
      v47 = &_swiftEmptyArrayStorage;
      if (&_swiftEmptyArrayStorage >> 62)
      {
        v73 = _CocoaArrayWrapper.endIndex.getter();
        v49 = v89;
        if (!v73)
        {
          goto LABEL_22;
        }

        v48 = sub_100021134(&_swiftEmptyArrayStorage);
      }

      else
      {
        v48 = &_swiftEmptySetSingleton;
        v49 = v89;
      }

      while (1)
      {
        *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_cancellables) = v48;
        v50 = OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_snapshot;
        v51 = type metadata accessor for StateSnapShot(0);
        (*(*(v51 - 8) + 56))(v3 + v50, 1, 1, v51);
        *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_isUpdating) = 0;
        *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pageNumber) = 0;
        v52 = (v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_submenuParent);
        *v52 = 0u;
        v52[1] = 0u;
        v52[2] = 0u;
        v52[3] = 0u;
        v52[4] = 0u;
        *(v52 + 73) = 0u;
        *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_headIndex) = 0;
        *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_tailIndex) = 0;
        *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_topLevelActionButtons) = v47;
        if (qword_10003A258 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_1000036BC(v53, qword_10003CE48);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "ButtonBarLayout init", v56, 2u);
        }

        swift_beginAccess();
        v47 = type metadata accessor for CameraModel();
        sub_100022274(&qword_10003AE98, type metadata accessor for CameraModel);
        v49;
        *(v3 + 16) = ObservedObject.init(wrappedValue:)();
        *(v3 + 24) = v57;
        swift_endAccess();
        v58 = 36.0;
        if (*(v3 + 32))
        {
          v58 = 32.0;
        }

        v59 = a2 / v58;
        if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v59 <= -9.22337204e18)
        {
          goto LABEL_19;
        }

        if (v59 >= 9.22337204e18)
        {
          goto LABEL_20;
        }

        v47 = v59;
        type metadata accessor for Pager();
        v60 = swift_allocObject();
        *(v60 + 32) = 0;
        *(v60 + 40) = 0;
        if (!__OFSUB__(v47, 1))
        {
          *(v60 + 16) = v47 - 1;
          *(v60 + 24) = 1;
          *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pager) = v60;
          swift_getKeyPath();
          swift_getKeyPath();
          v61 = v93;
          static Published.subscript.getter();

          swift_getKeyPath();
          swift_getKeyPath();
          sub_1000070C0(v61, v92, &qword_10003AC80, &qword_100027CE8);

          static Published.subscript.setter();
          sub_10001D964();
          sub_100007128(v61, &qword_10003AC80, &qword_100027CE8);
          swift_beginAccess();
          v62 = v78;
          Published.projectedValue.getter();
          swift_endAccess();
          swift_allocObject();
          swift_weakInit();
          sub_100022314(&qword_10003B780, &qword_10003B778, &qword_1000294D8);

          v63 = v80;
          Publisher<>.sink(receiveValue:)();

          (*(v79 + 8))(v62, v63);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          swift_beginAccess();
          sub_1000026FC(&qword_10003ACC8, &qword_100028470);
          v64 = v81;
          Published.projectedValue.getter();
          swift_endAccess();
          swift_allocObject();
          swift_weakInit();
          sub_100022314(&qword_10003B788, &qword_10003B770, &qword_1000294D0);
          v65 = v83;
          Publisher<>.sink(receiveValue:)();

          (*(v82 + 8))(v64, v65);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          swift_beginAccess();
          sub_1000026FC(&qword_10003ACC0, &qword_100028468);
          v66 = v84;
          Published.projectedValue.getter();
          swift_endAccess();
          swift_allocObject();
          swift_weakInit();
          sub_100022314(&qword_10003B790, &qword_10003B768, &qword_1000294C8);
          v67 = v86;
          Publisher<>.sink(receiveValue:)();

          (*(v85 + 8))(v66, v67);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          swift_beginAccess();
          sub_1000026FC(&qword_10003ACB8, &qword_100028460);
          v68 = v75;
          Published.projectedValue.getter();
          swift_endAccess();
          swift_allocObject();
          swift_weakInit();

          sub_100022314(&qword_10003B798, &qword_10003B760, &qword_1000294C0);
          v69 = v77;
          Publisher<>.sink(receiveValue:)();

          (*(v76 + 8))(v68, v69);
          swift_beginAccess();
          AnyCancellable.store(in:)();
          swift_endAccess();

          v70 = sub_10001DAA8();
          v71 = *(v3 + OBJC_IVAR____TtC9CarCamera15ButtonBarLayout_pager);

          sub_100002E08(v70, 0, 0, 0, 1, 0x692074756F79616CLL, 0xEB0000000074696ELL);

          sub_10001DE70(v72);

          return v3;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        v48 = &_swiftEmptySetSingleton;
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100022274(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000222BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100022314(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000028A8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100022368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026FC(&qword_10003B758, &qword_1000294B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000223D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapShot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002243C(uint64_t a1)
{
  v2 = type metadata accessor for StateSnapShot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000224F4()
{
  v1 = v0;
  v73.receiver = v0;
  v73.super_class = type metadata accessor for CameraViewController();
  objc_msgSendSuper2(&v73, "viewDidLoad");
  if (!qword_10003CE20)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v2 = v0[OBJC_IVAR____TtC9CarCamera20CameraViewController_presentationMode];
  v3 = v2 != 2 && (v2 & 1) != 0;
  *(qword_10003CE20 + OBJC_IVAR____TtC9CarCamera17CameraAppDelegate_layoutConfig) = v3;
  v4 = [v0 view];
  if (!v4)
  {
    goto LABEL_32;
  }

  v5 = v4;
  [v4 frame];

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = objc_allocWithZone(sub_1000026FC(&qword_10003B7E8, &qword_100029540));
  v7 = UIHostingController.init(rootView:)();
  v8 = [v7 view];
  if (!v8)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v9 = v8;
  v10 = [objc_opt_self() blackColor];
  [v9 setBackgroundColor:v10];

  [v1 addChildViewController:v7];
  v11 = [v7 view];
  if (!v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v14 = v13;
  v15 = [v7 view];
  if (!v15)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v16 = v15;
  [v14 addSubview:v15];

  [v7 didMoveToParentViewController:v1];
  sub_1000026FC(&qword_10003B7F0, &qword_100029548);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000294F0;
  v18 = [v7 view];
  v19 = v18;
  if (v2 == 2)
  {
    if (v18)
    {
      v20 = [v18 topAnchor];

      v21 = [v1 view];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 safeAreaLayoutGuide];

        v24 = [v23 topAnchor];
        v25 = [v20 constraintEqualToAnchor:v24];

        *(v17 + 32) = v25;
        v26 = [v7 view];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 bottomAnchor];

          v29 = [v1 view];
          if (v29)
          {
            v30 = v29;
            v31 = [v29 safeAreaLayoutGuide];

            v32 = [v31 bottomAnchor];
            v33 = [v28 constraintEqualToAnchor:v32];

            *(v17 + 40) = v33;
            v34 = [v7 view];
            if (v34)
            {
              v35 = v34;
              v36 = [v34 leadingAnchor];

              v37 = [v1 view];
              if (v37)
              {
                v38 = v37;
                v39 = [v37 safeAreaLayoutGuide];

                v40 = [v39 leadingAnchor];
                v41 = [v36 constraintEqualToAnchor:v40];

                *(v17 + 48) = v41;
                v42 = [v7 view];

                if (v42)
                {
                  v43 = [v42 trailingAnchor];

                  v44 = [v1 view];
                  if (v44)
                  {
                    v45 = v44;
                    v46 = objc_opt_self();
                    v47 = [v45 safeAreaLayoutGuide];

                    v48 = [v47 trailingAnchor];
LABEL_30:
                    v70 = v48;

                    v71 = [v43 constraintEqualToAnchor:v70];
                    *(v17 + 56) = v71;
                    sub_100022E20();
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v46 activateConstraints:isa];

                    CAFSignpostEmit_Rendered();
                    return;
                  }

                  goto LABEL_51;
                }

                goto LABEL_49;
              }

              goto LABEL_47;
            }

            goto LABEL_45;
          }

          goto LABEL_43;
        }

        goto LABEL_41;
      }

      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (!v18)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v49 = [v18 topAnchor];

  v50 = [v1 view];
  if (!v50)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v51 = v50;
  v52 = [v50 topAnchor];

  v53 = [v49 constraintEqualToAnchor:v52];
  *(v17 + 32) = v53;
  v54 = [v7 view];
  if (!v54)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v55 = v54;
  v56 = [v54 bottomAnchor];

  v57 = [v1 view];
  if (!v57)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v58 = v57;
  v59 = [v57 bottomAnchor];

  v60 = [v56 constraintEqualToAnchor:v59];
  *(v17 + 40) = v60;
  v61 = [v7 view];
  if (!v61)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v62 = v61;
  v63 = [v61 leadingAnchor];

  v64 = [v1 view];
  if (!v64)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v65 = v64;
  v66 = [v64 leadingAnchor];

  v67 = [v63 constraintEqualToAnchor:v66];
  *(v17 + 48) = v67;
  v68 = [v7 view];

  if (!v68)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v43 = [v68 trailingAnchor];

  v69 = [v1 view];
  if (v69)
  {
    v47 = v69;
    v46 = objc_opt_self();
    v48 = [v47 trailingAnchor];
    goto LABEL_30;
  }

LABEL_52:
  __break(1u);
}

id sub_100022DC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100022E20()
{
  result = qword_10003B7F8;
  if (!qword_10003B7F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003B7F8);
  }

  return result;
}

uint64_t sub_100022E6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void sub_100022EE0()
{
  v0 = sub_1000026FC(&qword_10003B8C8, &qword_1000295D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v21 - v3;
  v5 = sub_1000026FC(&qword_10003B8D0, &qword_1000295D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v21 - v8;
  v10 = [objc_allocWithZone(CAFCarManager) init];
  sub_100010EE0(0, &qword_10003B8D8, CAFCarManager_ptr);
  sub_100023F6C(&qword_10003B8E0, &qword_10003B8D8, CAFCarManager_ptr);
  v11 = CAFObserved<>.observable.getter();

  v12 = type metadata accessor for CameraCAFManager();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC9CarCamera16CameraCAFManager__model;
  v21[1] = 0;
  sub_1000026FC(&qword_10003B8C0, &qword_100029578);
  Published.init(initialValue:)();
  (*(v6 + 32))(&v13[v14], v9, v5);
  *&v13[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_currentSession] = 0;
  *&v13[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_requestContentManager] = 0;
  *&v13[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_cancellables] = &_swiftEmptySetSingleton;
  v15 = OBJC_IVAR____TtC9CarCamera16CameraCAFManager_sessionStatus;
  *&v13[v15] = [objc_allocWithZone(CARSessionStatus) initWithOptions:1];
  v16 = [objc_allocWithZone(CARSessionStatus) init];
  *&v13[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_carSessionStatus] = v16;
  *&v13[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_carManager] = v11;
  v22.receiver = v13;
  v22.super_class = v12;
  v17 = v11;
  v18 = objc_msgSendSuper2(&v22, "init");
  v19 = *&v18[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_carSessionStatus];
  v20 = v18;
  [v19 addSessionObserver:v20];
  dispatch thunk of CAFCarManagerObservable.$currentCar.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100007210(&qword_10003B8E8, &qword_10003B8C8, &qword_1000295D0);
  Publisher<>.sink(receiveValue:)();

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_1000234D8();

  qword_10003CEB8 = v20;
}

uint64_t sub_1000232B4(void **a1)
{
  v1 = *a1;
  if (qword_10003A258 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000036BC(v2, qword_10003CE48);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v1;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "[CAMERA] currentCar %@", v6, 0xCu);
    sub_100023FB0(v7);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (v1)
    {
      sub_100010EE0(0, &qword_10003B8F0, CAFCar_ptr);
      sub_100023F6C(&unk_10003B8F8, &qword_10003B8F0, CAFCar_ptr);
      v10 = CAFObserved<>.observable.getter();
      v11 = objc_allocWithZone(type metadata accessor for CameraModel());
      sub_10000BFDC(v10);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

id sub_1000234D8()
{
  v1 = v0;
  result = [*(v0 + OBJC_IVAR____TtC9CarCamera16CameraCAFManager_carSessionStatus) currentSession];
  if (result)
  {
    if (qword_10003A258 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000036BC(v3, qword_10003CE48);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "[CAMERA] Created Request Content Manager", v6, 2u);
    }

    v7 = type metadata accessor for CAFUIRequestContentManager();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = CAFUIRequestContentManager.init(session:)();
    v11 = *(v1 + OBJC_IVAR____TtC9CarCamera16CameraCAFManager_requestContentManager);
    *(v1 + OBJC_IVAR____TtC9CarCamera16CameraCAFManager_requestContentManager) = v10;
  }

  return result;
}

uint64_t sub_10002363C(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v17 = *(v6 - 8);
  v18 = v6;
  v7 = *(v17 + 64);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100010EE0(0, &qword_10003B908, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100024058;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000239D0;
  aBlock[3] = &unk_1000362C8;
  v13 = _Block_copy(aBlock);

  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100024078();
  sub_1000026FC(&qword_10003B918, &qword_100029630);
  sub_100007210(&unk_10003B920, &qword_10003B918, &qword_100029630);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v19 + 8))(v5, v2);
  (*(v17 + 8))(v9, v18);
}

void sub_100023930(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC9CarCamera16CameraCAFManager_currentSession);
    *(Strong + OBJC_IVAR____TtC9CarCamera16CameraCAFManager_currentSession) = a2;
    v5 = Strong;
    v6 = a2;
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    sub_1000234D8();
  }
}

uint64_t sub_1000239D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100023A7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_currentSession];
    *&Strong[OBJC_IVAR____TtC9CarCamera16CameraCAFManager_currentSession] = 0;
  }
}

id sub_100023B6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraCAFManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CameraCAFManager()
{
  result = qword_10003B8A8;
  if (!qword_10003B8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100023CD0()
{
  sub_100023D8C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100023D8C()
{
  if (!qword_10003B8B8)
  {
    sub_1000028A8(&qword_10003B8C0, &qword_100029578);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10003B8B8);
    }
  }
}

uint64_t sub_100023DF0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CameraCAFManager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100023E30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100023EB0(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_100023F24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100023F6C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010EE0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100023FB0(uint64_t a1)
{
  v2 = sub_1000026FC(&qword_10003AD20, &qword_100028570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100024018()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100024060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100024078()
{
  result = qword_10003B910;
  if (!qword_10003B910)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003B910);
  }

  return result;
}

uint64_t sub_1000240D0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v0 - 8);
  v1 = *(v15 + 64);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v13 = *(v4 - 8);
  v14 = v4;
  v5 = *(v13 + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100010EE0(0, &qword_10003B908, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1000243A4;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000239D0;
  aBlock[3] = &unk_1000362F0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100024078();
  sub_1000026FC(&qword_10003B918, &qword_100029630);
  sub_100007210(&unk_10003B920, &qword_10003B918, &qword_100029630);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v15 + 8))(v3, v0);
  (*(v13 + 8))(v7, v14);
}

uint64_t sub_1000243B4()
{
  v1 = v0[3];

  sub_100008EDC(v0 + 4);
  v2 = v0[10];

  v3 = v0[12];
  sub_10000B7EC(v0[11]);

  return _swift_deallocClassInstance(v0, 104, 7);
}

uint64_t sub_100024428@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

unint64_t sub_100024438()
{
  v1 = *v0;
  _StringGuts.grow(_:)(21);

  String.append(_:)(v1[1]);
  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 0xD000000000000012;
}

uint64_t sub_1000244B8(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void sub_1000244F0(Swift::String *a1)
{
  if (qword_10003A260 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000036BC(v2, qword_10003CE60);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 136315138;
    v9 = v5;
    _StringGuts.grow(_:)(21);

    String.append(_:)(a1[1]);
    v6._countAndFlagsBits = 62;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = sub_10000B720(0xD000000000000012, 0x8000000100029A90, &v9);

    *(v4 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v3, "[ButtonBarEntity] NavigationButton action %s", v4, 0xCu);
    sub_100008EDC(v5);
  }
}

uint64_t sub_1000246A4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000246EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100024710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024758(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

uint64_t sub_100024804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v9 - v7, a1, a2, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000248FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000249F4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return TupleView.init(_:)();
}

uint64_t sub_100024BC4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v32[1] = type metadata accessor for VStack();
  v32[2] = type metadata accessor for VStack();
  type metadata accessor for _ConditionalContent();
  v6 = type metadata accessor for Group();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = v32 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  __chkstk_darwin(v10);
  v13 = v32 - v12;
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin(v14);
  v33 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v34 = v32 - v19;
  v38 = v5;
  v39 = v4;
  v40 = v3;
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v46 = WitnessTable;
  v47 = v21;
  v22 = swift_getWitnessTable();
  Group<A>.init(content:)();
  static Edge.Set.horizontal.getter();
  v23 = *(v3 + 24);
  v45 = v22;
  v24 = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v35 + 8))(v9, v6);
  static Edge.Set.vertical.getter();
  v25 = *(v3 + 32);
  v43 = v24;
  v44 = &protocol witness table for _PaddingLayout;
  v26 = swift_getWitnessTable();
  v27 = v33;
  View.padding(_:_:)();
  (*(v36 + 8))(v13, v10);
  v41 = v26;
  v42 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  v28 = v15[2];
  v29 = v34;
  v28(v34, v27, v14);
  v30 = v15[1];
  v30(v27, v14);
  v28(v37, v29, v14);
  return (v30)(v29, v14);
}

uint64_t sub_100025040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v7 = type metadata accessor for VStack();
  v45 = *(v7 - 8);
  v8 = v45[8];
  __chkstk_darwin(v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v44 = &v42 - v12;
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v13 = type metadata accessor for VStack();
  v14 = *(v13 - 8);
  v15 = v14[8];
  __chkstk_darwin(v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v21 = type metadata accessor for _ConditionalContent();
  v47 = *(v21 - 8);
  v48 = v21;
  v22 = *(v47 + 64);
  __chkstk_darwin(v21);
  v46 = &v42 - v24;
  if (*a1)
  {
    v25 = *(a1 + 8);
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v28 = *(a1 + 56);
    v29 = *(a1 + 64);
    VStack.init(alignment:spacing:content:)();
    WitnessTable = swift_getWitnessTable();
    v30 = v44;
    v31 = v45;
    v32 = v45[2];
    v32(v44, v10, v7);
    v33 = v31[1];
    v33(v10, v7);
    v32(v10, v30, v7);
    swift_getWitnessTable();
    v34 = v46;
    sub_1000248FC(v10, v13, v7);
    v33(v10, v7);
    v33(v30, v7);
  }

  else
  {
    v45 = &v42;
    __chkstk_darwin(v23);
    *(&v42 - 4) = a2;
    *(&v42 - 3) = a3;
    *(&v42 - 2) = a1;
    static HorizontalAlignment.center.getter();
    VStack.init(alignment:spacing:content:)();
    swift_getWitnessTable();
    v35 = v14[2];
    v35(v20, v17, v13);
    v36 = v14[1];
    v36(v17, v13);
    v35(v17, v20, v13);
    swift_getWitnessTable();
    v34 = v46;
    sub_100024804(v17, v13);
    v36(v17, v13);
    v36(v20, v13);
  }

  v37 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v50 = v37;
  v51 = v38;
  v39 = v48;
  swift_getWitnessTable();
  v40 = v47;
  (*(v47 + 16))(v49, v34, v39);
  return (*(v40 + 8))(v34, v39);
}

uint64_t sub_100025568(uint64_t a1)
{
  v2 = type metadata accessor for HStack();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v19 - v8;
  v10 = *(a1 + 16);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  v16 = v3[2];
  v16(v9, v6, v2);
  v17 = v3[1];
  v17(v6, v2);
  v21 = 0;
  v22 = 1;
  v23[0] = &v21;
  v16(v6, v9, v2);
  v23[1] = v6;
  v20[0] = &type metadata for Spacer;
  v20[1] = v2;
  v19[0] = &protocol witness table for Spacer;
  v19[1] = WitnessTable;
  sub_1000249F4(v23, 2uLL, v20);
  v17(v9, v2);
  return (v17)(v6, v2);
}

uint64_t sub_100025754@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = *(v2 + 8);
  v4 = *v2;
  v5 = v2[1];
  return sub_100024BC4(a1, a2);
}

uint64_t sub_1000257A4()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_100025568(v0[4]);
}

uint64_t sub_1000257E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for HStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for VStack();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}