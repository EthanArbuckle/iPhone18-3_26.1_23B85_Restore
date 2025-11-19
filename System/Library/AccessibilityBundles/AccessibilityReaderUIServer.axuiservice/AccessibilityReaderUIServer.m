uint64_t sub_1860()
{
  v1 = OBJC_IVAR___AccessibilityReaderAXUIService____lazy_storage___accessibilityReaderCoordinator;
  if (*&v0[OBJC_IVAR___AccessibilityReaderAXUIService____lazy_storage___accessibilityReaderCoordinator])
  {
    v2 = *&v0[OBJC_IVAR___AccessibilityReaderAXUIService____lazy_storage___accessibilityReaderCoordinator];
  }

  else
  {
    v3 = sub_43FC();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = v0;
    v7 = v0;
    v2 = sub_43AC();
    v8 = *&v0[v1];
    *&v7[v1] = v2;
  }

  return v2;
}

id sub_18E4()
{
  result = [objc_allocWithZone(type metadata accessor for AccessibilityReaderAXUIService()) init];
  qword_C578 = result;
  return result;
}

id sub_1914()
{
  if (qword_C570 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

id sub_19C0()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___AccessibilityReaderAXUIService____lazy_storage___accessibilityReaderCoordinator] = 0;
  v2 = OBJC_IVAR___AccessibilityReaderAXUIService_mainActorQueue;
  sub_439C();
  *&v0[v2] = sub_438C();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v10, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 sharedInstance];
  v9[4] = sub_1B20;
  v9[5] = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1C8C;
  v9[3] = &unk_84F8;
  v7 = _Block_copy(v9);
  [v6 registerUpdateBlock:v7 forRetrieveSelector:sub_436C() withListener:v5];
  _Block_release(v7);

  return v5;
}

uint64_t sub_1B20()
{
  v0 = sub_446C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_444C();
  v5 = sub_445C();
  v6 = sub_456C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Accessibility Reader enabled status changed, updating CC widget", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  sub_449C();
  sub_448C();
  sub_447C();
}

uint64_t sub_1C8C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_1CF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = sub_446C();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_44DC();
  }

  else
  {
    sub_3894(&_swiftEmptyArrayStorage);
  }

  sub_440C();
  sub_403C(&qword_C4B8);
  v30 = sub_44CC();
  v15 = v14;

  sub_444C();

  v16 = sub_445C();
  v17 = sub_458C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = v5;
    v19 = v18;
    v20 = swift_slowAlloc();
    v27 = a3;
    v31 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a2;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_2FB0(v27, a4, &v31);
    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_2FB0(v30, v15, &v31);
    _os_log_impl(&dword_0, v16, v17, "Service got a message: %ld from client: %s. Payload: %s", v19, 0x20u);
    swift_arrayDestroy();
    a3 = v27;

    v5 = v26;
  }

  (*(v28 + 8))(v13, v29);
  v21 = *&v5[OBJC_IVAR___AccessibilityReaderAXUIService_mainActorQueue];
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = v5;
  v22[4] = a3;
  v22[5] = a4;
  v22[6] = v30;
  v22[7] = v15;

  v23 = v5;
  sub_437C();

  return sub_3C7C(&_swiftEmptyArrayStorage);
}

uint64_t sub_1FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_446C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v10 = *(*(sub_3E60(&qword_C4D8, &qword_4BA8) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  sub_454C();
  v6[15] = sub_453C();
  v12 = sub_452C();
  v6[16] = v12;
  v6[17] = v11;

  return _swift_task_switch(sub_2144, v12, v11);
}

uint64_t sub_2144()
{
  v53 = v0;
  v1 = v0[14];
  v2 = v0[2];
  sub_441C();
  v3 = sub_442C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[15];

LABEL_3:
    v6 = v0[10];
    v7 = v0[7];
    v8 = v0[5];
    sub_444C();

    v9 = sub_445C();
    v10 = sub_457C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[10];
LABEL_4:
    v13 = v0[8];
    v14 = v0[9];
    if (v11)
    {
      v49 = v0[6];
      v50 = v0[7];
      v16 = v0[4];
      v15 = v0[5];
      v51 = v12;
      v17 = v0[2];
      v18 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v18 = 134218498;
      *(v18 + 4) = v17;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_2FB0(v16, v15, &v52);
      *(v18 + 22) = 2080;
      *(v18 + 24) = sub_2FB0(v49, v50, &v52);
      _os_log_impl(&dword_0, v9, v10, "Unhandled service message: %ld from client: %s. Payload: %s", v18, 0x20u);
      swift_arrayDestroy();

      (*(v14 + 8))(v51, v13);
    }

    else
    {

      (*(v14 + 8))(v12, v13);
    }

    v24 = v0[13];
    v26 = v0[11];
    v25 = v0[12];
    v27 = v0[10];
    sub_3F6C(v0[14]);

    v28 = v0[1];

    return v28();
  }

  v19 = v0[13];
  sub_3FD4(v0[14], v19, &qword_C4D8, &qword_4BA8);
  v20 = (*(v4 + 88))(v19, v3);
  if (v20 == enum case for AccessibilityReaderAXUIServiceMessageID.startAccessibilityReader(_:))
  {
    v21 = v0[3];
    v0[18] = sub_1860();
    v22 = async function pointer to AXRCoordinator.start()[1];
    v23 = swift_task_alloc();
    v0[19] = v23;
    *v23 = v0;
    v23[1] = sub_2780;

    return AXRCoordinator.start()();
  }

  else if (v20 == enum case for AccessibilityReaderAXUIServiceMessageID.stopAccessibilityReader(_:))
  {
    v29 = v0[3];
    v0[20] = sub_1860();
    v30 = async function pointer to AXRCoordinator.stop()[1];
    v31 = swift_task_alloc();
    v0[21] = v31;
    *v31 = v0;
    v31[1] = sub_2970;

    return AXRCoordinator.stop()();
  }

  else
  {
    if (v20 == enum case for AccessibilityReaderAXUIServiceMessageID.showReaderController(_:))
    {
      v32 = v0[15];
      v33 = v0[12];
      v34 = v0[7];
      v35 = v0[5];

      sub_444C();

      v9 = sub_445C();
      v10 = sub_457C();

      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[12];
      goto LABEL_4;
    }

    if (v20 == enum case for AccessibilityReaderAXUIServiceMessageID.hideReaderController(_:))
    {
      v36 = v0[15];
      v37 = v0[11];
      v38 = v0[7];
      v39 = v0[5];

      sub_444C();

      v9 = sub_445C();
      v10 = sub_457C();

      v11 = os_log_type_enabled(v9, v10);
      v12 = v0[11];
      goto LABEL_4;
    }

    if (v20 == enum case for AccessibilityReaderAXUIServiceMessageID.showReaderView(_:))
    {
      v40 = v0[3];
      v0[22] = sub_1860();
      v41 = async function pointer to AXRCoordinator.showReaderView()[1];
      v42 = swift_task_alloc();
      v0[23] = v42;
      *v42 = v0;
      v42[1] = sub_2AB4;

      return AXRCoordinator.showReaderView()();
    }

    else
    {
      if (v20 != enum case for AccessibilityReaderAXUIServiceMessageID.hideReaderView(_:))
      {
        v46 = v0[15];
        v47 = v0[13];

        (*(v4 + 8))(v47, v3);
        goto LABEL_3;
      }

      v43 = v0[3];
      v0[24] = sub_1860();
      v44 = async function pointer to AXRCoordinator.hideReaderView()[1];
      v45 = swift_task_alloc();
      v0[25] = v45;
      *v45 = v0;
      v45[1] = sub_2BF8;

      return AXRCoordinator.hideReaderView()();
    }
  }
}

uint64_t sub_2780()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return _swift_task_switch(sub_28C4, v5, v4);
}

uint64_t sub_28C4()
{
  v1 = v0[15];

  v2 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  sub_3F6C(v0[14]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2970()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return _swift_task_switch(sub_4358, v5, v4);
}

uint64_t sub_2AB4()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return _swift_task_switch(sub_4358, v5, v4);
}

uint64_t sub_2BF8()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return _swift_task_switch(sub_4358, v5, v4);
}

id sub_2F08()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2FB0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_307C(v11, 0, 0, 1, a1, a2);
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
    sub_3E04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3DB8(v11);
  return v7;
}

unint64_t sub_307C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_3188(a5, a6);
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
    result = sub_45EC();
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

char *sub_3188(uint64_t a1, unint64_t a2)
{
  v4 = sub_31D4(a1, a2);
  sub_3304(&off_84A8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_31D4(uint64_t a1, unint64_t a2)
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

  v6 = sub_33F0(v5, 0);
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

  result = sub_45EC();
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
        v10 = sub_451C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_33F0(v10, 0);
        result = sub_45DC();
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

uint64_t sub_3304(uint64_t result)
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

  result = sub_3464(result, v12, 1, v3);
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

void *sub_33F0(uint64_t a1, uint64_t a2)
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

  sub_3E60(&qword_C4C0, &qword_4B90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3464(char *result, int64_t a2, char a3, char *a4)
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
    sub_3E60(&qword_C4C0, &qword_4B90);
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

unint64_t sub_3558(uint64_t a1)
{
  v2 = v1;
  v4 = sub_459C(*(v2 + 40));

  return sub_3620(a1, v4);
}

unint64_t sub_359C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_440C();
  sub_403C(&qword_C4B8);
  v5 = sub_44EC();

  return sub_36E8(a1, v5);
}

unint64_t sub_3620(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_3EBC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_45AC();
      sub_3F18(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_36E8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_440C();
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
      sub_403C(&qword_C4F0);
      v16 = sub_44FC();
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

unint64_t sub_3894(uint64_t a1)
{
  v2 = sub_3E60(&qword_C4E0, &qword_4BB0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_3E60(&qword_C4E8, &qword_4BB8);
    v8 = sub_45FC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_3FD4(v10, v6, &qword_C4E0, &qword_4BB0);
      result = sub_359C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_440C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_3EAC(&v6[v9], (v8[7] + 32 * v14));
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

uint64_t sub_3A80()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_3AC8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_3B88;

  return sub_1FEC(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_3B88()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_3C7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3E60(&qword_C4C8, &qword_4B98);
    v3 = sub_45FC();
    v4 = a1 + 32;

    while (1)
    {
      sub_3FD4(v4, v13, &qword_C4D0, &qword_4BA0);
      result = sub_3558(v13);
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
      result = sub_3EAC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_3DB8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_3E04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3E60(uint64_t *a1, uint64_t *a2)
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

_OWORD *sub_3EAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_3F6C(uint64_t a1)
{
  v2 = sub_3E60(&qword_C4D8, &qword_4BA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3FD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_3E60(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_403C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_440C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Int sub_4098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_3E60(&unk_C500, &qword_4BC8);
    v3 = sub_45CC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_3EBC(v6 + 40 * v4, v19);
      result = sub_459C(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_3EBC(*(v3 + 48) + 40 * i, v18);
        v11 = sub_45AC();
        result = sub_3F18(v18);
        if (v11)
        {
          sub_3F18(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_41F8()
{
  if (sub_443C())
  {
    return 0;
  }

  sub_3E60(&qword_C4F8, &qword_4BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_4B30;
  sub_45BC();
  sub_45BC();
  sub_45BC();
  sub_45BC();
  v2 = sub_4098(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}