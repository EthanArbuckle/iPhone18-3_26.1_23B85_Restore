uint64_t sub_1710(uint64_t *a1)
{
  v2 = *a1;
  v3 = *&v1[*a1];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    sub_468C();
    swift_allocObject();
    v5 = v1;
    v6 = v1;
    v4 = sub_464C();
    v7 = *&v1[v2];
    *&v6[v2] = v4;
  }

  return v4;
}

id sub_17A0()
{
  result = [objc_allocWithZone(type metadata accessor for HoverTextAXUIService()) init];
  qword_C8A8 = result;
  return result;
}

id sub_17D0()
{
  if (qword_C8A0 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

unint64_t sub_1878(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v41 = a2;
  v42 = a3;
  v47 = sub_46EC();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
  }

  else
  {
    v13 = sub_41D8(&_swiftEmptyArrayStorage);
  }

  v39 = sub_471C();
  v15 = v14;
  v46[0] = 1954047348;
  v46[1] = 0xE400000000000000;
  sub_47FC();
  if (*(v13 + 16) && (v16 = sub_40CC(v45), (v17 & 1) != 0))
  {
    sub_448C(*(v13 + 56) + 32 * v16, v46);
    sub_4314(v45);

    v18 = swift_dynamicCast();
    if (v18)
    {
      v19 = v43;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = v44;
    }

    else
    {
      v20 = 0;
    }

    v38 = v20;
  }

  else
  {

    sub_4314(v45);
    v19 = 0;
    v38 = 0;
  }

  v21 = sub_46CC();
  swift_beginAccess();
  (*(v9 + 16))(v12, v21, v47);

  v22 = sub_46DC();
  v23 = sub_47CC();
  v37 = v12;
  v24 = v23;

  v25 = os_log_type_enabled(v22, v24);
  v40 = v15;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v36 = v5;
    v27 = v26;
    v46[0] = swift_slowAlloc();
    *v27 = 134218498;
    v28 = v42;
    *(v27 + 4) = v41;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_3B24(v28, a4, v46);
    *(v27 + 22) = 2080;
    v29 = v39;
    *(v27 + 24) = sub_3B24(v39, v40, v46);
    _os_log_impl(&dword_0, v22, v24, "Service got a message: %ld from client: %s. Payload: %s", v27, 0x20u);
    swift_arrayDestroy();

    (*(v9 + 8))(v37, v47);
  }

  else
  {

    (*(v9 + 8))(v37, v47);
    v29 = v39;
  }

  v30 = *&v6[OBJC_IVAR___HoverTextAXUIService_mainActorQueue];
  v31 = swift_allocObject();
  v31[2] = v41;
  v31[3] = v6;
  v32 = v38;
  v31[4] = v19;
  v31[5] = v32;
  v31[6] = v42;
  v31[7] = a4;
  v33 = v40;
  v31[8] = v29;
  v31[9] = v33;

  v34 = v6;
  sub_469C();

  return sub_41D8(&_swiftEmptyArrayStorage);
}

uint64_t sub_1C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v9 = sub_46EC();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();
  sub_478C();
  v8[16] = sub_477C();
  v13 = sub_476C();
  v8[17] = v13;
  v8[18] = v12;

  return _swift_task_switch(sub_1D58, v13, v12);
}

uint64_t sub_1D58()
{
  v43 = v0;
  v1 = v0[5];
  if (v1 <= 2)
  {
    if (v1 != 1)
    {
      if (v1 == 2)
      {
        v6 = v0[6];
        v0[19] = sub_1710(&OBJC_IVAR___HoverTextAXUIService____lazy_storage___hoverTextCoordinator);
        v7 = async function pointer to HoverTextCoordinator.stopHoverText()[1];
        v4 = swift_task_alloc();
        v0[20] = v4;
        *v4 = v0;
        v5 = sub_21C8;
        goto LABEL_9;
      }

      goto LABEL_19;
    }

    v17 = v0[6];
    v0[21] = sub_1710(&OBJC_IVAR___HoverTextAXUIService____lazy_storage___hoverTextCoordinator);
    v18 = async function pointer to HoverTextCoordinator.startHoverText()[1];
    v15 = swift_task_alloc();
    v0[22] = v15;
    *v15 = v0;
    v16 = sub_2374;
  }

  else
  {
    if (v1 == 3)
    {
      v8 = v0[16];
      v9 = v0[8];

      if (v9)
      {
        v11 = v0[7];
        v10 = v0[8];
        v12 = v0[6];
        sub_1710(&OBJC_IVAR___HoverTextAXUIService____lazy_storage___hoverTextCoordinator);
        sub_467C();
      }

      goto LABEL_22;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        v2 = v0[6];
        v0[25] = sub_1710(&OBJC_IVAR___HoverTextAXUIService____lazy_storage___hoverTextTypingCoordinator);
        v3 = async function pointer to HoverTextCoordinator.stopHoverText()[1];
        v4 = swift_task_alloc();
        v0[26] = v4;
        *v4 = v0;
        v5 = sub_25FC;
LABEL_9:
        v4[1] = v5;

        return HoverTextCoordinator.stopHoverText()();
      }

LABEL_19:
      v20 = v0[15];
      v19 = v0[16];
      v21 = v0[13];
      v22 = v0[14];
      v23 = v0[12];
      v24 = v0[10];

      v25 = sub_46CC();
      swift_beginAccess();
      (*(v22 + 16))(v20, v25, v21);

      v26 = sub_46DC();
      v27 = sub_47BC();

      v28 = os_log_type_enabled(v26, v27);
      v30 = v0[14];
      v29 = v0[15];
      v31 = v0[13];
      if (v28)
      {
        v39 = v0[11];
        v40 = v0[12];
        v33 = v0[9];
        v32 = v0[10];
        v41 = v0[15];
        v34 = v0[5];
        v35 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v35 = 134218498;
        *(v35 + 4) = v34;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_3B24(v33, v32, &v42);
        *(v35 + 22) = 2080;
        *(v35 + 24) = sub_3B24(v39, v40, &v42);
        _os_log_impl(&dword_0, v26, v27, "Unhandled service message: %ld from client: %s. Payload: %s", v35, 0x20u);
        swift_arrayDestroy();

        (*(v30 + 8))(v41, v31);
      }

      else
      {

        (*(v30 + 8))(v29, v31);
      }

LABEL_22:
      v36 = v0[15];

      v37 = v0[1];

      return v37();
    }

    v13 = v0[6];
    v0[23] = sub_1710(&OBJC_IVAR___HoverTextAXUIService____lazy_storage___hoverTextTypingCoordinator);
    v14 = async function pointer to HoverTextCoordinator.startHoverText()[1];
    v15 = swift_task_alloc();
    v0[24] = v15;
    *v15 = v0;
    v16 = sub_24B8;
  }

  v15[1] = v16;

  return HoverTextCoordinator.startHoverText()();
}

uint64_t sub_21C8()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return _swift_task_switch(sub_230C, v5, v4);
}

uint64_t sub_230C()
{
  v1 = v0[16];

  v2 = v0[15];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2374()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return _swift_task_switch(sub_4618, v5, v4);
}

uint64_t sub_24B8()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return _swift_task_switch(sub_4618, v5, v4);
}

uint64_t sub_25FC()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v7 = *v0;

  v4 = *(v1 + 144);
  v5 = *(v1 + 136);

  return _swift_task_switch(sub_4618, v5, v4);
}

uint64_t sub_2900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_478C();
  v5[4] = sub_477C();
  v7 = sub_476C();

  return _swift_task_switch(sub_2998, v7, v6);
}

uint64_t sub_2998()
{
  v2 = v0[2];
  v1 = v0[3];
  result = sub_1710(&OBJC_IVAR___HoverTextAXUIService____lazy_storage___hoverTextCoordinator);
  if (v1)
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = v0[2];

    sub_465C();

    sub_1710(&OBJC_IVAR___HoverTextAXUIService____lazy_storage___hoverTextTypingCoordinator);
    sub_465C();

    v7 = v0[1];

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_346C(&qword_C818, &qword_4ED0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_4594(a3, v26 - v10, &qword_C818, &qword_4ED0);
  v12 = sub_47AC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_3550(v11);
  }

  else
  {
    sub_479C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_476C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_474C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_3550(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_3550(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2DBC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v26[1] = a3;
  v27 = a4;
  v6 = v4;
  v8 = (*(*(sub_346C(&qword_C818, &qword_4ED0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v26 - v9;
  v11 = sub_46EC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_46CC();
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_46DC();
  v18 = sub_47CC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, a2, v19, 2u);
  }

  (*(v12 + 8))(v15, v11);
  v20 = sub_47AC();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_478C();
  v21 = a1;
  v22 = v6;
  v23 = sub_477C();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = &protocol witness table for MainActor;
  v24[4] = v22;
  v24[5] = a1;
  sub_2A5C(0, 0, v10, v27, v24);
}

uint64_t sub_3028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_478C();
  v5[4] = sub_477C();
  v7 = sub_476C();

  return _swift_task_switch(sub_30C0, v7, v6);
}

uint64_t sub_30C0()
{
  v2 = v0[2];
  v1 = v0[3];
  result = sub_1710(&OBJC_IVAR___HoverTextAXUIService____lazy_storage___hoverTextCoordinator);
  if (v1)
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = v0[2];

    sub_466C();

    sub_1710(&OBJC_IVAR___HoverTextAXUIService____lazy_storage___hoverTextTypingCoordinator);
    sub_466C();

    v7 = v0[1];

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_32CC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_3414()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXUIHoverTextAlertStyleProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_346C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_34B8()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_4614;

  return sub_3028(v4, v5, v6, v2, v3);
}

uint64_t sub_3550(uint64_t a1)
{
  v2 = sub_346C(&qword_C818, &qword_4ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_35B8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_36B0;

  return v7(a1);
}

uint64_t sub_36B0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_37A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_4614;

  return sub_35B8(a1, v5);
}

uint64_t sub_3860()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3898(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_3950;

  return sub_35B8(a1, v5);
}

uint64_t sub_3950()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_3A44()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3A8C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_4614;

  return sub_2900(v4, v5, v6, v2, v3);
}

uint64_t sub_3B24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3BF0(v11, 0, 0, 1, a1, a2);
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
    sub_448C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_44E8(v11);
  return v7;
}

unint64_t sub_3BF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_3CFC(a5, a6);
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
    result = sub_481C();
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

char *sub_3CFC(uint64_t a1, unint64_t a2)
{
  v4 = sub_3D48(a1, a2);
  sub_3E78(&off_83E8);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_3D48(uint64_t a1, unint64_t a2)
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

  v6 = sub_3F64(v5, 0);
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

  result = sub_481C();
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
        v10 = sub_475C();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3F64(v10, 0);
        result = sub_480C();
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

uint64_t sub_3E78(uint64_t result)
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

  result = sub_3FD8(result, v12, 1, v3);
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

void *sub_3F64(uint64_t a1, uint64_t a2)
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

  sub_346C(&qword_C820, &qword_4F20);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3FD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_346C(&qword_C820, &qword_4F20);
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

unint64_t sub_40CC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_47DC(*(v2 + 40));

  return sub_4110(a1, v4);
}

unint64_t sub_4110(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_4538(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_47EC();
      sub_4314(v8);
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

unint64_t sub_41D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_346C(&qword_C828, &qword_4F28);
    v3 = sub_482C();
    v4 = a1 + 32;

    while (1)
    {
      sub_4594(v4, v13, &unk_C830, &qword_4F30);
      result = sub_40CC(v13);
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
      result = sub_45FC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_4368()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_43B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  v8 = v0[9];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_3950;

  return sub_1C58(v2, v3, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_448C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_44E8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_4594(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_346C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_45FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}