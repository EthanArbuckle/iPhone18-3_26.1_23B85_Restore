void sub_18E0(id a1)
{
  v1 = objc_alloc_init(AXDeviceRemoteScreenUIServiceObjc);
  v2 = qword_C938;
  qword_C938 = v1;

  v3 = [AXDisplayManagerObjcWrapper alloc];
  v5 = [(AXDisplayManagerObjcWrapper *)v3 initWithService:qword_C938];
  v4 = [[_TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService alloc] initWithDisplayManager:v5];
  [qword_C938 setService:v4];
}

void sub_1B8C(char a1)
{
  v2 = v1 + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController;
  if (!*(v1 + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController))
  {
    sub_42E4();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *v2;
    *v2 = v4;
    *(v2 + 8) = &protocol witness table for AXTwiceCompanionRootViewController;
    v6 = v4;

    if (a1)
    {
      sub_42C4();
    }

    v7 = *(v1 + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_displayManager);
    v10[4] = sub_1CD8;
    v10[5] = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_1E28;
    v10[3] = &unk_8528;
    v8 = _Block_copy(v10);
    v9 = v6;
    [v7 addContentViewController:v9 withUserInteractionEnabled:1 completion:v8];
    _Block_release(v8);
  }
}

uint64_t sub_1CD8(char a1)
{
  v2 = sub_4334();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_42F4();
  v7 = sub_4324();
  v8 = sub_43B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v7, v8, "[TWICE] Did show TWICE UI. result: %{BOOL}d", v9, 8u);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E28(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_1ED0()
{
  v1 = *(v0 + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController + 8);
    v3 = *(v0 + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController);
    swift_getObjectType();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v2;
    v6 = v1;

    sub_42B4();
  }
}

void sub_1FD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_displayManager);

    v6 = swift_allocObject();
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v9[4] = sub_3F58;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1E28;
    v9[3] = &unk_8550;
    v8 = _Block_copy(v9);

    [v5 removeContentViewController:a2 withUserInteractionEnabled:0 completion:v8];
    _Block_release(v8);
  }
}

void sub_211C(char a1)
{
  v2 = sub_4334();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_42F4();
  v7 = sub_4324();
  v8 = sub_43B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v7, v8, "[TWICE] Did hide TWICE UI. result: %{BOOL}d", v9, 8u);
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = &Strong[OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController];
    v12 = *&Strong[OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController];
    *v11 = 0;
    *(v11 + 1) = 0;
  }
}

void sub_22F8()
{
  v1 = v0 + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController;
  if (!*(v0 + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController))
  {
    v2 = v0;
    sub_42E4();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v4 = *v1;
    *v1 = v3;
    *(v1 + 8) = &protocol witness table for AXTwiceCompanionRootViewController;

    v5 = v3;
    sub_42C4();
    v6 = *(v2 + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_displayManager);
    v9[4] = sub_1CD8;
    v9[5] = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1E28;
    v9[3] = &unk_8578;
    v7 = _Block_copy(v9);
    v8 = v5;
    [v6 addContentViewController:v8 withUserInteractionEnabled:1 completion:v7];
    _Block_release(v7);
  }
}

unint64_t sub_2484(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = v4;
  v44 = a3;
  v10 = *(*(sub_2CEC(&qword_C908, &qword_5A40) - 8) + 64);
  v11 = (__chkstk_darwin)();
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v15 = sub_4334();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_3CB0(&_swiftEmptyArrayStorage);
  }

  sub_42F4();

  v19 = sub_4324();
  v20 = sub_43C4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v42 = v14;
    v22 = v21;
    v23 = swift_slowAlloc();
    v41 = v6;
    v48 = v23;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    v43 = v5;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_2D34(v44, a4, &v48);
    *(v22 + 22) = 2080;
    v24 = sub_4364();
    v26 = v25;

    v27 = sub_2D34(v24, v26, &v48);

    *(v22 + 24) = v27;
    _os_log_impl(&dword_0, v19, v20, "[TWICE] Server got a message: %ld from client: %s. Payload: %s", v22, 0x20u);
    swift_arrayDestroy();
    v6 = v41;

    v14 = v42;
  }

  else
  {
  }

  (*(v46 + 8))(v18, v47);
  sub_4304();
  v28 = sub_4314();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v14, 1, v28) != 1)
  {
    v30 = v45;
    sub_3F60(v14, v45, &qword_C908, &qword_5A40);
    v31 = (*(v29 + 88))(v30, v28);
    if (v31 == enum case for AXWatchRemoteScreenAXUIServiceMessageID.startTwiceRemoteScreen(_:))
    {
      sub_1B8C(0);
    }

    else if (v31 == enum case for AXWatchRemoteScreenAXUIServiceMessageID.stopTwiceRemoteScreen(_:))
    {
      v32 = *(v6 + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController);
      if (v32)
      {
        v33 = *(v6 + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController + 8);
        v34 = *(v6 + OBJC_IVAR____TtC27AXWatchRemoteScreenUIServer29AXDeviceRemoteScreenUIService_rootViewController);
        swift_getObjectType();
        v35 = v14;
        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v37 = swift_allocObject();
        v37[2] = v36;
        v37[3] = v32;
        v37[4] = v33;
        v38 = v32;

        sub_42B4();

        v14 = v35;
      }
    }

    else if (v31 == enum case for AXWatchRemoteScreenAXUIServiceMessageID.restartTwiceRemoteScreen(_:))
    {
      sub_22F8();
    }

    else if (v31 == enum case for AXWatchRemoteScreenAXUIServiceMessageID.npsTwiceRemoteScreenOn(_:) || v31 == enum case for AXWatchRemoteScreenAXUIServiceMessageID.npsTwiceRemoteScreenOff(_:))
    {
      AXNPSSetWatchRemoteScreenEnabled();
    }

    else
    {
      (*(v29 + 8))(v45, v28);
    }
  }

  sub_3DEC(v14);
  return sub_3CB0(&_swiftEmptyArrayStorage);
}

id sub_2C44()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_2CEC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_2D34(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2E00(v11, 0, 0, 1, a1, a2);
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
    sub_3EE0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_3E94(v11);
  return v7;
}

unint64_t sub_2E00(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2F0C(a5, a6);
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
    result = sub_4434();
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

char *sub_2F0C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2F58(a1, a2);
  sub_3088(&off_84B0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_2F58(uint64_t a1, unint64_t a2)
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

  v6 = sub_3174(v5, 0);
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

  result = sub_4434();
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
        v10 = sub_4384();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3174(v10, 0);
        result = sub_4424();
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

uint64_t sub_3088(uint64_t result)
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

  result = sub_31E8(result, v12, 1, v3);
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

void *sub_3174(uint64_t a1, uint64_t a2)
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

  sub_2CEC(&qword_C910, &qword_5A48);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_31E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2CEC(&qword_C910, &qword_5A48);
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

unint64_t sub_32DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_43D4(*(v2 + 40));

  return sub_3320(a1, v4);
}

unint64_t sub_3320(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_3FD8(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_43E4();
      sub_4034(v8);
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

uint64_t sub_33E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_43D4(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_3FD8(*(v6 + 48) + 40 * v9, v17);
      v11 = sub_43E4();
      sub_4034(v17);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_4034(a2);
    sub_3FD8(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v12 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_3FD8(a2, v17);
    v16 = *v3;
    sub_3794(v17, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_3534(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2CEC(&qword_C930, qword_5A68);
  result = sub_4414();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v29 = *v19;
      v30 = *(v19 + 16);
      v31 = *(v19 + 32);
      result = sub_43D4(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v29;
      *(v15 + 16) = v30;
      *(v15 + 32) = v31;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_3794(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_3534(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_390C();
      goto LABEL_12;
    }

    sub_3A84(v7 + 1);
  }

  v9 = *v3;
  result = sub_43D4(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_3FD8(*(v9 + 48) + 40 * a2, v19);
      v12 = sub_43E4();
      result = sub_4034(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_4454();
  __break(1u);
  return result;
}

void *sub_390C()
{
  v1 = v0;
  sub_2CEC(&qword_C930, qword_5A68);
  v2 = *v0;
  v3 = sub_4404();
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_3FD8(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

uint64_t sub_3A84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2CEC(&qword_C930, qword_5A68);
  result = sub_4414();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_3FD8(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v28);
      result = sub_43D4(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v28[0];
      v16 = v28[1];
      *(v14 + 32) = v29;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
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

unint64_t sub_3CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2CEC(&qword_C918, &qword_5A50);
    v3 = sub_4444();
    v4 = a1 + 32;

    while (1)
    {
      sub_3F60(v4, v13, &qword_C920, &qword_5A58);
      result = sub_32DC(v13);
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
      result = sub_3FC8(&v15, (v3[7] + 32 * result));
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

uint64_t sub_3DEC(uint64_t a1)
{
  v2 = sub_2CEC(&qword_C908, &qword_5A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3E54()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3E94(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_3EE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_3F60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2CEC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_3FC8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_408C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_40CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_43A4();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_3FD8(v4, v5);
      sub_33E8(v6, v5);
      sub_4034(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_4158()
{
  sub_2CEC(&qword_C928, &qword_5A60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_59F0;
  sub_43F4();
  sub_43F4();
  sub_43F4();
  v1 = sub_40CC(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}