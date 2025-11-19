int main(int argc, const char **argv, const char **envp)
{
  v3 = [objc_opt_self() serviceListener];
  qword_100617100 = v3;
  if (qword_1005FF3F0 != -1)
  {
    v4 = v3;
    swift_once();
    v3 = v4;
  }

  [v3 setDelegate:qword_100617108];
  [qword_100617100 resume];
  exit(0);
}

id sub_100003480(void *a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = a3;
  static Logger.music(_:)();
  v9.receiver = a1;
  v9.super_class = type metadata accessor for MusicScriptUpdateService();
  v7 = objc_msgSendSuper2(&v9, *a4, v6);

  return v7;
}

id sub_10000358C(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = a3;
  static Logger.music(_:)();
  v11.receiver = a1;
  v11.super_class = type metadata accessor for MusicScriptUpdateService();
  v9 = objc_msgSendSuper2(&v11, *a5, v8, a4);

  return v9;
}

id sub_10000377C()
{
  result = [objc_allocWithZone(type metadata accessor for ScriptUpdateServiceDelegate()) init];
  qword_100617108 = result;
  return result;
}

id sub_100003804(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t variable initialization expression of JSThread.accessQueue()
{
  v0 = sub_1004BCB34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004BCAF4();
  __chkstk_darwin(v4);
  v5 = sub_1004BA924();
  __chkstk_darwin(v5 - 8);
  sub_100003A70();
  sub_1004BA914();
  v7[1] = &_swiftEmptyArrayStorage;
  sub_100004F00(&qword_1005FF410, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003ABC(&qword_1005FF418);
  sub_100003B04();
  sub_1004BD2D4();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_1004BCB74();
}

unint64_t sub_100003A70()
{
  result = qword_1005FF408;
  if (!qword_1005FF408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005FF408);
  }

  return result;
}

uint64_t sub_100003ABC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003B04()
{
  result = qword_1005FF420;
  if (!qword_1005FF420)
  {
    sub_100003B68(&qword_1005FF418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005FF420);
  }

  return result;
}

uint64_t sub_100003B68(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of JSThread.scriptingThreadIdentifier()
{
  v0 = [objc_allocWithZone(NSUUID) init];
  v1 = [v0 UUIDString];

  v2 = sub_1004BBE64();
  return v2;
}

uint64_t type metadata accessor for MusicScriptUpdateService()
{
  result = qword_1005FF450;
  if (!qword_1005FF450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003C94()
{
  result = sub_1004B80B4();
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

Swift::Int sub_100003EC0()
{
  sub_1004BDBA4();
  swift_getWitnessTable();
  sub_1004B71F4();
  return sub_1004BDBF4();
}

uint64_t sub_100003F24()
{
  swift_getWitnessTable();

  return sub_1004B71E4();
}

uint64_t sub_100003F90()
{
  swift_getWitnessTable();

  return sub_1004B71E4();
}

uint64_t sub_100004024(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100004080(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100004080(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000414C(v11, 0, 0, 1, a1, a2);
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
    sub_100004DE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004C6C(v11);
  return v7;
}

unint64_t sub_10000414C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004258(a5, a6);
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
    result = sub_1004BD4C4();
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

char *sub_100004258(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000042A4(a1, a2);
  sub_1000043D4(&off_1005A2AA8);
  return v3;
}

char *sub_1000042A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000044C0(v5, 0);
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

  result = sub_1004BD4C4();
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
        v10 = sub_1004BC044();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000044C0(v10, 0);
        result = sub_1004BD3F4();
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

uint64_t sub_1000043D4(uint64_t result)
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

  result = sub_100004534(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_1000044C0(uint64_t a1, uint64_t a2)
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

  sub_100003ABC(&qword_1005FF4F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100004534(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1005FF4F0);
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

_BYTE **sub_100004628(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100004638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v51 = a1;
  v52 = a2;
  v7 = type metadata accessor for ApplicationScriptProvider.Compiler(0);
  __chkstk_darwin(v7 - 8);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004B6B04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  __chkstk_darwin(v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC24MusicScriptUpdateService24MusicScriptUpdateService_logger;
  v53 = a4;
  v17 = sub_1004B8094();
  v18 = sub_1004BC9A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Beginning JavaScript bytecode update XPC service", v19, 2u);
  }

  v20 = [objc_allocWithZone(JSContext) init];
  if (v20)
  {
    v21 = v20;
    v50 = v16;
    type metadata accessor for ApplicationScriptProvider();
    inited = swift_initStackObject();
    *(inited + 16) = v21;
    *(inited + 24) = 0;
    v23 = *(v10 + 16);
    v23(v12, v51, v9);
    v15[32] = 1;
    v23(&v15[*(v13 + 32)], v12, v9);
    v24 = v52;
    *(v15 + 2) = v52;
    *(v15 + 3) = a3;
    *(v15 + 1) = 0;
    swift_bridgeObjectRetain_n();
    v25 = sub_100007354(v24, a3, 1);
    (*(v10 + 8))(v12, v9);
    *v15 = v25;
    if (v25 && (v26 = sub_1000066B8(), v27 >> 60 != 15))
    {
      v34 = v26;
      v35 = v27;
      v36 = v49;
      sub_100004CB8(v15, v49);

      sub_100004D7C(v34, v35);
      sub_100004D1C(v36, type metadata accessor for ApplicationScriptProvider.Compiler);
    }

    else
    {
      sub_100004C18();
      swift_allocError();
      *v28 = 2;
      swift_willThrow();
      swift_errorRetain();
      v37 = sub_1004B8094();
      v38 = sub_1004BC984();

      if (os_log_type_enabled(v37, v38))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v54 = v41;
        *v40 = 136315138;
        swift_getErrorValue();
        v42 = sub_1004BDB04();
        v44 = sub_100004080(v42, v43, &v54);

        *(v40 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v37, v38, "Failure while trying to compile: %s", v40, 0xCu);
        sub_100004C6C(v41);
      }

      else
      {
      }
    }

    v45 = sub_1004B8094();
    v46 = sub_1004BC9A4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Cached bytecode with no errors", v47, 2u);
    }

    return sub_100004D1C(v15, type metadata accessor for ApplicationScriptProvider.Descriptor);
  }

  else
  {
    v29 = sub_1004B8094();
    v30 = sub_1004BC994();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to create JSContext", v31, 2u);
    }

    v32 = *(v50 + 16);

    return v32();
  }
}

unint64_t sub_100004C18()
{
  result = qword_1005FF4E8;
  if (!qword_1005FF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005FF4E8);
  }

  return result;
}

uint64_t sub_100004C6C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100004CB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004D1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100004D7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100004D90(a1, a2);
  }

  return a1;
}

uint64_t sub_100004D90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100004DE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100004E6C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100004F00(unint64_t *a1, void (*a2)(uint64_t))
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

Class sub_100005020(uint64_t a1, uint64_t a2, void *a3)
{
  v143 = a3;
  v4 = sub_1004B6B04();
  v147 = *(v4 - 1);
  v148 = v4;
  v5 = __chkstk_darwin(v4);
  v146 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v130 - v7;
  v9 = sub_1004B80B4();
  v10 = *(v9 - 8);
  v144 = v9;
  v145 = v10;
  v11 = __chkstk_darwin(v9);
  v136 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v138 = &v130 - v14;
  v15 = __chkstk_darwin(v13);
  v141 = &v130 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v130 - v18;
  v20 = __chkstk_darwin(v17);
  v139 = &v130 - v21;
  __chkstk_darwin(v20);
  v23 = &v130 - v22;
  v135 = sub_100003ABC(&qword_1005FFA60);
  v24 = __chkstk_darwin(v135);
  v134 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v137 = &v130 - v27;
  v28 = __chkstk_darwin(v26);
  v140 = &v130 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v130 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v130 - v34;
  __chkstk_darwin(v33);
  v149 = &v130 - v36;
  v37 = sub_1004BBEB4();
  __chkstk_darwin(v37 - 8);
  isa = (&v130 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004BBEA4();
  v40 = sub_1004BBE84();
  if (!v41)
  {
    sub_100004C18();
    swift_allocError();
    *v44 = 0;
    swift_willThrow();
    return isa;
  }

  v42 = *(v3 + 32);
  v132 = v19;
  v142 = v3;
  v133 = v40;
  if (v42)
  {
    v43 = v148;
    if (v42 != 1)
    {
      v147[7](v149, 1, 1, v148);
      goto LABEL_17;
    }
  }

  else
  {
    v43 = v148;
    if (!*v3)
    {
LABEL_15:
      v51 = 1;
      v50 = v147;
      goto LABEL_16;
    }

    v45 = sub_1000064C0();
    v3 = v142;
    if (v45)
    {
      if (qword_1005FF400 != -1)
      {
        swift_once();
      }

      v46 = v144;
      v47 = sub_100007084(v144, qword_1005FF5A8);
      (*(v145 + 16))(v23, v47, v46);
      v48 = sub_1004B8094();
      LODWORD(v130) = sub_1004BC9A4();
      v131 = v48;
      if (os_log_type_enabled(v48, v130))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v131, v130, "Path for bytecode cache exists and will be used in the JSScript creation.", v49, 2u);
        v43 = v148;
      }

      (*(v145 + 8))(v23, v144);
      v3 = v142;
    }
  }

  if (!*v3)
  {
    goto LABEL_15;
  }

  static URL.+ infix(_:_:)();

  static URL.+ infix(_:_:)();
  v50 = v147;
  (v147[1])(v8, v43);
  v51 = 0;
LABEL_16:
  v50[7](v35, v51, 1, v43);
  sub_1000072E4(v35, v149);
LABEL_17:
  v52 = sub_1004BBE24();
  v53 = sub_1004BBE24();
  v54 = [objc_opt_self() attributeWithDomain:v52 name:v53];

  v55 = [objc_opt_self() currentProcess];
  sub_100003ABC(&qword_1005FFA68);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1004C4D40;
  *(v56 + 32) = v54;
  v57 = objc_allocWithZone(RBSAssertion);
  v58 = v54;
  v59 = sub_1004BBE24();
  sub_1000071C8();
  isa = sub_1004BC284().super.isa;

  v60 = [v57 initWithExplanation:v59 target:v55 attributes:isa];

  v150 = 0;
  v61 = [v60 acquireWithError:&v150];
  v62 = v150;
  if (!v61)
  {
    v76 = v150;

    sub_1004B69B4();

    swift_willThrow();
    [v60 invalidate];

LABEL_30:
    sub_100007214(v149, &qword_1005FFA60);
    return isa;
  }

  v130 = v60;
  v131 = v58;
  v63 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v64 = v147;
  v65 = v148;
  (v147[2])(v146, v142 + *(v63 + 32), v148);
  sub_100007274(v149, v32);
  v66 = v62;
  result = [v143 virtualMachine];
  if (result)
  {
    v68 = result;
    v69 = sub_1004BBE24();

    sub_1004B6A44(v70);
    v72 = v71;
    v73 = v64[6];
    if ((v73)(v32, 1, v65) == 1)
    {
      v75 = 0;
    }

    else
    {
      sub_1004B6A44(v74);
      v75 = v77;
      (v64[1])(v32, v65);
    }

    v78 = v145;
    v79 = objc_opt_self();
    v150 = 0;
    isa = [v79 scriptOfType:0 withSource:v69 andSourceURL:v72 andBytecodeCache:v75 inVirtualMachine:v68 error:&v150];

    if (isa)
    {
      v80 = v147[1];
      v81 = v150;
      v82 = v148;
      (v80)(v146, v148);

      if (([(objc_class *)isa isUsingBytecodeCache]& 1) != 0)
      {
        if (qword_1005FF400 != -1)
        {
          swift_once();
        }

        v83 = v144;
        v84 = sub_100007084(v144, qword_1005FF5A8);
        v85 = v141;
        (*(v78 + 16))(v141, v84, v83);
        v86 = sub_1004B8094();
        v87 = sub_1004BC974();
        if (!os_log_type_enabled(v86, v87))
        {
          goto LABEL_38;
        }

        v88 = swift_slowAlloc();
        *v88 = 0;
        v89 = "Successfully started script with cached bytecode.";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v86, v87, v89, v88, 2u);

LABEL_38:

        (*(v78 + 8))(v85, v83);
        v95 = v131;
        v96 = v130;
LABEL_53:
        [v96 invalidate];

        sub_100007214(v149, &qword_1005FFA60);
        return isa;
      }

      v92 = v140;
      sub_100007274(v149, v140);
      v93 = (v73)(v92, 1, v82);
      sub_100007214(v92, &qword_1005FFA60);
      if (v93 == 1)
      {
        v83 = v144;
        if (qword_1005FF400 != -1)
        {
          swift_once();
        }

        v94 = sub_100007084(v83, qword_1005FF5A8);
        v85 = v138;
        (*(v78 + 16))(v138, v94, v83);
        v86 = sub_1004B8094();
        v87 = sub_1004BC974();
        if (!os_log_type_enabled(v86, v87))
        {
          goto LABEL_38;
        }

        v88 = swift_slowAlloc();
        *v88 = 0;
        v89 = "Not using bytecode cache";
        goto LABEL_37;
      }

      v148 = isa;
      v97 = v144;
      if (qword_1005FF400 != -1)
      {
        swift_once();
      }

      v98 = sub_100007084(v97, qword_1005FF5A8);
      v99 = v139;
      v147 = *(v78 + 16);
      (v147)(v139, v98, v97);
      v100 = v137;
      sub_100007274(v149, v137);
      v101 = sub_1004B8094();
      v102 = sub_1004BC9A4();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v150 = v104;
        *v103 = 136315138;
        sub_100007274(v100, v134);
        v105 = sub_1004BBF04();
        v107 = v106;
        sub_100007214(v100, &qword_1005FFA60);
        v108 = sub_100004080(v105, v107, &v150);
        v97 = v144;

        *(v103 + 4) = v108;
        v109 = v145;
        _os_log_impl(&_mh_execute_header, v101, v102, "Caching bytecode at %s", v103, 0xCu);
        sub_100004C6C(v104);

        v110 = *(v109 + 8);
        (v110)(v139, v97);
      }

      else
      {

        sub_100007214(v100, &qword_1005FFA60);
        v110 = *(v78 + 8);
        (v110)(v99, v97);
      }

      v111 = v132;
      v150 = 0;
      v112 = [(objc_class *)v148 cacheBytecodeWithError:&v150];
      v113 = v150;
      if (v112)
      {
        (v147)(v111, v98, v97);
        v114 = v113;
        v115 = sub_1004B8094();
        v116 = sub_1004BC9A4();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          *v117 = 0;
          _os_log_impl(&_mh_execute_header, v115, v116, "Successfully cached bytecode", v117, 2u);
        }

        v118 = v111;
      }

      else
      {
        v119 = v150;
        sub_1004B69B4();

        swift_willThrow();
        v120 = v136;
        (v147)(v136, v98, v97);
        swift_errorRetain();
        v121 = sub_1004B8094();
        v122 = sub_1004BC994();

        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v147 = v110;
          v124 = v123;
          v125 = swift_slowAlloc();
          v150 = v125;
          *v124 = 136315138;
          swift_getErrorValue();
          v126 = sub_1004BDB04();
          v128 = v97;
          v129 = sub_100004080(v126, v127, &v150);

          *(v124 + 4) = v129;
          _os_log_impl(&_mh_execute_header, v121, v122, "An error has occurred while trying to cache bytecode: %s", v124, 0xCu);
          sub_100004C6C(v125);

          (v147)(v136, v128);
LABEL_52:
          v95 = v131;
          v96 = v130;
          isa = v148;
          goto LABEL_53;
        }

        v118 = v120;
      }

      (v110)(v118, v97);
      goto LABEL_52;
    }

    v90 = v150;
    sub_1004B69B4();

    swift_willThrow();
    (v147[1])(v146, v148);
    v91 = v130;
    [v130 invalidate];

    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000060AC()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_100006128()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(v1);
  return sub_1004BDBF4();
}

Swift::Int sub_1000061A0()
{
  v1 = *v0;
  sub_1004BDBA4();
  sub_1004BDBB4(v1);
  return sub_1004BDBF4();
}

uint64_t sub_1000061F4()
{
  sub_10000716C(v0 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E10Downloader_descriptor);
  v1 = OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E10Downloader_request;
  v2 = sub_1004B64E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000062C8()
{
  result = type metadata accessor for ApplicationScriptProvider.Descriptor(319);
  if (v1 <= 0x3F)
  {
    result = sub_1004B64E4();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000063B4()
{
  v0 = sub_100003ABC(&qword_1005FFA60);
  sub_100007108(v0, qword_1005FF590);
  v1 = sub_100007084(v0, qword_1005FF590);
  v2 = Datavault.music.unsafeMutableAddressor();
  swift_beginAccess();
  if (*v2)
  {

    static URL.+ infix(_:_:)();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1004B6B04();
  return (*(*(v4 - 8) + 56))(v1, v3, 1, v4);
}

id sub_1000064C0()
{
  v0 = sub_1004B6B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v12 - v5;
  v7 = [objc_opt_self() defaultManager];
  static URL.+ infix(_:_:)();

  static URL.+ infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_1004B6AA4();
  v8(v6, v0);
  v9 = sub_1004BBE24();

  v10 = [v7 fileExistsAtPath:v9];

  return v10;
}

uint64_t sub_1000066B8()
{
  v0 = sub_1004B80B4();
  __chkstk_darwin(v0);
  v1 = sub_1004B6B04();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  static URL.+ infix(_:_:)();

  static URL.+ infix(_:_:)();
  v8 = *(v2 + 8);
  v8(v5, v1);
  v9 = sub_1004B6B24();
  v8(v7, v1);
  return v9;
}

uint64_t sub_1000069F4()
{
  v1 = OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_versionPath;
  v2 = sub_1004B6B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100006ACC()
{
  result = sub_1004B6B04();
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

uint64_t sub_100006B70()
{
  [*(v0 + 16) invalidate];

  sub_100007214(v0 + 24, &qword_1005FFA58);

  return swift_deallocClassInstance();
}

uint64_t sub_100006C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004B6B04();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100006CC8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1004B6B04();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100006D6C()
{
  sub_100006E0C();
  if (v0 <= 0x3F)
  {
    sub_1004B6B04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100006E0C()
{
  if (!qword_1005FFA10)
  {
    type metadata accessor for ApplicationScriptProvider.Storage(255);
    v0 = sub_1004BD174();
    if (!v1)
    {
      atomic_store(v0, &qword_1005FFA10);
    }
  }
}

uint64_t getEnumTagSinglePayload for ApplicationScriptProvider.Intent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ApplicationScriptProvider.Intent(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100006FCC()
{
  result = qword_1005FFA50;
  if (!qword_1005FFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005FFA50);
  }

  return result;
}

uint64_t sub_100007020()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, qword_1005FF5A8);
  sub_100007084(v0, qword_1005FF5A8);
  return static Logger.music(_:)();
}

uint64_t sub_100007084(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1000070BC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t *sub_100007108(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000716C(uint64_t a1)
{
  v2 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000071C8()
{
  result = qword_1005FFA70;
  if (!qword_1005FFA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005FFA70);
  }

  return result;
}

uint64_t sub_100007214(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100003ABC(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100007274(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_1005FFA60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000072E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_1005FFA60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007354(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v5 = sub_100003ABC(&qword_1005FFA60);
  __chkstk_darwin(v5);
  v7 = &v20[-v6];
  v8 = sub_1004B6B04();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v20[-v13];
  type metadata accessor for ApplicationScriptProvider.Storage(0);
  v15 = swift_allocObject();
  if (qword_1005FF3F8 != -1)
  {
    swift_once();
  }

  v16 = sub_100007084(v5, qword_1005FF590);
  sub_100007274(v16, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_100007214(v7, &qword_1005FFA60);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v17 = *(v9 + 32);
    v17(v14, v7, v8);

    static URL.+ infix(_:_:)();

    (*(v9 + 8))(v14, v8);
    v17((v15 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_versionPath), v12, v8);
    *(v15 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_isUpdate) = v21 & 1;
    v18 = (v15 + OBJC_IVAR____TtCC24MusicScriptUpdateService25ApplicationScriptProviderP33_0D2AB3BEB3F9753D7B455D5AEAE42E6E7Storage_version);
    *v18 = a1;
    v18[1] = a2;
  }

  return v15;
}

uint64_t getEnumTagSinglePayload for ApplicationScriptProvider.ScriptError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ApplicationScriptProvider.ScriptError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100007798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100007818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationScriptProvider.Descriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000078A8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000078E0()
{
  result = type metadata accessor for ApplicationScriptProvider.Descriptor(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100007950()
{
  result = qword_1005FFB08;
  if (!qword_1005FFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005FFB08);
  }

  return result;
}

uint64_t JSThread.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  JSThread.init(name:)(a1, a2);
  return v4;
}

void *JSThread.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v17 = a1;
  v18 = a2;
  v16 = sub_1004BCB34();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004BCAF4();
  __chkstk_darwin(v7);
  v8 = sub_1004BA924();
  __chkstk_darwin(v8 - 8);
  sub_100009130(0, &qword_1005FF408);
  sub_1004BA914();
  v19 = &_swiftEmptyArrayStorage;
  sub_100009004(&qword_1005FF410, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003ABC(&qword_1005FF418);
  sub_100003B04();
  sub_1004BD2D4();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  v2[4] = sub_1004BCB74();
  v2[5] = &_swiftEmptyArrayStorage;
  v2[6] = 0;
  v2[7] = 0;
  v9 = [objc_allocWithZone(NSUUID) init];
  v10 = [v9 UUIDString];

  v11 = sub_1004BBE64();
  v13 = v12;

  v3[8] = v11;
  v3[9] = v13;
  v14 = v18;
  v3[2] = v17;
  v3[3] = v14;
  return v3;
}

uint64_t static JSThread.assertRunning(on:)()
{
  v0 = [objc_opt_self() currentThread];
  v1 = [v0 threadDictionary];

  v2 = sub_1004BBE24();
  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    return sub_100007DE8(v7);
  }

  result = swift_dynamicCast();
  if (result)
  {
  }

  return result;
}

uint64_t sub_100007DE8(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_1005FFA58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Alert.message.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JSThread.enqueueBlock(_:)(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  v5 = *(v2 + 32);
  v6 = swift_allocObject();
  v6[2] = &v14;
  v6[3] = v2;
  v6[4] = a1;
  v6[5] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000081F0;
  *(v7 + 24) = v6;
  v13[4] = sub_1000081FC;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100008224;
  v13[3] = &unk_1005A2CA0;
  v8 = _Block_copy(v13);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  else
  {
    if ((v14 - 1) >= 2)
    {
      if (v14)
      {
        v10 = v15;
        v11 = v14;
        v12 = v10;
        CFRunLoopSourceSignal(v12);
        CFRunLoopWakeUp(v11);
      }

      else
      {
        sub_1000084EC();
      }
    }

    sub_100008264(v14, v15);
  }

  return result;
}

uint64_t sub_100008040(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2[6];
  v8 = a2[7];
  v9 = *a1;
  v10 = *(a1 + 8);
  *a1 = v7;
  *(a1 + 8) = v8;
  sub_1000091BC(v7, v8);
  sub_1000091BC(v7, v8);
  sub_100008264(v9, v10);
  if ((v7 - 1) >= 2)
  {
    if (v7)
    {
      v11 = v7;
      v12 = v8;
    }

    else
    {
      v11 = a2[6];
      v12 = a2[7];
      *(a2 + 3) = xmmword_1004C4F70;
    }

    sub_100008264(v11, v12);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  swift_beginAccess();
  v14 = a2[5];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2[5] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_100009200(0, v14[2] + 1, 1, v14);
    a2[5] = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_100009200((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v18 = &v14[2 * v17];
  v18[4] = sub_1000081FC;
  v18[5] = v13;
  a2[5] = v14;
  return swift_endAccess();
}

uint64_t sub_1000081B0()
{

  return swift_deallocObject();
}

uint64_t sub_10000824C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100008264(void *a1, void *a2)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1000082A8()
{
  v1 = v0;
  v13 = &_swiftEmptyArrayStorage;
  v2 = *(v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = &v13;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100009128;
  *(v4 + 24) = v3;
  aBlock[4] = sub_100009350;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008224;
  aBlock[3] = &unk_1005A2E98;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v13;
    v8 = v13[2];
    if (v8)
    {

      v9 = v7 + 5;
      do
      {
        v10 = *(v9 - 1);

        v11 = objc_autoreleasePoolPush();
        v10();

        objc_autoreleasePoolPop(v11);
        v9 += 2;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_100008478(void *a1, uint64_t a2)
{
  swift_beginAccess();
  *a1 = *(a2 + 40);

  *(a2 + 40) = &_swiftEmptyArrayStorage;
}

void sub_1000084EC()
{
  sub_100009130(0, &qword_1005FFC50);
  v4[3] = type metadata accessor for JSThread();
  v4[0] = v0;
  memset(v3, 0, sizeof(v3));

  v2 = sub_1000085C8(v4, "_scriptingThreadMain", v3);
  [v2 setQualityOfService:25];
  v1 = sub_1004BBE24();
  [v2 setName:v1];

  [v2 start];
}

id sub_1000085C8(void *a1, uint64_t a2, void *a3)
{
  sub_100009178(a1, a1[3]);
  v6 = sub_1004BD9A4();
  v7 = a3[3];
  if (v7)
  {
    v8 = sub_100009178(a3, a3[3]);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_1004BD9A4();
    (*(v9 + 8))(v11, v7);
    sub_100004C6C(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTarget:v6 selector:a2 object:v12];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100004C6C(a1);
  return v13;
}

void sub_100008754()
{
  v1 = [objc_opt_self() currentThread];
  v2 = [v1 threadDictionary];

  v3 = sub_1004BBE24();

  v4 = sub_1004BBE24();
  [v2 setObject:v3 forKey:v4];

  context.version = 0;
  context.info = v0;
  memset(&context.retain, 0, 56);
  context.perform = sub_100008B90;
  v5 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &context);
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  v7 = CFRunLoopGetCurrent();
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = v6;
  CFRunLoopAddSource(v8, v9, kCFRunLoopDefaultMode);
  v26 = 0;
  v10 = v0[4];
  v11 = swift_allocObject();
  v11[2] = v0;
  v11[3] = v8;
  v11[4] = v9;
  v11[5] = &v26;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100009094;
  *(v12 + 24) = v11;
  v24 = sub_100009350;
  v25 = v12;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100008224;
  v23 = &unk_1005A2DA8;
  v13 = _Block_copy(&v20);
  v14 = v8;
  v15 = v9;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v26 == 1)
  {
    CFRunLoopSourceSignal(v15);

    CFRunLoopWakeUp(v14);
  }

  else
  {
  }

  CFRunLoopRun();
  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  *(v16 + 24) = &v26;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1000090E8;
  *(v17 + 24) = v16;
  v24 = sub_100009350;
  v25 = v17;
  v20 = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_100008224;
  v23 = &unk_1005A2E20;
  v18 = _Block_copy(&v20);

  dispatch_sync(v10, v18);
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_12;
  }

  if (v26 == 1)
  {
    sub_1000084EC();
  }
}

uint64_t sub_100008B90(uint64_t result)
{
  if (result)
  {

    sub_1000082A8();
  }

  return result;
}

uint64_t sub_100008BD4(void *a1, void *a2, void *a3, BOOL *a4)
{
  v7 = a1[6];
  v8 = a1[7];
  a1[6] = a2;
  a1[7] = a3;
  v9 = a2;
  v10 = a3;
  sub_100008264(v7, v8);
  result = swift_beginAccess();
  *a4 = *(a1[5] + 16) != 0;
  return result;
}

void sub_100008C58(void *a1, BOOL *a2)
{
  v4 = a1[6];
  v5 = a1[7];
  a1[6] = 0;
  a1[7] = 0;
  sub_100008264(v4, v5);
  swift_beginAccess();
  v6 = *(a1[5] + 16);
  *a2 = v6 != 0;
  if (v6)
  {
    v7 = a1[6];
    v8 = a1[7];
    *(a1 + 3) = xmmword_1004C4F70;
    sub_100008264(v7, v8);
  }
}

uint64_t sub_100008D10(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 == 1)
    {
      return v3 == 1;
    }

    if (v2 == 2)
    {
      return v3 == 2;
    }

    if (v3 >= 3)
    {
      type metadata accessor for CFRunLoop(0);
      sub_100009004(&qword_1005FFC40, type metadata accessor for CFRunLoop);
      if (sub_1004B71E4())
      {
        type metadata accessor for CFRunLoopSource(0);
        sub_100009004(&qword_1005FFC48, type metadata accessor for CFRunLoopSource);
        return sub_1004B71E4() & 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

id *JSThread.deinit()
{

  sub_100008264(v0[6], v0[7]);

  return v0;
}

uint64_t JSThread.__deallocating_deinit()
{

  sub_100008264(v0[6], v0[7]);

  return swift_deallocClassInstance();
}

uint64_t sub_100008F04(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100008F1C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100008F28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100008F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100008FD4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_100009004(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000904C()
{

  return swift_deallocObject();
}

uint64_t sub_1000090B0()
{

  return swift_deallocObject();
}

uint64_t sub_1000090F0()
{

  return swift_deallocObject();
}

uint64_t sub_100009130(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void *sub_100009178(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_1000091BC(id result, void *a2)
{
  if (result >= 3)
  {
    v3 = result;

    return a2;
  }

  return result;
}

void *sub_100009200(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003ABC(&qword_1005FFC58);
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
    sub_100003ABC(&qword_1005FFC60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10000B09C(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MarqueeView.m" lineNumber:260 description:@"viewForContentSize must be a subview of MPUMarqueeView's contentView."];
}

uint64_t sub_10000B120()
{
  result = sub_10000B140();
  qword_100617118 = result;
  return result;
}

uint64_t sub_10000B140()
{
  v0 = sub_1004B6B04();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v59 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003ABC(&qword_100600DE0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v55 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v55 - v14;
  __chkstk_darwin(v13);
  v17 = &v55 - v16;
  v61 = sub_1001A4F9C(&_swiftEmptyArrayStorage);
  sub_100003ABC(&qword_100600DE8);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v63 = *(v4 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004C5070;
  v65 = v18;
  v58 = v19;
  v20 = v19 + v18;
  v21 = objc_opt_self();
  v22 = [v21 mainBundle];
  v23 = [v22 resourceURL];

  if (v23)
  {
    sub_1004B6A94();

    v24 = *(v1 + 56);
    v25 = v17;
    v26 = 0;
  }

  else
  {
    v24 = *(v1 + 56);
    v25 = v17;
    v26 = 1;
  }

  v64 = v24;
  v24(v25, v26, 1, v0);
  v27 = v1;
  sub_10000F708(v17, v20);
  type metadata accessor for BundleFinder();
  v28 = [v21 bundleForClass:swift_getObjCClassFromMetadata()];
  v29 = [v28 resourceURL];

  if (v29)
  {
    sub_1004B6A94();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = v60;
  v56 = v27;
  v32 = v15;
  v33 = v15;
  v34 = v64;
  v64(v32, v30, 1, v0);
  v35 = v63;
  sub_10000F708(v33, v20 + v63);
  v36 = [v21 mainBundle];
  v37 = [v36 bundleURL];

  sub_1004B6A94();
  v62 = (v27 + 7);
  v34(v20 + 2 * v35, 0, 1, v0);
  v66 = v61;
  sub_100022A64(v58);
  v38 = v66;
  v39 = v66[2];
  if (v39)
  {
    v40 = 0;
    v41 = v65 + v66;
    v65 = (v56 + 6);
    v61 = (v56 + 1);
    v56 += 4;
    v57 = "AC12BundleFinder";
    v58 = v39;
    while (v40 < v38[2])
    {
      sub_10000F778(v41, v9, &qword_100600DE0);
      v42 = *v65;
      if ((*v65)(v9, 1, v0) == 1)
      {
        sub_10000F7E0(v9);
        v43 = 1;
      }

      else
      {
        sub_1004B6A64();
        (*v61)(v9, v0);
        v43 = 0;
      }

      v64(v12, v43, 1, v0);
      sub_10000F778(v12, v31, &qword_100600DE0);
      if (v42(v31, 1, v0) == 1)
      {
        sub_10000F7E0(v12);
      }

      else
      {
        v44 = v38;
        v45 = v12;
        v46 = v9;
        v47 = v59;
        (*v56)(v59, v31, v0);
        v48 = objc_allocWithZone(NSBundle);
        sub_1004B6A44(v49);
        v51 = v50;
        v52 = [v48 initWithURL:v50];

        v31 = v60;
        v53 = v47;
        v9 = v46;
        v12 = v45;
        v38 = v44;
        v39 = v58;
        (*v61)(v53, v0);
        sub_10000F7E0(v12);
        if (v52)
        {

          return v52;
        }
      }

      ++v40;
      v41 += v63;
      if (v39 == v40)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1004BD624();
  __break(1u);
  return result;
}

double variable initialization expression of AnyAction.displayConfiguration@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1004C5080;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t variable initialization expression of ArtworkVideoReportingController.signpostsForIndex(uint64_t a1, uint64_t a2)
{
  swift_getTupleTypeMetadata2();
  v4 = sub_1004BC304();
  v5 = sub_1000CC72C(v4, a1, &type metadata for ComponentRenderEventSignposts, a2);

  return v5;
}

uint64_t sub_10000B8E8(uint64_t *a1)
{
  sub_100003ABC(a1);
  v1 = swift_allocObject();
  *(v1 + 16) = [objc_opt_self() standardUserDefaults];
  return v1;
}

id variable initialization expression of MetricsReportingController.carFocusedMetricsController()
{
  v0 = objc_allocWithZone(SSMetricsController);

  return [v0 init];
}

uint64_t variable initialization expression of MetricsReportingController.carMetricsReporter()
{
  type metadata accessor for CarNowPlayingMetrics.Reporter();

  return swift_allocObject();
}

double variable initialization expression of ApplicationCapabilities.ratingWarning@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x7FFFFFFFFFFFFFFFLL;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

id variable initialization expression of ApplicationCapabilities.subscriptionStatus()
{
  v0 = [objc_opt_self() sharedController];
  v1 = [v0 musicSubscriptionStatus];

  return v1;
}

uint64_t variable initialization expression of ApplicationCapabilities.Controller.storeBag()
{
  if (qword_1005FFED8 != -1)
  {
    swift_once();
  }

  sub_100003ABC(&qword_100603560);
  UnfairLock.locked<A>(_:)(sub_10000E7D8);
  return v1;
}

id variable initialization expression of BackgroundRefreshController.cloudClient()
{
  v0 = objc_allocWithZone(ICCloudClient);

  return [v0 init];
}

uint64_t variable initialization expression of BagProvider.durableObservers()
{
  v0 = type metadata accessor for BagProvider.Observer();

  return WeakArray.init(_:)(&_swiftEmptyArrayStorage, v0);
}

uint64_t variable initialization expression of BagProvider.logger()
{
  if (qword_1005FFF20 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.musicBag;

  return sub_1004B80C4();
}

id variable initialization expression of BagProvider.retry()
{
  v0 = objc_allocWithZone(type metadata accessor for BagProvider.Retry());

  return [v0 init];
}

uint64_t variable initialization expression of Gliss.Coordinator.queuedItem@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t variable initialization expression of Gliss.Transition.animations()
{
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata1();

  return sub_1004BC304();
}

uint64_t variable initialization expression of Gliss.Transition.completions()
{
  type metadata accessor for Gliss.Transition();
  swift_getFunctionTypeMetadata2();

  return sub_1004BC304();
}

double variable initialization expression of Gliss.Transition.gestureState@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 2;
  return result;
}

uint64_t variable initialization expression of CloudLibrary.StatusObserver._hasDisregardedBanner()
{
  v3 = 2;
  v2[0] = 0xD000000000000014;
  v2[1] = 0x80000001004FC250;
  v0 = [objc_opt_self() standardUserDefaults];
  sub_10000E7F4();
  UserDefault.init(wrappedValue:defaults:key:)(&v3, v0, v2, &type metadata for String, &v4);
  return v4;
}

uint64_t variable initialization expression of CloudLibrary.StatusObserver.capabilitiesController()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }
}

void *variable initialization expression of MusicLibrary.ActionableStateController.itemStateSubscriptions()
{
  if (!(&_swiftEmptyArrayStorage >> 62) || !sub_1004BD6A4())
  {
    return &_swiftEmptySetSingleton;
  }

  return sub_100019E14(&_swiftEmptyArrayStorage);
}

id variable initialization expression of Library.Menu.Request.librarySource()
{
  result = [objc_opt_self() deviceMediaLibrary];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_10000C0B0()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v1 = result;
    v2 = [result hasProperNetworkConditionsToShowCloudMedia];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double variable initialization expression of PlaybackController.nowPlayingPresentationDescriptor@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of PlaybackTimeObserver.durationSnapshot@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 2;
  return result;
}

id variable initialization expression of Player._path()
{
  v0 = [objc_opt_self() systemRoute];
  v1 = [v0 isDeviceRoute];
  v2 = objc_opt_self();
  if (v1)
  {
    v3 = v2;
    if (qword_100600040 != -1)
    {
      swift_once();
    }

    v4 = sub_1004BBE24();
    v5 = [v3 systemMusicPathWithRoute:v0 playerID:v4];
  }

  else
  {
    v5 = [v2 pathWithRoute:v0 bundleID:0 playerID:0];
  }

  return v5;
}

uint64_t variable initialization expression of Player.nowPlayingConfiguration()
{
  if (qword_100600078 != -1)
  {
    swift_once();
  }

  v0 = qword_1006065C0;
  v1 = qword_1006065C0;
  return v0;
}

uint64_t _s9MusicCore11BagProviderC4lock33_D1F028703756EAFCB4E62A24E619467FLL0A9Utilities10UnfairLockCvpfi_0()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  return UnfairLock.init()();
}

id sub_10000C370()
{
  if (qword_100600078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006065C0;

  return v1;
}

uint64_t variable initialization expression of MusicItemState._playabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  v3 = sub_1004BAD54();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t variable initialization expression of MusicItemState._previewCapabilityStatus@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v3 = sub_1004BAD64();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:);
  v5 = sub_1004BAD74();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

id variable initialization expression of PlaylistCovers.ArtworkDataSource.cache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

double variable initialization expression of PresentationSource.position@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 40) = xmmword_1004C5090;
  return result;
}

uint64_t variable initialization expression of RequestResponse.Controller.enqueuedRevisionCompletions()
{
  type metadata accessor for RequestResponse.Controller();
  type metadata accessor for RequestResponse.Revision();
  swift_getFunctionTypeMetadata2();

  return sub_1004BC304();
}

uint64_t variable initialization expression of RequestResponse.Controller.revisionIDCompletionsMap()
{
  type metadata accessor for RequestResponse.Controller();
  type metadata accessor for RequestResponse.Revision();
  swift_getFunctionTypeMetadata2();
  v0 = sub_1004BC3B4();
  swift_getTupleTypeMetadata2();
  v1 = sub_1004BC304();
  v2 = sub_1000CC72C(v1, &type metadata for Int, v0, &protocol witness table for Int);

  return v2;
}

double variable initialization expression of GroupActivitiesManager._reaction@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_10000C7DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t variable initialization expression of ExplicitRestrictionsController.symbol()
{
  if (qword_100600720 != -1)
  {
    swift_once();
  }

  v0 = static ExplicitRestrictionsController.symbols;

  return v0;
}

uint64_t variable initialization expression of OptimisticValue.transaction@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OptimisticValue.Transaction();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void *sub_10000C9E0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_10000CA44(void *a1, uint64_t *a2)
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

void *sub_10000CAB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000CADC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10000CB80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004BBE64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_10000CBC8(_DWORD *a1, int *a2)
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

uint64_t sub_10000CC3C(uint64_t a1, id *a2)
{
  result = sub_1004BBE44();
  *a2 = 0;
  return result;
}

uint64_t sub_10000CCB4(uint64_t a1, id *a2)
{
  v3 = sub_1004BBE54();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000CD34@<X0>(void *a1@<X8>)
{
  sub_1004BBE64();
  v2 = sub_1004BBE24();

  *a1 = v2;
  return result;
}

uint64_t sub_10000CD78(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600C40, type metadata accessor for MPCPlayerRequestError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000CDE4(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600C40, type metadata accessor for MPCPlayerRequestError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000CE50(uint64_t a1)
{
  v2 = sub_10000ED58(&unk_100606280, type metadata accessor for MPCPlayerRequestError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

Swift::Int sub_10000CF60()
{
  sub_1004BDBA4();
  swift_getWitnessTable();
  sub_1004B71F4();
  return sub_1004BDBF4();
}

uint64_t sub_10000CFC8()
{
  swift_getWitnessTable();

  return sub_1004B71E4();
}

uint64_t sub_10000D038@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10000E5B8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10000D088(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000D0F4(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000D160(void *a1, uint64_t a2)
{
  v4 = sub_10000ED58(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000D214(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ED58(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000D2A4(uint64_t a1)
{
  v2 = sub_10000ED58(&unk_100606280, type metadata accessor for MPCPlayerRequestError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000D310(uint64_t a1)
{
  v2 = sub_10000ED58(&unk_100606280, type metadata accessor for MPCPlayerRequestError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000D37C(void *a1, uint64_t a2)
{
  v4 = sub_10000ED58(&unk_100606280, type metadata accessor for MPCPlayerRequestError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000D40C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ED58(&unk_100606280, type metadata accessor for MPCPlayerRequestError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000D498(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F90, type metadata accessor for MPCError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000D504(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F90, type metadata accessor for MPCError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000D570(void *a1, uint64_t a2)
{
  v4 = sub_10000ED58(&qword_100600F90, type metadata accessor for MPCError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000D600(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ED58(&qword_100600F90, type metadata accessor for MPCError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10000D68C(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F40, type metadata accessor for MPCMusicBehaviorError);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000D6F8(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F40, type metadata accessor for MPCMusicBehaviorError);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000D764(void *a1, uint64_t a2)
{
  v4 = sub_10000ED58(&qword_100600F40, type metadata accessor for MPCMusicBehaviorError);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000D7F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ED58(&qword_100600F40, type metadata accessor for MPCMusicBehaviorError);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000D870()
{
  sub_1004BDBA4();
  sub_1004BBCE4();
  return sub_1004BDBF4();
}

uint64_t sub_10000D8DC()
{
  sub_10000ED58(&qword_100600FD0, type metadata accessor for OpenExternalURLOptionsKey);
  sub_10000ED58(&qword_100600FD8, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_1004BD744();
}

uint64_t sub_10000D99C()
{
  sub_10000ED58(&qword_100601000, type metadata accessor for Name);
  sub_10000ED58(&qword_100601008, type metadata accessor for Name);

  return sub_1004BD744();
}

uint64_t sub_10000DA58()
{
  sub_10000ED58(&qword_100600CA0, type metadata accessor for ICURLBagKey);
  sub_10000ED58(&qword_100600CA8, type metadata accessor for ICURLBagKey);

  return sub_1004BD744();
}

uint64_t sub_10000DB14()
{
  sub_10000ED58(&qword_100600C90, type metadata accessor for ICPrivacyIdentifier);
  sub_10000ED58(&qword_100600C98, type metadata accessor for ICPrivacyIdentifier);

  return sub_1004BD744();
}

uint64_t sub_10000DBD0(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600FA8, type metadata accessor for MPCPlayerEnqueueError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000DC3C(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600FA8, type metadata accessor for MPCPlayerEnqueueError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000DCA8(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000DD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ED58(&qword_100600F50, type metadata accessor for MPCPlayerEnqueueError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000DD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ED58(&unk_100606280, type metadata accessor for MPCPlayerRequestError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000DE1C(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F60, type metadata accessor for MPCError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000DE88(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F60, type metadata accessor for MPCError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000DEF4(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F90, type metadata accessor for MPCError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000DF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ED58(&qword_100600F90, type metadata accessor for MPCError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000DFE4(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F10, type metadata accessor for MPCMusicBehaviorError);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000E050(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F10, type metadata accessor for MPCMusicBehaviorError);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000E0BC(uint64_t a1)
{
  v2 = sub_10000ED58(&qword_100600F40, type metadata accessor for MPCMusicBehaviorError);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_10000E128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000ED58(&qword_100600F40, type metadata accessor for MPCMusicBehaviorError);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000E1AC()
{
  sub_10000ED58(&qword_100600FF0, type metadata accessor for AttributeName);
  sub_10000ED58(&qword_100600FF8, type metadata accessor for AttributeName);

  return sub_1004BD744();
}

uint64_t sub_10000E268()
{
  sub_10000ED58(&qword_100600FE0, type metadata accessor for Key);
  sub_10000ED58(&qword_100600FE8, type metadata accessor for Key);

  return sub_1004BD744();
}

uint64_t sub_10000E324@<X0>(void *a1@<X8>)
{
  v2 = sub_1004BBE24();

  *a1 = v2;
  return result;
}

uint64_t sub_10000E36C()
{
  sub_10000ED58(&qword_100600C80, type metadata accessor for MSVAutoBugCaptureDomain);
  sub_10000ED58(&qword_100600C88, type metadata accessor for MSVAutoBugCaptureDomain);

  return sub_1004BD744();
}

uint64_t sub_10000E428()
{
  sub_1004BBE64();
  v0 = sub_1004BC0C4();

  return v0;
}

uint64_t sub_10000E464()
{
  sub_1004BBE64();
  sub_1004BBF84();
}

Swift::Int sub_10000E4B8()
{
  sub_1004BBE64();
  sub_1004BDBA4();
  sub_1004BBF84();
  v0 = sub_1004BDBF4();

  return v0;
}

uint64_t sub_10000E52C()
{
  v0 = sub_1004BBE64();
  v2 = v1;
  if (v0 == sub_1004BBE64() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1004BD9C4();
  }

  return v5 & 1;
}

uint64_t sub_10000E5B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_10000E5F0(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100600D10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003ABC(&qword_100600D18);
    v7 = sub_1004BD6F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000F778(v9, v5, &qword_100600D10);
      result = sub_100034820(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1004B6D14();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10000E7F4()
{
  result = qword_1006007F0;
  if (!qword_1006007F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006007F0);
  }

  return result;
}

uint64_t type metadata accessor for BundleFinder()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

__n128 _s11ProgressionVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000E8E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_10000E924(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 sub_10000E974(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000E990(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10000E9E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlowModifier(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for GlowModifier(uint64_t result, int a2, int a3)
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

__n128 sub_10000EC20(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000EC2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000EC4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10000ED58(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000F624()
{
  result = qword_100600C68;
  if (!qword_100600C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100600C68);
  }

  return result;
}

uint64_t sub_10000F708(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100600DE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F778(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100003ABC(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000F7E0(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100600DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000F854(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000F874(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

__n128 sub_10000F9A0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000F9B4(uint64_t a1, int a2)
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

uint64_t sub_10000F9D4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Lyrics.AudioAttribute(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t ActionDeclaring.init(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1004BD174();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = __chkstk_darwin(v10);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v25 - v17;
  v26 = a1;
  sub_100004DE4(a1, v28);
  sub_100003ABC(&qword_100601140);
  v19 = swift_dynamicCast();
  v20 = *(v13 + 56);
  if (v19)
  {
    v20(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v18, v12, AssociatedTypeWitness);
    (*(v13 + 16))(v16, v18, AssociatedTypeWitness);
    v21 = v27;
    (*(a3 + 24))(v16, a2, a3);
    sub_100004C6C(v26);
    (*(v13 + 8))(v18, AssociatedTypeWitness);
    v22 = 0;
    v23 = v21;
  }

  else
  {
    v22 = 1;
    v20(v12, 1, 1, AssociatedTypeWitness);
    sub_100004C6C(v26);
    (*(v9 + 8))(v12, v8);
    v23 = v27;
  }

  return (*(*(a2 - 8) + 56))(v23, v22, 1, a2);
}

__n128 AnyAction.init(identifier:contexts:resolver:logs:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1000128E0(a1, a2, a3, a4, v10);
  v6 = v10[7];
  *(a5 + 96) = v10[6];
  *(a5 + 112) = v6;
  *(a5 + 128) = v10[8];
  v7 = v10[3];
  *(a5 + 32) = v10[2];
  *(a5 + 48) = v7;
  v8 = v10[5];
  *(a5 + 64) = v10[4];
  *(a5 + 80) = v8;
  result = v10[1];
  *a5 = v10[0];
  *(a5 + 16) = result;
  return result;
}

uint64_t AnyAction.canPerform.getter()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  __break(1u);
  return result;
}

uint64_t sub_100010AD8(uint64_t a1)
{
  v1[2] = a1;
  sub_1004BC474();
  v1[3] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100010B70, v3, v2);
}

uint64_t sub_100010B70()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_100009178(v1, v2);
  v6 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_100010C94;

  return v6(v2, v3);
}

uint64_t sub_100010C94()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_100013850;
  }

  else
  {
    v5 = sub_100013854;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100010DD0(uint64_t a1)
{
  v1[2] = a1;
  sub_1004BC474();
  v1[3] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100010E68, v3, v2);
}

uint64_t sub_100010E68()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_100009178(v1, v2);
  v6 = (*(v3 + 40) + **(v3 + 40));
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_100010F8C;

  return v6(v2, v3);
}

uint64_t sub_100010F8C()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_10001112C;
  }

  else
  {
    v5 = sub_1000110C8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000110C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001112C()
{

  v1 = *(v0 + 8);

  return v1();
}

void *AnyAction.submenu.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t AnyAction.execute()()
{
  v1[21] = v0;
  sub_1004BC474();
  v1[22] = sub_1004BC464();
  v3 = sub_1004BC3E4();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(sub_10001125C, v3, v2);
}

void sub_10001125C()
{
  v31 = v0;
  v1 = *(v0[21] + 80);
  if (!v1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v1();
  if (v3 == 1)
  {
    v4 = *(v0[21] + 96);
    if (v4)
    {
      v29 = (v4 + *v4);
      v5 = swift_task_alloc();
      v0[25] = v5;
      *v5 = v0;
      v5[1] = sub_100011604;

      v29();
      return;
    }

LABEL_18:
    __break(1u);
    return;
  }

  v6 = v2;
  v7 = v3;

  v8 = sub_1000130F8(v6, v7);
  v9 = (v1)(v8);
  if (v10 == 1)
  {
    sub_10001310C();
    v11 = swift_allocError();
    *v12 = 0;
    v12[1] = 0;
  }

  else
  {
    v13 = v9;
    v14 = v10;
    sub_10001310C();
    v11 = swift_allocError();
    *v15 = v13;
    v15[1] = v14;
  }

  swift_willThrow();
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v16 = v0[21];
  v17 = sub_1004B80B4();
  sub_100007084(v17, static Logger.actions);
  sub_100013090(v16, (v0 + 2));
  swift_errorRetain();
  v18 = sub_1004B8094();
  v19 = sub_1004BC984();
  sub_1000130C8(v16);

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[21];
    v21 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v21 = 136446466;
    v22 = ActionType.rawValue.getter(*v20);
    v24 = sub_100012018(v22, v23, v30);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    v0[20] = v11;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v25 = sub_1004BBF04();
    v27 = sub_100012018(v25, v26, v30);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Failed to perform action %{public}s with error %{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v28 = v0[1];

  v28();
}

uint64_t sub_100011604()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_1000119F8;
  }

  else
  {
    v5 = sub_100011740;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_100011740()
{
  v1 = *(*(v0 + 168) + 112);
  if (v1)
  {
    v3 = (v1 + *v1);
    v2 = swift_task_alloc();
    *(v0 + 216) = v2;
    *v2 = v0;
    v2[1] = sub_100011838;

    v3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100011838()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_100011C18;
  }

  else
  {
    v5 = sub_100011974;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100011974()
{
  v1 = *(*(v0 + 168) + 128);
  if (v1)
  {
    v1();

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000119F8()
{
  v17 = v0;

  v1 = v0[26];
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = sub_1004B80B4();
  sub_100007084(v3, static Logger.actions);
  sub_100013090(v2, (v0 + 2));
  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();
  sub_1000130C8(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = sub_100012018(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v11 = sub_1004BBF04();
    v13 = sub_100012018(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t sub_100011C18()
{
  v17 = v0;

  v1 = v0[28];
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v2 = v0[21];
  v3 = sub_1004B80B4();
  sub_100007084(v3, static Logger.actions);
  sub_100013090(v2, (v0 + 2));
  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();
  sub_1000130C8(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v16[0] = swift_slowAlloc();
    *v7 = 136446466;
    v8 = ActionType.rawValue.getter(*v6);
    v10 = sub_100012018(v8, v9, v16);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v0[20] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30);
    v11 = sub_1004BBF04();
    v13 = sub_100012018(v11, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to perform action %{public}s with error %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_willThrow();
  v14 = v0[1];

  return v14();
}

uint64_t Logger.actions.unsafeMutableAddressor()
{
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v0 = sub_1004B80B4();

  return sub_100007084(v0, static Logger.actions);
}

uint64_t sub_100011E9C()
{
  v0 = sub_1004B80B4();
  sub_100007108(v0, static Logger.actions);
  sub_100007084(v0, static Logger.actions);
  return sub_1004B80A4();
}

uint64_t static Logger.actions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();
  v3 = sub_100007084(v2, static Logger.actions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100011FBC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100012018(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100012018(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000120E4(v11, 0, 0, 1, a1, a2);
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
    sub_100004DE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004C6C(v11);
  return v7;
}

unint64_t sub_1000120E4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000121F0(a5, a6);
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
    result = sub_1004BD4C4();
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

char *sub_1000121F0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10001223C(a1, a2);
  sub_10001236C(&off_1005A2FD0);
  return v3;
}

char *sub_10001223C(uint64_t a1, unint64_t a2)
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

  v6 = sub_10028FD58(v5, 0);
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

  result = sub_1004BD4C4();
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
        v10 = sub_1004BC044();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10028FD58(v10, 0);
        result = sub_1004BD3F4();
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

uint64_t sub_10001236C(uint64_t result)
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

  result = sub_100012458(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

char *sub_100012458(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&unk_100609380);
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

__n128 sub_10001254C@<Q0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_100009178(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v5 = a1[4];
  *&v40 = DynamicType;
  *(&v40 + 1) = v5;
  sub_100003ABC(&qword_100601168);
  v6 = sub_1004BBF04();
  v28 = v7;
  v29 = v6;
  sub_10001342C(a1, &v40);
  sub_100003ABC(&qword_100601170);
  sub_100003ABC(&qword_100601178);
  if (swift_dynamicCast())
  {
    v8 = *(&v58 + 1);
    v9 = v59;
    sub_100009178(&v57, *(&v58 + 1));
    (*(v9 + 8))(v60, v8, v9);
    v10 = v60[1];
    v11 = v60[2];
    v26 = v60[3];
    v24 = v60[0];
    v25 = v60[4];
    v23 = v60[5];
    sub_100004C6C(&v57);
  }

  else
  {
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_100007214(&v57, &qword_100601180);
    v24 = 0;
    v25 = 0;
    v11 = 0;
    v26 = 0;
    v23 = 0;
    v10 = 1;
  }

  v12 = a1[3];
  v13 = a1[4];
  sub_100009178(a1, v12);
  v22 = (*(v13 + 24))(v12, v13);
  sub_10001342C(a1, &v40);
  v21 = swift_allocObject();
  sub_100013414(&v40, v21 + 16);
  sub_10001342C(a1, &v40);
  v20 = swift_allocObject();
  sub_100013414(&v40, v20 + 16);
  sub_10001342C(a1, &v40);
  v19 = swift_allocObject();
  sub_100013414(&v40, v19 + 16);
  sub_10001342C(a1, &v40);
  v14 = swift_allocObject();
  sub_100013414(&v40, v14 + 16);
  LOBYTE(v31) = a2;
  *(&v31 + 1) = v29;
  v32.n128_u64[0] = v28;
  v32.n128_u64[1] = v24;
  *&v33 = v10;
  *(&v33 + 1) = v11;
  *&v34 = v26;
  *(&v34 + 1) = v25;
  *&v35 = v23;
  *(&v35 + 1) = v22;
  *&v36 = sub_100013570;
  *(&v36 + 1) = v21;
  *&v37 = &unk_1004C79C0;
  *(&v37 + 1) = v20;
  *&v38 = &unk_1004C79D0;
  *(&v38 + 1) = v19;
  *&v39 = sub_1000137E0;
  *(&v39 + 1) = v14;
  sub_100013090(&v31, &v40);
  sub_100004C6C(a1);
  LOBYTE(v40) = a2;
  *(&v40 + 1) = v29;
  v41 = v28;
  v42 = v24;
  v43 = v10;
  v44 = v11;
  v45 = v26;
  v46 = v25;
  v47 = v23;
  v48 = v22;
  v49 = sub_100013570;
  v50 = v21;
  v51 = &unk_1004C79C0;
  v52 = v20;
  v53 = &unk_1004C79D0;
  v54 = v19;
  v55 = sub_1000137E0;
  v56 = v14;
  sub_1000130C8(&v40);
  v15 = v38;
  *(a3 + 96) = v37;
  *(a3 + 112) = v15;
  *(a3 + 128) = v39;
  v16 = v34;
  *(a3 + 32) = v33;
  *(a3 + 48) = v16;
  v17 = v36;
  *(a3 + 64) = v35;
  *(a3 + 80) = v17;
  result = v32;
  *a3 = v31;
  *(a3 + 16) = result;
  return result;
}

void sub_1000128E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v63 = a2;
  v5 = a1;
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) == 0)
  {
    v42 = a4;
    if (((1 << a1) & 0x700000000180) != 0)
    {
      v43 = sub_1000134E4();
      v44 = &type metadata for Feature.MusicKit;
    }

    else
    {
      LOBYTE(v96) = 2;
      v43 = sub_100013490();
      v44 = &type metadata for Feature.MediaPlayer;
    }

    v52 = FeatureFlagsKey.isEnabled.getter(v44, v43);
    a4 = v42;
    if ((v52 & 1) == 0)
    {

      if (qword_1006006D8 != -1)
      {
LABEL_34:
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall != 1)
      {
        goto LABEL_11;
      }

      *&v96 = 0;
      *(&v96 + 1) = 0xE000000000000000;
      sub_1004BD404(32);
      v53 = ActionType.rawValue.getter(v5);
      v55 = v54;

      *&v96 = v53;
      *(&v96 + 1) = v55;
      v113._countAndFlagsBits = 0xD00000000000001ELL;
      v113._object = 0x80000001004FC400;
      sub_1004BC024(v113);
      v28 = *(&v96 + 1);
      v27 = v96;
      goto LABEL_10;
    }
  }

  v59 = a4;
  v8 = a3[3];
  v9 = a3[4];
  sub_100009178(a3, v8);
  LOBYTE(v96) = v5;
  v10 = *(v9 + 8);
  v11 = sub_100013340();
  v12 = v10(&v96, &type metadata for ActionType, v11, v8, v9);
  if (!v12)
  {

    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_1004BD404(22);
    v24 = ActionType.rawValue.getter(v5);
    v26 = v25;

    *&v96 = v24;
    *(&v96 + 1) = v26;
    v106._countAndFlagsBits = 0xD000000000000014;
    v106._object = 0x80000001004FC3A0;
    sub_1004BC024(v106);
    v28 = *(&v96 + 1);
    v27 = v96;
LABEL_10:
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v27, v28, 80, 120, 0xE100000000000000);

    goto LABEL_11;
  }

  v57 = a5;
  v58 = v5;
  v56 = a3;
  v62 = *(v63 + 16);
  if (v62)
  {
    v14 = v12;
    v15 = v13;
    a5 = 0;
    a3 = (v63 + 32);
    v60 = v12 - 8;
    v61 = v13 + 8;
    while (1)
    {
      if (a5 >= *(v63 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      sub_100004DE4(a3, v82);
      v16 = *(v15 + 8);
      v17 = sub_1004BD174();
      v18 = *(v17 - 8);
      __chkstk_darwin(v17);
      v20 = &v56 - v19;
      v16(v82, v14, v15);
      v5 = *(v14 - 8);
      if ((*(v5 + 48))(v20, 1, v14) != 1)
      {
        break;
      }

      a5 = (a5 + 1);
      (*(v18 + 8))(v20, v17);
      v83 = 0u;
      v84 = 0u;
      v85 = 0;
      sub_100007214(&v83, &qword_100601158);
      a3 += 4;
      if (v62 == a5)
      {
        goto LABEL_8;
      }
    }

    *(&v84 + 1) = v14;
    v85 = v15;
    v33 = sub_1000133B0(&v83);
    (*(v5 + 32))(v33, v20, v14);
    sub_100013414(&v83, v86);
    sub_10001342C(v86, &v96);
    v34 = v58;
    sub_10001254C(&v96, v58, &v87);
    v79 = v93;
    v80 = v94;
    v81 = v95;
    v75 = v89;
    v76 = v90;
    v77 = v91;
    v78 = v92;
    v73 = v87;
    v74 = v88;
    if (!v92)
    {
      __break(1u);
      return;
    }

    v35 = (v92)();
    a3 = v56;
    if (v36 == 1)
    {
      *&v96 = ActionType.rawValue.getter(v34);
      *(&v96 + 1) = v38;
      v107._countAndFlagsBits = 10272;
      v107._object = 0xE200000000000000;
      sub_1004BC024(v107);
      v39 = *(&v87 + 1);
      v40 = v88;

      v108._countAndFlagsBits = v39;
      v108._object = v40;
      sub_1004BC024(v108);

      v109._countAndFlagsBits = 41;
      v109._object = 0xE100000000000000;
      sub_1004BC024(v109);
      Array<A>.appendStringComponents(_:lineLength:bullet:)(v96, *(&v96 + 1), 80, 9673954, 0xA300000000000000);

      sub_100004C6C(v86);
      v70 = v79;
      v71 = v80;
      v72 = v81;
      v66 = v75;
      v67 = v76;
      v68 = v77;
      v69 = v78;
      v64 = v73;
      v65 = v74;
      v41.location = &v64;
      CFRange.init(_:)(v41);
      v102 = v70;
      v103 = v71;
      v104 = v72;
      v98 = v66;
      v99 = v67;
      v100 = v68;
      v101 = v69;
      v96 = v64;
      v97 = v65;
      a5 = v57;
      goto LABEL_12;
    }

    v45 = v35;
    v46 = v36;
    if (v37)
    {
      sub_100004C6C(v86);
      sub_1000130F8(v45, v46);
      sub_1000130C8(&v87);
    }

    else
    {
      *&v96 = ActionType.rawValue.getter(v34);
      *(&v96 + 1) = v47;
      v110._countAndFlagsBits = 10272;
      v110._object = 0xE200000000000000;
      sub_1004BC024(v110);
      v48 = *(&v87 + 1);
      v49 = v88;

      v111._countAndFlagsBits = v48;
      v111._object = v49;
      sub_1004BC024(v111);

      v112._countAndFlagsBits = 539828265;
      v112._object = 0xE400000000000000;
      sub_1004BC024(v112);
      if (v46)
      {
        v50._countAndFlagsBits = v45;
      }

      else
      {
        v50._countAndFlagsBits = 0xD000000000000013;
      }

      if (v46)
      {
        v51 = v46;
      }

      else
      {
        v51 = 0x80000001004FC3C0;
      }

      v50._object = v51;
      sub_1004BC024(v50);

      Array<A>.appendStringComponents(_:lineLength:bullet:)(v96, *(&v96 + 1), 80, 120, 0xE100000000000000);

      sub_1000130C8(&v87);
      sub_100004C6C(v86);
    }

    a5 = v57;
  }

  else
  {
LABEL_8:

    *&v96 = 0;
    *(&v96 + 1) = 0xE000000000000000;
    sub_1004BD404(24);
    v21 = ActionType.rawValue.getter(v58);
    v23 = v22;

    *&v96 = v21;
    *(&v96 + 1) = v23;
    v105._countAndFlagsBits = 0xD000000000000016;
    v105._object = 0x80000001004FC3E0;
    sub_1004BC024(v105);
    Array<A>.appendStringComponents(_:lineLength:bullet:)(v96, *(&v96 + 1), 80, 120, 0xE100000000000000);

    a3 = v56;
    a5 = v57;
  }

LABEL_11:
  sub_100013394(&v96);
LABEL_12:
  sub_100004C6C(a3);
  v29 = v103;
  a5[6] = v102;
  a5[7] = v29;
  a5[8] = v104;
  v30 = v99;
  a5[2] = v98;
  a5[3] = v30;
  v31 = v101;
  a5[4] = v100;
  a5[5] = v31;
  v32 = v97;
  *a5 = v96;
  a5[1] = v32;
}

uint64_t sub_100013020(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100601148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000130F8(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10001310C()
{
  result = qword_100601150;
  if (!qword_100601150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601150);
  }

  return result;
}

uint64_t sub_100013160(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100013184(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10001319C(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1000131C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100013210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100013284(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000132E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_100013340()
{
  result = qword_1006019D0;
  if (!qword_1006019D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006019D0);
  }

  return result;
}

double sub_100013394(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t *sub_1000133B0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100013414(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001342C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100013490()
{
  result = qword_100601160;
  if (!qword_100601160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601160);
  }

  return result;
}

unint64_t sub_1000134E4()
{
  result = qword_100601C30;
  if (!qword_100601C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601C30);
  }

  return result;
}

uint64_t sub_100013538()
{
  sub_100004C6C(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_100013570()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100009178(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1000135C4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001384C;

  return sub_100010AD8(v0 + 16);
}

uint64_t sub_100013658()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000136EC;

  return sub_100010DD0(v0 + 16);
}

uint64_t sub_1000136EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000137E0()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_100009178(v0 + 2, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t ActionCondition.Result.failure.getter(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a1;
  }

  sub_10001388C(a1, a2);
  return v2;
}

uint64_t sub_10001388C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t ActionCondition.init(_:file:line:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t ActionCondition.init(_:_:redactLog:file:line:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t (*a6)()@<X5>, uint64_t (*a7)()@<X6>, uint64_t (*a8)()@<X7>, uint64_t (**a9)()@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  *a9 = sub_100013CA0;
  a9[1] = result;
  a9[2] = a6;
  a9[3] = a7;
  a9[4] = a8;
  return result;
}

BOOL ActionCondition.isTrue.getter()
{
  v1 = (*v0)();
  v3 = v2 == 1;
  sub_1000130F8(v1, v2);
  return v3;
}

uint64_t static ActionConditionEvaluator.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v14 = a1 + 32;
    v15 = *(a1 + 16);
    while (1)
    {
      v4 = *(v3 + 8 * v2);
      v5 = *(v4 + 16);
      if (v5)
      {
        break;
      }

LABEL_3:
      if (++v2 == v1)
      {
        return 0;
      }
    }

    v7 = 0;
    v8 = v4 + 56;
    while (v7 < *(v4 + 16))
    {
      v9 = *(v8 - 24);

      v11 = v9(v10);
      v13 = v12;

      if (v13 != 1)
      {

        return v11;
      }

      ++v7;
      v8 += 40;
      if (v5 == v7)
      {

        v3 = v14;
        v1 = v15;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t static ActionConditionEvaluator.buildExpression(_:)(__int128 *a1)
{
  sub_100003ABC(&qword_100601188);
  v2 = swift_allocObject();
  v4 = *a1;
  v7 = a1[1];
  v3 = v7;
  *(v2 + 16) = xmmword_1004C50A0;
  *(v2 + 32) = v4;
  *(v2 + 48) = v3;
  *(v2 + 64) = *(a1 + 4);

  sub_100013D04(&v7, &v6);
  return v2;
}

BOOL _s9MusicCore15ActionConditionV6ResultO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2 == 1)
  {
    return a5 == 1;
  }

  if (a5 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v7 = a3;
      v8 = a6;
      v9 = sub_1004BD9C4();
      a3 = v7;
      a6 = v8;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  return (a6 ^ a3 ^ 1) & 1;
}

uint64_t sub_100013C60()
{

  return swift_deallocObject();
}

uint64_t sub_100013CA0()
{
  v1 = *(v0 + 32);
  if ((*(v0 + 16))())
  {
    return 0;
  }

  return v1;
}

__n128 sub_100013D60(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100013D74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100013DBC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100013E14(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_100013E38(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100013E4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100013EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100013F08(uint64_t result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t Actions.GoToArtist.Context.menuItemSubtitle.getter()
{
  v1 = *v0;

  return v1;
}

void *ActionDisplayConfiguration.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t ActionDisplayConfiguration.init(title:subtitle:image:attributes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t sub_100013FF0()
{
  result = qword_100601190;
  if (!qword_100601190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601190);
  }

  return result;
}

unint64_t sub_100014048()
{
  result = qword_100601198;
  if (!qword_100601198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100601198);
  }

  return result;
}

unint64_t sub_1000140A0()
{
  result = qword_1006011A0;
  if (!qword_1006011A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006011A0);
  }

  return result;
}

unint64_t sub_1000140F8()
{
  result = qword_1006011A8;
  if (!qword_1006011A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006011A8);
  }

  return result;
}

uint64_t sub_10001414C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000106D8();

  *a1 = v2;
  return result;
}

uint64_t sub_10001418C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000141E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void ActionList.init(_:lookup:resolver:excluding:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v37 = a3;
  v5 = a2;
  v6 = a1;
  v7 = *(a1 + 16);
  v8 = &_swiftEmptyArrayStorage;
  if (v7)
  {
    v36 = a4;
    *&v38 = a2;
    v41 = &_swiftEmptyArrayStorage;
    sub_100014FE0(0, v7, 0);
    v8 = &_swiftEmptyArrayStorage;
    v9 = v6 + 32;
    do
    {
      sub_100004DE4(v9, v40);
      sub_100004DE4(v40, v39);
      sub_100003ABC(&qword_100601140);
      v10 = sub_1004BBF04();
      v12 = String.components(wrappedToLineLength:bullet:)(80, 62, 0xE100000000000000, v10, v11);

      a1 = sub_100004C6C(v40);
      v41 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        a1 = sub_100014FE0((v13 > 1), v14 + 1, 1);
        v8 = v41;
      }

      v8[2] = v14 + 1;
      v8[v14 + 4] = v12;
      v9 += 32;
      --v7;
    }

    while (v7);
    v5 = v38;
    v4 = v36;
  }

  v40[0] = v8;
  __chkstk_darwin(a1);
  v35[2] = v6;
  v35[3] = v37;
  v35[4] = v4;
  v35[5] = v40;
  v36 = sub_100014730(sub_100015000, v35, v5);

  v35[7] = v40[0];
  v15 = Array<A>.asciiBoxed()(v40[0]);
  v17 = v15;
  v18 = *(v15 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = (v15 + 40);
    v21 = &off_1005FF000;
    *&v16 = 136446210;
    v38 = v16;
    while (v19 < *(v17 + 2))
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      v24 = v21[423];

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = sub_1004B80B4();
      sub_100007084(v25, static Logger.actions);

      v26 = sub_1004B8094();
      v27 = sub_1004BC9A4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = v21;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v22;
        v32 = v17;
        v33 = v18;
        v34 = v30;
        v39[0] = v30;
        *v29 = v38;
        *(v29 + 4) = sub_100012018(v31, v23, v39);
        _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s", v29, 0xCu);
        sub_100004C6C(v34);
        v18 = v33;
        v17 = v32;

        v21 = v28;
      }

      ++v19;
      v20 += 2;
      if (v18 == v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    sub_100004C6C(v37);
  }
}

uint64_t sub_1000145E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char **a6@<X8>)
{
  v10 = *a1;
  v19 = &_swiftEmptyArrayStorage;
  sub_10001342C(a3, v18);
  v17[2] = &v19;
  v17[3] = a4;
  v17[4] = a2;
  v17[5] = v18;
  v11 = sub_10001486C(sub_100015F74, v17, v10);
  if (!*(v11 + 2))
  {

    v11 = 0;
  }

  sub_100004C6C(v18);
  v12 = v19;
  v13 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v13;
  if ((result & 1) == 0)
  {
    result = sub_100017A8C(0, v13[2] + 1, 1, v13);
    v13 = result;
    *a5 = result;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    result = sub_100017A8C((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
    *a5 = result;
  }

  v13[2] = v16 + 1;
  v13[v16 + 4] = v12;
  *a6 = v11;
  return result;
}

char *sub_100014730(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v13 = *v6;

    a1(&v12, &v13);
    if (v3)
    {
      break;
    }

    v8 = v12;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100017948(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_100017948((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v8;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_10001486C(void (*a1)(__int128 *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = &_swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v41[0] = v8;
    a1(&v32, v41);
    if (v3)
    {
      break;
    }

    v31[6] = v38;
    v31[7] = v39;
    v31[8] = v40;
    v31[2] = v34;
    v31[3] = v35;
    v31[4] = v36;
    v31[5] = v37;
    v31[0] = v32;
    v31[1] = v33;
    if (sub_100015F94(v31) == 1)
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      sub_100007214(&v22, &qword_1006011F8);
    }

    else
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100017964(0, *(v6 + 2) + 1, 1, v6);
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v6 = sub_100017964((v9 > 1), v10 + 1, 1, v6);
      }

      v15 = v24;
      v16 = v25;
      v20 = v29;
      v21 = v30;
      v18 = v27;
      v19 = v28;
      v17 = v26;
      v13 = v22;
      v14 = v23;
      *(v6 + 2) = v10 + 1;
      v11 = &v6[144 * v10];
      *(v11 + 2) = v13;
      *(v11 + 5) = v16;
      *(v11 + 6) = v17;
      *(v11 + 3) = v14;
      *(v11 + 4) = v15;
      *(v11 + 9) = v20;
      *(v11 + 10) = v21;
      *(v11 + 7) = v18;
      *(v11 + 8) = v19;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

id *sub_100014A7C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v6 = sub_100003ABC(&qword_1006011E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1004B68B4();
  v10 = __chkstk_darwin(v9);
  v32 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v30 = &v26 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return _swiftEmptyArrayStorage;
  }

  v15 = (a3 + 32);
  v16 = (v12 + 48);
  v29 = v12;
  v31 = (v12 + 32);
  v17 = _swiftEmptyArrayStorage;
  v27 = v9;
  v28 = a1;
  v26 = (v12 + 48);
  while (1)
  {
    v34 = *v15;
    a1(&v34);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_100007214(v8, &qword_1006011E8);
    }

    else
    {
      v18 = v30;
      v19 = *v31;
      (*v31)(v30, v8, v9);
      v19(v32, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1000186C4(0, v17[2] + 1, 1, v17);
      }

      v21 = v17[2];
      v20 = v17[3];
      v22 = v29;
      if (v21 >= v20 >> 1)
      {
        v24 = sub_1000186C4(v20 > 1, v21 + 1, 1, v17);
        v22 = v29;
        v17 = v24;
      }

      v17[2] = (v21 + 1);
      v23 = v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21;
      v9 = v27;
      v19(v23, v32, v27);
      a1 = v28;
      v16 = v26;
    }

    ++v15;
    if (!--v14)
    {
      return v17;
    }
  }

  return v17;
}

__n128 sub_100014D54@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  if ((1 << v6) & 0xF8FFFFD7FFE7FLL) != 0 || ((v19 = a3, ((1 << v6) & 0x700000000180) == 0) ? (LOBYTE(v27[0]) = 2, v20 = sub_100013490(), v21 = &type metadata for Feature.MediaPlayer) : (v20 = sub_1000134E4(), v21 = &type metadata for Feature.MusicKit), v22 = FeatureFlagsKey.isEnabled.getter(v21, v20), a3 = v19, (v22))
  {
    if (!sub_100191FD0(v6, a3))
    {
      sub_10001342C(a5, v26);

      sub_1000128E0(v6, a4, v26, a2, v27);
      goto LABEL_7;
    }

    sub_1004BD404(24);
    v11 = ActionType.rawValue.getter(v6);
    v13 = v12;

    *&v27[0] = v11;
    *(&v27[0] + 1) = v13;
    v14._object = 0x80000001004FC420;
    v14._countAndFlagsBits = 0xD000000000000016;
  }

  else
  {
    if (qword_1006006D8 != -1)
    {
      swift_once();
    }

    if (static DeviceCapabilities.isInternalInstall != 1)
    {
      goto LABEL_5;
    }

    sub_1004BD404(32);
    v23 = ActionType.rawValue.getter(v6);
    v25 = v24;

    *&v27[0] = v23;
    *(&v27[0] + 1) = v25;
    v14._countAndFlagsBits = 0xD00000000000001ELL;
    v14._object = 0x80000001004FC400;
  }

  sub_1004BC024(v14);
  Array<A>.appendStringComponents(_:lineLength:bullet:)(*&v27[0], *(&v27[0] + 1), 80, 120, 0xE100000000000000);

LABEL_5:
  sub_100013394(v27);
LABEL_7:
  v15 = v27[7];
  *(a6 + 96) = v27[6];
  *(a6 + 112) = v15;
  *(a6 + 128) = v27[8];
  v16 = v27[3];
  *(a6 + 32) = v27[2];
  *(a6 + 48) = v16;
  v17 = v27[5];
  *(a6 + 64) = v27[4];
  *(a6 + 80) = v17;
  result = v27[1];
  *a6 = v27[0];
  *(a6 + 16) = result;
  return result;
}

size_t sub_100014FC0(size_t a1, int64_t a2, char a3)
{
  result = sub_1000151D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100014FE0(void *a1, int64_t a2, char a3)
{
  result = sub_1000153C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015040(char *a1, int64_t a2, char a3)
{
  result = sub_1000154F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015060(char *a1, int64_t a2, char a3)
{
  result = sub_10001561C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015080(char *a1, int64_t a2, char a3)
{
  result = sub_100015718(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000150A0(char *a1, int64_t a2, char a3)
{
  result = sub_100015824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000150C0(void *a1, int64_t a2, char a3)
{
  result = sub_100015A4C(a1, a2, a3, *v3, &unk_100606020, &unk_1004C8190, &qword_100606050);
  *v3 = result;
  return result;
}

id *sub_100015100(id *a1, int64_t a2, char a3)
{
  result = sub_100015960(a1, a2, a3, *v3, &qword_1006011D8);
  *v3 = result;
  return result;
}

void *sub_100015130(void *a1, int64_t a2, char a3)
{
  result = sub_100015A4C(a1, a2, a3, *v3, &qword_1006011D0, &unk_1004C7D88, &qword_100606FD0);
  *v3 = result;
  return result;
}

id *sub_100015170(id *a1, int64_t a2, char a3)
{
  result = sub_100015B94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_100015190(id *a1, int64_t a2, char a3)
{
  result = sub_100015C98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000151B0(size_t a1, int64_t a2, char a3)
{
  result = sub_100015D9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000151D0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003ABC(&qword_100600DE8);
  v10 = *(sub_100003ABC(&qword_100600DE0) - 8);
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
  v15 = *(sub_100003ABC(&qword_100600DE0) - 8);
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

void *sub_1000153C0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003ABC(&qword_100601200);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100003ABC(&unk_100603590);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000154F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&unk_100601470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001561C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1006011C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_100015718(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&unk_1006040A0);
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

char *sub_100015824(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1006011F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100015960(id *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 16);
  if (v8 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100003ABC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v11[2] = v9;
    v11[3] = (2 * v12 - 64);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = (v11 + 4);
  v14 = (a4 + 32);
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

void *sub_100015A4C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_100003ABC(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003ABC(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

id *sub_100015B94(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_1006011B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 2));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

id *sub_100015C98(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_1006011C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

size_t sub_100015D9C(size_t result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_100003ABC(&qword_1006011B0);
  v10 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
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
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_100015F94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t ActionType.isHidden.getter(char a1)
{
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x700000000180) != 0)
  {
    v2 = sub_1000134E4();
    v3 = &type metadata for Feature.MusicKit;
  }

  else
  {
    v2 = sub_100013490();
    v3 = &type metadata for Feature.MediaPlayer;
  }

  return (FeatureFlagsKey.isEnabled.getter(v3, v2) ^ 1) & 1;
}

uint64_t sub_10001605C(char a1)
{
  result = 0x6C6576654C706F74;
  switch(a1)
  {
    case 1:
      result = 0x7463416B63697571;
      break;
    case 2:
      result = 7368564;
      break;
    case 3:
      result = 0x7972617262696CLL;
      break;
    case 4:
    case 11:
      result = 0x7473696C79616C70;
      break;
    case 5:
      result = 0x6B63616279616C70;
      break;
    case 6:
      result = 0x697461676976616ELL;
      break;
    case 7:
      result = 0x6574736174;
      break;
    case 8:
      result = 0x6E6974726F706572;
      break;
    case 9:
      result = 0x6F697463416E6970;
      break;
    case 10:
      result = 0x7463757274736564;
      break;
    case 12:
      result = 1867804519;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MenuType.title.getter(char a1)
{
  v2 = sub_1004B6E64();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004BBE14();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if (a1 == 9)
  {
    sub_1004BBDA4();
    (*(v4 + 16))(v7, v9, v3);
    if (qword_1005FFD30 == -1)
    {
      goto LABEL_7;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  if (a1 != 12 && a1 != 11)
  {
    return 0;
  }

  sub_1004BBDA4();
  (*(v4 + 16))(v7, v9, v3);
  if (qword_1005FFD30 != -1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = qword_100617118;
  sub_1004B6DF4();
  v11 = sub_1004BBED4();
  (*(v4 + 8))(v9, v3);
  return v11;
}

id MenuType.image.getter(char a1)
{
  if (a1 != 9 && a1 != 12 && a1 != 11)
  {
    return 0;
  }

  v1 = sub_1004BBE24();
  v2 = [objc_opt_self() systemImageNamed:v1];

  return v2;
}

uint64_t MenuType.style.getter(uint64_t a1)
{
  switch(a1)
  {
    case 11:
      goto LABEL_6;
    default:
      v2 = sub_1004BD9C4();

      if (v2)
      {
        goto LABEL_3;
      }

      v4 = MenuType.description.getter(a1);
      v6 = v5;
      if (v4 == 1867804519 && v5 == 0xE400000000000000)
      {
        goto LABEL_6;
      }

      v8 = v4;
      v9 = sub_1004BD9C4();

      if (v9)
      {
LABEL_3:
        v3 = 1;
      }

      else if (v8 == 0x6F697463416E6970 && v6 == 0xE90000000000006ELL)
      {
LABEL_6:

        v3 = 1;
      }

      else
      {
        v3 = sub_1004BD9C4();
      }

      return v3 & 1;
  }
}

UIMenuElementSize __swiftcall MenuType.size(for:)(Swift::Int a1)
{
  switch(v1)
  {
    case 1:

      if (a1 <= 1)
      {
        return 2;
      }

      return 1;
    default:
      v3 = sub_1004BD9C4();

      if ((v3 & 1) != 0 && a1 > 1)
      {
        return 1;
      }

      else
      {
        return 2;
      }
  }
}

uint64_t sub_100016A64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore8MenuTypeO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100016A94@<X0>(uint64_t *a1@<X8>)
{
  result = MenuType.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *ActionType.mutuallyExclusiveActions.getter(unsigned __int8 a1)
{
  if (a1 > 0x18u)
  {
    if (a1 > 0x2Fu)
    {
      switch(a1)
      {
        case '0':
          v1 = &off_1005A31F8;
          return sub_100019524(v1);
        case '1':
          v1 = &off_1005A31D0;
          return sub_100019524(v1);
        case '3':
          return &_swiftEmptySetSingleton;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x19u:
          v1 = &off_1005A3270;
          return sub_100019524(v1);
        case 0x24u:
          v1 = &off_1005A32E8;
          return sub_100019524(v1);
        case 0x25u:
          v1 = &off_1005A3310;
          return sub_100019524(v1);
      }
    }
  }

  else if (a1 > 7u)
  {
    switch(a1)
    {
      case 8u:
        v1 = &off_1005A31A8;
        return sub_100019524(v1);
      case 0x17u:
        v1 = &off_1005A3220;
        return sub_100019524(v1);
      case 0x18u:
        v1 = &off_1005A3248;
        return sub_100019524(v1);
    }
  }

  else
  {
    switch(a1)
    {
      case 2u:
        v1 = &off_1005A3298;
        return sub_100019524(v1);
      case 3u:
        v1 = &off_1005A32C0;
        return sub_100019524(v1);
      case 7u:
        v1 = &off_1005A3180;
        return sub_100019524(v1);
    }
  }

  return 0;
}

uint64_t ActionType.rawValue.getter(char a1)
{
  result = 0x62694C6F54646461;
  switch(a1)
  {
    case 1:
      return 0x64616F6C6E776F64;
    case 2:
      return 0x657469726F766166;
    case 3:
      return 0x6F7661466F646E75;
    case 4:
      return 0x6572616873;
    case 5:
      return 2036427888;
    case 6:
      return 0x656C6666756873;
    case 7:
      return 7235952;
    case 8:
      return 0x6E69706E75;
    case 9:
      return 0x6C50657461657263;
    case 10:
      v3 = 1634038371;
      goto LABEL_34;
    case 11:
      return 0x616C506F54646461;
    case 12:
      return 0x7473696C79616C70;
    case 13:
      return 0x726F62616C6C6F63;
    case 14:
    case 41:
      return 0xD000000000000015;
    case 15:
      return 0xD000000000000011;
    case 16:
    case 29:
    case 47:
      return 0xD000000000000012;
    case 17:
      return 0xD000000000000011;
    case 18:
    case 46:
      return 0xD000000000000017;
    case 19:
      v4 = 0x656D616E6572;
      goto LABEL_42;
    case 20:
      v4 = 0x6F5465766F6DLL;
      goto LABEL_42;
    case 21:
      return 0x766F4D6575657571;
    case 22:
      return 0x7478654E79616C70;
    case 23:
      return 0x6575516F54646461;
    case 24:
      return 0x7473614C79616C70;
    case 25:
      return 0x6574664179616C70;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0x7453657461657263;
    case 28:
      return 0x79616C506F546F67;
    case 30:
      return 0x75626C416F546F67;
    case 31:
      return 0x697472416F546F67;
    case 32:
      v5 = 2003789939;
      goto LABEL_48;
    case 33:
      return 0x6C6C754677656976;
    case 34:
      return 0x72794C6572616873;
    case 35:
      return 0x6C436E496E65706FLL;
    case 36:
      return 0x4C74736567677573;
    case 37:
      return 0x676775536F646E75;
    case 38:
      v5 = 1702125938;
LABEL_48:
      result = v5 | 0x676E6F5300000000;
      break;
    case 39:
      result = 0xD000000000000014;
      break;
    case 40:
    case 42:
    case 44:
      result = 0xD000000000000013;
      break;
    case 43:
      result = 0xD00000000000001BLL;
      break;
    case 45:
      result = 0xD000000000000016;
      break;
    case 48:
      result = 0x6F4465766F6D6572;
      break;
    case 49:
      result = 0xD000000000000011;
      break;
    case 50:
      v3 = 1701602660;
LABEL_34:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_42:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6F46000000000000;
      break;
    case 51:
      result = 0x65766F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000172EC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1004BD9C4();
  }

  return v12 & 1;
}

uint64_t sub_100017380@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore10ActionTypeO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_1000173B0@<X0>(uint64_t *a1@<X8>)
{
  result = ActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_100017404(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1004BDBA4();
  a3(v5);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100017488(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  sub_1004BBF84();
}

Swift::Int sub_1000174F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1004BDBA4();
  a4(v6);
  sub_1004BBF84();

  return sub_1004BDBF4();
}

char *sub_10001756C(char *result)
{
  v1 = *(result + 2);
  if (!v1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = result + 32;
  v3 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v8 = v6 + v5;
      }

      else
      {
        v8 = v6;
      }

      result = sub_100017AB0(result, v8, 1, v3, &qword_100601208);
      v3 = result;
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v9 = *(v3 + 2);
          v10 = __OFADD__(v9, v5);
          v11 = v9 + v5;
          if (v10)
          {
            goto LABEL_23;
          }

          *(v3 + 2) = v11;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_21;
    }

LABEL_4:
    v2 += 8;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t static ActionLookupBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_100003ABC(&qword_100601208);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004C50A0;
  *(v2 + 32) = a1;

  return v2;
}

void *static ActionLookupBuilder.buildOptional(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = &_swiftEmptyArrayStorage;
  }

  return v1;
}

size_t sub_100017758(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003ABC(&qword_100600DE8);
  v10 = *(sub_100003ABC(&qword_100600DE0) - 8);
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
  v15 = *(sub_100003ABC(&qword_100600DE0) - 8);
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

char *sub_100017964(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100601378);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100017AB0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100003ABC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_100017BBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100601360);
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
    v10 = &_swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100017CC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&unk_1006040A0);
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

char *sub_100017DD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&unk_100601470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100017EFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100601358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100018024(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_100601240);
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

char *sub_10001813C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003ABC(&qword_1006011C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_100018288(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003ABC(&qword_100601318);
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
    v10 = &_swiftEmptyArrayStorage;
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
    type metadata accessor for ICURLBagKey(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1000183D4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_1006011F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 56));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_10001856C(id *result, int64_t a2, char a3, id *a4)
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
    sub_100003ABC(&qword_100601338);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3));
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
    sub_100003ABC(&qword_100604C30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100018710(id *result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_1006012F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || (v10 + 4) >= a4 + 32 + 16 * v8)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001888C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_100003ABC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

id *sub_100018978(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_1006011B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 2));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

id *sub_100018A7C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_100601298);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 56));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100018BA4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_1006011C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_100018CCC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_100003ABC(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003ABC(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_100018E28(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_100003ABC(a5);
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

id *sub_100019004(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003ABC(&qword_100601280);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}