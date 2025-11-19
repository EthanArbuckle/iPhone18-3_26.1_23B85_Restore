uint64_t sub_1000018D8@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = sub_100002120(&qword_100020688, &qword_100014208);
  v1 = (*(*(v46 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v45 = &v36 - v2;
  v39 = sub_100002120(&qword_100020690, &qword_100014210);
  v44 = *(v39 - 8);
  v3 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v5 = &v36 - v4;
  v6 = sub_100002120(&qword_100020698, &qword_100014218);
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  v8 = (__chkstk_darwin)();
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v49 = &v36 - v10;
  v11 = sub_100002120(&qword_1000206A0, &qword_100014220);
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  v40 = sub_100002120(&qword_1000206A8, &qword_100014228);
  v38 = *(v40 - 8);
  v16 = v38;
  v17 = *(v38 + 64);
  v18 = __chkstk_darwin(v40);
  v48 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v36 - v20;
  sub_100002120(&qword_1000206B0, &qword_100014230);
  sub_100002168();
  WindowGroup.init(id:title:lazyContent:)();
  sub_100002440(&qword_100020700, &qword_1000206A0, &qword_100014220);
  v22 = v21;
  v37 = v21;
  Scene.extendedLaunchTestName(_:)();
  (*(v12 + 8))(v15, v11);
  AssistiveAccess.init(content:)();
  sub_100002440(&qword_100020708, &qword_100020690, &qword_100014210);
  v23 = v49;
  v24 = v39;
  Scene.extendedLaunchTestName(_:)();
  (*(v44 + 8))(v5, v24);
  v25 = *(v16 + 16);
  v26 = v48;
  v27 = v40;
  v25(v48, v22, v40);
  v29 = v41;
  v28 = v42;
  v30 = *(v42 + 16);
  v31 = v43;
  v30(v41, v23, v43);
  v32 = v45;
  v25(v45, v26, v27);
  v30(&v32[*(v46 + 48)], v29, v31);
  _TupleScene.init(_:)();
  v33 = *(v28 + 8);
  v33(v49, v31);
  v34 = *(v38 + 8);
  v34(v37, v27);
  v33(v29, v31);
  return (v34)(v48, v27);
}

uint64_t sub_100001E70(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100001F38@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PhotoLibraryView();
  sub_10000234C();
  NavigationStack.init<>(root:)();
  KeyPath = swift_getKeyPath();
  v3 = (a1 + *(sub_100002120(&qword_1000206C8, &qword_100014238) + 36));
  v4 = *(sub_100002120(&qword_1000206E8, &qword_100014248) + 28);
  v5 = enum case for ColorScheme.dark(_:);
  v6 = type metadata accessor for ColorScheme();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  *v3 = KeyPath;
  v7 = static Color.black.getter();
  v8 = swift_getKeyPath();
  result = sub_100002120(&qword_1000206B0, &qword_100014230);
  v10 = (a1 + *(result + 36));
  *v10 = v8;
  v10[1] = v7;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000020A0();
  static App.main()();
  return 0;
}

unint64_t sub_1000020A0()
{
  result = qword_100020680;
  if (!qword_100020680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020680);
  }

  return result;
}

uint64_t sub_100002120(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002168()
{
  result = qword_1000206B8;
  if (!qword_1000206B8)
  {
    sub_100002220(&qword_1000206B0, &qword_100014230);
    sub_100002268();
    sub_100002440(&qword_1000206F0, &qword_1000206F8, &qword_100014250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206B8);
  }

  return result;
}

uint64_t sub_100002220(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002268()
{
  result = qword_1000206C0;
  if (!qword_1000206C0)
  {
    sub_100002220(&qword_1000206C8, &qword_100014238);
    sub_100002440(&qword_1000206D0, &qword_1000206D8, &qword_100014240);
    sub_100002440(&qword_1000206E0, &qword_1000206E8, &qword_100014248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000206C0);
  }

  return result;
}

unint64_t sub_10000234C()
{
  result = qword_100020710;
  if (!qword_100020710)
  {
    type metadata accessor for PhotoLibraryView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020710);
  }

  return result;
}

uint64_t sub_1000023A4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000023D0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_100002440(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002220(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static UIInterfaceOrientation.window.getter()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100002B30(0, &qword_1000207E0, UIScene_ptr);
  sub_100002994();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  if (v3 >= 2)
  {
    if (qword_1000207C0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100002A18(v4, qword_100021C90);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34[0] = v8;
      *v7 = 136315138;
      v9 = Set.description.getter();
      v11 = sub_100002B78(v9, v10, v34);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Unexpectedly had multiple scenes: %s", v7, 0xCu);
      sub_100003120(v8);
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v13 = v34[0];
    v12 = v34[1];
    v14 = v34[2];
    v15 = v34[3];
    v16 = v34[4];
  }

  else
  {
    v17 = -1 << *(v2 + 32);
    v12 = v2 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v2 + 56);

    v15 = 0;
    v13 = v2;
  }

  v20 = (v14 + 64) >> 6;
  if (v13 < 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v21 = v15;
  v22 = v16;
  v23 = v15;
  if (!v16)
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        goto LABEL_28;
      }

      v22 = *(v12 + 8 * v23);
      ++v21;
      if (v22)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_30;
  }

LABEL_21:
  v24 = (v22 - 1) & v22;
  v25 = *(*(v13 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
  if (v25)
  {
    while (1)
    {
      sub_100002B30(0, &qword_1000207F0, UIWindowScene_ptr);
      if ([v25 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        break;
      }

      v15 = v23;
      v16 = v24;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

LABEL_23:
      if (__CocoaSet.Iterator.next()())
      {
        swift_dynamicCast();
        v25 = v33;
        v23 = v15;
        v24 = v16;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    sub_1000029FC();

    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = [v31 effectiveGeometry];
      v29 = [v32 interfaceOrientation];

      goto LABEL_33;
    }
  }

  else
  {
LABEL_28:
    sub_1000029FC();
  }

  if (qword_1000207C0 != -1)
  {
    goto LABEL_38;
  }

LABEL_30:
  v26 = type metadata accessor for Logger();
  sub_100002A18(v26, qword_100021C90);
  v25 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v25, v27, "Unexpectedly had no window scene.", v28, 2u);
  }

  v29 = 1;
LABEL_33:

  return v29;
}

unint64_t sub_100002994()
{
  result = qword_1000207E8;
  if (!qword_1000207E8)
  {
    sub_100002B30(255, &qword_1000207E0, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000207E8);
  }

  return result;
}

uint64_t static UIInterfaceOrientation.fromDeviceOrientation(_:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100002A18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t variable initialization expression of PhotoLibraryView._finishedLaunching@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100002120(&qword_1000207F8, &qword_100014EF0);

  return swift_storeEnumTagMultiPayload();
}

BOOL variable initialization expression of PhotoLibraryView.isPad()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 == 1;
}

uint64_t sub_100002B30(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_100002B78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002C44(v11, 0, 0, 1, a1, a2);
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
    sub_1000031D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003120(v11);
  return v7;
}

unint64_t sub_100002C44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002D50(a5, a6);
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

char *sub_100002D50(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002D9C(a1, a2);
  sub_100002ECC(&off_10001D590);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002D9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002FB8(v5, 0);
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
        v7 = sub_100002FB8(v10, 0);
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

uint64_t sub_100002ECC(uint64_t result)
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

  result = sub_10000302C(result, v12, 1, v3);
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

void *sub_100002FB8(uint64_t a1, uint64_t a2)
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

  sub_100002120(&qword_100020808, &qword_100014350);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000302C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002120(&qword_100020808, &qword_100014350);
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

uint64_t sub_100003120(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 sub_10000316C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000317C(uint64_t a1, int a2)
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

uint64_t sub_10000319C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000031D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000324C(uint64_t a1, unint64_t *a2)
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

__n128 sub_1000032AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000032C0(uint64_t a1, unsigned int a2)
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

uint64_t sub_100003308(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100003378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_100002120(&qword_100020820, &qword_100014448);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  type metadata accessor for PlayerViewModel();
  sub_10000375C();
  a3 &= 1u;
  v12 = *(StateObject.wrappedValue.getter() + 16);

  VideoPlayer<>.init(player:)();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  v14 = &v11[*(sub_100002120(&qword_100020830, &qword_100014450) + 36)];
  *v14 = sub_1000037C0;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  v16 = &v11[*(sub_100002120(&qword_100020838, &qword_100014458) + 36)];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = sub_100003824;
  *(v16 + 3) = v15;
  v11[*(v8 + 36)] = 1;
  sub_10000384C();
  sub_10000384C();
  sub_100003854();
  View.accessibilityIdentifier(_:)();
  sub_100003A78(v11);
  v17 = *(StateObject.wrappedValue.getter() + 24);

  v18 = *(StateObject.wrappedValue.getter() + 32);

  v19 = a4 + *(sub_100002120(&qword_100020870, &qword_100014468) + 36);
  *v19 = v17 / v18;
  *(v19 + 8) = 0;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = 1;
  result = sub_100002120(&qword_100020878, &qword_1000144A0);
  v23 = (a4 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_100003B48;
  v23[2] = v21;
  return result;
}

uint64_t sub_100003644(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  type metadata accessor for PlayerViewModel();
  sub_10000375C();
  [*(StateObject.wrappedValue.getter() + 16) *a4];
}

uint64_t sub_1000036F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_100002120(&qword_100020818, &qword_100014440);
  return sub_100003378(v3, v4, v5, a1 + *(v6 + 44));
}

unint64_t sub_10000375C()
{
  result = qword_100020828;
  if (!qword_100020828)
  {
    type metadata accessor for PlayerViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020828);
  }

  return result;
}

uint64_t sub_1000037E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1000037B8();

  return _swift_deallocObject(v0, 33, 7);
}

unint64_t sub_100003854()
{
  result = qword_100020840;
  if (!qword_100020840)
  {
    sub_100002220(&qword_100020820, &qword_100014448);
    sub_1000038E0();
    sub_100003A24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020840);
  }

  return result;
}

unint64_t sub_1000038E0()
{
  result = qword_100020848;
  if (!qword_100020848)
  {
    sub_100002220(&qword_100020838, &qword_100014458);
    sub_10000396C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020848);
  }

  return result;
}

unint64_t sub_10000396C()
{
  result = qword_100020850;
  if (!qword_100020850)
  {
    sub_100002220(&qword_100020830, &qword_100014450);
    sub_100002440(&qword_100020858, &qword_100020860, &qword_100014460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020850);
  }

  return result;
}

unint64_t sub_100003A24()
{
  result = qword_100020868;
  if (!qword_100020868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020868);
  }

  return result;
}

uint64_t sub_100003A78(uint64_t a1)
{
  v2 = sub_100002120(&qword_100020820, &qword_100014448);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003AE0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100003BBC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for RoundedRectangle();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_100003C7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RoundedRectangle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PhotoViewInternal()
{
  result = qword_1000208E8;
  if (!qword_1000208E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100003D6C()
{
  sub_100003E68(319, &qword_1000208F8, &qword_100020900, &qword_1000144D8);
  if (v0 <= 0x3F)
  {
    sub_100003E68(319, &qword_100020908, &qword_100020910, qword_1000144E0);
    if (v1 <= 0x3F)
    {
      sub_100003EBC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for RoundedRectangle();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100003E68(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100002220(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100003EBC()
{
  if (!qword_100020918)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100020918);
    }
  }
}

uint64_t sub_100003F28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100002120(&qword_100020958, &qword_100014538);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v37 - v6;
  v8 = type metadata accessor for PhotoViewInternal();
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = sub_100002120(&qword_100020960, &qword_100014540);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v63 = *(v1 + 16);
  sub_100002120(&qword_100020968, &qword_100014548);
  State.wrappedValue.getter();
  v15 = *&v60[0];
  if (*&v60[0])
  {
    v42 = v11;
    v45 = *&v60[0];
    v46 = a1;
    v39 = static Color.clear.getter();
    v16 = static Alignment.center.getter();
    v43 = v7;
    v44 = v4;
    v37 = v16;
    v18 = v17;
    v19 = static Alignment.center.getter();
    v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = v20;
    sub_100004500(v15, v2, &v63);
    v54 = v65;
    v55 = v66;
    v56 = v67;
    v57 = v68;
    v52 = v63;
    v53 = v64;
    v59 = v68;
    v58[2] = v65;
    v58[3] = v66;
    v58[4] = v67;
    v58[0] = v63;
    v58[1] = v64;
    v40 = v10;
    v38 = v2;
    sub_10000554C(&v52, v60, &qword_100020A08, &qword_100014598);
    sub_1000055B4(v58, &qword_100020A08, &qword_100014598);
    v66 = v54;
    v67 = v55;
    v68 = v56;
    v64 = v52;
    v65 = v53;
    *&v60[0] = v19;
    *(&v60[0] + 1) = v21;
    v60[1] = v52;
    v60[2] = v53;
    v60[4] = v55;
    v60[5] = v56;
    v60[3] = v54;
    *&v61 = v57;
    *(&v61 + 1) = v37;
    v62 = v18;
    v51 = 0;
    *&v50[54] = v54;
    *&v50[38] = v53;
    *&v50[22] = v52;
    *&v50[6] = v60[0];
    *&v50[118] = v18;
    *&v50[102] = v61;
    *&v50[86] = v56;
    *&v50[70] = v55;
    *&v63 = v19;
    *(&v63 + 1) = v21;
    v69 = v57;
    v70 = v37;
    v71 = v18;
    sub_10000554C(v60, &v49, &qword_1000209C8, &qword_100014578);
    sub_1000055B4(&v63, &qword_1000209C8, &qword_100014578);
    LOBYTE(v18) = v51;
    v22 = *(v47 + 36);
    v23 = &v14[*(sub_100002120(&qword_100020998, &qword_100014560) + 36)];
    v24 = v38;
    sub_10000542C(v38 + v22, v23, &type metadata accessor for RoundedRectangle);
    *(v23 + *(sub_100002120(&qword_1000209D8, &qword_100014580) + 36)) = 256;
    v25 = *&v50[48];
    *(v14 + 82) = *&v50[64];
    v26 = *&v50[96];
    *(v14 + 98) = *&v50[80];
    *(v14 + 114) = v26;
    *(v14 + 8) = *&v50[110];
    *(v14 + 18) = *v50;
    v27 = *&v50[32];
    *(v14 + 34) = *&v50[16];
    *(v14 + 50) = v27;
    *v14 = v39;
    *(v14 + 1) = 0x3FF0000000000000;
    v14[16] = v18;
    v14[17] = 0;
    *(v14 + 66) = v25;
    v28 = &v14[*(sub_100002120(&qword_100020988, &qword_100014558) + 36)];
    sub_10000542C(v24 + v22, v28, &type metadata accessor for RoundedRectangle);
    *(v28 + *(sub_100002120(&qword_1000209E8, &qword_100014588) + 36)) = 0;
    v29 = v41;
    sub_10000542C(v24, v41, type metadata accessor for PhotoViewInternal);
    v30 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v31 = swift_allocObject();
    sub_100004F58(v29, v31 + v30);
    v32 = v43;
    v33 = &v14[*(v42 + 36)];
    *v33 = 0;
    *(v33 + 1) = 0;
    *(v33 + 2) = sub_100005494;
    *(v33 + 3) = v31;
    sub_10000554C(v14, v32, &qword_100020960, &qword_100014540);
    swift_storeEnumTagMultiPayload();
    sub_100002120(&qword_100020970, &qword_100014550);
    sub_10000503C();
    sub_100005374();
    _ConditionalContent<>.init(storage:)();

    return sub_1000055B4(v14, &qword_100020960, &qword_100014540);
  }

  else
  {
    sub_10000542C(v2, &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoViewInternal);
    v35 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v36 = swift_allocObject();
    sub_100004F58(&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
    *v7 = sub_100004FBC;
    *(v7 + 1) = v36;
    *(v7 + 2) = 0x3FF0000000000000;
    *(v7 + 12) = 0;
    swift_storeEnumTagMultiPayload();
    sub_100002120(&qword_100020970, &qword_100014550);
    sub_10000503C();
    sub_100005374();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100004500@<X0>(void *a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Image.ResizingMode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1;
  Image.init(uiImage:)();
  (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
  v12 = Image.resizable(capInsets:resizingMode:)();

  (*(v7 + 8))(v10, v6);
  v13 = Image.init(systemName:)();
  v14 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v16 = static Color.black.getter();
  v17 = [*a2 mediaType];
  v25 = 1;
  v18 = 1.0;
  if (v17 != 2)
  {
    v18 = 0.0;
  }

  *&v26 = v13;
  *(&v26 + 1) = KeyPath;
  *&v27 = v14;
  *(&v27 + 1) = v16;
  v28 = 0x402C000000000000;
  v29 = 0;
  *&v30 = 0;
  *(&v30 + 1) = v18;
  *&v24[6] = v26;
  *&v24[22] = v27;
  *&v24[38] = 0x402C000000000000uLL;
  *&v24[54] = v30;
  *a3 = v12;
  *(a3 + 8) = 0;
  *(a3 + 16) = 257;
  v19 = *&v24[16];
  *(a3 + 18) = *v24;
  v20 = *&v24[32];
  v21 = *&v24[48];
  *(a3 + 80) = *&v24[62];
  *(a3 + 66) = v21;
  *(a3 + 50) = v20;
  *(a3 + 34) = v19;
  v31[0] = v13;
  v31[1] = KeyPath;
  v31[2] = v14;
  v31[3] = v16;
  v31[5] = 0;
  v31[6] = 0;
  v31[4] = 0x402C000000000000;
  *&v31[7] = v18;

  sub_10000554C(&v26, v23, &qword_100020A18, &qword_1000145D8);
  sub_1000055B4(v31, &qword_100020A18, &qword_1000145D8);
}

uint64_t sub_10000476C(uint64_t a1)
{
  v7 = *(a1 + 16);
  sub_100002120(&qword_100020968, &qword_100014548);
  State.wrappedValue.setter();
  v2 = *(a1 + 32);
  v3 = *(a1 + 36);
  v4 = *(a1 + 40);
  sub_100002120(&qword_100020A10, &qword_1000145A0);
  State.wrappedValue.getter();
  v5 = [objc_opt_self() defaultManager];
  [v5 cancelImageRequest:0];

  return State.wrappedValue.setter();
}

uint64_t sub_10000487C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotoViewInternal();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  ProgressView<>.init<>()();
  sub_10000542C(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoViewInternal);
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = (v12 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_100004F58(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  (*(v7 + 32))(v15 + v14, v9, v6);
  result = sub_100002120(&qword_100020A20, &qword_1000145E0);
  v17 = (a3 + *(result + 36));
  *v17 = sub_1000057B4;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  return result;
}

uint64_t sub_100004A8C(uint64_t a1)
{
  v2 = type metadata accessor for PhotoViewInternal();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultManager];
  v34 = *a1;
  GeometryProxy.size.getter();
  v13 = v12;
  v14 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    v15 = *(a1 + 48);
    GeometryProxy.size.getter();
    v17 = v16;
    v18 = *&v14;
  }

  else
  {
    v19 = *(a1 + 48);

    static os_log_type_t.fault.getter();
    v32 = v3;
    v20 = static Log.runtimeIssuesLog.getter();
    v33 = v11;
    v21 = v20;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F4C(v14, 0);
    v22 = *(v7 + 8);
    v22(v10, v6);
    v18 = *&aBlock;
    GeometryProxy.size.getter();
    v17 = v23;

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v11 = v33;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F4C(v14, 0);
    v22(v10, v6);
    v3 = v32;
    v15 = *&aBlock;
  }

  v25 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v25 setDeliveryMode:0];
  [v25 setNetworkAccessAllowed:1];
  [v25 setAllowSecondaryDegradedImage:1];
  sub_10000542C(a1, &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotoViewInternal);
  v26 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v27 = swift_allocObject();
  sub_100004F58(v5, v27 + v26);
  v41 = sub_10000599C;
  v42 = v27;
  *&aBlock = COERCE_DOUBLE(_NSConcreteStackBlock);
  v38 = 1107296256;
  v39 = sub_1000089B8;
  v40 = &unk_10001D850;
  v28 = _Block_copy(&aBlock);

  LODWORD(v27) = [v11 requestImageForAsset:v34 targetSize:1 contentMode:v25 options:v28 resultHandler:{v13 * v18, v17 * v15}];
  _Block_release(v28);

  v29 = *(a1 + 36);
  v30 = *(a1 + 40);
  LODWORD(aBlock) = *(a1 + 32);
  BYTE4(aBlock) = v29;
  v38 = v30;
  v35 = v27;
  v36 = 0;
  sub_100002120(&qword_100020A10, &qword_1000145A0);
  return State.wrappedValue.setter();
}

void *sub_100004EE4(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = *(a3 + 16);
    v3 = result;
    sub_100002120(&qword_100020968, &qword_100014548);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100004F4C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100004F58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoViewInternal();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoViewInternal() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000487C(a1, v6, a2);
}

unint64_t sub_10000503C()
{
  result = qword_100020978;
  if (!qword_100020978)
  {
    sub_100002220(&qword_100020960, &qword_100014540);
    sub_1000050C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020978);
  }

  return result;
}

unint64_t sub_1000050C8()
{
  result = qword_100020980;
  if (!qword_100020980)
  {
    sub_100002220(&qword_100020988, &qword_100014558);
    sub_100005180();
    sub_100002440(&qword_1000209E0, &qword_1000209E8, &qword_100014588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020980);
  }

  return result;
}

unint64_t sub_100005180()
{
  result = qword_100020990;
  if (!qword_100020990)
  {
    sub_100002220(&qword_100020998, &qword_100014560);
    sub_100005238();
    sub_100002440(&qword_1000209D0, &qword_1000209D8, &qword_100014580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020990);
  }

  return result;
}

unint64_t sub_100005238()
{
  result = qword_1000209A0;
  if (!qword_1000209A0)
  {
    sub_100002220(&qword_1000209A8, &qword_100014568);
    sub_1000052F0();
    sub_100002440(&qword_1000209C0, &qword_1000209C8, &qword_100014578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000209A0);
  }

  return result;
}

unint64_t sub_1000052F0()
{
  result = qword_1000209B0;
  if (!qword_1000209B0)
  {
    sub_100002220(&qword_1000209B8, &qword_100014570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000209B0);
  }

  return result;
}

unint64_t sub_100005374()
{
  result = qword_1000209F0;
  if (!qword_1000209F0)
  {
    sub_100002220(&qword_100020970, &qword_100014550);
    sub_100002440(&qword_1000209F8, &qword_100020A00, &qword_100014590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000209F0);
  }

  return result;
}

uint64_t sub_10000542C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100005494()
{
  v1 = *(type metadata accessor for PhotoViewInternal() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10000476C(v2);
}

uint64_t sub_1000054F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100005520(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10000554C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002120(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000055B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002120(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005614()
{
  v1 = (type metadata accessor for PhotoViewInternal() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;

  v12 = *(v11 + 24);

  v13 = *(v11 + 40);

  sub_100004F4C(*(v11 + 48), *(v11 + 56));
  v14 = v1[11];
  v15 = v14 + *(type metadata accessor for RoundedRectangle() + 20);
  v16 = type metadata accessor for RoundedCornerStyle();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_1000057B4()
{
  v1 = *(type metadata accessor for PhotoViewInternal() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GeometryProxy() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100004A8C(v0 + v2);
}

uint64_t sub_100005880()
{
  v1 = (type metadata accessor for PhotoViewInternal() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(v0 + v3 + 24);

  v6 = *(v0 + v3 + 40);

  sub_100004F4C(*(v0 + v3 + 48), *(v0 + v3 + 56));
  v7 = v1[11];
  v8 = v7 + *(type metadata accessor for RoundedRectangle() + 20);
  v9 = type metadata accessor for RoundedCornerStyle();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void *sub_10000599C(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PhotoViewInternal() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100004EE4(a1, a2, v6);
}

uint64_t sub_100005A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100005A38()
{
  result = qword_100020A28;
  if (!qword_100020A28)
  {
    sub_100002220(&qword_100020A30, &qword_1000145E8);
    sub_10000503C();
    sub_100005374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020A28);
  }

  return result;
}

__n128 sub_100005AD8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100005AF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005B3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005BC8(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_10000885C(a1);
}

uint64_t sub_100005C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100005CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_100005D1C()
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100005D5C(uint64_t a1)
{
  v2 = sub_100002120(&qword_100020A70, &qword_100014710);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v16[-v4 - 8];
  v6 = sub_100002120(&qword_100020A78, &qword_100014718);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v16[-v8 - 8];
  v23 = *a1;
  if ([v23 mediaType] == 2)
  {
    sub_10000609C();
    sub_10000554C(v9, v5, &qword_100020A78, &qword_100014718);
    swift_storeEnumTagMultiPayload();
    sub_100002120(&qword_100020A80, &qword_100014720);
    sub_100007CBC();
    sub_100002440(&qword_100020AB8, &qword_100020A80, &qword_100014720);
    _ConditionalContent<>.init(storage:)();
    return sub_1000055B4(v9, &qword_100020A78, &qword_100014718);
  }

  else
  {
    v11 = *(a1 + 8);
    v21 = *(a1 + 16);
    v22 = v11;
    v12 = *(a1 + 24);
    v19 = *(a1 + 32);
    v20 = v12;
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v13 = swift_allocObject();
    v14 = *(a1 + 16);
    *(v13 + 16) = *a1;
    *(v13 + 32) = v14;
    *(v13 + 48) = *(a1 + 32);
    *(v13 + 64) = *(a1 + 48);
    *v5 = sub_100007CB4;
    v5[1] = v13;
    swift_storeEnumTagMultiPayload();
    sub_100007C58(&v23, v16);
    sub_10000554C(&v22, v16, &qword_100020900, &qword_1000144D8);
    sub_10000554C(&v21, v16, &qword_100020A40, &qword_1000146F0);
    sub_10000554C(&v20, v16, &qword_100020A48, &qword_100015050);
    sub_10000554C(&v19, v16, &qword_100020A50, &qword_1000146F8);
    sub_10000554C(&v17, v16, &qword_100020A58, &qword_100014700);
    sub_100002120(&qword_100020A80, &qword_100014720);
    sub_100007CBC();
    sub_100002440(&qword_100020AB8, &qword_100020A80, &qword_100014720);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10000609C()
{
  v1 = v0;
  v2 = sub_100002120(&qword_100020AC0, &qword_100014738);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v23[-1] - v4);
  v6 = sub_100002120(&qword_100020A98, &qword_100014728);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v23[-1] - v8);
  v10 = v0[3];
  v11 = v0[4];
  v24 = v10;
  v25 = v11;
  sub_100002120(&qword_100020AC8, &qword_100014740);
  State.wrappedValue.getter();
  v12 = v23[0];
  if (v23[0])
  {
    *v9 = static Alignment.bottom.getter();
    v9[1] = v13;
    v14 = v9 + *(sub_100002120(&qword_100020AD0, &qword_100014748) + 44);
    v15 = *(v12 + 24);
    v16 = *(v12 + 32);
    v17 = *(sub_100002120(&qword_100020AD8, &qword_100014750) + 36);

    sub_10000A634(&v14[v17], v15, v16);
    *v14 = sub_100007E5C;
    *(v14 + 1) = v12;
    v14[16] = 0;
    sub_10000554C(v9, v5, &qword_100020A98, &qword_100014728);
    swift_storeEnumTagMultiPayload();
    sub_100002120(&qword_100020AA8, &qword_100014730);
    sub_100002440(&qword_100020A90, &qword_100020A98, &qword_100014728);
    sub_100007D74();
    _ConditionalContent<>.init(storage:)();

    return sub_1000055B4(v9, &qword_100020A98, &qword_100014728);
  }

  else
  {
    v19 = *v1;
    v27 = v1[1];
    v28 = v19;
    v26 = v1[2];
    v29 = v10;
    v30 = v11;
    v24 = v1[5];
    LOBYTE(v25) = *(v1 + 48);
    v20 = swift_allocObject();
    v21 = *(v1 + 1);
    *(v20 + 16) = *v1;
    *(v20 + 32) = v21;
    *(v20 + 48) = *(v1 + 2);
    *(v20 + 64) = *(v1 + 48);
    *v5 = sub_100007E54;
    v5[1] = v20;
    v5[2] = 0;
    v5[3] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100007C58(&v28, v23);
    sub_10000554C(&v27, v23, &qword_100020900, &qword_1000144D8);
    sub_10000554C(&v26, v23, &qword_100020A40, &qword_1000146F0);
    sub_10000554C(&v29, v23, &qword_100020A48, &qword_100015050);
    sub_10000554C(&v30, v23, &qword_100020A50, &qword_1000146F8);
    sub_10000554C(&v24, v23, &qword_100020A58, &qword_100014700);
    sub_100002120(&qword_100020AA8, &qword_100014730);
    sub_100002440(&qword_100020A90, &qword_100020A98, &qword_100014728);
    sub_100007D74();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100006468(uint64_t *a1)
{
  if (qword_1000207C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002A18(v2, qword_100021C90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requesting asset for video", v5, 2u);
  }

  v6 = [objc_allocWithZone(PHVideoRequestOptions) init];
  [v6 setNetworkAccessAllowed:1];
  v7 = [objc_opt_self() defaultManager];
  v8 = *a1;
  v22 = a1[1];
  v23 = v8;
  v9 = a1[2];
  v20 = a1[3];
  v21 = v9;
  v10 = a1[5];
  v19 = a1[4];
  v17 = v10;
  v18 = *(a1 + 48);
  v11 = swift_allocObject();
  v12 = *(a1 + 1);
  *(v11 + 16) = *a1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a1 + 2);
  *(v11 + 64) = *(a1 + 48);
  aBlock[4] = sub_100007E64;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000089B8;
  aBlock[3] = &unk_10001D9A0;
  v13 = _Block_copy(aBlock);
  v14 = v6;
  sub_100007C58(&v23, v15);
  sub_10000554C(&v22, v15, &qword_100020900, &qword_1000144D8);
  sub_10000554C(&v21, v15, &qword_100020A40, &qword_1000146F0);
  sub_10000554C(&v20, v15, &qword_100020A48, &qword_100015050);
  sub_10000554C(&v19, v15, &qword_100020A50, &qword_1000146F8);
  sub_10000554C(&v17, v15, &qword_100020A58, &qword_100014700);

  [v7 requestPlayerItemForVideo:v8 options:v14 resultHandler:v13];
  _Block_release(v13);
}

void sub_100006734(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = qword_1000207C0;
    v5 = a1;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100002A18(v6, qword_100021C90);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Got player item", v9, 2u);
    }

    v10 = *a3;
    v11 = v5;
    v12 = [v10 pixelWidth];
    v13 = [v10 pixelHeight];
    type metadata accessor for PlayerViewModel();
    v14 = swift_allocObject();
    v15 = [objc_allocWithZone(AVPlayer) initWithPlayerItem:v11];

    *(v14 + 16) = v15;
    *(v14 + 24) = v12;
    *(v14 + 32) = v13;
    v16 = *(a3 + 32);
    v36[0] = *(a3 + 24);
    v40 = v14;
    v41 = v16;
    v32 = v36[0];
    v33 = v16;
    sub_10000554C(v36, &v39, &qword_100020A48, &qword_100015050);
    sub_10000554C(&v41, &v39, &qword_100020A50, &qword_1000146F8);
    sub_100002120(&qword_100020AC8, &qword_100014740);
    State.wrappedValue.setter();

    sub_1000055B4(v36, &qword_100020A48, &qword_100015050);
    sub_1000055B4(&v41, &qword_100020A50, &qword_1000146F8);
  }

  else
  {
    if (qword_1000207C0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100002A18(v18, qword_100021C90);
    v19 = *a3;
    v40 = *(a3 + 8);
    v41 = v19;
    v20 = *(a3 + 16);
    v38 = *(a3 + 24);
    v39 = v20;
    v21 = *(a3 + 40);
    v37 = *(a3 + 32);
    v32 = v21;
    LOBYTE(v33) = *(a3 + 48);
    sub_100007C58(&v41, v36);
    sub_10000554C(&v40, v36, &qword_100020900, &qword_1000144D8);
    sub_10000554C(&v39, v36, &qword_100020A40, &qword_1000146F0);
    sub_10000554C(&v38, v36, &qword_100020A48, &qword_100015050);
    sub_10000554C(&v37, v36, &qword_100020A50, &qword_1000146F8);
    sub_10000554C(&v32, v36, &qword_100020A58, &qword_100014700);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    sub_100007E84(&v41);
    sub_1000055B4(&v40, &qword_100020900, &qword_1000144D8);
    v24 = v23;
    sub_1000055B4(&v39, &qword_100020A40, &qword_1000146F0);
    sub_1000055B4(&v38, &qword_100020A48, &qword_100015050);
    sub_1000055B4(&v37, &qword_100020A50, &qword_1000146F8);
    sub_1000055B4(&v32, &qword_100020A58, &qword_100014700);

    if (os_log_type_enabled(v22, v23))
    {
      v25 = v41;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = a2;
      v36[0] = v28;
      *v26 = 138412546;
      *(v26 + 4) = v25;
      *v27 = v25;
      *(v26 + 12) = 2080;
      sub_100007C58(&v41, v34);

      sub_100002120(&qword_100020AE0, &qword_100014758);
      v29 = String.init<A>(describing:)();
      v31 = sub_100002B78(v29, v30, v36);

      *(v26 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v22, v24, "Could not get playerItem for %@. Info: %s", v26, 0x16u);
      sub_1000055B4(v27, &qword_100020AE8, &qword_100014760);

      sub_100003120(v28);
    }
  }
}

uint64_t sub_100006C40(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a2;
  v5(a2, v6);
}

uint64_t sub_100006CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_100002120(&qword_100020AF0, &qword_100014768);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v24[-v10 - 8];
  sub_100007044(a2, &v24[-v10 - 8]);
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = &v11[*(v8 + 36)];
  v13 = v28;
  *v12 = v27;
  v12[1] = v13;
  v12[2] = v29;
  GeometryProxy.size.getter();
  v25 = v14;
  v26 = v15;
  v16 = *a2;
  v35 = *(a2 + 8);
  v36 = v16;
  v17 = *(a2 + 16);
  v33 = *(a2 + 24);
  v34 = v17;
  v18 = *(a2 + 40);
  v32 = *(a2 + 32);
  v31 = *(a2 + 48);
  v30 = v18;
  (*(v6 + 16))(&v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v5);
  v19 = (*(v6 + 80) + 65) & ~*(v6 + 80);
  v20 = swift_allocObject();
  v21 = *(a2 + 16);
  *(v20 + 16) = *a2;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(a2 + 32);
  *(v20 + 64) = *(a2 + 48);
  (*(v6 + 32))(v20 + v19, &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v5);
  sub_100007C58(&v36, v24);
  sub_10000554C(&v35, v24, &qword_100020900, &qword_1000144D8);
  sub_10000554C(&v34, v24, &qword_100020A40, &qword_1000146F0);
  sub_10000554C(&v33, v24, &qword_100020A48, &qword_100015050);
  sub_10000554C(&v32, v24, &qword_100020A50, &qword_1000146F8);
  sub_10000554C(&v30, v24, &qword_100020A58, &qword_100014700);
  type metadata accessor for CGSize(0);
  sub_10000802C();
  sub_1000083C4(&qword_100020B60, type metadata accessor for CGSize);
  View.onChange<A>(of:initial:_:)();

  return sub_1000055B4(v11, &qword_100020AF0, &qword_100014768);
}

uint64_t sub_100007044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002120(&qword_100020B28, &qword_100014780);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v23 - v11;
  v13 = sub_100002120(qword_100020B68, &qword_100014798);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = v23 - v15;
  v24 = *(a1 + 8);
  sub_100002120(&qword_100020968, &qword_100014548);
  State.wrappedValue.getter();
  if (v26)
  {
    v17 = v26;
    v23[1] = a2;
    v18 = v17;
    Image.init(uiImage:)();
    (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
    v19 = Image.resizable(capInsets:resizingMode:)();

    (*(v5 + 8))(v8, v4);
    v24 = v19;
    v25 = 1;
    sub_100002120(&qword_100020B48, &qword_100014790);
    sub_100008340();
    View.accessibilityIdentifier(_:)();

    [v18 size];
    sub_10000A634(&v12[*(v9 + 36)], v20, v21);
    sub_10000554C(v12, v16, &qword_100020B28, &qword_100014780);
    swift_storeEnumTagMultiPayload();
    sub_1000081C8();
    sub_100007E00();
    _ConditionalContent<>.init(storage:)();

    return sub_1000055B4(v12, &qword_100020B28, &qword_100014780);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1000081C8();
    sub_100007E00();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_100007380(double *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  GeometryProxy.size.getter();
  v9 = v8;
  v10 = a1[5];
  v35 = v10;
  v36 = *(a1 + 48);
  if (v36 == 1)
  {
    v11 = v10;
    GeometryProxy.size.getter();
    v13 = v12;
    v14 = v10;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v27 = v7;
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000055B4(&v35, &qword_100020A58, &qword_100014700);
    v16 = *(v3 + 8);
    v16(v6, v2);
    v14 = *aBlock;
    GeometryProxy.size.getter();
    v13 = v17;

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v7 = v27;
    sub_1000055B4(&v35, &qword_100020A58, &qword_100014700);
    v16(v6, v2);
    v11 = *aBlock;
  }

  v34 = *a1;
  v19 = *&v34;
  v20 = [objc_allocWithZone(PHImageRequestOptions) init];
  [v20 setDeliveryMode:0];
  [v20 setNetworkAccessAllowed:1];
  [v20 setAllowSecondaryDegradedImage:1];
  v21 = *(a1 + 1);
  v32 = *(a1 + 2);
  v33 = v21;
  v22 = *(a1 + 3);
  v30 = *(a1 + 4);
  v31 = v22;
  v23 = swift_allocObject();
  v24 = *(a1 + 1);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(a1 + 2);
  *(v23 + 64) = *(a1 + 48);
  aBlock[4] = sub_100008470;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000089B8;
  aBlock[3] = &unk_10001DA18;
  v25 = _Block_copy(aBlock);
  sub_10000554C(&v35, v28, &qword_100020A58, &qword_100014700);
  sub_100007C58(&v34, v28);
  sub_10000554C(&v33, v28, &qword_100020900, &qword_1000144D8);
  sub_10000554C(&v32, v28, &qword_100020A40, &qword_1000146F0);
  sub_10000554C(&v31, v28, &qword_100020A48, &qword_100015050);
  sub_10000554C(&v30, v28, &qword_100020A50, &qword_1000146F8);

  [v7 requestImageForAsset:v19 targetSize:0 contentMode:v20 options:v25 resultHandler:{v9 * v14, v13 * v11}];
  _Block_release(v25);
}

uint64_t sub_1000077C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v3 = a1;
  sub_100002120(&qword_100020968, &qword_100014548);
  return State.wrappedValue.setter();
}

uint64_t sub_10000781C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100007890@<X0>(uint64_t a1@<X8>)
{
  ProgressView<>.init<>()();
  v2 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  result = sub_100002120(&qword_100020BF0, &qword_100014930);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_1000078F4()
{
  v0 = sub_100002120(&qword_100020BF0, &qword_100014930);
  v1 = sub_100008684();

  return Label.init(title:icon:)(sub_10000781C, 0, sub_100007890, 0, &type metadata for Text, v0, &protocol witness table for Text, v1);
}

uint64_t sub_10000798C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = sub_100002120(&qword_100020A38, &qword_1000146E8);
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v18 - v4;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v24 = *v1;
  v6 = v24;
  v25 = v8;
  v11 = v1[4];
  v10 = v1[5];
  v26 = v7;
  v27 = v11;
  v28 = v9;
  v29 = v10;
  v30 = *(v1 + 48);
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  v13 = v1[5];
  *(v12 + 48) = v11;
  *(v12 + 56) = v13;
  *(v12 + 64) = *(v1 + 48);
  v22 = sub_100007C50;
  v23 = v12;
  sub_100007C58(&v24, v21);
  sub_10000554C(&v26, v21, &qword_100020900, &qword_1000144D8);
  sub_10000554C(&v25, v21, &qword_100020A40, &qword_1000146F0);
  sub_10000554C(&v28, v21, &qword_100020A48, &qword_100015050);
  sub_10000554C(&v27, v21, &qword_100020A50, &qword_1000146F8);
  sub_10000554C(&v29, v21, &qword_100020A58, &qword_100014700);
  LocalizedStringKey.init(stringLiteral:)();
  v14 = sub_100002120(&qword_100020A60, &qword_100014708);
  v15 = sub_100002440(&qword_100020A68, &qword_100020A60, &qword_100014708);
  View.navigationTitle(_:)();

  v22 = v14;
  v23 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v19;
  View.assistiveAccessNavigationIcon(systemImage:)();
  return (*(v2 + 8))(v5, v16);
}

unint64_t sub_100007CBC()
{
  result = qword_100020A88;
  if (!qword_100020A88)
  {
    sub_100002220(&qword_100020A78, &qword_100014718);
    sub_100002440(&qword_100020A90, &qword_100020A98, &qword_100014728);
    sub_100007D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020A88);
  }

  return result;
}

unint64_t sub_100007D74()
{
  result = qword_100020AA0;
  if (!qword_100020AA0)
  {
    sub_100002220(&qword_100020AA8, &qword_100014730);
    sub_100007E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020AA0);
  }

  return result;
}

unint64_t sub_100007E00()
{
  result = qword_100020AB0;
  if (!qword_100020AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020AB0);
  }

  return result;
}

uint64_t sub_100007E6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007ED8()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  v7 = *(v0 + 40);

  v8 = *(v0 + 48);

  sub_100004F4C(*(v0 + 56), *(v0 + 64));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100007FC8()
{
  v1 = *(*(type metadata accessor for GeometryProxy() - 8) + 80);

  sub_100007380((v0 + 16));
}

unint64_t sub_10000802C()
{
  result = qword_100020AF8;
  if (!qword_100020AF8)
  {
    sub_100002220(&qword_100020AF0, &qword_100014768);
    sub_1000080B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020AF8);
  }

  return result;
}

unint64_t sub_1000080B8()
{
  result = qword_100020B00;
  if (!qword_100020B00)
  {
    sub_100002220(&qword_100020B08, &qword_100014770);
    sub_10000813C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B00);
  }

  return result;
}

unint64_t sub_10000813C()
{
  result = qword_100020B10;
  if (!qword_100020B10)
  {
    sub_100002220(&qword_100020B18, &qword_100014778);
    sub_1000081C8();
    sub_100007E00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B10);
  }

  return result;
}

unint64_t sub_1000081C8()
{
  result = qword_100020B20;
  if (!qword_100020B20)
  {
    sub_100002220(&qword_100020B28, &qword_100014780);
    sub_100008284();
    sub_1000083C4(&qword_100020B58, type metadata accessor for PinchToZoomModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B20);
  }

  return result;
}

unint64_t sub_100008284()
{
  result = qword_100020B30;
  if (!qword_100020B30)
  {
    sub_100002220(&qword_100020B38, &qword_100014788);
    sub_100008340();
    sub_1000083C4(&qword_100020B50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B30);
  }

  return result;
}

unint64_t sub_100008340()
{
  result = qword_100020B40;
  if (!qword_100020B40)
  {
    sub_100002220(&qword_100020B48, &qword_100014790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B40);
  }

  return result;
}

uint64_t sub_1000083C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000840C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  sub_100004F4C(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_100008488()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000084D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100008518(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10000856C()
{
  sub_100002220(&qword_100020A38, &qword_1000146E8);
  sub_100002220(&qword_100020A60, &qword_100014708);
  sub_100002440(&qword_100020A68, &qword_100020A60, &qword_100014708);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100008684()
{
  result = qword_100020BF8;
  if (!qword_100020BF8)
  {
    sub_100002220(&qword_100020BF0, &qword_100014930);
    sub_100002440(&qword_100020C00, &qword_100020C08, &qword_100014938);
    sub_100002440(&qword_1000206F0, &qword_1000206F8, &qword_100014250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020BF8);
  }

  return result;
}

uint64_t sub_100008768@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100008794(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_1000087C0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  __chkstk_darwin(a1);
  type metadata accessor for _UIHostingView();
  a1();
  return _UIHostingView.__allocating_init(rootView:)();
}

uint64_t sub_10000885C(void *a1)
{
  v1 = *(*(*((swift_isaMask & *a1) + class metadata base offset for _UIHostingView) - 8) + 64);
  v2 = __chkstk_darwin(a1);
  v3(v2);
  return dispatch thunk of _UIHostingView.rootView.setter();
}

uint64_t sub_1000089BC()
{
  v0 = type metadata accessor for Logger();
  sub_100008B7C(v0, qword_100021C90);
  sub_100002A18(v0, qword_100021C90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100008A40()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignposter();
  sub_100008B7C(v5, qword_100021CA8);
  sub_100002A18(v5, qword_100021CA8);
  if (qword_1000207C0 != -1)
  {
    swift_once();
  }

  v6 = sub_100002A18(v0, qword_100021C90);
  (*(v1 + 16))(v4, v6, v0);
  return OSSignposter.init(logger:)();
}

uint64_t *sub_100008B7C(uint64_t a1, uint64_t *a2)
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

id sub_100008C34(int64_t a1, uint64_t a2, int64_t a3, id a4)
{
  result = [a4 count];
  if (a1 < 0 || result < a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [a4 count];
  if (a3 < 0 || result < a3)
  {
    goto LABEL_17;
  }

  v9 = a3 - a1;
  if (a2 >= 1)
  {
    if (v9 < 0 || v9 >= a2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9 <= 0 && v9 > a2)
  {
    return 0;
  }

LABEL_12:
  v11 = __OFADD__(a1, a2);
  v10 = a1 + a2;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = [a4 count];
  if ((v10 & 0x8000000000000000) == 0 && result >= v10)
  {
    return v10;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_100008D14@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_100008D2C(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

id sub_100008D58@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  *a1 = result;
  return result;
}

void (*sub_100008D8C(void *a1, void *a2))(uint64_t a1)
{
  v4 = [*v2 objectAtIndexedSubscript:*a2];
  *a1 = v4;
  a1[1] = v4;
  return sub_100008DE8;
}

uint64_t sub_100008DF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *v2;
  result = [*v2 count];
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < v4)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v7;

  return v7;
}

unint64_t sub_100008E70@<X0>(void *a1@<X8>)
{
  result = [*v1 count];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = result;
  }

  return result;
}

void *sub_100008EE8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = [*v3 count];
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      *a3 = v5;
      return result;
    }
  }

  __break(1u);
  return result;
}

id sub_100008F44@<X0>(int64_t *a1@<X0>, uint64_t a2@<X1>, int64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_100008C34(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

id sub_100008F80(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *v2;
  result = [*v2 count];
  if (v3 < 0 || result < v3)
  {
    __break(1u);
  }

  else
  {
    result = [v5 count];
    if ((v4 & 0x8000000000000000) == 0 && result >= v4)
    {
      return (v4 - v3);
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_100008FF0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_10000900C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_100009028(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_100009044@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_10000905C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

int64_t sub_100009084()
{
  v1 = *v0;
  v2 = [v1 count];
  result = [v1 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = [v1 count];
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000090FC()
{
  v1 = *v0;
  v2 = sub_1000096C8(*v0);

  return v2;
}

void *sub_100009138(void *result, uint64_t a2, unint64_t a3, id a4)
{
  v5 = result;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *v5 = a4;
    v5[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = a3;
    v9 = (a3 - 1);
    while (1)
    {
      if (v7 == [a4 count])
      {
        a3 = v7;
        goto LABEL_13;
      }

      *(a2 + 8 * v7) = [a4 objectAtIndexedSubscript:v7];
      if (v9 == v7)
      {
        break;
      }

      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v8;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_10000922C()
{
  result = qword_100020C30;
  if (!qword_100020C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C30);
  }

  return result;
}

unint64_t sub_1000092C0()
{
  result = qword_100020C48;
  if (!qword_100020C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C48);
  }

  return result;
}

unint64_t sub_10000935C()
{
  result = qword_100020C60;
  if (!qword_100020C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C60);
  }

  return result;
}

unint64_t sub_10000942C()
{
  result = qword_100020C78;
  if (!qword_100020C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C78);
  }

  return result;
}

uint64_t sub_1000094B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100002220(&qword_100020C40, &qword_100014A18);
    sub_1000092C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009578(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002220(&qword_100020C58, &qword_100014A20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000095F0()
{
  result = qword_100020C90;
  if (!qword_100020C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020C90);
  }

  return result;
}

void *sub_100009644(uint64_t a1, uint64_t a2)
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

  sub_100002120(&qword_100020C98, &qword_100014BB8);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_1000096C8(void *a1)
{
  v2 = [a1 count];
  result = [a1 count];
  if (result < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  result = [a1 count];
  if (v2 < 0 || result < v2)
  {
    goto LABEL_14;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = sub_100009644(v2, 0);
  v5 = a1;
  if ([v5 count])
  {
    v6 = 0;
    v7 = v2 - 1;
    while (1)
    {
      v4[v6 + 4] = [v5 objectAtIndexedSubscript:v6];
      if (v7 == v6)
      {
        break;
      }

      if (++v6 == [v5 count])
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    __break(1u);
  }

  return v4;
}

uint64_t sub_100009810@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v39 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v39);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002120(&qword_100020CA0, &qword_100014C40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v40 = sub_100002120(&qword_100020CA8, &qword_100014C48);
  v11 = *(v40 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v40);
  v14 = &v38 - v13;
  v42 = 0;
  v15 = a1;
  sub_100002120(&qword_100020900, &qword_1000144D8);
  State.init(wrappedValue:)();
  *(v10 + 1) = v44;
  LODWORD(v42) = 0;
  BYTE4(v42) = 1;
  sub_100002120(&qword_100020910, qword_1000144E0);
  State.init(wrappedValue:)();
  v16 = BYTE4(v44);
  v17 = *(&v44 + 1);
  *(v10 + 8) = v44;
  v10[36] = v16;
  *(v10 + 5) = v17;
  *(v10 + 6) = swift_getKeyPath();
  v10[56] = 0;
  v18 = &v10[*(type metadata accessor for PhotoViewInternal() + 36)];
  v19 = *(type metadata accessor for RoundedRectangle() + 20);
  v20 = enum case for RoundedCornerStyle.continuous(_:);
  v21 = type metadata accessor for RoundedCornerStyle();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #10.0 }

  *v18 = _Q0;
  *v10 = v15;
  v10[8] = 0;
  v27 = [v15 localIdentifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = &v10[*(v7 + 52)];
  *v31 = v28;
  v31[1] = v30;
  static AccessibilityChildBehavior.ignore.getter();
  v32 = sub_100009C88();
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v6, v39);
  sub_100009CEC(v10);
  *&v44 = sub_100009ECC(v15);
  *(&v44 + 1) = v33;
  v34._countAndFlagsBits = 8236;
  v34._object = 0xE200000000000000;
  String.append(_:)(v34);
  v35._countAndFlagsBits = sub_100009FAC(v15);
  String.append(_:)(v35);

  v42 = v7;
  v43 = v32;
  swift_getOpaqueTypeConformance2();
  sub_100009D54();
  v36 = v40;
  View.accessibilityLabel<A>(_:)();

  return (*(v11 + 8))(v14, v36);
}

uint64_t sub_100009BE0@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100009C0C@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_100009C88()
{
  result = qword_100020CB0;
  if (!qword_100020CB0)
  {
    sub_100002220(&qword_100020CA0, &qword_100014C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020CB0);
  }

  return result;
}

uint64_t sub_100009CEC(uint64_t a1)
{
  v2 = sub_100002120(&qword_100020CA0, &qword_100014C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100009D54()
{
  result = qword_100020CB8;
  if (!qword_100020CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020CB8);
  }

  return result;
}

unint64_t sub_100009DAC()
{
  result = qword_100020CC0;
  if (!qword_100020CC0)
  {
    sub_100002220(&qword_100020CC8, &qword_100014C80);
    sub_100002220(&qword_100020CA0, &qword_100014C40);
    sub_100009C88();
    swift_getOpaqueTypeConformance2();
    sub_100009E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020CC0);
  }

  return result;
}

unint64_t sub_100009E74()
{
  result = qword_100020B50;
  if (!qword_100020B50)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020B50);
  }

  return result;
}

uint64_t sub_100009ECC(void *a1)
{
  v1 = [a1 mediaType];
  if (v1 == 1)
  {
    v2 = 1414482000;
  }

  else
  {
    if (v1 != 2)
    {
      return 0;
    }

    v2 = 1162103126;
  }

  v3 = [objc_opt_self() mainBundle];
  v8._object = 0x8000000100017940;
  v4._countAndFlagsBits = v2 & 0xFFFF0000FFFFFFFFLL | 0x4F00000000;
  v4._object = 0xE500000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v8)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100009FAC(void *a1)
{
  v2 = sub_100002120(&qword_100020CD0, &qword_100014C88);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 creationDate];
  if (v14)
  {
    v15 = v14;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 56))(v6, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, v9);
  }

  sub_10000A22C(v6, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000A29C(v8);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    if (qword_1000207D0 != -1)
    {
      swift_once();
    }

    v17 = qword_100021CC0;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v19 = [v17 stringFromDate:isa];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v10 + 8))(v13, v9);
    return v20;
  }
}

uint64_t sub_10000A22C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002120(&qword_100020CD0, &qword_100014C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000A29C(uint64_t a1)
{
  v2 = sub_100002120(&qword_100020CD0, &qword_100014C88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000A304(uint64_t *a1@<X8>)
{
  v3 = [*v1 localIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

Swift::Int sub_10000A35C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10000A3C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000A404(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_10000A530();
  return static NSObject.== infix(_:_:)() & 1;
}

void sub_10000A448()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setDateFormat:v1];

  qword_100021CC0 = v0;
}

unint64_t sub_10000A4D0()
{
  result = qword_100020CD8;
  if (!qword_100020CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020CD8);
  }

  return result;
}

unint64_t sub_10000A530()
{
  result = qword_100020CE0;
  if (!qword_100020CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100020CE0);
  }

  return result;
}

uint64_t sub_10000A57C()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_10000A5E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double sub_10000A634@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v6 = type metadata accessor for ScrollPosition();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  *a1 = a2;
  *(a1 + 8) = a3;
  v25 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v14 = *(&v28 + 1);
  *(a1 + 16) = v28;
  *(a1 + 24) = v14;
  v25 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v15 = *(&v28 + 1);
  *(a1 + 32) = v28;
  *(a1 + 40) = v15;
  v16 = type metadata accessor for PinchToZoomModifier();
  v17 = v16[7];
  ScrollPosition.init<A>(idType:)();
  (*(v7 + 16))(v11, v13, v6);
  State.init(wrappedValue:)();
  (*(v7 + 8))(v13, v6);
  v18 = a1 + v16[8];
  type metadata accessor for CGPoint(0);
  v25 = 0;
  v26 = 0;
  State.init(wrappedValue:)();
  v19 = v29;
  *v18 = v28;
  *(v18 + 16) = v19;
  v20 = a1 + v16[9];
  v25 = 0;
  v26 = 0;
  v27 = 1;
  sub_100002120(&qword_100020D90, &qword_100014DD0);
  State.init(wrappedValue:)();
  v21 = v29;
  v22 = v30;
  result = *&v28;
  *v20 = v28;
  *(v20 + 16) = v21;
  *(v20 + 24) = v22;
  *(a1 + v16[10]) = 0x3FF3333333333333;
  return result;
}

uint64_t type metadata accessor for PinchToZoomModifier()
{
  result = qword_100020DF8;
  if (!qword_100020DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100002120(&qword_100020D98, &qword_100014DD8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10000A9B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100002120(&qword_100020D98, &qword_100014DD8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000AA68()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_10000AB74();
    if (v1 <= 0x3F)
    {
      sub_10000ABC4(319, &qword_100020E10, &type metadata accessor for ScrollPosition);
      if (v2 <= 0x3F)
      {
        sub_10000ABC4(319, &qword_100020E18, type metadata accessor for CGPoint);
        if (v3 <= 0x3F)
        {
          sub_10000AC18();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10000AB74()
{
  if (!qword_100020E08)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100020E08);
    }
  }
}

void sub_10000ABC4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000AC18()
{
  if (!qword_100020E20)
  {
    sub_100002220(&qword_100020D90, &qword_100014DD0);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100020E20);
    }
  }
}

uint64_t sub_10000AC98(double a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_100002120(&qword_100020F10, &qword_100014EC0);
  State.wrappedValue.setter();
  result = State.wrappedValue.getter();
  if (a1 < 1.0)
  {
    __chkstk_darwin(result);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10000AD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v2 = sub_100002120(&qword_100020E68, &qword_100014E48);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v20 - v4);
  v6 = type metadata accessor for PinchToZoomModifier();
  v20[0] = *(v6 - 8);
  v7 = *(v20[0] + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100002120(&qword_100020E70, &qword_100014E50);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - v11;
  sub_10000CA2C();
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  v14 = [v13 allowPinchToZoom];

  v15 = *(v9 + 16);
  if (v14)
  {
    v15(v12, v21, v8);
    sub_10000CA78(v20[1], v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = (v10 + *(v20[0] + 80) + v16) & ~*(v20[0] + 80);
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v16, v12, v8);
    sub_10000CCA0(v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    *v5 = sub_10000CD04;
    v5[1] = v18;
  }

  else
  {
    v15(v5, v21, v8);
  }

  swift_storeEnumTagMultiPayload();
  sub_100002120(&qword_100020E78, &qword_100014E58);
  sub_100002440(&qword_100020E80, &qword_100020E78, &qword_100014E58);
  sub_100002440(&qword_100020E88, &qword_100020E70, &qword_100014E50);
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10000B0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a3;
  v105 = a4;
  v106 = a1;
  v98 = type metadata accessor for MagnifyGesture();
  v97 = *(v98 - 8);
  v5 = *(v97 + 64);
  __chkstk_darwin(v98);
  v96 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_100002120(&qword_100020E90, &qword_100014E60);
  v100 = *(v101 - 8);
  v7 = *(v100 + 64);
  __chkstk_darwin(v101);
  v99 = &v77 - v8;
  v104 = sub_100002120(&qword_100020E98, &qword_100014E68);
  v103 = *(v104 - 8);
  v9 = *(v103 + 64);
  __chkstk_darwin(v104);
  v102 = &v77 - v10;
  v93 = type metadata accessor for ScrollIndicatorVisibility();
  v92 = *(v93 - 8);
  v11 = *(v92 + 64);
  __chkstk_darwin(v93);
  v91 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002120(&qword_100020EA0, &qword_100014E70);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v84 = &v77 - v15;
  v81 = type metadata accessor for PinchToZoomModifier();
  v16 = *(v81 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v81);
  v83 = v18;
  v109 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002120(&qword_100020EA8, &qword_100014E78);
  v79 = *(v19 - 8);
  v20 = *(v79 + 64);
  __chkstk_darwin(v19);
  v22 = &v77 - v21;
  v86 = sub_100002120(&qword_100020EB0, &qword_100014E80);
  v80 = *(v86 - 8);
  v23 = *(v80 + 64);
  __chkstk_darwin(v86);
  v25 = &v77 - v24;
  v90 = sub_100002120(&qword_100020EB8, &qword_100014E88);
  v87 = *(v90 - 8);
  v26 = *(v87 + 64);
  __chkstk_darwin(v90);
  v85 = &v77 - v27;
  v107 = sub_100002120(&qword_100020EC0, &qword_100014E90);
  v89 = *(v107 - 8);
  v28 = *(v89 + 64);
  __chkstk_darwin(v107);
  v88 = &v77 - v29;
  v95 = sub_100002120(&qword_100020EC8, &qword_100014E98);
  v94 = *(v95 - 8);
  v30 = *(v94 + 64);
  __chkstk_darwin(v95);
  v108 = &v77 - v31;
  v78 = sub_100002120(&qword_100020ED0, &qword_100014EA0);
  inited = swift_initStackObject();
  v77 = xmmword_100014DB0;
  *(inited + 16) = xmmword_100014DB0;
  v33 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v33;
  v34 = static Axis.Set.vertical.getter();
  *(inited + 33) = v34;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v33)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  v35 = Axis.Set.init(rawValue:)();
  if (v35 != v34)
  {
    v35 = Axis.Set.init(rawValue:)();
  }

  __chkstk_darwin(v35);
  *(&v77 - 4) = a2;
  v36 = v110;
  v37 = v106;
  *(&v77 - 3) = v110;
  v76 = v37;
  sub_100002120(&qword_100020ED8, &qword_100014EA8);
  v38 = sub_100002220(&qword_100020EE0, &qword_100014EB0);
  v39 = sub_10000CE00();
  v111 = v38;
  v112 = v39;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  type metadata accessor for CGPoint(0);
  v41 = v40;
  v42 = v109;
  sub_10000CA78(v36, v109);
  v43 = *(v16 + 80);
  v44 = (v43 + 16) & ~v43;
  v45 = v44 + v83;
  v83 = v43;
  v82 = v45;
  v46 = swift_allocObject();
  v106 = v44;
  sub_10000CCA0(v42, v46 + v44);
  v47 = sub_100002440(&qword_100020F00, &qword_100020EA8, &qword_100014E78);
  v48 = sub_10000D010(&qword_100020F08, type metadata accessor for CGPoint);
  v76 = v48;
  View.onScrollGeometryChange<A>(for:of:action:)();

  (*(v79 + 8))(v22, v19);
  v49 = *(v81 + 28);
  sub_100002120(&qword_100020D98, &qword_100014DD8);
  v50 = v84;
  State.projectedValue.getter();
  v111 = v19;
  v112 = v41;
  v113 = v47;
  v114 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v85;
  v53 = v86;
  View.scrollPosition(_:anchor:)();
  sub_1000055B4(v50, &qword_100020EA0, &qword_100014E70);
  (*(v80 + 8))(v25, v53);
  v54 = v91;
  static ScrollIndicatorVisibility.hidden.getter();
  v55 = swift_initStackObject();
  *(v55 + 16) = v77;
  LOBYTE(v41) = static Axis.Set.vertical.getter();
  *(v55 + 32) = v41;
  v56 = static Axis.Set.horizontal.getter();
  *(v55 + 33) = v56;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v41)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v56)
  {
    Axis.Set.init(rawValue:)();
  }

  v111 = v53;
  v112 = OpaqueTypeConformance2;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v88;
  v59 = v90;
  View.scrollIndicators(_:axes:)();
  (*(v92 + 8))(v54, v93);
  (*(v87 + 8))(v52, v59);
  v60 = v110;
  v61 = *(v110 + 40);
  v111 = *(v110 + 32);
  v112 = v61;
  sub_100002120(&qword_100020F10, &qword_100014EC0);
  State.wrappedValue.getter();
  v111 = v59;
  v112 = v57;
  v93 = swift_getOpaqueTypeConformance2();
  v62 = v107;
  View.scrollDisabled(_:)();
  (*(v89 + 8))(v58, v62);
  v63 = v96;
  MagnifyGesture.init(minimumScaleDelta:)();
  v64 = v109;
  sub_10000CA78(v60, v109);
  v65 = swift_allocObject();
  v66 = v106;
  sub_10000CCA0(v64, v65 + v106);
  sub_10000D010(&qword_100020F18, &type metadata accessor for MagnifyGesture);
  sub_10000D010(&qword_100020F20, &type metadata accessor for MagnifyGesture.Value);
  v67 = v99;
  v68 = v98;
  Gesture<>.onChanged(_:)();

  (*(v97 + 8))(v63, v68);
  sub_10000CA78(v60, v64);
  v69 = swift_allocObject();
  sub_10000CCA0(v64, v69 + v66);
  sub_100002440(&qword_100020F28, &qword_100020E90, &qword_100014E60);
  v70 = v102;
  v71 = v101;
  Gesture.onEnded(_:)();

  (*(v100 + 8))(v67, v71);
  static GestureMask.all.getter();
  v111 = v107;
  v112 = v93;
  swift_getOpaqueTypeConformance2();
  sub_100002440(&qword_100020F30, &qword_100020E98, &qword_100014E68);
  v72 = v95;
  v73 = v104;
  v74 = v108;
  View.highPriorityGesture<A>(_:including:)();
  (*(v103 + 8))(v70, v73);
  return (*(v94 + 8))(v74, v72);
}

uint64_t sub_10000BF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v34 = a4;
  v32 = type metadata accessor for GeometryProxy();
  v6 = *(v32 - 8);
  v33 = *(v6 + 64);
  __chkstk_darwin(v32);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PinchToZoomModifier();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100002120(&qword_100020EF8, &qword_100014EB8);
  v27 = v10;
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v31 = sub_100002120(&qword_100020EE0, &qword_100014EB0);
  v14 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v16 = &v27 - v15;
  sub_10000C2D8();
  sub_10000C2D8();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = sub_100002120(&qword_100020E70, &qword_100014E50);
  (*(*(v17 - 8) + 16))(v13, v30, v17);
  v18 = &v13[*(v10 + 36)];
  v19 = v36;
  *v18 = v35;
  *(v18 + 1) = v19;
  *(v18 + 2) = v37;
  sub_10000CA78(a2, &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v29;
  v21 = a3;
  v22 = v32;
  (*(v6 + 16))(v29, v21, v32);
  v23 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v24 = (v9 + *(v6 + 80) + v23) & ~*(v6 + 80);
  v25 = swift_allocObject();
  sub_10000CCA0(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23);
  (*(v6 + 32))(v25 + v24, v20, v22);
  sub_10000CEBC();
  View.accessibilityZoomAction(_:)();

  sub_1000055B4(v13, &qword_100020EF8, &qword_100014EB8);
  sub_10000CE00();
  View.scrollTargetLayout(isEnabled:)();
  return sub_1000055B4(v16, &qword_100020EE0, &qword_100014EB0);
}

double sub_10000C2D8()
{
  GeometryProxy.size.getter();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_100002120(&qword_100020F10, &qword_100014EC0);
  State.wrappedValue.getter();
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  State.wrappedValue.getter();
  v7 = v2 * (v13 * v13);
  GeometryProxy.size.getter();
  v9 = v8;
  State.wrappedValue.getter();
  State.wrappedValue.getter();
  v10 = v9 * (v13 * v13);
  v11 = *v0 / *(v0 + 8);
  if (v7 / v10 >= v11)
  {
    return v10 * v11;
  }

  return v7;
}

uint64_t sub_10000C404(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ScrollPosition();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  AccessibilityZoomGestureAction.direction.getter();
  if (static AccessibilityZoomGestureAction.Direction.== infix(_:_:)())
  {
    v5 = type metadata accessor for PinchToZoomModifier();
    v6 = *(a2 + *(v5 + 40));
    v11 = *(a2 + 32);
    v13 = *(a2 + 40);
    sub_100002120(&qword_100020F10, &qword_100014EC0);
    State.wrappedValue.getter();
    v7 = v6 * v10;
  }

  else
  {
    v12 = *(a2 + 32);
    v14 = *(a2 + 40);
    sub_100002120(&qword_100020F10, &qword_100014EC0);
    State.wrappedValue.getter();
    v5 = type metadata accessor for PinchToZoomModifier();
    v7 = v10 / *(a2 + *(v5 + 40));
    if (v7 <= 1.0)
    {
      v7 = 1.0;
    }
  }

  sub_10000AC98(v7);
  sub_10000C2D8();
  GeometryProxy.size.getter();
  sub_10000C2D8();
  GeometryProxy.size.getter();
  type metadata accessor for PinchToZoomModifier();
  v8 = *(v5 + 28);
  sub_100002120(&qword_100020D98, &qword_100014DD8);
  State.wrappedValue.getter();
  ScrollPosition.scrollTo(point:)();
  return State.wrappedValue.setter();
}

uint64_t sub_10000C5EC@<X0>(void *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_10000C618(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = (a3 + *(type metadata accessor for PinchToZoomModifier() + 32));
  v7 = *v5;
  v8 = *(v5 + 2);
  sub_100002120(&qword_100020F40, &qword_100014ED0);
  return State.wrappedValue.setter();
}

uint64_t sub_10000C694(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ScrollPosition();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for PinchToZoomModifier();
  v6 = (a2 + v5[9]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  sub_100002120(&qword_100020F38, &qword_100014EC8);
  State.wrappedValue.getter();
  if (v16 == 1)
  {
    v11 = (a2 + v5[8]);
    v17 = *v11;
    v18 = *(v11 + 2);
    sub_100002120(&qword_100020F40, &qword_100014ED0);
    State.wrappedValue.getter();
    v16 = 0;
    State.wrappedValue.setter();
  }

  result = State.wrappedValue.getter();
  if ((v16 & 1) == 0)
  {
    MagnifyGesture.Value.magnification.getter();
    v14 = *(a2 + 24);
    v13 = *(a2 + 16);
    sub_100002120(&qword_100020F10, &qword_100014EC0);
    State.wrappedValue.setter();
    MagnifyGesture.Value.startLocation.getter();
    MagnifyGesture.Value.startLocation.getter();
    State.wrappedValue.getter();
    State.wrappedValue.getter();
    MagnifyGesture.Value.startLocation.getter();
    MagnifyGesture.Value.startLocation.getter();
    v15 = v5[7];
    sub_100002120(&qword_100020D98, &qword_100014DD8);
    State.wrappedValue.getter();
    ScrollPosition.scrollTo(point:)();
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_10000C8FC(uint64_t a1, void *a2)
{
  MagnifyGesture.Value.magnification.getter();
  v4 = v3;
  v8 = a2[4];
  v11 = a2[5];
  sub_100002120(&qword_100020F10, &qword_100014EC0);
  State.wrappedValue.getter();
  sub_10000AC98(v4 * v7);
  v9 = a2[2];
  v12 = a2[3];
  State.wrappedValue.setter();
  v5 = a2 + *(type metadata accessor for PinchToZoomModifier() + 36);
  v10 = *v5;
  v13 = v5[16];
  v14 = *(v5 + 3);
  sub_100002120(&qword_100020F38, &qword_100014EC8);
  return State.wrappedValue.setter();
}

unint64_t sub_10000CA2C()
{
  result = qword_1000211C0;
  if (!qword_1000211C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000211C0);
  }

  return result;
}

uint64_t sub_10000CA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinchToZoomModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CADC()
{
  v1 = sub_100002120(&qword_100020E70, &qword_100014E50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for PinchToZoomModifier() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v8 + 24);

  v12 = *(v0 + v8 + 40);

  v13 = v0 + v8 + v6[9];
  v14 = type metadata accessor for ScrollPosition();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = *(v13 + *(sub_100002120(&qword_100020D98, &qword_100014DD8) + 28));

  v16 = *(v0 + v8 + v6[10] + 16);

  v17 = *(v0 + v8 + v6[11] + 24);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10000CCA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinchToZoomModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_100002120(&qword_100020E70, &qword_100014E50) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PinchToZoomModifier() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_10000B0D0(a1, v2 + v6, v9, a2);
}

unint64_t sub_10000CE00()
{
  result = qword_100020EE8;
  if (!qword_100020EE8)
  {
    sub_100002220(&qword_100020EE0, &qword_100014EB0);
    sub_10000CEBC();
    sub_10000D010(&qword_100020B50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020EE8);
  }

  return result;
}

unint64_t sub_10000CEBC()
{
  result = qword_100020EF0;
  if (!qword_100020EF0)
  {
    sub_100002220(&qword_100020EF8, &qword_100014EB8);
    sub_100002440(&qword_100020E88, &qword_100020E70, &qword_100014E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020EF0);
  }

  return result;
}

uint64_t sub_10000CF74(uint64_t a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for PinchToZoomModifier() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000C618(a1, a2, v6);
}

uint64_t sub_10000D010(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D058()
{
  v1 = (type metadata accessor for PinchToZoomModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 24);

  v6 = *(v0 + v3 + 40);

  v7 = v0 + v3 + v1[9];
  v8 = type metadata accessor for ScrollPosition();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + *(sub_100002120(&qword_100020D98, &qword_100014DD8) + 28));

  v10 = *(v0 + v3 + v1[10] + 16);

  v11 = *(v0 + v3 + v1[11] + 24);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000D1AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PinchToZoomModifier() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10000D260()
{
  v1 = (type metadata accessor for PinchToZoomModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;
  v12 = *(v11 + 24);

  v13 = *(v11 + 40);

  v14 = v11 + v1[9];
  v15 = type metadata accessor for ScrollPosition();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = *(v14 + *(sub_100002120(&qword_100020D98, &qword_100014DD8) + 28));

  v17 = *(v11 + v1[10] + 16);

  v18 = *(v11 + v1[11] + 24);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10000D420(uint64_t a1)
{
  v3 = *(type metadata accessor for PinchToZoomModifier() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for GeometryProxy() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10000C404(a1, v1 + v4);
}

unint64_t sub_10000D4F8()
{
  result = qword_100020F48;
  if (!qword_100020F48)
  {
    sub_100002220(&qword_100020F50, &qword_100014ED8);
    sub_100002440(&qword_100020E80, &qword_100020E78, &qword_100014E58);
    sub_100002440(&qword_100020E88, &qword_100020E70, &qword_100014E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100020F48);
  }

  return result;
}

id sub_10000D608()
{
  v0 = objc_allocWithZone(type metadata accessor for PhotoLibrary());

  return [v0 init];
}

uint64_t PhotoLibraryView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for PhotoLibraryView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_10000E058(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10000E0D0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_10000E134;
  a1[1] = v7;
  return result;
}

uint64_t type metadata accessor for PhotoLibraryView()
{
  result = qword_100020FC0;
  if (!qword_100020FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v5 = type metadata accessor for PhotoLibraryView();
  v70 = *(v5 - 8);
  v6 = *(v70 + 64);
  __chkstk_darwin(v5 - 8);
  v71 = v7;
  v72 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for ScrollAnchorRole();
  v58 = *(v59 - 8);
  v8 = *(v58 + 64);
  __chkstk_darwin(v59);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002120(&qword_100021028, &qword_100014FA0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v55 - v14;
  v56 = sub_100002120(&qword_100021030, &qword_100014FA8);
  v57 = *(v56 - 8);
  v16 = *(v57 + 64);
  __chkstk_darwin(v56);
  v18 = &v55 - v17;
  v62 = sub_100002120(&qword_100021038, &qword_100014FB0);
  v61 = *(v62 - 8);
  v19 = *(v61 + 64);
  __chkstk_darwin(v62);
  v21 = &v55 - v20;
  v65 = sub_100002120(&qword_100021040, &qword_100014FB8);
  v22 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v60 = &v55 - v23;
  v67 = sub_100002120(&qword_100021048, &qword_100014FC0);
  v66 = *(v67 - 8);
  v24 = *(v66 + 64);
  __chkstk_darwin(v67);
  v63 = &v55 - v25;
  v69 = sub_100002120(&qword_100021050, &qword_100014FC8);
  v68 = *(v69 - 8);
  v26 = *(v68 + 64);
  __chkstk_darwin(v69);
  v64 = &v55 - v27;
  v73 = a2;
  v75 = a2;
  v76 = a1;
  static Axis.Set.vertical.getter();
  sub_100002120(&qword_100021058, &qword_100014FD0);
  sub_100002440(&qword_100021060, &qword_100021058, &qword_100014FD0);
  ScrollView.init(_:showsIndicators:content:)();
  static UnitPoint.bottom.getter();
  v28 = sub_100002440(&qword_100021068, &qword_100021028, &qword_100014FA0);
  v29 = v21;
  View.defaultScrollAnchor(_:)();
  (*(v12 + 8))(v15, v11);
  static UnitPoint.top.getter();
  static ScrollAnchorRole.alignment.getter();
  v77 = v11;
  v78 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v56;
  View.defaultScrollAnchor(_:for:)();
  (*(v58 + 8))(v10, v59);
  (*(v57 + 8))(v18, v30);
  sub_100002120(&qword_100021070, &qword_100014FD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100014DB0;
  LOBYTE(v10) = static Edge.Set.leading.getter();
  *(inited + 32) = v10;
  v32 = static Edge.Set.trailing.getter();
  *(inited + 33) = v32;
  v33 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v10)
  {
    v33 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v32)
  {
    v33 = Edge.Set.init(rawValue:)();
  }

  if (qword_1000207D8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v60;
  (*(v61 + 32))(v60, v29, v62);
  v43 = v65;
  v44 = v42 + *(v65 + 36);
  *v44 = v33;
  *(v44 + 8) = v35;
  *(v44 + 16) = v37;
  *(v44 + 24) = v39;
  *(v44 + 32) = v41;
  *(v44 + 40) = 0;
  LocalizedStringKey.init(stringLiteral:)();
  v45 = sub_10000F284();
  v46 = v63;
  View.navigationTitle(_:)();

  sub_10000F3C4(v42);
  v77 = v43;
  v78 = v45;
  swift_getOpaqueTypeConformance2();
  v47 = v64;
  v48 = v67;
  View.assistiveAccessNavigationIcon(systemImage:)();
  (*(v66 + 8))(v46, v48);
  v49 = v72;
  sub_10000E058(v73, v72);
  v50 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v51 = swift_allocObject();
  sub_10000E0D0(v49, v51 + v50);
  v52 = v74;
  (*(v68 + 32))(v74, v47, v69);
  result = sub_100002120(&qword_100021080, &qword_100014FE0);
  v54 = (v52 + *(result + 36));
  *v54 = sub_10000F54C;
  v54[1] = v51;
  v54[2] = 0;
  v54[3] = 0;
  return result;
}

uint64_t sub_10000E058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E0C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1();
  }

  else
  {
  }
}

uint64_t sub_10000E0D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E138(uint64_t a1)
{
  v2 = type metadata accessor for PinnedScrollableViews();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for GridItem.Size();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for GridItem();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  GeometryProxy.size.getter();
  v14 = v13;
  v16 = v15;
  v17 = *(a1 + *(type metadata accessor for PhotoLibraryView() + 24));
  v18 = 3;
  if (v16 < v14)
  {
    v18 = 4;
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 2;
  }

  *v8 = xmmword_100014EE0;
  (*(v5 + 104))(v8, enum case for GridItem.Size.flexible(_:), v4);
  GridItem.init(_:spacing:alignment:)();
  sub_10000EC34(v12, v19);
  v22 = a1;
  static HorizontalAlignment.center.getter();
  v23 = 0;
  sub_10000F768(&qword_100021088, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_100002120(&qword_100021090, &qword_100014FE8);
  sub_10000F624();
  return LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
}

uint64_t sub_10000E3F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  type metadata accessor for PhotoLibrary();
  sub_10000F768(&qword_100020FD8, type metadata accessor for PhotoLibrary);
  v4 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100002120(&qword_1000210B8, &unk_100015040);
  sub_1000095F0();
  sub_100002220(&qword_1000210A0, &qword_100014FF0);
  type metadata accessor for PlainButtonStyle();
  sub_100002440(&qword_1000210A8, &qword_1000210A0, &qword_100014FF0);
  sub_10000F768(&qword_1000210B0, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_10000F7B8();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10000E604(void **a1)
{
  v2 = type metadata accessor for PlainButtonStyle();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002120(&qword_1000210A0, &qword_100014FF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  v12 = *a1;
  v21 = 0;
  v13 = v12;
  sub_100002120(&qword_100020900, &qword_1000144D8);
  State.init(wrappedValue:)();
  v17 = *v19;
  v21 = 0;
  sub_100002120(&qword_100020A48, &qword_100015050);
  State.init(wrappedValue:)();
  v16 = *v19;
  KeyPath = swift_getKeyPath();
  v19[0] = v13;
  *&v19[3] = v16;
  *&v19[1] = v17;
  v19[5] = KeyPath;
  v20 = 0;
  v18 = v13;
  sub_10000F820();
  sub_10000F874();
  NavigationLink.init(destination:label:)();
  PlainButtonStyle.init()();
  sub_100002440(&qword_1000210A8, &qword_1000210A0, &qword_100014FF0);
  sub_10000F768(&qword_1000210B0, &type metadata accessor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10000E8F0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002120(&qword_1000207F8, &qword_100014EF0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v20 - v9);
  v11 = type metadata accessor for FinishLaunchTestAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PhotoLibraryView();
  sub_10000F5AC(a1 + *(v16 + 20), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  FinishLaunchTestAction.callAsFunction()();
  return (*(v12 + 8))(v15, v11);
}

void PhotoLibraryView.init()(uint64_t a1@<X8>)
{
  *a1 = sub_10000D608;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = type metadata accessor for PhotoLibraryView();
  v3 = *(v2 + 20);
  *(a1 + v3) = swift_getKeyPath();
  sub_100002120(&qword_1000207F8, &qword_100014EF0);
  swift_storeEnumTagMultiPayload();
  v4 = *(v2 + 24);
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  *(a1 + v4) = v6 == 1;
}

char *sub_10000EC34(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for GridItem();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = &_swiftEmptyArrayStorage;
    }

    v12 = type metadata accessor for GridItem();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_10000ED90()
{
  result = static ClarityUIMetrics.titleHorizontalPadding.getter();
  qword_100020F58 = v1;
  return result;
}

uint64_t sub_10000EDB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10000E058(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10000E0D0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10000F8D0;
  a2[1] = v7;
  return result;
}

uint64_t sub_10000EECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100002120(&qword_100020F60, &qword_100014F78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000EF94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_100002120(&qword_100020F60, &qword_100014F78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000F040()
{
  sub_10000F0CC();
  if (v0 <= 0x3F)
  {
    sub_10000F160();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10000F0CC()
{
  if (!qword_100020FD0)
  {
    type metadata accessor for PhotoLibrary();
    sub_10000F768(&qword_100020FD8, type metadata accessor for PhotoLibrary);
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100020FD0);
    }
  }
}

void sub_10000F160()
{
  if (!qword_100020FE0)
  {
    type metadata accessor for FinishLaunchTestAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100020FE0);
    }
  }
}

uint64_t sub_10000F1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoLibraryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000D780(a1, v6, a2);
}

unint64_t sub_10000F284()
{
  result = qword_100021078;
  if (!qword_100021078)
  {
    sub_100002220(&qword_100021040, &qword_100014FB8);
    sub_100002220(&qword_100021030, &qword_100014FA8);
    sub_100002220(&qword_100021028, &qword_100014FA0);
    sub_100002440(&qword_100021068, &qword_100021028, &qword_100014FA0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021078);
  }

  return result;
}

uint64_t sub_10000F3C4(uint64_t a1)
{
  v2 = sub_100002120(&qword_100021040, &qword_100014FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F42C()
{
  v1 = (type metadata accessor for PhotoLibraryView() - 8);
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_10000E0C0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = v1[7];
  sub_100002120(&qword_1000207F8, &qword_100014EF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for FinishLaunchTestAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_10000F54C()
{
  v1 = *(type metadata accessor for PhotoLibraryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10000E8F0(v2);
}

uint64_t sub_10000F5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002120(&qword_1000207F8, &qword_100014EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000F624()
{
  result = qword_100021098;
  if (!qword_100021098)
  {
    sub_100002220(&qword_100021090, &qword_100014FE8);
    sub_100002220(&qword_1000210A0, &qword_100014FF0);
    type metadata accessor for PlainButtonStyle();
    sub_100002440(&qword_1000210A8, &qword_1000210A0, &qword_100014FF0);
    sub_10000F768(&qword_1000210B0, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021098);
  }

  return result;
}

uint64_t sub_10000F768(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000F7B8()
{
  result = qword_1000210C0;
  if (!qword_1000210C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000210C0);
  }

  return result;
}

id sub_10000F814@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

unint64_t sub_10000F820()
{
  result = qword_1000210C8;
  if (!qword_1000210C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000210C8);
  }

  return result;
}

unint64_t sub_10000F874()
{
  result = qword_1000210D0;
  if (!qword_1000210D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000210D0);
  }

  return result;
}

uint64_t sub_10000F8D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_10000F948()
{
  v1 = OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary;
  v2 = [objc_opt_self() sharedPhotoLibrary];
  *&v0[v1] = v2;
  v3 = v2;
  v4 = sub_100011F58();

  swift_beginAccess();
  v10 = v4;
  Published.init(initialValue:)();
  swift_endAccess();
  v9.receiver = v0;
  v9.super_class = type metadata accessor for PhotoLibrary();
  v5 = objc_msgSendSuper2(&v9, "init");
  v6 = *&v5[OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary];
  v7 = v5;
  [v6 registerChangeObserver:v7];
  sub_100012A28();

  return v7;
}

id sub_10000FA60()
{
  [*&v0[OBJC_IVAR____TtC15ClarityPhotosUI12PhotoLibrary_photoLibrary] unregisterChangeObserver:v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoLibrary();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PhotoLibrary()
{
  result = qword_100021170;
  if (!qword_100021170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000FBF8()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000207C8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  sub_100002A18(v10, qword_100021CA8);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, v12, v15, "makePhotoCollection", v13, v14, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10000FE84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [a1 localIdentifier];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  swift_beginAccess();
  v9 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1000114DC(0, *(v9 + 2) + 1, 1, v9);
    *(a4 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1000114DC((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = v6;
  *(v13 + 5) = v8;
  *(a4 + 16) = v9;
  return swift_endAccess();
}

void sub_10000FF78(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_10000FFFC()
{
  v1 = v0;
  v2 = sub_100002120(&qword_100021188, &qword_100015108);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v13 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v13[1];
  sub_100002B30(0, &qword_100021190, PHAsset_ptr);
  v7 = PHChange.changeDetails<A>(for:)();

  if (v7)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v7;
    v10 = v1;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v9;
    v12[5] = v10;
    sub_10001090C(0, 0, v5, &unk_100015160, v12);
  }
}

uint64_t sub_1000101B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = type metadata accessor for IndexSet.Index();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = sub_100002120(&qword_100021198, &qword_100015180);
  v5[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v11 = type metadata accessor for IndexSet();
  v5[14] = v11;
  v12 = *(v11 - 8);
  v5[15] = v12;
  v13 = *(v12 + 64) + 15;
  v5[16] = swift_task_alloc();
  v14 = *(*(sub_100002120(&qword_1000211A0, &qword_100015188) - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[19] = static MainActor.shared.getter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100010388, v16, v15);
}

uint64_t sub_100010388()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 56);

  if (![v2 hasIncrementalChanges])
  {
    goto LABEL_7;
  }

  v3 = [*(v0 + 56) insertedIndexes];
  v4 = *(v0 + 144);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);
  if (v3)
  {
    v7 = *(v0 + 144);
    v8 = v3;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v6 + 56))(v4, 0, 1, v5);
LABEL_6:
    sub_1000055B4(v4, &qword_1000211A0, &qword_100015188);
LABEL_7:
    if (qword_1000207C0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100002A18(v15, qword_100021C90);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Updating photo collection for photo library change.", v18, 2u);
    }

    v19 = *(v0 + 56);
    v20 = *(v0 + 64);

    v21 = [v19 fetchResultAfterChanges];
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 48) = v21;
    v22 = v20;
    static Published.subscript.setter();
    goto LABEL_12;
  }

  v9 = *(v0 + 56);
  v10 = *(v6 + 56);
  v10(*(v0 + 144), 1, 1, *(v0 + 112));
  sub_1000055B4(v4, &qword_1000211A0, &qword_100015188);
  v11 = [v9 removedIndexes];
  v4 = *(v0 + 136);
  v12 = *(v0 + 112);
  if (v11)
  {
    v13 = *(v0 + 136);
    v14 = v11;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    v10(v4, 0, 1, v12);
    goto LABEL_6;
  }

  v30 = *(v0 + 56);
  v10(*(v0 + 136), 1, 1, *(v0 + 112));
  sub_1000055B4(v4, &qword_1000211A0, &qword_100015188);
  v31 = [v30 changedIndexes];
  if (v31)
  {
    v32 = *(v0 + 128);
    v34 = *(v0 + 96);
    v33 = *(v0 + 104);
    v35 = *(v0 + 80);
    v36 = v31;
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    IndexSet.makeIterator()();
    v37 = *(v34 + 36);
    v58 = (v35 + 8);
    sub_100011494(&qword_1000211A8, &type metadata accessor for IndexSet);
    while (1)
    {
      v39 = *(v0 + 104);
      v38 = *(v0 + 112);
      v40 = *(v0 + 88);
      v41 = *(v0 + 72);
      dispatch thunk of Collection.endIndex.getter();
      sub_100011494(&unk_1000211B0, &type metadata accessor for IndexSet.Index);
      LOBYTE(v39) = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v58)(v40, v41);
      if (v39)
      {
        break;
      }

      v42 = *(v0 + 104);
      v43 = *(v0 + 112);
      v44 = *(v0 + 56);
      v45 = dispatch thunk of Collection.subscript.read();
      v47 = *v46;
      v45(v0 + 16, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v48 = [v44 fetchResultBeforeChanges];
      v49 = [v48 objectAtIndexedSubscript:v47];

      v50 = [v44 fetchResultAfterChanges];
      v51 = [v50 objectAtIndexedSubscript:v47];

      sub_100002B30(0, &qword_100021190, PHAsset_ptr);
      LOBYTE(v50) = static NSObject.== infix(_:_:)();

      if ((v50 & 1) == 0)
      {
        v53 = *(v0 + 120);
        v52 = *(v0 + 128);
        v54 = *(v0 + 112);
        sub_1000055B4(*(v0 + 104), &qword_100021198, &qword_100015180);
        (*(v53 + 8))(v52, v54);
        goto LABEL_7;
      }
    }

    v56 = *(v0 + 120);
    v55 = *(v0 + 128);
    v57 = *(v0 + 112);
    sub_1000055B4(*(v0 + 104), &qword_100021198, &qword_100015180);
    (*(v56 + 8))(v55, v57);
  }

LABEL_12:
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v25 = *(v0 + 128);
  v26 = *(v0 + 104);
  v27 = *(v0 + 88);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_10001090C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100002120(&qword_100021188, &qword_100015108);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001108C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000055B4(v12, &qword_100021188, &qword_100015108);
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

      sub_1000055B4(a3, &qword_100021188, &qword_100015108);

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

  sub_1000055B4(a3, &qword_100021188, &qword_100015108);
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

void sub_100010C64()
{
  sub_100010D00();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100010D00()
{
  if (!qword_100021180)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100021180);
    }
  }
}

uint64_t sub_100010D50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotoLibrary();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100010D90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100010E14(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_100010E90()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100010ED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100010F98;

  return sub_1000101B8(a1, v4, v5, v7, v6);
}

uint64_t sub_100010F98()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10001108C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002120(&qword_100021188, &qword_100015108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000110FC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000111F4;

  return v7(a1);
}

uint64_t sub_1000111F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000112EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011324(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100012DB4;

  return sub_1000110FC(a1, v5);
}

uint64_t sub_1000113DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100010F98;

  return sub_1000110FC(a1, v5);
}

uint64_t sub_100011494(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1000114DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002120(&qword_100021200, &qword_1000151B0);
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

uint64_t sub_1000115E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100011694(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100011A44(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1000117E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002120(&qword_1000211F8, &qword_1000151A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_100011A44(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000117E4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100011BC4();
      goto LABEL_16;
    }

    sub_100011D20(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100011BC4()
{
  v1 = v0;
  sub_100002120(&qword_1000211F8, &qword_1000151A8);
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
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100011D20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100002120(&qword_1000211F8, &qword_1000151A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

id sub_100011F58()
{
  v0 = type metadata accessor for OSSignpostID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v76 - v6;
  if (qword_1000207C8 == -1)
  {
    goto LABEL_2;
  }

LABEL_38:
  swift_once();
LABEL_2:
  v8 = type metadata accessor for OSSignposter();
  sub_100002A18(v8, qword_100021CA8);
  static OSSignpostID.exclusive.getter();
  v9 = OSSignposter.logHandle.getter();
  v10 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v12, "makePhotoCollection", "", v11, 2u);
  }

  (*(v1 + 16))(v5, v7, v0);
  v13 = type metadata accessor for OSSignpostIntervalState();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = OSSignpostIntervalState.init(id:isOpen:)();
  v17 = *(v1 + 8);
  v1 += 8;
  v17(v7, v0);
  v18 = [objc_allocWithZone(PHFetchOptions) init];
  [v18 setIncludeAssetSourceTypes:5];
  sub_100002B30(0, &qword_1000211C0, CLFPhotosSettings_ptr);
  v19 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (![v19 includeSharedAlbums])
  {

    goto LABEL_36;
  }

  v20 = [v19 selectedSharedAlbumCloudIdentifiers];

  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v21 + 16))
  {

    goto LABEL_36;
  }

  v83 = v21;
  v77 = v19;
  v79 = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = &_swiftEmptyArrayStorage;
  v23 = objc_opt_self();
  v78 = v18;
  v24 = [v23 fetchAssetCollectionsWithType:1 subtype:101 options:v18];
  aBlock[4] = sub_100012CBC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000FF78;
  aBlock[3] = &unk_10001DD10;
  v25 = _Block_copy(aBlock);
  v76 = v22;

  [v24 enumerateObjectsUsingBlock:v25];
  _Block_release(v25);

  swift_beginAccess();
  v5 = *(v22 + 16);

  v26 = PHPhotoLibrary.cloudIdentifierMappings(forLocalIdentifiers:)();

  v28 = 0;
  v29 = 0;
  v31 = v26 + 64;
  v30 = *(v26 + 64);
  v85 = v26;
  v32 = 1 << *(v26 + 32);
  v87[2] = &_swiftEmptySetSingleton;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v0 = v33 & v30;
  v7 = ((v32 + 63) >> 6);
  *&v27 = 136315394;
  v80 = v27;
  if ((v33 & v30) != 0)
  {
    while (2)
    {
      v36 = v28;
LABEL_19:
      v37 = __clz(__rbit64(v0));
      v0 &= v0 - 1;
      v38 = (v36 << 10) | (16 * v37);
      v39 = (*(v85 + 48) + v38);
      v40 = *v39;
      v1 = v39[1];
      v41 = *(v85 + 56) + v38;
      v42 = *v41;
      v43 = *(v41 + 8);

      v86 = v40;
      if (v43)
      {
        sub_100012CDC(v42, 1);
        if (qword_1000207C0 != -1)
        {
          swift_once();
        }

        v44 = type metadata accessor for Logger();
        sub_100002A18(v44, qword_100021C90);

        sub_100012CDC(v42, 1);
        v5 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v5, v45))
        {
          v46 = swift_slowAlloc();
          v81 = v5;
          v5 = v46;
          v47 = swift_slowAlloc();
          v84 = v29;
          v48 = v47;
          v82 = swift_slowAlloc();
          v87[0] = v82;
          *v5 = v80;
          v49 = sub_100002B78(v86, v1, v87);

          *(v5 + 4) = v49;
          *(v5 + 12) = 2112;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v5 + 14) = v50;
          *v48 = v50;
          v51 = v81;
          _os_log_impl(&_mh_execute_header, v81, v45, "Error fetching album cloud identifier for local identifier: %s. Error: %@.", v5, 0x16u);
          sub_1000055B4(v48, &qword_100020AE8, &qword_100014760);
          v29 = v84;

          sub_100003120(v82);
        }

        else
        {

          sub_100012CE8(v42, 1);
        }

        v34 = v42;
        v35 = 1;
        goto LABEL_14;
      }

      sub_100012CDC(v42, 0);
      v52 = [v42 stringValue];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

      v84 = v42;
      v87[0] = v53;
      v87[1] = v55;
      __chkstk_darwin(v56);
      *(&v76 - 2) = v87;
      v5 = sub_1000115E8(sub_100012CF4, (&v76 - 4), v83);

      if (v5)
      {
        sub_100011694(v87, v86, v1);
        sub_100012CE8(v84, 0);

        v28 = v36;
        if (v0)
        {
          continue;
        }
      }

      else
      {

        v34 = v84;
        v35 = 0;
LABEL_14:
        sub_100012CE8(v34, v35);
        v28 = v36;
        if (v0)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v36 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v36 >= v7)
    {
      break;
    }

    v0 = *(v31 + 8 * v36);
    ++v28;
    if (v0)
    {
      goto LABEL_19;
    }
  }

  v57 = objc_opt_self();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v59 = [v57 uuidsFromLocalIdentifiers:isa];

  if (v59)
  {
    v60 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100002B30(0, &qword_1000211D8, NSPredicate_ptr);
    sub_100002120(&qword_1000211E0, &qword_100015198);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1000150A0;
    *(v61 + 56) = sub_100002120(&qword_1000211E8, &qword_1000151A0);
    *(v61 + 64) = sub_100012D4C();
    *(v61 + 32) = v60;
    v62 = NSPredicate.init(format:_:)();
    v18 = v78;
    [v78 setInternalInclusionPredicate:v62];

    v19 = v77;
  }

  else
  {
    v18 = v78;
    v19 = v77;
    if (qword_1000207C0 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100002A18(v63, qword_100021C90);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Unable to get UUIDs from shared album local identifiers.", v66, 2u);
    }
  }

LABEL_36:
  sub_100002120(&qword_1000211C8, &qword_100015190);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1000150B0;
  v68 = objc_allocWithZone(NSSortDescriptor);
  v69 = String._bridgeToObjectiveC()();
  v70 = [v68 initWithKey:v69 ascending:1];

  *(v67 + 32) = v70;
  sub_100002B30(0, &qword_1000211D0, NSSortDescriptor_ptr);
  v71 = Array._bridgeToObjectiveC()().super.isa;

  [v18 setSortDescriptors:v71];

  v72 = objc_opt_self();
  v73 = v18;
  v74 = [v72 fetchAssetsWithOptions:v73];

  sub_10000FBF8();

  return v74;
}

void sub_100012A28()
{
  v0 = [objc_opt_self() sharedInstance];
  v11 = 0;
  v1 = [v0 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:0 error:&v11];

  v2 = v11;
  if (v1)
  {

    v3 = v2;
  }

  else
  {
    v4 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1000207C0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100002A18(v5, qword_100021C90);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error setting AVAudioSession playback category. Error: %@.", v8, 0xCu);
      sub_1000055B4(v9, &qword_100020AE8, &qword_100014760);
    }

    else
    {
    }
  }
}

uint64_t sub_100012C84()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100012CDC(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_100012CE8(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100012CF4(void *a1)
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

unint64_t sub_100012D4C()
{
  result = qword_1000211F0;
  if (!qword_1000211F0)
  {
    sub_100002220(&qword_1000211E8, &qword_1000151A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000211F0);
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}