Swift::Int sub_1794()
{
  v1 = *v0;
  sub_6364();
  sub_6374(v1);
  return sub_6384();
}

Swift::Int sub_1808()
{
  v1 = *v0;
  sub_6364();
  sub_6374(v1);
  return sub_6384();
}

id sub_184C()
{
  result = [objc_allocWithZone(type metadata accessor for NameRecognitionPluginService()) init];
  qword_C940 = result;
  return result;
}

id static NameRecognitionPluginService.sharedInstance()()
{
  if (qword_C790 != -1)
  {
    swift_once();
  }

  v0 = swift_dynamicCastClassUnconditional();

  return v0;
}

id sub_196C()
{
  v1 = v0;
  v2 = sub_5784(&qword_C670, &qword_6B20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - v5;
  v1[OBJC_IVAR___AXNameRecognitionPluginService_serviceState] = 0;
  v1[OBJC_IVAR___AXNameRecognitionPluginService_isNameRecognitionEnabled] = 2;
  v7 = OBJC_IVAR___AXNameRecognitionPluginService__isStoreReady;
  LOBYTE(aBlock[0]) = 0;
  sub_61C4();
  (*(v3 + 32))(&v1[v7], v6, v2);
  sub_5FF4();
  *&v1[OBJC_IVAR___AXNameRecognitionPluginService_triggerController] = sub_5FE4();
  sub_6154();
  *&v1[OBJC_IVAR___AXNameRecognitionPluginService_store] = sub_6144();
  v8 = type metadata accessor for NameRecognitionPluginService();
  v17.receiver = v1;
  v17.super_class = v8;
  v9 = objc_msgSendSuper2(&v17, "init");
  sub_24A8();
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  v11 = AXkMobileKeyBagLockStatusNotificationID();
  CFNotificationCenterAddObserver(v10, v9, sub_27B8, v11, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v12 = [objc_opt_self() sharedInstance];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_5894;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C18;
  aBlock[3] = &unk_8818;
  v14 = _Block_copy(aBlock);

  [v12 registerUpdateBlock:v14 forRetrieveSelector:"isNameRecognitionEnabled" withListener:v9];

  _Block_release(v14);
  return v9;
}

uint64_t sub_1C18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id NameRecognitionPluginService.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_61A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6184();
  v7 = sub_6194();
  v8 = sub_62B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "Deinitializing NameRecognitionPluginService", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v10, v1);

  v11 = type metadata accessor for NameRecognitionPluginService();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, "dealloc");
}

uint64_t type metadata accessor for NameRecognitionPluginService()
{
  result = qword_C828;
  if (!qword_C828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1F20(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5784(&qword_C720, &qword_6B98);
    v2 = sub_6334();
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
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    sub_5B78(v17, v18);
    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_5EA4(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_5EA4(v33, v34);
    result = sub_62C4(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
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
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_5EA4(v34, (v2[7] + 32 * v10));
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

void sub_2380()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___AXNameRecognitionPluginService_store);

  v3 = sub_60D4();

  if (v3)
  {
    v4 = OBJC_IVAR___AXNameRecognitionPluginService_isNameRecognitionEnabled;
    v5 = *(v1 + OBJC_IVAR___AXNameRecognitionPluginService_isNameRecognitionEnabled);
    v6 = objc_opt_self();
    v7 = [v6 sharedInstance];
    v8 = [v7 isNameRecognitionEnabled];

    if (v5 == 2 || ((v8 ^ v5) & 1) != 0)
    {
      v9 = [v6 sharedInstance];
      v10 = [v9 isNameRecognitionEnabled];

      *(v1 + v4) = v10;
      v11 = [v6 sharedInstance];
      LODWORD(v9) = [v11 isNameRecognitionEnabled];

      v12 = *(v1 + OBJC_IVAR___AXNameRecognitionPluginService_triggerController);
      if (v9)
      {
        sub_5FB4();
      }

      else
      {
        sub_5FA4();
      }
    }
  }
}

uint64_t sub_24A8()
{
  v1 = sub_5784(&qword_C658, &qword_6B10);
  v15 = *(v1 - 8);
  v2 = v15;
  v3 = *(v15 + 64);
  v4 = (__chkstk_darwin)();
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_5784(&qword_C660, &qword_6B18);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = *(v0 + OBJC_IVAR___AXNameRecognitionPluginService_store);

  sub_60E4();

  sub_5814(&qword_C668, &qword_C658, &qword_6B10);
  sub_6204();
  v16 = *(v2 + 8);
  v16(v7, v1);
  swift_beginAccess();
  sub_5784(&qword_C670, &qword_6B20);
  sub_61D4();
  swift_endAccess();
  sub_5814(&qword_C678, &qword_C660, &qword_6B18);
  sub_6214();
  (*(v9 + 8))(v12, v8);
  (*(v15 + 16))(v17, v7, v1);
  swift_beginAccess();
  sub_61E4();
  swift_endAccess();
  return (v16)(v7, v1);
}

void sub_27C0()
{
  v2 = sub_61A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6054();
  if (!v1)
  {
    v8 = v7;
    v9 = *(v0 + OBJC_IVAR___AXNameRecognitionPluginService_triggerController);
    sub_5FB4();
    v10 = [v8 frameCapacity];
    v11 = [v8 format];
    [v11 sampleRate];
    v13 = v12;

    v14 = v10 / v13;
    v20.super._impl = mach_absolute_time();
    v20.super.super.isa = v8;
    sub_5FD4(v20, v15);
    sub_6184();
    v16 = sub_6194();
    v17 = sub_62B4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v14;
      _os_log_impl(&dword_0, v16, v17, "Audio length is %f seconds, will sleep for that duration", v18, 0xCu);
    }

    (*(v3 + 8))(v6, v2);
    [objc_opt_self() sleepForTimeInterval:v14];
    sub_5FA4();
  }
}

uint64_t sub_29E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NameRecognitionPluginService();
  result = sub_61B4();
  *a1 = result;
  return result;
}

uint64_t sub_2A24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2AF0(v11, 0, 0, 1, a1, a2);
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
    sub_5C20(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_5E54(v11);
  return v7;
}

unint64_t sub_2AF0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2BFC(a5, a6);
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
    result = sub_6324();
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

char *sub_2BFC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2C48(a1, a2);
  sub_2D78(&off_8738);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_2C48(uint64_t a1, unint64_t a2)
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

  v6 = sub_2E64(v5, 0);
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

  result = sub_6324();
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
        v10 = sub_6274();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2E64(v10, 0);
        result = sub_6304();
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

uint64_t sub_2D78(uint64_t result)
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

  result = sub_2ED8(result, v12, 1, v3);
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

void *sub_2E64(uint64_t a1, uint64_t a2)
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

  sub_5784(&qword_C718, &qword_6B90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2ED8(char *result, int64_t a2, char a3, char *a4)
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
    sub_5784(&qword_C718, &qword_6B90);
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

unint64_t sub_2FCC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_62C4(*(v2 + 40));

  return sub_3088(a1, v4);
}

unint64_t sub_3010(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_6364();
  sub_6254();
  v6 = sub_6384();

  return sub_3150(a1, a2, v6);
}

unint64_t sub_3088(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_5A58(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_62D4();
      sub_5AB4(v8);
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

unint64_t sub_3150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_6354())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_3208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5784(&qword_C720, &qword_6B98);
    v3 = sub_6334();
    v4 = a1 + 32;

    while (1)
    {
      sub_5EB4(v4, v13, &qword_C6C0, &qword_6B60);
      result = sub_2FCC(v13);
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
      result = sub_5EA4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_3344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5784(&qword_C728, &qword_6BA0);
    v3 = sub_6334();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_5B78(v7, v8);
      result = sub_3010(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_345C(char *a1, uint64_t a2)
{
  v166 = a1;
  v3 = sub_5784(&qword_C690, &qword_6B38);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v174 = &v161 - v5;
  v176 = sub_6034();
  v180 = *(v176 - 8);
  v6 = *(v180 + 64);
  v7 = __chkstk_darwin(v176);
  v9 = &v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v165 = &v161 - v10;
  v11 = sub_6174();
  v162 = *(v11 - 8);
  v163 = v11;
  v12 = *(v162 + 64);
  __chkstk_darwin(v11);
  v164 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_61A4();
  v171 = *(v14 - 8);
  v172 = v14;
  v15 = *(v171 + 64);
  __chkstk_darwin(v14);
  v182 = &v161 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6024();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v20 = __chkstk_darwin(v17);
  v173 = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v167 = &v161 - v23;
  v24 = __chkstk_darwin(v22);
  v179 = &v161 - v25;
  __chkstk_darwin(v24);
  v183 = &v161 - v26;
  v27 = sub_5784(&qword_C698, &qword_6B40);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v178 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v161 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v161 - v35;
  __chkstk_darwin(v34);
  v37 = v18 + 56;
  v38 = *(v18 + 7);
  v189 = &v161 - v39;
  v40 = v38();
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_77;
  }

  v168 = v9;
  sub_6004();
  v177 = *(v18 + 6);
  v41 = (v177)(v36, 1, v17);
  v181 = v18;
  v170 = a2;
  if (v41 == 1)
  {
    sub_5CF8(v36, &qword_C698, &qword_6B40);
    sub_6014();
    v42 = v189;
    sub_5CF8(v189, &qword_C698, &qword_6B40);
    sub_5B08(v33, v42);
  }

  else
  {
    v43 = v189;
    sub_5CF8(v189, &qword_C698, &qword_6B40);
    (*(v18 + 4))(v43, v36, v17);
    (v38)(v43, 0, 1, v17);
  }

  v33 = v17;
  v44 = v178;
  sub_5EB4(v189, v178, &qword_C698, &qword_6B40);
  v45 = (v177)(v44, 1, v17);
  v46 = v182;
  v47 = v179;
  if (v45 == 1)
  {
    sub_5CF8(v44, &qword_C698, &qword_6B40);
    sub_5E0C(&qword_C6A0, &type metadata accessor for NameRecognitionError);
    v9 = v176;
    v48 = swift_allocError();
    v50 = v49;
    v51 = (v49 + *(sub_5784(&qword_C6A8, &qword_6B48) + 48));
    v52 = enum case for RuntimeError.ipc(_:);
    v53 = sub_60C4();
    (*(*(v53 - 8) + 104))(v50, v52, v53);
    v186[0]._countAndFlagsBits = 0;
    v186[0]._object = 0xE000000000000000;
    sub_6314(74);
    v190._countAndFlagsBits = 0xD000000000000048;
    v190._object = 0x80000000000074B0;
    sub_6264(v190);
    *&v187 = v170;
    v191._countAndFlagsBits = sub_6344();
    sub_6264(v191);

    object = v186[0]._object;
    *v51 = v186[0]._countAndFlagsBits;
    v51[1] = object;
    v17 = v180;
    (*(v180 + 104))(v50, enum case for NameRecognitionError.runtime(_:), v9);
    swift_willThrow();
    goto LABEL_7;
  }

  v62 = v181;
  v63 = v183;
  v181[4](v183, v44, v33);
  sub_6184();
  v177 = v62[2];
  v177(v47, v63, v33);
  v64 = sub_6194();
  v65 = sub_62B4();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v178 = v33;
    v67 = v66;
    v68 = swift_slowAlloc();
    v186[0]._countAndFlagsBits = v68;
    *v67 = 136315138;
    v177(v167, v47, v178);
    v69 = sub_6244();
    v71 = v70;
    v179 = v181[1];
    (v179)(v47, v178);
    v72 = sub_2A24(v69, v71, &v186[0]._countAndFlagsBits);
    v62 = v181;

    *(v67 + 4) = v72;
    _os_log_impl(&dword_0, v64, v65, "Successfully recieved messageID: %s", v67, 0xCu);
    sub_5E54(v68);

    v33 = v178;

    (*(v171 + 8))(v182, v172);
  }

  else
  {

    v179 = v62[1];
    (v179)(v47, v33);
    (*(v171 + 8))(v46, v172);
  }

  v77 = v175;
  v36 = v173;
  v177(v173, v183, v33);
  v40 = (v62[11])(v36, v33);
  v17 = v180;
  if (v40 == enum case for NameRecognitionServiceMessageID.startup(_:))
  {
    v78 = OBJC_IVAR___AXNameRecognitionPluginService_serviceState;
    v79 = v169;
    if (*(v169 + OBJC_IVAR___AXNameRecognitionPluginService_serviceState) == 1)
    {
      v90 = sub_3208(&_swiftEmptyArrayStorage);
      (v179)(v183, v33);
      goto LABEL_32;
    }

    sub_2380();
    (v179)(v183, v33);
    *(v79 + v78) = 1;
LABEL_31:
    v90 = sub_3208(&_swiftEmptyArrayStorage);
    goto LABEL_32;
  }

  if (v40 != enum case for NameRecognitionServiceMessageID.prebuildRecognizer(_:))
  {
    v9 = v176;
    if (v40 == enum case for NameRecognitionServiceMessageID.shutdown(_:))
    {
      v81 = OBJC_IVAR___AXNameRecognitionPluginService_serviceState;
      v82 = v169;
      if (*(v169 + OBJC_IVAR___AXNameRecognitionPluginService_serviceState) != 2)
      {
        v98 = [objc_opt_self() sharedInstance];
        v99 = [v98 isNameRecognitionEnabled];

        if (v99)
        {
          sub_62A4();
          v100 = sub_6294();
          [v100 setNameRecognitionEnabled:0];
        }

        (v179)(v183, v33);
        *(v82 + v81) = 2;
        goto LABEL_31;
      }

      v90 = sub_3208(&_swiftEmptyArrayStorage);
      v83 = v183;
      v84 = v33;
LABEL_46:
      (v179)(v83, v84);
      goto LABEL_32;
    }

    if (v40 == enum case for NameRecognitionServiceMessageID.fetchEnrolledNames(_:))
    {
      v91 = *(v169 + OBJC_IVAR___AXNameRecognitionPluginService_store);

      v92 = sub_6114();

      v93 = sub_5F74();
      v94 = *(v93 + 48);
      v95 = *(v93 + 52);
      swift_allocObject();
      sub_5F64();
      v186[0]._countAndFlagsBits = v92;
      sub_5784(&qword_C700, &qword_6B88);
      sub_5D58();
      v96 = sub_5F54();
      v48 = v77;
      if (!v77)
      {
        v110 = v96;
        v111 = v97;

        sub_5784(&qword_C6E8, &qword_6B78);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_69E0;
        *(inited + 32) = sub_6084();
        *(inited + 40) = v113;
        *(inited + 48) = v110;
        *(inited + 56) = v111;
        sub_5B78(v110, v111);
        v114 = sub_3344(inited);
        swift_setDeallocating();
        sub_5CF8(inited + 32, &qword_C6F0, &qword_6B80);
        v90 = sub_1F20(v114);

        sub_5BCC(v110, v111);
        v83 = v183;
        v84 = v33;
        goto LABEL_46;
      }

      (v179)(v183, v33);

LABEL_26:

      goto LABEL_7;
    }

    v18 = &v187;
    if (v40 == enum case for NameRecognitionServiceMessageID.deleteName(_:))
    {
      v102 = v166;
      if (!v166)
      {
LABEL_85:
        *v18 = 0u;
        v18[1] = 0u;
        goto LABEL_86;
      }

      v184 = sub_6064();
      v185 = v103;
      sub_62E4();
      if (*(v102 + 2))
      {
        v104 = sub_2FCC(v186);
        if (v105)
        {
          sub_5C20(*(v102 + 7) + 32 * v104, &v187);
          sub_5AB4(v186);
          if (*(&v188 + 1))
          {
            if (swift_dynamicCast())
            {
              countAndFlagsBits = v186[0]._countAndFlagsBits;
              v107 = v186[0]._object;
              v108 = *(v169 + OBJC_IVAR___AXNameRecognitionPluginService_store);

              v192._countAndFlagsBits = countAndFlagsBits;
              v192._object = v107;
              sub_6104(v192);
              if (v77)
              {
                (v179)(v183, v33);

LABEL_44:

                v48 = v77;
                goto LABEL_7;
              }

              (v179)(v183, v33);

              goto LABEL_59;
            }

            goto LABEL_87;
          }

          goto LABEL_86;
        }
      }

LABEL_84:
      sub_5AB4(v186);
      goto LABEL_85;
    }

    v37 = v166;
    if (v40 == enum case for NameRecognitionServiceMessageID.deleteAll(_:))
    {
      v109 = *(v169 + OBJC_IVAR___AXNameRecognitionPluginService_store);

      sub_6124();
      if (v77)
      {
        (v179)(v183, v33);
        goto LABEL_44;
      }

      (v179)(v183, v33);
LABEL_59:

      goto LABEL_31;
    }

    if (v40 == enum case for NameRecognitionServiceMessageID.addNameConfig(_:))
    {
      if (v166)
      {
        v184 = sub_6074();
        v185 = v115;
        sub_62E4();
        if (*(v37 + 2))
        {
          v116 = sub_2FCC(v186);
          if (v117)
          {
            sub_5C20(*(v37 + 7) + 32 * v116, &v187);
            sub_5AB4(v186);
            if (*(&v188 + 1))
            {
              if (swift_dynamicCast())
              {
                v118 = v186[0]._countAndFlagsBits;
                v119 = v186[0]._object;
                v120 = sub_5F44();
                v121 = *(v120 + 48);
                v122 = *(v120 + 52);
                swift_allocObject();
                v48 = v77;
                sub_5F34();
                sub_5E0C(&qword_C6F8, &type metadata accessor for NRNameConfiguration);
                sub_5F24();
                if (!v77)
                {
                  v154 = *(v169 + OBJC_IVAR___AXNameRecognitionPluginService_store);

                  sub_6134();

                  sub_5BCC(v118, v119);
                  (*(v162 + 8))(v164, v163);
                  (v179)(v183, v33);
                  goto LABEL_31;
                }

                (v179)(v183, v33);

                sub_5BCC(v118, v119);
                goto LABEL_7;
              }

              goto LABEL_66;
            }

LABEL_65:
            sub_5CF8(&v187, &qword_C6D0, &qword_6B68);
LABEL_66:
            v125 = sub_5784(&qword_C6A8, &qword_6B48);
            v126 = v165;
            v127 = &v165[*(v125 + 48)];
            v128 = enum case for RuntimeError.ipc(_:);
            v129 = sub_60C4();
            (*(*(v129 - 8) + 104))(v126, v128, v129);
            *v127 = 0xD00000000000001FLL;
            *(v127 + 1) = 0x8000000000007550;
            (*(v17 + 104))(v126, enum case for NameRecognitionError.runtime(_:), v9);
            sub_5E0C(&qword_C6A0, &type metadata accessor for NameRecognitionError);
            v48 = swift_allocError();
            (*(v17 + 16))(v130, v126, v9);
            swift_willThrow();
            (*(v17 + 8))(v126, v9);
LABEL_89:
            (v179)(v183, v33);
            goto LABEL_7;
          }
        }

        sub_5AB4(v186);
      }

      v187 = 0u;
      v188 = 0u;
      goto LABEL_65;
    }

    if (v40 == enum case for NameRecognitionServiceMessageID.openTapToRadar(_:))
    {
      v123 = *(v169 + OBJC_IVAR___AXNameRecognitionPluginService_store);

      sub_60F4();
      v48 = v77;
      if (!v77)
      {

        sub_6044();

        sub_6164();
        (v179)(v183, v33);

        goto LABEL_31;
      }

      (v179)(v183, v33);

      goto LABEL_7;
    }

    if (v40 == enum case for NameRecognitionServiceMessageID.storeAudio(_:))
    {
      v124 = *(v169 + OBJC_IVAR___AXNameRecognitionPluginService_store);

      sub_60F4();
      v48 = v77;
      if (!v77)
      {

        v150 = sub_6044();
        v178 = v33;

        v151 = sub_5F74();
        v152 = *(v151 + 48);
        v153 = *(v151 + 52);
        swift_allocObject();
        sub_5F64();
        v186[0]._countAndFlagsBits = v150;
        sub_5784(&qword_C6D8, &qword_6B70);
        sub_5C7C();
        v155 = sub_5F54();
        v157 = v156;

        sub_5784(&qword_C6E8, &qword_6B78);
        v158 = swift_initStackObject();
        *(v158 + 16) = xmmword_69E0;
        *(v158 + 32) = sub_60B4();
        *(v158 + 40) = v159;
        *(v158 + 48) = v155;
        *(v158 + 56) = v157;
        sub_5B78(v155, v157);
        v160 = sub_3344(v158);
        swift_setDeallocating();
        sub_5CF8(v158 + 32, &qword_C6F0, &qword_6B80);
        v90 = sub_1F20(v160);

        sub_5BCC(v155, v157);
        (v179)(v183, v178);
        goto LABEL_32;
      }

      (v179)(v183, v33);
      goto LABEL_26;
    }

    if (v40 == enum case for NameRecognitionServiceMessageID.listen(_:))
    {
      if (v166)
      {
        v184 = sub_60A4();
        v185 = v131;
        sub_62E4();
        if (*(v37 + 2))
        {
          v132 = sub_2FCC(v186);
          if (v133)
          {
            sub_5C20(*(v37 + 7) + 32 * v132, &v187);
            sub_5AB4(v186);
            if (*(&v188 + 1))
            {
              if (swift_dynamicCast())
              {
                v134 = v175;
                sub_27C0();
                v48 = v134;
                if (!v134)
                {
                  (v179)(v183, v33);

                  goto LABEL_31;
                }

                (v179)(v183, v33);

                v9 = v176;
                v17 = v180;
                goto LABEL_7;
              }

              v9 = v176;
              v17 = v180;
              goto LABEL_96;
            }

LABEL_95:
            sub_5CF8(&v187, &qword_C6D0, &qword_6B68);
LABEL_96:
            sub_5E0C(&qword_C6A0, &type metadata accessor for NameRecognitionError);
            v48 = swift_allocError();
            v140 = v147;
            v141 = (v147 + *(sub_5784(&qword_C6A8, &qword_6B48) + 48));
            v148 = enum case for RuntimeError.ipc(_:);
            v149 = sub_60C4();
            (*(*(v149 - 8) + 104))(v140, v148, v149);
            v144 = 0x8000000000007500;
            v145 = 0xD000000000000011;
            goto LABEL_88;
          }
        }

        sub_5AB4(v186);
      }

      v187 = 0u;
      v188 = 0u;
      goto LABEL_95;
    }

LABEL_77:
    if (v40 != enum case for NameRecognitionServiceMessageID.sendNotification(_:))
    {
      v146 = v179;
      (v179)(v183, v33);
      v146(v36, v33);
      goto LABEL_31;
    }

    if (!v37)
    {
      goto LABEL_85;
    }

    v184 = sub_6064();
    v185 = v135;
    sub_62E4();
    if (*(v37 + 2))
    {
      v136 = sub_2FCC(v186);
      if (v137)
      {
        sub_5C20(*(v37 + 7) + 32 * v136, &v187);
        sub_5AB4(v186);
        if (*(&v188 + 1))
        {
          if (swift_dynamicCast())
          {
            v138 = *(v169 + OBJC_IVAR___AXNameRecognitionPluginService_triggerController);
            sub_5FC4(v186[0]);

            (v179)(v183, v33);
            goto LABEL_31;
          }

          v9 = v176;
          v17 = v180;
          goto LABEL_87;
        }

LABEL_86:
        sub_5CF8(&v187, &qword_C6D0, &qword_6B68);
LABEL_87:
        sub_5E0C(&qword_C6A0, &type metadata accessor for NameRecognitionError);
        v48 = swift_allocError();
        v140 = v139;
        v141 = (v139 + *(sub_5784(&qword_C6A8, &qword_6B48) + 48));
        v142 = enum case for RuntimeError.ipc(_:);
        v143 = sub_60C4();
        (*(*(v143 - 8) + 104))(v140, v142, v143);
        v144 = 0x8000000000007520;
        v145 = 0xD000000000000021;
LABEL_88:
        *v141 = v145;
        v141[1] = v144;
        (*(v17 + 104))(v140, enum case for NameRecognitionError.runtime(_:), v9);
        swift_willThrow();
        goto LABEL_89;
      }
    }

    goto LABEL_84;
  }

  v80 = *(v169 + OBJC_IVAR___AXNameRecognitionPluginService_triggerController);
  sub_5F94();
  v9 = v176;
  if (!v77)
  {
    (v179)(v183, v33);
    goto LABEL_31;
  }

  (v179)(v183, v33);
  v48 = v77;
LABEL_7:
  v186[0]._countAndFlagsBits = v48;
  swift_errorRetain();
  sub_5784(&qword_C6B0, &qword_6B50);
  v55 = v174;
  v56 = swift_dynamicCast();
  v57 = *(v17 + 56);
  if (v56)
  {
    v57(v55, 0, 1, v9);
    v58 = v168;
    (*(v17 + 32))(v168, v55, v9);
    v59 = sub_5F74();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    sub_5F64();
    sub_5E0C(&qword_C6C8, &type metadata accessor for NameRecognitionError);
    v85 = sub_5F54();
    v175 = 0;
    v87 = v86;
    sub_5784(&qword_C6B8, &qword_6B58);
    v88 = swift_initStackObject();
    *(v88 + 16) = xmmword_69E0;
    v186[0]._countAndFlagsBits = sub_6094();
    v186[0]._object = v89;
    sub_62E4();
    *(v88 + 96) = &type metadata for Data;
    *(v88 + 72) = v85;
    *(v88 + 80) = v87;
    sub_5B78(v85, v87);
    v90 = sub_3208(v88);
    swift_setDeallocating();
    sub_5CF8(v88 + 32, &qword_C6C0, &qword_6B60);

    sub_5BCC(v85, v87);

    (*(v17 + 8))(v58, v176);
  }

  else
  {
    v57(v55, 1, 1, v9);
    sub_5CF8(v55, &qword_C690, &qword_6B38);
    sub_5784(&qword_C6B8, &qword_6B58);
    v73 = swift_initStackObject();
    *(v73 + 16) = xmmword_69E0;
    v186[0]._countAndFlagsBits = sub_6094();
    v186[0]._object = v74;
    sub_62E4();
    v186[0]._countAndFlagsBits = v48;
    swift_errorRetain();
    v75 = sub_6244();
    *(v73 + 96) = &type metadata for String;
    *(v73 + 72) = v75;
    *(v73 + 80) = v76;
    v90 = sub_3208(v73);
    swift_setDeallocating();
    sub_5CF8(v73 + 32, &qword_C6C0, &qword_6B60);
  }

LABEL_32:
  sub_5CF8(v189, &qword_C698, &qword_6B40);
  return v90;
}

Swift::Int sub_51C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5784(&qword_C688, &qword_6B30);
    v3 = sub_62F4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_5A58(v6 + 40 * v4, v19);
      result = sub_62C4(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_5A58(*(v3 + 48) + 40 * i, v18);
        v11 = sub_62D4();
        result = sub_5AB4(v18);
        if (v11)
        {
          sub_5AB4(v19);
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

Swift::Int _s30AXNameRecognitionPluginService04NamebcD0C48possibleRequiredEntitlementsForProcessingMessage14withIdentifierShys11AnyHashableVGSgSi_tFZ_0()
{
  sub_5784(&qword_C680, &qword_6B28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_69F0;
  sub_62E4();
  sub_62E4();
  sub_62E4();
  sub_62E4();
  sub_62E4();
  v1 = sub_51C4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

void sub_54B0()
{
  sub_5568();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_5568()
{
  if (!qword_C648)
  {
    v0 = sub_61F4();
    if (!v1)
    {
      atomic_store(v0, &qword_C648);
    }
  }
}

uint64_t getEnumTagSinglePayload for NameRecognitionPluginService.ServiceState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NameRecognitionPluginService.ServiceState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_5730()
{
  result = qword_C650;
  if (!qword_C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C650);
  }

  return result;
}

uint64_t sub_5784(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_57CC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_5814(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_57CC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_585C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_5894()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_2380();
  }
}

uint64_t sub_58E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_58FC(void *a1)
{
  if (AXDeviceIsUnlocked() && a1 && (byte_C798 & 1) == 0)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = a1;
    v3 = a1;
    v6[4] = sub_5A34;
    v6[5] = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1C18;
    v6[3] = &unk_8868;
    v4 = _Block_copy(v6);
    v5 = v3;

    AXPerformBlockOnMainThread();
    _Block_release(v4);
    byte_C798 = AXDeviceIsUnlocked();
  }
}

uint64_t sub_59FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_5784(&qword_C698, &qword_6B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5B78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_5BCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_5C20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_5C7C()
{
  result = qword_C6E0;
  if (!qword_C6E0)
  {
    sub_57CC(&qword_C6D8, &qword_6B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C6E0);
  }

  return result;
}

uint64_t sub_5CF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5784(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_5D58()
{
  result = qword_C708;
  if (!qword_C708)
  {
    sub_57CC(&qword_C700, &qword_6B88);
    sub_5E0C(&qword_C710, &type metadata accessor for NREnrolledName);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C708);
  }

  return result;
}

uint64_t sub_5E0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5E54(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_OWORD *sub_5EA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_5EB4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5784(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}