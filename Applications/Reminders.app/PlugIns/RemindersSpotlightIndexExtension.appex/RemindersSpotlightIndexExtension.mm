uint64_t sub_100001820()
{
  v0 = sub_100004F4C();
  sub_100004C38(v0, qword_10000C368);
  v1 = sub_100004A6C(v0, qword_10000C368);
  if (qword_10000C380 != -1)
  {
    swift_once();
  }

  v2 = sub_100004A6C(v0, qword_10000C448);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRSIEIndexRequestHandler.searchableIndex(_:reindexAllSearchableItemsWithAcknowledgementHandler:)(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_10000500C();
  sub_100001B64(&qword_10000C388, &qword_100005570);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100005500;
  *(v6 + 56) = sub_100004AF0(0, &qword_10000C390, CSSearchableIndex_ptr);
  *(v6 + 64) = sub_100001BAC();
  *(v6 + 32) = a1;
  sub_100004AF0(0, &qword_10000C3A0, OS_os_log_ptr);
  v7 = a1;
  v8 = sub_10000504C();
  sub_100004F2C();

  v9 = [objc_opt_self() weakSharedInstance];
  v10 = sub_100004F6C();
  v19 = sub_100001C14;
  v20 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100001C24;
  v18 = &unk_100008530;
  v11 = _Block_copy(&v15);
  v12 = [v9 syncIndexingPerformerWithReason:v10 errorHandler:v11];
  _Block_release(v11);

  if (!v12)
  {
    return a2();
  }

  v19 = a2;
  v20 = a3;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100001CA4;
  v18 = &unk_100008558;
  v13 = _Block_copy(&v15);

  [v12 reindexAllSearchableItemsWithAcknowledgementHandler:v13];
  _Block_release(v13);
  return swift_unknownObjectRelease();
}

uint64_t sub_100001B64(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001BAC()
{
  result = qword_10000C398;
  if (!qword_10000C398)
  {
    sub_100004AF0(255, &qword_10000C390, CSSearchableIndex_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C398);
  }

  return result;
}

void sub_100001C24(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100001C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100001CA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void TTRSIEIndexRequestHandler.searchableIndex(_:reindexSearchableItemsWithIdentifiers:acknowledgementHandler:)(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  sub_100001B64(&qword_10000C388, &qword_100005570);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100005510;
  *(v8 + 56) = sub_100004AF0(0, &qword_10000C390, CSSearchableIndex_ptr);
  *(v8 + 64) = sub_100001BAC();
  *(v8 + 32) = a1;
  *(v8 + 96) = sub_100001B64(&qword_10000C3A8, &qword_100005578);
  *(v8 + 104) = sub_10000203C();
  *(v8 + 72) = a2;
  sub_100004AF0(0, &qword_10000C3A0, OS_os_log_ptr);
  v9 = a1;

  v10 = sub_10000504C();
  sub_10000502C();
  sub_100004F2C();

  v11 = [objc_opt_self() weakSharedInstance];
  v12 = sub_100004F6C();
  v21 = sub_1000020E8;
  v22 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100001C24;
  v20 = &unk_100008580;
  v13 = _Block_copy(&v17);
  v14 = [v11 syncIndexingPerformerWithReason:v12 errorHandler:v13];
  _Block_release(v13);

  if (v14)
  {
    isa = sub_100004FEC().super.isa;
    v21 = a3;
    v22 = a4;
    v17 = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100001CA4;
    v20 = &unk_1000085A8;
    v16 = _Block_copy(&v17);

    [v14 reindexSearchableItemsWithIdentifiers:isa acknowledgementHandler:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    a3();
  }
}

unint64_t sub_10000203C()
{
  result = qword_10000C3B0;
  if (!qword_10000C3B0)
  {
    sub_1000020A0(&qword_10000C3A8, &qword_100005578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C3B0);
  }

  return result;
}

uint64_t sub_1000020A0(uint64_t *a1, uint64_t *a2)
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

void sub_1000020F8()
{
  sub_10000501C();
  sub_100001B64(&qword_10000C388, &qword_100005570);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100005500;
  swift_getErrorValue();
  v1 = sub_10000508C();
  v3 = v2;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_100004C9C();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  sub_100004AF0(0, &qword_10000C3A0, OS_os_log_ptr);
  v4 = sub_10000504C();
  sub_100004F2C();
}

id TTRSIEIndexRequestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRSIEIndexRequestHandler.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSIEIndexRequestHandler();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRSIEIndexRequestHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSIEIndexRequestHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000024C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100002594(v11, 0, 0, 1, a1, a2);
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
    sub_100004BD8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100004AA4(v11);
  return v7;
}

unint64_t sub_100002594(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000026A0(a5, a6);
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
    result = sub_10000506C();
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

char *sub_1000026A0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000026EC(a1, a2);
  sub_10000281C(&off_100008508);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000026EC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100002908(v5, 0);
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

  result = sub_10000506C();
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
        v10 = sub_100004FDC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100002908(v10, 0);
        result = sub_10000505C();
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

uint64_t sub_10000281C(uint64_t result)
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

  result = sub_10000297C(result, v12, 1, v3);
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

void *sub_100002908(uint64_t a1, uint64_t a2)
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

  sub_100001B64(&qword_10000C410, qword_1000055F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000297C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B64(&qword_10000C410, qword_1000055F8);
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

uint64_t sub_100002A70(void *a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  sub_10000500C();
  sub_100001B64(&qword_10000C388, &qword_100005570);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100005500;
  *(v5 + 56) = sub_100004AF0(0, &qword_10000C390, CSSearchableIndex_ptr);
  *(v5 + 64) = sub_100001BAC();
  *(v5 + 32) = a1;
  sub_100004AF0(0, &qword_10000C3A0, OS_os_log_ptr);
  v6 = a1;
  v7 = sub_10000504C();
  sub_100004F2C();

  v8 = [objc_opt_self() weakSharedInstance];
  v9 = sub_100004F6C();
  v18 = sub_100001C14;
  v19 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_100001C24;
  v17 = &unk_100008670;
  v10 = _Block_copy(&v14);
  v11 = [v8 syncIndexingPerformerWithReason:v9 errorHandler:v10];
  _Block_release(v10);

  if (v11)
  {
    v18 = sub_100004D10;
    v19 = v4;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100001CA4;
    v17 = &unk_100008698;
    v12 = _Block_copy(&v14);

    [v11 reindexAllSearchableItemsWithAcknowledgementHandler:v12];
    _Block_release(v12);

    return swift_unknownObjectRelease();
  }

  else
  {
    a2[2](a2);
  }
}

void sub_100002D30(void *a1, uint64_t a2, void (**a3)(void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  sub_100001B64(&qword_10000C388, &qword_100005570);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100005510;
  *(v7 + 56) = sub_100004AF0(0, &qword_10000C390, CSSearchableIndex_ptr);
  *(v7 + 64) = sub_100001BAC();
  *(v7 + 32) = a1;
  *(v7 + 96) = sub_100001B64(&qword_10000C3A8, &qword_100005578);
  *(v7 + 104) = sub_10000203C();
  *(v7 + 72) = a2;
  sub_100004AF0(0, &qword_10000C3A0, OS_os_log_ptr);
  _Block_copy(a3);
  v8 = a1;

  v9 = sub_10000504C();
  sub_10000502C();
  sub_100004F2C();

  v10 = [objc_opt_self() weakSharedInstance];
  v11 = sub_100004F6C();
  v20 = sub_1000020E8;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100001C24;
  v19 = &unk_1000085F8;
  v12 = _Block_copy(&v16);
  v13 = [v10 syncIndexingPerformerWithReason:v11 errorHandler:v12];
  _Block_release(v12);

  if (v13)
  {
    isa = sub_100004FEC().super.isa;
    v20 = sub_100004A5C;
    v21 = v6;
    v16 = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_100001CA4;
    v19 = &unk_100008620;
    v15 = _Block_copy(&v16);

    [v13 reindexSearchableItemsWithIdentifiers:isa acknowledgementHandler:v15];
    _Block_release(v15);

    swift_unknownObjectRelease();
  }

  else
  {
    a3[2](a3);
  }
}

char *sub_100003040(void *a1, unint64_t a2)
{
  v97 = a2;
  v99 = a1;
  v96 = sub_100004EBC();
  v94 = *(v96 - 1);
  v2 = v94[8];
  (__chkstk_darwin)();
  v95 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100001B64(&qword_10000C400, &qword_1000055E8) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v90 - v8;
  v10 = sub_100004EDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004E8C();
  sub_100001B64(&qword_10000C408, &qword_1000055F0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100005500;
  (*(v11 + 104))(v14, enum case for REMSearchableItemAttributeName.itemType(_:), v10);
  v16 = sub_100004ECC();
  v18 = v17;
  (*(v11 + 8))(v14, v10);
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v20 = v97;
  v19 = v98;
  v21 = v99;
  v22 = sub_100004E7C();
  if (v19)
  {

    if (qword_10000C360 != -1)
    {
      swift_once();
    }

    v24 = sub_100004F4C();
    sub_100004A6C(v24, qword_10000C368);

    v25 = sub_100004F3C();
    v26 = sub_10000501C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v100 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000024C8(v21, v20, &v100);
      _os_log_impl(&_mh_execute_header, v25, v26, "TTRSIEIndexRequestHandler: Error occured when querying spotlight for item identifier {itemIdentifier: %s}", v27, 0xCu);
      sub_100004AA4(v28);
    }

LABEL_7:
    swift_willThrow();
    return v25;
  }

  v30 = v22;
  v31 = v23;
  v91 = v7;
  v33 = v95;
  v32 = v96;

  if (!v30)
  {
    if (qword_10000C360 != -1)
    {
      swift_once();
    }

    v46 = sub_100004F4C();
    sub_100004A6C(v46, qword_10000C368);

    v47 = sub_100004F3C();
    v48 = sub_10000501C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v100 = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_1000024C8(v21, v20, &v100);
      _os_log_impl(&_mh_execute_header, v47, v48, "TTRSIEIndexRequestHandler: Spotlight item identifier does not exist {itemIdentifier: %s}", v49, 0xCu);
      sub_100004AA4(v50);
    }

    v25 = objc_opt_self();
    v51 = sub_100004F6C();
    [v25 invalidParameterErrorWithDescription:v51];

    goto LABEL_7;
  }

  v34 = v20;
  v92 = v30;
  v93 = v30;
  v98 = v31;
  sub_10000503C();
  v35 = v94;
  v90 = v94[6];
  if (v90(v9, 1, v32) != 1)
  {
    v52 = (*(v35 + 88))(v9, v32);
    if (v52 == enum case for REMSearchableItemType.reminder(_:))
    {
      v96 = v31;
      v53 = [objc_allocWithZone(REMStore) init];
      v100 = 0;
      v54 = v93;
      v55 = [v53 fetchReminderWithObjectID:v93 error:&v100];
      v56 = v100;
      if (v55)
      {
        v25 = v55;
        v57 = v98;
LABEL_28:
        v60 = v56;
        sub_100004B38(v92, v96);

        return v25;
      }

      v25 = v100;
      sub_100004E4C();

      swift_willThrow();
      if (qword_10000C360 != -1)
      {
        swift_once();
      }

      v71 = sub_100004F4C();
      sub_100004A6C(v71, qword_10000C368);

      v72 = v54;
      swift_errorRetain();
      v73 = sub_100004F3C();
      v74 = sub_10000501C();

      if (os_log_type_enabled(v73, v74))
      {
        v25 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v94 = v75;
        v95 = swift_slowAlloc();
        v100 = v95;
        *v25 = 136315650;
        *(v25 + 4) = sub_1000024C8(v99, v34, &v100);
        *(v25 + 6) = 2112;
        *(v25 + 14) = v72;
        v76 = v92;
        *v75 = v92;
        *(v25 + 11) = 2080;
        swift_getErrorValue();
        v77 = v72;
        v78 = sub_10000509C();
        v80 = sub_1000024C8(v78, v79, &v100);
        v81 = v76;

        *(v25 + 3) = v80;
        v82 = "TTRSIEIndexRequestHandler: Error fetching reminder {spotlightItemIdentifier: %s, objectID: %@, error: %s}";
LABEL_41:
        _os_log_impl(&_mh_execute_header, v73, v74, v82, v25, 0x20u);
        sub_100004B78(v94, &qword_10000C3E8, &qword_1000055D8);

        swift_arrayDestroy();

LABEL_43:
        swift_willThrow();
        sub_100004B38(v81, v96);

        return v25;
      }
    }

    else
    {
      if (v52 != enum case for REMSearchableItemType.list(_:))
      {
        (v94[1])(v9, v32);
        goto LABEL_11;
      }

      v96 = v31;
      v54 = [objc_allocWithZone(REMStore) init];
      v100 = 0;
      v57 = v93;
      v59 = [v54 fetchListWithObjectID:v93 error:&v100];
      v56 = v100;
      if (v59)
      {
        v25 = v59;
        v53 = v98;
        goto LABEL_28;
      }

      v25 = v100;
      sub_100004E4C();

      swift_willThrow();
      if (qword_10000C360 != -1)
      {
        swift_once();
      }

      v83 = sub_100004F4C();
      sub_100004A6C(v83, qword_10000C368);

      v72 = v57;
      swift_errorRetain();
      v73 = sub_100004F3C();
      v74 = sub_10000501C();

      if (os_log_type_enabled(v73, v74))
      {
        v25 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v94 = v84;
        v95 = swift_slowAlloc();
        v100 = v95;
        *v25 = 136315650;
        *(v25 + 4) = sub_1000024C8(v99, v34, &v100);
        *(v25 + 6) = 2112;
        *(v25 + 14) = v72;
        v85 = v92;
        *v84 = v92;
        *(v25 + 11) = 2080;
        swift_getErrorValue();
        v86 = v72;
        v87 = sub_10000509C();
        v89 = sub_1000024C8(v87, v88, &v100);
        v81 = v85;

        *(v25 + 3) = v89;
        v82 = "TTRSIEIndexRequestHandler: Error fetching list {spotlightItemIdentifier: %s, objectID: %@, error: %s}";
        goto LABEL_41;
      }
    }

    v81 = v92;
    goto LABEL_43;
  }

LABEL_11:
  if (qword_10000C360 != -1)
  {
    swift_once();
  }

  v36 = sub_100004F4C();
  sub_100004A6C(v36, qword_10000C368);
  v37 = v98;
  v38 = sub_100004F3C();
  v39 = sub_10000501C();

  v40 = os_log_type_enabled(v38, v39);
  v99 = v37;
  if (v40)
  {
    v41 = v33;
    v42 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v100 = v98;
    *v42 = 136315394;
    v43 = v91;
    sub_10000503C();
    if (v90(v43, 1, v32))
    {
      sub_100004B78(v43, &qword_10000C400, &qword_1000055E8);
      v44 = 0xE300000000000000;
      v45 = 7104878;
    }

    else
    {
      v61 = v94;
      (v94[2])(v41, v43, v32);
      sub_100004B78(v43, &qword_10000C400, &qword_1000055E8);
      v62 = sub_100004EAC();
      v63 = v41;
      v64 = v62;
      v44 = v65;
      (*(v61 + 8))(v63, v32);
      v45 = v64;
    }

    v58 = v93;
    v66 = sub_1000024C8(v45, v44, &v100);

    *(v42 + 4) = v66;
    *(v42 + 12) = 2080;
    v67 = sub_100004F7C();
    v69 = sub_1000024C8(v67, v68, &v100);

    *(v42 + 14) = v69;
    _os_log_impl(&_mh_execute_header, v38, v39, "TTRSIEIndexRequestHandler: Item type does not support exporting to data type {itemType: %s, dataTypeIdentifier: %s}", v42, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v58 = v93;
  }

  v25 = objc_opt_self();
  v70 = sub_100004F6C();
  [v25 invalidParameterErrorWithDescription:v70];

  swift_willThrow();
  sub_100004B38(v92, v31);

  return v25;
}

uint64_t sub_100003D78(void *a1, void *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v106 = a2;
  v101 = sub_100004FBC();
  v9 = *(v101 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v101);
  v100 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100004F1C();
  v103 = *(v12 - 8);
  v104 = v12;
  v13 = *(v103 + 64);
  v14 = __chkstk_darwin(v12);
  v99 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v95 - v16;
  if (qword_10000C360 != -1)
  {
    swift_once();
  }

  v18 = sub_100004F4C();
  v19 = sub_100004A6C(v18, qword_10000C368);
  v20 = a1;

  v98 = v19;
  v21 = sub_100004F3C();
  v22 = sub_10000502C();

  v23 = os_log_type_enabled(v21, v22);
  v105 = a3;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v97 = v9;
    v25 = v24;
    v26 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v107[0] = v96;
    *v25 = 138412802;
    *(v25 + 4) = v20;
    *v26 = v20;
    *(v25 + 12) = 2080;
    v27 = v20;
    *(v25 + 14) = sub_1000024C8(v106, a3, v107);
    *(v25 + 22) = 2080;
    *(v25 + 24) = sub_1000024C8(a4, a5, v107);
    _os_log_impl(&_mh_execute_header, v21, v22, "TTRSIEIndexRequestHandler: Generating data representation of an item {searchableIndex: %@, itemIdentifier: %s, typeIdentifier, %s}", v25, 0x20u);
    sub_100004B78(v26, &qword_10000C3E8, &qword_1000055D8);

    swift_arrayDestroy();

    v9 = v97;
  }

  sub_100004EFC();
  v28 = sub_100004EEC();
  v30 = v29;
  v31 = v104;
  v32 = *(v103 + 8);
  v32(v17, v104);
  if (v28 == a4 && v30 == a5)
  {

LABEL_14:
    v39 = v102;
    v40 = sub_100003040(v106, v105);
    if (!v39)
    {
      v41 = v40;
      swift_getObjectType();
      sub_100004E9C();
      v42 = v100;
      sub_100004F9C();
      v30 = sub_100004F8C();
      v44 = v43;

      (*(v9 + 8))(v42, v101);
      if (v44 >> 60 == 15)
      {
        swift_unknownObjectRetain();
        v45 = sub_100004F3C();
        v46 = sub_10000501C();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = [v41 remObjectID];
          *(v47 + 4) = v49;
          *v48 = v49;
          _os_log_impl(&_mh_execute_header, v45, v46, "TTRSIEIndexRequestHandler: Couldn't encode description string to UTF-8 {objectID: %@}", v47, 0xCu);
          sub_100004B78(v48, &qword_10000C3E8, &qword_1000055D8);
        }

        goto LABEL_18;
      }

LABEL_26:
      swift_unknownObjectRelease();
      return v30;
    }

    return v30;
  }

  v34 = sub_10000507C();

  if (v34)
  {
    goto LABEL_14;
  }

  v35 = v99;
  sub_100004F0C();
  v36 = sub_100004EEC();
  v30 = v37;
  v32(v35, v31);
  if (v36 == a4 && v30 == a5)
  {

    v38 = v105;
    goto LABEL_20;
  }

  v52 = a4;
  v53 = sub_10000507C();

  v38 = v105;
  if (v53)
  {
LABEL_20:
    v54 = v102;
    v55 = sub_100003040(v106, v38);
    if (v54)
    {
      return v30;
    }

    v57 = v55;
    swift_getObjectType();
    sub_100004E9C();
    v58 = v100;
    sub_100004FAC();
    v30 = sub_100004F8C();
    v60 = v59;

    (*(v9 + 8))(v58, v101);
    if (v60 >> 60 == 15)
    {
      swift_unknownObjectRetain();
      v45 = sub_100004F3C();
      v61 = sub_10000501C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v45, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412290;
        v64 = [v57 remObjectID];
        *(v62 + 4) = v64;
        *v63 = v64;
        _os_log_impl(&_mh_execute_header, v45, v61, "TTRSIEIndexRequestHandler: Couldn't encode description string to UTF-16 {objectID: %@}", v62, 0xCu);
        sub_100004B78(v63, &qword_10000C3E8, &qword_1000055D8);
      }

LABEL_18:

      v50 = objc_opt_self();
      v51 = sub_100004F6C();
      v30 = [v50 internalErrorWithDebugDescription:v51];

      swift_willThrow();
      swift_unknownObjectRelease();
      return v30;
    }

    goto LABEL_26;
  }

  v65 = v105;
  if (sub_100004F7C() == v52 && v66 == a5)
  {

    goto LABEL_31;
  }

  v67 = v52;
  v30 = sub_10000507C();

  if (v30)
  {
LABEL_31:
    v68 = v102;
    v69 = sub_100003040(v106, v65);
    if (!v68)
    {
      v71 = v69;
      v72 = v70;
      objc_opt_self();
      v73 = swift_dynamicCastObjCClass();
      if (v73)
      {
        v74 = v73;
        v75 = objc_opt_self();
        sub_100001B64(&qword_10000C3F0, &qword_1000055E0);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_100005520;
        *(v76 + 32) = v74;
        sub_100004AF0(0, &qword_10000C3F8, REMReminder_ptr);
        swift_unknownObjectRetain_n();
        isa = sub_100004FEC().super.isa;

        v78 = [v75 exportICSCalendarFromReminders:isa];

        v79 = REMiCalendarDataFromICSCalendar();
        v30 = sub_100004E6C();
        swift_unknownObjectRelease_n();
      }

      else
      {
        swift_unknownObjectRetain();
        v85 = sub_100004F3C();
        v86 = sub_10000501C();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v108 = v89;
          *v87 = 138412546;
          v90 = [v71 remObjectID];
          *(v87 + 4) = v90;
          *v88 = v90;
          *(v87 + 12) = 2080;
          v107[0] = swift_getObjectType();
          v107[1] = v72;
          sub_100001B64(&qword_10000C3E0, &qword_1000055D0);
          v91 = sub_100004FCC();
          v93 = sub_1000024C8(v91, v92, &v108);

          *(v87 + 14) = v93;
          _os_log_impl(&_mh_execute_header, v85, v86, "TTRSIEIndexRequestHandler: Unsupported type of REMSearchableItem for exporting to ICS data {objectID: %@, type: %s}", v87, 0x16u);
          sub_100004B78(v88, &qword_10000C3E8, &qword_1000055D8);

          sub_100004AA4(v89);
        }

        v94 = objc_opt_self();
        v30 = sub_100004F6C();
        [v94 internalErrorWithDebugDescription:v30];

        swift_willThrow();
        swift_unknownObjectRelease();
      }
    }

    return v30;
  }

  v80 = sub_100004F3C();
  v81 = sub_10000501C();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v107[0] = v83;
    *v82 = 136315138;
    *(v82 + 4) = sub_1000024C8(v67, a5, v107);
    _os_log_impl(&_mh_execute_header, v80, v81, "TTRSIEIndexRequestHandler: Unsupported typeIdentifier {typeIdentifier: %s}", v82, 0xCu);
    sub_100004AA4(v83);
  }

  v84 = objc_opt_self();
  v30 = sub_100004F6C();
  [v84 invalidParameterErrorWithDescription:v30];

  swift_willThrow();
  return v30;
}

uint64_t sub_1000049D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100004A24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100004A6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004AA4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004AF0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_100004B38(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_100004B78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001B64(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100004BD8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100004C38(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100004C9C()
{
  result = qword_10000C418;
  if (!qword_10000C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C418);
  }

  return result;
}

id sub_100004D70()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004DCC()
{
  v0 = sub_100004F4C();
  sub_100004C38(v0, qword_10000C448);
  sub_100004A6C(v0, qword_10000C448);
  v1 = [objc_opt_self() search];
  return sub_100004F5C();
}