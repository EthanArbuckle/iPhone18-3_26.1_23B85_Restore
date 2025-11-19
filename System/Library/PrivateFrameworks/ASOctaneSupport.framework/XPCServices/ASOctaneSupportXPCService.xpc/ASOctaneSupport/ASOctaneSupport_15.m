uint64_t sub_100119C34(char *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v32[1] = a3;
  v33 = a2;
  v5 = *a1;
  sub_100019BC4(&qword_1002ACE88);
  v6 = sub_1001F8158();
  v32[0] = *(v6 - 8);
  v8 = __chkstk_darwin(v6, v7);
  v10 = (v32 - v9);
  v11 = *(v5 + 80);
  v34 = *(v11 - 8);
  __chkstk_darwin(v8, v12);
  v14 = v32 - v13;
  v15 = sub_1001F8158();
  v16 = sub_1001F74B8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = (v32 - v19);
  v21 = *(v5 + 88);
  swift_beginAccess();
  (*(v17 + 16))(v20, &a1[v21], v16);
  result = sub_10001C990(v20, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v10 = *v20;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      EventLoopPromise._setValue(value:)();
      v24 = v23;

      (*(v32[0] + 8))(v10, v6);
    }

    else
    {
      v25 = v34;
      (*(v34 + 32))(v14, v20, v11);
      v26 = v33(v14);
      v27 = *(v26 + *(*v26 + 96) + 8);
      ObjectType = swift_getObjectType();
      v29 = *(v27 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v27) = v29(ObjectType, v27);
      swift_unknownObjectRelease();
      if (v27)
      {
        v30 = swift_allocObject();
        v30[2] = v11;
        v30[3] = v35;
        v30[4] = v26;

        EventLoopFuture._addCallback(_:)();
        v24 = v31;

        (*(v25 + 8))(v14, v11);
      }

      else
      {
        EventLoopFuture.cascade(to:)(v35);

        (*(v25 + 8))(v14, v11);
        return 0;
      }
    }

    return v24;
  }

  return result;
}

uint64_t sub_10011A06C()
{
  sub_100023584();
  sub_100047940();
  result = swift_beginAccess();
  v2 = *(v0 + 24);
  if (v2 != 255)
  {
    return sub_1001DBFE4(*(v0 + 16), v2 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_10011A0C0(uint64_t a1, char *a2)
{
  v3 = *a2;
  sub_100019BC4(&qword_1002ACE88);
  v4 = sub_1001F8158();
  v5 = sub_1001F74B8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v14 - v8;
  v10 = *(v3 + 88);
  swift_beginAccess();
  (*(v6 + 16))(v9, &a2[v10], v5);
  result = sub_10001C990(v9, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    EventLoopPromise._setValue(value:)();
    v13 = v12;
    (*(*(v4 - 8) + 8))(v9, v4);
    return v13;
  }

  return result;
}

uint64_t sub_10011A278(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v9);
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_7:

    return 0;
  }

  result = swift_beginAccess();
  v12 = *(a2 + 24);
  if (v12 != 255)
  {
    v13 = *(a2 + 16);

    if (v12)
    {
      sub_10012DCB8(v13, v12);
      a3(v13);
    }

    sub_10012DCD0(v13, v12);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011A4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  sub_1000A3FC4();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a6;
  v16 = *(a1 + 40);
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)(v17, v18, v19, v20, v21, v16);
  sub_100047940();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    sub_100050548();

    sub_10012F490();
    CallbackList.append(_:)();
    swift_endAccess();
LABEL_9:

    return sub_10012F96C();
  }

  v22 = *(a2 + 40);
  swift_getObjectType();
  sub_10002E170();
  debugOnly(_:)(v23, v24, v25, 812, v26, v22);
  sub_100047940();
  result = swift_beginAccess();
  v28 = *(a3 + 24);
  if (v28 != 255)
  {
    v29 = *(a3 + 16);
    if (v28)
    {
      (a8)(*(a3 + 16), 1);
      sub_10012F56C();
    }

    else
    {

      sub_10012DCD0(v29, v28);
      sub_100047940();
      swift_beginAccess();
      if (*(a5 + 16))
      {
        sub_10012F774();
        *(a6 + 16) = 0;
      }

      else
      {
        v30 = sub_10002E2C0();
        a8(v30);
        sub_10012F56C();
      }
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011A720(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v9);
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_6:

    return 0;
  }

  result = swift_beginAccess();
  v12 = *(a2 + 24);
  if (v12 != 255)
  {

    if ((v12 & 1) == 0)
    {
      a3(v13);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011A890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = sub_10012ED88;
  v11[4] = v10;
  v11[5] = a3;
  v12 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v12);
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();

    v14 = 0;
  }

  else
  {
    swift_retain_n();

    v14 = sub_100119308(a2, a3, a4);
  }

  return v14;
}

uint64_t sub_10011AA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v11);
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();

    v13 = 0;
  }

  else
  {

    v13 = sub_10011948C(a2, a3, a4, a5);
  }

  return v13;
}

void sub_10011AC08()
{
  sub_10012FA30();
  sub_1000A3DBC();
  v3 = v2;
  sub_10004794C();
  v4 = swift_allocObject();
  sub_10012F744(v4);
  sub_10012FB68();
  sub_10012EE14();
  debugOnly(_:)(v5, v6, v7, v8, v9, v1);
  sub_100047940();
  swift_beginAccess();
  if (*(v3 + 24) == 255)
  {
    sub_10012F21C();

    sub_10007B9BC();
    CallbackList.append(_:)();
    swift_endAccess();
    sub_10012F55C();
    goto LABEL_5;
  }

  sub_100047940();
  swift_beginAccess();
  v10 = *(v0 + 24);
  if (v10 != 255)
  {
    sub_1001DBFE4(*(v0 + 16), v10 & 1);
    sub_10002E248();

LABEL_5:

    sub_100087260();
    sub_10012FAE8();
    return;
  }

  __break(1u);
}

uint64_t sub_10011AD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100047958();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = sub_1000732B8;
  v6[5] = 0;
  v7 = *(a1 + 40);
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)(v8, v9, v10, v11, v12, v7);
  sub_100047940();
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    sub_100050548();

    CallbackList.append(_:)();
    swift_endAccess();

LABEL_8:

    return sub_10012F398();
  }

  sub_100047940();
  result = swift_beginAccess();
  v14 = *(a2 + 24);
  if (v14 != 255)
  {
    v15 = *(a2 + 16);

    v16 = sub_10012F2E8();
    if (v14)
    {
      sub_10012DCB8(v16, v17);
      sub_1000732B8();
      v18 = sub_10002E2C0();
      sub_1001DBFE4(v18, v19);
      sub_1000A40F4();
      v20 = sub_10012F2E8();
      sub_10012DCD0(v20, v21);
    }

    else
    {
      sub_10012DCD0(v16, v17);
      sub_1001DBFE4(v15, 0);
      sub_1000A40F4();
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011AF28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v11);
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
    v21 = 0;
    goto LABEL_5;
  }

  result = swift_beginAccess();
  v14 = *(a3 + 24);
  if (v14 != 255)
  {
    v15 = *(a3 + 16);

    sub_10012DCB8(v15, v14);
    v16 = sub_100113934(a4, a5, v15, v14 & 1);
    v18 = v17;
    v20 = v19;
    sub_10012DCD0(v15, v14);
    v21 = sub_1001D6650(v16, v18, v20 & 1);
    sub_1000373FC(v16, v18, v20 & 1);
LABEL_5:

    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011B124(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = sub_10012ED34;
  v11[4] = v10;
  v11[5] = a3;
  v12 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v12);
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();

    v16 = 0;
LABEL_8:

    return v16;
  }

  swift_beginAccess();
  v14 = *(a2 + 24);
  if (v14 != 255)
  {
    v15 = *(a2 + 16);
    if (v14)
    {
      v16 = sub_1001DBFE4(*(a2 + 16), 1);
    }

    else
    {
      swift_retain_n();

      v17 = sub_10012DCD0(v15, v14);
      a4(v17);
      v16 = sub_1001DBFE4(0, 0);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_10011B3E8()
{
  sub_10001A1F0();
  v3 = v2;
  v5 = v4;
  sub_10012F034();
  sub_10012F6A8(v6, v7, v8, v9, v10);
  sub_100047958();
  v11 = swift_allocObject();
  v12 = sub_10012F254(v11);
  *(v12 + 32) = v5;
  *(v12 + 40) = v0;
  v13 = *(v1 + 40);
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)(v14, v15, v16, v17, v18, v13);
  sub_100047940();
  swift_beginAccess();
  sub_10012F9CC();
  if (v19)
  {
    sub_10012F21C();
    sub_1000A41D4();
    swift_retain_n();

    sub_1000C9970();
    CallbackList.append(_:)();
    swift_endAccess();

    sub_10012F54C();
  }

  else
  {
    sub_10012F708();
    swift_retain_n();

    v20 = sub_10012F51C();
    v3(v20);
    sub_10012EECC();
  }

  sub_1000A41D4();

  sub_10012F180();
  sub_10001A1D4();
}

uint64_t sub_10011B510(uint64_t a1, uint64_t a2, _OWORD *a3, void (*a4)(_BYTE *), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = *(a1 + 88);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v11);
  swift_beginAccess();
  if (*(a1 + 79) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();

    v13 = 0;
LABEL_5:

    return v13;
  }

  result = swift_beginAccess();
  v15 = a3[3];
  v23 = a3[4];
  v16 = a3[2];
  v22[0] = a3[1];
  v22[1] = v16;
  v22[2] = v15;
  if (HIBYTE(v23) != 255)
  {
    v17 = a3[2];
    v24 = a3[1];
    v25 = v17;
    v18 = a3[4];
    v26 = a3[3];
    v27 = v18;

    sub_1000ACFAC();
    v19 = sub_100113818(a4);
    v21 = v20;
    sub_1000374B8(v22, &qword_1002B4688);
    v13 = sub_1001DBFE4(v19, v21 & 1);
    sub_1000374AC(v19, v21 & 1);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011B74C(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 88);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v3);
  v5 = swift_beginAccess();
  if (*(v1 + 79) != 255)
  {
    return a1(v5);
  }

  swift_beginAccess();
  CallbackList.append(_:)();
  swift_endAccess();
  return 0;
}

uint64_t sub_10011B824(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v9);
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_7:

    return 0;
  }

  result = swift_beginAccess();
  v12 = *(a2 + 32);
  if (v12 != 255)
  {
    if (v12)
    {
    }

    else
    {
      v14 = *(a2 + 24);
      v15[0] = *(a2 + 16);
      v13 = v15[0];
      v15[1] = v14;

      sub_10012E484(v15[0], v14, v12);
      a3(v15);
      sub_10012E49C(v13, v14, v12);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011B9D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t *), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v11);
  swift_beginAccess();
  if (*(a1 + 25) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
    v13 = 0;
LABEL_8:

    return v13;
  }

  result = swift_beginAccess();
  v15 = *(a3 + 24);
  if (v15 >> 8 <= 0xFE)
  {
    v16 = *(a3 + 16);
    v17 = v15 & 0x100;
    if ((v15 & 0x100) != 0)
    {

      sub_10012E674(v16, v15);
      v18 = 0;
    }

    else
    {
      v21 = *(a3 + 16);
      v22 = v15;

      sub_10012E674(v16, v15);
      a4(v20, &v21);
      v17 = v15 & 0x100;
      sub_10012E698(v16, v15);
      v16 = v20[0];
      v18 = v20[1];
    }

    v19 = v17 != 0;
    v13 = sub_1001D65F0(v16, v18, SBYTE1(v17));
    sub_100037420(v16, v18, v19);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011BC18(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v3);
  v5 = swift_beginAccess();
  if (*(v1 + 25) != 255)
  {
    return a1(v5);
  }

  swift_beginAccess();
  CallbackList.append(_:)();
  swift_endAccess();
  return 0;
}

uint64_t sub_10011BCF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v11);
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
    v19 = 0;
    goto LABEL_5;
  }

  result = swift_beginAccess();
  v14 = *(a3 + 24);
  if (v14 != 255)
  {
    v15 = *(a3 + 16);

    sub_10012DCB8(v15, v14);
    v16 = sub_1001138E8(a4, a5, v15, v14 & 1);
    v18 = v17;
    sub_10012DCD0(v15, v14);
    v19 = sub_1001DBFE4(v16, v18 & 1);
    sub_1000374AC(v16, v18 & 1);
LABEL_5:

    return v19;
  }

  __break(1u);
  return result;
}

void sub_10011BEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_10012F27C();
  v10 = v9;
  sub_10012F6A8(v11, v9, v12, v13, v14);
  sub_1000A41C8();
  v15 = swift_allocObject();
  sub_10012F87C(v15);
  sub_10012EE14();
  debugOnly(_:)(v16, v17, v18, v19, v20, v7);
  sub_100047940();
  swift_beginAccess();
  sub_10012F9CC();
  if (v21)
  {
    sub_100050548();

    sub_100062888();
    CallbackList.append(_:)();
    swift_endAccess();
    goto LABEL_5;
  }

  sub_100047940();
  swift_beginAccess();
  sub_10012F6F0();
  if (!v21)
  {

    sub_10012DCB8(v6, a6);
    v10(&v22);
    sub_1000374AC(v22, v23);
LABEL_5:

    _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
    return;
  }

  __break(1u);
}

void sub_10011C00C()
{
  sub_10012FA30();
  sub_10012F034();
  sub_10012F6A8(v2, v3, v4, v5, v6);
  sub_1000A41C8();
  v7 = swift_allocObject();
  *(sub_10012F254(v7) + 32) = v0;
  v8 = *(v1 + 40);
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)(v9, v10, v11, v12, v13, v8);
  sub_100047940();
  swift_beginAccess();
  sub_10012F9CC();
  if (v14)
  {
    sub_10012F21C();

    sub_1000C9970();
    CallbackList.append(_:)();
    swift_endAccess();

    sub_10012F54C();
  }

  else
  {

    sub_10012F51C();
    sub_1001276A8();
    sub_10012EECC();
  }

  sub_10012F180();
  sub_10012FAE8();
}

void sub_10011C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_10012F27C();
  v10 = v9;
  sub_10012F6A8(v11, v9, v12, v13, v14);
  sub_1000A41C8();
  v15 = swift_allocObject();
  sub_10012F87C(v15);
  sub_10012EE14();
  debugOnly(_:)(v16, v17, v18, v19, v20, v7);
  sub_100047940();
  swift_beginAccess();
  sub_10012F9CC();
  if (v21)
  {
    sub_100050548();

    sub_100062888();
    CallbackList.append(_:)();
    swift_endAccess();
    goto LABEL_5;
  }

  sub_100047940();
  swift_beginAccess();
  sub_10012F6F0();
  if (!v21)
  {

    sub_10012DF54(v6, a6);
    v10(&v25);
    sub_10012EEDC();
    sub_10012E88C(v22, v23, v24);
LABEL_5:

    _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
    return;
  }

  __break(1u);
}

void sub_10011C258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10012FA14();
  a29 = v31;
  a30 = v32;
  v34 = v33;
  v36 = v35;
  sub_10012F27C();
  v38 = v37;
  v40 = v39;
  sub_1000A41C8();
  v41 = swift_allocObject();
  sub_10012F58C(v41);
  v42 = *(v40 + 48);
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)(v43, v44, v45, v46, v47, v42);
  sub_100047940();
  swift_beginAccess();
  if (*(v40 + 32) == 255)
  {
    sub_100050548();

    CallbackList.append(_:)();
    swift_endAccess();
    goto LABEL_5;
  }

  sub_100047940();
  swift_beginAccess();
  v48 = *(v30 + 24);
  v49 = *(v30 + 32);
  a10 = *(v30 + 16);
  a11 = v48;
  a12 = v49;
  if (v49 != 255)
  {

    v50 = sub_10012F96C();
    v36(v50);
    v38(&a10);
    v34(a10, a11, a12);
LABEL_5:

    _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
    sub_10012F9F8();
    return;
  }

  __break(1u);
}

uint64_t sub_10011C3AC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = sub_10012ECD4;
  v9[5] = v8;
  v10 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v10);
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();

    v15 = 0;
LABEL_8:

    return v15;
  }

  swift_beginAccess();
  v12 = *(a2 + 32);
  if (v12 != 255)
  {
    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    if (v12)
    {

      sub_10012DB28(v13, v14, v12);
      sub_10019DE1C(a4);
      swift_willThrow();
      v15 = sub_1001D6650(v13, v14, 1);
      sub_10012DB40(v13, v14, v12);
    }

    else
    {
      v15 = sub_1001D6650(*(a2 + 16), *(a2 + 24), 0);
    }

    goto LABEL_8;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10011C628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v9);
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();

    v11 = 0;
  }

  else
  {

    v11 = sub_1001275E0(a2, a3, a4);
  }

  return v11;
}

uint64_t sub_10011C7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = sub_10012ED0C;
  v13[5] = v12;
  v14 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v14);
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    swift_beginAccess();

    swift_unknownObjectRetain();

    CallbackList.append(_:)();
    swift_endAccess();

    v16 = 0;
  }

  else
  {
    swift_retain_n();
    swift_unknownObjectRetain_n();

    v16 = sub_100123A3C(a2, a3, a4, a5, a6);
  }

  swift_unknownObjectRelease();

  return v16;
}

uint64_t sub_10011C9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = sub_10012ED84;
  v11[5] = v10;
  v12 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v12);
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    swift_beginAccess();
    swift_unknownObjectRetain();

    CallbackList.append(_:)();
    swift_endAccess();

    v14 = 0;
  }

  else
  {
    swift_unknownObjectRetain_n();

    v14 = sub_100123E64(a2, a3, a4, a5);
  }

  swift_unknownObjectRelease();

  return v14;
}

void sub_10011CBA4()
{
  sub_10001A1F0();
  v3 = v2;
  v5 = v4;
  sub_10012F034();
  sub_10012F6A8(v6, v7, v8, v9, v10);
  sub_100047958();
  v11 = swift_allocObject();
  v12 = sub_10012F254(v11);
  *(v12 + 32) = v5;
  *(v12 + 40) = v0;
  v13 = *(v1 + 48);
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)(v14, v15, v16, v17, v18, v13);
  sub_100047940();
  swift_beginAccess();
  if (*(v1 + 32) == 255)
  {
    sub_10012F21C();
    sub_1000A41D4();
    swift_retain_n();

    sub_1000C9970();
    CallbackList.append(_:)();
    swift_endAccess();

    sub_10012F54C();
  }

  else
  {
    sub_10012F708();
    swift_retain_n();

    v19 = sub_10012F51C();
    sub_100123C88(v19, v20, v21, v3);
    sub_10012EECC();
  }

  sub_1000A41D4();

  sub_10012F180();
  sub_10001A1D4();
}

void sub_10011CCD0()
{
  sub_10012FA30();
  v2 = v1;
  sub_1000A3DBC();
  v4 = v3;
  sub_10004794C();
  v5 = swift_allocObject();
  sub_10012F744(v5);
  v6 = *(v4 + 48);
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)(v7, v8, v9, v10, v11, v6);
  sub_100047940();
  swift_beginAccess();
  if (*(v4 + 32) == 255)
  {
    sub_10012F21C();

    sub_10007B9BC();
    CallbackList.append(_:)();
    swift_endAccess();
    sub_10012F55C();
    goto LABEL_5;
  }

  sub_100047940();
  swift_beginAccess();
  v12 = *(v0 + 32);
  if (v12 != 255)
  {
    v2(*(v0 + 16), *(v0 + 24), v12 & 1);
    sub_10002E248();

LABEL_5:

    sub_100087260();
    sub_10012FAE8();
    return;
  }

  __break(1u);
}

uint64_t sub_10011CDF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v9);
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_7:

    return 0;
  }

  result = swift_beginAccess();
  v12 = *(a2 + 32);
  if (v12 != 255)
  {
    if (v12)
    {
      v13 = *(a2 + 16);
      v14 = *(a2 + 24);

      sub_10012DB28(v13, v14, v12);
      a3(v13);
      sub_10012DB40(v13, v14, v12);
    }

    else
    {
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011CFA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  sub_1000A41C8();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + 48);
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)(v10, v11, v12, v13, v14, v9);
  sub_100047940();
  swift_beginAccess();
  if (*(a1 + 32) == 255)
  {
    sub_100050548();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_7:

    return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  sub_100047940();
  result = swift_beginAccess();
  v16 = *(a2 + 32);
  if (v16 != 255)
  {
    if (v16)
    {
    }

    else
    {
      v18 = *(a2 + 24);
      v19[0] = *(a2 + 16);
      v17 = v19[0];
      v19[1] = v18;

      sub_10012DB28(v19[0], v18, v16);
      a3(v19);
      sub_10012DB40(v17, v18, v16);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011D12C()
{
  sub_100037B94();
  v2 = *(v0 + 48);
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)(v3, v4, v5, v6, v7, v2);
  sub_100047940();
  v8 = swift_beginAccess();
  if (*(v0 + 32) != 255)
  {
    return v1(v8);
  }

  sub_10012F21C();
  sub_100037B7C();
  CallbackList.append(_:)();
  swift_endAccess();
  return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
}

uint64_t sub_10011D1DC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v9);
  swift_beginAccess();
  if (*(a1 + 39) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_5:

    return 0;
  }

  result = swift_beginAccess();
  v12 = a4[2];
  v13 = a4[3];
  v14 = a4[4];
  v15 = v12;
  v16 = v13;
  v17 = v14;
  if (HIBYTE(v14) != 255)
  {

    sub_10012E830(v12, v13, v14);
    a2(&v15);
    sub_1000A3A2C(v15, v16, v17 | ((WORD2(v17) | (BYTE6(v17) << 16)) << 32), SHIBYTE(v17));
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011D38C(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 48);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v3);
  v5 = swift_beginAccess();
  if (*(v1 + 39) != 255)
  {
    return a1(v5);
  }

  swift_beginAccess();
  CallbackList.append(_:)();
  swift_endAccess();
  return 0;
}

void sub_10011D464()
{
  sub_10012FA30();
  v4 = v3;
  v6 = v5;
  sub_1000A3DBC();
  v8 = v7;
  sub_100047958();
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v6;
  v9[4] = 0;
  v9[5] = v0;
  sub_10012F8C4();
  sub_10012EE14();
  debugOnly(_:)(v10, v11, v12, v13, v14, v2);
  sub_100047940();
  swift_beginAccess();
  if (*(v8 + 24) == 255)
  {
    sub_10012F21C();

    sub_10007B9BC();
    CallbackList.append(_:)();
    swift_endAccess();

    sub_10012F55C();
  }

  else
  {

    v15 = sub_100037B7C();
    v4(v15);
    sub_10002E248();
  }

  sub_100087260();
  sub_10012FAE8();
}

uint64_t sub_10011D574(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v9);
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_7:

    return 0;
  }

  result = swift_beginAccess();
  v12 = *(a2 + 24);
  if (v12 != 255)
  {
    if (v12)
    {
      v13 = *(a2 + 16);

      sub_10012DF54(v13, v12);
      a3(v13);
      sub_10012DF80(v13, v12);
    }

    else
    {
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011D718(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v9);
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
LABEL_7:

    return 0;
  }

  result = swift_beginAccess();
  v12 = *(a2 + 24);
  if (v12 != 255)
  {
    if (v12)
    {
    }

    else
    {
      v14 = *(a2 + 16);
      v13 = v14;

      sub_10012DF54(v14, v12);
      a3(&v14);
      sub_10012DF80(v13, v12);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011D8C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 692, ObjectType, v11);
  swift_beginAccess();
  if (*(a1 + 24) == 255)
  {
    swift_beginAccess();

    CallbackList.append(_:)();
    swift_endAccess();
    v16 = 0;
LABEL_8:

    return v16;
  }

  result = swift_beginAccess();
  v14 = *(a3 + 24);
  if (v14 != 255)
  {
    v15 = *(a3 + 16);
    if (v14)
    {

      sub_10012DA88(v15, v14);
    }

    else
    {
      v17 = *(a3 + 16);

      sub_10012DA88(v15, v14);
      a4(&v17);
      sub_10012DAA0(v15, v14);
      v15 = 0;
    }

    v16 = sub_1001DBFE4(v15, v14 & 1);
    sub_1000374AC(v15, v14 & 1);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011DAD8()
{
  sub_100037B94();
  v2 = *(v0 + 40);
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)(v3, v4, v5, v6, v7, v2);
  sub_100047940();
  v8 = swift_beginAccess();
  if (*(v0 + 24) != 255)
  {
    return v1(v8);
  }

  sub_10012F21C();
  sub_100037B7C();
  CallbackList.append(_:)();
  swift_endAccess();
  return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
}

void EventLoopFuture._addCallback(_:)()
{
  sub_100037C08();
  v4 = v0;
  sub_100037B94();
  v5 = *v0;
  sub_100019BC4(&qword_1002ACE88);
  sub_1001F8158();
  sub_10012F52C();
  v6 = sub_1001F74B8();
  sub_10001A278();
  v8 = v7;
  sub_10001E844();
  __chkstk_darwin(v9, v10);
  sub_10005DBB4();
  v11 = *&v4[*(v5 + 96) + 8];
  swift_getObjectType();
  sub_10012EE14();
  debugOnly(_:)(v12, v13, v14, v15, v16, v11);
  v17 = *(*v4 + 88);
  sub_100047940();
  swift_beginAccess();
  (*(v8 + 16))(v3, &v4[v17], v6);
  v18 = sub_1000D4AC8();
  LODWORD(v17) = sub_10001C990(v18, v19, v2);
  v20 = (*(v8 + 8))(v3, v6);
  if (v17 == 1)
  {
    sub_100050548();
    sub_100037B7C();
    CallbackList.append(_:)();
    swift_endAccess();
    _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  else
  {
    v1(v20);
  }

  sub_100037B00();
}

uint64_t sub_10011DD5C()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012F674();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011A278(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_10011DE78()
{
  sub_100037C08();
  sub_10012F0C4();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F114(v1);
  sub_10012F0F8();

  v2 = sub_10012F490();
  if ((v0)(v2))
  {

    v3 = sub_10012EF84();
    sub_10011BEE0(v3, v4, v5, v6, v7, v8);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v9 = swift_allocObject();
    sub_10012EE38(v9);

    v10 = sub_10012F0D8();
    v0(v10);
  }

  sub_100037B00();
}

uint64_t sub_10011E218()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012F674();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011A720(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_10011E334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = swift_allocObject();
  v20 = a4;
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = sub_10012E948;
  v11[4] = v10;
  v11[5] = a3;
  v12 = *(a1 + 40);
  v21 = a1;
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);

  v22 = a3;
  v15 = ObjectType;

  if (v14(ObjectType, v12))
  {

    v16 = sub_10011A890(v21, a2, v22, v20, a5);

    CallbackList._run()();
    sub_100037408(v16);
  }

  else
  {
    v17 = swift_allocObject();
    v17[2] = v21;
    v17[3] = sub_10012ED5C;
    v17[4] = v11;
    v18 = *(v12 + 24);

    v18(sub_10012ED8C, v17, v15, v12);
  }
}

uint64_t sub_10011E57C()
{
  sub_1000A4080();
  v5 = v4;
  v7 = v6;
  sub_10012EF34();
  sub_100047958();
  v8 = swift_allocObject();
  v9 = sub_10012F254(v8);
  v19 = v0;
  *(v9 + 32) = v7;
  *(v9 + 40) = v5;
  v10 = sub_10012FB68();
  v11 = *(v3 + 16);

  if (v11(v10, v3))
  {

    v12 = sub_100062888();
    sub_10011AA74(v12, v13, v19, v7, v5);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = sub_10012DB9C;
    v14[4] = v1;
    v15 = *(v3 + 24);

    v16 = sub_1000A4174();
    v15(v16);
  }

  sub_1000A3DA0();
}

uint64_t sub_10011E708()
{
  sub_1000A4080();
  sub_10012EE84();
  sub_100047958();
  v1 = swift_allocObject();
  sub_10012EFDC(v1);
  sub_10012F8C4();
  sub_10012F150();

  v2 = sub_1000701E4();
  if (v0(v2))
  {

    v3 = sub_10012EEB4();
    sub_10011AF28(v3, v4, v5, v6, v7);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v8 = swift_allocObject();
    sub_10012EF44(v8);

    v9 = sub_10012EE9C();
    v10(v9);
  }

  sub_1000A3DA0();
}

uint64_t sub_10011E83C()
{
  sub_1000A4080();
  v2 = v1;
  sub_10012EF34();
  sub_1000A41C8();
  v3 = swift_allocObject();
  *(sub_10012F254(v3) + 32) = v2;
  sub_10012FB68();
  sub_10012F1A4();

  v4 = sub_100062234();
  if (v0(v4))
  {

    sub_10012EFCC();
    sub_10011C00C();
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v5 = swift_allocObject();
    sub_10012F1F4(v5);

    v6 = sub_10012F18C();
    v7(v6);
  }

  sub_1000A3DA0();
}

uint64_t sub_10011E9A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = swift_allocObject();
  v20 = a4;
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = sub_10012DB64;
  v11[4] = v10;
  v11[5] = a3;
  v12 = *(a1 + 40);
  v21 = a1;
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);

  v22 = a3;
  v15 = ObjectType;

  if (v14(ObjectType, v12))
  {

    v16 = sub_10011B124(v21, a2, v22, v20, a5);

    CallbackList._run()();
    sub_100037408(v16);
  }

  else
  {
    v17 = swift_allocObject();
    v17[2] = v21;
    v17[3] = sub_10012DB90;
    v17[4] = v11;
    v18 = *(v12 + 24);

    v18(sub_10012ED8C, v17, v15, v12);
  }
}

uint64_t sub_10011EBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = sub_10012DA68;
  v8[5] = a4;
  v9 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  swift_retain_n();

  if (v11(ObjectType, v9))
  {
    swift_retain_n();

    sub_10011B3E8();
    v13 = v12;

    CallbackList._run()();
    sub_100037408(v13);
  }

  else
  {
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = sub_10012DA70;
    v14[4] = v8;
    v16 = *(v9 + 24);

    v16(sub_10012ED8C, v14, ObjectType, v9);
  }
}

uint64_t sub_10011EE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = sub_10012DAE0;
  v8[5] = a4;
  v9 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  swift_retain_n();

  if (v11(ObjectType, v9))
  {
    swift_retain_n();

    sub_10011B3E8();
    v13 = v12;

    CallbackList._run()();
    sub_100037408(v13);
  }

  else
  {
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = sub_10012ED50;
    v14[4] = v8;
    v16 = *(v9 + 24);

    v16(sub_10012ED8C, v14, ObjectType, v9);
  }
}

uint64_t sub_10011F070()
{
  sub_1000A4080();
  sub_10012EE84();
  sub_100047958();
  v1 = swift_allocObject();
  sub_10012EFDC(v1);
  swift_getObjectType();
  sub_10012F150();

  v2 = sub_1000701E4();
  if (v0(v2))
  {

    v3 = sub_10012EEB4();
    sub_10011B510(v3, v4, v5, v6, v7);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v8 = swift_allocObject();
    sub_10012EF44(v8);

    v9 = sub_10012EE9C();
    v10(v9);
  }

  sub_1000A3DA0();
}

uint64_t sub_10011F1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  sub_10012F4FC();
  v16 = v15;
  v50 = v18;
  v51 = v17;
  v20 = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  *(v21 + 24) = v14;
  *(v21 + 32) = v13;
  *(v21 + 40) = v12;
  v44 = v12;
  *(v21 + 48) = a8;
  *(v21 + 56) = a9;
  *(v21 + 64) = a10;
  *(v21 + 72) = a11;
  *(v21 + 80) = a12;
  sub_100047958();
  v22 = swift_allocObject();
  v22[2] = v51;
  v22[3] = v50;
  v22[4] = sub_10012E500;
  v22[5] = v21;
  v23 = *(v20 + 48);
  v47 = v20;
  ObjectType = swift_getObjectType();
  v46 = *(v23 + 16);

  if ((v46(ObjectType, v23) & 1) == 0)
  {
    sub_1000A41C8();
    v38 = swift_allocObject();
    v38[2] = v20;
    v38[3] = sub_10012E504;
    v38[4] = v22;
    v39 = *(v23 + 24);

    v40 = sub_10012F37C();
    v39(v40);

LABEL_13:
  }

  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = v14;
  *(v25 + 32) = v13;
  *(v25 + 40) = v44;
  *(v25 + 48) = a8;
  *(v25 + 56) = a9;
  *(v25 + 64) = a10;
  *(v25 + 72) = a11;
  *(v25 + 80) = a12;
  sub_100047958();
  v26 = swift_allocObject();
  v26[2] = v51;
  v26[3] = v50;
  v26[4] = sub_10012ED24;
  v26[5] = v25;
  sub_10012EE14();
  debugOnly(_:)(v27, v28, v29, v30, ObjectType, v23);
  sub_100047940();
  swift_beginAccess();
  if (*(v47 + 32) == 255)
  {
    sub_100050548();
    sub_10012F1D0();
    swift_retain_n();
    swift_retain_n();
    sub_10012F138();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    sub_1000A41D4();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1000A3FAC();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    swift_retain_n();

    CallbackList.append(_:)();
    swift_endAccess();

    v41 = 0;
LABEL_12:

    CallbackList._run()();
    sub_100037408(v41);

    goto LABEL_13;
  }

  sub_100047940();
  result = swift_beginAccess();
  v32 = *(v51 + 32);
  if (v32 != 255)
  {
    if (v32)
    {
      v33 = *(v51 + 16);
      v43 = *(v51 + 24);
      swift_retain_n();
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_10012F708();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_10012F708();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_10012F0EC();
      swift_retain_n();

      sub_10012E484(v33, v43, v32);
      v42 = v33;
      ChannelHandlerContext.fireErrorCaught(_:)();
      v34 = *(sub_10010FC80(a4, v13, v44, a8, a9, a10, a11, a12) + 48);
      v35 = swift_getObjectType();
      v36 = *(v34 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v34) = v36(v35, v34);
      swift_unknownObjectRelease();
      if (v34)
      {

        sub_10011CCD0();
        v45 = v37;

        sub_10012E49C(v42, v43, v32);
      }

      else
      {
        sub_10002FF28(v50);
        sub_10012E49C(v42, v43, v32);

        v45 = 0;
      }
    }

    else
    {
      v45 = sub_1001D65F0(*(v51 + 16), *(v51 + 24), 0);
      sub_10012F138();
      swift_bridgeObjectRetain_n();
      sub_10012F708();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      sub_10012F1D0();
      swift_retain_n();
      sub_1000A3FAC();
      swift_retain_n();
    }

    v41 = v45;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011FAE0()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012FB20();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011B824(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_10011FBFC()
{
  sub_1000A4080();
  sub_10012EE84();
  sub_100047958();
  v1 = swift_allocObject();
  sub_10012EFDC(v1);
  sub_10012F8C4();
  sub_10012F150();

  v2 = sub_1000701E4();
  if (v0(v2))
  {

    v3 = sub_10012EEB4();
    sub_10011B9D4(v3, v4, v5, v6, v7);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v8 = swift_allocObject();
    sub_10012EF44(v8);

    v9 = sub_10012EE9C();
    v10(v9);
  }

  sub_1000A3DA0();
}

uint64_t sub_10011FD30()
{
  sub_1000A4080();
  sub_10012EE84();
  sub_100047958();
  v1 = swift_allocObject();
  sub_10012EFDC(v1);
  sub_10012F8C4();
  sub_10012F150();

  v2 = sub_1000701E4();
  if (v0(v2))
  {

    v3 = sub_10012EEB4();
    sub_10011BCF0(v3, v4, v5, v6, v7);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v8 = swift_allocObject();
    sub_10012EF44(v8);

    v9 = sub_10012EE9C();
    v10(v9);
  }

  sub_1000A3DA0();
}

uint64_t sub_1001200D0()
{
  sub_100037C08();
  sub_10012F0C4();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F114(v1);
  sub_10012F0F8();

  v2 = sub_10012F490();
  if ((v0)(v2))
  {

    v3 = sub_10012EF84();
    sub_10011BEE0(v3, v4, v5, v6, v7, v8);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v9 = swift_allocObject();
    sub_10012EE38(v9);

    v10 = sub_10012F0D8();
    v0(v10);
  }

  sub_100037B00();
}

uint64_t sub_100120204()
{
  sub_1000A4080();
  v2 = v1;
  sub_10012EF34();
  sub_1000A41C8();
  v3 = swift_allocObject();
  *(sub_10012F254(v3) + 32) = v2;
  sub_10012FB68();
  sub_10012F1A4();

  v4 = sub_100062234();
  if (v0(v4))
  {

    sub_10012EFCC();
    sub_10011C00C();
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v5 = swift_allocObject();
    sub_10012F1F4(v5);

    v6 = sub_10012F18C();
    v7(v6);
  }

  sub_1000A3DA0();
}

uint64_t sub_100120368()
{
  sub_100037C08();
  sub_10012F0C4();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F114(v1);
  sub_10012F0F8();

  v2 = sub_10012F490();
  if ((v0)(v2))
  {

    v3 = sub_10012EF84();
    sub_10011C128(v3, v4, v5, v6, v7, v8);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v9 = swift_allocObject();
    sub_10012EE38(v9);

    v10 = sub_10012F0D8();
    v0(v10);
  }

  sub_100037B00();
}

uint64_t sub_10012049C()
{
  sub_100037C08();
  sub_10012F0C4();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F114(v1);
  sub_10012F0F8();

  v2 = sub_10012F490();
  if ((v0)(v2))
  {

    v3 = sub_10012EF84();
    sub_10011C128(v3, v4, v5, v6, v7, v8);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v9 = swift_allocObject();
    sub_10012EE38(v9);

    v10 = sub_10012F0D8();
    v0(v10);
  }

  sub_100037B00();
}

uint64_t sub_1001205D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = sub_100152440;
  v6[4] = 0;
  v6[5] = a3;
  v7 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);

  if (v9(ObjectType, v7))
  {

    sub_10011D464();
    v11 = v10;
    CallbackList._run()();
    sub_100037408(v11);
  }

  else
  {
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = sub_10012ED78;
    v12[4] = v6;
    v13 = *(v7 + 24);

    v13(sub_10012ED8C, v12, ObjectType, v7);
  }
}

uint64_t sub_1001207C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = sub_10012EDCC;
  v6[4] = 0;
  v6[5] = a3;
  v7 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);

  if (v9(ObjectType, v7))
  {

    sub_10011D464();
    v11 = v10;
    CallbackList._run()();
    sub_100037408(v11);
  }

  else
  {
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = sub_10012DF48;
    v12[4] = v6;
    v13 = *(v7 + 24);

    v13(sub_10012ED8C, v12, ObjectType, v7);
  }
}

uint64_t sub_100120B40(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = sub_10012DED4;
  v9[5] = v8;
  v10 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 16);

  if (v12(ObjectType, v10))
  {

    v13 = sub_10011C3AC(a1, a2, a3, a4);

    CallbackList._run()();
    sub_100037408(v13);
  }

  else
  {
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = sub_10012DEF0;
    v14[4] = v9;
    v16 = *(v10 + 24);

    v16(sub_10012ED94, v14, ObjectType, v10);
  }
}

uint64_t sub_100120D54()
{
  sub_1000A4080();
  v2 = v1;
  sub_10012EF34();
  sub_1000A41C8();
  v3 = swift_allocObject();
  *(sub_10012F254(v3) + 32) = v2;
  swift_getObjectType();
  sub_10012F1A4();

  v4 = sub_100062234();
  if (v0(v4))
  {

    v5 = sub_10012EFCC();
    sub_10011C628(v5, v6, v7, v2);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v8 = swift_allocObject();
    sub_10012F1F4(v8);

    v9 = sub_10012F18C();
    v10(v9);
  }

  sub_1000A3DA0();
}

uint64_t sub_100120EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = sub_10012DF38;
  v8[5] = a4;
  v9 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  swift_retain_n();

  if (v11(ObjectType, v9))
  {
    swift_retain_n();

    sub_10011CBA4();
    v13 = v12;

    CallbackList._run()();
    sub_100037408(v13);
  }

  else
  {
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = sub_10012ED6C;
    v14[4] = v8;
    v16 = *(v9 + 24);

    v16(sub_10012ED94, v14, ObjectType, v9);
  }
}

uint64_t sub_1001210E8()
{
  sub_10001A1F0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_10012F59C();
  sub_1000A41C8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v6;
  v9[4] = v4;
  sub_100047958();
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v2;
  v10[4] = sub_10012DFCC;
  v10[5] = v9;
  v11 = *(v0 + 48);
  v19 = v0;
  ObjectType = swift_getObjectType();
  v18 = *(v11 + 16);

  swift_unknownObjectRetain();

  if (v18(ObjectType, v11))
  {

    swift_unknownObjectRetain();

    sub_10011C7B4(v0, v1, v2, v8, v6, v4);
    sub_10012F56C();

    sub_10012F96C();
    CallbackList._run()();
    v13 = sub_10012F96C();
    sub_100037408(v13);
  }

  else
  {
    sub_1000A41C8();
    v14 = swift_allocObject();
    v14[2] = v19;
    v14[3] = sub_10012ED6C;
    v14[4] = v10;
    v15 = *(v11 + 24);

    v15(sub_10012ED94, v14, ObjectType, v11);
  }

  swift_unknownObjectRelease();

  sub_10001A1D4();
}

uint64_t sub_100121328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = sub_10012DF38;
  v8[5] = a4;
  v9 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  swift_retain_n();

  if (v11(ObjectType, v9))
  {
    swift_retain_n();

    sub_10011CBA4();
    v13 = v12;

    CallbackList._run()();
    sub_100037408(v13);
  }

  else
  {
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = sub_10012ED6C;
    v14[4] = v8;
    v16 = *(v9 + 24);

    v16(sub_10012ED94, v14, ObjectType, v9);
  }
}

uint64_t sub_10012156C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v20 = a5;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = sub_10012DF30;
  v11[5] = v10;
  v12 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  v14 = *(v12 + 16);
  v22 = a4;
  v15 = a3;
  v16 = ObjectType;
  swift_unknownObjectRetain();

  if (v14(v16, v12))
  {
    swift_unknownObjectRetain();

    v17 = sub_10011C9C0(a1, a2, v15, v22, v20);

    CallbackList._run()();
    sub_100037408(v17);
  }

  else
  {
    v18 = swift_allocObject();
    v18[2] = a1;
    v18[3] = sub_10012ED6C;
    v18[4] = v11;
    v21 = *(v12 + 24);

    v21(sub_10012ED94, v18, v16, v12);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1001217B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = sub_10012DE30;
  v8[5] = a4;
  v9 = *(a1 + 48);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 16);
  swift_retain_n();

  if (v11(ObjectType, v9))
  {
    swift_retain_n();

    sub_10011CBA4();
    v13 = v12;

    CallbackList._run()();
    sub_100037408(v13);
  }

  else
  {
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = sub_10012DE38;
    v14[4] = v8;
    v16 = *(v9 + 24);

    v16(sub_10012ED94, v14, ObjectType, v9);
  }
}

uint64_t sub_1001219F8()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012FB20();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011CFA0(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_100121B14()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012FB20();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011CDF4(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_100121C30()
{
  sub_100037C08();
  sub_10012F27C();
  v4 = v3;
  v6 = v5;
  sub_1000A41C8();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v1;
  v7[4] = v0;
  sub_10012FB20();
  sub_10012F044();

  v8 = sub_10012F2E8();
  if ((v2)(v8))
  {

    sub_10011D1DC(v6, v4, v1, v0);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v9 = swift_allocObject();
    sub_10012EE38(v9);

    v10 = sub_10012EE24();
    v2(v10);
  }

  sub_100037B00();
}

uint64_t sub_100121D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = sub_10012EDCC;
  v6[4] = 0;
  v6[5] = a3;
  v7 = *(a1 + 40);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);

  if (v9(ObjectType, v7))
  {

    sub_10011D464();
    v11 = v10;
    CallbackList._run()();
    sub_100037408(v11);
  }

  else
  {
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = sub_10012DBC4;
    v12[4] = v6;
    v13 = *(v7 + 24);

    v13(sub_10012ED8C, v12, ObjectType, v7);
  }
}

uint64_t sub_100121F5C()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012F674();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011D718(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_100122078()
{
  sub_100037C08();
  sub_10012EE5C();
  sub_1000A41C8();
  v1 = swift_allocObject();
  sub_10012F024(v1);
  sub_10012F674();
  sub_10012F044();

  v2 = sub_10012F2E8();
  if ((v0)(v2))
  {

    v3 = sub_10012EE70();
    sub_10011D574(v3, v4, v5, v6);
    sub_10002E248();
    CallbackList._run()();
    sub_10012EF9C();
  }

  else
  {
    sub_1000A41C8();
    v7 = swift_allocObject();
    sub_10012EE38(v7);

    v8 = sub_10012EE24();
    v0(v8);
  }

  sub_100037B00();
}

uint64_t sub_100122194()
{
  sub_1000A4080();
  sub_10012EE84();
  sub_100047958();
  v1 = swift_allocObject();
  sub_10012EFDC(v1);
  sub_10012F8C4();
  sub_10012F150();

  v2 = sub_1000701E4();
  if (v0(v2))
  {

    v3 = sub_10012EEB4();
    sub_10011D8C0(v3, v4, v5, v6, v7);
    sub_10012EECC();
    CallbackList._run()();
    sub_10012F064();
  }

  else
  {
    sub_1000A41C8();
    v8 = swift_allocObject();
    sub_10012EF44(v8);

    v9 = sub_10012EE9C();
    v10(v9);
  }

  sub_1000A3DA0();
}

uint64_t EventLoopFuture._whenComplete(_:)()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  sub_10002E27C();
  v6 = *(v0 + *(v5 + 96) + 8);
  swift_getObjectType();
  sub_10012F1B4();
  if (v7())
  {
    EventLoopFuture._addCallback(_:)();
    sub_1000E3198();
    CallbackList._run()();
    v8 = sub_100037A2C();
    sub_100037408(v8);
    sub_100037A50();
  }

  else
  {
    sub_1000A41C8();
    v11 = swift_allocObject();
    v11[2] = v0;
    v11[3] = v4;
    v11[4] = v2;
    v12 = *(v6 + 24);

    v13 = sub_10012F1E8();
    v12(v13);
    sub_100037A50();
  }
}

__n128 *sub_10012240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, __n128 *, __n128 *, uint64_t, uint64_t))
{
  sub_10012F4FC();
  sub_1000183C4(&qword_1002ADC18);
  sub_10012F1DC();
  v12 = swift_allocObject();
  sub_10012F094(v12, v10[2]);

  sub_10012F78C();

  a8(v13, v10, v12, v9, v8);

  return v12;
}

void sub_1001224EC()
{
  sub_100037AEC();
  sub_10012EFF0();
  sub_10002E27C();
  v9 = EventLoopPromise.init(eventLoop:file:line:)(*(v0 + *(v4 + 96)), *(v0 + *(v4 + 96) + 8), v5, v6, v7, v8);
  sub_1000A3FC4();
  v10 = swift_allocObject();
  v10[2] = v1;
  v10[3] = v0;
  v10[4] = v3;
  v10[5] = v2;
  v10[6] = v9;
  swift_unknownObjectRetain();

  EventLoopFuture._whenComplete(_:)();

  sub_100037A50();
}

uint64_t sub_100122598(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v8 = sub_10012DCD0(v6, v5);
      a2(v8);
      v6 = 0;
      v7 = 0;
    }

    return sub_1001DBFE4(v6, v7);
  }

  return result;
}

uint64_t sub_100122670(char *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = a4;
  v38 = a3;
  v39 = a2;
  v7 = *a1;
  sub_100019BC4(&qword_1002ACE88);
  v8 = sub_1001F8158();
  v42 = *(v8 - 8);
  v43 = v8;
  v10 = __chkstk_darwin(v8, v9);
  v12 = (&v36 - v11);
  v37 = a5;
  v36 = *(a5 - 8);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + 80);
  v40 = *(v17 - 8);
  __chkstk_darwin(v14, v18);
  v20 = &v36 - v19;
  v21 = sub_1001F8158();
  v22 = sub_1001F74B8();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22, v24);
  v26 = (&v36 - v25);
  v27 = *(v7 + 88);
  swift_beginAccess();
  (*(v23 + 16))(v26, &a1[v27], v22);
  result = sub_10001C990(v26, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v12 = *v26;
      v29 = v43;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      EventLoopPromise._setValue(value:)();
      v31 = v30;

      (*(v42 + 8))(v12, v29);
    }

    else
    {
      v32 = v40;
      (*(v40 + 32))(v20, v26, v17);
      v39(v20);
      v33 = v36;
      (*(v36 + 16))(v12, v16, v37);
      v34 = v43;
      swift_storeEnumTagMultiPayload();
      EventLoopPromise._setValue(value:)();
      v31 = v35;
      (*(v42 + 8))(v12, v34);
      (*(v33 + 8))(v16, v37);
      (*(v32 + 8))(v20, v17);
    }

    return v31;
  }

  return result;
}

uint64_t sub_100122AFC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_100047940();
  result = swift_beginAccess();
  v6 = *(a1 + 24);
  if (v6 == 255)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 16);
    if (v6)
    {
      sub_1000477E8(v7, 1);
      a3(v7);
      v8 = sub_10002E2C0();
      sub_1001DBFE4(v8, v9);
      sub_10012F170();
      v10 = sub_10007B9A4();
      sub_10012DCD0(v10, v11);
    }

    else
    {
      sub_10012DCD0(v7, *(a1 + 24));
      sub_1001DBFE4(v7, 0);
      sub_10012F170();
    }

    return sub_10012F398();
  }

  return result;
}

uint64_t sub_100122BF4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t))
{
  result = swift_beginAccess();
  v6 = *(a1 + 32);
  if (v6 == 255)
  {
    __break(1u);
  }

  else
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if ((v6 & 1) == 0)
    {
      return sub_1001D6650(*(a1 + 16), *(a1 + 24), 0);
    }

    sub_1000A339C(*(a1 + 16), *(a1 + 24), 1);
    a3(v10, v8);
    v9 = sub_1001D6650(v10[0], v10[1], 0);
    sub_10012DB40(v8, v7, v6);
    swift_unknownObjectRelease();
    return v9;
  }

  return result;
}

uint64_t sub_100122D3C(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v34 = a2;
  v5 = *a1;
  v6 = *(*a1 + 80);
  sub_100019BC4(&qword_1002ACE88);
  v7 = sub_1001F8158();
  v35 = *(v7 - 8);
  v9 = __chkstk_darwin(v7, v8);
  v11 = &v30 - v10;
  v12 = *(v6 - 8);
  v14 = __chkstk_darwin(v9, v13);
  v31 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = &v30 - v17;
  v19 = sub_1001F74B8();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19, v21);
  v23 = (&v30 - v22);
  v24 = *(v5 + 88);
  swift_beginAccess();
  (*(v20 + 16))(v23, a1 + v24, v19);
  result = sub_10001C990(v23, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v31;
      v33(*v23);
      (*(v12 + 16))(v11, v26, v6);
      swift_storeEnumTagMultiPayload();
      EventLoopPromise._setValue(value:)();
      v29 = v28;

      (*(v35 + 8))(v11, v7);
      (*(v12 + 8))(v26, v6);
    }

    else
    {
      (*(v12 + 32))(v18, v23, v6);
      (*(v12 + 16))(v11, v18, v6);
      swift_storeEnumTagMultiPayload();
      EventLoopPromise._setValue(value:)();
      v29 = v27;
      (*(v35 + 8))(v11, v7);
      (*(v12 + 8))(v18, v6);
    }

    return v29;
  }

  return result;
}

uint64_t sub_100123160(uint64_t a1, _OWORD *a2, void (*a3)(_BYTE *))
{
  result = swift_beginAccess();
  v6 = a2[2];
  v12[0] = a2[1];
  v12[1] = v6;
  v7 = a2[4];
  v12[2] = a2[3];
  v12[3] = v7;
  if (HIBYTE(v7) == 255)
  {
    __break(1u);
  }

  else
  {
    sub_1000ACFAC();
    v8 = sub_100113818(a3);
    v10 = v9;
    sub_1000374B8(v12, &qword_1002B4688);
    v11 = sub_1001DBFE4(v8, v10 & 1);
    sub_1000374AC(v8, v10 & 1);
    return v11;
  }

  return result;
}

uint64_t sub_100123270(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *))
{
  result = swift_beginAccess();
  v6 = *(a2 + 24);
  if (v6 >> 8 > 0xFE)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 16);
    v8 = v6 & 0x100;
    if ((v6 & 0x100) != 0)
    {
      sub_10012E68C(v7, v6, 1);
      v9 = 0;
    }

    else
    {
      v12 = v7;
      v13 = v6;
      sub_10012E674(v7, v6);
      a3(v11, &v12);
      sub_10012E698(v7, v6);
      v7 = v11[0];
      v9 = v11[1];
    }

    v10 = sub_1001D65F0(v7, v9, SBYTE1(v8));
    sub_100037420(v7, v9, v8 != 0);
    return v10;
  }

  return result;
}

uint64_t sub_100123378(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a2 + 24);
  if (v8 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a2 + 16);
    sub_1000477E8(v9, v8 & 1);
    v10 = sub_1001138E8(a3, a4, v9, v8 & 1);
    v12 = v11;
    sub_10012DCD0(v9, v8);
    v13 = sub_1001DBFE4(v10, v12 & 1);
    sub_1000374AC(v10, v12 & 1);
    return v13;
  }

  return result;
}

uint64_t sub_100123448(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4)
{
  result = swift_beginAccess();
  v8 = *(a2 + 24);
  if (v8 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a2 + 16);
    sub_1000477E8(v9, v8 & 1);
    v10 = sub_100113934(a3, a4, v9, v8 & 1);
    v12 = v11;
    v14 = v13;
    sub_10012DCD0(v9, v8);
    v15 = sub_1001D6650(v10, v12, v14 & 1);
    sub_1000373FC(v10, v12, v14 & 1);
    return v15;
  }

  return result;
}

uint64_t sub_100123524(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *))
{
  result = swift_beginAccess();
  v6 = *(a2 + 24);
  if (v6 == 255)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a2 + 16);
    if (v6)
    {
      sub_1000A37F0(v7, 1);
    }

    else
    {
      v9 = v7;
      sub_10012DA88(v7, v6);
      a3(&v9);
      sub_10012DAA0(v7, v6);
      v7 = 0;
    }

    v8 = sub_1001DBFE4(v7, v6 & 1);
    sub_1000374AC(v7, v6 & 1);
    return v8;
  }

  return result;
}

uint64_t sub_100123604(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v28 = a4;
  v29 = a1;
  v7 = *a2;
  sub_100019BC4(&qword_1002ACE88);
  v8 = sub_1001F8158();
  v9 = sub_1001F74B8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v27 - v12;
  v14 = sub_1001F8158();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v27 - v17;
  v19 = *(v7 + 88);
  swift_beginAccess();
  (*(v10 + 16))(v13, &a2[v19], v9);
  result = sub_10001C990(v13, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1000A118C(v27, v28, v8, a5, v21, v22, v23, v24, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    (*(*(v8 - 8) + 8))(v13, v8);
    EventLoopPromise._setValue(value:)();
    v26 = v25;
    (*(v15 + 8))(v18, v14);
    return v26;
  }

  return result;
}

uint64_t sub_100123884(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = swift_beginAccess();
  v7 = *(a1 + 32);
  if (v7 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    if ((v7 & 1) == 0)
    {
      return sub_1001D65F0(v9, v8, 0);
    }

    sub_1000A386C(v9, v8, 1);
    v10 = *(a3(v9) + 48);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v10) = v12(ObjectType, v10);
    swift_unknownObjectRelease();
    if (v10)
    {

      sub_10011CCD0();
      v14 = v13;

      sub_10012E49C(v9, v8, v7);
    }

    else
    {
      sub_10002FF28(a2);
      sub_10012E49C(v9, v8, v7);

      return 0;
    }

    return v14;
  }

  return result;
}

uint64_t sub_100123A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v8 = *(a1 + 32);
  if (v8 == 255)
  {
    swift_unknownObjectRelease();

    __break(1u);
  }

  else
  {
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    if (v8)
    {
      sub_10012DB28(*(a1 + 16), *(a1 + 24), *(a1 + 32));
      sub_100178858(v10, 2, 0);
      ObjectType = swift_getObjectType();
      v12 = sub_1000183C4(&qword_1002ADD50);
      v13 = *(EventLoop.makeFailedFuture<A>(_:file:line:)(v10, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 319, ObjectType, v12, a5) + 48);
      v14 = swift_getObjectType();
      v15 = *(v13 + 16);
      swift_unknownObjectRetain();
      v16 = v15(v14, v13);
      swift_unknownObjectRelease();
      if (v16)
      {

        sub_10011CCD0();
        v18 = v17;

        sub_10012DB40(v10, v9, v8);
      }

      else
      {
        sub_10002FF54(a2);
        sub_10012DB40(v10, v9, v8);

        v18 = 0;
      }
    }

    else
    {
      v18 = sub_1001D6650(*(a1 + 16), *(a1 + 24), 0);
    }

    swift_unknownObjectRelease();
    return v18;
  }

  return result;
}

uint64_t sub_100123C88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_100047940();
  swift_beginAccess();
  v8 = *(a1 + 32);
  if (v8 != 255)
  {
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    if (v8)
    {
      v11 = sub_10007B9BC();
      sub_10012DB28(v11, v12, v8);
      v13 = sub_10012F738();
      a4(v13);
      v14 = *(a3 + 48);
      sub_1000183C4(&qword_1002B46D8);
      v15 = sub_10012F8DC();
      *(v15 + 40) = v14;
      *(v15 + 48) = &protocol witness table for SelectableEventLoop;
      *(v15 + 16) = v10;
      *(v15 + 24) = v9;
      *(v15 + 32) = v8;
      *(v15 + 64) = 0;
      *(v15 + 72) = 0;
      *(v15 + 56) = 0;

      v16 = sub_10007B9BC();
      sub_10012DB28(v16, v17, v8);
      type metadata accessor for SelectableEventLoop();

      sub_1000701E4();
      v18 = j___s25ASOctaneSupportXPCService19SelectableEventLoopC02ineF0Sbvg();

      if (!v18)
      {
        sub_10002FF54(a2);
        v23 = sub_10007B9BC();
        sub_10012DB40(v23, v24, v8);

        return sub_10012F180();
      }

      sub_10012F2A0();
      sub_10011CCD0();
      sub_10012F144();

      v19 = sub_10007B9BC();
      sub_10012DB40(v19, v20, v8);
    }

    else
    {
      v21 = sub_10007B9BC();
      sub_1001D6650(v21, v22, 0);
      sub_10012F144();
    }

    return sub_10012F180();
  }

  __break(1u);
  return result;
}

uint64_t sub_100123E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a1 + 32);
  if (v7 != 255)
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    if (v7)
    {
      v18 = a2;
      ObjectType = swift_getObjectType();
      v11 = sub_1000183C4(&qword_1002ADD50);
      v12 = *(EventLoop.makeFailedFuture<A>(_:file:line:)(v9, "/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/Bootstrap.swift", 111, 2, 938, ObjectType, v11, a4) + 48);
      v13 = swift_getObjectType();
      v14 = *(v12 + 16);
      sub_10012DB28(v9, v8, v7);
      swift_unknownObjectRetain();
      LOBYTE(v12) = v14(v13, v12);
      swift_unknownObjectRelease();
      if ((v12 & 1) == 0)
      {
        sub_10002FF54(v18);
        sub_10012DB40(v9, v8, v7);
        swift_unknownObjectRelease();

        return 0;
      }

      sub_10011CCD0();
      v16 = v15;

      sub_10012DB40(v9, v8, v7);
    }

    else
    {
      v16 = sub_1001D6650(v9, v8, 0);
    }

    swift_unknownObjectRelease();
    return v16;
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_10012407C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = swift_beginAccess();
  v7 = *(a1 + 32);
  if (v7 == 255)
  {
    __break(1u);
  }

  else
  {
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    if ((v7 & 1) == 0)
    {
      return sub_1001D6650(v9, v8, 0);
    }

    sub_1000A339C(v9, v8, 1);
    v10 = *(a3(v9) + 48);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 16);
    swift_unknownObjectRetain();
    LOBYTE(v10) = v12(ObjectType, v10);
    swift_unknownObjectRelease();
    if (v10)
    {

      sub_10011CCD0();
      v14 = v13;

      sub_10012DB40(v9, v8, v7);
    }

    else
    {
      sub_10002FF54(a2);
      sub_10012DB40(v9, v8, v7);

      return 0;
    }

    return v14;
  }

  return result;
}

uint64_t sub_100124234(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v31[1] = a4;
  v32 = a3;
  v34 = a2;
  v5 = *a1;
  v6 = *(*a1 + 80);
  sub_100019BC4(&qword_1002ACE88);
  v7 = sub_1001F8158();
  v33 = *(v7 - 8);
  v9 = __chkstk_darwin(v7, v8);
  v11 = v31 - v10;
  v12 = *(v6 - 8);
  __chkstk_darwin(v9, v13);
  v15 = v31 - v14;
  v16 = sub_1001F74B8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = (v31 - v19);
  v21 = *(v5 + 88);
  swift_beginAccess();
  (*(v17 + 16))(v20, a1 + v21, v16);
  result = sub_10001C990(v20, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v32(*v20);
      v24 = *(v23 + *(*v23 + 96) + 8);
      ObjectType = swift_getObjectType();
      v26 = *(v24 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v24) = v26(ObjectType, v24);
      swift_unknownObjectRelease();
      if (v24)
      {
        v27 = swift_allocObject();
        *(v27 + 16) = v34;
        *(v27 + 24) = v23;

        EventLoopFuture._addCallback(_:)();
        v29 = v28;
      }

      else
      {
        EventLoopFuture.cascade(to:)(v34);

        return 0;
      }
    }

    else
    {
      (*(v12 + 32))(v15, v20, v6);
      (*(v12 + 16))(v11, v15, v6);
      swift_storeEnumTagMultiPayload();
      EventLoopPromise._setValue(value:)();
      v29 = v30;
      (*(v33 + 8))(v11, v7);
      (*(v12 + 8))(v15, v6);
    }

    return v29;
  }

  return result;
}

uint64_t sub_100124644()
{
  sub_1000A3DBC();
  sub_100047940();
  result = swift_beginAccess();
  v3 = *(v1 + 32);
  if (v3 != 255)
  {
    return v0(*(v1 + 16), *(v1 + 24), v3 & 1);
  }

  __break(1u);
  return result;
}

void EventLoopFuture.flatMapResult<A, B>(file:line:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_100037C08();
  sub_10012EFF0();
  sub_10002E27C();
  v31 = EventLoopPromise.init(eventLoop:file:line:)(*(v22 + *(v26 + 96)), *(v22 + *(v26 + 96) + 8), v27, v28, v29, v30);
  sub_10012F1DC();
  v32 = swift_allocObject();
  v32[2] = v23;
  v32[3] = v21;
  v32[4] = a21;
  v32[5] = v22;
  v32[6] = v25;
  v32[7] = v24;
  v32[8] = v31;
  swift_unknownObjectRetain();

  sub_1000A4174();
  EventLoopFuture._whenComplete(_:)();

  sub_100037B00();
}

uint64_t sub_100124768(char *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v78 = a4;
  v71 = a3;
  v72 = a2;
  v11 = *a1;
  v69 = *(a6 - 8);
  v12 = __chkstk_darwin(a1, a2);
  v66 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v68 = &v63 - v15;
  sub_100019BC4(&qword_1002ACE88);
  v16 = sub_1001F8158();
  v76 = *(v16 - 8);
  v77 = v16;
  v18 = __chkstk_darwin(v16, v17);
  v65 = (&v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v18, v20);
  v23 = (&v63 - v22);
  v64 = *(a5 - 8);
  __chkstk_darwin(v21, v24);
  v63 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a6;
  v67 = a7;
  v26 = sub_1001F8158();
  v28 = __chkstk_darwin(v26, v27);
  v30 = &v63 - v29;
  v31 = *(v11 + 80);
  v74 = *(v31 - 8);
  __chkstk_darwin(v28, v31);
  v73 = &v63 - v32;
  v75 = v33;
  v34 = sub_1001F8158();
  v35 = sub_1001F74B8();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35, v37);
  v39 = (&v63 - v38);
  v40 = *(v11 + 88);
  swift_beginAccess();
  (*(v36 + 16))(v39, &a1[v40], v35);
  result = sub_10001C990(v39, 1, v34);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v23 = *v39;
      v42 = v77;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      EventLoopPromise._setValue(value:)();
      v44 = v43;

      (*(v76 + 8))(v23, v42);
    }

    else
    {
      v46 = v73;
      v45 = v74;
      v47 = v75;
      (*(v74 + 32))(v73, v39, v75);
      v72(v46);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v49 = v68;
        v48 = v69;
        v50 = *(v69 + 32);
        v51 = v70;
        v50(v68, v30, v70);
        v52 = v66;
        (*(v48 + 16))(v66, v49, v51);
        v53 = sub_1001F7E58();
        if (v53)
        {
          v54 = v53;
          (*(v48 + 8))(v52, v51);
        }

        else
        {
          v54 = swift_allocError();
          v50(v59, v52, v51);
        }

        v60 = v65;
        *v65 = v54;
        v61 = v77;
        swift_storeEnumTagMultiPayload();
        EventLoopPromise._setValue(value:)();
        v44 = v62;
        (*(v76 + 8))(v60, v61);
        (*(v48 + 8))(v49, v51);
        (*(v74 + 8))(v73, v47);
      }

      else
      {
        v55 = v63;
        v56 = v64;
        (*(v64 + 32))(v63, v30, a5);
        (*(v56 + 16))(v23, v55, a5);
        v57 = v77;
        swift_storeEnumTagMultiPayload();
        EventLoopPromise._setValue(value:)();
        v44 = v58;
        (*(v76 + 8))(v23, v57);
        (*(v56 + 8))(v55, a5);
        (*(v45 + 8))(v46, v75);
      }
    }

    return v44;
  }

  return result;
}

__n128 *sub_100124E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5, uint64_t a6, void (*a7)(void))
{
  sub_1000183C4(&qword_1002ADC18);
  sub_10012F1DC();
  v9 = swift_allocObject();
  sub_10012F094(v9, a5[2]);

  sub_10012F78C();

  sub_1000D4B60();
  a7();

  return v9;
}

void sub_100124F04()
{
  sub_100037AEC();
  sub_10012EFF0();
  sub_10012F33C();
  v8 = EventLoopPromise.init(eventLoop:file:line:)(*(v0 + *(v3 + 96)), *(v0 + *(v3 + 96) + 8), v4, v5, v6, v7);
  sub_100047958();
  v9 = swift_allocObject();
  v9[2] = v0;
  v9[3] = v8;
  v9[4] = v2;
  v9[5] = v1;
  swift_unknownObjectRetain();

  EventLoopFuture._whenComplete(_:)();

  sub_100037A50();
}

uint64_t sub_100124FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 == 255)
  {

    __break(1u);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v5)
    {
      swift_beginAccess();
      *(a3 + 248) = v6;
      sub_10012DCB8(v6, v5);
      swift_errorRetain();

      v7 = sub_1001DBFE4(0, 0);
      sub_10012DCD0(v6, v5);
    }

    else
    {
      sub_10012DCD0(v6, v5);
      v7 = sub_1001DBFE4(v6, 0);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1001250C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 == 255)
  {

    __break(1u);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v5)
    {
      swift_beginAccess();
      *(a3 + 240) = v6;
      sub_10012DCB8(v6, v5);
      swift_errorRetain();

      v7 = sub_1001DBFE4(0, 0);
      sub_10012DCD0(v6, v5);
    }

    else
    {
      sub_10012DCD0(v6, v5);
      v7 = sub_1001DBFE4(v6, 0);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1001251D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = swift_beginAccess();
  v6 = *(a1 + 24);
  if (v6 == 255)
  {
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 16);
    if (v6)
    {
      sub_1000477E8(v7, 1);
      a3(v7);
      v8 = sub_1001DBFE4(0, 0);
      sub_10012DCD0(v7, v6);
    }

    else
    {
      sub_10012DCD0(v7, v6);
      return sub_1001DBFE4(v7, 0);
    }

    return v8;
  }

  return result;
}

uint64_t sub_1001252B8(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v27[1] = a4;
  v28 = a3;
  v29 = a2;
  v5 = *a1;
  v6 = *(*a1 + 80);
  sub_100019BC4(&qword_1002ACE88);
  v7 = sub_1001F8158();
  v30 = *(v7 - 8);
  v9 = __chkstk_darwin(v7, v8);
  v11 = v27 - v10;
  v12 = *(v6 - 8);
  __chkstk_darwin(v9, v13);
  v15 = v27 - v14;
  v16 = sub_1001F74B8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = (v27 - v19);
  v21 = *(v5 + 88);
  swift_beginAccess();
  (*(v17 + 16))(v20, a1 + v21, v16);
  result = sub_10001C990(v20, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28(*v20);
      swift_storeEnumTagMultiPayload();
      EventLoopPromise._setValue(value:)();
      v24 = v23;

      (*(v30 + 8))(v11, v7);
    }

    else
    {
      v25 = v12;
      (*(v12 + 32))(v15, v20, v6);
      (*(v12 + 16))(v11, v15, v6);
      swift_storeEnumTagMultiPayload();
      EventLoopPromise._setValue(value:)();
      v24 = v26;
      (*(v30 + 8))(v11, v7);
      (*(v25 + 8))(v15, v6);
    }

    return v24;
  }

  return result;
}

uint64_t sub_100125638(uint64_t a1, uint64_t a2)
{
  v2 = sub_10012F948(a1, a2);
  v4(v2, v3);
  sub_1000E3198();
  CallbackList._run()();
  v5 = sub_100037A2C();
  sub_100037408(v5);
}

uint64_t sub_100125694(uint64_t a1, uint64_t a2)
{
  v2 = sub_10012F948(a1, a2);
  v4(v2, v3);
  sub_1000E3198();
  CallbackList._run()();
  v5 = sub_100037A2C();
  sub_100037408(v5);
}

uint64_t sub_100125708(uint64_t *a1, void (*a2)(char *), uint64_t a3)
{
  v20 = a3;
  v5 = *a1;
  v6 = *(*a1 + 80);
  sub_100019BC4(&qword_1002ACE88);
  v7 = sub_1001F8158();
  v8 = sub_1001F74B8();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v20 - v12;
  v14 = *(v6 - 8);
  __chkstk_darwin(v11, v15);
  v17 = &v20 - v16;
  v18 = *(v5 + 88);
  swift_beginAccess();
  (*(v9 + 16))(v13, a1 + v18, v8);
  result = sub_10001C990(v13, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(*(v7 - 8) + 8))(v13, v7);
    }

    else
    {
      (*(v14 + 32))(v17, v13, v6);
      a2(v17);
      (*(v14 + 8))(v17, v6);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10012597C(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 16);
    if (v5)
    {
      sub_1000477E8(v6, 1);
      a2(v6);
    }

    sub_10012DCD0(v6, v5);
    return 0;
  }

  return result;
}

uint64_t sub_100125A10(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 16);
      sub_1000A3B30(v6, 1);
      a2(v6);
      sub_10012DF80(v6, v5);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100125AA4(uint64_t a1, void (*a2)(uint64_t))
{
  result = swift_beginAccess();
  v5 = *(a1 + 32);
  if (v5 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      sub_1000A339C(v7, v6, 1);
      a2(v7);
      sub_10012DB40(v7, v6, v5);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100125B48(char *a1, void (*a2)(void))
{
  v4 = *a1;
  sub_100019BC4(&qword_1002ACE88);
  v5 = sub_1001F8158();
  v6 = sub_1001F74B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = (&v13 - v9);
  v11 = *(v4 + 88);
  swift_beginAccess();
  (*(v7 + 16))(v10, &a1[v11], v6);
  result = sub_10001C990(v10, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      a2(*v10);
    }

    else
    {
      (*(*(v5 - 8) + 8))(v10, v5);
    }

    return 0;
  }

  return result;
}

uint64_t sub_100125D2C(void (*a1)(uint64_t *))
{
  sub_100047940();
  swift_beginAccess();
  result = sub_10012F720();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_1000477E8(result, v3 & 1);
    a1(&v5);
    sub_1000374AC(v5, v6);
    return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  return result;
}

uint64_t sub_100125DA4(void (*a1)(uint64_t *))
{
  sub_100047940();
  swift_beginAccess();
  result = sub_10012F720();
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_1000A3B30(result, v3 & 1);
    a1(&v8);
    sub_10012EEDC();
    sub_10012E88C(v5, v6, v7);
    return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  return result;
}

uint64_t sub_100125E20(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t, void))
{
  sub_100047940();
  swift_beginAccess();
  result = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  v12 = result;
  v13 = v10;
  v14 = v11;
  if (v11 == 255)
  {
    __break(1u);
  }

  else
  {
    a4();
    a1(&v12);
    a5(v12, v13, v14);
    return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
  }

  return result;
}

uint64_t sub_100125EC0(void (*a1)(uint64_t *), uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = a3[2];
  v6 = a3[3];
  v7 = a3[4];
  v8 = result;
  v9 = v6;
  v10 = v7;
  if (HIBYTE(v7) == 255)
  {
    __break(1u);
  }

  else
  {
    sub_1000A3A44(result, v6, v7, HIBYTE(v7) & 1);
    a1(&v8);
    sub_1000A3A2C(v8, v9, v10 | ((WORD2(v10) | (BYTE6(v10) << 16)) << 32), SHIBYTE(v10));
    return 0;
  }

  return result;
}

uint64_t sub_100125F6C(void (*a1)(char *), uint64_t a2, char *a3)
{
  v5 = *a3;
  sub_100019BC4(&qword_1002ACE88);
  v6 = sub_1001F8158();
  v7 = sub_1001F74B8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v14 - v10;
  v12 = *(v5 + 88);
  swift_beginAccess();
  (*(v8 + 16))(v11, &a3[v12], v7);
  result = sub_10001C990(v11, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a1(v11);
    (*(*(v6 - 8) + 8))(v11, v6);
    return 0;
  }

  return result;
}

void EventLoopFuture.and<A>(_:file:line:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = (v0 + *(*v0 + 96));
  v13 = *v12;
  v14 = v12[1];
  v15 = *(*v0 + 80);
  v16 = *(*v10 + 80);
  sub_10012F9D8();
  swift_getTupleTypeMetadata2();
  v17 = EventLoopPromise.init(eventLoop:file:line:)(v13, v14, v9, v7, v5, v3);
  sub_10012F9D8();
  sub_1001F74B8();
  v18 = swift_allocBox();
  v20 = sub_10012F57C(v18, v19);
  sub_100018460(v20, v21, v22, v15);
  sub_1001F74B8();
  v23 = swift_allocBox();
  v25 = sub_10012F57C(v23, v24);
  sub_100018460(v25, v26, v27, v16);
  sub_1000A3FC4();
  v28 = swift_allocObject();
  v28[2] = v16;
  v28[3] = v1;
  v28[4] = v17;
  v28[5] = v23;
  v28[6] = v18;
  swift_unknownObjectRetain();

  EventLoopFuture._whenComplete(_:)();

  EventLoopFuture.hop(to:)();
  sub_1000A3FC4();
  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = v11;
  v29[4] = v17;
  v29[5] = v18;
  v29[6] = v23;

  sub_1000A4168();
  EventLoopFuture._whenComplete(_:)();

  sub_100037B00();
}

uint64_t sub_100126328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(uint64_t))
{
  sub_100047940();
  result = swift_beginAccess();
  v12 = *(a1 + 24);
  if (v12 == 255)
  {
    __break(1u);
  }

  else
  {
    v13 = *(a1 + 16);
    if (v12)
    {
      v14 = 1;
    }

    else
    {
      a6(v13);
      sub_100047940();
      swift_beginAccess();
      if (*(a3 + 16))
      {
        sub_10012F774();
        result = _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
        *(a4 + 16) = 0;
        return result;
      }

      v13 = sub_10002E2C0();
    }

    return a5(v13, v14);
  }

  return result;
}

uint64_t sub_1001263E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a2;
  v66 = a4;
  v7 = *a1;
  v8 = *(*a1 + 80);
  v9 = sub_1001F74B8();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin(v9, v10);
  v55 = &v51 - v11;
  v12 = sub_1001F74B8();
  v59 = *(v12 - 8);
  v60 = v12;
  v14 = __chkstk_darwin(v12, v13);
  v58 = &v51 - v15;
  v54 = *(a5 - 8);
  v17 = __chkstk_darwin(v14, v16);
  v53 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(v8 - 8);
  __chkstk_darwin(v17, v19);
  v64 = &v51 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_100019BC4(&qword_1002ACE88);
  v52 = TupleTypeMetadata2;
  v22 = sub_1001F8158();
  v62 = *(v22 - 8);
  v63 = v22;
  __chkstk_darwin(v22, v23);
  v25 = &v51 - v24;
  v26 = sub_1001F8158();
  v27 = sub_1001F74B8();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27, v29);
  v31 = &v51 - v30;
  swift_projectBox();
  v66 = swift_projectBox();
  v32 = *(v7 + 88);
  swift_beginAccess();
  (*(v28 + 16))(v31, a1 + v32, v27);
  result = sub_10001C990(v31, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v25 = *v31;
      v34 = v63;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      EventLoopPromise._setValue(value:)();
      v36 = v35;

      (*(v62 + 8))(v25, v34);
    }

    else
    {
      v37 = v61;
      v38 = *(v61 + 32);
      v39 = v64;
      v38(v64, v31, v8);
      swift_beginAccess();
      v40 = v59;
      v41 = v58;
      v42 = v60;
      (*(v59 + 16))();
      if (sub_10001C990(v41, 1, a5) == 1)
      {
        (*(v40 + 8))(v41, v42);
        v43 = v55;
        v38(v55, v39, v8);
        sub_100018460(v43, 0, 1, v8);
        v44 = v66;
        swift_beginAccess();
        (*(v56 + 40))(v44, v43, v57);
        return 0;
      }

      else
      {
        v45 = v54;
        v46 = v41;
        v47 = v53;
        (*(v54 + 32))(v53, v46, a5);
        v48 = *(v52 + 48);
        (*(v37 + 16))(v25, v39, v8);
        (*(v45 + 16))(&v25[v48], v47, a5);
        v49 = v63;
        swift_storeEnumTagMultiPayload();
        EventLoopPromise._setValue(value:)();
        v36 = v50;
        (*(v62 + 8))(v25, v49);
        (*(v45 + 8))(v47, a5);
        (*(v37 + 8))(v64, v8);
      }
    }

    return v36;
  }

  return result;
}

uint64_t sub_100126A70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v68 = a3;
  v69 = a5;
  v7 = *a1;
  v8 = *(*a2 + 80);
  v9 = sub_1001F74B8();
  v58 = *(v9 - 8);
  v59 = v9;
  __chkstk_darwin(v9, v10);
  v57 = &v54 - v11;
  v12 = *(v7 + 80);
  v13 = sub_1001F74B8();
  v61 = *(v13 - 8);
  v62 = v13;
  v15 = __chkstk_darwin(v13, v14);
  v60 = &v54 - v16;
  v56 = *(v12 - 8);
  v18 = __chkstk_darwin(v15, v17);
  v55 = &v54 - v19;
  v63 = *(v8 - 8);
  __chkstk_darwin(v18, v20);
  v67 = &v54 - v21;
  v64 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_100019BC4(&qword_1002ACE88);
  v54 = TupleTypeMetadata2;
  v23 = sub_1001F8158();
  v65 = *(v23 - 8);
  v66 = v23;
  __chkstk_darwin(v23, v24);
  v26 = &v54 - v25;
  v27 = sub_1001F8158();
  v28 = sub_1001F74B8();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28, v30);
  v32 = &v54 - v31;
  swift_projectBox();
  v69 = swift_projectBox();
  v33 = *(a1 + *(v7 + 96) + 8);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 812, ObjectType, v33);
  v35 = *(*a2 + 88);
  swift_beginAccess();
  (*(v29 + 16))(v32, a2 + v35, v28);
  result = sub_10001C990(v32, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v26 = *v32;
      v37 = v66;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      EventLoopPromise._setValue(value:)();
      v39 = v38;

      (*(v65 + 8))(v26, v37);
    }

    else
    {
      v40 = v63;
      v41 = *(v63 + 32);
      v42 = v67;
      v41(v67, v32, v8);
      swift_beginAccess();
      v43 = v61;
      v44 = v60;
      v45 = v62;
      (*(v61 + 16))();
      v46 = v64;
      if (sub_10001C990(v44, 1, v64) == 1)
      {
        (*(v43 + 8))(v44, v45);
        v47 = v57;
        v41(v57, v42, v8);
        sub_100018460(v47, 0, 1, v8);
        v48 = v69;
        swift_beginAccess();
        (*(v58 + 40))(v48, v47, v59);
        return 0;
      }

      else
      {
        v49 = v56;
        v50 = v55;
        (*(v56 + 32))(v55, v44, v46);
        v51 = *(v54 + 48);
        (*(v49 + 16))(v26, v50, v46);
        (*(v40 + 16))(&v26[v51], v42, v8);
        v52 = v66;
        swift_storeEnumTagMultiPayload();
        EventLoopPromise._setValue(value:)();
        v39 = v53;
        (*(v65 + 8))(v26, v52);
        (*(v49 + 8))(v50, v46);
        (*(v40 + 8))(v67, v8);
      }
    }

    return v39;
  }

  return result;
}

void EventLoopFuture.and<A>(value:file:line:)()
{
  sub_100037C08();
  sub_10012F50C();
  sub_10002DFFC();
  __chkstk_darwin(v0, v1);
  type metadata accessor for EventLoopFuture();
  sub_10002E0B8();
  v2 = sub_100062234();
  v3(v2);
  EventLoopFuture.__allocating_init(eventLoop:value:file:line:)();
  swift_unknownObjectRetain();
  sub_1000A40D0();
  EventLoopFuture.and<A>(_:file:line:)();

  sub_100037B00();
}

uint64_t sub_1001272A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  __chkstk_darwin(a1, a2);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019BC4(&qword_1002ACE88);
  v9 = sub_1001F8158();
  __chkstk_darwin(v9, v10);
  v12 = (&v15 - v11);
  (*(v13 + 16))(&v15 - v11, a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    EventLoopPromise.fail(_:)(*v12);
  }

  else
  {
    (*(v6 + 32))(v8, v12, a3);
    EventLoopPromise.succeed(_:)(v8, a2, a3);
    return (*(v6 + 8))(v8, a3);
  }
}

uint64_t sub_1001274BC(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (result)
  {
    v7 = result;
    v8 = *v4;
    sub_10004794C();
    v9 = swift_allocObject();
    *(v9 + 16) = *(v8 + 80);
    *(v9 + 24) = v7;
    sub_1000A41D4();
    swift_retain_n();
    a4(a3, v9);
  }

  return result;
}

uint64_t sub_1001275E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Lock.lock()();
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  LOBYTE(a3) = *(a3 + 32);
  swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  v9 = *(a2 + 32);
  *(a2 + 32) = a3;
  sub_10012DB28(v5, v6, a3);
  sub_10012DB40(v7, v8, v9);
  sub_1001278EC(1);
  return 0;
}

uint64_t sub_1001276A8()
{
  sub_1000A3DBC();
  Lock.lock()();
  sub_100047940();
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_10012F774();
  v4 = *(v1 + 16);
  *(v1 + 16) = v2;
  v5 = *(v1 + 24);
  *(v1 + 24) = v3;
  sub_10012DCB8(v2, v3);
  sub_10012DCD0(v4, v5);
  sub_1001278EC(1);
  return _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
}

uint64_t sub_100127748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100019BC4(&qword_1002ACE88);
  sub_1001F8158();
  v4 = sub_1001F74B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v12[-v7];
  v9 = swift_projectBox();
  Lock.lock()();
  v10 = *(*a3 + 88);
  swift_beginAccess();
  (*(v5 + 16))(v8, a3 + v10, v4);
  swift_beginAccess();
  (*(v5 + 40))(v9, v8, v4);
  sub_1001278EC(1);
  return 0;
}

uint64_t sub_1001278EC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  *(v2 + 16) = a1;
  Lock.unlock()();
  result = pthread_cond_broadcast(*(v2 + 32));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100127948(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  Lock.lock()();
  sub_100047940();
  result = swift_beginAccess();
  while (*(v2 + 16) != a1)
  {
    result = pthread_cond_wait(*(v2 + 32), *(v4 + 16));
    if (result)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

void EventLoopFuture.fold<A>(_:with:)()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *(v0 + *(*v0 + 96) + 8);
  ObjectType = swift_getObjectType();
  if ((*(v9 + 16))(ObjectType, v9))
  {
    sub_100062888();
    sub_100037B00();

    sub_100127B40();
  }

  else
  {
    sub_1000A40D0();
    v16 = EventLoop.makePromise<A>(of:file:line:)(v12, v13, v14, v15, 981, ObjectType, v12, v9);
    sub_1000DFBD8();
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = v8;
    v17[4] = v0;
    v17[5] = v6;
    v17[6] = v4;
    v17[7] = v16;
    v18 = *(v9 + 24);

    v18(sub_10012D130, v17, ObjectType, v9);

    sub_100037B00();
  }
}

uint64_t sub_100127B40()
{
  type metadata accessor for EventLoopFuture();
  sub_1001F6FC8();
  type metadata accessor for EventLoopFuture();
  swift_getWitnessTable();
  sub_1001F6E68();
  return v1;
}

uint64_t sub_100127C18@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  EventLoopFuture.and<A>(_:file:line:)();
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a1;
  v10[4] = a2;
  v10[5] = a3;

  EventLoopFuture.flatMap<A>(file:line:_:)();
  v12 = v11;

  *a5 = v12;
  return result;
}

uint64_t sub_100127D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a3;
  v8 = *(*a2 + 80);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = __chkstk_darwin(TupleTypeMetadata2, v10);
  v13 = &v29 - v12;
  v14 = *(a5 - 8);
  v16 = __chkstk_darwin(v11, v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v8 - 8);
  __chkstk_darwin(v16, v20);
  v22 = &v29 - v21;
  (*(v23 + 16))(v13, a1, TupleTypeMetadata2);
  v24 = *(TupleTypeMetadata2 + 48);
  (*(v19 + 32))(v22, v13, v8);
  (*(v14 + 32))(v18, &v13[v24], a5);
  v25 = *(a2 + *(*a2 + 96) + 8);
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 969, ObjectType, v25);
  v27 = v30(v22, v18);
  (*(v14 + 8))(v18, a5);
  (*(v19 + 8))(v22, v8);
  return v27;
}

uint64_t sub_100127FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100127B40();
  EventLoopFuture.cascade(to:)(a5);
}

void static EventLoopFuture.reduce<A>(_:_:on:_:)()
{
  sub_100037C08();
  sub_10012F4FC();
  v5 = v4;
  v7 = v6;
  swift_getObjectType();
  v8 = *(v1 + 80);
  sub_1000A40D0();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  sub_1000DFBD8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v0;
  v9[4] = v7;
  v9[5] = v5;
  v9[6] = v3;
  v9[7] = v2;
  swift_unknownObjectRetain();

  EventLoopFuture.fold<A>(_:with:)();

  sub_100037B00();
}

uint64_t sub_100128104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v11 = *(a7 - 8);
  __chkstk_darwin(a1, a2);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  a5(a1, a2);
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  v15 = v14;
  (*(v11 + 8))(v13, a7);
  return v15;
}

void static EventLoopFuture.reduce<A>(into:_:on:_:)()
{
  sub_1000A4080();
  v2 = v1;
  v4 = v3;
  v23 = v5;
  v7 = v6;
  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = *(v0 + 80);
  sub_1000A40D0();
  v16 = EventLoop.makePromise<A>(of:file:line:)(v12, v13, v14, v15, 1046, ObjectType, v11, v7);
  v17 = swift_allocBox();
  sub_10007E2C8();
  (*(v18 + 16))();
  sub_1000A40D0();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
  sub_10012F1DC();
  v19 = swift_allocObject();
  v19[2] = v11;
  v19[3] = v2;
  v19[4] = v9;
  v19[5] = v7;
  v19[6] = v23;
  v19[7] = v4;
  v19[8] = v17;
  swift_unknownObjectRetain();

  EventLoopFuture.fold<A>(_:with:)();

  sub_1000DFBD8();
  v20 = swift_allocObject();
  v20[2] = v11;
  v20[3] = v2;
  v20[4] = v9;
  v20[5] = v7;
  v20[6] = v16;
  v20[7] = v17;
  sub_10004794C();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10012D248;
  *(v21 + 24) = v20;
  swift_unknownObjectRetain();

  sub_10011E218();

  sub_1000A3FC4();
  v22 = swift_allocObject();
  v22[2] = v11;
  v22[3] = v2;
  v22[4] = v9;
  v22[5] = v7;
  v22[6] = v16;
  swift_unknownObjectRetain();

  sub_10011DD5C();

  sub_1000A3DA0();
}

void sub_1001284B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = swift_projectBox();
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 1051, ObjectType, a4);
  swift_beginAccess();
  a5(v8, a2);
  swift_endAccess();
  EventLoop.makeSucceededFuture<A>(_:file:line:)();
}

uint64_t sub_1001285A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  __chkstk_darwin(a1, a2);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 1057, ObjectType, a2);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, a5);
  EventLoopPromise.succeed(_:)(v10, a3, a5);
  return (*(v8 + 8))(v10, a5);
}

uint64_t sub_10012871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  debugOnly(_:)("/Library/Caches/com.apple.xbs/Sources/StoreKit/ASOctaneSupportXPCService/Octane Server/SwiftNIO/EventLoopFuture.swift", 117, 2, 1061, ObjectType, a3);

  return EventLoopPromise.fail(_:)(a1);
}

uint64_t static EventLoopFuture.andAllSucceed(_:promise:)()
{
  sub_100037AEC();
  sub_10012F810();
  sub_10012F1B4();
  if (v2())
  {
    sub_10012F3D4();
    *(swift_allocObject() + 16) = *(v0 + 80);
    sub_10005053C();
    sub_10012F934();
    static EventLoopFuture._reduceSuccesses0<A>(_:_:_:onValue:)();
  }

  else
  {
    sub_1000A3FC4();
    v3 = swift_allocObject();
    sub_10012F458(v3);

    swift_unknownObjectRetain();
    v4 = sub_1000A4168();
    v1(v4);
  }

  sub_100037A50();
}

uint64_t sub_10012888C()
{

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001288E4()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

void sub_100128958()
{
  sub_10012F7C8();
  sub_10002E170();
  v92 = v0;
  v93 = v1;
  debugOnly(_:)(v6, v7, v8, 1171, v9, v0);
  sub_10012F3D4();
  v10 = swift_allocObject();
  v11 = sub_10001A07C(v4);
  *(v10 + 16) = v11;
  if (!v11)
  {
    sub_1000A13F8();
    sub_10012F68C();

    return;
  }

  sub_10013B560(v4);
  sub_10012F5D4();
  sub_10012F9E4();
  sub_10012F978();
  while (1)
  {
    if (v96 == v3)
    {
      goto LABEL_55;
    }

    if (v95)
    {
      v12 = sub_1001F7808();
    }

    else
    {
      if (v3 >= *(v94 + 16))
      {
        goto LABEL_57;
      }

      v12 = *(v4 + v3 + 4);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v13 = *(v12 + 40);
    swift_getObjectType();
    sub_10012F8A0();
    v14 = (v12)(ObjectType, v13);
    swift_unknownObjectRelease();
    if ((v14 & 1) == 0 || (sub_100047940(), swift_beginAccess(), v14 = *(v98 + 24), v14 == 255))
    {
      ObjectType = sub_100150924(v93, v92);
      sub_1000A3FC4();
      v18 = swift_allocObject();
      sub_10012F238(v18)[6] = v3;
      sub_1000A41C8();
      v19 = swift_allocObject();
      sub_10012FA48(v19);
      sub_10012F5AC();
      swift_retain_n();
      sub_10012F0EC();
      swift_retain_n();

      if (v4(v3, v14))
      {
        sub_1000A3FC4();
        v20 = swift_allocObject();
        sub_10012F238(v20)[6] = v97;
        sub_1000A41C8();
        v21 = swift_allocObject();
        v21[2] = sub_10012ED28;
        v21[3] = v20;
        v21[4] = ObjectType;
        sub_10012EE14();
        debugOnly(_:)(v22, v23, v24, v25, v3, v14);
        sub_100047940();
        swift_beginAccess();
        v26 = *(ObjectType + 24);
        if (v26 == 255)
        {
          sub_100050548();
          if (*(ObjectType + 48))
          {
            v3 = v97;
            if (*(ObjectType + 64))
            {
              sub_10004794C();
              v35 = swift_allocObject();
              sub_10012F2D0(v35);
              v36 = *(ObjectType + 64);
              sub_10012F138();
              swift_retain_n();
              sub_10012F1D0();
              swift_retain_n();
              sub_10012F0EC();
              swift_retain_n();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(ObjectType + 64) = v36;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10012F714();
                sub_100032AAC();
                v36 = v65;
                *(ObjectType + 64) = v65;
              }

              v38 = *(v36 + 16);
              v3 = v38 + 1;
              if (v38 >= *(v36 + 24) >> 1)
              {
                sub_10012F714();
                sub_100032AAC();
                v36 = v66;
              }

              *(v36 + 16) = v3;
              sub_10012F6B4(v36 + 16 * v38);
            }

            else
            {
              sub_1000183C4(&qword_1002ADBD8);
              sub_100047958();
              v59 = swift_allocObject();
              *(v59 + 16) = v87;
              sub_10004794C();
              v60 = swift_allocObject();
              v61 = sub_10012F2D0(v60);
              *(v59 + 32) = sub_10012ED18;
              *(v59 + 40) = v61;
              *(ObjectType + 64) = v59;
              sub_10012F138();
              swift_retain_n();
              sub_10012F1D0();
              swift_retain_n();
              sub_10012F0EC();
              swift_retain_n();
            }
          }

          else
          {
            *(ObjectType + 48) = sub_10012EDB0;
            *(ObjectType + 56) = v21;
            sub_10012F138();
            swift_retain_n();
            sub_10012F1D0();
            swift_retain_n();
            sub_10012F0EC();
            swift_retain_n();

            v3 = v97;
          }

          swift_endAccess();
        }

        else
        {
          v27 = *(ObjectType + 16);

          if (v26)
          {
            sub_10012F7A4();
            sub_10012F34C();
            v88 = v28;
            sub_10012F138();
            swift_retain_n();
            sub_10012F1D0();
            swift_retain_n();
            sub_10012F0EC();
            swift_retain_n();
            sub_10012FB00();

            v29 = sub_1000DD44C();
            sub_10012DCB8(v29, v30);
            v31 = sub_10012F908();
            if (v88(v31))
            {
              sub_1001DBFE4(v18, 1);
              sub_10012F144();
              CallbackList._run()();
              v32 = sub_10012F180();
              sub_100037408(v32);
            }

            else
            {
              sub_1000A40C4();
              v48 = swift_allocObject();
              *(v48 + 16) = v5;
              *(v48 + 24) = v18;
              sub_10012F388(v48);
              v10 += 24;

              v49 = sub_1000DD44C();
              sub_10012DCB8(v49, v50);
              v51 = sub_10012F49C();
              v52(v51);
            }

            sub_10012F42C(v18);
            sub_10012FB50();
            sub_10012F4B8();
          }

          else
          {
            sub_10012F320();
            if (v17)
            {
              goto LABEL_59;
            }

            *v45 = v44;
            if (v44)
            {
              sub_10012F138();
              swift_retain_n();

              sub_10012F0EC();
              swift_retain_n();

              sub_10012F42C(v27);
              sub_10012F4B8();
            }

            else
            {
              v3 = *(v5 + 40);
              swift_getObjectType();
              sub_10012F34C();
              v89 = v53;
              sub_10012F138();
              swift_retain_n();
              sub_10012F1D0();
              swift_retain_n();
              sub_10012F0EC();
              swift_retain_n();

              v54 = sub_10012F908();
              if (v89(v54))
              {
                v55 = sub_10002E2C0();
                sub_1001DBFE4(v55, v56);
                sub_1000A40F4();
                v3 = v57;
                CallbackList._run()();
                v58 = sub_10012F398();
                sub_100037408(v58);
              }

              else
              {
                sub_1000A40C4();
                v62 = swift_allocObject();
                *(v62 + 16) = v5;
                *(v62 + 24) = 0;
                sub_10012F388(v62);
                v63 = *(v10 + 24);
                v10 += 24;

                v64 = sub_10012F9A4();
                v63(v64);
              }

              sub_10012F42C(v27);
              sub_10012FB50();
              sub_10012F4B8();
            }
          }
        }

        _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
        CallbackList._run()();
        sub_100037408(0);
      }

      else
      {
        sub_1000A41C8();
        v33 = swift_allocObject();
        sub_10012F64C(v33);

        v34 = sub_1000A4174();
        (v10)(v34);
        v10 = v5;
        v5 = v90;

        v3 = v97;
      }

      sub_10012F0EC();

      sub_10012F138();

      sub_10012F1D0();

      v4 = v91;
    }

    else
    {
      if (v14)
      {
        v68 = *(v98 + 16);
        v69 = *(v5 + 40);
        swift_getObjectType();
        sub_10012F53C();
        v70 = sub_10007B9A4();
        sub_10012DCB8(v70, v71);
        v72 = sub_10012F928();
        sub_1000477E8(v72, v73);
        v74 = sub_1000C9970();
        if ((v4)(v74))
        {
          v75 = sub_10012F928();
          sub_1001DBFE4(v75, v76);
          sub_10012F170();
          CallbackList._run()();

          v77 = sub_10012F398();
          sub_100037408(v77);
        }

        else
        {
          sub_1000A40C4();
          v78 = swift_allocObject();
          *(v78 + 16) = v5;
          *(v78 + 24) = v68;
          sub_10012F3A4(v78);
          v79 = *(v69 + 24);
          v80 = sub_10007B9A4();
          sub_10012DCB8(v80, v81);

          v82 = sub_10012F1E8();
          v79(v82);
        }

        v83 = sub_10007B9A4();
        sub_10012DCD0(v83, v84);
        v85 = sub_10007B9A4();
        sub_10012DCD0(v85, v86);
LABEL_55:

        sub_10012F68C();
        return;
      }

      sub_10012F320();
      if (v17)
      {
        goto LABEL_58;
      }

      *v16 = v15;
      if (!v15)
      {
        ObjectType = swift_getObjectType();
        sub_10012F1B4();
        if (v39())
        {
          v40 = sub_10002E2C0();
          sub_1001DBFE4(v40, v41);
          sub_1000E3198();
          ObjectType = v42;
          CallbackList._run()();

          v43 = sub_100037A2C();
          sub_100037408(v43);

          goto LABEL_45;
        }

        sub_1000A40C4();
        v46 = swift_allocObject();
        *(v46 + 16) = v5;
        *(v46 + 24) = 0;
        sub_10012F3A4(v46);
        sub_10012FA88();
        v47 = sub_10012F37C();
        (v3)(v47);
        v3 = v98;
      }
    }

LABEL_45:
    ++v3;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_1001292EC()
{
  sub_10012F7C8();
  sub_10002E170();
  v92 = v0;
  v93 = v1;
  debugOnly(_:)(v6, v7, v8, 1171, v9, v0);
  sub_10012F3D4();
  v10 = swift_allocObject();
  v11 = sub_10001A07C(v4);
  *(v10 + 16) = v11;
  if (!v11)
  {
    sub_1000A13F8();
    sub_10012F68C();

    return;
  }

  sub_10013B560(v4);
  sub_10012F5D4();
  sub_10012F9E4();
  sub_10012F978();
  while (1)
  {
    if (v96 == v3)
    {
      goto LABEL_55;
    }

    if (v95)
    {
      v12 = sub_1001F7808();
    }

    else
    {
      if (v3 >= *(v94 + 16))
      {
        goto LABEL_57;
      }

      v12 = *(v4 + v3 + 4);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v13 = *(v12 + 40);
    swift_getObjectType();
    sub_10012F8A0();
    v14 = (v12)(ObjectType, v13);
    swift_unknownObjectRelease();
    if ((v14 & 1) == 0 || (sub_100047940(), swift_beginAccess(), v14 = *(v98 + 24), v14 == 255))
    {
      ObjectType = sub_100150924(v93, v92);
      sub_1000A3FC4();
      v18 = swift_allocObject();
      sub_10012F238(v18)[6] = v3;
      sub_1000A41C8();
      v19 = swift_allocObject();
      sub_10012FA48(v19);
      sub_10012F5AC();
      swift_retain_n();
      sub_10012F0EC();
      swift_retain_n();

      if (v4(v3, v14))
      {
        sub_1000A3FC4();
        v20 = swift_allocObject();
        sub_10012F238(v20)[6] = v97;
        sub_1000A41C8();
        v21 = swift_allocObject();
        v21[2] = sub_10012ED28;
        v21[3] = v20;
        v21[4] = ObjectType;
        sub_10012EE14();
        debugOnly(_:)(v22, v23, v24, v25, v3, v14);
        sub_100047940();
        swift_beginAccess();
        v26 = *(ObjectType + 24);
        if (v26 == 255)
        {
          sub_100050548();
          if (*(ObjectType + 48))
          {
            v3 = v97;
            if (*(ObjectType + 64))
            {
              sub_10004794C();
              v35 = swift_allocObject();
              sub_10012F2D0(v35);
              v36 = *(ObjectType + 64);
              sub_10012F138();
              swift_retain_n();
              sub_10012F1D0();
              swift_retain_n();
              sub_10012F0EC();
              swift_retain_n();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(ObjectType + 64) = v36;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10012F714();
                sub_100032AAC();
                v36 = v65;
                *(ObjectType + 64) = v65;
              }

              v38 = *(v36 + 16);
              v3 = v38 + 1;
              if (v38 >= *(v36 + 24) >> 1)
              {
                sub_10012F714();
                sub_100032AAC();
                v36 = v66;
              }

              *(v36 + 16) = v3;
              sub_10012F6B4(v36 + 16 * v38);
            }

            else
            {
              sub_1000183C4(&qword_1002ADBD8);
              sub_100047958();
              v59 = swift_allocObject();
              *(v59 + 16) = v87;
              sub_10004794C();
              v60 = swift_allocObject();
              v61 = sub_10012F2D0(v60);
              *(v59 + 32) = sub_10012ED18;
              *(v59 + 40) = v61;
              *(ObjectType + 64) = v59;
              sub_10012F138();
              swift_retain_n();
              sub_10012F1D0();
              swift_retain_n();
              sub_10012F0EC();
              swift_retain_n();
            }
          }

          else
          {
            *(ObjectType + 48) = sub_10012EDB0;
            *(ObjectType + 56) = v21;
            sub_10012F138();
            swift_retain_n();
            sub_10012F1D0();
            swift_retain_n();
            sub_10012F0EC();
            swift_retain_n();

            v3 = v97;
          }

          swift_endAccess();
        }

        else
        {
          v27 = *(ObjectType + 16);

          if (v26)
          {
            sub_10012F7A4();
            sub_10012F34C();
            v88 = v28;
            sub_10012F138();
            swift_retain_n();
            sub_10012F1D0();
            swift_retain_n();
            sub_10012F0EC();
            swift_retain_n();
            sub_10012FB00();

            v29 = sub_1000DD44C();
            sub_10012DCB8(v29, v30);
            v31 = sub_10012F908();
            if (v88(v31))
            {
              sub_1001DBFE4(v18, 1);
              sub_10012F144();
              CallbackList._run()();
              v32 = sub_10012F180();
              sub_100037408(v32);
            }

            else
            {
              sub_1000A40C4();
              v48 = swift_allocObject();
              *(v48 + 16) = v5;
              *(v48 + 24) = v18;
              sub_10012F388(v48);
              v10 += 24;

              v49 = sub_1000DD44C();
              sub_10012DCB8(v49, v50);
              v51 = sub_10012F49C();
              v52(v51);
            }

            sub_10012F42C(v18);
            sub_10012FB50();
            sub_10012F4B8();
          }

          else
          {
            sub_10012F320();
            if (v17)
            {
              goto LABEL_59;
            }

            *v45 = v44;
            if (v44)
            {
              sub_10012F138();
              swift_retain_n();

              sub_10012F0EC();
              swift_retain_n();

              sub_10012F42C(v27);
              sub_10012F4B8();
            }

            else
            {
              v3 = *(v5 + 40);
              swift_getObjectType();
              sub_10012F34C();
              v89 = v53;
              sub_10012F138();
              swift_retain_n();
              sub_10012F1D0();
              swift_retain_n();
              sub_10012F0EC();
              swift_retain_n();

              v54 = sub_10012F908();
              if (v89(v54))
              {
                v55 = sub_10002E2C0();
                sub_1001DBFE4(v55, v56);
                sub_1000A40F4();
                v3 = v57;
                CallbackList._run()();
                v58 = sub_10012F398();
                sub_100037408(v58);
              }

              else
              {
                sub_1000A40C4();
                v62 = swift_allocObject();
                *(v62 + 16) = v5;
                *(v62 + 24) = 0;
                sub_10012F388(v62);
                v63 = *(v10 + 24);
                v10 += 24;

                v64 = sub_10012F9A4();
                v63(v64);
              }

              sub_10012F42C(v27);
              sub_10012FB50();
              sub_10012F4B8();
            }
          }
        }

        _s25ASOctaneSupportXPCService35NIOSingleStepByteToMessageProcessorC7_bufferAA0F6BufferVSgvpfi_0();
        CallbackList._run()();
        sub_100037408(0);
      }

      else
      {
        sub_1000A41C8();
        v33 = swift_allocObject();
        sub_10012F64C(v33);

        v34 = sub_1000A4174();
        (v10)(v34);
        v10 = v5;
        v5 = v90;

        v3 = v97;
      }

      sub_10012F0EC();

      sub_10012F138();

      sub_10012F1D0();

      v4 = v91;
    }

    else
    {
      if (v14)
      {
        v68 = *(v98 + 16);
        v69 = *(v5 + 40);
        swift_getObjectType();
        sub_10012F53C();
        v70 = sub_10007B9A4();
        sub_10012DCB8(v70, v71);
        v72 = sub_10012F928();
        sub_1000477E8(v72, v73);
        v74 = sub_1000C9970();
        if ((v4)(v74))
        {
          v75 = sub_10012F928();
          sub_1001DBFE4(v75, v76);
          sub_10012F170();
          CallbackList._run()();

          v77 = sub_10012F398();
          sub_100037408(v77);
        }

        else
        {
          sub_1000A40C4();
          v78 = swift_allocObject();
          *(v78 + 16) = v5;
          *(v78 + 24) = v68;
          sub_10012F3A4(v78);
          v79 = *(v69 + 24);
          v80 = sub_10007B9A4();
          sub_10012DCB8(v80, v81);

          v82 = sub_10012F1E8();
          v79(v82);
        }

        v83 = sub_10007B9A4();
        sub_10012DCD0(v83, v84);
        v85 = sub_10007B9A4();
        sub_10012DCD0(v85, v86);
LABEL_55:

        sub_10012F68C();
        return;
      }

      sub_10012F320();
      if (v17)
      {
        goto LABEL_58;
      }

      *v16 = v15;
      if (!v15)
      {
        ObjectType = swift_getObjectType();
        sub_10012F1B4();
        if (v39())
        {
          v40 = sub_10002E2C0();
          sub_1001DBFE4(v40, v41);
          sub_1000E3198();
          ObjectType = v42;
          CallbackList._run()();

          v43 = sub_100037A2C();
          sub_100037408(v43);

          goto LABEL_45;
        }

        sub_1000A40C4();
        v46 = swift_allocObject();
        *(v46 + 16) = v5;
        *(v46 + 24) = 0;
        sub_10012F3A4(v46);
        sub_10012FA88();
        v47 = sub_10012F37C();
        (v3)(v47);
        v3 = v98;
      }
    }

LABEL_45:
    ++v3;
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void static EventLoopFuture._reduceSuccesses0<A>(_:_:_:onValue:)()
{
  sub_100037C08();
  sub_10012F6D8(v7, v8, v9, v10, v11, v12);
  sub_100037B94();
  sub_100019BC4(&qword_1002ACE88);
  sub_1001F8158();
  sub_10012F52C();
  v63 = sub_1001F74B8();
  sub_10001A278();
  v14 = v13;
  sub_10001E844();
  __chkstk_darwin(v15, v16);
  sub_10005DBB4();
  v64 = v5;
  v17 = *(v5 - 8);
  v20 = __chkstk_darwin(v18, v19);
  v61 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v22);
  v60 = &v57 - v23;
  swift_getObjectType();
  sub_10002E170();
  v65 = v4;
  v66 = v1;
  debugOnly(_:)(v24, v25, v26, 1171, v27, v1);
  sub_10012F3D4();
  v28 = swift_allocObject();
  v69 = v3;
  type metadata accessor for EventLoopFuture();
  sub_100037A2C();
  v29 = sub_1001F6FA8();
  *(v28 + 16) = v29;
  if (!v29)
  {
    sub_1000A13F8();
    sub_100037B00();

    return;
  }

  v72 = v0;
  sub_1001F6FC8();
  sub_10012F2B8();
  swift_getWitnessTable();
  sub_1001F6E08();
  v72 = v71;
  sub_10010B19C();
  sub_1001F7B38();
  sub_1001F7B08();
  sub_10010B19C();
  v70 = sub_1001F7B28();
  v62 = (v14 + 16);
  v58 = (v17 + 32);
  v59 = v17 + 8;
  v57 = (v14 + 8);
  while (1)
  {
    while (1)
    {
      sub_1001F7B18();
      v30 = v73;
      if (!v73)
      {

        goto LABEL_11;
      }

      v31 = v72;
      v32 = v2;
      v33 = *(v73 + *(*v73 + 96) + 8);
      ObjectType = swift_getObjectType();
      v35 = v6;
      v36 = *(v33 + 16);
      swift_unknownObjectRetain();
      v37 = v33;
      v2 = v32;
      v38 = v36(ObjectType, v37);
      v6 = v35;
      v39 = v38;
      swift_unknownObjectRelease();
      if (v39)
      {
        break;
      }

LABEL_7:
      EventLoopFuture.hop(to:)();
      sub_10012F1DC();
      v45 = swift_allocObject();
      *(v39 + 40) = sub_10012F3B0(v45);
      *(v39 + 48) = v28;
      *(v39 + 56) = v32;
      *(v39 + 64) = v31;

      sub_10012F998();
      EventLoopFuture.whenComplete(_:)();
    }

    v40 = *(*v30 + 88);
    sub_100047940();
    swift_beginAccess();
    v41 = v30 + v40;
    v42 = v63;
    (*v62)(v35, v41, v63);
    v43 = sub_1000D4AC8();
    v39 = v64;
    if (sub_10001C990(v43, v44, v64) == 1)
    {
      (*v57)(v35, v42);
      goto LABEL_7;
    }

    v46 = *v58;
    v47 = v60;
    (*v58)(v60, v35, v39);
    v48 = sub_1000C9970();
    sub_10012A8B0(v48, v49, v67, v68, v28, v2, v50, v51);

    v46(v61, v47, v39);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v52 = sub_10012F8F4();
    v53(v52);
  }

  v55 = sub_10012F8F4();
  v56(v55);

LABEL_11:
  sub_100037B00();
}

uint64_t static EventLoopFuture.whenAllSucceed(_:on:)()
{
  sub_10012F858();
  sub_1001F6FC8();
  sub_1000A40D0();
  v4 = sub_10012FAC8(v0, v1, v2, v3, 1119);
  sub_10005053C();
  static EventLoopFuture.whenAllSucceed(_:promise:)();
  return v4;
}

void static EventLoopFuture.whenAllSucceed(_:promise:)()
{
  sub_100037C08();
  v27 = v1;
  sub_100037B94();
  v3 = *(v1 + 80);
  sub_10012F9D8();
  sub_1001F74B8();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v4, v5);
  v7 = v26 - v6;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v30 = v0;
  ObjectType = swift_getObjectType();
  sub_1000A40D0();
  v16 = EventLoop.makePromise<A>(of:file:line:)(v11, v12, v13, v14, 1134, ObjectType, v15, v9);
  sub_10012F3D4();
  v17 = swift_allocObject();
  sub_100018460(v7, 1, 1, v3);
  v29 = v2;
  v18 = v27;
  sub_1001F6FA8();
  *(v17 + 16) = sub_1001F6FB8();
  sub_10004794C();
  v19 = swift_allocObject();
  v28 = v3;
  *(v19 + 16) = v3;
  *(v19 + 24) = v17;
  v20 = *(v9 + 16);

  v26[1] = ObjectType;
  v21 = sub_100062234();
  if (v20(v21))
  {
    static EventLoopFuture._reduceSuccesses0<A>(_:_:_:onValue:)();
  }

  else
  {
    sub_10012F1DC();
    v22 = swift_allocObject();
    v22[2] = v18;
    v22[3] = v16;
    v22[4] = v29;
    v22[5] = v8;
    v22[6] = v9;
    v22[7] = sub_10012D390;
    v22[8] = v19;
    v23 = *(v9 + 24);

    swift_unknownObjectRetain();

    v24 = sub_1000A4168();
    v23(v24);
  }

  sub_1000A41C8();
  v25 = swift_allocObject();
  sub_10012F624(v25);

  sub_10012F914();
  sub_10011DE78();

  sub_100037B00();
}

uint64_t sub_10012A434(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001F74B8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v15 - v11;
  (*(*(a4 - 8) + 16))(&v15 - v11, a2, a4);
  sub_100018460(v12, 0, 1, a4);
  swift_beginAccess();
  sub_1001F6FC8();
  sub_1001F6F68();
  v13 = *(a3 + 16);
  sub_10012D9C0(a1, v13);
  (*(v9 + 40))(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a1, v12, v8);
  return swift_endAccess();
}

uint64_t sub_10012A5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8) == 1)
  {
    v6 = *a1;
    sub_1001F6FC8();

    return EventLoopPromise.fail(_:)(v6);
  }

  else
  {
    v9 = swift_beginAccess();
    v17 = *(a2 + 16);
    __chkstk_darwin(v9, v10);
    v16[2] = a4;
    sub_1001F74B8();
    v11 = sub_1001F6FC8();

    WitnessTable = swift_getWitnessTable();
    v14 = sub_1001A359C(sub_10012E3D0, v16, v11, a4, &type metadata for Never, WitnessTable, &protocol witness table for Never, v13);

    v17 = v14;
    v15 = sub_1001F6FC8();
    EventLoopPromise.succeed(_:)(&v17, a3, v15);
  }
}

uint64_t sub_10012A790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001F74B8();
  __chkstk_darwin(v6, v7);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1);
  result = sub_10001C990(v9, 1, a2);
  if (result != 1)
  {
    return (*(*(a2 - 8) + 32))(a3, v9, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_10012A8B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a3;
  v12 = *(a8 - 8);
  __chkstk_darwin(a1, a2);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019BC4(&qword_1002ACE88);
  v15 = sub_1001F8158();
  __chkstk_darwin(v15, v16);
  v18 = &v24 - v17;
  (*(v19 + 16))(&v24 - v17, a2, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    swift_errorRetain();
    sub_1000A13F8();
  }

  else
  {
    (*(v12 + 32))(v14, v18, a8);
    v24(a1, v14);
    result = swift_beginAccess();
    v21 = *(a5 + 16);
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      *(a5 + 16) = v23;
      if (!v23)
      {
        sub_1000A13F8();
      }

      return (*(v12 + 8))(v14, a8);
    }
  }

  return result;
}

uint64_t sub_10012AAFC(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1000A13F8();

    return sub_1000374AC(a1, 1);
  }

  else
  {
    a3(a7);
    result = swift_beginAccess();
    v10 = *(a5 + 16);
    v11 = __OFSUB__(v10, 1);
    v12 = v10 - 1;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      *(a5 + 16) = v12;
      if (!v12)
      {
        return sub_1000A13F8();
      }
    }
  }

  return result;
}

uint64_t sub_10012ABE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getObjectType();
  sub_1000A40D0();
  v15 = EventLoop.makePromise<A>(of:file:line:)(v9, v10, v11, v12, a4, v13, v14, a3);
  a5(a1, v15);
  return v15;
}

uint64_t static EventLoopFuture.andAllComplete(_:promise:)()
{
  sub_100037AEC();
  sub_10012F810();
  sub_10012F1B4();
  if (v2())
  {
    sub_10012F3D4();
    *(swift_allocObject() + 16) = *(v0 + 80);
    sub_10005053C();
    sub_10012F934();
    static EventLoopFuture._reduceCompletions0<A>(_:_:_:onResult:)();
  }

  else
  {
    sub_1000A3FC4();
    v3 = swift_allocObject();
    sub_10012F458(v3);

    swift_unknownObjectRetain();
    v4 = sub_1000A4168();
    v1(v4);
  }

  sub_100037A50();
}

void static EventLoopFuture._reduceCompletions0<A>(_:_:_:onResult:)()
{
  sub_100037C08();
  sub_10012F6D8(v4, v5, v6, v7, v8, v9);
  v11 = v10;
  v13 = v12;
  sub_100019BC4(&qword_1002ACE88);
  v14 = sub_1001F8158();
  sub_10010B19C();
  v57 = sub_1001F74B8();
  sub_10001A278();
  v16 = v15;
  sub_10001E844();
  __chkstk_darwin(v17, v18);
  sub_10005DBB4();
  v58 = v14;
  sub_10002DFFC();
  v20 = v19;
  sub_10001E844();
  __chkstk_darwin(v21, v22);
  v55 = &v51 - v23;
  swift_getObjectType();
  sub_10002E170();
  v59 = v2;
  v60 = v0;
  debugOnly(_:)(v24, v25, v26, 1325, v27, v0);
  sub_10012F3D4();
  v28 = swift_allocObject();
  v63 = v1;
  type metadata accessor for EventLoopFuture();
  v29 = sub_1001F6FA8();
  *(v28 + 16) = v29;
  if (v29)
  {
    v68 = v11;
    sub_1001F6FC8();
    sub_10012F2B8();
    swift_getWitnessTable();
    sub_1001F6E08();
    v66 = v65;
    sub_1001F7B38();
    sub_1001F7B08();
    v64 = sub_1001F7B28();
    v56 = (v16 + 16);
    v53 = (v20 + 8);
    v54 = (v20 + 32);
    v52 = (v16 + 8);
    while (1)
    {
      while (1)
      {
        sub_1001F7B18();
        v30 = v67;
        if (!v67)
        {

          sub_100037B00();
          return;
        }

        v31 = v66;
        sub_10002E0B8();
        v33 = v13;
        v34 = *(v30 + *(v32 + 96) + 8);
        ObjectType = swift_getObjectType();
        v36 = v3;
        v37 = *(v34 + 16);
        swift_unknownObjectRetain();
        v38 = v34;
        v13 = v33;
        v39 = v37(ObjectType, v38);
        v3 = v36;
        v40 = v39;
        swift_unknownObjectRelease();
        if (v40)
        {
          break;
        }

LABEL_7:
        EventLoopFuture.hop(to:)();
        sub_10012F1DC();
        v46 = swift_allocObject();
        v40[5] = sub_10012F3B0(v46);
        v40[6] = v28;
        v40[7] = v33;
        v40[8] = v31;

        sub_10012F998();
        EventLoopFuture.whenComplete(_:)();
      }

      sub_10002E0B8();
      v42 = *(v41 + 88);
      sub_100047940();
      swift_beginAccess();
      v40 = v57;
      (*v56)(v36, v30 + v42, v57);
      v43 = sub_1000D4AC8();
      v44 = v58;
      if (sub_10001C990(v43, v45, v58) == 1)
      {
        (*v52)(v36, v40);
        goto LABEL_7;
      }

      v47 = v55;
      (*v54)(v55, v36, v44);
      v48 = sub_100062888();
      sub_10012B7F0(v48, v49, v61, v62, v28);

      (*v53)(v47, v44);
    }
  }

  sub_1000A13F8();
  sub_100037B00();
}

uint64_t sub_10012B1A8()
{
  sub_100037AEC();
  v2 = v1;
  sub_10012F50C();
  sub_10012F3D4();
  *(swift_allocObject() + 16) = *(v0 + 80);
  v3 = sub_1000C9970();
  v2(v3);
  sub_100037A50();
}

uint64_t static EventLoopFuture.whenAllComplete(_:on:)()
{
  sub_10012F858();
  sub_100019BC4(&qword_1002ACE88);
  sub_1001F8158();
  sub_10012F750();
  sub_1001F6FC8();
  sub_1000A40D0();
  v4 = sub_10012FAC8(v0, v1, v2, v3, 1269);
  sub_10005053C();
  static EventLoopFuture.whenAllComplete(_:promise:)();
  return v4;
}

void static EventLoopFuture.whenAllComplete(_:promise:)()
{
  sub_100037C08();
  v29 = v0;
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 80);
  sub_100019BC4(&qword_1002ACE88);
  sub_10010B19C();
  sub_1001F8158();
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v6, v7);
  v9 = (&v28 - v8);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v31 = v2;
  ObjectType = swift_getObjectType();
  sub_1000A40D0();
  v18 = EventLoop.makePromise<A>(of:file:line:)(v13, v14, v15, v16, 1285, ObjectType, v17, v11);
  sub_10012F3D4();
  v19 = swift_allocObject();
  sub_10012D4A0();
  *v9 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v30 = v4;
  v20 = v29;
  sub_1001F6FA8();
  *(v19 + 16) = sub_1001F6FB8();
  sub_10004794C();
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = v19;
  v22 = *(v11 + 16);

  v28 = ObjectType;
  v23 = sub_1000701E4();
  if (v22(v23))
  {
    static EventLoopFuture._reduceCompletions0<A>(_:_:_:onResult:)();
  }

  else
  {
    sub_10012F1DC();
    v24 = swift_allocObject();
    v24[2] = v20;
    v24[3] = v18;
    v24[4] = v30;
    v24[5] = v10;
    v24[6] = v11;
    v24[7] = sub_10012D4F4;
    v24[8] = v21;
    v25 = *(v11 + 24);

    swift_unknownObjectRetain();

    v26 = sub_1000A4168();
    v25(v26);
  }

  sub_1000A41C8();
  v27 = swift_allocObject();
  sub_10012F624(v27);

  sub_10012F914();
  sub_1001200D0();

  sub_100037B00();
}

uint64_t sub_10012B588(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_100019BC4(&qword_1002ACE88);
  v6 = sub_1001F8158();
  sub_1001F6FC8();
  sub_1001F6F68();
  v7 = *(a3 + 16);
  sub_10012D9C0(a1, v7);
  (*(*(v6 - 8) + 24))(v7 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * a1, a2, v6);
  return swift_endAccess();
}

uint64_t sub_10012B6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
    sub_100019BC4(&qword_1002ACE88);
    sub_1001F8158();
    sub_1001F6FC8();

    return EventLoopPromise.fail(_:)(v4);
  }

  else
  {
    swift_beginAccess();
    v8 = *(a2 + 16);

    sub_100019BC4(&qword_1002ACE88);
    sub_1001F8158();
    v7 = sub_1001F6FC8();
    EventLoopPromise.succeed(_:)(&v8, a3, v7);
  }
}

uint64_t sub_10012B7F0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  a3();
  result = swift_beginAccess();
  v7 = *(a5 + 16);
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v9;
    if (!v9)
    {
      return sub_1000A13F8();
    }
  }

  return result;
}

uint64_t EventLoopFuture.unwrap<A>(orError:)(uint64_t a1)
{
  sub_10004794C();
  swift_allocObject();
  sub_10012F6CC();
  *(v3 + 16) = *(*(v2 + 80) + 16);
  *(v3 + 24) = a1;
  swift_errorRetain();
  sub_10002E170();
  EventLoopFuture.flatMapThrowing<A>(file:line:_:)();
  v5 = v4;

  return v5;
}

uint64_t sub_10012B934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1001F74B8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v12 - v9;
  (*(v7 + 16))(&v12 - v9, a1, v6);
  if (sub_10001C990(v10, 1, a2) != 1)
  {
    return (*(*(a2 - 8) + 32))(a3, v10, a2);
  }

  (*(v7 + 8))(v10, v6);
  swift_willThrow();
  return swift_errorRetain();
}

uint64_t EventLoopFuture.unwrap<A>(orReplace:)()
{
  sub_10002E27C();
  v1 = *(*(v0 + 80) + 16);
  sub_10002DFFC();
  v3 = v2;
  __chkstk_darwin(v4, v5);
  v7 = &v16 - v6;
  (*(v3 + 16))(&v16 - v6);
  v8 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v3 + 32))(v9 + v8, v7, v1);
  sub_10002E170();
  v14 = EventLoopFuture.map<A>(file:line:_:)(v10, v11, v12, 1445, v13, v9, v1);

  return v14;
}

uint64_t sub_10012BBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1001F74B8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v14 - v11;
  (*(v9 + 16))(&v14 - v11, a1, v8);
  if (sub_10001C990(v12, 1, a3) != 1)
  {
    return (*(*(a3 - 8) + 32))(a4, v12, a3);
  }

  (*(v9 + 8))(v12, v8);
  return (*(*(a3 - 8) + 16))(a4, a2, a3);
}

uint64_t EventLoopFuture.unwrap<A>(orElse:)()
{
  sub_100037B94();
  v3 = *v1;
  sub_1000A41C8();
  v4 = swift_allocObject();
  v5 = *(*(v3 + 80) + 16);
  v4[2] = v5;
  v4[3] = v2;
  v4[4] = v0;

  sub_10002E170();
  v10 = EventLoopFuture.map<A>(file:line:_:)(v6, v7, v8, 1469, v9, v4, v5);

  return v10;
}

uint64_t sub_10012BE10@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_1001F74B8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v15 - v11;
  (*(v9 + 16))(&v15 - v11, a1, v8);
  if (sub_10001C990(v12, 1, a3) != 1)
  {
    return (*(*(a3 - 8) + 32))(a4, v12, a3);
  }

  v13 = (*(v9 + 8))(v12, v8);
  return a2(v13);
}

uint64_t EventLoopFuture.flatMapBlocking<A>(onto:_:)()
{
  sub_10012F27C();
  v4 = v3;
  v6 = v5;
  sub_1000A3FC4();
  v7 = swift_allocObject();
  v7[2] = v0;
  v7[3] = v6;
  v7[4] = v1;
  v7[5] = v4;
  v7[6] = v2;
  v8 = v6;

  sub_10002E170();
  EventLoopFuture.flatMap<A>(file:line:_:)();
  v10 = v9;

  return v10;
}

uint64_t sub_10012C014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[1] = a2;
  v9 = *(*a3 + 80);
  v10 = *(v9 - 8);
  __chkstk_darwin(a1, a1);
  v12 = v22 - v11;
  v15 = (v14 + *(v13 + 96));
  v16 = *v15;
  v17 = v15[1];
  (*(v10 + 16))(v22 - v11);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v9;
  *(v19 + 3) = a6;
  *(v19 + 4) = a4;
  *(v19 + 5) = a5;
  (*(v10 + 32))(&v19[v18], v12, v9);

  v20 = OS_dispatch_queue.asyncWithFuture<A>(eventLoop:_:)(v16, v17, sub_10012E370, v19, a6);

  return v20;
}

uint64_t sub_10012C1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v27 = a4;
  v30 = a2;
  v7 = sub_1001F6738();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1001F6768();
  v11 = *(v28 - 8);
  v13 = __chkstk_darwin(v28, v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v13, v18);
  v19 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, a5);
  v20 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v21 = swift_allocObject();
  v22 = v26;
  v23 = v27;
  *(v21 + 2) = a5;
  *(v21 + 3) = v22;
  *(v21 + 4) = v23;
  (*(v16 + 32))(&v21[v20], v19, a5);
  aBlock[4] = sub_10012E268;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_10028BC48;
  v24 = _Block_copy(aBlock);

  sub_1001F6758();
  v31 = _swiftEmptyArrayStorage;
  sub_100028258();
  sub_1000183C4(&qword_1002AC880);
  sub_1000282B0();
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v24);
  (*(v29 + 8))(v10, v7);
  (*(v11 + 8))(v15, v28);
}

uint64_t EventLoopFuture.whenFailureBlocking(onto:_:)()
{
  sub_1000A3DBC();
  v3 = v2;
  sub_1000A41C8();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = v1;
  v4[4] = v0;
  v5 = v3;

  v6 = sub_10012F37C();
  EventLoopFuture.whenFailure(_:)(v6, v7);
}

uint64_t sub_10012C5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001F6738();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F6768();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12, v14);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a1;
  aBlock[4] = sub_10012E190;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_10028BBF8;
  v18 = _Block_copy(aBlock);

  swift_errorRetain();
  sub_1001F6758();
  v20[1] = _swiftEmptyArrayStorage;
  sub_100028258();
  sub_1000183C4(&qword_1002AC880);
  sub_1000282B0();
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_10012C864()
{
  sub_100037AEC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *v0;
  sub_100047958();
  v12 = swift_allocObject();
  v12[2] = *(v11 + 80);
  v12[3] = v10;
  v12[4] = v8;
  v12[5] = v6;
  v13 = v10;

  v2(v4, v12);
  sub_100037A50();
}

uint64_t sub_10012C904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a4;
  v29 = a2;
  v7 = sub_1001F6738();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1001F6768();
  v11 = *(v27 - 8);
  __chkstk_darwin(v27, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100019BC4(&qword_1002ACE88);
  v15 = sub_1001F8158();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v25 - v18;
  (*(v16 + 16))(&v25 - v18, a1, v15);
  v20 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v21 = swift_allocObject();
  v22 = v25;
  *(v21 + 2) = a5;
  *(v21 + 3) = v22;
  *(v21 + 4) = v26;
  (*(v16 + 32))(&v21[v20], v19, v15);
  aBlock[4] = sub_10012E0D8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_10028BBA8;
  v23 = _Block_copy(aBlock);

  sub_1001F6758();
  v30 = _swiftEmptyArrayStorage;
  sub_100028258();
  sub_1000183C4(&qword_1002AC880);
  sub_1000282B0();
  sub_1001F7708();
  sub_1001F7338();
  _Block_release(v23);
  (*(v28 + 8))(v10, v7);
  (*(v11 + 8))(v14, v27);
}

Swift::Int _NIOEventLoopFutureIdentifier.hashValue.getter(Swift::UInt a1)
{
  sub_1001F8068();
  sub_1001F8088(a1);
  return sub_1001F80D8();
}

Swift::Int sub_10012CCF0()
{
  v1 = *v0;
  sub_1001F8068();
  _NIOEventLoopFutureIdentifier.hash(into:)(v3, v1);
  return sub_1001F80D8();
}

uint64_t sub_10012CD34(uint64_t a1)
{
  v2 = v1;
  *(v2 + 32) = swift_slowAlloc();
  *(v2 + 16) = a1;
  type metadata accessor for Lock();
  sub_10012F3D4();
  swift_allocObject();
  *(v2 + 24) = Lock.init()();
  result = pthread_cond_init(*(v2 + 32), 0);
  if (!result)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10012CDCC()
{
  sub_100019BC4(&qword_1002ACE88);
  sub_10010B19C();
  sub_1001F8158();
  sub_10012F75C();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_10007E2C8();
    v0 = sub_10012F954();
    v1(v0);
  }

  v2 = sub_10012F35C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10012CECC()
{
  sub_100019BC4(&qword_1002ACE88);
  sub_10010B19C();
  v0 = sub_1001F8158();
  sub_100056658(v0);

  return sub_100118808();
}

uint64_t sub_10012CF90()
{

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012CFE8()
{

  sub_10012F1DC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D04C()
{

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D0E4()
{

  sub_1000DFBD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D140()
{
  swift_unknownObjectRelease();

  sub_1000DFBD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D18C()
{
  swift_unknownObjectRelease();

  sub_10012F1DC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D204()
{
  swift_unknownObjectRelease();

  sub_1000DFBD8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D258()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D28C()
{
  swift_unknownObjectRelease();

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D35C()
{

  sub_10012F3D4();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D424()
{

  sub_10012F1DC();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_10012D4A0()
{
  result = qword_1002B4578;
  if (!qword_1002B4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B4578);
  }

  return result;
}

uint64_t sub_10012D4FC()
{

  swift_unknownObjectRelease();

  sub_10012F1DC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D588()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D5D8()
{
  sub_10007E2C8();
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10012D690()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012D6D0()
{

  v1 = sub_10012F014();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10012D730()
{

  sub_1000A41C8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10012D778()
{

  sub_100047958();

  return _swift_deallocObject(v1, v2, v3);
}

unint64_t sub_10012D7C4()
{
  result = qword_1002B4580[0];
  if (!qword_1002B4580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002B4580);
  }

  return result;
}

uint64_t sub_10012D818(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10012D848()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10012D89C()
{
  sub_100019BC4(&qword_1002ACE88);
  sub_1001F8158();
  result = sub_1001F74B8();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012D9C0(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10012DA48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a8 + 32) = a1;
  *(a8 + 40) = a10;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 56) = 0;
  *(a8 + 64) = 0;
  *(a8 + 48) = 0;
  return a8;
}

uint64_t sub_10012DA88(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1000A37F0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10012DAA0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_10012E88C(result, a2 & 1, &_swift_bridgeObjectRelease);
  }

  return result;
}

uint64_t sub_10012DB28(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000A339C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10012DB40(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000373FC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10012DBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 2)
  {
    return sub_10003715C(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_10012DC28()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012DC6C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10012DCB8(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1000477E8(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10012DCD0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1000374AC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10012DD40()
{

  v0 = sub_10012F014();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012DDA8()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012DE0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a9 + 40) = a1;
  *(a9 + 48) = a11;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 64) = 0;
  *(a9 + 72) = 0;
  *(a9 + 56) = 0;
  return a9;
}

uint64_t sub_10012DEFC()
{
  swift_unknownObjectRelease();
  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012DF54(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1000A3B30(result, a2 & 1);
  }

  return result;
}

void sub_10012DF80(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    sub_10012EEDC();
    sub_10012E88C(v3, v2 & 1, v4);
  }
}

uint64_t sub_10012DFD8()
{
  sub_100019BC4(&qword_1002ACE88);
  sub_10010B19C();
  sub_1001F8158();
  sub_10012F75C();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_10007E2C8();
    v0 = sub_10012F954();
    v1(v0);
  }

  v2 = sub_10012F35C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10012E0D8()
{
  sub_100019BC4(&qword_1002ACE88);
  sub_10010B19C();
  v1 = sub_1001F8158();
  sub_100056658(v1);
  return (*(v0 + 24))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)));
}

uint64_t sub_10012E160(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10012E1C0()
{
  sub_10002DFFC();

  v0 = sub_10012F954();
  v1(v0);
  v2 = sub_10012F35C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10012E2C8()
{
  sub_10002DFFC();

  v0 = sub_10012F954();
  v1(v0);
  v2 = sub_10012F35C();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_10012E428()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012E484(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000A386C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10012E49C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100037420(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10012E510()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10012E5B0()
{
  sub_100037B94();

  v1(*(v0 + 24));
  v2 = sub_10012F960();

  return _swift_deallocObject(v2, v3, 7);
}

uint64_t sub_10012E674(uint64_t result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_10012E68C(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

uint64_t sub_10012E68C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_10012E698(uint64_t result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_10012E6B0(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

uint64_t sub_10012E6B0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10012E710()
{
  sub_100037B94();

  v2(*(v1 + 32));
  v0(*(v1 + 40));
  v3 = sub_10012F014();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10012E77C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_10012E7B0()
{

  sub_1000374AC(*(v0 + 24), *(v0 + 32));
  sub_1000A40C4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10012E830(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (HIBYTE(a3) != 255)
  {
    return sub_1000A3A44(result, a2, a3, HIBYTE(a3) & 1);
  }

  return result;
}

uint64_t sub_10012E848()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012E88C(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  if (a2)
  {
  }

  else
  {
    return a3();
  }
}

uint64_t sub_10012E8F0(void (*a1)(void))
{

  a1(*(v1 + 32));
  sub_1000A41C8();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_10012E970()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012E9AC()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10012EE38(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t sub_10012EEF4(uint64_t a1, __n128 a2)
{
  *(a1 + 40) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;

  return swift_retain_n();
}

uint64_t sub_10012EF44(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t sub_10012EF9C()
{
  sub_100037408(v0);
}

void *sub_10012EFDC(void *result)
{
  result[2] = v4;
  result[3] = v1;
  result[4] = v2;
  result[5] = v3;
  return result;
}

void *sub_10012F024(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

uint64_t sub_10012F044()
{
}

uint64_t sub_10012F064()
{
  sub_100037408(v0);
}

uint64_t sub_10012F094(__n128 *a1, __n128 a2)
{
  a1[2] = a2;
  a1[1].n128_u64[0] = 0;
  a1[1].n128_u8[8] = -1;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  a1[3].n128_u64[0] = 0;

  return swift_retain_n();
}

uint64_t sub_10012F0F8()
{
}

uint64_t sub_10012F114(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;

  return swift_getObjectType();
}

uint64_t sub_10012F150()
{
}

uint64_t sub_10012F1F4(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t sub_10012F21C()
{

  return swift_beginAccess();
}

void *sub_10012F238(void *result)
{
  result[2] = _toIndex(_:);
  result[3] = 0;
  result[4] = v1;
  result[5] = v2;
  return result;
}

uint64_t sub_10012F254(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10012F260()
{
}

uint64_t sub_10012F2D0(uint64_t result)
{
  *(result + 16) = sub_10012EDB0;
  *(result + 24) = v1;
  return result;
}

void sub_10012F2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[1] = 0;
  v10[2] = v11;
  *v10 = a10;
}

uint64_t sub_10012F3B0(void *a1)
{
  v2 = *(v1 - 176);
  a1[2] = *(*(v1 - 168) + 80);
  a1[3] = v2;
  a1[4] = *(v1 - 192);
  return *(v1 - 184);
}

uint64_t sub_10012F400(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = v3;
}

uint64_t sub_10012F42C(uint64_t a1)
{
  sub_10012DCD0(a1, v1);
}

uint64_t sub_10012F458(void *a1)
{
  a1[2] = v5;
  a1[3] = v4;
  a1[4] = v3;
  a1[5] = v2;
  a1[6] = v1;
}

void sub_10012F4C4()
{
  v0[1] = 0;
  v0[2] = v1;
  *v0 = *(v2 - 56);
}

uint64_t sub_10012F4E4()
{
  v3 = *(v0 + 8);

  return sub_1001134C0(v3, v1);
}

void *sub_10012F58C(void *result)
{
  result[2] = v3;
  result[3] = v2;
  result[4] = v1;
  return result;
}

uint64_t sub_10012F5AC()
{

  return swift_retain_n();
}

uint64_t sub_10012F5D4()
{

  return swift_beginAccess();
}

uint64_t sub_10012F5FC(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;

  return swift_getObjectType();
}

uint64_t sub_10012F624(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = *(v3 - 88);

  return swift_retain_n();
}

uint64_t sub_10012F64C(void *a1)
{
  a1[2] = v2;
  a1[3] = v1;
  a1[4] = v3;
}

uint64_t sub_10012F674()
{

  return swift_getObjectType();
}

void sub_10012F6B4(uint64_t a1@<X8>)
{
  *(a1 + 32) = v1;
  *(a1 + 40) = v2;
  *(v4 + 64) = v3;
}

void sub_10012F6D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 - 168) = v6;
  *(v7 - 192) = a5;
  *(v7 - 184) = a6;
}

uint64_t sub_10012F744(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10012F774()
{

  return swift_beginAccess();
}

uint64_t sub_10012F78C()
{

  return swift_unknownObjectRetain();
}

uint64_t sub_10012F7A4()
{

  return swift_getObjectType();
}

uint64_t sub_10012F7C8()
{

  return swift_getObjectType();
}

uint64_t sub_10012F7EC()
{
}

uint64_t sub_10012F810()
{

  return swift_getObjectType();
}

uint64_t sub_10012F834(void *a1)
{
  a1[2] = v3;
  a1[3] = v1;
  a1[4] = v2;
}

uint64_t sub_10012F858()
{

  return swift_getObjectType();
}

uint64_t sub_10012F87C(void *a1)
{
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v1;

  return swift_getObjectType();
}

uint64_t sub_10012F8A0()
{

  return swift_unknownObjectRetain();
}

uint64_t sub_10012F8C4()
{

  return swift_getObjectType();
}

uint64_t sub_10012F8DC()
{

  return swift_allocObject();
}

void *sub_10012F9B8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  result[2] = a12;
  result[3] = v12;
  result[4] = v13;
  result[5] = v14;
  return result;
}

uint64_t sub_10012FA48(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;

  return swift_getObjectType();
}

uint64_t sub_10012FA68()
{
}

uint64_t sub_10012FA88()
{
}

uint64_t sub_10012FAA8()
{
}

uint64_t sub_10012FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return EventLoop.makePromise<A>(of:file:line:)(a1, a2, a3, a4, a5, v6, a1, v5);
}

uint64_t sub_10012FB00()
{
}

uint64_t sub_10012FB20()
{

  return swift_getObjectType();
}

uint64_t sub_10012FB38()
{

  return sub_1001F8158();
}

uint64_t sub_10012FB50()
{
}

uint64_t sub_10012FB68()
{

  return swift_getObjectType();
}

uint64_t ByteBuffer.getJSONDecodable<A>(_:decoder:at:length:)@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v9 = ByteBuffer.getData(at:length:byteTransferStrategy:)(a1, a2, 1, a3, a4);
  if (v10 >> 60 == 15)
  {
    return sub_100018460(a6, 1, 1, a5);
  }

  v12 = v9;
  v13 = v10;
  sub_1001F5E68();
  if (!v6)
  {
    sub_100018460(a6, 0, 1, a5);
  }

  return sub_10003A36C(v12, v13);
}

uint64_t ByteBuffer.readJSONDecodable<A>(_:decoder:length:)@<X0>(unint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v21 = a3;
  v6 = sub_1001F74B8();
  v20 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = &v19 - v8;
  v11 = *(v3 + 8);
  v10 = *(v3 + 12);
  v12 = v22;
  result = ByteBuffer.getJSONDecodable<A>(_:decoder:at:length:)(v11, a1, *v3, v11 | (v10 << 32), a2, &v19 - v8);
  if (!v12)
  {
    v22 = v10;
    v15 = v20;
    v14 = v21;
    if (sub_10001C990(v9, 1, a2) == 1)
    {
      (*(v15 + 8))(v9, v6);
      v16 = v14;
      v17 = 1;
      return sub_100018460(v16, v17, 1, a2);
    }

    result = (*(*(a2 - 8) + 32))(v14, v9, a2);
    v18 = v11 + a1;
    if (__CFADD__(v11, a1))
    {
      __break(1u);
    }

    else if (v22 >= v18)
    {
      *(v3 + 8) = v18;
      v16 = v14;
      v17 = 0;
      return sub_100018460(v16, v17, 1, a2);
    }

    __break(1u);
  }

  return result;
}

uint64_t ByteBuffer.setJSONEncodable<A>(_:encoder:at:)(uint64_t a1, uint64_t a2, Swift::UInt32 a3)
{
  result = sub_1001F5EE8();
  if (!v4)
  {
    v8 = result;
    v9 = v7;
    v10 = sub_100130208(result, v7, v3, a3);
    if ((v10 & 0x100000000) != 0)
    {
      sub_10006006C();
    }

    v11 = v10;
    sub_10003A380(v8, v9);
    return v11;
  }

  return result;
}

Swift::Int ByteBuffer.writeJSONEncodable<A>(_:encoder:)(uint64_t a1, uint64_t a2)
{
  v4 = ByteBuffer.setJSONEncodable<A>(_:encoder:at:)(a1, a2, *(v2 + 12));
  v5 = v4;
  if (!v3)
  {
    ByteBuffer.moveWriterIndex(forwardBy:)(v4);
  }

  return v5;
}

uint64_t JSONDecoder.decode<A>(_:from:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v15 = a4;
  v8 = HIDWORD(a2);
  v9 = sub_1001F74B8();
  result = __chkstk_darwin(v9 - 8, v10);
  v13 = &v14 - v12;
  if (v8 < a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = ByteBuffer.getJSONDecodable<A>(_:decoder:at:length:)(a2, (v8 - a2), a1, a2, a3, &v14 - v12);
  if (v4)
  {
    return result;
  }

  result = sub_10001C990(v13, 1, a3);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return (*(*(a3 - 8) + 32))(v15, v13, a3);
}

uint64_t JSONEncoder.encodeAsByteBuffer<A>(_:allocator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1001F5EE8();
  if (!v6)
  {
    v17 = v5;
    v18 = result;
    v20 = v13;
    v14 = sub_1001F63E8();
    if (v14 < 0)
    {
      __break(1u);
    }

    else
    {
      v15 = v14;
      if (v14)
      {
        type metadata accessor for ByteBuffer._Storage();
        v16 = static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v15, a2, a3, a4, a5);
LABEL_7:
        v19 = v16;
        ByteBuffer.writeJSONEncodable<A>(_:encoder:)(a1, v17);
        sub_10003A380(v18, v20);
        return v19;
      }

      if (qword_1002AC430 == -1)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_100130208(uint64_t a1, unint64_t a2, uint64_t a3, Swift::UInt32 a4)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v12 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
        JUMPOUT(0x1001302B8);
      }

      a1 = a1;
      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v10 = v12;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a1 + 24);
      v9 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v10 = v8;
LABEL_9:
      result = sub_100074EB4(a1, v10, v9, a3, a4);
      if (!v4)
      {
        return result | ((HIDWORD(result) & 1) << 32);
      }

      return result;
    case 3uLL:
      a1 = 0;
      v7 = 0;
      goto LABEL_5;
    default:
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100074E20(a1, v7, a3, a4);
      if (!v4)
      {
        return result | ((HIDWORD(result) & 1) << 32);
      }

      return result;
  }
}

NSNumber sub_1001302C8(char a1)
{
  sub_100019C0C(0, qword_1002B23E0);
  if (a1)
  {
    v2 = 37;
  }

  else
  {
    v2 = 36;
  }

  return sub_1001F73C8(v2);
}

void *sub_10013032C()
{
  type metadata accessor for DaemonConnection();
  v0 = swift_allocObject();
  result = sub_1001325C4();
  qword_1002E60D8 = v0;
  return result;
}

uint64_t sub_100130368()
{
  sub_100019C0C(0, &qword_1002B48A0);
  v0 = sub_100130600(0xD000000000000024, 0x8000000100228460, 0);
  v1 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___ASDOctaneServiceInternalProtocol];
  [v0 setRemoteObjectInterface:v1];
  v12 = sub_10013067C;
  v13 = 0;
  aBlock = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000172C0;
  v11 = &unk_10028C760;
  v2 = _Block_copy(&aBlock);
  [v0 setInterruptionHandler:v2];
  _Block_release(v2);
  v12 = sub_100130688;
  v13 = 0;
  aBlock = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1000172C0;
  v11 = &unk_10028C788;
  v3 = _Block_copy(&aBlock);
  [v0 setInvalidationHandler:v3];
  _Block_release(v3);
  [v0 resume];
  v12 = sub_100130754;
  v13 = 0;
  aBlock = _NSConcreteStackBlock;
  v9 = 1107296256;
  v10 = sub_1001308EC;
  v11 = &unk_10028C7B0;
  v4 = _Block_copy(&aBlock);
  v5 = [v0 remoteObjectProxyWithErrorHandler:v4];
  _Block_release(v4);
  sub_1001F76D8();

  swift_unknownObjectRelease();
  sub_1000183C4(&qword_1002B48A8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

id sub_100130600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1001F6B48();

  v6 = [v4 initWithMachServiceName:v5 options:a3];

  return v6;
}

void sub_100130694(const char *a1)
{
  if (qword_1002AC510 != -1)
  {
    sub_10001B230();
  }

  v3 = sub_1001F6688();
  sub_10009951C(v3, qword_1002E6180);
  loga = sub_1001F6668();
  v4 = sub_1001F7298();
  if (sub_100133ABC(v4, v5, v6, v7, v8, v9, v10, v11, v13, loga))
  {
    v12 = sub_10003A87C();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, log, v1, a1, v12, 2u);
    sub_10003A72C();
  }
}

void sub_100130754()
{
  if (qword_1002AC510 != -1)
  {
    swift_once();
  }

  v0 = sub_1001F6688();
  sub_100019C94(v0, qword_1002E6180);
  swift_errorRetain();
  oslog = sub_1001F6668();
  v1 = sub_1001F7298();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    swift_getErrorValue();
    v4 = sub_1001F7FE8();
    v6 = sub_1000E4544(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Could not create remote object proxy, error:%{public}s", v2, 0xCu);
    sub_100019CCC(v3);
  }

  else
  {
  }
}

void sub_1001308EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100130954()
{
  v1 = *(v0 + 56);
  if (v1)
  {

    [v1 invalidateBag];
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v2 = sub_1001F6688();
    sub_10009951C(v2, qword_1002E6180);
    v20 = sub_1001F6668();
    v3 = sub_1001F7298();
    if (sub_100133A70(v3, v4, v5, v6, v7, v8, v9, v10, v18, v20))
    {
      v11 = sub_10003A87C();
      sub_100133A8C(v11);
      sub_100133A34(&_mh_execute_header, v12, v13, "Unable to communicate with daemon to invalidate the bag", v14, v15, v16, v17, v19, v21);
      sub_100133A54();
    }
  }
}

void sub_100130A24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 56);
  if (v3)
  {
    sub_1000183C4(&qword_1002AC7E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1001FE9E0;
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = v3;
    swift_unknownObjectRetain_n();

    sub_1000FC6DC();

    swift_unknownObjectRelease();

    sub_10007E444();
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v8 = sub_1001F6688();
    sub_10009951C(v8, qword_1002E6180);
    loga = sub_1001F6668();
    v9 = sub_1001F7298();
    if (sub_100133A70(v9, v10, v11, v12, v13, v14, v15, v16, v26, loga))
    {
      v17 = sub_10003A87C();
      sub_100133A8C(v17);
      sub_100133A34(&_mh_execute_header, v18, v19, "Unable to communicate with daemon to signal queue refresh", v20, v21, v22, v23, v27, log);
      sub_100133A54();
    }

    sub_10007E444();
  }
}

uint64_t sub_100130BB8(void *a1, uint64_t a2)
{
  *(*a2 + 32) = *a1;
}

void sub_100130BFC(uint64_t a1, void *a2)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];

    v15 = sub_1001F6B48();
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v14;
    v18[4] = sub_100133A0C;
    v18[5] = v16;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_100130FA8;
    v18[3] = &unk_10028C878;
    v17 = _Block_copy(v18);

    [a2 refreshQueueForBundleId:v15 completion:v17];
    _Block_release(v17);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100130DB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v5 = sub_1001F6688();
    sub_100019C94(v5, qword_1002E6180);
    swift_errorRetain();

    v6 = sub_1001F6668();
    v7 = sub_1001F7298();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_1000E4544(a2, a3, &v12);
      *(v8 + 12) = 2082;
      swift_getErrorValue();
      v9 = sub_1001F7FE8();
      v11 = sub_1000E4544(v9, v10, &v12);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to refresh queue for %{public}s: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_100130FA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100131014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {

    v8 = sub_1001B8580(v7);
    sub_10007BA20(v8);
    v9 = *(v3 + 56);
    if (v9)
    {
      swift_unknownObjectRetain();
      isa = sub_1001F6F18().super.isa;

      v11 = sub_1001F6B48();
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = a2;
      v12[4] = a3;
      aBlock[4] = sub_100133974;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100130FA8;
      aBlock[3] = &unk_10028C800;
      v13 = _Block_copy(aBlock);

      [v9 revokeEntitlementsForProductIdentifiers:isa forBundleId:v11 completion:v13];
      _Block_release(v13);
      swift_unknownObjectRelease();
    }

    else
    {

      if (qword_1002AC510 != -1)
      {
        sub_10001B230();
      }

      v14 = sub_1001F6688();
      sub_10009951C(v14, qword_1002E6180);
      v32 = sub_1001F6668();
      v15 = sub_1001F7298();
      if (sub_100133A70(v15, v16, v17, v18, v19, v20, v21, v22, v30, v32))
      {
        v23 = sub_10003A87C();
        sub_100133A8C(v23);
        sub_100133A34(&_mh_execute_header, v24, v25, "Unable to communicate with daemon to revoke entitlements", v26, v27, v28, v29, v31, v33);
        sub_100133A54();
      }
    }
  }
}

void sub_100131220(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1002AC510 != -1)
    {
      swift_once();
    }

    v6 = sub_1001F6688();
    sub_100019C94(v6, qword_1002E6180);
    swift_errorRetain();

    v7 = sub_1001F6668();
    v8 = sub_1001F7298();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v9 = 136315650;
      v10 = sub_1001F6F48();
      v12 = sub_1000E4544(v10, v11, &v16);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_1000E4544(a3, a4, &v16);
      *(v9 + 22) = 2080;
      swift_getErrorValue();
      v13 = sub_1001F7FE8();
      v15 = sub_1000E4544(v13, v14, &v16);

      *(v9 + 24) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to revoke entitlements of %s for %{public}s: %s", v9, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10013146C()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    swift_unknownObjectRetain();
    v2 = sub_1000C1A68();
    sub_1000BFC14();
    v3 = sub_1001F6B48();

    sub_1000BFC24();
    loga = sub_1001F6B48();

    [v1 transactionDeleted:v2 productID:v3 forBundleID:loga];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v4 = sub_1001F6688();
    sub_10009951C(v4, qword_1002E6180);
    logb = sub_1001F6668();
    v5 = sub_1001F7298();
    if (sub_100133A70(v5, v6, v7, v8, v9, v10, v11, v12, v22, logb))
    {
      v13 = sub_10003A87C();
      sub_100133A8C(v13);
      sub_100133A34(&_mh_execute_header, v14, v15, "Unable to communicate with daemon to notify of deleted transaction", v16, v17, v18, v19, v23, log);
      sub_100133A54();
    }
  }

  sub_10007E444();
}

void sub_100131590()
{
  v1 = objc_opt_self();
  sub_1000BFF88();
  isa = sub_1001F6988().super.isa;

  v24 = 0;
  v3 = [v1 dataWithJSONObject:isa options:0 error:&v24];

  v4 = v24;
  if (v3)
  {
    v5 = sub_1001F63C8();
    v7 = v6;

    v8 = *(v0 + 56);
    if (v8)
    {
      swift_unknownObjectRetain();
      v9 = sub_1001F63A8().super.isa;
      sub_1000BFC24();
      v10 = sub_1001F6B48();

      [v8 transactionUpdated:v9 forBundleID:v10];
      sub_10003A380(v5, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1002AC510 != -1)
      {
        sub_10001B230();
      }

      v20 = sub_1001F6688();
      sub_10009951C(v20, qword_1002E6180);
      v21 = sub_1001F6668();
      v22 = sub_1001F7298();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_10003A87C();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Unable to communicate with daemon to notify of updated transaction", v23, 2u);
        sub_10003A72C();
      }

      sub_10003A380(v5, v7);
    }
  }

  else
  {
    v11 = v4;
    sub_1001F61B8();

    swift_willThrow();
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v12 = sub_1001F6688();
    sub_10009951C(v12, qword_1002E6180);
    swift_errorRetain();
    v13 = sub_1001F6668();
    v14 = sub_1001F7298();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = sub_1001F7FE8();
      v19 = sub_1000E4544(v17, v18, &v24);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error serializing transaction for updated transaction: %{public}s", v15, 0xCu);
      sub_100019CCC(v16);
      sub_10003A72C();
      sub_10003A72C();
    }

    else
    {
    }
  }
}

void sub_1001318E0(uint64_t a1)
{
  v3 = *(v1 + 56);
  if (v3)
  {

    [v3 updatePort:a1];
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v4 = sub_1001F6688();
    sub_10009951C(v4, qword_1002E6180);
    v22 = sub_1001F6668();
    v5 = sub_1001F7298();
    if (sub_100133A70(v5, v6, v7, v8, v9, v10, v11, v12, v20, v22))
    {
      v13 = sub_10003A87C();
      sub_100133A8C(v13);
      sub_100133A34(&_mh_execute_header, v14, v15, "Unable to communicate with daemon to update the port", v16, v17, v18, v19, v21, v23);
      sub_100133A54();
    }
  }
}

void sub_1001319B4(void *a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, void *a6)
{
  swift_beginAccess();

  v12 = sub_100131C0C(v11, a1);

  if (qword_1002AC510 != -1)
  {
    sub_10001B230();
  }

  v13 = sub_1001F6688();
  sub_10009951C(v13, qword_1002E6180);

  v14 = sub_1001F6668();
  v15 = sub_1001F7288();

  if (os_log_type_enabled(v14, v15))
  {
    v24 = a6;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v16 = 138412546;
    sub_100019C0C(0, qword_1002B23E0);
    if (a3)
    {
      v19 = 37;
    }

    else
    {
      v19 = 36;
    }

    v20.super.super.isa = sub_1001F73C8(v19).super.super.isa;
    *(v16 + 4) = v20;
    v17->super.super.isa = v20.super.super.isa;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1000E4544(a4, a5, &v25);
    _os_log_impl(&_mh_execute_header, v14, v15, "sending push %@ from %s", v16, 0x16u);
    sub_1001327E0(v17);
    sub_10003A72C();
    sub_100019CCC(v18);
    sub_10003A72C();
    a6 = v24;
    sub_10003A72C();
  }

  sub_100019C0C(0, qword_1002B23E0);
  if (a3)
  {
    v21 = 37;
  }

  else
  {
    v21 = 36;
  }

  isa = sub_1001F73C8(v21).super.super.isa;
  sub_10007BA20(v12);
  v23 = sub_1001F6F18().super.isa;

  [a6 simulateStoreKitPushWithAction:isa forBundleIdentifiers:v23];
}

char *sub_100131C0C(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100132848(a1);
    return a2;
  }

  else
  {

    return sub_100132EB4(a1, a2);
  }
}

void sub_100131C60(uint64_t a1, uint64_t a2, void (*a3)())
{

  swift_getAtKeyPath();

  v4 = *(v5 + 16);

  if (v4)
  {

    swift_getAtKeyPath();

    a3();
  }

  swift_setAtReferenceWritableKeyPath();

  sub_10007E444();
}

void sub_100131D3C(uint64_t a1)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      swift_unknownObjectRetain();
      sub_1001F78C8();
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v6];
        sub_1001F7878();
        sub_1001F7908();
        sub_1001F7918();
        sub_1001F7898();
        --v4;
      }

      while (v4);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    sub_100019C0C(0, qword_1002B23E0);
    isa = sub_1001F6F18().super.isa;

    oslog = sub_1001F6B48();
    [v2 removeTransactionIdentifiersFromCache:isa forBundleIdentifier:?];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v7 = sub_1001F6688();
    sub_10009951C(v7, qword_1002E6180);
    oslog = sub_1001F6668();
    v8 = sub_1001F7298();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = sub_10003A87C();
      sub_100133A8C(v9);
      _os_log_impl(&_mh_execute_header, oslog, v8, "Unable to communicate with daemon to notify of deleted transactions", v1, 2u);
      sub_100133A54();
    }
  }
}

void sub_100131F38(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(v3 + 56);
  if (v5)
  {
    swift_unknownObjectRetain();
    if (a3 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = sub_1001F63A8().super.isa;
    }

    sub_1001F6538();
    [v5 receiveEventOfType:a1 eventData:isa identifier:?];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v8 = sub_1001F6688();
    sub_10009951C(v8, qword_1002E6180);
    loga = sub_1001F6668();
    v9 = sub_1001F7298();
    if (sub_100133ABC(v9, v10, v11, v12, v13, v14, v15, v16, v20, loga))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = a1;
      _os_log_impl(&_mh_execute_header, log, v3, "Unable to communicate with daemon to notify of event %ld", v17, 0xCu);
      sub_10003A72C();
    }
  }

  sub_10007E444();
}

uint64_t sub_1001320E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 40);

  LOBYTE(a3) = sub_1000BFAC4(a2, a3, v8);

  *a4 = a3 & 1;
  return result;
}

void sub_100132174(uint64_t a1, void *a2, int a3, uint64_t a4, unint64_t a5)
{
  v6 = *(v5 + 56);
  if (v6)
  {
    v12 = qword_1002AC468;
    swift_unknownObjectRetain();
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_1002E60C8;
    v14 = *(*(qword_1002E60C8 + 48) + 16);

    os_unfair_lock_lock(v14);
    v15 = *(v13 + 40);
    os_unfair_lock_unlock(v14);

    v16 = sub_1000B4DDC(v15, a4, a5, a1, a2, a3 & 0xFFFFFF01);
    if (v16)
    {
      sub_1001DEFAC(v16);

      isa = sub_1001F6988().super.isa;

      log = sub_1001F6B48();
      [v6 showMessage:isa forBundleID:?];
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1002AC510 != -1)
      {
        sub_10001B230();
      }

      v34 = sub_1001F6688();
      sub_10009951C(v34, qword_1002E6180);
      logb = sub_1001F6668();
      v35 = sub_1001F7298();
      if (sub_100133ABC(v35, v36, v37, v38, v39, v40, v41, v42, v44, logb))
      {
        v43 = sub_10003A87C();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, log, v13, "Unable to parse message info to show message", v43, 2u);
        sub_10003A72C();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230();
    }

    v18 = sub_1001F6688();
    sub_10009951C(v18, qword_1002E6180);
    loga = sub_1001F6668();
    v19 = sub_1001F7298();
    if (sub_100133A70(v19, v20, v21, v22, v23, v24, v25, v26, v44, loga))
    {
      v27 = sub_10003A87C();
      sub_100133A8C(v27);
      sub_100133A34(&_mh_execute_header, v28, v29, "Unable to communicate with daemon to show message", v30, v31, v32, v33, v45, log);
      sub_100133A54();
    }
  }
}

uint64_t sub_100132440@<X0>(char a1@<W0>, Swift::Int a2@<X2>, Swift::Int a3@<X3>, BOOL *a4@<X8>)
{
  if (a1)
  {
    swift_beginAccess();

    v7 = sub_1001D1564(&v12, a2, a3);
    swift_endAccess();

    v9 = v7;
  }

  else
  {
    swift_beginAccess();
    sub_100132A5C(a2, a3);
    v11 = v10;
    result = swift_endAccess();
    if (v11)
    {
    }

    v9 = v11 != 0;
  }

  *a4 = v9;
  return result;
}

uint64_t sub_100132524()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10013256C()
{
  sub_100132524();

  return swift_deallocClassInstance();
}

void *sub_1001325C4()
{
  v11 = sub_1001F7308();
  v1 = *(v11 - 8);
  __chkstk_darwin(v11, v2);
  sub_100023510();
  v5 = v4 - v3;
  v6 = sub_1001F72E8();
  __chkstk_darwin(v6, v7);
  sub_100023510();
  v8 = sub_1001F6768();
  __chkstk_darwin(v8 - 8, v9);
  sub_100023510();
  v0[2] = &_swiftEmptySetSingleton;
  v0[3] = &_swiftEmptySetSingleton;
  v0[4] = &_swiftEmptySetSingleton;
  v0[5] = &_swiftEmptySetSingleton;
  sub_100019C0C(0, &qword_1002BA630);
  sub_1001F6758();
  sub_10013381C();
  sub_1000183C4(&unk_1002BA640);
  sub_100133874();
  sub_1001F7708();
  (*(v1 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  v0[6] = sub_1001F7348();
  v0[7] = sub_100130368();
  return v0;
}

uint64_t sub_1001327E0(uint64_t a1)
{
  v2 = sub_1000183C4(&unk_1002BA650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100132848(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100132A5C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void sub_100132974(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1001F8058();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      break;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001D38A8();
      }

      sub_100132B84(v7);
      *v2 = v9;
      break;
    }

    v5 = v7 + 1;
  }

  sub_10007E444();
}

uint64_t sub_100132A5C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1001F8068();
  sub_1001F6C28();
  v6 = sub_1001F80D8();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1001F7EA8() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001D353C();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_100132CFC(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_100132B84(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1001F7728();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1001F8058() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_15:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_100132CFC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1001F7728();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1001F8068();

        sub_1001F6C28();
        v10 = sub_1001F80D8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

char *sub_100132EB4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v48 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v50 = v12;
    v51 = v7;
    v52 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_1001F8068();

        sub_1001F6C28();
        v20 = sub_1001F80D8();
        v21 = ~(-1 << v5[32]);
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v22 = (*(v5 + 6) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_1001F7EA8() & 1) != 0)
          {
            v54 = v48;
            v55 = v16;
            v56 = v11;
            v3 = v51;
            v12 = v52;
            v53[0] = v52;
            v53[1] = v51;

            v26 = v5[32];
            v45 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v45;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v46 = &v44;
              __chkstk_darwin(v24, v25);
              v7 = &v44 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 56, v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = *(v5 + 2);
              v49 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v50;
              while (1)
              {
                v47 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                sub_1001F8068();

                sub_1001F6C28();
                v35 = sub_1001F80D8();
                v36 = ~(-1 << v5[32]);
                do
                {
                  v4 = v35 & v36;
                  v7 = (v35 & v36) >> 6;
                  v8 = 1 << (v35 & v36);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v51;
                    v12 = v52;
                    v30 = v50;
                    goto LABEL_24;
                  }

                  v37 = (*(v5 + 6) + 16 * v4);
                  if (*v37 == v2 && v37[1] == v34)
                  {
                    break;
                  }

                  v39 = sub_1001F7EA8();
                  v35 = v4 + 1;
                }

                while ((v39 & 1) == 0);

                v40 = v49[v7];
                v49[v7] = v40 & ~v8;
                v3 = v51;
                v12 = v52;
                v30 = v50;
                if ((v40 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v47 - 1;
                if (__OFSUB__(v47, 1))
                {
                  __break(1u);
                }

                if (v47 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_100133600(v49, v45, v47, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v42 = swift_slowAlloc();
            v43 = sub_100133578(v42, v45, v5 + 56, v45, v5, v7, v53);

            v48 = v54;
            v5 = v43;
            goto LABEL_44;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v51;
        v14 = v52;
        v12 = v50;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_10007E0F8();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}