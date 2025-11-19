uint64_t sub_100001674@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10000708C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000016AC()
{
  v0 = sub_10000704C();
  sub_1000026F0(v0, qword_1000114C0);
  sub_100002510(v0, qword_1000114C0);
  return sub_10000703C();
}

id sub_100001820()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000018A0(uint64_t a1)
{
  if (qword_1000114A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000704C();
  sub_100002510(v2, qword_1000114C0);
  v3 = sub_10000702C();
  v4 = sub_10000710C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "provide user options collection", v5, 2u);
  }

  if (qword_1000114B0 != -1)
  {
    swift_once();
  }

  v6 = qword_100011C10;
  v7 = type metadata accessor for XPCPersistentStoreManager();
  v41[3] = v7;
  v41[4] = &off_10000C6F8;
  v41[0] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = &_swiftEmptyArrayStorage;
  v9 = *sub_10000258C(v41, v7);
  swift_retain_n();

  sub_100002A30();
  if (*(v9 + 24) == 1)
  {
    v10 = [*(v9 + 16) newBackgroundContext];
    [v10 setAutomaticallyMergesChangesFromParent:1];
    [v10 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v11 = swift_allocObject();
    v11[2] = sub_10000278C;
    v11[3] = v8;
    v11[4] = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1000027FC;
    *(v12 + 24) = v11;
    aBlock[4] = sub_1000027F4;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100001878;
    aBlock[3] = &unk_10000C6D0;
    v13 = _Block_copy(aBlock);

    v14 = v10;

    [v14 performBlockAndWait:v13];

    _Block_release(v13);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  sub_100004464(v8);

LABEL_11:
  swift_beginAccess();
  v15 = *(v8 + 16);

  sub_100002658(v41);
  v16 = *(v15 + 16);
  if (v16)
  {
    v41[0] = &_swiftEmptyArrayStorage;
    sub_10000718C();
    type metadata accessor for STUser();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v38._object = v15;
    v17 = (v15 + 57);
    do
    {
      v29 = *(v17 - 25);
      v30 = *v17;
      v31 = *(v17 - 17) == 1701736270 && *(v17 - 9) == 0xE400000000000000;
      if (v31 || (v32 = *(v17 - 17), v33 = *(v17 - 9), (sub_1000071EC() & 1) != 0))
      {
        v18 = objc_opt_self();

        v19 = v29;
        v20 = [v18 mainBundle];
        v38._countAndFlagsBits = 0xE000000000000000;
        v42._object = 0x8000000100008970;
        v42._countAndFlagsBits = 0xD000000000000016;
        v43.value._countAndFlagsBits = 0;
        v43.value._object = 0;
        v21.super.isa = v20;
        v44._countAndFlagsBits = 0;
        v44._object = 0xE000000000000000;
        sub_100006FBC(v42, v43, v21, v44, v38);
      }

      else
      {
        swift_bridgeObjectRetain_n();
        v34 = v29;
      }

      v22 = [v29 stringValue];
      sub_10000708C();

      v23 = objc_allocWithZone(ObjCClassFromMetadata);
      v24 = sub_10000707C();

      v25 = sub_10000707C();

      v26 = [v23 initWithIdentifier:v24 displayString:v25];

      v27 = [objc_allocWithZone(NSNumber) initWithBool:v30];
      [v26 setIsRemote:v27];

      sub_10000716C();
      v28 = *(v41[0] + 16);
      sub_10000719C();
      sub_1000071AC();
      sub_10000717C();
      v17 += 32;
      --v16;
    }

    while (v16);
  }

  v35 = objc_allocWithZone(INObjectCollection);
  type metadata accessor for STUser();
  isa = sub_1000070AC().super.isa;

  v37 = [v35 initWithItems:isa];

  (*(a1 + 16))(a1, v37, 0);
}

id sub_100001ED4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2 == 1701736270 && a3 == 0xE400000000000000;
  if (v6 || (sub_1000071EC() & 1) != 0)
  {
    v7 = [objc_opt_self() mainBundle];
    v16._countAndFlagsBits = 0xE000000000000000;
    v17._object = 0x8000000100008970;
    v17._countAndFlagsBits = 0xD000000000000016;
    v18.value._countAndFlagsBits = 0;
    v18.value._object = 0;
    v8.super.isa = v7;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    sub_100006FBC(v17, v18, v8, v19, v16);
  }

  else
  {
  }

  type metadata accessor for STUser();
  v9 = [a1 stringValue];
  sub_10000708C();

  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_10000707C();

  v12 = sub_10000707C();

  v13 = [v10 initWithIdentifier:v11 displayString:v12];

  v14 = [objc_allocWithZone(NSNumber) initWithBool:a4 & 1];
  [v13 setIsRemote:v14];

  return v13;
}

id sub_1000020A8()
{
  if (qword_1000114A0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000704C();
  sub_100002510(v0, qword_1000114C0);
  v1 = sub_10000702C();
  v2 = sub_10000710C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "get default user for widget. getting local user", v3, 2u);
  }

  if (qword_1000114B0 != -1)
  {
    swift_once();
  }

  v4 = qword_100011C10;
  v5 = type metadata accessor for XPCPersistentStoreManager();
  v34[3] = v5;
  v34[4] = &off_10000C6F8;
  v34[0] = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  v7 = *sub_10000258C(v34, v5);
  swift_retain_n();

  sub_100002A30();
  if (*(v7 + 24) == 1)
  {
    v8 = [*(v7 + 16) newBackgroundContext];
    [v8 setAutomaticallyMergesChangesFromParent:1];
    [v8 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
    v9 = swift_allocObject();
    v9[2] = sub_1000025D0;
    v9[3] = v6;
    v9[4] = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1000026A4;
    *(v10 + 24) = v9;
    v33[4] = sub_1000026B0;
    v33[5] = v10;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 1107296256;
    v33[2] = sub_100001878;
    v33[3] = &unk_10000C630;
    v11 = _Block_copy(v33);

    v12 = v8;

    [v12 performBlockAndWait:v11];

    _Block_release(v11);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v13 = sub_100003D9C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  swift_beginAccess();
  v20 = *(v6 + 16);
  v21 = *(v6 + 24);
  v22 = *(v6 + 32);
  *(v6 + 16) = v13;
  *(v6 + 24) = v15;
  *(v6 + 32) = v17;
  v23 = *(v6 + 40);
  *(v6 + 40) = v19;
  sub_1000025D8(v20);

LABEL_11:
  swift_beginAccess();
  v24 = *(v6 + 16);
  v25 = *(v6 + 24);
  v26 = *(v6 + 32);
  v27 = *(v6 + 40);
  sub_100002618(v24);

  sub_100002658(v34);
  if (v24)
  {
    v28 = sub_100001ED4(v24, v25, v26, HIBYTE(v27) & 1);
  }

  else
  {
    v29 = sub_10000702C();
    v30 = sub_1000070FC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "couldn't fetch local user to use as default user", v31, 2u);
    }

    return 0;
  }

  return v28;
}

uint64_t sub_100002510(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002548()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    v2 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 42, 7);
}

void *sub_10000258C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_1000025D8(void *result)
{
  if (result)
  {
  }

  return result;
}

void *sub_100002618(void *result)
{
  if (result)
  {
    v1 = result;
  }

  return result;
}

uint64_t sub_100002658(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000026B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000026D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_1000026F0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100002754()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002798()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100002800()
{
  v0 = sub_10000704C();
  sub_1000026F0(v0, qword_100011500);
  sub_100002510(v0, qword_100011500);
  return sub_10000703C();
}

uint64_t sub_100002880()
{
  type metadata accessor for XPCPersistentStoreManager();
  v0 = swift_allocObject();
  result = sub_1000028BC();
  qword_100011C10 = v0;
  return result;
}

uint64_t sub_1000028BC()
{
  v1 = objc_opt_self();
  v2 = [v1 managedObjectModel];
  v3 = objc_allocWithZone(NSPersistentContainer);
  v4 = sub_10000707C();
  v5 = [v3 initWithName:v4 managedObjectModel:v2];

  *(v0 + 16) = v5;
  *(v0 + 24) = 0;
  *(v0 + 32) = [objc_allocWithZone(type metadata accessor for STWidgetXPCStoreServerEndpointFactory()) init];
  v6 = [v1 localPersistentXPCStoreDescription];
  v7 = *(v0 + 16);
  sub_100003460(&qword_1000116A8, qword_100007B30);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100007A50;
  *(v8 + 32) = v6;
  sub_1000034A8();
  v9 = v7;
  v10 = v6;
  isa = sub_1000070AC().super.isa;

  [v9 setPersistentStoreDescriptions:isa];

  return v0;
}

void sub_100002A30()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    v1 = *(v0 + 16);
    v2 = [v1 persistentStoreDescriptions];
    sub_1000034A8();
    v3 = sub_1000070BC();

    if (v3 >> 62)
    {
      v4 = sub_1000071DC();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      aBlock[4] = sub_1000034F4;
      aBlock[5] = v0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100002EB4;
      aBlock[3] = &unk_10000C718;
      v5 = _Block_copy(aBlock);

      [v1 loadPersistentStoresWithCompletionHandler:v5];
      _Block_release(v5);
      if (*(v0 + 24) == 1)
      {
        if (qword_1000114A8 != -1)
        {
          swift_once();
        }

        v6 = sub_10000704C();
        sub_100002510(v6, qword_100011500);
        v7 = sub_10000702C();
        v8 = sub_10000710C();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, v8, "Successfully loaded persistent stores", v9, 2u);
        }
      }
    }

    else
    {
      *(v0 + 24) = 0;
      if (qword_1000114A8 != -1)
      {
        swift_once();
      }

      v10 = sub_10000704C();
      sub_100002510(v10, qword_100011500);
      oslog = sub_10000702C();
      v11 = sub_1000070FC();
      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v11, "No persistent stores available to load", v12, 2u);
      }
    }
  }
}

void sub_100002D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    *(a3 + 24) = 0;
    swift_errorRetain();
    if (qword_1000114A8 != -1)
    {
      swift_once();
    }

    v3 = sub_10000704C();
    sub_100002510(v3, qword_100011500);
    swift_errorRetain();
    oslog = sub_10000702C();
    v4 = sub_1000070FC();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Failed to load persistent store: %@", v5, 0xCu);
      sub_1000033F8(v6);
    }

    else
    {
    }
  }

  else
  {
    *(a3 + 24) = 1;
  }
}

void sub_100002EB4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_100002F70()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

id sub_100003018()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STWidgetXPCStoreServerEndpointFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003070(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1000030BC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_1000030CC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_1000033F8(uint64_t a1)
{
  v2 = sub_100003460(&qword_100011698, &qword_100007B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003460(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000034A8()
{
  result = qword_1000116A0;
  if (!qword_1000116A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000116A0);
  }

  return result;
}

uint64_t sub_1000034FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003514()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100003578()
{
  sub_100002658(v0 + 2);
  sub_100002658(v0 + 7);
  sub_100002658(v0 + 12);

  return _swift_deallocClassInstance(v0, 136, 7);
}

uint64_t sub_1000035E4()
{
  v0 = sub_10000704C();
  sub_1000026F0(v0, qword_100011930);
  sub_100002510(v0, qword_100011930);
  return sub_10000703C();
}

void *sub_10000366C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003D9C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  swift_beginAccess();
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  v13 = *(a2 + 40);
  *(a2 + 40) = v9;
  return sub_1000025D8(v10);
}

char *sub_1000036E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003460(&qword_1000119A0, &qword_100007C70);
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

uint64_t sub_1000037F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000038C0(v11, 0, 0, 1, a1, a2);
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
    sub_1000053EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002658(v11);
  return v7;
}

unint64_t sub_1000038C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000039CC(a5, a6);
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
    result = sub_10000715C();
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

char *sub_1000039CC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003A18(a1, a2);
  sub_100003B48(&off_10000C590);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003A18(uint64_t a1, unint64_t a2)
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

  v6 = sub_100003C34(v5, 0);
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

  result = sub_10000715C();
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
        v10 = sub_10000709C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003C34(v10, 0);
        result = sub_10000713C();
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

uint64_t sub_100003B48(uint64_t result)
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

  result = sub_100003CA8(result, v12, 1, v3);
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

void *sub_100003C34(uint64_t a1, uint64_t a2)
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

  sub_100003460(&qword_100011998, &qword_100007C68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003CA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003460(&qword_100011998, &qword_100007C68);
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

id sub_100003D9C()
{
  v0 = sub_10000700C();
  v1 = *(v0 - 1);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() fetchRequestMatchingLocalUser];
  v42 = 0;
  v6 = [v5 execute:&v42];

  v7 = v42;
  if (!v6)
  {
    v24 = v42;
    v25 = sub_10000701C();

    swift_willThrow();
    v42 = v25;
    sub_100003460(&qword_100011948, &unk_100007C50);
    sub_100005358(0, &qword_100011950, NSError_ptr);
    swift_dynamicCast();
    v0 = v41;
    if (qword_1000114B8 == -1)
    {
LABEL_18:
      v26 = sub_10000704C();
      sub_100002510(v26, qword_100011930);
      v27 = v0;
      v28 = sub_10000702C();
      v29 = sub_1000070FC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v27;
        *v31 = v27;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed to fetch local user: %@", v30, 0xCu);
        sub_1000033F8(v31);

        v27 = v28;
        v28 = v32;
      }

      return 0;
    }

LABEL_32:
    swift_once();
    goto LABEL_18;
  }

  sub_100005358(0, &qword_100011958, STCoreUser_ptr);
  v8 = sub_1000070BC();
  v9 = v7;

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_24:

    if (qword_1000114B8 != -1)
    {
      swift_once();
    }

    v36 = sub_10000704C();
    sub_100002510(v36, qword_100011930);
    v37 = sub_10000702C();
    v38 = sub_1000070FC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Fetching local user returned empty results.", v39, 2u);
    }

    return 0;
  }

  if (!sub_1000071DC())
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_10000714C();
    goto LABEL_7;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *(v8 + 32);
LABEL_7:
  v11 = v10;

  if (qword_1000114B8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000704C();
  sub_100002510(v12, qword_100011930);
  v13 = sub_10000702C();
  v14 = sub_10000710C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Successfully fetched local user.", v15, 2u);
  }

  sub_100006FFC();
  v16 = [v11 givenName];
  if (v16)
  {
    v17 = v16;
    sub_10000708C();

    sub_100006FCC();
    v18 = [v11 familyName];
    if (v18)
    {
      v19 = v18;
      sub_10000708C();

      sub_100006FDC();
    }

    v20 = sub_10000702C();
    v21 = sub_10000710C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Successfully fetched given name of local user.", v22, 2u);
    }

    sub_100006FEC();
    v23 = [v11 dsid];
  }

  else
  {
    v23 = [v11 dsid];
    v33 = [objc_opt_self() mainBundle];
    v40._countAndFlagsBits = 0xE000000000000000;
    v43._object = 0x8000000100008970;
    v43._countAndFlagsBits = 0xD000000000000016;
    v44.value._countAndFlagsBits = 0;
    v44.value._object = 0;
    v34.super.isa = v33;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    sub_100006FBC(v43, v44, v34, v45, v40);
  }

  [v11 isParent];

  (*(v1 + 8))(v4, v0);
  return v23;
}

void sub_100004464(uint64_t a1)
{
  v110 = a1;
  v121 = sub_10000700C();
  v1 = *(v121 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003D9C();
  v108 = v8;
  if (v5)
  {
    v102 = v6;
    v104 = v5;
    v103 = v7;
    if ((v7 & 1) == 0)
    {
      goto LABEL_68;
    }

    v119 = v1;
    v109 = v4;
    v9 = [objc_opt_self() fetchRequest];
    v122 = sub_100005358(0, &qword_100011960, NSPredicate_ptr);
    v120 = "Intent Configuration";
    sub_100003460(&qword_100011968, &qword_100007C60);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100007C40;
    *(v10 + 56) = &type metadata for String;
    v11 = sub_100005304();
    *(v10 + 32) = 0xD000000000000018;
    *(v10 + 40) = 0x8000000100008DD0;
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v11;
    *(v10 + 64) = v11;
    *(v10 + 72) = 0xD000000000000010;
    *(v10 + 80) = 0x8000000100008DF0;
    v12 = STFamilyMemberTypeChild;
    v13 = sub_100005358(0, &qword_100011978, NSString_ptr);
    *(v10 + 136) = v13;
    v14 = sub_1000053A0(&qword_100011980, &qword_100011978, NSString_ptr);
    *(v10 + 112) = v12;
    *(v10 + 176) = &type metadata for String;
    *(v10 + 184) = v11;
    *(v10 + 144) = v14;
    *(v10 + 152) = 0xD000000000000010;
    *(v10 + 160) = 0x8000000100008DF0;
    v15 = STFamilyMemberTypeTeen;
    *(v10 + 216) = v13;
    *(v10 + 224) = v14;
    *(v10 + 192) = v15;
    v16 = v12;
    v17 = v15;
    v18 = sub_1000070EC();
    [v9 setPredicate:v18];

    v125[0] = 0;
    v101 = v9;
    v19 = [v9 execute:v125];
    v20 = v125[0];
    if (v19)
    {
      v21 = v19;
      sub_100005358(0, &qword_100011958, STCoreUser_ptr);
      v100 = sub_1000070BC();
      v22 = v20;

      if (qword_1000114B8 != -1)
      {
        swift_once();
      }

      v23 = sub_10000704C();
      v99 = sub_100002510(v23, qword_100011930);
      v24 = sub_10000702C();
      v25 = sub_10000710C();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v109;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Successfully fetched managed users.", v28, 2u);
      }

      v29 = 0;
      v30 = v100 & 0xFFFFFFFFFFFFFF8;
      if (v100 < 0)
      {
        v31 = v100;
      }

      else
      {
        v31 = v100 & 0xFFFFFFFFFFFFFF8;
      }

      v105 = v31;
      v113 = v100 & 0xC000000000000001;
      v112 = v100 + 32;
      v111 = (v119 + 8);
      v114 = v100 >> 62;
      v106 = v100 & 0xFFFFFFFFFFFFFF8;
      if (!(v100 >> 62))
      {
        goto LABEL_16;
      }

LABEL_14:
      if (v29 == sub_1000071DC())
      {
        goto LABEL_67;
      }

      while (1)
      {
        if (v113)
        {
          v32 = sub_10000714C();
        }

        else
        {
          if (v29 >= *(v30 + 16))
          {
            goto LABEL_80;
          }

          v32 = *(v112 + 8 * v29);
        }

        v33 = v32;
        if (__OFADD__(v29++, 1))
        {
          goto LABEL_79;
        }

        v35 = [v32 givenName];
        if (!v35)
        {

          v89 = [v33 dsid];
          v90 = [v89 stringValue];

          v91 = sub_10000708C();
          v93 = v92;

          v94 = sub_10000702C();
          v95 = sub_1000070FC();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v124 = v97;
            *v96 = 136380675;
            v98 = sub_1000037F4(v91, v93, &v124);

            *(v96 + 4) = v98;
            _os_log_impl(&_mh_execute_header, v94, v95, "Failed to fetch given name for remote user with dsid: %{private}s", v96, 0xCu);
            sub_100002658(v97);
          }

          else
          {
          }

          return;
        }

        v24 = v35;
        sub_10000708C();
        v37 = v36;

        sub_100006FFC();

        sub_100006FCC();
        v38 = [v33 familyName];
        if (v38)
        {
          v24 = v38;
          sub_10000708C();

          sub_100006FDC();
        }

        v39 = sub_100006FEC();
        v41 = v40;
        v42 = [v33 userDeviceStates];
        if (!v42)
        {
          (*v111)(v27, v121);

          if (v114)
          {
            goto LABEL_14;
          }

          goto LABEL_16;
        }

        v43 = v42;
        v107 = v39;
        v117 = v37;
        v118 = v41;
        v119 = v29;
        v27 = &qword_100011988;
        v44 = sub_100005358(0, &qword_100011988, STUserDeviceState_ptr);
        sub_1000053A0(&qword_100011990, &qword_100011988, STUserDeviceState_ptr);
        v45 = sub_1000070CC();

        v120 = v33;
        v115 = v45;
        v122 = v44;
        if ((v45 & 0xC000000000000001) != 0)
        {
          v27 = (v45 < 0 ? v45 : v45 & 0xFFFFFFFFFFFFFF8);

          sub_10000711C();
          sub_1000070DC();
          v45 = v125[0];
          v46 = v125[1];
          v24 = v125[2];
          v47 = v125[3];
          v48 = v125[4];
        }

        else
        {
          v49 = -1 << *(v45 + 32);
          v46 = (v45 + 56);
          v24 = ~v49;
          v50 = -v49;
          v51 = v50 < 64 ? ~(-1 << v50) : -1;
          v48 = (v51 & *(v45 + 56));

          v47 = 0;
        }

        v116 = v24;
        v52 = (v24 + 64) >> 6;
        if ((v45 & 0x8000000000000000) == 0)
        {
          break;
        }

        while (1)
        {
          v57 = sub_10000712C();
          if (!v57)
          {
            goto LABEL_47;
          }

          v123 = v57;
          swift_dynamicCast();
          v27 = v124;
          v55 = v47;
          v56 = v48;
          if (!v124)
          {
            goto LABEL_47;
          }

LABEL_43:
          v58 = [v27 device];
          if (!v58)
          {
            __break(1u);
          }

          v59 = v58;
          v24 = [v58 platform];

          if (v24 != 4)
          {
            break;
          }

          v47 = v55;
          v48 = v56;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }
        }

        v24 = [v120 dsid];
        v60 = v110;
        swift_beginAccess();
        v61 = *(v60 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v60 + 16) = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = sub_1000036E8(0, *(v61 + 2) + 1, 1, v61);
          *(v110 + 16) = v61;
        }

        v64 = *(v61 + 2);
        v63 = *(v61 + 3);
        if (v64 >= v63 >> 1)
        {
          v61 = sub_1000036E8((v63 > 1), v64 + 1, 1, v61);
        }

        *(v61 + 2) = v64 + 1;
        v65 = &v61[32 * v64];
        v66 = v107;
        *(v65 + 4) = v24;
        *(v65 + 5) = v66;
        *(v65 + 6) = v118;
        *(v65 + 28) = 256;
        *(v110 + 16) = v61;
        swift_endAccess();

        sub_1000053E4();
        v27 = v109;
        (*v111)(v109, v121);
LABEL_48:
        v29 = v119;
        v30 = v106;
        if (v114)
        {
          goto LABEL_14;
        }

LABEL_16:
        if (v29 == *(v30 + 16))
        {
LABEL_67:

LABEL_68:
          v82 = v110;
          swift_beginAccess();
          v27 = *(v82 + 16);
          v24 = v104;

          v83 = swift_isUniquelyReferenced_nonNull_native();
          *(v82 + 16) = v27;
          if ((v83 & 1) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_69;
        }
      }

LABEL_35:
      v53 = v47;
      v54 = v48;
      v55 = v47;
      if (v48)
      {
LABEL_39:
        v56 = (v54 - 1) & v54;
        v27 = *(*(v45 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));
        if (v27)
        {
          goto LABEL_43;
        }
      }

      else
      {
        while (1)
        {
          v55 = (v53 + 1);
          if (__OFADD__(v53, 1))
          {
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            v27 = sub_1000036E8(0, *(v27 + 2) + 1, 1, v27);
            *(v110 + 16) = v27;
LABEL_69:
            v85 = *(v27 + 2);
            v84 = *(v27 + 3);
            if (v85 >= v84 >> 1)
            {
              v27 = sub_1000036E8((v84 > 1), v85 + 1, 1, v27);
            }

            *(v27 + 2) = v85 + 1;
            v86 = &v27[32 * v85];
            v87 = v102;
            *(v86 + 4) = v24;
            *(v86 + 5) = v87;
            *(v86 + 6) = v108;
            v88 = BYTE1(v103);
            v86[56] = v103 & 1;
            v86[57] = v88 & 1;
            *(v110 + 16) = v27;
            swift_endAccess();

            return;
          }

          if (v55 >= v52)
          {
            break;
          }

          v54 = v46[v55];
          ++v53;
          if (v54)
          {
            goto LABEL_39;
          }
        }
      }

LABEL_47:
      v27 = v109;
      (*v111)(v109, v121);

      sub_1000053E4();
      goto LABEL_48;
    }

    v71 = v125[0];
    v72 = sub_10000701C();

    swift_willThrow();
    v125[0] = v72;
    sub_100003460(&qword_100011948, &unk_100007C50);
    sub_100005358(0, &qword_100011950, NSError_ptr);
    swift_dynamicCast();
    v73 = v124;
    if (qword_1000114B8 != -1)
    {
      swift_once();
    }

    v74 = sub_10000704C();
    sub_100002510(v74, qword_100011930);
    v75 = v73;
    v76 = sub_10000702C();
    v77 = sub_1000070FC();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      *(v78 + 4) = v75;
      *v79 = v75;
      v80 = v75;
      _os_log_impl(&_mh_execute_header, v76, v77, "Failed to fetch managed users: %@", v78, 0xCu);
      sub_1000033F8(v79);

      v81 = v76;
      v76 = v80;
    }

    else
    {

      v81 = v104;
    }
  }

  else
  {
    if (qword_1000114B8 != -1)
    {
      swift_once();
    }

    v67 = sub_10000704C();
    sub_100002510(v67, qword_100011930);
    v122 = sub_10000702C();
    v68 = sub_1000070FC();
    if (os_log_type_enabled(v122, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v122, v68, "couldn't fetch local user", v69, 2u);
    }

    v70 = v122;
  }
}

unint64_t sub_100005304()
{
  result = qword_100011970;
  if (!qword_100011970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011970);
  }

  return result;
}

uint64_t sub_100005358(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000053A0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005358(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000053EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_10000544C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100005460(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_1000054A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000054FC()
{
  sub_100002658(v0 + 2);
  sub_100002658(v0 + 9);
  sub_100002658(v0 + 14);

  return _swift_deallocClassInstance(v0, 152, 7);
}

id STSelectUserIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id STSelectUserIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STSelectUserIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id STUser.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id STSelectUserIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id STSelectUserIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10000707C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id STSelectUserIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_10000707C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for STSelectUserIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id STSelectUserIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000707C();

  v8 = sub_10000707C();

  if (a5)
  {
    v9.super.isa = sub_10000705C().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id STSelectUserIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10000707C();

  v8 = sub_10000707C();

  if (a5)
  {
    v9.super.isa = sub_10000705C().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for STSelectUserIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

Swift::Int sub_100005BD4()
{
  v1 = *v0;
  sub_10000720C();
  sub_10000721C(v1);
  return sub_10000722C();
}

Swift::Int sub_100005C48()
{
  v1 = *v0;
  sub_10000720C();
  sub_10000721C(v1);
  return sub_10000722C();
}

unint64_t sub_100005C8C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100006380(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t STSelectUserIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *STSelectUserIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *STSelectUserIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___STSelectUserIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id STSelectUserIntentResponse.init()()
{
  *&v0[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STSelectUserIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id STSelectUserIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id STSelectUserIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id STSelectUserIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10000612C(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for STSelectUserIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id STSelectUserIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_10000705C().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id STSelectUserIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___STSelectUserIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_10000705C().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for STSelectUserIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_100006348(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100006380(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1000063B8()
{
  result = qword_100011B60;
  if (!qword_100011B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100011B60);
  }

  return result;
}

uint64_t sub_10000640C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___STSelectUserIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_100006464(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STSelectUserIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id STUser.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_10000707C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_10000707C();

  if (a6)
  {
    v10 = sub_10000707C();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id STUser.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_10000707C();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_10000707C();

  if (a6)
  {
    v10 = sub_10000707C();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for STUser();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id STUser.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for STUser();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static STUserResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___STUserResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static STUserResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1000069F8();

    sub_1000071CC();
  }

  else
  {

    sub_1000071FC();
    sub_1000069F8();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1000069F8();
  isa = sub_1000070AC().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___STUserResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_1000069F8()
{
  result = qword_100011BE0;
  if (!qword_100011BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100011BE0);
  }

  return result;
}

id static STUserResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___STUserResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id STUserResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_10000705C().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id STUserResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_10000705C().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for STUserResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_100006F84(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}