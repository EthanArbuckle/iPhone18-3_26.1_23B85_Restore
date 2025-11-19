int main(int argc, const char **argv, const char **envp)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  qword_10006C938 = [objc_allocWithZone(type metadata accessor for Agent()) init];
  if (static Feature.isAuthorizationEnabled.getter())
  {
    qword_10006C940 = 0xD00000000000001DLL;
    *algn_10006C948 = 0x8000000100057A50;
    String.utf8CString.getter();
    v11 = _set_user_dir_suffix();

    if (v11)
    {
      sub_1000218A4();
      sub_100021620(1);
      dispatch_main();
    }

    static Logger.agent.getter();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136446466;
      v19 = qword_10006C940;
      v20 = *algn_10006C948;

      v21 = sub_100002CB4(v19, v20, &v24);

      *(v17 + 4) = v21;
      *(v17 + 12) = 1024;
      *(v17 + 14) = errno.getter();
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to initialize sandbox %{public}s: %{darwin.errno}d", v17, 0x12u);
      sub_1000032BC(v18);
    }

    (*(v4 + 8))(v10, v3);
    sub_100021620(0);
    exit(78);
  }

  static Logger.agent.getter();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "The Family Controls feature is not enabled", v14, 2u);
  }

  (*(v4 + 8))(v8, v3);
  sub_100021620(0);
  exit(77);
}

uint64_t sub_1000022E4(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000235C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000023DC@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002420()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10000245C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000024B0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

BOOL sub_100002564(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1000025BC(uint64_t a1)
{
  v2 = sub_1000033D0(&qword_10006B828, type metadata accessor for CKError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100002628(uint64_t a1)
{
  v2 = sub_1000033D0(&qword_10006B828, type metadata accessor for CKError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100002698(uint64_t a1)
{
  v2 = sub_1000033D0(&qword_10006B860, type metadata accessor for CKError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

void *sub_100002704@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100002724(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000027BC(uint64_t a1)
{
  v2 = sub_1000033D0(&qword_10006B860, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100002828(uint64_t a1)
{
  v2 = sub_1000033D0(&qword_10006B860, type metadata accessor for CKError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100002894(void *a1, uint64_t a2)
{
  v4 = sub_1000033D0(&qword_10006B860, type metadata accessor for CKError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100002948(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033D0(&qword_10006B860, type metadata accessor for CKError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000029C4()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100002A30@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002A5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100002AA4(uint64_t a1)
{
  v2 = sub_1000033D0(&qword_10006B920, type metadata accessor for Key);
  v3 = sub_1000033D0(&qword_10006B928, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033D0(&qword_10006B860, type metadata accessor for CKError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_100002BE4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100002C58(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100002CB4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100002CB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002D80(v11, 0, 0, 1, a1, a2);
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
    sub_1000036C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000032BC(v11);
  return v7;
}

unint64_t sub_100002D80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100002E8C(a5, a6);
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

char *sub_100002E8C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100002ED8(a1, a2);
  sub_100003008(&off_100065C00);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100002ED8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000030F4(v5, 0);
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
        v7 = sub_1000030F4(v10, 0);
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

uint64_t sub_100003008(uint64_t result)
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

  result = sub_100003168(result, v12, 1, v3);
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

void *sub_1000030F4(uint64_t a1, uint64_t a2)
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

  sub_100003720(&qword_10006B8C8, &unk_1000562E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003168(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003720(&qword_10006B8C8, &unk_1000562E0);
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

_BYTE **sub_10000325C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_10000326C(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10000328C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000032BC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 sub_100003308(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003318(uint64_t a1, int a2)
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

uint64_t sub_100003338(uint64_t result, int a2, int a3)
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

uint64_t sub_1000033D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000035E0()
{
  result = qword_10006B850;
  if (!qword_10006B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B850);
  }

  return result;
}

uint64_t sub_1000036C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003720(uint64_t *a1, uint64_t *a2)
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

void sub_1000037E4(uint64_t a1, unint64_t *a2)
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

__n128 sub_10000392C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100003960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1000039A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100003A18()
{
  v1 = type metadata accessor for Logger();
  v60 = *(v1 - 8);
  v61 = v1;
  v2 = *(v60 + 64);
  __chkstk_darwin(v1);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for URL();
  v59 = *(v5 - 8);
  v6 = *(v59 + 64);
  __chkstk_darwin(v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AuthorizationRecord();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v17 = 0;
  result = sub_10000423C();
  v27 = result;
  v56 = v0;
  v57 = v8;
  v58 = v5;
  v54 = 0;
  v55 = v14;
  v53 = v4;
  v28 = *(result + 16);
  while (v28 != v17)
  {
    if (v17 >= *(v27 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    (*(v10 + 16))(v16, v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17++, v9);
    AuthorizationRecord.type.getter();
    v29 = FamilyControlsMember.rawValue.getter();
    v30 = FamilyControlsMember.rawValue.getter();
    result = (*(v10 + 8))(v16, v9);
    if (v29 == v30)
    {
LABEL_18:

      return 1;
    }
  }

  v31 = v56[9];
  sub_100007504(v56 + 5, v56[8]);
  v32 = v57;
  dispatch thunk of Locatable.familyControlsInternalAuthorization.getter();
  v33 = [objc_opt_self() defaultManager];
  v34 = type metadata accessor for PropertyListDecoder();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v37 = String._bridgeToObjectiveC()();

  v38 = [v33 fileExistsAtPath:v37];

  if (v38)
  {
    v39 = v54;
    v40 = Data.init(contentsOf:options:)();
    if (v39)
    {
      (*(v59 + 8))(v32, v58, v41);

      v43 = v60;
      v42 = v61;
      v44 = v53;
      static Logger.authorization.getter();
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v62 = v39;
        v63 = v22;
        *v21 = 136446210;
        swift_errorRetain();
        sub_100003720(&qword_10006BF60, &qword_100056CA0);
        v23 = String.init<A>(describing:)();
        v25 = v44;
        v26 = sub_100002CB4(v23, v24, &v63);

        *(v21 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v19, v20, "Failed to fetch child authorization status: %{public}s", v21, 0xCu);
        sub_1000032BC(v22);

        (*(v43 + 8))(v25, v42);
      }

      else
      {

        (*(v43 + 8))(v44, v42);
      }

      return 0;
    }

    v51 = v40;
    v52 = v41;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_100007548();
    v56 = v52;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v59 + 8))(v57, v58);
    sub_100007644(v51, v56);

    v45 = v63;
  }

  else
  {
    (*(v59 + 8))(v32, v58);

    v45 = &_swiftEmptyArrayStorage;
  }

  v46 = 0;
  v47 = v45[2];
  v48 = v55;
  while (v47 != v46)
  {
    if (v46 >= v45[2])
    {
      goto LABEL_22;
    }

    (*(v10 + 16))(v48, v45 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v46++, v9);
    AuthorizationRecord.type.getter();
    v49 = FamilyControlsMember.rawValue.getter();
    v50 = FamilyControlsMember.rawValue.getter();
    result = (*(v10 + 8))(v48, v9);
    if (v49 == v50)
    {
      goto LABEL_18;
    }
  }

  return 0;
}

double sub_100004080@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  static Logger.agent.getter();
  v11 = [a1 processIdentifier];
  [a1 auditToken];
  v12 = v21;
  v13 = v22[0];
  (*(v4 + 16))(v8, v10, v3);
  v14 = a1;
  sub_1000210F8(v11, v12, *(&v12 + 1), v13, *(&v13 + 1), a1, v8, &v21);
  (*(v4 + 8))(v10, v3);
  v15 = v20;
  v20[3] = &type metadata for ClientIdentity;
  v15[4] = sub_1000079B4();
  v16 = swift_allocObject();
  *v15 = v16;
  v17 = v22[0];
  v16[1] = v21;
  v16[2] = v17;
  result = *(v22 + 9);
  *(v16 + 41) = *(v22 + 9);
  return result;
}

char *sub_10000423C()
{
  v2 = v1;
  v3 = v0;
  v38 = type metadata accessor for URL();
  v4 = *(v38 - 8);
  v5 = v4[8];
  (__chkstk_darwin)();
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v37 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v34 - v12;
  static Logger.authorization.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v36 = v4;
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Authorization records", v16, 2u);
    v2 = v1;
    v4 = v36;
  }

  v36 = *(v8 + 8);
  (v36)(v13, v7);
  v17 = v3[9];
  sub_100007504(v3 + 5, v3[8]);
  v18 = v39;
  dispatch thunk of Locatable.familyControlsAuthorization.getter();
  v19 = [objc_opt_self() defaultManager];
  v20 = type metadata accessor for PropertyListDecoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v23 = String._bridgeToObjectiveC()();

  v24 = [v19 fileExistsAtPath:v23];

  if (v24)
  {
    v35 = v7;
    v25 = Data.init(contentsOf:options:)();
    if (v2)
    {
      (v4[1])(v18, v38);

      return v18;
    }

    v31 = v25;
    v32 = v26;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_100007548();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (v4[1])(v39, v38);
    sub_100007644(v31, v32);

    v18 = v40;
    v7 = v35;
  }

  else
  {
    (v4[1])(v18, v38);

    v18 = &_swiftEmptyArrayStorage;
  }

  v27 = v37;
  static Logger.authorization.getter();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Authorization records succeeded", v30, 2u);
  }

  (v36)(v27, v7);
  return v18;
}

BOOL sub_1000046B0()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v0[9];
  sub_100007504(v0 + 5, v0[8]);
  dispatch thunk of Locatable.familyControlsInternalAuthorization.getter();
  v10 = [objc_opt_self() defaultManager];
  v11 = type metadata accessor for PropertyListDecoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  URL.path.getter();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v10 fileExistsAtPath:v14];

  if (v15)
  {
    v22[1] = v2;
    v22[2] = v1;
    v18 = Data.init(contentsOf:options:)();
    v20 = v19;
    sub_100003720(&qword_10006B990, &qword_100056680);
    sub_100007548();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    (*(v5 + 8))(v8, v4);
    sub_100007644(v18, v20);

    v21 = v22[4];
  }

  else
  {
    (*(v5 + 8))(v8, v4);

    v21 = &_swiftEmptyArrayStorage;
  }

  v16 = v21[2];

  return v16 != 0;
}

char *sub_100004AE4()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v27 = v1;
  v28 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = type metadata accessor for AuthorizationStatus();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  v12 = type metadata accessor for AuthorizationRecord();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  result = sub_10000423C();
  v23[0] = v0;
  v27 = *(result + 2);
  v28 = result;
  v26 = v13 + 16;
  v25 = enum case for AuthorizationStatus.approved(_:);
  v19 = (v5 + 104);
  v20 = (v5 + 8);
  v23[1] = v13 + 8;
  v24 = v19;
  while (1)
  {
    if (v27 == v17)
    {

      return sub_1000046B0();
    }

    if (v17 >= *(v28 + 2))
    {
      break;
    }

    (*(v13 + 16))(v16, &v28[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v17++], v12);
    AuthorizationRecord.status.getter();
    (*v24)(v9, v25, v4);
    sub_10000DA84(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v21 = *v20;
    (*v20)(v9, v4);
    v21(v11, v4);
    result = (*(v13 + 8))(v16, v12);
    if (v30 == v29)
    {

      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100004F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void (*a7)(uint64_t), uint64_t a8)
{
  v93 = a5;
  v94 = a6;
  v103 = a4;
  v101 = a3;
  v105 = a2;
  v11 = type metadata accessor for Logger();
  v97 = *(v11 - 8);
  v98 = v11;
  v12 = *(v97 + 64);
  __chkstk_darwin(v11);
  v99 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v95 = *(v14 - 8);
  v96 = v14;
  v15 = *(v95 + 64);
  __chkstk_darwin(v14);
  v106 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AuthorizationRecord();
  v102 = *(v17 - 8);
  v18 = *(v102 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v83 - v22;
  v24 = type metadata accessor for AuthorizationStatus();
  v108 = *(v24 - 8);
  v25 = *(v108 + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v26);
  v104 = &v83 - v30;
  __chkstk_darwin(v29);
  v107 = &v83 - v31;
  v32 = sub_100003720(&qword_10006BB60, qword_100056698);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32);
  v36 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = (&v83 - v37);
  v39 = a1;
  v41 = v40;
  sub_10000D554(v39, &v83 - v37);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v36 = *v38;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    a7(v36);

    return sub_10000D5C4(v36, &qword_10006BB60, qword_100056698);
  }

  else
  {
    v86 = v21;
    v87 = v28;
    v89 = v41;
    v90 = v36;
    v100 = v17;
    v91 = a8;
    v92 = a7;
    v43 = v108;
    v44 = v24;
    v45 = v107;
    (*(v108 + 32))(v107, v38, v44);
    v88 = AuthorizationRecord.bundleIdentifier.getter();
    AuthorizationRecord.teamIdentifier.getter();
    AuthorizationRecord.recordIdentifier.getter();
    v46 = *(v43 + 16);
    v46(v104, v45, v44);
    v47 = v101;
    AuthorizationRecord.init(bundleIdentifier:teamIdentifier:recordIdentifier:status:type:)();
    sub_10003B3DC(v23);
    v88 = v46;
    v85 = v43 + 16;
    v48 = v108;
    v49 = v104;
    (*(v108 + 104))(v104, enum case for AuthorizationStatus.approved(_:), v44);
    sub_10000DA84(&qword_10006B9A8, &type metadata accessor for AuthorizationStatus);
    v50 = v107;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v51 = *(v48 + 8);
    v108 = v48 + 8;
    v84 = v51;
    v51(v49, v44);
    v52 = v100;
    v53 = v50;
    v54 = v102;
    if (v110[0] == v109)
    {
      v55 = sub_100007504((v103 + 80), *(v103 + 104));
      v56 = AuthorizationRecord.bundleIdentifier.getter();
      sub_10002BE8C(v47, v56, v57, v93, v94, *v55);
    }

    v104 = v23;
    v58 = v99;
    static Logger.authorization.getter();
    v59 = v86;
    (*(v54 + 16))(v86, v105, v52);
    v60 = v87;
    v61 = v44;
    v88(v87, v53, v44);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v106;
    if (v64)
    {
      v66 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v110[0] = v105;
      *v66 = 136446466;
      AuthorizationRecord.recordIdentifier.getter();
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
      LODWORD(v103) = v63;
      v67 = v96;
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v69;
      (*(v95 + 8))(v65, v67);
      v71 = *(v54 + 8);
      v71(v59, v100);
      v72 = sub_100002CB4(v68, v70, v110);

      *(v66 + 4) = v72;
      *(v66 + 12) = 2080;
      sub_10000DA84(&unk_10006B9E0, &type metadata accessor for AuthorizationStatus);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v76 = v84;
      v84(v60, v61);
      v77 = sub_100002CB4(v73, v75, v110);

      *(v66 + 14) = v77;
      _os_log_impl(&_mh_execute_header, v62, v103, "Request authorization for record identifier: %{public}s status: %s", v66, 0x16u);
      swift_arrayDestroy();

      (*(v97 + 8))(v99, v98);
    }

    else
    {

      v78 = v84;
      v84(v60, v44);
      v71 = *(v54 + 8);
      v79 = v59;
      v76 = v78;
      v71(v79, v100);
      (*(v97 + 8))(v58, v98);
    }

    v80 = v92;
    v81 = v90;
    v82 = v107;
    v88(v90, v107, v61);
    swift_storeEnumTagMultiPayload();
    v80(v81);
    sub_10000D5C4(v81, &qword_10006BB60, qword_100056698);
    v71(v104, v100);
    return v76(v82, v61);
  }
}

uint64_t sub_100005944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v64 = a2;
  v65 = a5;
  v55 = a4;
  v61 = a3;
  v8 = type metadata accessor for Logger();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  __chkstk_darwin(v8);
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AuthorizationStatus();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UUID();
  v57 = *(v16 - 8);
  v58 = v16;
  v17 = *(v57 + 64);
  v18 = __chkstk_darwin(v16);
  v56 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = type metadata accessor for AuthorizationRecord();
  v62 = *(v20 - 8);
  v63 = v20;
  v21 = *(v62 + 64);
  __chkstk_darwin(v20);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100003720(&qword_10006BB60, qword_100056698);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = (&v50 - v26);
  sub_10000D554(a1, &v50 - v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v27;
    swift_errorRetain();
    v65(v28, 1);
  }

  else
  {
    v52 = v8;
    v53 = v27;
    v54 = a6;
    AuthorizationRecord.bundleIdentifier.getter();
    AuthorizationRecord.teamIdentifier.getter();
    AuthorizationRecord.recordIdentifier.getter();
    (*(v12 + 104))(v15, enum case for AuthorizationStatus.notDetermined(_:), v11);
    AuthorizationRecord.type.getter();
    AuthorizationRecord.init(bundleIdentifier:teamIdentifier:recordIdentifier:status:type:)();
    v30 = v61;
    sub_10003B3DC(v23);
    v51 = v23;
    v31 = sub_100007504((v30 + 80), *(v30 + 104));
    v32 = AuthorizationRecord.bundleIdentifier.getter();
    sub_10002CB2C(v32, v33, *v31);

    if ((sub_100003A18() & 1) == 0)
    {
      v34 = [*sub_100007504((v30 + 80) *(v30 + 104))];
      [v34 setSharingAppleIDs:0];
    }

    v35 = v59;
    static Logger.authorization.getter();
    v37 = v56;
    v36 = v57;
    v38 = v58;
    (*(v57 + 16))(v56, v55, v58);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v66 = v42;
      *v41 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v36;
      v45 = v43;
      v47 = v46;
      (*(v44 + 8))(v37, v38);
      v48 = sub_100002CB4(v45, v47, &v66);

      *(v41 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v39, v40, "Reset authorization for record identifier: %{public}s not determined", v41, 0xCu);
      sub_1000032BC(v42);
    }

    else
    {

      (*(v36 + 8))(v37, v38);
    }

    (*(v60 + 8))(v35, v52);
    v49 = v53;
    v65(0, 0);
    (*(v62 + 8))(v51, v63);
    return sub_10000D5C4(v49, &qword_10006BB60, qword_100056698);
  }
}

uint64_t sub_100005F8C(uint64_t a1, int a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v116 = a3;
  v117 = a4;
  v102 = a2;
  v105 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v104 = *(v105 - 8);
  v6 = *(v104 + 64);
  __chkstk_darwin(v105);
  v103 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for UUID();
  v107 = *(v108 - 8);
  v8 = *(v107 + 64);
  v9 = __chkstk_darwin(v108);
  v101 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v98 = &v91 - v12;
  v100 = v13;
  __chkstk_darwin(v11);
  v99 = &v91 - v14;
  v111 = type metadata accessor for Logger();
  v106 = *(v111 - 1);
  v15 = *(v106 + 64);
  v16 = __chkstk_darwin(v111);
  v114 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v113 = (&v91 - v18);
  v110 = type metadata accessor for AuthorizationStatus();
  v109 = *(v110 - 8);
  v19 = *(v109 + 64);
  __chkstk_darwin(v110);
  v112 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v91 - v23;
  v25 = type metadata accessor for AuthorizationRecord();
  v115 = *(v25 - 8);
  v26 = *(v115 + 64);
  v27 = __chkstk_darwin(v25);
  __chkstk_darwin(v27);
  v29 = &v91 - v28;
  v30 = v4;
  sub_10003C47C(a1, v24);
  v31 = v112;
  v92 = v26;
  v93 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v30;
  v32 = v113;
  v33 = v114;
  v96 = a1;
  v97 = v29;
  v34 = v115;
  if ((*(v115 + 48))(v24, 1, v25) == 1)
  {
    sub_10000D5C4(v24, &unk_10006C0F0, &qword_100056690);
    v35 = type metadata accessor for FamilyControlsError();
    sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v36 = swift_allocError();
    (*(*(v35 - 8) + 104))(v37, enum case for FamilyControlsError.invalidArgument(_:), v35);
    swift_willThrow();
    swift_errorRetain();
    v116(v36, 1);
  }

  v38 = *(v34 + 32);
  v39 = v97;
  v94 = v25;
  v38(v97, v24, v25);
  AuthorizationRecord.status.getter();
  v40 = (*(v109 + 88))(v31, v110);
  if (v40 == enum case for AuthorizationStatus.notDetermined(_:))
  {
    sub_10003AEE4(v39);
    v41 = v111;
    v42 = v96;
    static Logger.authorization.getter();
    v43 = v107;
    v44 = v99;
    v45 = v108;
    (*(v107 + 16))(v99, v42, v108);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v118[0] = v49;
      *v48 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v43 + 8))(v44, v45);
      v53 = sub_100002CB4(v50, v52, v118);
      v39 = v97;

      *(v48 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v46, v47, "Revoked authorization for record identifier: %{public}s already not determined", v48, 0xCu);
      sub_1000032BC(v49);

      (*(v106 + 8))(v32, v111);
    }

    else
    {

      (*(v43 + 8))(v44, v45);
      (*(v106 + 8))(v32, v41);
    }

LABEL_17:
    v90 = v115;
    v116(0, 0);
    return (*(v90 + 8))(v39, v94);
  }

  v54 = v111;
  v55 = v96;
  if (v40 == enum case for AuthorizationStatus.denied(_:))
  {
    sub_10003AEE4(v39);
    v79 = v33;
    static Logger.authorization.getter();
    v80 = v107;
    v81 = v98;
    v82 = v108;
    (*(v107 + 16))(v98, v55, v108);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *&v118[0] = v113;
      *v85 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      (*(v80 + 8))(v81, v82);
      v89 = sub_100002CB4(v86, v88, v118);
      v39 = v97;

      *(v85 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v83, v84, "Revoked authorization for record identifier: %{public}s already denied", v85, 0xCu);
      sub_1000032BC(v113);
    }

    else
    {

      (*(v80 + 8))(v81, v82);
    }

    (*(v106 + 8))(v79, v54);
    goto LABEL_17;
  }

  v57 = v95;
  if (v40 == enum case for AuthorizationStatus.approved(_:))
  {
    v111 = sub_100007504(v95, v95[3]);
    v114 = AuthorizationRecord.type.getter();
    v113 = AuthorizationRecord.bundleIdentifier.getter();
    v112 = v58;
    sub_10000D398(v57, v118);
    v59 = v115;
    (*(v115 + 16))(v93, v39, v94);
    v60 = v107;
    v61 = v101;
    v62 = v55;
    v63 = v108;
    (*(v107 + 16))(v101, v62, v108);
    v64 = (*(v59 + 80) + 152) & ~*(v59 + 80);
    v65 = (v92 + *(v60 + 80) + v64) & ~*(v60 + 80);
    v66 = (v100 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = swift_allocObject();
    v68 = v118[7];
    *(v67 + 112) = v118[6];
    *(v67 + 128) = v68;
    *(v67 + 144) = v119;
    v69 = v118[3];
    *(v67 + 48) = v118[2];
    *(v67 + 64) = v69;
    v70 = v118[5];
    *(v67 + 80) = v118[4];
    *(v67 + 96) = v70;
    v71 = v118[1];
    *(v67 + 16) = v118[0];
    *(v67 + 32) = v71;
    v38((v67 + v64), v93, v94);
    (*(v60 + 32))(v67 + v65, v61, v63);
    v72 = (v67 + v66);
    v73 = v117;
    *v72 = v116;
    v72[1] = v73;
    v74 = v104;
    v75 = &enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForDeletion(_:);
    v76 = *v111;
    if ((v102 & 1) == 0)
    {
      v75 = &enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForRevoke(_:);
    }

    v77 = v103;
    v78 = v105;
    (*(v104 + 104))(v103, *v75, v105);

    sub_10000EE84(v77, v113, v112, v114, sub_10000DCE8, v67);

    (*(v74 + 8))(v77, v78);
    return (*(v59 + 8))(v97, v94);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100006C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v39 = a4;
  v11 = type metadata accessor for UUID();
  v40 = *(v11 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v41 = *(v15 - 8);
  v42 = v15;
  v16 = *(v41 + 64);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003720(&qword_10006BB60, qword_100056698);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = (&v37 - v21);
  sub_10000D554(a1, &v37 - v21);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    swift_errorRetain();
    a5(v23, 1);
  }

  else
  {
    v37 = a6;
    v38 = a5;
    sub_10003AEE4(a3);
    v25 = sub_100007504((a2 + 80), *(a2 + 104));
    v26 = AuthorizationRecord.bundleIdentifier.getter();
    sub_10002CB2C(v26, v27, *v25);

    if ((sub_100003A18() & 1) == 0)
    {
      v28 = [*sub_100007504((a2 + 80) *(a2 + 104))];
      [v28 setSharingAppleIDs:0];
    }

    static Logger.authorization.getter();
    v29 = v40;
    (*(v40 + 16))(v14, v39, v11);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43 = v39;
      *v32 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      (*(v29 + 8))(v14, v11);
      v36 = sub_100002CB4(v33, v35, &v43);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "Revoked authorization for record identifier: %{public}s not determined", v32, 0xCu);
      sub_1000032BC(v39);
    }

    else
    {

      (*(v29 + 8))(v14, v11);
    }

    (*(v41 + 8))(v18, v42);
    v38(0, 0);
    return sub_10000D5C4(v22, &qword_10006BB60, qword_100056698);
  }
}

uint64_t sub_1000070DC(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v34 = a1;
  v5 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for AuthorizationRecord();
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.authorization.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v8;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Revoking authorization", v19, 2u);
    v3 = v2;
    v8 = v31;
  }

  (*(v13 + 8))(v16, v12);
  result = sub_10003C47C(v34, v8);
  if (!v3)
  {
    v21 = v33;
    if ((*(v33 + 48))(v8, 1, v9) == 1)
    {
      sub_10000D5C4(v8, &unk_10006C0F0, &qword_100056690);
      v22 = type metadata accessor for FamilyControlsError();
      sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, enum case for FamilyControlsError.invalidArgument(_:), v22);
      return swift_willThrow();
    }

    else
    {
      v24 = v32;
      (*(v21 + 32))(v32, v8, v9);
      sub_10003AEE4(v24);
      v25 = v9;
      v26 = sub_100007504((v4 + 80), *(v4 + 104));
      v27 = AuthorizationRecord.bundleIdentifier.getter();
      sub_10002CB2C(v27, v28, *v26);

      if ((sub_100003A18() & 1) == 0)
      {
        v29 = [*sub_100007504((v4 + 80) *(v4 + 104))];
        [v29 setSharingAppleIDs:0];
      }

      return (*(v21 + 8))(v24, v25);
    }
  }

  return result;
}

void *sub_100007504(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100007548()
{
  result = qword_10006B998;
  if (!qword_10006B998)
  {
    sub_1000075FC(&qword_10006B990, &qword_100056680);
    sub_10000DA84(&qword_10006B9A0, &type metadata accessor for AuthorizationRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B998);
  }

  return result;
}

uint64_t sub_1000075FC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100007644(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100007698(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t *sub_10000771C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_10000C798(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_1000077C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100003720(&qword_10006B9C8, &qword_100056688);
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
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

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

unint64_t sub_1000079B4()
{
  result = qword_10006B9B0;
  if (!qword_10006B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B9B0);
  }

  return result;
}

uint64_t sub_100007A08()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100007A48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, int a5, void *a6, uint64_t a7, void (*a8)(id, uint64_t), uint64_t a9)
{
  v125 = a5;
  v136 = a4;
  v135 = a3;
  v146 = a9;
  v139 = sub_100003720(&qword_10006BB60, qword_100056698);
  v14 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  v140 = (&v119 - v15);
  v128 = type metadata accessor for UUID();
  v127 = *(v128 - 8);
  v16 = *(v127 + 64);
  __chkstk_darwin(v128);
  v126 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v133 = *(v134 - 8);
  v18 = *(v133 + 64);
  __chkstk_darwin(v134);
  v132 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AuthorizationRecord();
  v143 = *(v20 - 8);
  v144 = v20;
  v21 = *(v143 + 64);
  v22 = __chkstk_darwin(v20);
  v131 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v121 = &v119 - v24;
  v25 = __chkstk_darwin(v23);
  v120 = &v119 - v26;
  __chkstk_darwin(v25);
  v124 = &v119 - v27;
  v138 = type metadata accessor for Logger();
  v137 = *(v138 - 8);
  v28 = *(v137 + 64);
  v29 = __chkstk_darwin(v138);
  v123 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v122 = (&v119 - v32);
  __chkstk_darwin(v31);
  v34 = (&v119 - v33);
  v35 = type metadata accessor for AuthorizationStatus();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  v39 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = swift_allocObject();
  *(v40 + 2) = a7;
  *(v40 + 3) = a8;
  v141 = a8;
  v145 = v40;
  *(v40 + 4) = v146;
  v142 = a7;

  AuthorizationRecord.status.getter();
  v129 = v36;
  v41 = *(v36 + 88);
  v130 = v35;
  v42 = v41(v39, v35);
  if (v42 == enum case for AuthorizationStatus.notDetermined(_:))
  {
LABEL_2:
    v43 = sub_100007504(a6 + 10, a6[13]);
    v44 = AuthorizationRecord.bundleIdentifier.getter();
    v46 = v45;
    v47 = *v43;
    v48 = FamilyControlsMember.rawValue.getter();
    if (v48 == FamilyControlsMember.rawValue.getter())
    {
      v49 = sub_10002BD9C(v44, v46, v47);

      if ((v49 & 1) == 0)
      {
        v50 = v123;
        static Logger.authorization.getter();
        v52 = v143;
        v51 = v144;
        v53 = v121;
        (*(v143 + 16))(v121, a2, v144);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          *&v147[0] = v136;
          *v56 = 136446210;
          v57 = v126;
          AuthorizationRecord.recordIdentifier.getter();
          sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
          v58 = v128;
          v59 = dispatch thunk of CustomStringConvertible.description.getter();
          v61 = v60;
          (*(v127 + 8))(v57, v58);
          (*(v52 + 8))(v53, v51);
          v62 = sub_100002CB4(v59, v61, v147);

          *(v56 + 4) = v62;
          _os_log_impl(&_mh_execute_header, v54, v55, "Unable to request authorization for record identifier %{public}s because a different app already enrolled a child", v56, 0xCu);
          sub_1000032BC(v136);

          (*(v137 + 8))(v123, v138);
        }

        else
        {

          (*(v52 + 8))(v53, v51);
          (*(v137 + 8))(v50, v138);
        }

        v114 = type metadata accessor for FamilyControlsError();
        sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
        v115 = swift_allocError();
        (*(*(v114 - 8) + 104))(v116, enum case for FamilyControlsError.authorizationConflict(_:), v114);
        v117 = v140;
        *v140 = v115;
        goto LABEL_21;
      }
    }

    else
    {
    }

    v141 = sub_100007504(a6, a6[3]);
    v146 = AuthorizationRecord.bundleIdentifier.getter();
    v142 = v79;
    v80 = v143;
    v81 = v144;
    v82 = v131;
    (*(v143 + 16))(v131, a2, v144);
    sub_10000D398(a6, v147);
    v83 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v84 = (v21 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
    v86 = a1;
    v87 = (v85 + 143) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    (*(v80 + 32))(v88 + v83, v82, v81);
    *(v88 + v84) = v86;
    v89 = v88 + v85;
    v90 = v147[3];
    *(v89 + 32) = v147[2];
    *(v89 + 48) = v90;
    v91 = v147[1];
    *v89 = v147[0];
    *(v89 + 16) = v91;
    *(v89 + 128) = v148;
    v92 = v147[7];
    *(v89 + 96) = v147[6];
    *(v89 + 112) = v92;
    v93 = v147[5];
    *(v89 + 64) = v147[4];
    *(v89 + 80) = v93;
    v94 = (v88 + v87);
    v95 = v135;
    v96 = v136;
    *v94 = v135;
    v94[1] = v96;
    v97 = (v88 + ((v87 + 23) & 0xFFFFFFFFFFFFFFF8));
    v98 = v145;
    *v97 = sub_10000DB0C;
    v97[1] = v98;
    v99 = *v141;
    sub_10000DA30(v95, v96);

    v100 = v132;
    FamilyControlsAuthenticationUIService.ServiceType.init(member:)();
    sub_10000EE84(v100, v146, v142, v86, sub_10000DCEC, v88);

    (*(v133 + 8))(v100, v134);
  }

  v63 = v42;
  if (v42 == enum case for AuthorizationStatus.denied(_:))
  {
    if (v125)
    {
      goto LABEL_2;
    }

    v64 = v122;
    static Logger.authorization.getter();
    v66 = v143;
    v65 = v144;
    v67 = v120;
    (*(v143 + 16))(v120, a2, v144);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v135 = v70;
      v136 = swift_slowAlloc();
      *&v147[0] = v136;
      *v70 = 136446210;
      v71 = v126;
      AuthorizationRecord.recordIdentifier.getter();
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
      v72 = v128;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v63;
      v76 = v75;
      (*(v127 + 8))(v71, v72);
      (*(v66 + 8))(v67, v65);
      v77 = sub_100002CB4(v73, v76, v147);
      v63 = v74;

      v78 = v135;
      *(v135 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v68, v69, "Requested authorization for record identifier: %{public}s already denied", v78, 0xCu);
      sub_1000032BC(v136);

      (*(v137 + 8))(v122, v138);
LABEL_20:
      v117 = v140;
      (*(v129 + 104))(v140, v63, v130);
LABEL_21:
      swift_storeEnumTagMultiPayload();
      sub_1000257AC(v117, v142, v141);
      sub_10000D5C4(v117, &qword_10006BB60, qword_100056698);
    }

    (*(v66 + 8))(v67, v65);
    goto LABEL_19;
  }

  if (v42 == enum case for AuthorizationStatus.approved(_:))
  {
    v64 = v34;
    static Logger.authorization.getter();
    v101 = v143;
    v102 = v144;
    v103 = v124;
    (*(v143 + 16))(v124, a2, v144);
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v134 = v106;
      v135 = swift_slowAlloc();
      *&v147[0] = v135;
      *v106 = 136446210;
      v136 = v64;
      v107 = v126;
      AuthorizationRecord.recordIdentifier.getter();
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
      v108 = v128;
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = v110;
      (*(v127 + 8))(v107, v108);
      (*(v101 + 8))(v103, v102);
      v112 = sub_100002CB4(v109, v111, v147);

      v113 = v134;
      *(v134 + 4) = v112;
      _os_log_impl(&_mh_execute_header, v104, v105, "Requested authorization for record identifier: %{public}s already approved", v113, 0xCu);
      sub_1000032BC(v135);

      (*(v137 + 8))(v136, v138);
      goto LABEL_20;
    }

    (*(v101 + 8))(v103, v102);
LABEL_19:
    (*(v137 + 8))(v64, v138);
    goto LABEL_20;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100008914(void *a1, uint64_t a2, void *a3, void (*a4)(id, uint64_t), uint64_t a5)
{
  v81 = a3;
  v82 = a5;
  v80 = a4;
  v78 = a2;
  v79 = sub_100003720(&qword_10006BB60, qword_100056698);
  v6 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v8 = (&v68 - v7);
  v9 = type metadata accessor for AuthorizationStatus();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  __chkstk_darwin(v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AuthorizationRecord();
  v74 = *(v13 - 8);
  v14 = *(v74 + 64);
  __chkstk_darwin(v13);
  v77 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v71 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v72 = &v68 - v22;
  v23 = __chkstk_darwin(v21);
  v73 = &v68 - v24;
  __chkstk_darwin(v23);
  v26 = &v68 - v25;
  static Logger.authorization.getter();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Revoke authorization", v29, 2u);
  }

  v30 = *(v17 + 8);
  v30(v26, v16);
  if (!a1)
  {
    v44 = type metadata accessor for FamilyControlsError();
    sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v42 = swift_allocError();
    (*(*(v44 - 8) + 104))(v45, enum case for FamilyControlsError.invalidArgument(_:), v44);
    swift_willThrow();
    goto LABEL_9;
  }

  v70 = v16;
  v32 = *(v78 + 120);
  v31 = *(v78 + 128);
  v33 = a1;
  v32(v83);
  v34 = sub_100007504(v83, v84);
  v35 = v34[2];
  if (!v35 || (v36 = v34[1], v37 = sub_100007504(v83, v84), (v38 = v37[4]) == 0))
  {
    v41 = type metadata accessor for FamilyControlsError();
    sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v42 = swift_allocError();
    (*(*(v41 - 8) + 104))(v43, enum case for FamilyControlsError.invalidArgument(_:), v41);
    swift_willThrow();

    sub_1000032BC(v83);
LABEL_9:
    *v8 = v42;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_100025B60(v8, v81, v80, v82);

    return sub_10000D5C4(v8, &qword_10006BB60, qword_100056698);
  }

  v68 = v13;
  v69 = v8;
  v39 = v37[3];

  v40 = v77;
  sub_10003BCF4(v36, v35, v39, v38, v77);

  sub_1000032BC(v83);
  AuthorizationRecord.status.getter();
  v47 = (*(v75 + 88))(v12, v76);
  v48 = v47;
  v49 = v40;
  if (v47 == enum case for AuthorizationStatus.notDetermined(_:))
  {
    sub_10003AEE4(v40);
    v50 = v69;
    v51 = v70;
    v52 = v72;
    static Logger.authorization.getter();
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_20;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "Revoked authorization already not determined";
    goto LABEL_19;
  }

  v50 = v69;
  v51 = v70;
  if (v47 == enum case for AuthorizationStatus.denied(_:))
  {
    v52 = v73;
    static Logger.authorization.getter();
    v53 = Logger.logObject.getter();
    LOBYTE(v54) = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v53, v54))
    {
LABEL_20:

      v30(v52, v51);
      (*(v75 + 104))(v50, v48, v76);
      swift_storeEnumTagMultiPayload();
      sub_100025B60(v50, v81, v80, v82);
      sub_10000D5C4(v50, &qword_10006BB60, qword_100056698);
      return (*(v74 + 8))(v49, v68);
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "Revoked authorization already denied";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v53, v54, v56, v55, 2u);

    goto LABEL_20;
  }

  LODWORD(v73) = enum case for AuthorizationStatus.notDetermined(_:);
  if (v47 == enum case for AuthorizationStatus.approved(_:))
  {
    v57 = v78;
    sub_10003AEE4(v49);
    v58 = sub_100007504((v57 + 80), *(v57 + 104));
    v59 = AuthorizationRecord.bundleIdentifier.getter();
    sub_10002CB2C(v59, v60, *v58);

    v61 = sub_100003A18();
    v62 = v68;
    if ((v61 & 1) == 0)
    {
      v63 = [*sub_100007504((v57 + 80) *(v57 + 104))];
      [v63 setSharingAppleIDs:0];
    }

    v64 = v71;
    static Logger.authorization.getter();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "Revoked authorization not determined", v67, 2u);
    }

    v30(v64, v51);
    (*(v75 + 104))(v50, v73, v76);
    swift_storeEnumTagMultiPayload();
    sub_100025B60(v50, v81, v80, v82);
    sub_10000D5C4(v50, &qword_10006BB60, qword_100056698);
    return (*(v74 + 8))(v77, v62);
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000092B8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(char *, uint64_t *), uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v170 = a6;
  v169 = a4;
  v152 = a3;
  v151 = a2;
  v164 = sub_100003720(&qword_10006BB60, qword_100056698);
  v10 = *(*(v164 - 8) + 64);
  __chkstk_darwin(v164);
  v165 = (&v142 - v11);
  v154 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v153 = *(v154 - 8);
  v12 = *(v153 + 64);
  __chkstk_darwin(v154);
  v150 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for AuthorizationStatus();
  v159 = *(v160 - 8);
  v14 = *(v159 + 64);
  __chkstk_darwin(v160);
  v158 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v166 = (&v142 - v18);
  v168 = type metadata accessor for AuthorizationRecord();
  v162 = *(v168 - 8);
  v19 = *(v162 + 64);
  v20 = __chkstk_darwin(v168);
  v149 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v144 = &v142 - v23;
  v24 = __chkstk_darwin(v22);
  v155 = &v142 - v25;
  v148 = v26;
  __chkstk_darwin(v24);
  v161 = &v142 - v27;
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v28);
  v146 = &v142 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v142 - v33;
  v35 = type metadata accessor for Logger();
  v36 = *(v35 - 8);
  v37 = v36[8];
  v38 = __chkstk_darwin(v35);
  v145 = &v142 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v157 = &v142 - v41;
  __chkstk_darwin(v40);
  v43 = &v142 - v42;
  v171 = a5;

  v172 = a7;

  static Logger.authorization.getter();
  v44 = v29[2];
  v167 = a1;
  v45 = v28;
  v44(v34, a1, v28);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  v48 = os_log_type_enabled(v46, v47);
  v156 = v35;
  v147 = v29;
  v163 = v36;
  if (v48)
  {
    v49 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *&v173[0] = v143;
    *v49 = 136446210;
    sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    v53 = v29[1];
    v53(v34, v45);
    v54 = sub_100002CB4(v50, v52, v173);
    v55 = v171;
    v56 = v172;

    *(v49 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v46, v47, "Request authorization for record identifier: %{public}s", v49, 0xCu);
    sub_1000032BC(v143);

    v57 = v163[1];
    v57(v43, v35);
  }

  else
  {

    v53 = v29[1];
    v53(v34, v28);
    v57 = v36[1];
    v57(v43, v35);
    v55 = v171;
    v56 = v172;
  }

  v58 = v169;
  v59 = v166;
  sub_10003C47C(v167, v166);
  v60 = v162;
  if ((*(v162 + 48))(v59, 1, v168) == 1)
  {
    sub_10000D5C4(v59, &unk_10006C0F0, &qword_100056690);
    v61 = type metadata accessor for FamilyControlsError();
    sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v62 = swift_allocError();
    (*(*(v61 - 8) + 104))(v63, enum case for FamilyControlsError.invalidArgument(_:), v61);
    swift_willThrow();
    v64 = v165;
    *v165 = v62;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    sub_100026C48(v64, v55, v170);

    sub_10000D5C4(v64, &qword_10006BB60, qword_100056698);
LABEL_6:
  }

  v143 = v45;
  v66 = v161;
  v166 = *(v60 + 32);
  (v166)(v161, v59, v168);
  v67 = v56;
  v68 = AuthorizationRecord.type.getter();
  v69 = swift_allocObject();
  v70 = v170;
  v69[2] = v55;
  v69[3] = v70;
  v69[4] = v67;
  swift_retain_n();
  swift_retain_n();
  v71 = v158;
  AuthorizationRecord.status.getter();
  v72 = (*(v159 + 88))(v71, v160);
  v167 = v69;
  if (v72 == enum case for AuthorizationStatus.notDetermined(_:) || (v73 = v72, v72 == enum case for AuthorizationStatus.denied(_:)))
  {
    v90 = sub_100007504(v58 + 10, *(v58 + 13));
    v91 = AuthorizationRecord.bundleIdentifier.getter();
    v93 = v92;
    v94 = *v90;
    v95 = FamilyControlsMember.rawValue.getter();
    if (v95 == FamilyControlsMember.rawValue.getter())
    {
      v96 = sub_10002BD9C(v91, v93, v94);

      if ((v96 & 1) == 0)
      {
        v97 = v145;
        static Logger.authorization.getter();
        v98 = v144;
        (*(v60 + 16))(v144, v66, v168);
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v169 = v53;
          v102 = v101;
          v103 = swift_slowAlloc();
          *&v173[0] = v103;
          *v102 = 136446210;
          v104 = v146;
          AuthorizationRecord.recordIdentifier.getter();
          sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
          v105 = v143;
          v106 = dispatch thunk of CustomStringConvertible.description.getter();
          v107 = v98;
          v109 = v108;
          v169(v104, v105);
          v86 = *(v162 + 8);
          v86(v107, v168);
          v110 = sub_100002CB4(v106, v109, v173);

          *(v102 + 4) = v110;
          _os_log_impl(&_mh_execute_header, v99, v100, "Unable to request authorization for record identifier %{public}s because a different app already enrolled a child", v102, 0xCu);
          sub_1000032BC(v103);

          v111 = v145;
        }

        else
        {

          v86 = *(v60 + 8);
          v86(v98, v168);
          v111 = v97;
        }

        v57(v111, v156);
        v137 = v171;
        v138 = type metadata accessor for FamilyControlsError();
        sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
        v139 = swift_allocError();
        (*(*(v138 - 8) + 104))(v140, enum case for FamilyControlsError.authorizationConflict(_:), v138);
        v141 = v165;
        *v165 = v139;
        swift_storeEnumTagMultiPayload();
        sub_100026C48(v141, v137, v170);
        v136 = v141;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v112 = v169;
    v163 = sub_100007504(v169, *(v169 + 3));
    v165 = AuthorizationRecord.bundleIdentifier.getter();
    v164 = v113;
    v115 = *(v60 + 16);
    v114 = v60 + 16;
    v116 = v149;
    v115(v149, v66, v168);
    v170 = v114;
    sub_10000D398(v112, v173);
    v117 = (*(v114 + 64) + 16) & ~*(v114 + 64);
    v118 = (v148 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
    v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
    v120 = (v119 + 143) & 0xFFFFFFFFFFFFFFF8;
    v121 = swift_allocObject();
    (v166)(v121 + v117, v116, v168);
    *(v121 + v118) = v68;
    v122 = v121 + v119;
    v123 = v173[3];
    *(v122 + 32) = v173[2];
    *(v122 + 48) = v123;
    v124 = v173[1];
    *v122 = v173[0];
    *(v122 + 16) = v124;
    *(v122 + 128) = v174;
    v125 = v173[7];
    *(v122 + 96) = v173[6];
    *(v122 + 112) = v125;
    v126 = v173[5];
    *(v122 + 64) = v173[4];
    *(v122 + 80) = v126;
    v127 = (v121 + v120);
    v128 = v151;
    v129 = v152;
    *v127 = v151;
    v127[1] = v129;
    v130 = (v121 + ((v120 + 23) & 0xFFFFFFFFFFFFFFF8));
    v131 = v167;
    *v130 = sub_10000DA1C;
    v130[1] = v131;
    v132 = *v163;
    sub_10000DA30(v128, v129);

    v133 = v150;
    FamilyControlsAuthenticationUIService.ServiceType.init(member:)();
    sub_10000EE84(v133, v165, v164, v68, sub_10000DA2C, v121);

    (*(v153 + 8))(v133, v154);

    (*(v170 - 1))(v161, v168);
    goto LABEL_6;
  }

  v169 = v53;
  if (v72 == enum case for AuthorizationStatus.approved(_:))
  {
    v74 = v157;
    static Logger.authorization.getter();
    v75 = v155;
    v76 = v168;
    (*(v60 + 16))(v155, v66, v168);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v158 = v79;
      v166 = swift_slowAlloc();
      *&v173[0] = v166;
      *v79 = 136446210;
      v80 = v146;
      AuthorizationRecord.recordIdentifier.getter();
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
      v81 = v75;
      v82 = v143;
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      v169(v80, v82);
      v86 = *(v162 + 8);
      v86(v81, v76);
      v87 = sub_100002CB4(v83, v85, v173);
      v55 = v171;

      v88 = v158;
      *(v158 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v77, v78, "Requested authorization for record identifier: %{public}s already approved", v88, 0xCu);
      sub_1000032BC(v166);

      v89 = v157;
    }

    else
    {

      v134 = v75;
      v86 = *(v60 + 8);
      v86(v134, v76);
      v89 = v74;
    }

    v57(v89, v156);
    v135 = v165;
    (*(v159 + 104))(v165, v73, v160);
    swift_storeEnumTagMultiPayload();
    sub_100026C48(v135, v55, v170);
    v136 = v135;
LABEL_20:
    sub_10000D5C4(v136, &qword_10006BB60, qword_100056698);

    v86(v161, v168);
    goto LABEL_6;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000A4E4(uint64_t a1, void *a2, void *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v163 = a2;
  v143 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v142 = *(v143 - 8);
  v9 = *(v142 + 64);
  __chkstk_darwin(v143);
  v141 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for AuthorizationStatus();
  v155 = *(v156 - 8);
  v11 = *(v155 + 64);
  v12 = __chkstk_darwin(v156);
  v140 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v153 = &v134 - v14;
  v15 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v161 = &v134 - v17;
  v159 = type metadata accessor for AuthorizationRecord();
  v18 = *(v159 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v159);
  v144 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v139 = &v134 - v23;
  v138 = v24;
  __chkstk_darwin(v22);
  v158 = &v134 - v25;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v135 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v150 = &v134 - v32;
  v33 = __chkstk_darwin(v31);
  v145 = &v134 - v34;
  v137 = v35;
  __chkstk_darwin(v33);
  v37 = &v134 - v36;
  v162 = type metadata accessor for Logger();
  v164 = *(v162 - 8);
  v38 = *(v164 + 64);
  v39 = __chkstk_darwin(v162);
  v136 = &v134 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v146 = &v134 - v42;
  __chkstk_darwin(v41);
  v44 = &v134 - v43;
  v45 = swift_allocObject();
  v45[2] = a3;
  v45[3] = a4;
  v160 = a4;
  v45[4] = a5;
  v149 = a3;

  static Logger.authorization.getter();
  v165 = a1;
  v166 = v27;
  v46 = *(v27 + 16);
  v152 = v27 + 16;
  v151 = v46;
  v46(v37, a1, v26);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v154 = v26;
  if (v49)
  {
    v50 = swift_slowAlloc();
    v157 = v18;
    v51 = v50;
    *&v167[0] = swift_slowAlloc();
    v52 = a5;
    v53 = *&v167[0];
    *v51 = 136446210;
    sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v26;
    v56 = v45;
    v57 = v52;
    v59 = v58;
    v148 = *(v166 + 8);
    v148(v37, v55);
    v60 = sub_100002CB4(v54, v59, v167);
    v61 = v57;
    v45 = v56;

    *(v51 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v47, v48, "Reset authorization for record identifier: %{public}s", v51, 0xCu);
    sub_1000032BC(v53);

    v18 = v157;

    v62 = v162;
    v147 = *(v164 + 8);
    v147(v44, v162);
  }

  else
  {

    v148 = *(v166 + 8);
    v148(v37, v26);
    v62 = v162;
    v147 = *(v164 + 8);
    v147(v44, v162);
    v61 = a5;
  }

  v63 = v161;
  sub_10003C47C(v165, v161);
  v64 = v159;
  if ((*(v18 + 48))(v63, 1, v159) == 1)
  {
    sub_10000D5C4(v63, &unk_10006C0F0, &qword_100056690);
    v65 = type metadata accessor for FamilyControlsError();
    sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v66 = swift_allocError();
    (*(*(v65 - 8) + 104))(v67, enum case for FamilyControlsError.invalidArgument(_:), v65);
    swift_willThrow();
    swift_errorRetain();
    v160(v66);
  }

  v157 = v18;
  v69 = *(v18 + 32);
  v69(v158, v63, v64);
  v70 = v153;
  AuthorizationRecord.status.getter();
  v71 = (*(v155 + 88))(v70, v156);
  v72 = enum case for AuthorizationStatus.notDetermined(_:);
  if (v71 == enum case for AuthorizationStatus.notDetermined(_:))
  {
    v161 = v61;
    v73 = v146;
    static Logger.authorization.getter();
    v74 = v145;
    v75 = v154;
    v151(v145, v165, v154);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = v73;
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v134 = v45;
      v81 = v80;
      *&v167[0] = v80;
      *v79 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
      v82 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v74;
      v84 = v62;
      v86 = v85;
      v148(v83, v75);
      v87 = sub_100002CB4(v82, v86, v167);

      *(v79 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v76, v77, "Reset authorization for record identifier: %{public}s already not determined", v79, 0xCu);
      sub_1000032BC(v81);

      v88 = v78;
      v89 = v84;
    }

    else
    {

      v148(v74, v75);
      v88 = v73;
      v89 = v62;
    }

    v147(v88, v89);
    v91 = v157;
    if ((sub_100004AE4() & 1) == 0)
    {
      if (qword_10006B7F0 != -1)
      {
        swift_once();
      }

      sub_100048C54();
    }

    v160(0);
    (*(v91 + 8))(v158, v159);
  }

  v134 = v45;
  if (v71 == enum case for AuthorizationStatus.denied(_:))
  {
    v161 = v61;
    AuthorizationRecord.bundleIdentifier.getter();
    AuthorizationRecord.teamIdentifier.getter();
    AuthorizationRecord.recordIdentifier.getter();
    (*(v155 + 104))(v140, v72, v156);
    AuthorizationRecord.type.getter();
    v90 = v144;
    AuthorizationRecord.init(bundleIdentifier:teamIdentifier:recordIdentifier:status:type:)();
    sub_10003B3DC(v90);
    v117 = v136;
    static Logger.authorization.getter();
    v118 = v135;
    v119 = v154;
    v151(v135, v165, v154);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.default.getter();
    v122 = os_log_type_enabled(v120, v121);
    v123 = v157;
    if (v122)
    {
      v124 = v117;
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *&v167[0] = v126;
      *v125 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
      v127 = dispatch thunk of CustomStringConvertible.description.getter();
      v129 = v128;
      v148(v118, v119);
      v130 = sub_100002CB4(v127, v129, v167);

      *(v125 + 4) = v130;
      _os_log_impl(&_mh_execute_header, v120, v121, "Reset authorization for record identifier: %{public}s not determined", v125, 0xCu);
      sub_1000032BC(v126);
      v90 = v144;

      v131 = v124;
    }

    else
    {

      v148(v118, v119);
      v131 = v117;
    }

    v147(v131, v162);
    v132 = v159;
    if ((sub_100004AE4() & 1) == 0)
    {
      if (qword_10006B7F0 != -1)
      {
        swift_once();
      }

      sub_100048C54();
    }

    v160(0);
    v133 = *(v123 + 8);
    v133(v90, v132);
    v133(v158, v132);
  }

  v92 = v64;
  v93 = v163;
  if (v71 == enum case for AuthorizationStatus.approved(_:))
  {
    v160 = sub_100007504(v163, v163[3]);
    v94 = v158;
    v164 = AuthorizationRecord.type.getter();
    v95 = v94;
    v162 = AuthorizationRecord.bundleIdentifier.getter();
    v161 = v96;
    v97 = v157;
    v98 = v139;
    v99 = v92;
    (*(v157 + 16))(v139, v95, v92);
    sub_10000D398(v93, v167);
    v151(v150, v165, v154);
    v100 = (*(v97 + 80) + 16) & ~*(v97 + 80);
    v101 = (v138 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
    v102 = v166;
    v103 = (*(v166 + 80) + v101 + 136) & ~*(v166 + 80);
    v104 = (v137 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
    v105 = swift_allocObject();
    v69((v105 + v100), v98, v99);
    v106 = v105 + v101;
    v107 = v167[7];
    *(v106 + 96) = v167[6];
    *(v106 + 112) = v107;
    *(v106 + 128) = v168;
    v108 = v167[3];
    *(v106 + 32) = v167[2];
    *(v106 + 48) = v108;
    v109 = v167[5];
    *(v106 + 64) = v167[4];
    *(v106 + 80) = v109;
    v110 = v167[1];
    *v106 = v167[0];
    *(v106 + 16) = v110;
    (*(v102 + 32))(v105 + v103, v150, v154);
    v111 = (v105 + v104);
    v112 = v134;
    *v111 = sub_10000D388;
    v111[1] = v112;
    v113 = *v160;
    v114 = v142;
    v115 = v141;
    v116 = v143;
    (*(v142 + 104))(v141, enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForRevoke(_:), v143);

    sub_10000EE84(v115, v162, v161, v164, sub_10000D904, v105);

    (*(v114 + 8))(v115, v116);
    (*(v157 + 8))(v158, v159);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000B7C8(uint64_t *a1, int a2, void *a3, void *a4, void (*a5)(uint64_t), void (*a6)(uint64_t *), uint64_t a7, uint64_t a8, char *a9, void (*a10)(uint64_t *))
{
  v111 = a8;
  v115 = a2;
  v129 = a1;
  v121 = type metadata accessor for Logger();
  v117 = *(v121 - 8);
  v14 = v117[8];
  v15 = __chkstk_darwin(v121);
  v108 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v116 = &v101 - v17;
  v114 = type metadata accessor for FamilyControlsAuthenticationUIService.ServiceType();
  v113 = *(v114 - 8);
  v18 = *(v113 + 64);
  __chkstk_darwin(v114);
  v112 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for UUID();
  v118 = *(v119 - 8);
  v20 = *(v118 + 64);
  v21 = __chkstk_darwin(v119);
  v107 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v109 = &v101 - v23;
  __chkstk_darwin(v22);
  v110 = &v101 - v24;
  v120 = type metadata accessor for AuthorizationStatus();
  v124 = *(v120 - 8);
  v25 = *(v124 + 64);
  __chkstk_darwin(v120);
  v123 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100003720(&unk_10006C0F0, &qword_100056690);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v101 - v29;
  v125 = type metadata accessor for AuthorizationRecord();
  v122 = *(v125 - 8);
  v31 = *(v122 + 64);
  v32 = __chkstk_darwin(v125);
  __chkstk_darwin(v32);
  v34 = &v101 - v33;
  v35 = swift_allocObject();
  v35[2] = a4;
  v35[3] = a5;
  v126 = a5;
  v128 = v35;
  v35[4] = a6;
  v36 = a4;
  v127 = a6;

  sub_10003C47C(v129, v30);
  v37 = v123;
  v38 = v124;
  v103 = v31;
  v104 = v20;
  v105 = &v101 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a3;
  v106 = v36;
  v40 = v34;
  v41 = v122;
  v42 = v125;
  if ((*(v122 + 48))(v30, 1, v125) == 1)
  {
    sub_10000D5C4(v30, &unk_10006C0F0, &qword_100056690);
    v43 = type metadata accessor for FamilyControlsError();
    sub_10000DA84(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v44 = swift_allocError();
    (*(*(v43 - 8) + 104))(v45, enum case for FamilyControlsError.invalidArgument(_:), v43);
    swift_willThrow();
    swift_errorRetain();
    v126(v44);
  }

  v46 = v42;
  v47 = *(v41 + 32);
  v47(v34, v30, v46);
  AuthorizationRecord.status.getter();
  v48 = (*(v38 + 88))(v37, v120);
  if (v48 == enum case for AuthorizationStatus.notDetermined(_:))
  {
    sub_10003AEE4(v34);
    v49 = v121;
    v50 = v34;
    v51 = v116;
    static Logger.authorization.getter();
    v52 = v118;
    v53 = v109;
    v54 = v119;
    (*(v118 + 16))(v109, v129, v119);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v130[0] = v58;
      *v57 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v54;
      v62 = v61;
      (*(v52 + 8))(v53, v60);
      v63 = sub_100002CB4(v59, v62, v130);

      *(v57 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v55, v56, "Revoked authorization for record identifier: %{public}s already not determined", v57, 0xCu);
      sub_1000032BC(v58);

      (v117[1])(v116, v121);
    }

    else
    {

      (*(v52 + 8))(v53, v54);
      (v117[1])(v51, v49);
    }

LABEL_17:
    if ((sub_100004AE4() & 1) == 0)
    {
      if (qword_10006B7F0 != -1)
      {
        swift_once();
      }

      sub_100048C54();
    }

    v126(0);
    (*(v41 + 8))(v50, v125);
  }

  v64 = v121;
  if (v48 == enum case for AuthorizationStatus.denied(_:))
  {
    v50 = v34;
    sub_10003AEE4(v34);
    v89 = v108;
    static Logger.authorization.getter();
    v90 = v118;
    v91 = v107;
    v92 = v119;
    (*(v118 + 16))(v107, v129, v119);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *&v130[0] = v129;
      *v95 = 136446210;
      sub_10000DA84(&qword_10006B9D8, &type metadata accessor for UUID);
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v92;
      v99 = v98;
      (*(v90 + 8))(v91, v97);
      v100 = sub_100002CB4(v96, v99, v130);

      *(v95 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v93, v94, "Revoked authorization for record identifier: %{public}s already denied", v95, 0xCu);
      sub_1000032BC(v129);

      (v117[1])(v108, v64);
    }

    else
    {

      (*(v90 + 8))(v91, v92);
      (v117[1])(v89, v64);
    }

    goto LABEL_17;
  }

  v126 = v47;
  if (v48 == enum case for AuthorizationStatus.approved(_:))
  {
    v66 = v41;
    v127 = a10;
    v123 = a9;
    v117 = sub_100007504(v39, v39[3]);
    v124 = AuthorizationRecord.type.getter();
    v102 = v34;
    v121 = AuthorizationRecord.bundleIdentifier.getter();
    v120 = v67;
    sub_10000D398(v39, v130);
    v68 = v105;
    (*(v41 + 16))(v105, v40, v125);
    v69 = v118;
    v70 = v110;
    v71 = v119;
    (*(v118 + 16))(v110, v129, v119);
    v72 = (*(v66 + 80) + 152) & ~*(v66 + 80);
    v73 = (v103 + *(v69 + 80) + v72) & ~*(v69 + 80);
    v74 = (v104 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = swift_allocObject();
    v76 = v130[7];
    *(v75 + 112) = v130[6];
    *(v75 + 128) = v76;
    *(v75 + 144) = v131;
    v77 = v130[3];
    *(v75 + 48) = v130[2];
    *(v75 + 64) = v77;
    v78 = v130[5];
    *(v75 + 80) = v130[4];
    *(v75 + 96) = v78;
    v79 = v130[1];
    *(v75 + 16) = v130[0];
    *(v75 + 32) = v79;
    v80 = v68;
    v81 = v125;
    (v126)(v75 + v72, v80, v125);
    (*(v69 + 32))(v75 + v73, v70, v71);
    v82 = (v75 + v74);
    v83 = v128;
    *v82 = v123;
    v82[1] = v83;
    v84 = v113;
    v85 = &enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForDeletion(_:);
    v86 = *v117;
    if ((v115 & 1) == 0)
    {
      v85 = &enum case for FamilyControlsAuthenticationUIService.ServiceType.authenticationForRevoke(_:);
    }

    v87 = v112;
    v88 = v114;
    (*(v113 + 104))(v112, *v85, v114);

    sub_10000EE84(v87, v121, v120, v124, v127, v75);

    (*(v84 + 8))(v87, v88);
    (*(v66 + 8))(v102, v81);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000C57C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.authorization.getter();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Request internal authorization", v13, 2u);
  }

  (*(v7 + 8))(v10, v6);
  sub_10003B998(a1);
  v14 = sub_100007504((a2 + 80), *(a2 + 104));
  sub_10002C81C(a1, 0xD000000000000014, 0x8000000100057A70, *v14);
  if (qword_10006B7F0 != -1)
  {
    swift_once();
  }

  sub_100047AE4(1, 1);
  return a3(0);
}

void sub_10000C798(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a2;
  v26 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 48) + 8 * v14);
    v16 = [v15 bundleIdentifier];
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v18 == a4 && v20 == a5)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {

LABEL_20:
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_23:

        sub_1000077C0(a1, v24, v26, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_23;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_10000C958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;

  if (v8 > 0xD)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v32 = v9;
    v33 = v4;
    v31[1] = v31;
    __chkstk_darwin(v11);
    v34 = v31 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v34, v10);
    v35 = 0;
    v36 = v6;
    v10 = 0;
    v9 = v6 + 56;
    v12 = 1 << *(v6 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v38 = a3;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v4 = v16 | (v10 << 6);
      v19 = *(*(v6 + 48) + 8 * v4);
      v20 = [v19 bundleIdentifier];
      if (v20)
      {
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        a3 = v38;
        if (v22 == v37 && v24 == v38)
        {

          v6 = v36;
        }

        else
        {
          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v6 = v36;
          if ((v26 & 1) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {

        a3 = v38;
LABEL_21:
        *&v34[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_24:
          v28 = sub_1000077C0(v34, v32, v35, v6);

          return v28;
        }
      }
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_24;
      }

      v18 = *(v9 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_27:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v30 = swift_slowAlloc();

  v28 = sub_10000771C(v30, v9, v6, v37, a3);

  return v28;
}

Swift::Int sub_10000CC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_10000C958(a1, a2, a3);
  }

  __CocoaSet.makeIterator()();
  if (__CocoaSet.Iterator.next()())
  {
    sub_10000D33C();
    while (1)
    {
      swift_dynamicCast();
      v11 = [v23 bundleIdentifier];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if (v13 == a2 && v15 == a3)
      {
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v17 & 1) == 0)
        {
          break;
        }
      }

LABEL_7:
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_26;
      }
    }

    v18 = *(&_swiftEmptySetSingleton + 2);
    if (*(&_swiftEmptySetSingleton + 3) <= v18)
    {
      sub_100035B98(v18 + 1);
    }

    result = NSObject._rawHashValue(seed:)(*(&_swiftEmptySetSingleton + 5));
    v6 = &_swiftEmptySetSingleton + 56;
    v7 = -1 << *(&_swiftEmptySetSingleton + 32);
    v8 = result & ~v7;
    v9 = v8 >> 6;
    if (((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7)) != 0)
    {
      v10 = __clz(__rbit64((-1 << v8) & ~*(&_swiftEmptySetSingleton + (v8 >> 6) + 7))) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = 0;
      v20 = (63 - v7) >> 6;
      do
      {
        if (++v9 == v20 && (v19 & 1) != 0)
        {
          __break(1u);
          return result;
        }

        v21 = v9 == v20;
        if (v9 == v20)
        {
          v9 = 0;
        }

        v19 |= v21;
        v22 = *&v6[8 * v9];
      }

      while (v22 == -1);
      v10 = __clz(__rbit64(~v22)) + (v9 << 6);
    }

    *&v6[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    *(*(&_swiftEmptySetSingleton + 6) + 8 * v10) = v23;
    ++*(&_swiftEmptySetSingleton + 2);
    goto LABEL_7;
  }

LABEL_26:

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10000CEC0(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  v28 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.authorization.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Revoke internal authorization", v17, 2u);
  }

  (*(v11 + 8))(v14, v10);
  v18 = a1[9];
  sub_100007504(a1 + 5, a1[8]);
  dispatch thunk of Locatable.familyControlsInternalAuthorization.getter();
  sub_10003CB70(&_swiftEmptyArrayStorage);
  (*(v6 + 8))(v9, v5);
  v19 = sub_100007504(a1 + 10, a1[13]);
  v20 = *v19;
  v21 = [*v19 deviceActivity];
  v22 = [v21 allowedClients];

  if (v22)
  {
    sub_10000D33C();
    sub_10000DA84(&qword_10006B9C0, sub_10000D33C);
    v23 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v23 = 0;
  }

  v24 = [v20 deviceActivity];
  if (v23)
  {
    sub_10000CC54(v23, 0xD000000000000014, 0x8000000100057A70);
    sub_10000D33C();
    sub_10000DA84(&qword_10006B9C0, sub_10000D33C);
    v25.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v25.super.isa = 0;
  }

  [v24 setAllowedClients:v25.super.isa];

  if ((sub_100003A18() & 1) == 0)
  {
    v26 = [*sub_100007504(a1 + 10 a1[13])];
    [v26 setSharingAppleIDs:0];
  }

  if ((sub_100004AE4() & 1) == 0)
  {
    if (qword_10006B7F0 != -1)
    {
      swift_once();
    }

    sub_100048C54();
  }

  return v30(0);
}

unint64_t sub_10000D33C()
{
  result = qword_10006B9B8;
  if (!qword_10006B9B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006B9B8);
  }

  return result;
}

uint64_t sub_10000D3D4()
{
  v1 = type metadata accessor for AuthorizationRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 152) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1000032BC(v0 + 2);
  sub_1000032BC(v0 + 7);
  sub_1000032BC(v0 + 12);
  v12 = v0[18];

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10000D554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006BB60, qword_100056698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D5C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003720(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000D62C(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorizationRecord() - 8);
  v4 = (*(v3 + 80) + 152) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_100006C78(a1, v1 + 16, v1 + v4, (v1 + v7), v9, v10);
}

uint64_t sub_10000D734()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D774()
{
  v1 = type metadata accessor for AuthorizationRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 136) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_1000032BC((v0 + v5));
  sub_1000032BC((v0 + v5 + 40));
  sub_1000032BC((v0 + v5 + 80));
  v12 = *(v0 + v5 + 128);

  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_10000D904(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorizationRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v5 + *(v6 + 80) + 136) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_100005944(a1, v1 + v4, v1 + v5, v1 + v7, v9, v10);
}

uint64_t sub_10000DA30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000DA84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000DACC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000DB18()
{
  v1 = type metadata accessor for AuthorizationRecord();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 143) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v8 = (v0 + v5);
  sub_1000032BC(v8);
  sub_1000032BC(v8 + 5);
  sub_1000032BC(v8 + 10);
  v9 = v8[16];

  sub_100007644(*(v0 + v6), *(v0 + v6 + 8));
  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_10000DC08(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthorizationRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 143) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v7);
  v10 = *(v1 + v7 + 8);
  v11 = v1 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_100004F8C(a1, v1 + v4, v8, v1 + v6, v9, v10, v12, v13);
}

uint64_t sub_10000DCF0()
{
  v1 = [*v0 receivedInvitations];
  sub_10000E20C();
  sub_10000E258();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_10000DD78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_100003720(&qword_10006BA50, &qword_100056770);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = aBlock - v14;
  sub_10000E19C(a2, aBlock - v14);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  isa = 0;
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v17 + 8))(v15, v16);
  }

  if (a4)
  {
    aBlock[4] = a4;
    aBlock[5] = a5;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000DF48;
    aBlock[3] = &unk_100066168;
    a4 = _Block_copy(aBlock);
  }

  [v6 sendInvitationToDestination:a1 expirationDate:isa context:a3 serverAcknowledgedBlock:a4];
  _Block_release(a4);
}

void sub_10000DF48(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_10000DFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  if (a3)
  {
    v9[4] = a3;
    v9[5] = a4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100012D58;
    v9[3] = &unk_100066140;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v7 acceptInvitation:a1 withContext:a2 serverAcknowledgedBlock:v8];
  _Block_release(v8);
}

void sub_10000E0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100012D58;
    v7[3] = &unk_100066118;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 declineInvitation:a1 serverAcknowledgedBlock:v6];
  _Block_release(v6);
}

uint64_t sub_10000E184(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E19C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006BA50, &qword_100056770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000E20C()
{
  result = qword_10006BA58;
  if (!qword_10006BA58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006BA58);
  }

  return result;
}

unint64_t sub_10000E258()
{
  result = qword_10006BA60;
  if (!qword_10006BA60)
  {
    sub_10000E20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BA60);
  }

  return result;
}

uint64_t sub_10000E2C0()
{
  error = 0;
  v1 = SecTaskCopySigningIdentifier(v0, &error);
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    swift_beginAccess();
    if (error)
    {
    }
  }

  else
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136446210;
      swift_beginAccess();
      sub_100003720(&qword_10006BAD0, &qword_100056778);
      v8 = String.init<A>(describing:)();
      v10 = sub_100002CB4(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to extract bundle identifier from SecTask: %{public}s", v6, 0xCu);
      sub_1000032BC(v7);
    }

    swift_beginAccess();
    if (error)
    {
    }

    return 0;
  }

  return v3;
}

id sub_10000E4A8@<X0>(void *a1@<X8>)
{
  result = [swift_getObjCClassFromMetadata() sharedInstance];
  *a1 = result;
  return result;
}

id sub_10000E510(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, NSString a5, uint64_t a6, void *a7, uint64_t a8)
{
  v13 = a3;
  if (a1)
  {
    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (!v13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v14.super.isa = 0;
  if (a3)
  {
LABEL_3:
    v13 = String._bridgeToObjectiveC()();
  }

LABEL_4:
  if (a5)
  {
    a5 = String._bridgeToObjectiveC()();
  }

  if (a7)
  {
    v17[4] = a7;
    v17[5] = a8;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 1107296256;
    v17[2] = sub_10000E668;
    v17[3] = &unk_100066190;
    a7 = _Block_copy(v17);
  }

  v15 = [v8 refreshIDStatusForDestinations:v14.super.isa service:v13 listenerID:a5 queue:a6 completionBlock:a7];
  _Block_release(a7);

  return v15;
}

uint64_t sub_10000E668(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t sub_10000E6F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E710(int a1)
{
  v31 = a1;
  v1 = 0xD000000000000010;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = os_variant_allows_internal_security_policies();
  v8 = objc_allocWithZone(NSUserDefaults);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithSuiteName:v9];

  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 BOOLForKey:v11];

    if (v12)
    {

      v13 = 1;
    }

    else
    {
      v14 = String._bridgeToObjectiveC()();
      v15 = [v10 BOOLForKey:v14];

      v16 = String._bridgeToObjectiveC()();
      v13 = [v10 BOOLForKey:v16];

      if (v31)
      {
        if (v31 != 1)
        {
          v13 &= v15;
        }
      }

      else
      {
        v13 = v15;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  static Logger.permissions.getter();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v30 = v2;
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v19 = 136315650;
    HIDWORD(v29) = v7;
    if (v7)
    {
      v20 = 0;
    }

    else
    {
      v20 = 1953459744;
    }

    if (v7)
    {
      v21 = 0xE000000000000000;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    v22 = sub_100002CB4(v20, v21, &v32);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    if (v31)
    {
      if (v31 == 1)
      {
        v1 = 0x6E614D4D444D6F6ELL;
      }

      else
      {
        v1 = 7105633;
      }

      if (v31 == 1)
      {
        v23 = 0xEF746E656D656761;
      }

      else
      {
        v23 = 0xE300000000000000;
      }
    }

    else
    {
      v23 = 0x8000000100057BA0;
    }

    v24 = sub_100002CB4(v1, v23, &v32);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;
    if (v13)
    {
      v25 = 0;
    }

    else
    {
      v25 = 1953459744;
    }

    if (v13)
    {
      v26 = 0xE000000000000000;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    v27 = sub_100002CB4(v25, v26, &v32);

    *(v19 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v17, v18, "This device is%s internal and the permission requirement %s is%s overridden.", v19, 0x20u);
    swift_arrayDestroy();

    (*(v3 + 8))(v6, v30);
    v7 = HIDWORD(v29);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return v7 & v13;
}

char *sub_10000EB18()
{
  v1 = v0;
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v22);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_anonymousListener;
  *&v0[v10] = [objc_opt_self() anonymousListener];
  v21 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_syncQueue;
  sub_1000112B4(0, &qword_10006C0D0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v24 = &_swiftEmptyArrayStorage;
  sub_1000112FC(&qword_10006BC70, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003720(&qword_10006BC78, qword_1000568C0);
  sub_100011344();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  *&v0[v21] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = &v0[OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestCompletionHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestResponse;
  v13 = sub_100003720(&qword_10006BB60, qword_100056698);
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = type metadata accessor for AuthorizationAuthenticator();
  v23.receiver = v1;
  v23.super_class = v14;
  v15 = objc_msgSendSuper2(&v23, "init");
  v16 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_anonymousListener;
  v17 = *&v15[OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_anonymousListener];
  v18 = v15;
  [v17 setDelegate:v18];
  [*&v15[v16] resume];

  return v18;
}

uint64_t sub_10000EE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v30 = a3;
  v31 = a4;
  v28 = a1;
  v29 = a2;
  v33 = sub_100003720(&qword_10006BB60, qword_100056698);
  v9 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v11 = (&v28 - v10);
  v32 = type metadata accessor for Logger();
  v12 = *(v32 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v32);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v16 = *&v6[OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_syncQueue];
  v17 = swift_allocObject();
  v17[2] = v6;
  v17[3] = a5;
  v34 = a5;
  v17[4] = a6;
  v17[5] = &v36;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100011280;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1000113B8;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000219B4;
  aBlock[3] = &unk_100066310;
  v19 = _Block_copy(aBlock);
  v20 = v6;

  dispatch_sync(v16, v19);
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    if (v36 == 1)
    {
      sub_10000F260(v28, v29, v30);
    }

    else
    {
      static Logger.authentication.getter();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Already prompting for authorization. Rejecting new request.", v24, 2u);
      }

      (*(v12 + 8))(v15, v32);
      v25 = type metadata accessor for FamilyControlsError();
      sub_1000112FC(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
      v26 = swift_allocError();
      (*(*(v25 - 8) + 104))(v27, enum case for FamilyControlsError.authorizationConflict(_:), v25);
      *v11 = v26;
      swift_storeEnumTagMultiPayload();
      v34(v11);
      sub_10000D5C4(v11, &qword_10006BB60, qword_100056698);
    }
  }

  return result;
}

void sub_10000F260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 initWithServiceName:v7 viewControllerClassName:v8];

  v10 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  v11 = [*(v3 + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_anonymousListener) endpoint];
  v12 = [v11 _endpoint];

  [v10 setXpcEndpoint:v12];
  swift_unknownObjectRelease();
  sub_100003720(&qword_10006BC58, &unk_1000568B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100056810;
  type metadata accessor for FamilyControlsAuthenticationUIService();
  *(inited + 32) = static FamilyControlsAuthenticationUIService.ServiceTypeKey.getter();
  *(inited + 40) = v14;
  v15 = FamilyControlsAuthenticationUIService.ServiceType.rawValue.getter();
  *(inited + 72) = &type metadata for Int;
  *(inited + 48) = v15;
  *(inited + 80) = static FamilyControlsAuthenticationUIService.ServiceBundleIdentifierKey.getter();
  *(inited + 88) = v16;
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = a2;
  *(inited + 104) = a3;

  *(inited + 128) = static FamilyControlsAuthenticationUIService.ServiceMemberKey.getter();
  *(inited + 136) = v17;
  v18 = FamilyControlsMember.rawValue.getter();
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = v18;
  v19 = sub_100041CC4(inited);
  swift_setDeallocating();
  sub_100003720(&unk_10006BC60, &unk_100056CE0);
  swift_arrayDestroy();
  sub_100014820(v19);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v10 setUserInfo:isa];

  v21 = [objc_opt_self() newHandleWithDefinition:v9 configurationContext:v10];
  v22 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v21 registerObserver:v23];
  [v21 activateWithContext:v22];
}

id sub_10000F554()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AuthorizationAuthenticator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AuthorizationAuthenticator()
{
  result = qword_10006BB48;
  if (!qword_10006BB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F654()
{
  sub_10000F700();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10000F700()
{
  if (!qword_10006BB58)
  {
    sub_1000075FC(&qword_10006BB60, qword_100056698);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10006BB58);
    }
  }
}

uint64_t sub_10000F7BC(void *a1)
{
  v66 = sub_100003720(&qword_10006BB60, qword_100056698);
  v2 = *(v66 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v66);
  v60 = (&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = &v59 - v6;
  v8 = sub_100003720(&unk_10006BC30, &qword_100056898);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v59 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v61 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v59 = &v59 - v20;
  __chkstk_darwin(v19);
  v22 = &v59 - v21;
  static Logger.authentication.getter();
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v65 = v2;
    v27 = v7;
    v28 = v15;
    v29 = v14;
    v30 = v13;
    v31 = v26;
    v32 = swift_slowAlloc();
    *v31 = 138543362;
    *(v31 + 4) = v23;
    *v32 = v23;
    v33 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "Did deactivate service: %{public}@", v31, 0xCu);
    sub_10000D5C4(v32, &qword_10006BC50, &qword_1000568A8);

    v13 = v30;
    v14 = v29;
    v15 = v28;
    v7 = v27;
    v2 = v65;
  }

  v63 = *(v15 + 8);
  v63(v22, v14);
  v68[0] = 0;
  v68[1] = 0;
  (*(v2 + 56))(v13, 1, 1, v66);
  v34 = v64;
  v35 = *&v64[OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_syncQueue];
  v36 = swift_allocObject();
  v36[2] = v68;
  v36[3] = v34;
  v65 = v13;
  v36[4] = v13;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_100011134;
  *(v37 + 24) = v36;
  aBlock[4] = sub_1000113B8;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000219B4;
  aBlock[3] = &unk_100066298;
  v38 = _Block_copy(aBlock);
  v39 = v34;

  dispatch_sync(v35, v38);
  _Block_release(v38);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
  }

  else
  {
    v41 = v2;
    v42 = v68[0];
    if (v68[0])
    {
      v43 = v65;
      v44 = v62;
      sub_100011150(v65, v62);
      if ((*(v41 + 48))(v44, 1, v66) == 1)
      {

        sub_10000D5C4(v44, &unk_10006BC30, &qword_100056898);
        v45 = v59;
        static Logger.authentication.getter();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Service deactivated without returning a response. Treating it as a cancel.", v48, 2u);
          v43 = v65;
        }

        v63(v45, v14);
        v49 = type metadata accessor for FamilyControlsError();
        sub_1000112FC(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
        v50 = swift_allocError();
        (*(*(v49 - 8) + 104))(v51, enum case for FamilyControlsError.authorizationCanceled(_:), v49);
        v52 = v60;
        *v60 = v50;
        swift_storeEnumTagMultiPayload();
        v42(v52);
        sub_100011140(v42);
        v53 = v52;
      }

      else
      {
        sub_1000111C0(v44, v7);

        v42(v7);
        sub_100011140(v42);
        v53 = v7;
      }

      sub_10000D5C4(v53, &qword_10006BB60, qword_100056698);
    }

    else
    {
      v54 = v61;
      static Logger.authentication.getter();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      v57 = os_log_type_enabled(v55, v56);
      v43 = v65;
      if (v57)
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Missing authentication request completion handler", v58, 2u);
      }

      v63(v54, v14);
    }

    sub_10000D5C4(v43, &unk_10006BC30, &qword_100056898);
    sub_100011140(v68[0]);
  }

  return result;
}

uint64_t sub_10000FF38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003720(&unk_10006BC30, &qword_100056898);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20[-v8];
  v10 = (a2 + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestCompletionHandler);
  v11 = *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestCompletionHandler);
  v12 = *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestCompletionHandler + 8);
  v13 = *a1;
  v14 = a1[1];
  *a1 = v11;
  a1[1] = v12;
  sub_100011230(v11);
  sub_100011140(v13);
  v15 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestResponse;
  swift_beginAccess();
  sub_100011150(a2 + v15, v9);
  sub_100010CC4(v9, a3);
  v16 = *v10;
  v17 = v10[1];
  *v10 = 0;
  v10[1] = 0;
  sub_100011140(v16);
  v18 = sub_100003720(&qword_10006BB60, qword_100056698);
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  swift_beginAccess();
  sub_100010CC4(v9, a2 + v15);
  return swift_endAccess();
}

uint64_t sub_100010184(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  sub_1000112B4(0, &qword_10006BC40, NSObject_ptr);
  v13 = *(v2 + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_anonymousListener);
  v14 = static NSObject.== infix(_:_:)();
  if (v14)
  {
    static Logger.authentication.getter();
    v15 = a2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = [v15 processIdentifier];

      _os_log_impl(&_mh_execute_header, v16, v17, "Received connection from process %d", v18, 8u);
    }

    else
    {

      v16 = v15;
    }

    (*(v6 + 8))(v12, v5);
    type metadata accessor for FamilyControlsAuthenticationUIService();
    v22 = static FamilyControlsAuthenticationUIService.agentInterface.getter();
    [v15 setExportedInterface:v22];

    [v15 setExportedObject:v3];
    [v15 resume];
  }

  else
  {
    static Logger.authentication.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Received connection for unknown listener", v21, 2u);
    }

    (*(v6 + 8))(v10, v5);
  }

  return v14 & 1;
}

uint64_t sub_1000104B0(void *a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_syncQueue];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a2;
  v6[4] = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_100010C88;
  *(v7 + 24) = v6;
  v13[4] = sub_100010CA4;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000219B4;
  v13[3] = &unk_100066220;
  v8 = _Block_copy(v13);
  v9 = v2;
  swift_errorRetain();
  v10 = a1;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100010624(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v13 = sub_100003720(&qword_10006BC28, &qword_100056890);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v41 - v15;
  v17 = type metadata accessor for AuthorizationStatus();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003720(&unk_10006BC30, &qword_100056898);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = (&v41 - v24);
  v43 = a1;
  if (*(a1 + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestCompletionHandler))
  {
    if (a2)
    {
      *v25 = a2;
      v26 = sub_100003720(&qword_10006BB60, qword_100056698);
      swift_storeEnumTagMultiPayload();
      (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
      v27 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestResponse;
      v28 = v43;
      swift_beginAccess();
      swift_errorRetain();
LABEL_15:
      sub_100010CC4(v25, v28 + v27);
      return swift_endAccess();
    }

    if (a3)
    {
      [a3 integerValue];
      AuthorizationStatus.init(rawValue:)();
      if ((*(v18 + 48))(v16, 1, v17) != 1)
      {
        v40 = *(v18 + 32);
        v40(v21, v16, v17);
        v40(v25, v21, v17);
        v39 = sub_100003720(&qword_10006BB60, qword_100056698);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        (*(*(v39 - 8) + 56))(v25, 0, 1, v39);
        v27 = OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestResponse;
        v28 = v43;
        swift_beginAccess();
        goto LABEL_15;
      }

      sub_10000D5C4(v16, &qword_10006BC28, &qword_100056890);
    }

    static Logger.authentication.getter();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Unknown authentication UI results. Treating it as a cancel.", v35, 2u);
    }

    (*(v41 + 8))(v12, v42);
    v36 = type metadata accessor for FamilyControlsError();
    sub_1000112FC(&qword_10006B9D0, &type metadata accessor for FamilyControlsError);
    v37 = swift_allocError();
    (*(*(v36 - 8) + 104))(v38, enum case for FamilyControlsError.authorizationCanceled(_:), v36);
    *v25 = v37;
    v39 = sub_100003720(&qword_10006BB60, qword_100056698);
    goto LABEL_14;
  }

  static Logger.authentication.getter();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Request completion handler is missing. Ignoring response.", v31, 2u);
  }

  return (*(v41 + 8))(v10, v42);
}

uint64_t sub_100010C40()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&unk_10006BC30, &qword_100056898);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100010D34(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.authentication.getter();
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "Did activate service: %{public}@", v10, 0xCu);
    sub_10000D5C4(v11, &qword_10006BC50, &qword_1000568A8);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100010ECC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.authentication.getter();
  v9 = a1;
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = a2;
    v21 = v14;
    *v12 = 138543618;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2082;
    v15 = v9;
    swift_errorRetain();
    sub_100003720(&qword_10006BC48, &qword_1000568A0);
    v16 = String.init<A>(describing:)();
    v18 = sub_100002CB4(v16, v17, &v21);

    *(v12 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Did invalidate service: %{public}@ with error: %{public}s", v12, 0x16u);
    sub_10000D5C4(v13, &qword_10006BC50, &qword_1000568A8);

    sub_1000032BC(v14);
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000110FC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100011140(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100011150(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&unk_10006BC30, &qword_100056898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000111C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006BB60, qword_100056698);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011230(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100011240()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100011280()
{
  v1 = (v0[2] + OBJC_IVAR____TtC19FamilyControlsAgent26AuthorizationAuthenticator_requestCompletionHandler);
  if (!*v1)
  {
    v2 = v0[4];
    v3 = v0[5];
    *v1 = v0[3];
    v1[1] = v2;
    *v3 = 1;
  }

  return result;
}

uint64_t sub_1000112B4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000112FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100011344()
{
  result = qword_10006BC80;
  if (!qword_10006BC80)
  {
    sub_1000075FC(&qword_10006BC78, qword_1000568C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BC80);
  }

  return result;
}

Swift::Int sub_100011400()
{
  v1 = v0;
  Hasher.init()();
  v2 = *(v0 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_slotType);
  v3 = LabelSlotType.rawValue.getter();
  Hasher._combine(_:)(v3);
  v4 = *(v0 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);

  String.hash(into:)();

  v7 = *(v1 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_width);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  Hasher._combine(_:)(*&v7);
  return Hasher.finalize()();
}

CGImageRef sub_1000117C0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CGPathFillRule();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 scale];
  v10 = v9;
  result = [a1 size];
  v14 = v10 * v13;
  if (v14 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10 * v12;
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_13;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v16 = v14;
  v17 = v15;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v19 = sub_100012950(v16, v17, DeviceRGB);

  if (!v19)
  {
    return 0;
  }

  v20 = v17;
  v21 = v16;
  v22 = v19;
  CGContextSetInterpolationQuality(v22, kCGInterpolationHigh);
  [a1 continuousCornerRadius];
  v24 = v23;
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = v21;
  v28.size.height = v17;
  v25 = CGPathCreateWithRoundedRect(v28, v24, v24, 0);
  CGContextAddPath(v22, v25);
  (*(v5 + 104))(v8, enum case for CGPathFillRule.winding(_:), v4);
  CGContextRef.clip(using:)();
  (*(v5 + 8))(v8, v4);
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = v21;
  v29.size.height = v20;
  CGContextRef.draw(_:in:byTiling:)(v2, v29, 0);
  Image = CGBitmapContextCreateImage(v22);

  return Image;
}

id sub_100011B30(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

Swift::Int sub_100011BB8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100011C2C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100011C70()
{
  v1 = 0xD000000000000041;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000045;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000022;
  }

  *v0;
  return result;
}

uint64_t sub_100011CE0@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

BOOL sub_100011D34(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem);
  v5 = *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem);
  v6 = *(v4 + 24) == *(v5 + 24) && *(v4 + 32) == *(v5 + 32);
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v7 = *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_slotType), v8 = *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_slotType), v9 = LabelSlotType.rawValue.getter(), v9 == LabelSlotType.rawValue.getter()))
  {
    return *(a1 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_width) == *(a2 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_width);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011DD8(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC19FamilyControlsAgent11TextDrawing_tag] = a1;
  *&v2[OBJC_IVAR____TtC19FamilyControlsAgent11TextDrawing_style] = a2;
  v4 = a1;
  v5 = a2;
  result = [v5 preferredContentSizeCategory];
  if (result < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontLabel, ((result - 3) * 0.1 + 1.0) * 20.0, 0);
  v8 = [v5 userInterfaceStyle];
  v9 = objc_opt_self();
  v10 = &selRef_blackColor;
  if (v8)
  {
    v10 = &selRef_whiteColor;
  }

  v11 = [v9 *v10];
  v12 = [v11 CGColor];

  sub_100003720(&qword_10006BE10, &qword_100056A68);
  result = swift_initStackObject();
  *(result + 16) = xmmword_100056900;
  *(result + 32) = NSFontAttributeName;
  if (!UIFontForLanguage)
  {
    goto LABEL_10;
  }

  v13 = result;
  type metadata accessor for CTFont(0);
  v13[5] = UIFontForLanguage;
  v13[8] = v14;
  v13[9] = NSForegroundColorAttributeName;
  type metadata accessor for CGColor(0);
  v13[13] = v15;
  v13[10] = v12;
  v16 = NSFontAttributeName;
  v17 = UIFontForLanguage;
  v18 = NSForegroundColorAttributeName;
  v19 = v12;
  sub_100041DF4(v13);
  swift_setDeallocating();
  sub_100003720(&unk_10006BE18, &unk_100056A70);
  swift_arrayDestroy();
  if (*&v4[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_width] <= 0.0)
  {
    v20 = NAN;
  }

  else
  {
    v20 = *&v4[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_width];
  }

  v21 = *&v4[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_100012978();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v24 = [objc_allocWithZone(UISTextLineDrawing) initWithString:v22 attributes:isa lineBreakMode:4 textAlignment:4 width:v20 scale:{objc_msgSend(v5, "displayScale")}];

  *&v2[OBJC_IVAR____TtC19FamilyControlsAgent11TextDrawing_title] = v24;
  v25 = v24;
  [v25 drawingSize];
  v27 = v26;
  v29 = v28;

  v30 = &v2[OBJC_IVAR____TtC19FamilyControlsAgent11TextDrawing_drawingSize];
  *v30 = v27;
  *(v30 + 1) = v29;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for TextDrawing();
  return objc_msgSendSuper2(&v31, "init");
}

uint64_t sub_10001212C(void *a1, uint64_t a2)
{
  sub_1000036C4(a2, v16);
  type metadata accessor for LabelSlotTag();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v3 = *&v15[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem];
  if (*(v3 + 16) && *(v3 + 16) != 1)
  {
    v8 = *&v15[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem];
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v6 = v16[0];
      v5 = v16[1];

      v7 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v7 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        goto LABEL_11;
      }
    }
  }

  v9 = *&v15[OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_slotType];
  v10 = LabelSlotType.rawValue.getter();
  if (v10 == LabelSlotType.rawValue.getter())
  {
LABEL_11:

    return 0;
  }

  v12 = objc_allocWithZone(type metadata accessor for TextDrawing());
  v13 = a1;
  v14 = sub_100011DD8(v15, v13);

  return v14;
}

uint64_t sub_1000122F8(void *a1)
{
  v3 = sub_100003720(&qword_10006BE08, &qword_100056988);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v48 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LabelSlotTag();
  result = swift_dynamicCastClass();
  if (result)
  {
    v18 = result;
    v51 = v6;
    v19 = *(result + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_slotType);
    v20 = a1;
    v21 = LabelSlotType.rawValue.getter();
    if (v21 != LabelSlotType.rawValue.getter())
    {

      return 0;
    }

    v50 = v11;
    v22 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorHomeScreen];
    v23 = v1 + OBJC_IVAR____TtC19FamilyControlsAgent20FamilyActivityDrawer__displayScale;
    v24 = *(v1 + OBJC_IVAR____TtC19FamilyControlsAgent20FamilyActivityDrawer__displayScale);
    if (*(v23 + 8) == 1)
    {
      v25 = *&v24;
    }

    else
    {
      swift_retain_n();
      static os_log_type_t.fault.getter();
      v49 = v8;
      v26 = static Log.runtimeIssuesLog.getter();
      v8 = v49;
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100012934(v24, 0);
      (*(v13 + 8))(v16, v12);
      sub_100012934(v24, 0);
      v25 = v53;
    }

    [v22 setScale:v25];
    v27 = OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem;
    v28 = *(v18 + OBJC_IVAR____TtC19FamilyControlsAgent12LabelSlotTag_activityItem);
    v29 = *(v28 + 32);
    if (*(v28 + 16))
    {
      if (*(v28 + 16) == 1)
      {
        v30 = *(v28 + 32);

        v31 = String._bridgeToObjectiveC()();

        v32.super.isa = sub_10003E9A4(v31).super.isa;
      }

      else
      {
        v31 = String._bridgeToObjectiveC()();
        v32.super.isa = [objc_opt_self() imageNamed:v31];
      }

      v35 = [(objc_class *)v32.super.isa CGImage];
    }

    else
    {
      v49 = *(v28 + 24);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      if (v52 == 1)
      {
        v33 = *(v18 + v27);
        swift_getKeyPath();
        swift_getKeyPath();
        v34 = v51;
        static Published.subscript.getter();

        if ((*(v8 + 48))(v34, 1, v7) == 1)
        {
          sub_10000D5C4(v34, &qword_10006BE08, &qword_100056988);
        }

        else
        {
          v36 = v50;
          (*(v8 + 32))(v50, v34, v7);
          URL._bridgeToObjectiveC()(v37);
          v39 = v38;
          v40 = CGImageSourceCreateWithURL(v38, 0);

          if (v40)
          {
            ImageAtIndex = CGImageSourceCreateImageAtIndex(v40, 0, 0);
            if (ImageAtIndex)
            {
              v42 = ImageAtIndex;
              v43 = sub_1000117C0(v22);

              (*(v8 + 8))(v50, v7);
              if (v43)
              {

                return v43;
              }
            }

            else
            {
              (*(v8 + 8))(v50, v7);
            }
          }

          else
          {
            (*(v8 + 8))(v36, v7);
          }
        }
      }

      v44 = objc_allocWithZone(ISIcon);
      v45 = String._bridgeToObjectiveC()();

      v46 = [v44 initWithBundleIdentifier:v45];

      v47 = [v46 prepareImageForDescriptor:v22];
      v35 = [v47 CGImage];
    }

    return v35;
  }

  return result;
}

uint64_t sub_100012934(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100012978()
{
  result = qword_10006B920;
  if (!qword_10006B920)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006B920);
  }

  return result;
}

uint64_t sub_1000129D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006BE28, qword_100056F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ActivityItem.ActivityItemType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityItem.ActivityItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100012BB4()
{
  result = qword_10006BE30;
  if (!qword_10006BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BE30);
  }

  return result;
}

unint64_t sub_100012C0C()
{
  result = qword_10006BE38;
  if (!qword_10006BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10006BE38);
  }

  return result;
}

id sub_100012C60@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_100012C9C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100012D58;
  v5[3] = &unk_100066410;
  v2 = _Block_copy(v5);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  [ObjCClassFromMetadata synchronizeUsageWithCompletionHandler:v2];
  _Block_release(v2);
}

void sub_100012D58(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100012DC4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100012EA0;
  v12[3] = &unk_1000663E8;
  v10 = _Block_copy(v12);

  [v8 fetchReportsDuringInterval:isa partitionInterval:v10 completionHandler:a1];
  _Block_release(v10);
}

uint64_t sub_100012EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {
    sub_100012FC8();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a3)
  {
    sub_100003720(&qword_10006BE48, &qword_100056BD8);
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a4)
  {
    sub_100012FC8();
    a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v11 = a5;
  v10(v8, a3, a4, a5);
}

uint64_t sub_100012FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100012FC8()
{
  result = qword_10006BE40;
  if (!qword_10006BE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10006BE40);
  }

  return result;
}

id sub_10001301C()
{
  result = [objc_opt_self() mainBundle];
  qword_10006BE50 = result;
  return result;
}

uint64_t sub_100013058()
{
  v0 = sub_100003720(&qword_10006BE58, &qword_100056BE0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  if (qword_10006B770 != -1)
  {
    swift_once();
  }

  v4 = qword_10006BE50;
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static Locale.autoupdatingCurrent.getter();
  v8 = type metadata accessor for Locale();
  (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
  v9 = String.init(format:locale:arguments:)();

  sub_10001320C(v3);
  return v9;
}

uint64_t sub_10001320C(uint64_t a1)
{
  v2 = sub_100003720(&qword_10006BE58, &qword_100056BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10001329C(uint64_t a1, SEL *a2, void *a3)
{
  if (qword_10006B800 != -1)
  {
    swift_once();
  }

  v5 = qword_10006C9D8;
  v6 = [v5 *a2];

  *a3 = v6;
}

Class sub_100013370()
{
  v26 = type metadata accessor for UsageItemRecord.UsageType();
  v0 = *(v26 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v26);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000112B4(0, &qword_10006BE80, CKRecordID_ptr);
  v4 = UsageItemRecord.recordName.getter();
  v6 = v5;
  if (qword_10006B788 != -1)
  {
    swift_once();
  }

  v7 = qword_10006C960;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  isa = CKRecordID.init(recordName:zoneID:)(v8, v7).super.isa;
  sub_1000112B4(0, &qword_10006BE88, CKRecord_ptr);
  v25.super.isa = isa;
  v10._countAndFlagsBits = 0x7974697669746361;
  v10._object = 0xE800000000000000;
  v11 = CKRecord.init(recordType:recordID:)(v10, v25).super.isa;
  v12 = [(objc_class *)v11 encryptedValues];
  swift_getObjectType();
  v13 = UsageItemRecord.category.getter();
  v29 = &type metadata for String;
  v30 = &protocol witness table for String;
  v27 = v13;
  v28 = v14;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v15 = [(objc_class *)v11 encryptedValues];
  swift_getObjectType();
  v16 = UsageItemRecord.identifier.getter();
  v29 = &type metadata for String;
  v30 = &protocol witness table for String;
  v27 = v16;
  v28 = v17;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  v18 = [(objc_class *)v11 encryptedValues];
  swift_getObjectType();
  UsageItemRecord.totalUsage.getter();
  v29 = &type metadata for Double;
  v30 = &protocol witness table for Double;
  v27 = v19;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  [(objc_class *)v11 encryptedValues];
  swift_getObjectType();
  UsageItemRecord.type.getter();
  v20 = UsageItemRecord.UsageType.rawValue.getter();
  v22 = v21;
  (*(v0 + 8))(v3, v26);
  v29 = &type metadata for String;
  v30 = &protocol witness table for String;
  v27 = v20;
  v28 = v22;
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_1000136C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UsageItemRecord.Source();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v42 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003720(&unk_10006BEA0, &unk_100056C20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v38 - v9;
  v11 = type metadata accessor for UsageItemRecord.UsageType();
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v38 - v16;
  v18 = [a1 encryptedValues];
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 objectForKeyedSubscript:v19];

  if (!v20 || (v48 = v20, sub_100003720(&qword_10006BE98, &qword_100056C18), (swift_dynamicCast() & 1) == 0))
  {
    swift_unknownObjectRelease();

    v32 = 1;
    goto LABEL_16;
  }

  v41 = a2;
  v38[3] = v46;
  v39 = v11;
  v21 = v47;
  v22 = String._bridgeToObjectiveC()();
  v23 = [v18 objectForKeyedSubscript:v22];

  if (!v23 || (v40 = v21, v48 = v23, (swift_dynamicCast() & 1) == 0))
  {
    swift_unknownObjectRelease();

LABEL_15:

    v32 = 1;
    a2 = v41;
    goto LABEL_16;
  }

  v24 = v47;
  v38[2] = v46;
  v25 = String._bridgeToObjectiveC()();
  v26 = [v18 objectForKeyedSubscript:v25];

  if (!v26 || (v46 = v26, (swift_dynamicCast() & 1) == 0) || (v27 = String._bridgeToObjectiveC()(), v28 = [v18 objectForKeyedSubscript:v27], v27, !v28))
  {
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  v48 = v28;
  v29 = swift_dynamicCast();
  a2 = v41;
  if (v29)
  {
    v38[1] = v24;
    UsageItemRecord.UsageType.init(rawValue:)();
    v30 = v45;
    v31 = v39;
    if ((*(v45 + 48))(v10, 1, v39) == 1)
    {
      swift_unknownObjectRelease();

      sub_10000D5C4(v10, &unk_10006BEA0, &unk_100056C20);
      v32 = 1;
    }

    else
    {
      (*(v30 + 32))(v17, v10, v31);
      v35 = v30;
      v36 = [a1 recordID];
      v37 = [v36 recordName];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2 = v41;
      (*(v35 + 16))(v15, v17, v31);
      (*(v43 + 104))(v42, enum case for UsageItemRecord.Source.remote(_:), v44);
      UsageItemRecord.init(identifier:recordName:type:source:category:totalUsage:)();
      swift_unknownObjectRelease();

      (*(v35 + 8))(v17, v39);
      v32 = 0;
    }
  }

  else
  {
    swift_unknownObjectRelease();

    v32 = 1;
  }

LABEL_16:
  v33 = type metadata accessor for UsageItemRecord();
  return (*(*(v33 - 8) + 56))(a2, v32, 1, v33);
}

uint64_t UsageStore.subscript.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100003720(&qword_10006BE60, &qword_100056BE8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22[-v6];
  v8 = sub_100003720(&qword_10006BE68, &qword_100056BF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v22[-v10];
  v23 = a1;
  UsageStore.first(where:)();
  v12 = sub_100003720(&qword_10006BE70, &qword_100056BF8);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_10000D5C4(v7, &qword_10006BE60, &qword_100056BE8);
    v13 = type metadata accessor for UsageItemRecord();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }

  else
  {
    v15 = *(v7 + 1);
    v16 = *(v12 + 48);
    v17 = *(v8 + 48);
    *v11 = *v7;
    *(v11 + 1) = v15;
    v18 = type metadata accessor for UsageItemRecord();
    v19 = *(v18 - 8);
    v20 = *(v19 + 32);
    v20(&v11[v17], &v7[v16], v18);
    v21 = *(v11 + 1);

    v20(a2, &v11[*(v8 + 48)], v18);
    return (*(v19 + 56))(a2, 0, 1, v18);
  }
}

uint64_t sub_100013F1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = UsageItemRecord.recordName.getter();
  v7 = v6;
  v8 = [a4 recordName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

void UsageStore.subscript.setter(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UsageItemRecord();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003720(&qword_10006BE78, &qword_100056C00);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v21 - v15;
  __chkstk_darwin(v14);
  v18 = &v21 - v17;
  sub_10001428C(a1, &v21 - v17);
  v19 = *(v5 + 48);
  if (v19(v18, 1, v4) == 1)
  {
    sub_10000D5C4(v18, &qword_10006BE78, &qword_100056C00);
    UsageStore.subscript.getter(a2, v16);
    if (v19(v16, 1, v4))
    {
      sub_10000D5C4(v16, &qword_10006BE78, &qword_100056C00);
      sub_10000D5C4(a1, &qword_10006BE78, &qword_100056C00);

      return;
    }

    v20 = a2;
    (*(v5 + 16))(v8, v16, v4);
    sub_10000D5C4(v16, &qword_10006BE78, &qword_100056C00);
    v18 = v8;
  }

  else
  {
    v20 = a2;
  }

  UsageItemRecord.identifier.getter();
  (*(v5 + 8))(v18, v4);
  sub_10001428C(a1, v13);
  UsageStore.subscript.setter();

  sub_10000D5C4(a1, &qword_10006BE78, &qword_100056C00);
}

uint64_t sub_10001428C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003720(&qword_10006BE78, &qword_100056C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*UsageStore.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  v5 = *(*(sub_100003720(&qword_10006BE78, &qword_100056C00) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[2] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(v5);
    v6 = malloc(v5);
  }

  a1[3] = v6;
  UsageStore.subscript.getter(a2, v6);
  return sub_1000143C0;
}

void sub_1000143C0(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_10001428C(*(a1 + 24), v2);
    UsageStore.subscript.setter(v2, v5);
    sub_10000D5C4(v3, &qword_10006BE78, &qword_100056C00);
  }

  else
  {
    UsageStore.subscript.setter(v3, v5);
  }

  free(v3);

  free(v2);
}

CKRecordZoneID sub_100014480(uint64_t a1, uint64_t a2, void *a3, CKRecordZoneID *a4)
{
  sub_1000112B4(0, &qword_10006BE90, CKRecordZoneID_ptr);
  v7._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7._object = v8;
  v9._countAndFlagsBits = a2;
  v9._object = a3;
  result.super.isa = CKRecordZoneID.init(zoneName:ownerName:)(v9, v7).super.isa;
  a4->super.isa = result.super.isa;
  return result;
}

id sub_100014524(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (*a2 != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  v5 = [objc_allocWithZone(CKRecordZone) initWithZoneID:*a3];
  result = [v5 setCapabilities:8];
  *a4 = v5;
  return result;
}

CKRecordID sub_1000145A0()
{
  sub_1000112B4(0, &qword_10006BE80, CKRecordID_ptr);
  if (qword_10006B798 != -1)
  {
    swift_once();
  }

  v0 = qword_10006C970;
  v1._object = 0x80000001000581B0;
  v1._countAndFlagsBits = 0xD000000000000010;
  result.super.isa = CKRecordID.init(recordName:zoneID:)(v1, v0).super.isa;
  qword_10006C980 = result.super.isa;
  return result;
}

uint64_t sub_10001463C()
{
  v1 = [v0 encryptedValues];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 objectForKeyedSubscript:v2];
  swift_unknownObjectRelease();

  if (!v3)
  {
    return 0;
  }

  sub_100003720(&qword_10006BE98, &qword_100056C18);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

Class sub_10001471C(uint64_t a1, unint64_t a2)
{
  if (qword_10006B7A8 != -1)
  {
    swift_once();
  }

  v4 = qword_10006C980;
  v5._object = 0x80000001000581B0;
  v5._countAndFlagsBits = 0xD000000000000010;
  isa = CKRecord.init(recordType:recordID:)(v5, v4).super.isa;
  v7 = [(objc_class *)isa encryptedValues];
  swift_getObjectType();
  sub_10000DA30(a1, a2);
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  return isa;
}

uint64_t sub_100014820(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003720(&qword_10006BF98, &qword_100057570);
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
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000036C4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10001DE0C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10001DE0C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10001DE0C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10001DE0C(v32, (v2[7] + 32 * v10));
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

NSString sub_100014AE8()
{
  result = String._bridgeToObjectiveC()();
  qword_10006C988 = result;
  return result;
}

void sub_100014B24(void *a1, uint64_t a2)
{
  v52 = a2;
  v53 = type metadata accessor for Logger();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v53);
  v55 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = a1[4];
  sub_100007504(a1, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v10 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000112B4(0, &qword_10006BA58, IDSReceivedInvitation_ptr);
    sub_10000E258();
    Set.Iterator.init(_cocoa:)();
    v10 = v57[1];
    v11 = v57[2];
    v12 = v57[3];
    v13 = v57[4];
    v14 = v57[5];
  }

  else
  {
    v13 = 0;
    v15 = -1 << *(v8 + 32);
    v11 = v8 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v8 + 56);
  }

  v43[1] = v12;
  v18 = (v12 + 64) >> 6;
  v51 = (v3 + 8);
  *&v9 = 136446210;
  v44 = v9;
  v54 = v18;
  v45 = v11;
  v46 = v10;
  while (v10 < 0)
  {
    v24 = __CocoaSet.Iterator.next()();
    if (!v24 || (v56 = v24, sub_1000112B4(0, &qword_10006BA58, IDSReceivedInvitation_ptr), swift_dynamicCast(), v23 = v57[0], v21 = v13, v22 = v14, !v57[0]))
    {
LABEL_21:
      sub_10001D648();
      return;
    }

LABEL_19:
    static Logger.syncEngine.getter();
    v25 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v47 = v28;
      v49 = swift_slowAlloc();
      v57[0] = v49;
      *v28 = v44;
      v29 = v25;
      v48 = v27;
      v30 = v29;
      v31 = [v29 description];
      v50 = v22;
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = v55;
      v37 = v51;
      v38 = v33;
      v39 = v53;
      v11 = v45;
      v40 = sub_100002CB4(v38, v35, v57);
      v10 = v46;

      v41 = v47;
      *(v47 + 1) = v40;
      _os_log_impl(&_mh_execute_header, v26, v48, "Handling pending invitation: %{public}s", v41, 0xCu);
      sub_1000032BC(v49);

      v42 = v36;
      v22 = v50;
      (*v37)(v42, v39);
    }

    else
    {

      (*v51)(v55, v53);
    }

    sub_100014F50(v25);

    v13 = v21;
    v14 = v22;
    v18 = v54;
  }

  v19 = v13;
  v20 = v14;
  v21 = v13;
  if (v14)
  {
LABEL_15:
    v22 = (v20 - 1) & v20;
    v23 = *(*(v10 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v23)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v21 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      goto LABEL_21;
    }

    v20 = *(v11 + 8 * v21);
    ++v19;
    if (v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_100014F50(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v108 - v9;
  __chkstk_darwin(v8);
  v12 = &v108 - v11;
  v13 = sub_100003720(&qword_10006BE08, &qword_100056988);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v108 - v18;
  v111 = type metadata accessor for URL();
  v113 = *(v111 - 8);
  v20 = *(v113 + 64);
  __chkstk_darwin(v111);
  v112 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 context];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    *&v114 = v2;
    v115 = a1;
    v116 = v22;
    v25 = [v23 schemaIdentifier];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v26 == 0xD00000000000002CLL && 0x8000000100058310 == v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v29 = [v24 dictionary];
      v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v30 + 16) || (v31 = sub_100041270(0x6974617469766E69, 0xEE00617461446E6FLL), (v32 & 1) == 0))
      {

        v40 = v115;
        v34 = v114;
        goto LABEL_17;
      }

      sub_1000036C4(*(v30 + 56) + 32 * v31, v118);

      v33 = swift_dynamicCast();
      v34 = v114;
      if ((v33 & 1) == 0)
      {
        v40 = v115;
        goto LABEL_17;
      }

      v109 = v118[5];
      v110 = v118[6];
      v35 = [v24 dictionary];
      v36 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (!*(v36 + 16) || (v37 = sub_100041270(0xD000000000000018, 0x8000000100058380), (v38 & 1) == 0))
      {
        sub_100007644(v109, v110);

        v40 = v115;
        goto LABEL_17;
      }

      sub_1000036C4(*(v36 + 56) + 32 * v37, v118);

      v39 = swift_dynamicCast();
      v40 = v115;
      if ((v39 & 1) == 0)
      {
        sub_100007644(v109, v110);
        goto LABEL_17;
      }

      URL.init(string:)();

      v41 = v113;
      v42 = *(v113 + 48);
      v43 = v111;
      if (v42(v19, 1, v111) == 1)
      {
        sub_100007644(v109, v110);
        sub_10000D5C4(v19, &qword_10006BE08, &qword_100056988);
LABEL_17:
        static Logger.syncEngine.getter();
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();
        v52 = os_log_type_enabled(v50, v51);
        v53 = v117;
        if (v52)
        {
          v54 = swift_slowAlloc();
          *v54 = 0;
          _os_log_impl(&_mh_execute_header, v50, v51, "Failed to extract share metadata from invitation. Declining the invitation.", v54, 2u);
        }

        (*(v3 + 8))(v12, v34);
        v55 = *&v53[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24];
        v56 = *&v53[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32];
        sub_100007504(&v53[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager], v55);
        (*(v56 + 48))(v40, sub_10001C34C, 0, v55, v56);
        return swift_unknownObjectRelease();
      }

      v71 = v112;
      (*(v41 + 32))(v112, v19, v43);
      v72 = *(v41 + 16);
      v72(v17, v71, v43);
      (*(v41 + 56))(v17, 0, 1, v43);
      sub_10000DA30(v109, v110);
      v73 = v43;
      v74.super.isa = Data._bridgeToObjectiveC()().super.isa;
      if (v42(v17, 1, v73) == 1)
      {
        v76 = 0;
      }

      else
      {
        URL._bridgeToObjectiveC()(v75);
        v76 = v77;
        (*(v41 + 8))(v17, v73);
      }

      v78 = [objc_allocWithZone(CKDeviceToDeviceShareInvitationToken) initWithSharingInvitationData:v74.super.isa shareURL:v76];

      sub_100007644(v109, v110);
      sub_100003720(&qword_10006BFE8, &qword_100056D28);
      v79 = *(v41 + 72);
      v80 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v81 = swift_allocObject();
      v114 = xmmword_100056C30;
      *(v81 + 16) = xmmword_100056C30;
      v82 = v81 + v80;
      v83 = v112;
      v72(v82, v112, v73);
      sub_100003720(&qword_10006BFF0, &qword_100056D30);
      v84 = v73;
      v85 = (sub_100003720(&qword_10006BFF8, &qword_100056D38) - 8);
      v86 = *(*v85 + 72);
      v87 = (*(*v85 + 80) + 32) & ~*(*v85 + 80);
      v88 = swift_allocObject();
      v89 = v72;
      v90 = v88;
      *(v88 + 16) = v114;
      v91 = v88 + v87;
      v92 = v85[14];
      v89(v91, v83, v84);
      *(v91 + v92) = v78;
      v93 = v78;
      sub_100041F1C(v90);
      swift_setDeallocating();
      sub_10000D5C4(v91, &qword_10006BFF8, &qword_100056D38);
      swift_deallocClassInstance();
      v94 = objc_allocWithZone(CKFetchShareMetadataOperation);
      v95 = v84;
      isa = Array._bridgeToObjectiveC()().super.isa;

      sub_1000112B4(0, &qword_10006C000, CKDeviceToDeviceShareInvitationToken_ptr);
      sub_10001FEF8(&qword_10006C008, &type metadata accessor for URL);
      v97 = Dictionary._bridgeToObjectiveC()().super.isa;

      v98 = [v94 initWithShareURLs:isa invitationTokensByShareURL:v97];

      [v98 setQualityOfService:25];
      v99 = swift_allocObject();
      v100 = v117;
      v101 = v115;
      *(v99 + 16) = v117;
      *(v99 + 24) = v101;
      v102 = v100;
      v103 = v101;
      CKFetchShareMetadataOperation.perShareMetadataResultBlock.setter();
      v104 = *&v102[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container + 24];
      v105 = *&v102[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container + 32];
      sub_100007504(&v102[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container], v104);
      v118[3] = sub_1000112B4(0, &qword_10006C010, CKFetchShareMetadataOperation_ptr);
      v118[4] = &off_100067378;
      v118[0] = v98;
      v106 = *(v105 + 8);
      v107 = v98;
      v106(v118, v104, v105);

      swift_unknownObjectRelease();
      sub_100007644(v109, v110);
      (*(v113 + 8))(v112, v95);
      return sub_1000032BC(v118);
    }

    else if (v26 == 0xD000000000000033 && 0x8000000100058340 == v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v57 = v117;
      v58 = *&v117[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database + 24];
      v59 = *&v117[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database + 32];
      sub_100007504(&v117[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database], v58);
      if (qword_10006B7A0 != -1)
      {
        swift_once();
      }

      v60 = qword_10006C978;
      v61 = swift_allocObject();
      v62 = v115;
      *(v61 + 16) = v57;
      *(v61 + 24) = v62;
      v63 = *(v59 + 16);
      v64 = v57;
      v65 = v62;
      v63(v60, sub_10001FF80, v61, v58, v59);

      return swift_unknownObjectRelease();
    }

    else
    {
      static Logger.syncEngine.getter();

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v118[0] = v69;
        *v68 = 136446210;
        v70 = sub_100002CB4(v26, v28, v118);

        *(v68 + 4) = v70;
        _os_log_impl(&_mh_execute_header, v66, v67, "Received invitation using unknown schema: %{public}s", v68, 0xCu);
        sub_1000032BC(v69);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      return (*(v3 + 8))(v10, v114);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    static Logger.syncEngine.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Failed to extract context from invitation. Declining the invitation.", v46, 2u);
    }

    (*(v3 + 8))(v7, v2);
    v47 = *&v117[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24];
    v48 = *&v117[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32];
    sub_100007504(&v117[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager], v47);
    return (*(v48 + 48))(a1, sub_10001C34C, 0, v47, v48);
  }
}

id sub_100015CA4()
{
  v2.receiver = v0;
  v2.super_class = _s18SharingCoordinatorCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100015D68(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_10001C6F0(v4, v5);
    }
  }

  else if ((v6 & 1) == 0 && *&v4 == *&v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100015DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v120 = a3;
  v119 = a2;
  v134 = a1;
  v126 = type metadata accessor for DispatchWorkItemFlags();
  v125 = *(v126 - 8);
  v4 = *(v125 + 64);
  __chkstk_darwin(v126);
  v123 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for DispatchQoS();
  v122 = *(v124 - 8);
  v6 = *(v122 + 64);
  __chkstk_darwin(v124);
  v121 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for Logger();
  v8 = *(v142 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v142);
  v12 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v132 = &v119 - v14;
  v15 = __chkstk_darwin(v13);
  v140 = &v119 - v16;
  __chkstk_darwin(v15);
  v144 = &v119 - v17;
  v133 = v3;
  v18 = &v3[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_idsStatusFetching];
  v19 = *&v3[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_idsStatusFetching];
  v20 = *(v18 + 1);
  v21 = *(v20 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v119 - v26;
  v21(v19, v20);
  v28 = *(AssociatedTypeWitness - 1);
  if ((*(v28 + 48))(v27, 1, AssociatedTypeWitness) == 1)
  {
    (*(v24 + 8))(v27, v23);
    static Logger.syncEngine.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to create an IDS status fetcher", v31, 2u);
    }

    return (*(v8 + 8))(v12, v142);
  }

  v148 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v33 = sub_10001C8A8(&aBlock);
  (*(v28 + 32))(v33, v27, AssociatedTypeWitness);
  sub_10001D888(&aBlock, &v154);
  v138 = dispatch_group_create();
  v34 = v134;
  v35 = v134 + 64;
  v36 = 1 << *(v134 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v134 + 64);
  v130 = OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationQueue;
  v39 = (v36 + 63) >> 6;
  v141 = (v8 + 8);
  v127 = "FamilyControlsAgent";

  v40 = 0;
  *&v41 = 136446210;
  v139 = v41;
  v42 = v144;
  v129 = v35;
  v128 = v39;
  while (1)
  {
    if (!v38)
    {
      do
      {
        v43 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_55;
        }

        if (v43 >= v39)
        {

          v110 = *&v133[v130];
          v111 = swift_allocObject();
          v112 = v119;
          v113 = v120;
          *(v111 + 16) = v119;
          *(v111 + 24) = v113;
          AssociatedConformanceWitness = sub_10001D6EC;
          v150 = v111;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v147 = sub_100017E50;
          v148 = &unk_1000664B0;
          v114 = _Block_copy(&aBlock);
          sub_100011230(v112);
          v115 = v121;
          static DispatchQoS.unspecified.getter();
          v153 = &_swiftEmptyArrayStorage;
          sub_10001FEF8(&unk_10006BF20, &type metadata accessor for DispatchWorkItemFlags);
          sub_100003720(&qword_10006C0E0, &unk_100056C80);
          sub_10001D738();
          v116 = v123;
          v117 = v126;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v118 = v138;
          OS_dispatch_group.notify(qos:flags:queue:execute:)();
          _Block_release(v114);

          (*(v125 + 8))(v116, v117);
          (*(v122 + 8))(v115, v124);

          return sub_1000032BC(&v154);
        }

        v38 = *(v35 + 8 * v43);
        ++v40;
      }

      while (!v38);
      v40 = v43;
    }

    v137 = v38;
    v136 = v40;
    v44 = (v40 << 9) | (8 * __clz(__rbit64(v38)));
    v45 = *(*(v34 + 56) + v44);
    v46 = *(v45 + 16);
    v135 = *(*(v34 + 48) + v44);

    if (v46)
    {
      break;
    }

    v49 = &_swiftEmptyDictionarySingleton;
LABEL_45:

    dispatch_group_enter(v138);
    v91 = v156;
    v143 = v155;
    v145 = sub_100007504(&v154, v155);
    v92 = v49[2];
    if (v92)
    {
      v93 = sub_10001CEBC(v49[2], 0);
      v94 = sub_10001D4F0(&aBlock, v93 + 4, v92, v49);

      sub_10001D648();
      if (v94 != v92)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v93 = &_swiftEmptyArrayStorage;
    }

    v95 = sub_100016C98(v93);

    v96 = static FamilyControlsService.nameIDS.getter();
    v98 = v97;
    v99 = v133;
    v100 = *&v133[v130];
    v101 = swift_allocObject();
    v101[2] = v49;
    v102 = v138;
    v101[3] = v138;
    v101[4] = v99;
    v103 = v135;
    v101[5] = v135;
    v104 = *(v91 + 32);
    v135 = v103;
    v131 = v102;
    v105 = v99;
    LOBYTE(v96) = v104(v95, v96, v98, 0xD00000000000002BLL, v127 | 0x8000000000000000, v100, sub_10001D6A0, v101, v143, v91);

    v34 = v134;
    v35 = v129;
    v39 = v128;
    v106 = v137;
    if ((v96 & 1) == 0)
    {
      static Logger.syncEngine.getter();
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&_mh_execute_header, v107, v108, "Failed to refresh IDS ID status for family members", v109, 2u);
      }

      (*v141)(v132, v142);
      dispatch_group_leave(v131);
    }

    v38 = (v106 - 1) & v106;

    v42 = v144;
    v40 = v136;
  }

  v47 = 0;
  v48 = v45 + 32;
  v49 = &_swiftEmptyDictionarySingleton;
  v143 = v45;
  v145 = v46;
  while (v47 < *(v45 + 16))
  {
    sub_10001D958(v48, &aBlock);
    sub_100007504(&aBlock, v148);
    if (dispatch thunk of FamilyMemberable.isMe.getter())
    {
      goto LABEL_20;
    }

    sub_100007504(&aBlock, v148);
    v52 = dispatch thunk of FamilyMemberable.appleID.getter();
    if (!v53)
    {
      static Logger.syncEngine.getter();
      sub_10001D958(&aBlock, &v153);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v152 = v74;
        *v73 = v139;
        sub_10001D958(&v153, v151);
        sub_100003720(&qword_10006BF18, &unk_100056F90);
        v75 = v49;
        v76 = String.init<A>(describing:)();
        v78 = v77;
        sub_1000032BC(&v153);
        v79 = sub_100002CB4(v76, v78, &v152);
        v42 = v144;

        *(v73 + 4) = v79;
        v49 = v75;
        v45 = v143;
        _os_log_impl(&_mh_execute_header, v71, v72, "Failed to share zone with family member because they do not have an Apple ID: %{public}s", v73, 0xCu);
        sub_1000032BC(v74);
      }

      else
      {

        sub_1000032BC(&v153);
      }

      (*v141)(v42, v142);
      goto LABEL_19;
    }

    v54 = v52;
    v55 = v53;
    v56 = String._bridgeToObjectiveC()();
    v57 = IDSCopyIDForEmailAddress();

    if (!v57)
    {
      static Logger.syncEngine.getter();

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = v49;
        v84 = swift_slowAlloc();
        v153 = v84;
        *v82 = v139;
        v85 = sub_100002CB4(v54, v55, &v153);

        *(v82 + 4) = v85;
        v42 = v144;
        _os_log_impl(&_mh_execute_header, v80, v81, "Failed to get IDS destination for %{public}s", v82, 0xCu);
        sub_1000032BC(v84);
        v49 = v83;
        v45 = v143;

        v46 = v145;
      }

      else
      {
      }

      (*v141)(v140, v142);
      goto LABEL_20;
    }

    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    v61 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153 = v61;
    v64 = sub_100041270(v58, v60);
    v65 = v61[2];
    v66 = (v63 & 1) == 0;
    v67 = v65 + v66;
    if (__OFADD__(v65, v66))
    {
      goto LABEL_56;
    }

    v68 = v63;
    if (v61[3] >= v67)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v49 = v153;
        if ((v63 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_10001D378();
        v49 = v153;
        if ((v68 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      sub_10001D0B8(v67, isUniquelyReferenced_nonNull_native);
      v69 = sub_100041270(v58, v60);
      if ((v68 & 1) != (v70 & 1))
      {
        goto LABEL_59;
      }

      v64 = v69;
      v49 = v153;
      if ((v68 & 1) == 0)
      {
LABEL_36:
        v49[(v64 >> 6) + 8] |= 1 << v64;
        v86 = (v49[6] + 16 * v64);
        *v86 = v58;
        v86[1] = v60;
        v87 = (v49[7] + 16 * v64);
        *v87 = v54;
        v87[1] = v55;
        v88 = v49[2];
        v89 = __OFADD__(v88, 1);
        v90 = v88 + 1;
        if (v89)
        {
          goto LABEL_57;
        }

        v49[2] = v90;
        goto LABEL_18;
      }
    }

    v50 = (v49[7] + 16 * v64);
    v51 = v50[1];
    *v50 = v54;
    v50[1] = v55;

LABEL_18:
    v42 = v144;
    v45 = v143;
LABEL_19:
    v46 = v145;
LABEL_20:
    v47 = (v47 + 1);
    sub_1000032BC(&aBlock);
    v48 += 40;
    if (v46 == v47)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t *sub_100016C98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = &_swiftEmptyArrayStorage;
  if (v1)
  {
    v11 = &_swiftEmptyArrayStorage;
    sub_100034A3C(0, v1, 0);
    v2 = &_swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_100034A3C((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      v2[2] = v6 + 1;
      sub_10001DE0C(&v10, &v2[4 * v6 + 4]);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100016D98(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = &_swiftEmptyArrayStorage;
  result = sub_100034A5C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_100034A5C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1000112B4(0, &unk_10006C040, CKShareParticipant_ptr);
        v16 = &off_100067470;
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_10001D888(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = v3[2];
        v11 = v3[3];
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_100034A5C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1000112B4(0, &unk_10006C040, CKShareParticipant_ptr);
        v16 = &off_100067470;
        *&v14 = v13;
        v3[2] = v12 + 1;
        sub_10001D888(&v14, &v3[5 * v12 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_100016F78(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v75 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v67 - v15;
  v82 = &_swiftEmptyArrayStorage;
  if (a1)
  {
    sub_100017680(a1);
    if (v17)
    {
      v68 = a5;
      v69 = a4;
      v19 = v17;
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = __CocoaDictionary.makeIterator()();
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v19 = v20 | 0x8000000000000000;
      }

      else
      {
        v28 = -1 << *(v17 + 32);
        v21 = v17 + 64;
        v29 = ~v28;
        v30 = -v28;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        else
        {
          v31 = -1;
        }

        v23 = v31 & *(v17 + 64);
        v22 = v29;
      }

      v32 = v75;
      v70 = a3;
      v33 = 0;
      v67[1] = v22;
      v34 = (v22 + 64) >> 6;
      v74 = (v11 + 8);
      v71 = &_swiftEmptyArrayStorage;
      *&v18 = 138543362;
      v72 = v18;
      v76 = v34;
      v73 = v21;
LABEL_15:
      v35 = v33;
      for (i = v23; ; i = v77)
      {
        if ((v19 & 0x8000000000000000) != 0)
        {
          v48 = __CocoaDictionary.Iterator.next()();
          if (!v48)
          {
            goto LABEL_42;
          }

          v50 = v49;
          v79 = v48;
          sub_1000112B4(0, &qword_10006BF40, NSString_ptr);
          swift_dynamicCast();
          v47 = v80;
          v79 = v50;
          sub_1000112B4(0, &qword_10006BF48, NSNumber_ptr);
          swift_dynamicCast();
          v77 = i;
          v78 = v80;
          v33 = v35;
          if (!v47)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v43 = v35;
          v44 = i;
          v33 = v35;
          if (!i)
          {
            while (1)
            {
              v33 = v43 + 1;
              if (__OFADD__(v43, 1))
              {
                break;
              }

              if (v33 >= v34)
              {
                goto LABEL_42;
              }

              v44 = *(v21 + 8 * v33);
              ++v43;
              if (v44)
              {
                goto LABEL_24;
              }
            }

            __break(1u);
            return;
          }

LABEL_24:
          v77 = (v44 - 1) & v44;
          v45 = (v33 << 9) | (8 * __clz(__rbit64(v44)));
          v46 = *(*(v19 + 56) + v45);
          v47 = *(*(v19 + 48) + v45);
          v78 = v46;
          if (!v47)
          {
LABEL_42:
            sub_10001D648();
            a3 = v70;
            a5 = v68;
            v27 = v71;
            if (!(v71 >> 62))
            {
              goto LABEL_8;
            }

LABEL_43:
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_44;
            }

LABEL_9:
            sub_100017B74(a5, v27, a3);

            return;
          }
        }

        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (!*(a2 + 16))
        {
          break;
        }

        v53 = sub_100041270(v51, v52);
        v55 = v54;

        if ((v55 & 1) == 0)
        {
          goto LABEL_37;
        }

        v56 = (*(a2 + 56) + 16 * v53);
        v57 = *v56;
        v58 = v56[1];

        if ([v78 integerValue] == 1)
        {
          v64 = objc_allocWithZone(CKUserIdentityLookupInfo);
          v65 = String._bridgeToObjectiveC()();

          [v64 initWithEmailAddress:v65];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v66 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v71 = v82;
          v34 = v76;
          v23 = v77;
          goto LABEL_15;
        }

        v59 = [objc_opt_self() defaultCenter];
        if (qword_10006B7B0 != -1)
        {
          swift_once();
        }

        v60 = qword_10006C988;
        if (qword_10006B7E8 != -1)
        {
          swift_once();
        }

        v80 = qword_10006C9C0;
        v81 = 0;
        [v59 postNotificationName:v60 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
LABEL_18:
        v35 = v33;
        v34 = v76;
      }

LABEL_37:
      static Logger.syncEngine.getter();
      v61 = v47;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v37 = v19;
        v38 = a2;
        v39 = v10;
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = v72;
        *(v40 + 4) = v61;
        *v41 = v47;
        v42 = v61;
        _os_log_impl(&_mh_execute_header, v62, v63, "Failed to get Apple ID for %{public}@", v40, 0xCu);
        sub_10000D5C4(v41, &qword_10006BC50, &qword_1000568A8);
        v32 = v75;

        v10 = v39;
        a2 = v38;
        v19 = v37;
        v21 = v73;
      }

      else
      {
        v42 = v62;
        v62 = v61;
      }

      (*v74)(v32, v10);
      goto LABEL_18;
    }
  }

  static Logger.syncEngine.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to get IDS status for family members", v26, 2u);
  }

  (*(v11 + 8))(v16, v10);
  v27 = &_swiftEmptyArrayStorage;
  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_43;
  }

LABEL_8:
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_44:

  dispatch_group_leave(a3);
}

void sub_100017680(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003720(&qword_10006BF50, &qword_100056C90);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = sub_1000112B4(0, &qword_10006BF40, NSString_ptr);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v26 = v8 >> 6;

    v27 = 0;
    if (v7)
    {
      goto LABEL_30;
    }

LABEL_31:
    while (1)
    {
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v33 >= v26)
      {
        goto LABEL_46;
      }

      v7 = *(v4 + 8 * v33);
      ++v27;
      if (v7)
      {
        while (1)
        {
          v34 = __clz(__rbit64(v7)) | (v33 << 6);
          sub_10001D79C(*(a1 + 48) + 40 * v34, &v48);
          sub_1000036C4(*(a1 + 56) + 32 * v34, &v50 + 8);
          v45 = v50;
          v46 = v51;
          v47 = v52;
          v43 = v48;
          v44 = v49;
          v35.isa = AnyHashable._bridgeToObjectiveC()().isa;
          objc_opt_self();
          v36 = swift_dynamicCastObjCClass();
          if (!v36)
          {
            break;
          }

          v37 = v36;
          sub_1000036C4(&v45 + 8, v42);
          sub_10000D5C4(&v43, &qword_10006BF58, &qword_100056C98);
          sub_1000112B4(0, &qword_10006BF48, NSNumber_ptr);
          if ((swift_dynamicCast() & 1) == 0)
          {

            goto LABEL_46;
          }

          v7 &= v7 - 1;
          v38 = sub_100041494(v37);
          if (v39)
          {
            v28 = v2[6];
            v29 = *(v28 + 8 * v38);
            *(v28 + 8 * v38) = v37;
            v30 = v38;

            v31 = v2[7];
            v32 = *(v31 + 8 * v30);
            *(v31 + 8 * v30) = v41;

            v27 = v33;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v40 = v2[2];
            if (v40 >= v2[3])
            {
              goto LABEL_50;
            }

            *(v2 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v38;
            *(v2[6] + 8 * v38) = v37;
            *(v2[7] + 8 * v38) = v41;
            v2[2] = v40 + 1;
            v27 = v33;
            if (!v7)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v33 = v27;
        }

LABEL_44:
        sub_10000D5C4(&v43, &qword_10006BF58, &qword_100056C98);
LABEL_46:

        return;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 8);

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = __clz(__rbit64(v7)) | (v11 << 6);
      sub_10001D79C(*(a1 + 48) + 40 * v14, &v48);
      sub_1000036C4(*(a1 + 56) + 32 * v14, &v50 + 8);
      v45 = v50;
      v46 = v51;
      v47 = v52;
      v43 = v48;
      v44 = v49;
      v15.isa = AnyHashable._bridgeToObjectiveC()().isa;
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (!v16)
      {

        goto LABEL_44;
      }

      v17 = v16;
      sub_1000036C4(&v45 + 8, v42);
      sub_10000D5C4(&v43, &qword_10006BF58, &qword_100056C98);
      sub_1000112B4(0, &qword_10006BF48, NSNumber_ptr);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_46;
      }

      v18 = NSObject._rawHashValue(seed:)(v2[5]);
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*&v10[8 * (v20 >> 6)]) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *&v10[8 * v21];
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_48;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*&v10[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v10[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      *(v2[6] + 8 * v12) = v17;
      *(v2[7] + 8 * v12) = v41;
      ++v2[2];
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_46;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_100017B74(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = *&v4[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_cloudSharing + 8];
  v8 = *(v7 + 32);
  v41[3] = *&v4[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_cloudSharing];
  v41[4] = v7;
  sub_10001C8A8(v41);
  v9 = a1;
  v8();
  v11 = *&v4[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_shareParticipantFetching + 8];
  v12 = *(v11 + 16);
  v39 = *&v4[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_shareParticipantFetching];
  v10 = v39;
  v40 = v11;
  sub_10001C8A8(v38);

  v12(v13, v10, v11);
  v14 = v39;
  v15 = v40;
  sub_10001D7F8(v38, v39);
  (*(*(v15 + 8) + 16))(25, v14);
  sub_10001D958(v41, &v35);
  v16 = swift_allocObject();
  *(v16 + 16) = v9;
  sub_10001D888(&v35, v16 + 24);
  v17 = v39;
  v18 = v40;
  sub_10001D7F8(v38, v39);
  v19 = *(v18 + 32);
  v20 = v9;
  v19(sub_10001D8A0, v16, v17, v18);
  sub_10001D958(v41, &v35);
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  sub_10001D888(&v35, v21 + 24);
  *(v21 + 64) = a3;
  v22 = v39;
  v23 = v40;
  sub_10001D7F8(v38, v39);
  v24 = *(v23 + 56);
  v25 = v4;
  v26 = a3;
  v24(sub_10001D8F4, v21, v22, v23);
  v27 = &v25[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container];
  v28 = *&v25[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container + 24];
  v29 = *&v25[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container + 32];
  sub_100007504(v27, v28);
  v30 = v39;
  v31 = v40;
  v32 = sub_100007504(v38, v39);
  v36 = v30;
  v37 = *(v31 + 8);
  v33 = sub_10001C8A8(&v35);
  (*(*(v30 - 8) + 16))(v33, v32, v30);
  (*(v29 + 8))(&v35, v28, v29);
  sub_1000032BC(&v35);
  sub_1000032BC(v38);
  return sub_1000032BC(v41);
}

uint64_t sub_100017E50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100017E94(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v48[-v12];
  v14 = a1[3];
  v15 = a1[4];
  sub_100007504(a1, v14);
  (*(v15 + 56))(v55, v14, v15);
  v16 = [*sub_100007504(v55 v55[3])];
  if (v16 && (v17 = v16, v18 = [v16 emailAddress], v17, v18))
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    sub_1000032BC(v55);
    static Logger.syncEngine.getter();
    v22 = a2;

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v50 = v19;
      v26 = v25;
      v51 = swift_slowAlloc();
      v55[0] = v51;
      *v26 = 136446466;
      v27 = [v22 zoneName];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v6;
      v29 = v28;
      v49 = v24;
      v30 = a3;
      v32 = v31;

      v33 = sub_100002CB4(v29, v32, v55);
      a3 = v30;

      *(v26 + 4) = v33;
      *(v26 + 12) = 2082;
      v34 = sub_100002CB4(v50, v21, v55);

      *(v26 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v23, v49, "Sharing %{public}s with family member: %{public}s", v26, 0x16u);
      swift_arrayDestroy();

      (*(v7 + 8))(v13, v52);
    }

    else
    {

      (*(v7 + 8))(v13, v6);
    }

    v45 = a3;
    v46 = a3[3];
    v47 = a3[4];
    sub_100007504(v45, v46);
    return (*(v47 + 40))(a1, v46, v47);
  }

  else
  {
    sub_1000032BC(v55);
    static Logger.syncEngine.getter();
    sub_10001D958(a1, v55);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v54 = v38;
      *v37 = 136446210;
      sub_10001D958(v55, v53);
      sub_100003720(&qword_10006BF90, &unk_100056CD0);
      v39 = v6;
      v40 = String.init<A>(describing:)();
      v42 = v41;
      sub_1000032BC(v55);
      v43 = sub_100002CB4(v40, v42, &v54);

      *(v37 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to share zone with participant because they do not have an email: %{public}s", v37, 0xCu);
      sub_1000032BC(v38);

      return (*(v7 + 8))(v11, v39);
    }

    else
    {

      sub_1000032BC(v55);
      return (*(v7 + 8))(v11, v6);
    }
  }
}

uint64_t sub_100018340(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v28 = a2;
      v16 = v15;
      v17 = swift_slowAlloc();
      v27 = a3;
      v18 = v17;
      v29 = a1;
      v30 = v17;
      *v16 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v19 = String.init<A>(describing:)();
      v26 = v8;
      v21 = a4;
      v22 = sub_100002CB4(v19, v20, &v30);

      *(v16 + 4) = v22;
      a4 = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to fetch participants: %{public}s", v16, 0xCu);
      sub_1000032BC(v18);
      a3 = v27;

      (*(v9 + 8))(v12, v26);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    v23 = [objc_opt_self() defaultCenter];
    if (qword_10006B7B0 != -1)
    {
      swift_once();
    }

    v24 = qword_10006C988;
    if (qword_10006B7E0 != -1)
    {
      swift_once();
    }

    v30 = qword_10006C9B8;
    v31 = 0;
    [v23 postNotificationName:v24 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
  }

  return sub_100018648(a3, a4);
}

uint64_t sub_100018648(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.syncEngine.getter();
  sub_10001D958(a1, v59);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v55 = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v54 = a2;
    v16 = v15;
    *&v56 = v15;
    *v14 = 136446210;
    v53 = v6;
    v18 = v60;
    v17 = v61;
    sub_100007504(v59, v60);
    v19 = (*(*(v17 + 8) + 8))(v18);
    v20 = [v19 zoneID];

    v21 = [v20 zoneName];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    sub_1000032BC(v59);
    v25 = sub_100002CB4(v22, v24, &v56);

    *(v14 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v11, v12, "Saving share record for: %{public}s", v14, 0xCu);
    sub_1000032BC(v16);
    a2 = v54;

    v3 = v55;

    (*(v7 + 8))(v10, v53);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
    sub_1000032BC(v59);
  }

  v26 = *&v3[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_recordModifying + 8];
  v28 = *(v26 + 16);
  v60 = *&v3[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_recordModifying];
  v27 = v60;
  v61 = v26;
  sub_10001C8A8(v59);
  v28(v27, v26);
  v29 = v60;
  v30 = v61;
  sub_10001D7F8(v59, v60);
  (*(*(v30 + 8) + 16))(25, v29);
  sub_100003720(&qword_10006BF68, &qword_100056CA8);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100056C30;
  v32 = a1[3];
  v33 = a1[4];
  v34 = sub_100007504(a1, v32);
  *(v31 + 56) = v32;
  *(v31 + 64) = *(v33 + 8);
  v35 = sub_10001C8A8((v31 + 32));
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = v60;
  v37 = v61;
  sub_10001D7F8(v59, v60);
  (*(v37 + 56))(v31, v36, v37);
  sub_10001D958(a1, &v56);
  v38 = swift_allocObject();
  *(v38 + 16) = a2;
  *(v38 + 24) = v3;
  sub_10001D888(&v56, v38 + 32);
  v39 = v60;
  v40 = v61;
  sub_10001D7F8(v59, v60);
  v41 = *(v40 + 32);
  v42 = a2;
  v43 = v3;
  v41(sub_10001D94C, v38, v39, v40);
  v44 = &v43[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database];
  v45 = *&v43[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database + 24];
  v46 = *&v43[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_database + 32];
  sub_100007504(v44, v45);
  v47 = v60;
  v48 = v61;
  v49 = sub_100007504(v59, v60);
  v57 = v47;
  v58 = *(v48 + 8);
  v50 = sub_10001C8A8(&v56);
  (*(*(v47 - 8) + 16))(v50, v49, v47);
  (*(*(v46 + 8) + 8))(&v56, v45);
  sub_1000032BC(&v56);
  return sub_1000032BC(v59);
}

uint64_t sub_100018B20(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001DD64(a2, v43, &qword_10006BF70, &qword_100056CB0);
  if (v44)
  {
    sub_10001A1C4(*&v43[0], a5, a3);
  }

  else
  {
    sub_10001D888(v43, v42);
    sub_10001D958(v42, v35);
    sub_100003720(&qword_10006BF78, &qword_100056CB8);
    sub_100003720(&qword_10006BF80, &qword_100056CC0);
    if (swift_dynamicCast())
    {
      sub_10001D888(v33, &v38);
      v14 = v40;
      v15 = v41;
      sub_100007504(&v38, v40);
      v16 = (*(v15 + 16))(v14, v15);
      v17 = *(v16 + 16);
      if (v17)
      {
        v32[1] = v16;
        v18 = v16 + 32;
        do
        {
          sub_10001D958(v18, v35);
          v19 = v36;
          v20 = v37;
          sub_100007504(v35, v36);
          if ((*(v20 + 8))(v19, v20) != 2)
          {
            dispatch_group_enter(a3);
            sub_10001D958(&v38, v33);
            sub_100019008(v35, v33, 0xD00000000000002CLL, 0x8000000100058310, a3);
            sub_10000D5C4(v33, &qword_10006BF88, &qword_100056CC8);
          }

          sub_1000032BC(v35);
          v18 += 40;
          --v17;
        }

        while (v17);
      }

      dispatch_group_leave(a3);
      sub_1000032BC(v42);
      v29 = &v38;
    }

    else
    {
      v34 = 0;
      memset(v33, 0, sizeof(v33));
      sub_10000D5C4(v33, &qword_10006BF88, &qword_100056CC8);
      static Logger.syncEngine.getter();
      sub_10001D958(v42, &v38);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v33[0] = v24;
        *v23 = 136446210;
        sub_10001D958(&v38, v35);
        v25 = String.init<A>(describing:)();
        v27 = v26;
        sub_1000032BC(&v38);
        v28 = sub_100002CB4(v25, v27, v33);

        *(v23 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v21, v22, "Saved record does not conform to CloudSharing: %{public}s", v23, 0xCu);
        sub_1000032BC(v24);
      }

      else
      {

        sub_1000032BC(&v38);
      }

      (*(v9 + 8))(v12, v8);
      v30 = [objc_opt_self() defaultCenter];
      if (qword_10006B7B0 != -1)
      {
        swift_once();
      }

      v31 = qword_10006C988;
      if (qword_10006B7E0 != -1)
      {
        swift_once();
      }

      v38 = qword_10006C9B8;
      v39 = 0;
      [v30 postNotificationName:v31 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      dispatch_group_leave(a3);
      v29 = v42;
    }

    return sub_1000032BC(v29);
  }
}

void sub_100019008(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v152 = a5;
  v151 = a4;
  v148 = a3;
  v145 = a2;
  v7 = sub_100003720(&qword_10006BA50, &qword_100056770);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v143 = &v137 - v9;
  v10 = sub_100003720(&qword_10006BE08, &qword_100056988);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v142 = (&v137 - v12);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v140 = (&v137 - v20);
  v21 = __chkstk_darwin(v19);
  v147 = &v137 - v22;
  __chkstk_darwin(v21);
  v24 = &v137 - v23;
  v25 = a1[3];
  v26 = a1[4];
  sub_100007504(a1, v25);
  (*(v26 + 56))(&v155, v25, v26);
  v27 = [*sub_100007504(&v155 v157)];
  sub_1000032BC(&v155);
  if (!v27)
  {
LABEL_31:
    static Logger.syncEngine.getter();
    sub_10001D958(a1, &v155);
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = v14;
      v100 = swift_slowAlloc();
      v154 = v100;
      *v98 = 136446210;
      sub_10001D958(&v155, v153);
      sub_100003720(&qword_10006BF90, &unk_100056CD0);
      v101 = String.init<A>(describing:)();
      v102 = v13;
      v104 = v103;
      sub_1000032BC(&v155);
      v105 = sub_100002CB4(v101, v104, &v154);

      *(v98 + 4) = v105;
      _os_log_impl(&_mh_execute_header, v96, v97, "Failed to create invitation for: %{public}s", v98, 0xCu);
      sub_1000032BC(v100);

      (*(v99 + 8))(v18, v102);
    }

    else
    {

      sub_1000032BC(&v155);
      (*(v14 + 8))(v18, v13);
    }

    v106 = v152;
    v107 = [objc_opt_self() defaultCenter];
    if (qword_10006B7B0 != -1)
    {
      swift_once();
    }

    v108 = qword_10006C988;
    if (qword_10006B7E0 != -1)
    {
      swift_once();
    }

    v155 = qword_10006C9B8;
    v156 = 0;
    [v107 postNotificationName:v108 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    dispatch_group_leave(v106);
    return;
  }

  v150 = a1;
  v28 = [v27 emailAddress];
  v144 = v5;
  if (v28)
  {
    v29 = v152;
    goto LABEL_5;
  }

  v28 = [v27 phoneNumber];
  v29 = v152;
  if (!v28)
  {

    a1 = v150;
    goto LABEL_31;
  }

LABEL_5:
  v30 = v28;
  v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v149 = v31;

  static Logger.syncEngine.getter();
  sub_10001D958(v150, &v155);
  v32 = v151;

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  v35 = os_log_type_enabled(v33, v34);
  v141 = v27;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v154 = v139;
    *v36 = 136446466;
    v37 = v148;
    *(v36 + 4) = sub_100002CB4(v148, v32, &v154);
    *(v36 + 12) = 2082;
    sub_10001D958(&v155, v153);
    sub_100003720(&qword_10006BF90, &unk_100056CD0);
    v38 = v29;
    v39 = String.init<A>(describing:)();
    v40 = v14;
    v41 = v13;
    v43 = v42;
    sub_1000032BC(&v155);
    v44 = sub_100002CB4(v39, v43, &v154);
    v13 = v41;

    *(v36 + 14) = v44;
    v29 = v38;
    _os_log_impl(&_mh_execute_header, v33, v34, "Sending %{public}s to participant: %{public}s", v36, 0x16u);
    swift_arrayDestroy();

    v45 = *(v40 + 8);
    v45(v24, v41);
  }

  else
  {

    sub_1000032BC(&v155);
    v45 = *(v14 + 8);
    v45(v24, v13);
    v37 = v148;
  }

  v46 = v144;
  v47 = String._bridgeToObjectiveC()();
  v48 = v151;
  if (v37 == 0xD00000000000002CLL && 0x8000000100058310 == v151 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v140 = v45;
    v148 = v47;
    v49 = v150;
    v50 = v150[3];
    v51 = v150[4];
    sub_100007504(v150, v50);
    v52 = (*(v51 + 16))(v50, v51);
    if (v52)
    {
      v53 = v13;
      v54 = v52;
      v55 = [v52 sharingInvitationData];

      v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      sub_10001DD64(v145, &v155, &qword_10006BF88, &qword_100056CC8);
      v59 = v157;
      if (v157)
      {
        v60 = v158;
        sub_100007504(&v155, v157);
        v61 = v142;
        (*(v60 + 24))(v59, v60);
        v62 = type metadata accessor for URL();
        v63 = *(v62 - 8);
        if ((*(v63 + 48))(v61, 1, v62) != 1)
        {
          v109 = URL.absoluteString.getter();
          v111 = v110;
          (*(v63 + 8))(v61, v62);
          sub_1000032BC(&v155);
          sub_100003720(&qword_10006BC58, &unk_1000568B0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100056900;
          strcpy((inited + 32), "invitationData");
          *(inited + 47) = -18;
          *(inited + 48) = v56;
          v139 = v56;
          *(inited + 56) = v58;
          v138 = v58;
          *(inited + 72) = &type metadata for Data;
          *(inited + 80) = 0xD000000000000018;
          *(inited + 120) = &type metadata for String;
          *(inited + 88) = 0x8000000100058380;
          *(inited + 96) = v109;
          *(inited + 104) = v111;
          sub_10000DA30(v56, v58);
          v113 = sub_100041CC4(inited);
          swift_setDeallocating();
          sub_100003720(&unk_10006BC60, &unk_100056CE0);
          swift_arrayDestroy();
          sub_100014820(v113);

          v114 = objc_allocWithZone(IDSDictionaryInvitationContext);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v116 = String._bridgeToObjectiveC()();
          v117 = [v114 initWithDictionary:isa schema:v116];

          v118 = *(v144 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
          v119 = *(v144 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32);
          sub_100007504((v144 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager), v118);
          v120 = v143;
          static Date.distantFuture.getter();
          v121 = type metadata accessor for Date();
          (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
          v122 = swift_allocObject();
          v123 = v149;
          v122[2] = v146;
          v122[3] = v123;
          v124 = v152;
          v122[4] = v152;
          v125 = *(v119 + 32);
          v126 = v117;
          v127 = v124;
          v128 = v148;
          v125(v148, v120, v126, sub_100020C8C, v122, v118, v119);

          sub_100007644(v139, v138);
          sub_10000D5C4(v120, &qword_10006BA50, &qword_100056770);
          return;
        }

        sub_100007644(v56, v58);
        sub_1000032BC(&v155);
        v64 = &qword_10006BE08;
        v65 = &qword_100056988;
        v66 = v61;
      }

      else
      {

        sub_100007644(v56, v58);
        v64 = &qword_10006BF88;
        v65 = &qword_100056CC8;
        v66 = &v155;
      }

      sub_10000D5C4(v66, v64, v65);
      v29 = v152;
      v13 = v53;
      v49 = v150;
    }

    else
    {
    }

    v81 = v147;
    static Logger.syncEngine.getter();
    sub_10001D958(v49, &v155);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v154 = v85;
      *v84 = 136446210;
      sub_10001D958(&v155, v153);
      sub_100003720(&qword_10006BF90, &unk_100056CD0);
      v86 = String.init<A>(describing:)();
      v87 = v13;
      v89 = v88;
      sub_1000032BC(&v155);
      v90 = sub_100002CB4(v86, v89, &v154);

      *(v84 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v82, v83, "Failed to create share invitation for: %{public}s", v84, 0xCu);
      sub_1000032BC(v85);

      v91 = v81;
      v92 = v87;
    }

    else
    {

      sub_1000032BC(&v155);
      v91 = v81;
      v92 = v13;
    }

    v140(v91, v92);
    v93 = v148;
    v94 = [objc_opt_self() defaultCenter];
    if (qword_10006B7B0 != -1)
    {
      swift_once();
    }

    v95 = qword_10006C988;
    if (qword_10006B7E0 != -1)
    {
      swift_once();
    }

    v155 = qword_10006C9B8;
    v156 = 0;
    [v94 postNotificationName:v95 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    dispatch_group_leave(v29);
  }

  else if (v37 == 0xD000000000000033 && 0x8000000100058340 == v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100042104(&_swiftEmptyArrayStorage);
    v67 = objc_allocWithZone(IDSDictionaryInvitationContext);
    v68 = Dictionary._bridgeToObjectiveC()().super.isa;

    v69 = String._bridgeToObjectiveC()();
    v70 = [v67 initWithDictionary:v68 schema:v69];

    v71 = *(v46 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
    v72 = *(v46 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32);
    sub_100007504((v46 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager), v71);
    v73 = v143;
    static Date.distantFuture.getter();
    v74 = type metadata accessor for Date();
    (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
    v75 = v47;
    v76 = swift_allocObject();
    v77 = v149;
    v76[2] = v146;
    v76[3] = v77;
    v76[4] = v29;
    v78 = *(v72 + 32);
    v79 = v29;
    v80 = v70;
    v78(v75, v73, v80, sub_10001DD44, v76, v71, v72);

    sub_10000D5C4(v73, &qword_10006BA50, &qword_100056770);
  }

  else
  {
    v129 = v45;

    v130 = v140;
    static Logger.syncEngine.getter();

    v131 = v48;
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v155 = v135;
      *v134 = 136446210;
      *(v134 + 4) = sub_100002CB4(v148, v131, &v155);
      _os_log_impl(&_mh_execute_header, v132, v133, "Tried to send invitation using unknown schema: %{public}s", v134, 0xCu);
      sub_1000032BC(v135);

      v136 = v140;
    }

    else
    {

      v136 = v130;
    }

    v129(v136, v13);
    dispatch_group_leave(v29);
  }
}

void sub_10001A1C4(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v94 = &v88 - v12;
  *&v96 = a1;
  swift_errorRetain();
  sub_100003720(&qword_10006BF60, &qword_100056CA0);
  sub_100003720(&qword_10006BFA0, &qword_100056CF0);
  if (swift_dynamicCast())
  {
    sub_10001D888(&v100, &v103);
  }

  else
  {
    v102 = 0;
    v100 = 0u;
    v101 = 0u;
    v95[0] = a1;
    swift_errorRetain();
    type metadata accessor for CKError(0);
    v14 = v13;
    if (swift_dynamicCast())
    {
      v15 = v99;
      v16 = sub_10001FEF8(&unk_10006BFB0, type metadata accessor for CKError);
    }

    else
    {
      v14 = 0;
      v16 = 0;
      v15 = 0;
      *(&v103 + 1) = 0;
      v104 = 0;
    }

    v105 = v14;
    v106 = v16;
    *&v103 = v15;
    if (*(&v101 + 1))
    {
      sub_10000D5C4(&v100, &qword_10006BFA8, &qword_100056CF8);
    }
  }

  if (!v105)
  {
    sub_10000D5C4(&v103, &qword_10006BFA8, &qword_100056CF8);
    sub_10001FC44(a1, a3);
    return;
  }

  v93 = v7;
  sub_10001D888(&v103, v107);
  sub_100007504(v107, v108);
  v17 = *(sub_10001FEF8(&unk_10006BFB0, type metadata accessor for CKError) + 48);
  type metadata accessor for CKError(0);
  v18 = v17();
  if (v18 != 14)
  {
    if (v18 == 26)
    {
      v27 = a2[3];
      v26 = a2[4];
      sub_100007504(a2, v27);
      v28 = (*(*(v26 + 8) + 8))(v27);
      v29 = [v28 zoneID];

      static Logger.syncEngine.getter();
      v30 = v29;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *&v103 = v34;
        *v33 = 136446210;
        v35 = [v30 zoneName];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v6;
        v38 = v37;

        v39 = sub_100002CB4(v36, v38, &v103);

        *(v33 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s was not found, posting zone deletion notification.", v33, 0xCu);
        sub_1000032BC(v34);

        (*(v93 + 8))(v11, v92);
      }

      else
      {

        (*(v93 + 8))(v11, v6);
      }

      v49 = [objc_opt_self() defaultCenter];
      if (qword_10006B7B8 != -1)
      {
        swift_once();
      }

      [v49 postNotificationName:qword_10006C990 object:v30];

      dispatch_group_leave(a3);
      goto LABEL_38;
    }

    if (v18 == 33)
    {
      v19 = a2[3];
      v20 = a2[4];
      sub_100007504(a2, v19);
      v21 = (*(v20 + 16))(v19, v20);
      v22 = *(v21 + 16);
      if (v22)
      {
        v94 = v21;
        v23 = v21 + 32;
        do
        {
          sub_10001D958(v23, &v103);
          v24 = v105;
          v25 = v106;
          sub_100007504(&v103, v105);
          if ((*(v25 + 8))(v24, v25) != 2)
          {
            dispatch_group_enter(a3);
            v102 = 0;
            v100 = 0u;
            v101 = 0u;
            sub_100019008(&v103, &v100, 0xD000000000000033, 0x8000000100058340, a3);
            sub_10000D5C4(&v100, &qword_10006BF88, &qword_100056CC8);
          }

          sub_1000032BC(&v103);
          v23 += 40;
          --v22;
        }

        while (v22);
      }

      dispatch_group_leave(a3);
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  v92 = v6;
  v40 = sub_100007504(v107, v108);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = type metadata accessor for Optional();
  v91 = &v88;
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v46 = (&v88 - v45);
  v47 = *v40;
  *v46 = related decl 'e' for CKErrorCode.serverRecord.getter();
  v48 = *(AssociatedTypeWitness - 8);
  if ((*(v48 + 48))(v46, 1, AssociatedTypeWitness) == 1)
  {
    (*(v43 + 8))(v46, v42);
    v100 = 0u;
    v101 = 0u;
    v102 = 0;
  }

  else
  {
    *(&v97 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v50 = sub_10001C8A8(&v96);
    (*(v48 + 32))(v50, v46, AssociatedTypeWitness);
    sub_100003720(&qword_10006BF78, &qword_100056CB8);
    sub_100003720(&qword_10006BF80, &qword_100056CC0);
    if (swift_dynamicCast())
    {
      if (*(&v101 + 1))
      {
        sub_10001D888(&v100, &v103);
        v51 = v109;
        v52 = sub_100007504(v107, v108);
        v90 = v51;
        v53 = swift_getAssociatedTypeWitness();
        v54 = type metadata accessor for Optional();
        v91 = &v88;
        v89 = v54;
        v55 = *(v54 - 8);
        v56 = *(v55 + 64);
        __chkstk_darwin(v54);
        v58 = (&v88 - v57);
        v59 = *v52;
        *v58 = related decl 'e' for CKErrorCode.clientRecord.getter();
        v60 = *(v53 - 8);
        if ((*(v60 + 48))(v58, 1, v53) == 1)
        {
          sub_1000032BC(&v103);
          (*(v55 + 8))(v58, v89);
          v96 = 0u;
          v97 = 0u;
          AssociatedConformanceWitness = 0;
        }

        else
        {
          v95[3] = v53;
          v95[4] = swift_getAssociatedConformanceWitness();
          v73 = sub_10001C8A8(v95);
          (*(v60 + 32))(v73, v58, v53);
          if (swift_dynamicCast())
          {
            if (*(&v97 + 1))
            {
              sub_10001D888(&v96, &v100);
              v74 = v94;
              static Logger.syncEngine.getter();
              sub_10001D958(&v103, &v96);
              v75 = Logger.logObject.getter();
              v76 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v75, v76))
              {
                v77 = swift_slowAlloc();
                v78 = swift_slowAlloc();
                v95[0] = v78;
                *v77 = 136446210;
                v80 = *(&v97 + 1);
                v79 = AssociatedConformanceWitness;
                sub_100007504(&v96, *(&v97 + 1));
                v81 = (*(*(v79 + 8) + 8))(v80);
                v82 = [v81 zoneID];

                v83 = [v82 zoneName];
                v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v86 = v85;

                sub_1000032BC(&v96);
                v87 = sub_100002CB4(v84, v86, v95);

                *(v77 + 4) = v87;
                _os_log_impl(&_mh_execute_header, v75, v76, "Updating share for: %{public}s", v77, 0xCu);
                sub_1000032BC(v78);

                (*(v93 + 8))(v74, v92);
              }

              else
              {

                (*(v93 + 8))(v74, v92);
                sub_1000032BC(&v96);
              }

              if (sub_10001E0F8(&v103, &v100))
              {
                sub_100018648(&v103, a3);
              }

              else
              {
                dispatch_group_leave(a3);
              }

              sub_1000032BC(&v100);
              sub_1000032BC(&v103);
              goto LABEL_38;
            }
          }

          else
          {
            AssociatedConformanceWitness = 0;
            v96 = 0u;
            v97 = 0u;
          }

          sub_1000032BC(&v103);
        }

        v61 = &v96;
        goto LABEL_33;
      }
    }

    else
    {
      v102 = 0;
      v100 = 0u;
      v101 = 0u;
    }
  }

  v61 = &v100;
LABEL_33:
  sub_10000D5C4(v61, &qword_10006BF88, &qword_100056CC8);
LABEL_34:
  v62 = v108;
  v63 = v109;
  v64 = sub_100007504(v107, v108);
  v65 = *(v62 - 8);
  v66 = *(v65 + 64);
  __chkstk_darwin(v64);
  v68 = &v88 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v65 + 16))(v68);
  sub_10001FEF8(&qword_10006B820, type metadata accessor for CKError);
  v69 = _getErrorEmbeddedNSError<A>(_:)();
  if (v69)
  {
    v70 = v69;
    (*(v65 + 8))(v68, v62);
  }

  else
  {
    v71 = *(v63 + 8);
    v70 = swift_allocError();
    (*(v65 + 32))(v72, v68, v62);
  }

  sub_10001FC44(v70, a3);

LABEL_38:
  sub_1000032BC(v107);
}

void sub_10001AF88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, NSObject *a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v30 - v15;
  if (a2)
  {
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30[0] = a5;
      v31 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_100002CB4(a3, a4, &v31);
      *(v19 + 12) = 2082;
      v30[1] = a2;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v21 = String.init<A>(describing:)();
      v23 = sub_100002CB4(v21, v22, &v31);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to send invitation to %{public}s: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      a5 = v30[0];
    }

    (*(v10 + 8))(v16, v9);
    v24 = [objc_opt_self() defaultCenter];
    if (qword_10006B7B0 != -1)
    {
      swift_once();
    }

    v25 = qword_10006C988;
    if (qword_10006B7E0 != -1)
    {
      swift_once();
    }

    v31 = qword_10006C9B8;
    v32 = 0;
    [v24 postNotificationName:v25 object:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
  }

  else
  {
    static Logger.syncEngine.getter();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_100002CB4(a3, a4, &v31);
      _os_log_impl(&_mh_execute_header, v26, v27, "Successfully sent invitation to %{public}s", v28, 0xCu);
      sub_1000032BC(v29);
    }

    (*(v10 + 8))(v14, v9);
  }

  dispatch_group_leave(a5);
}

uint64_t sub_10001B408(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  if (a3)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    sub_10001FF94(a2, 1);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v33 = a5;
      v34 = a2;
      v21 = v20;
      v35 = v20;
      *v19 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v22 = String.init<A>(describing:)();
      v24 = sub_100002CB4(v22, v23, &v35);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to fetch share metadata: %{public}s", v19, 0xCu);
      sub_1000032BC(v21);
      a5 = v33;
    }

    (*(v10 + 8))(v14, v9);
    v25 = (a4 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager);
    v26 = *(a4 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
    v27 = v25[4];
    sub_100007504(v25, v26);
    return (*(v27 + 48))(a5, sub_10001C34C, 0, v26, v27);
  }

  else
  {
    static Logger.syncEngine.getter();
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Successfully fetched share metadata", v31, 2u);
    }

    (*(v10 + 8))(v16, v9);
    return sub_10001B710(a2, a5);
  }
}

uint64_t sub_10001B710(void *a1, void *a2)
{
  sub_100003720(&qword_10006C018, &qword_100056D40);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100056C40;
  *(v5 + 32) = a1;
  v6 = objc_allocWithZone(CKAcceptSharesOperation);
  sub_1000112B4(0, &qword_10006C020, CKShareMetadata_ptr);
  v7 = a1;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithShareMetadatas:isa];

  [v9 setQualityOfService:25];
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = a2;
  v11 = v2;
  v12 = a2;
  CKAcceptSharesOperation.acceptSharesResultBlock.setter();
  v13 = *&v11[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container + 24];
  v14 = *&v11[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container + 32];
  sub_100007504(&v11[OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_container], v13);
  v18[3] = sub_1000112B4(0, &qword_10006C028, CKAcceptSharesOperation_ptr);
  v18[4] = &off_100067378;
  v18[0] = v9;
  v15 = *(v14 + 8);
  v16 = v9;
  v15(v18, v13, v14);

  return sub_1000032BC(v18);
}

uint64_t sub_10001B8C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  if (a2)
  {
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = a4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v34 = a3;
      v20 = v19;
      v36 = a2;
      v37 = v19;
      *v18 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v21 = String.init<A>(describing:)();
      v23 = sub_100002CB4(v21, v22, &v37);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to save authorization zone: %{public}s", v18, 0xCu);
      sub_1000032BC(v20);
      a3 = v34;

      a4 = v35;
    }

    (*(v8 + 8))(v12, v7);
    v24 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
    v25 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32);
    sub_100007504((a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager), v24);
    (*(v25 + 48))(a4, sub_10001C34C, 0, v24, v25);
  }

  else
  {
    static Logger.syncEngine.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Successfully saved authorization zone", v29, 2u);
    }

    (*(v8 + 8))(v14, v7);
    v30 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
    v31 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32);
    sub_100007504((a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager), v30);
    v32 = [a4 context];
    v33 = swift_allocObject();
    *(v33 + 16) = a4;
    (*(v31 + 40))(a4, v32, sub_100020C9C, v33, v30, v31);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10001BC68(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  if (a2)
  {
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    sub_10001FFAC(a1, 1);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v35 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v36 = a1;
      v37 = v20;
      *v19 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v21 = String.init<A>(describing:)();
      v23 = sub_100002CB4(v21, v22, &v37);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to accept share: %{public}s", v19, 0xCu);
      sub_1000032BC(v20);

      a3 = v35;
    }

    (*(v9 + 8))(v13, v8);
    v24 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
    v25 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32);
    sub_100007504((a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager), v24);
    return (*(v25 + 48))(a4, sub_10001C34C, 0, v24, v25);
  }

  else
  {
    static Logger.syncEngine.getter();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Successfully accepted share", v29, 2u);
    }

    (*(v9 + 8))(v15, v8);
    v30 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 24);
    v31 = *(a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager + 32);
    sub_100007504((a3 + OBJC_IVAR____TtCC19FamilyControlsAgent16FamilySyncEngine18SharingCoordinator_invitationManager), v30);
    v32 = [a4 context];
    v33 = swift_allocObject();
    *(v33 + 16) = a4;
    (*(v31 + 40))(a4, v32, sub_10001FFF0, v33, v30, v31);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10001C000(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  if (a1)
  {
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35 = a1;
      v36 = v15;
      *v14 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v16 = String.init<A>(describing:)();
      v18 = sub_100002CB4(v16, v17, &v36);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to accept invitation: %{public}s", v14, 0xCu);
      sub_1000032BC(v15);
    }

    else
    {
    }

    v31 = *(v5 + 8);
    v32 = v11;
  }

  else
  {
    static Logger.syncEngine.getter();
    v19 = a2;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      *v22 = 136446210;
      v24 = v19;
      v25 = [v24 description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v4;
      v28 = v27;

      v29 = sub_100002CB4(v26, v28, &v36);

      *(v22 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v20, v21, "Successfully accepted invitation %{public}s", v22, 0xCu);
      sub_1000032BC(v23);

      return (*(v5 + 8))(v9, v34);
    }

    v31 = *(v5 + 8);
    v32 = v9;
  }

  return v31(v32, v4);
}

uint64_t sub_10001C34C(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  if (a1)
  {
    swift_errorRetain();
    static Logger.syncEngine.getter();
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = a1;
      v22 = v13;
      *v12 = 136446210;
      swift_errorRetain();
      sub_100003720(&qword_10006BF60, &qword_100056CA0);
      v14 = String.init<A>(describing:)();
      v16 = sub_100002CB4(v14, v15, &v22);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to decline invitation: %{public}s", v12, 0xCu);
      sub_1000032BC(v13);
    }

    else
    {
    }

    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    static Logger.syncEngine.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Successfully declined invitation", v19, 2u);
    }

    return (*(v3 + 8))(v9, v2);
  }
}