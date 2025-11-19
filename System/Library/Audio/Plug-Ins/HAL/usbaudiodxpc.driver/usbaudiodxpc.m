uint64_t sub_F90()
{
  v1 = v0;
  v2 = sub_3C74();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_37C0(0, &qword_C378, OS_os_log_ptr);
  v4 = sub_3DB4();
  sub_3D34();
  sub_3C44();

  v5 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session;
  if (*&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session])
  {
    v6 = *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session];

    sub_3C94();
  }

  sub_3CA4();
  v7 = *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_dispatchQueue];
  *(swift_allocObject() + 16) = v1;
  v8 = v7;
  v9 = v1;
  sub_3C64();
  v10 = sub_3C54();
  v11 = *&v1[v5];
  *&v1[v5] = v10;

  sub_3C84();
}

uint64_t sub_123C(char *a1)
{
  v37 = sub_3CB4();
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  (__chkstk_darwin)();
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3CD4();
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  (__chkstk_darwin)();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_3CF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = (__chkstk_darwin)();
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_audioInterfaceServices;
  result = swift_beginAccess();
  v19 = *&a1[v17];
  if ((v19 & 0xC000000000000001) != 0)
  {

    v20 = sub_3E04();

    if (!v20)
    {
      return result;
    }
  }

  else if (!*(v19 + 16))
  {
    return result;
  }

  sub_37C0(0, &qword_C378, OS_os_log_ptr);
  v21 = sub_3DB4();
  sub_3D34();
  sub_3C44();

  v33 = *&a1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_dispatchQueue];
  sub_3CE4();
  v32 = v16;
  sub_3D04();
  v22 = *(v10 + 8);
  v35 = v10 + 8;
  v36 = v22;
  v34 = v9;
  v22(v14, v9);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  aBlock[4] = sub_2368;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_16BC;
  aBlock[3] = &unk_84B0;
  v24 = _Block_copy(aBlock);
  v25 = a1;
  sub_3CC4();
  v40 = &_swiftEmptyArrayStorage;
  sub_23EC(&qword_C390, &type metadata accessor for DispatchWorkItemFlags);
  v26 = v37;
  v27 = v39;
  v31 = v5;
  sub_22CC(&qword_C398, &qword_42B0);
  v28 = v38;
  sub_2434(&qword_C3A0, &qword_C398, &qword_42B0);
  sub_3DC4();
  v30 = v32;
  v29 = v33;
  sub_3D54();
  _Block_release(v24);

  (*(v27 + 8))(v4, v26);
  (*(v28 + 8))(v8, v31);
  v36(v30, v34);
}

uint64_t sub_16BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1700(uint64_t a1)
{
  v2 = v1;
  v43.receiver = v1;
  v43.super_class = type metadata accessor for AUAXPCPlugin();
  objc_msgSendSuper2(&v43, "halInitializeWithPluginHost:", a1);
  sub_37C0(0, &qword_C378, OS_os_log_ptr);
  v4 = sub_3DB4();
  sub_3D34();
  sub_3C44();

  v5 = objc_opt_self();
  sub_37C0(0, &qword_C3D8, NSNumber_ptr);
  isa = sub_3D84(1).super.super.isa;
  v7 = sub_3D84(1).super.super.isa;
  v8 = [v5 createMatchingDictionaryWithVendorID:0 productID:0 bcdDevice:0 interfaceNumber:0 configurationValue:0 interfaceClass:isa interfaceSubclass:v7 interfaceProtocol:0 speed:0 productIDArray:0];

  v9 = v5;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    aBlock = 0;
    sub_3D24();

    v10 = aBlock;
    if (aBlock)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = 0;
LABEL_6:
  v11 = [objc_allocWithZone(IOKNotificationPort) initOnDispatchQueue:*&v2[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_dispatchQueue]];
  v12 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_notificationPort;
  v13 = *&v2[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_notificationPort];
  *&v2[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_notificationPort] = v11;

  if (!v10)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = IOKMatchedNotification;

  v15.super.isa = sub_3D14().super.isa;

  v16 = *&v2[v12];
  if (!v16)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  v48 = sub_3808;
  v49 = v18;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_1C58;
  v47 = &unk_8500;
  v19 = _Block_copy(&aBlock);
  v20 = v2;
  v21 = v16;

  aBlock = 0;
  v22 = [v17 addNotificationOfType:v14 forMatching:v15.super.isa usingNotificationPort:v21 error:&aBlock withEnumerationBlock:v19];
  _Block_release(v19);

  v23 = aBlock;
  if (!v22)
  {
    v24 = v23;
    sub_3C34();

    swift_willThrow();
  }

  v25 = *&v20[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_matchedNotification];
  v42 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_matchedNotification;
  *&v20[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_matchedNotification] = v22;

  v26 = IOKTerminatedNotification;

  v27 = v26;
  v28.super.isa = sub_3D14().super.isa;

  v29 = *&v2[v12];
  if (!v29)
  {
    goto LABEL_18;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v20;
  v48 = sub_39C8;
  v49 = v30;
  aBlock = _NSConcreteStackBlock;
  v45 = 1107296256;
  v46 = sub_1C58;
  v47 = &unk_8550;
  v31 = _Block_copy(&aBlock);
  v32 = v20;
  v33 = v29;

  aBlock = 0;
  v34 = [v17 addNotificationOfType:v27 forMatching:v28.super.isa usingNotificationPort:v33 error:&aBlock withEnumerationBlock:v31];
  _Block_release(v31);

  v35 = aBlock;
  if (!v34)
  {
    v36 = v35;
    sub_3C34();

    swift_willThrow();

    v34 = 0;
  }

  v37 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_terminatedNotification;
  v38 = *&v32[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_terminatedNotification];
  *&v32[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_terminatedNotification] = v34;

  v39 = *&v20[v42];
  if (!v39)
  {
    goto LABEL_19;
  }

  [v39 primeNotification];
  v40 = *&v32[v37];
  if (!v40)
  {
    goto LABEL_20;
  }

  v41 = v40;

  [v41 primeNotification];
}

void sub_1C58(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_1D14()
{
  type metadata accessor for AUAXPCPlugin();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_C3F0 = result;
  return result;
}

id sub_1D48(void *a1)
{
  v18 = a1;
  v2 = sub_3D64();
  v16 = *(v2 - 8);
  v17 = v2;
  v3 = *(v16 + 64);
  __chkstk_darwin(v2);
  v15 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3D44();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v7 = sub_3CD4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session] = 0;
  *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_notificationPort] = 0;
  *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_matchedNotification] = 0;
  *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_terminatedNotification] = 0;
  *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_interestNotifification] = 0;
  if (&_swiftEmptyArrayStorage >> 62 && sub_3E94())
  {
    sub_34D0(&_swiftEmptyArrayStorage);
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_audioInterfaceServices] = v9;
  v14 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_dispatchQueue;
  sub_37C0(0, &qword_C3A8, OS_dispatch_queue_ptr);
  sub_3CC4();
  v20 = &_swiftEmptyArrayStorage;
  sub_23EC(&qword_C3B0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_22CC(&qword_C3B8, &qword_42B8);
  sub_2434(&qword_C3C0, &qword_C3B8, &qword_42B8);
  sub_3DC4();
  (*(v16 + 104))(v15, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v17);
  *&v1[v14] = sub_3D74();
  v10 = type metadata accessor for AUAXPCPlugin();
  v19.receiver = v1;
  v19.super_class = v10;
  v11 = v18;
  v12 = objc_msgSendSuper2(&v19, "initWithPlugin:", v18);

  if (v12)
  {
  }

  return v12;
}

id sub_20A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUAXPCPlugin();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id AUAXPCPluginFactory(void *a1, void *a2)
{
  v3 = qword_C3E8;
  v4 = a1;
  v5 = a2;
  if (v3 != -1)
  {
    swift_once();
  }

  result = [qword_C3F0 driverRef];
  if (result)
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id AUAXPCPluginFactory(inAllocator:inRequestedTypeUUID:)()
{
  if (qword_C3E8 != -1)
  {
    swift_once();
  }

  result = [qword_C3F0 driverRef];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_228C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_22CC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2314()
{
  result = qword_C388;
  if (!qword_C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C388);
  }

  return result;
}

uint64_t sub_238C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_23EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2434(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_23A4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2488(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_3E14();

    if (v9)
    {

      sub_37C0(0, &qword_C3D0, IOKService_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_3E04();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_26C0(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_28B0(v21 + 1);
    }

    v19 = v8;
    sub_2AD8(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_37C0(0, &qword_C3D0, IOKService_ptr);
  v11 = sub_3D94(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_2B5C(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_3DA4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_26C0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_22CC(&qword_C3C8, &qword_42C0);
    v2 = sub_3E64();
    v15 = v2;
    sub_3DF4();
    if (sub_3E24())
    {
      sub_37C0(0, &qword_C3D0, IOKService_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_28B0(v9 + 1);
        }

        v2 = v15;
        result = sub_3D94(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_3E24());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_28B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22CC(&qword_C3C8, &qword_42C0);
  result = sub_3E54();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_3D94(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_2AD8(uint64_t a1, uint64_t a2)
{
  sub_3D94(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_3DE4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2B5C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_28B0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_2CCC();
      goto LABEL_12;
    }

    sub_2E1C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_3D94(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_37C0(0, &qword_C3D0, IOKService_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_3DA4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_3EA4();
  __break(1u);
}

id sub_2CCC()
{
  v1 = v0;
  sub_22CC(&qword_C3C8, &qword_42C0);
  v2 = *v0;
  v3 = sub_3E44();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_2E1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_22CC(&qword_C3C8, &qword_42C0);
  result = sub_3E54();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_3D94(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_3030(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_3E34();

    if (v7)
    {
      v8 = sub_31C8();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_37C0(0, &qword_C3D0, IOKService_ptr);
  v11 = sub_3D94(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = sub_3DA4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2CCC();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  sub_3330(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t sub_31C8()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_3E04();
  v4 = swift_unknownObjectRetain();
  v5 = sub_26C0(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_3D94(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_37C0(0, &qword_C3D0, IOKService_ptr);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_3DA4();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_3330(v9);
  result = sub_3DA4();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_3330(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_3DD4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_3D94(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
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

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

void sub_34D0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_3E94())
    {
LABEL_3:
      sub_22CC(&qword_C3C8, &qword_42C0);
      v3 = sub_3E74();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_3E94();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_3E84();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_3D94(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_37C0(0, &qword_C3D0, IOKService_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_3DA4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_3D94(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_37C0(0, &qword_C3D0, IOKService_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_3DA4();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_37C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_3808(void *a1)
{
  v3 = *(v1 + 16);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    sub_22CC(&qword_C380, &qword_42A8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_4270;
    *(v6 + 56) = sub_37C0(0, &qword_C3D0, IOKService_ptr);
    *(v6 + 64) = sub_3BB0();
    *(v6 + 32) = v5;
    sub_37C0(0, &qword_C378, OS_os_log_ptr);
    v7 = a1;
    v8 = sub_3DB4();
    sub_3D34();
    sub_3C44();

    v9 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_audioInterfaceServices;
    swift_beginAccess();
    v10 = v7;
    sub_2488(&v16, v5);
    v11 = v16;
    swift_endAccess();

    v12 = *(v3 + v9);
    if ((v12 & 0xC000000000000001) != 0)
    {
      if (v12 < 0)
      {
        v13 = *(v3 + v9);
      }

      v14 = *(v3 + v9);

      v15 = sub_3E04();

      if (!v15)
      {
        goto LABEL_10;
      }
    }

    else if (!*(v12 + 16))
    {
LABEL_10:

      return;
    }

    if (!*(v3 + OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session))
    {
      sub_F90();
    }

    goto LABEL_10;
  }
}

void sub_39C8(void *a1)
{
  v3 = *(v1 + 16);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    sub_22CC(&qword_C380, &qword_42A8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_4270;
    *(v6 + 56) = sub_37C0(0, &qword_C3D0, IOKService_ptr);
    *(v6 + 64) = sub_3BB0();
    *(v6 + 32) = v5;
    sub_37C0(0, &qword_C378, OS_os_log_ptr);
    v7 = a1;
    v8 = sub_3DB4();
    sub_3D34();
    sub_3C44();

    v9 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_audioInterfaceServices;
    swift_beginAccess();
    v10 = sub_3030(v5);
    swift_endAccess();

    v11 = *(v3 + v9);
    if ((v11 & 0xC000000000000001) != 0)
    {
      if (v11 < 0)
      {
        v12 = *(v3 + v9);
      }

      v13 = *(v3 + v9);

      v14 = sub_3E04();

      if (v14)
      {
        goto LABEL_6;
      }
    }

    else if (*(v11 + 16))
    {
LABEL_6:

      return;
    }

    v15 = OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session;
    if (*(v3 + OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session))
    {
      v16 = *(v3 + OBJC_IVAR____TtC12usbaudiodxpc12AUAXPCPlugin_session);

      sub_3C94();
    }

    v17 = *(v3 + v15);
    *(v3 + v15) = 0;
  }
}

unint64_t sub_3BB0()
{
  result = qword_C3E0;
  if (!qword_C3E0)
  {
    sub_37C0(255, &qword_C3D0, IOKService_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3E0);
  }

  return result;
}