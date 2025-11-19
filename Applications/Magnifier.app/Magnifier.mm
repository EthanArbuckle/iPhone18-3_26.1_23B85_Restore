id sub_100001818()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MAGUIApplication();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100001868()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_1000018A4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000018F8()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100001974(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000019EC(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001A6C@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100001AB0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001B38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100001B80@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100001BAC(uint64_t a1)
{
  v2 = sub_100002F20(&qword_100008208, type metadata accessor for FileAttributeKey);
  v3 = sub_100002F20(&qword_100008240, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_100001C68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100001D34(v11, 0, 0, 1, a1, a2);
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
    sub_100002D9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002DF8(v11);
  return v7;
}

unint64_t sub_100001D34(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100001E40(a5, a6);
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

char *sub_100001E40(uint64_t a1, unint64_t a2)
{
  v4 = sub_100001E8C(a1, a2);
  sub_100001FBC(&off_100004468);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100001E8C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000020A8(v5, 0);
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
        v7 = sub_1000020A8(v10, 0);
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

uint64_t sub_100001FBC(uint64_t result)
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

  result = sub_10000211C(result, v12, 1, v3);
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

void *sub_1000020A8(uint64_t a1, uint64_t a2)
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

  sub_100002C9C(&qword_100008218, &qword_100003488);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000211C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002C9C(&qword_100008218, &qword_100003488);
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

unint64_t sub_100002210(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000022A4(a1, v4);
}

unint64_t sub_1000022A4(uint64_t a1, uint64_t a2)
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

void sub_1000023A8()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  (__chkstk_darwin)();
  v4 = &v65[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*(*(sub_100002C9C(&qword_1000081F8, &qword_100003478) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = &v65[-v6];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (__chkstk_darwin)();
  v13 = &v65[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v65[-v14];
  v16 = [objc_opt_self() mainBundle];
  v17 = [v16 executablePath];

  if (v17)
  {
    v69 = v1;
    v70 = v0;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    v20 = [objc_opt_self() defaultManager];
    v72 = 0;
    v21 = [v20 attributesOfItemAtPath:v17 error:&v72];

    v22 = v72;
    if (v21)
    {
      type metadata accessor for FileAttributeKey();
      sub_100002F20(&qword_100008208, type metadata accessor for FileAttributeKey);
      v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v22;

      if (!*(v23 + 16) || (v25 = sub_100002210(NSFileModificationDate), (v26 & 1) == 0))
      {

        (*(v9 + 56))(v7, 1, 1, v8);
        goto LABEL_8;
      }

      sub_100002D9C(*(v23 + 56) + 32 * v25, &v72);

      v27 = swift_dynamicCast();
      (*(v9 + 56))(v7, v27 ^ 1u, 1, v8);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {

LABEL_8:
        sub_100002D34(v7);
        goto LABEL_10;
      }

      (*(v9 + 32))(v15, v7, v8);
      sub_100002C9C(&qword_100008210, &qword_100003480);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_100003430;
      v72 = 0;
      v73 = 0xE000000000000000;
      _StringGuts.grow(_:)(40);

      v72 = 0x20676E696E6E7552;
      v73 = 0xE900000000000027;
      v67 = objc_opt_self();
      v35 = [v67 processInfo];
      v36 = [v35 processName];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      v40._countAndFlagsBits = v37;
      v40._object = v39;
      String.append(_:)(v40);

      v41._countAndFlagsBits = 0x27206D6F72662027;
      v41._object = 0xE800000000000000;
      String.append(_:)(v41);
      v42._countAndFlagsBits = v71;
      v42._object = v19;
      String.append(_:)(v42);
      v43._object = 0x80000001000036A0;
      v43._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v43);
      v44 = Date.formatted()();
      String.append(_:)(v44);

      v45 = v72;
      v46 = v73;
      v47 = v68;
      *(v68 + 56) = &type metadata for String;
      *(v47 + 32) = v45;
      *(v47 + 40) = v46;
      print(_:separator:terminator:)();

      static AXLog.magdefault.getter();
      (*(v9 + 16))(v13, v15, v8);

      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v72 = v68;
        *v50 = 136315650;
        v51 = [v67 processInfo];
        v67 = v48;
        v52 = v51;
        v53 = [v51 processName];
        v66 = v49;
        v54 = v53;

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v58 = sub_100001C68(v55, v57, &v72);

        *(v50 + 4) = v58;
        *(v50 + 12) = 2080;
        v59 = sub_100001C68(v71, v19, &v72);

        *(v50 + 14) = v59;
        *(v50 + 22) = 2080;
        v60 = Date.formatted()();
        v61 = *(v9 + 8);
        v61(v13, v8);
        v62 = sub_100001C68(v60._countAndFlagsBits, v60._object, &v72);

        *(v50 + 24) = v62;
        v63 = v67;
        _os_log_impl(&_mh_execute_header, v67, v66, "Running '%s' from '%s' Last Modified: %s", v50, 0x20u);
        swift_arrayDestroy();

        (*(v69 + 8))(v4, v70);
        v61(v15, v8);
      }

      else
      {

        v64 = *(v9 + 8);
        v64(v13, v8);
        (*(v69 + 8))(v4, v70);
        v64(v15, v8);
      }
    }

    else
    {
      v28 = v72;

      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

LABEL_10:
  type metadata accessor for MagnifierShortcuts();
  sub_100002F20(&qword_100008200, &type metadata accessor for MagnifierShortcuts);
  static AppShortcutsProvider.updateAppShortcutParameters()();
  v29 = static CommandLine.argc.getter();
  v30 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for MAGUIApplication();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v32 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v32)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for MagnifierApplicationDelegate();
  v33 = swift_getObjCClassFromMetadata();
  v34 = NSStringFromClass(v33);
  if (!v34)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v29, v30, v32, v34);
}

uint64_t sub_100002C9C(uint64_t *a1, uint64_t *a2)
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

void type metadata accessor for FileAttributeKey()
{
  if (!qword_100008220)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100008220);
    }
  }
}

uint64_t sub_100002D34(uint64_t a1)
{
  v2 = sub_100002C9C(&qword_1000081F8, &qword_100003478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002D9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100002DF8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100002F20(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::String __swiftcall Date.formatted()()
{
  v0 = Date.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}