uint64_t sub_FF0()
{
  v0 = sub_7518();
  sub_7478(v0, qword_10B68);
  sub_10DC(v0, qword_10B68);
  return sub_7508();
}

uint64_t sub_1078()
{
  if (qword_10B60 != -1)
  {
    swift_once();
  }

  v0 = sub_7518();

  return sub_10DC(v0, qword_10B68);
}

uint64_t sub_10DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1114@<X0>(uint64_t a1@<X8>)
{
  if (qword_10B60 != -1)
  {
    swift_once();
  }

  v2 = sub_7518();
  v3 = sub_10DC(v2, qword_10B68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

BOOL sub_11C4()
{
  v1 = v0;
  v2 = sub_7568();
  HasEntitlement = IOHIDEventSystemConnectionHasEntitlement();

  return HasEntitlement != 0;
}

uint64_t variable initialization expression of HIDSensorControlFilter.queue()
{
  v0 = sub_7618();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_7608() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_7538() - 8) + 64);
  __chkstk_darwin();
  sub_73D4(0, &qword_107B0, OS_dispatch_queue_ptr);
  sub_7528();
  v8[1] = &_swiftEmptyArrayStorage;
  sub_144C();
  sub_14A4(&qword_107C0, &qword_7F50);
  sub_14EC();
  sub_7668();
  (*(v1 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  return sub_7628();
}

unint64_t sub_144C()
{
  result = qword_107B8;
  if (!qword_107B8)
  {
    sub_7608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107B8);
  }

  return result;
}

uint64_t sub_14A4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_14EC()
{
  result = qword_107C8;
  if (!qword_107C8)
  {
    sub_1550(&qword_107C0, &qword_7F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107C8);
  }

  return result;
}

uint64_t sub_1550(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1598()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_15D4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_160C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t sub_16B0()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
}

uint64_t sub_16E8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_1788()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_17F4(int a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_1888()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_18BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_68A8(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t sub_193C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_68A8(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t sub_1980(void *a1, int a2)
{
  v3 = v2;
  if (qword_10B60 != -1)
  {
    swift_once();
  }

  v6 = sub_7518();
  sub_10DC(v6, qword_10B68);

  v7 = a1;
  v8 = sub_74F8();
  v9 = sub_75F8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v10 = 136315906;
    *(v10 + 4) = sub_4644(*(v3 + 80), *(v3 + 88), v25);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_4644(*(v3 + 16), *(v3 + 24), v25);
    *(v10 + 22) = 1024;
    *(v10 + 24) = a2;
    *(v10 + 28) = 2080;
    v11 = [v7 uuid];
    v12 = sub_7578();
    v14 = v13;

    v15 = sub_4644(v12, v14, v25);

    *(v10 + 30) = v15;
    _os_log_impl(&dword_0, v8, v9, "%s: setControl:%s value:%u client:%s", v10, 0x26u);
    swift_arrayDestroy();
  }

  v16 = (*(*v3 + 152))(v25);
  v18 = v17;
  v19 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v18;
  *v18 = 0x8000000000000000;
  sub_58D0(a2, v7, isUniquelyReferenced_nonNull_native);
  v21 = *v18;
  *v18 = v24;

  v22 = v16(v25, 0);
  return (*(*v3 + 256))(v22);
}

void sub_1C30(uint64_t a1, void *a2)
{
  v3 = v2;
  if ((a1 & 0x100000000) != 0)
  {
    v7 = *v2;
    v8 = sub_4BEC(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v16 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_5BA0();
        v13 = v16;
      }

      sub_55B8(v10, v13);
      *v3 = v13;
    }

    else
    {
    }
  }

  else
  {
    v4 = a1;
    v5 = *v2;
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_58D0(v4, a2, v6);

    *v2 = v15;
  }
}

void sub_1D28(char a1, void *a2)
{
  v3 = v2;
  if (a1 == 2)
  {
    v4 = *v2;
    v5 = sub_4BEC(a2);
    if (v6)
    {
      v7 = v5;
      v8 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v15 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_5CFC();
        v10 = v15;
      }

      sub_5744(v7, v10);
      *v3 = v10;
    }

    else
    {
    }
  }

  else
  {
    v12 = *v3;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_5A34(a1 & 1, a2, v13);

    *v3 = v16;
  }
}

uint64_t sub_1E4C(void *a1)
{
  v2 = v1;
  if (*((*(*v1 + 136))() + 16))
  {
    sub_4BEC(a1);
    v5 = v4;

    if (v5)
    {
      if (qword_10B60 != -1)
      {
        swift_once();
      }

      v7 = sub_7518();
      sub_10DC(v7, qword_10B68);

      v8 = a1;
      v9 = sub_74F8();
      v10 = sub_75F8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v24[0] = swift_slowAlloc();
        *v11 = 136315394;
        *(v11 + 4) = sub_4644(*(v2 + 80), *(v2 + 88), v24);
        *(v11 + 12) = 2080;
        v12 = [v8 uuid];
        v13 = sub_7578();
        v15 = v14;

        v16 = sub_4644(v13, v15, v24);

        *(v11 + 14) = v16;
        _os_log_impl(&dword_0, v9, v10, "%s: removeClient:%s", v11, 0x16u);
        swift_arrayDestroy();
      }

      v17 = *(*v2 + 152);
      v18 = v8;
      v19 = v17(v24);
      sub_1C30(0x100000000, v18);
      v19(v24, 0);
      v20 = *(*v2 + 176);
      v21 = v18;
      v22 = v20(v24);
      sub_1D28(2, v21);
      v23 = v22(v24, 0);
      return (*(*v2 + 256))(v23);
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_2190(void *a1, char a2)
{
  v3 = v2;
  if (qword_10B60 != -1)
  {
    swift_once();
  }

  v6 = sub_7518();
  sub_10DC(v6, qword_10B68);

  v7 = a1;
  v8 = sub_74F8();
  v9 = sub_75F8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v10 = 136315650;
    *(v10 + 4) = sub_4644(*(v3 + 80), *(v3 + 88), v25);
    *(v10 + 12) = 1024;
    *(v10 + 14) = a2 & 1;
    *(v10 + 18) = 2080;
    v11 = [v7 uuid];
    v12 = sub_7578();
    v14 = v13;

    v15 = sub_4644(v12, v14, v25);

    *(v10 + 20) = v15;
    _os_log_impl(&dword_0, v8, v9, "%s: setClientState:%{BOOL}d client:%s", v10, 0x1Cu);
    swift_arrayDestroy();
  }

  v16 = (*(*v3 + 176))(v25);
  v18 = v17;
  v19 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v18;
  *v18 = 0x8000000000000000;
  sub_5A34(a2 & 1, v7, isUniquelyReferenced_nonNull_native);
  v21 = *v18;
  *v18 = v24;

  v22 = v16(v25, 0);
  return (*(*v3 + 256))(v22);
}

void sub_2430()
{
  v1 = v0;
  v2 = (*(*v0 + 136))();
  v3 = v2;
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v2 + 64;
  v9 = v7 & *(v2 + 64);
  v10 = (v6 + 63) >> 6;
  v30 = v2;
LABEL_4:
  v29 = v4;
  v31 = v4 - 1;
  while (v9)
  {
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = v12 | (v5 << 6);
    v32 = *(*(v3 + 56) + 4 * v13);
    v14 = *(*v1 + 160);
    v15 = *(*(v3 + 48) + 8 * v13);
    if (*(v14() + 16))
    {
      sub_4BEC(v15);
      v17 = v16;

      if ((v17 & 1) == 0)
      {

LABEL_20:
        v3 = v30;
        goto LABEL_21;
      }

      v19 = (v14)(v18);
      if (!*(v19 + 16))
      {

        goto LABEL_20;
      }

      v20 = sub_4BEC(v15);
      v3 = v30;
      v4 = v32;
      if ((v21 & 1) == 0)
      {

        goto LABEL_22;
      }

      v22 = *(*(v19 + 56) + v20);

      if (v32 - 1 < v31 && (v22 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {

LABEL_21:
      v4 = v32;
LABEL_22:
      if (v4 - 1 < v31)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v8 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  v24 = *(*v1 + 184);
  if (v29 != (v24)(v23))
  {
    v26 = v1[7];
    v25 = v1[8];
    v27 = v24();
    v26(v27, v29, v1[2], v1[3]);
    v28 = *(*v1 + 192);

    v28(v29);
  }
}

Class sub_26EC()
{
  v1 = (*(*v0 + 136))();
  sub_6B48(v1, sub_6998);
  v3 = v2;

  if (*(v3 + 16))
  {
    sub_14A4(&qword_107D0, &qword_7F58);
    v4 = sub_7708();
  }

  else
  {
    v4 = &_swiftEmptyDictionarySingleton;
  }

  v8 = v4;

  sub_5FB8(v5, 1, &v8);

  sub_73D4(0, &qword_107D8, NSString_ptr);
  sub_73D4(0, &qword_107E0, NSDictionary_ptr);
  sub_6DBC();
  isa = sub_7548().super.isa;

  return isa;
}

void *sub_284C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    sub_6340(0, v2, 0);
    v28 = &_swiftEmptyArrayStorage;
    v4 = a1 + 64;
    v5 = -1 << *(a1 + 32);
    result = sub_7678();
    v6 = result;
    v7 = 0;
    v29 = *(a1 + 36);
    v26 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v29 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v10 = (*(a1 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = *(*(a1 + 56) + 8 * v6);

      v27 = sub_7568();
      v14 = (*(*v13 + 264))();

      v15 = v28;
      v17 = v28[2];
      v16 = v28[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_6340((v16 > 1), v17 + 1, 1);
        v15 = v28;
      }

      v15[2] = v17 + 1;
      v18 = &v15[2 * v17];
      v18[4] = v27;
      v18[5] = v14;
      v8 = 1 << *(a1 + 32);
      if (v6 >= v8)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v19 = *(a1 + 64 + 8 * v9);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v28 = v15;
      if (v29 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v9 << 6;
        v22 = v9 + 1;
        v23 = (a1 + 72 + 8 * v9);
        while (v22 < (v8 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_72EC(v6, v29, 0);
            v8 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_72EC(v6, v29, 0);
      }

LABEL_4:
      ++v7;
      v6 = v8;
      if (v7 == v26)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_2B00()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  v5 = *(v0 + 88);

  return v0;
}

uint64_t sub_2B48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 64);

  v5 = *(v0 + 88);

  return _swift_deallocClassInstance(v0, 96, 7);
}

char *HIDSensorControlFilter.init(service:)(void *a1)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_7618();
  v3 = *(v35 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_7608() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(sub_7538() - 8) + 64);
  __chkstk_darwin();
  v9 = &v1[OBJC_IVAR___HIDSensorControlFilter_cancelHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v1[OBJC_IVAR___HIDSensorControlFilter_eventDispatcher] = 0;
  v10 = OBJC_IVAR___HIDSensorControlFilter_service;
  *&v1[OBJC_IVAR___HIDSensorControlFilter_service] = 0;
  v34 = OBJC_IVAR___HIDSensorControlFilter_queue;
  v33[1] = sub_73D4(0, &qword_107B0, OS_dispatch_queue_ptr);
  sub_7528();
  v39 = &_swiftEmptyArrayStorage;
  sub_144C();
  sub_14A4(&qword_107C0, &qword_7F50);
  sub_14EC();
  sub_7668();
  (*(v3 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  *&v1[v34] = sub_7628();
  v11 = OBJC_IVAR___HIDSensorControlFilter_serviceID;
  *&v2[OBJC_IVAR___HIDSensorControlFilter_serviceID] = 0;
  v12 = OBJC_IVAR___HIDSensorControlFilter_controls;
  *&v2[v12] = sub_67A4(&_swiftEmptyArrayStorage);
  v13 = *&v2[v10];
  v14 = v36;
  *&v2[v10] = v36;
  v15 = v14;

  v16 = [v15 serviceID];
  *&v2[v11] = v16;
  v39 = &loc_7830;
  v40 = 0xE200000000000000;
  v38 = v16;
  sub_6E24();
  v41._countAndFlagsBits = sub_75B8();
  sub_7598(v41);

  v17 = v40;
  v18 = &v2[OBJC_IVAR___HIDSensorControlFilter_serviceIDStr];
  *v18 = v39;
  *(v18 + 1) = v17;
  v19 = type metadata accessor for HIDSensorControlFilter();
  v37.receiver = v2;
  v37.super_class = v19;
  v20 = objc_msgSendSuper2(&v37, "init");
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v15;
  sub_14A4(&qword_10830, &qword_7F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_7F30;
  *(inited + 32) = 0x454F46494678614DLL;
  v36 = (inited + 32);
  *(inited + 40) = 0xED000073746E6576;
  type metadata accessor for HIDSensorControlFilter.ControlState();
  swift_allocObject();
  v23 = v20;
  v24 = v15;
  v25 = v23;
  *(inited + 48) = sub_68A8(v24, 0x454F46494678614DLL, 0xED000073746E6576, sub_6EDC, v21);
  strcpy((inited + 56), "ReportInterval");
  *(inited + 71) = -18;
  swift_allocObject();
  v26 = v24;

  v27 = sub_68A8(v26, 0x6E4974726F706552, 0xEE006C6176726574, sub_6EDC, v21);

  *(inited + 72) = v27;
  strcpy((inited + 80), "BatchInterval");
  *(inited + 94) = -4864;
  swift_allocObject();
  v28 = v26;

  v29 = sub_68A8(v28, 0x746E496863746142, 0xED00006C61767265, sub_6EDC, v21);

  *(inited + 96) = v29;
  v30 = sub_67A4(inited);
  swift_setDeallocating();
  sub_14A4(&qword_10838, &qword_7F68);
  swift_arrayDestroy();

  v31 = *&v25[OBJC_IVAR___HIDSensorControlFilter_controls];
  *&v25[OBJC_IVAR___HIDSensorControlFilter_controls] = v30;

  return v25;
}

uint64_t HIDSensorControlFilter.description.getter()
{
  swift_getObjectType();

  return sub_7778();
}

Swift::Void __swiftcall HIDSensorControlFilter.cancel()()
{
  v1 = *(v0 + OBJC_IVAR___HIDSensorControlFilter_service);
  *(v0 + OBJC_IVAR___HIDSensorControlFilter_service) = 0;

  v2 = *(v0 + OBJC_IVAR___HIDSensorControlFilter_controls);
  *(v0 + OBJC_IVAR___HIDSensorControlFilter_controls) = &_swiftEmptyDictionarySingleton;

  v3 = (v0 + OBJC_IVAR___HIDSensorControlFilter_cancelHandler);
  v4 = *(v0 + OBJC_IVAR___HIDSensorControlFilter_cancelHandler);
  if (v4)
  {
    v5 = v3[1];

    v4(v6);
    sub_7204(v4);
    v7 = *v3;
    v8 = v3[1];
    *v3 = 0;
    v3[1] = 0;

    sub_7204(v7);
  }
}

double HIDSensorControlFilter.property(forKey:client:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000000008090 == a2 || (sub_7728() & 1) != 0)
  {
    v7 = *(v3 + OBJC_IVAR___HIDSensorControlFilter_controls);

    v9 = sub_284C(v8);

    if (v9[2])
    {
      sub_14A4(&qword_107D0, &qword_7F58);
      v10 = sub_7708();
    }

    else
    {
      v10 = &_swiftEmptyDictionarySingleton;
    }

    v19 = v10;

    sub_5FB8(v11, 1, &v19);

    sub_73D4(0, &qword_107D8, NSString_ptr);
    v12 = sub_73D4(0, &qword_107E0, NSDictionary_ptr);
    sub_6DBC();
    isa = sub_7548().super.isa;

    sub_14A4(&qword_10848, &unk_7F70);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_7F40;
    *(v14 + 32) = 0x7373616C43;
    *(v14 + 40) = 0xE500000000000000;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = 0xD000000000000016;
    *(v14 + 72) = 0x8000000000007F60;
    *(v14 + 88) = &type metadata for String;
    *(v14 + 96) = 0x736C6F72746E6F43;
    *(v14 + 104) = 0xE800000000000000;
    *(v14 + 152) = v12;
    *(v14 + 120) = &type metadata for String;
    *(v14 + 128) = isa;
    v15 = sub_73D4(0, &qword_10850, NSMutableDictionary_ptr);
    v16 = isa;
    v17 = sub_75D8();
    *(a3 + 24) = v15;
  }

  else
  {
    if ((a1 != 0xD00000000000001ELL || 0x80000000000080B0 != a2) && (sub_7728() & 1) == 0)
    {
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v17 = sub_75C8().super.super.isa;
    *(a3 + 24) = sub_73D4(0, &qword_10840, NSNumber_ptr);
  }

  *a3 = v17;
  return result;
}

uint64_t HIDSensorControlFilter.setProperty(_:forKey:client:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = v4;
  if (a2 != 0xD000000000000024 || 0x80000000000080D0 != a3)
  {
    v7 = a1;
    v8 = sub_7728();
    a1 = v7;
    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

  sub_735C(a1, v31, &qword_10858, &qword_7F98);
  if (!v32)
  {
    sub_72FC(v31, &qword_10858, &qword_7F98);
    return 0;
  }

  v9 = a4;
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v28 = v9;
  v29 = OBJC_IVAR___HIDSensorControlFilter_controls;
  v10 = *(v5 + OBJC_IVAR___HIDSensorControlFilter_controls);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = *(v5 + OBJC_IVAR___HIDSensorControlFilter_controls);

  v17 = 0;
  while (v13)
  {
    v18 = v13;
LABEL_17:
    v13 = (v18 - 1) & v18;
    v20 = *(v5 + v29);
    if (*(v20 + 16))
    {
      v21 = (*(v10 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v18)))));
      v22 = *v21;
      v23 = v21[1];

      v24 = sub_4C8C(v22, v23);
      v26 = v25;

      if (v26)
      {
        v27 = *(*(v20 + 56) + 8 * v24);

        (*(*v27 + 248))(v28, v30);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v14)
    {

      return 1;
    }

    v18 = *(v10 + 64 + 8 * v19);
    ++v17;
    if (v18)
    {
      v17 = v19;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t HIDSensorControlFilter.setCancelHandler(_:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___HIDSensorControlFilter_cancelHandler);
  v4 = *(v2 + OBJC_IVAR___HIDSensorControlFilter_cancelHandler);
  v5 = *(v2 + OBJC_IVAR___HIDSensorControlFilter_cancelHandler + 8);
  *v3 = a1;
  v3[1] = a2;

  return sub_7204(v4);
}

void HIDSensorControlFilter.setDispatchQueue(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HIDSensorControlFilter_queue);
  *(v1 + OBJC_IVAR___HIDSensorControlFilter_queue) = a1;
  v2 = a1;
}

uint64_t HIDSensorControlFilter.setEventDispatcher(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___HIDSensorControlFilter_eventDispatcher);
  *(v1 + OBJC_IVAR___HIDSensorControlFilter_eventDispatcher) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

void *HIDSensorControlFilter.filterEvent(_:forClient:)(void *a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v4 = a2;
  if ([v4 type] != 3)
  {

    goto LABEL_10;
  }

  v5 = *(v2 + OBJC_IVAR___HIDSensorControlFilter_controls);
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v6 = sub_4C8C(0x6E4974726F706552, 0xEE006C6176726574);
  if ((v7 & 1) == 0)
  {

LABEL_12:

    return 0;
  }

  v8 = *(*(v5 + 56) + 8 * v6);

  v10 = (*(*v8 + 136))(v9);
  if (!*(v10 + 16) || (v11 = sub_4BEC(v4), (v12 & 1) == 0))
  {

    return 0;
  }

  v13 = *(*(v10 + 56) + 4 * v11);

  if (!v13)
  {
    return 0;
  }

LABEL_10:
  v14 = a1;
  return a1;
}

void HIDSensorControlFilter.filterSetProperty(_:forKey:forClient:)(void **a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    v34 = a4;
    if ([v34 type] == 3)
    {
      v8 = *&v4[OBJC_IVAR___HIDSensorControlFilter_controls];
      if (*(v8 + 16))
      {
        v9 = *&v4[OBJC_IVAR___HIDSensorControlFilter_controls];

        v10 = sub_4C8C(a2, a3);
        if (v11)
        {
          v12 = *(*(v8 + 56) + 8 * v10);

          if (*a1)
          {
            v37 = swift_unknownObjectRetain();
            if (swift_dynamicCast())
            {
              (*(*v12 + 224))(v34, v36);
              v13 = 0;
              *a1 = 0;

LABEL_22:

              return;
            }
          }

          if (qword_10B60 != -1)
          {
            swift_once();
          }

          v14 = sub_7518();
          sub_10DC(v14, qword_10B68);
          v15 = v34;
          v16 = v4;

          v17 = sub_74F8();
          v18 = sub_75E8();

          if (!os_log_type_enabled(v17, v18))
          {

            return;
          }

          v33 = v18;
          v19 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v19 = 136315906;
          *(v19 + 4) = sub_4644(*&v16[OBJC_IVAR___HIDSensorControlFilter_serviceIDStr], *&v16[OBJC_IVAR___HIDSensorControlFilter_serviceIDStr + 8], &v37);
          *(v19 + 12) = 2080;
          v35 = v15;
          v20 = [v15 uuid];
          v21 = sub_7578();
          v23 = v22;

          v24 = sub_4644(v21, v23, &v37);

          *(v19 + 14) = v24;
          *(v19 + 22) = 2080;
          *(v19 + 24) = sub_4644(a2, a3, &v37);
          *(v19 + 32) = 2080;
          v25 = *a1;
          if (v25)
          {
            if ([swift_unknownObjectRetain() respondsToSelector:"description"])
            {
              v26 = [v25 description];
              swift_unknownObjectRelease();
              v27 = sub_7578();
              v29 = v28;

              v30 = v27;
              v31 = v35;
LABEL_21:
              v32 = sub_4644(v30, v29, &v37);

              *(v19 + 34) = v32;
              _os_log_impl(&dword_0, v17, v33, "%s: client:%s property:%s unexpected value:%s", v19, 0x2Au);
              swift_arrayDestroy();

              goto LABEL_22;
            }

            swift_unknownObjectRelease();
          }

          v29 = 0xE300000000000000;
          v31 = v35;
          v30 = 7104878;
          goto LABEL_21;
        }
      }
    }
  }
}

uint64_t HIDSensorControlFilter.clientNotification(_:added:)(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = *(v2 + OBJC_IVAR___HIDSensorControlFilter_controls);
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;
    v9 = *(v2 + OBJC_IVAR___HIDSensorControlFilter_controls);

    v10 = 0;
    if (v7)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        v12 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v13 = *(**(*(v4 + 56) + ((v11 << 9) | (8 * v12))) + 240);

        v13(v3);

        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v8)
      {
        break;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v10;
      if (v7)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }
  }

  return result;
}

id HIDSensorControlFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HIDSensorControlFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HIDSensorControlFilter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4644(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_4710(v11, 0, 0, 1, a1, a2);
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
    sub_741C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_72A0(v11);
  return v7;
}

unint64_t sub_4710(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_481C(a5, a6);
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
    result = sub_76B8();
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

char *sub_481C(uint64_t a1, unint64_t a2)
{
  v4 = sub_4868(a1, a2);
  sub_4998(&off_C4C0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_4868(uint64_t a1, unint64_t a2)
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

  v6 = sub_4A84(v5, 0);
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

  result = sub_76B8();
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
        v10 = sub_75A8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_4A84(v10, 0);
        result = sub_7698();
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

uint64_t sub_4998(uint64_t result)
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

  result = sub_4AF8(result, v12, 1, v3);
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

void *sub_4A84(uint64_t a1, uint64_t a2)
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

  sub_14A4(&qword_10AE8, &qword_8040);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_4AF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_14A4(&qword_10AE8, &qword_8040);
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

unint64_t sub_4BEC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7638(*(v2 + 40));
  return sub_4D04(a1, v4, &qword_10AD8, HIDConnection_ptr);
}

unint64_t sub_4C3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7638(*(v2 + 40));
  return sub_4D04(a1, v4, &qword_107D8, NSString_ptr);
}

unint64_t sub_4C8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_7748();
  sub_7588();
  v6 = sub_7758();

  return sub_4DD0(a1, a2, v6);
}

unint64_t sub_4D04(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_73D4(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_7648();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_4DD0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_7728())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_4E88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_14A4(&unk_10AF0, qword_8048);
  result = sub_76F8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 4 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = sub_7638(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_50EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_14A4(&qword_10AE0, &qword_8038);
  result = sub_76F8();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = sub_7638(*(v8 + 40));
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_5350(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_14A4(&qword_107D0, &qword_7F58);
  result = sub_76F8();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_7638(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void sub_55B8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_7688() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_7638(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 4 * v3);
          v20 = (v18 + 4 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_5744(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_7688() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_7638(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + v3);
          v20 = (v18 + v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_58D0(int a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_4BEC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_4E88(v13, a3 & 1);
      v17 = *v4;
      result = sub_4BEC(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_73D4(0, &qword_10AD8, HIDConnection_ptr);
        result = sub_7738();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_5BA0();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + 4 * result) = a1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + 4 * result) = a1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a2;
}

unint64_t sub_5A34(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_4BEC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_50EC(v13, a3 & 1);
      v17 = *v4;
      result = sub_4BEC(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_73D4(0, &qword_10AD8, HIDConnection_ptr);
        result = sub_7738();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_5CFC();
      result = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    *(v19[7] + result) = a1 & 1;
    return result;
  }

  v19[(result >> 6) + 8] |= 1 << result;
  *(v19[6] + 8 * result) = a2;
  *(v19[7] + result) = a1 & 1;
  v20 = v19[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19[2] = v21;

  return a2;
}

id sub_5BA0()
{
  v1 = v0;
  sub_14A4(&unk_10AF0, qword_8048);
  v2 = *v0;
  v3 = sub_76E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 4 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 4 * v17) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_5CFC()
{
  v1 = v0;
  sub_14A4(&qword_10AE0, &qword_8038);
  v2 = *v0;
  v3 = sub_76E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_5E58()
{
  v1 = v0;
  sub_14A4(&qword_107D0, &qword_7F58);
  v2 = *v0;
  v3 = sub_76E8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_5FB8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  LOBYTE(v6) = a2;
  v7 = *(a1 + 40);
  v8 = *a3;
  v9 = *(a1 + 32);
  v10 = v7;
  v11 = sub_4C3C(v9);
  v13 = v8[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v8[3] < v16)
  {
    sub_5350(v16, v6 & 1);
    v18 = *a3;
    v11 = sub_4C3C(v9);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_73D4(0, &qword_107D8, NSString_ptr);
    v11 = sub_7738();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_5E58();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_14A4(&qword_10AB8, &qword_8018);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  *(v22[6] + 8 * v11) = v9;
  *(v22[7] + 8 * v11) = v10;
  v23 = v22[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_76A8(30);
    v38._object = 0x8000000000008320;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    sub_7598(v38);
    sub_73D4(0, &qword_107D8, NSString_ptr);
    sub_76C8();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    sub_7598(v39);
    result = sub_76D8();
    __break(1u);
    return result;
  }

  v22[2] = v24;
  if (v4 != 1)
  {
    v6 = (a1 + 56);
    v25 = 1;
    while (v25 < *(a1 + 16))
    {
      v26 = *v6;
      v27 = *a3;
      v9 = *(v6 - 1);
      v10 = v26;
      v28 = sub_4C3C(v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v15 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v29;
      if (v27[3] < v32)
      {
        sub_5350(v32, 1);
        v33 = *a3;
        v28 = sub_4C3C(v9);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      *(v35[6] + 8 * v28) = v9;
      *(v35[7] + 8 * v28) = v10;
      v36 = v35[2];
      v15 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v25;
      v35[2] = v37;
      v6 += 2;
      if (v4 == v25)
      {
      }
    }

    goto LABEL_25;
  }
}

void *sub_6340(void *a1, int64_t a2, char a3)
{
  result = sub_6360(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_6360(void *result, int64_t a2, char a3, void *a4)
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
    sub_14A4(&qword_10A98, &qword_7FF8);
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
    sub_14A4(&qword_10AA0, &qword_8000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_6494(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_14A4(&unk_10AF0, qword_8048);
    v3 = sub_7708();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_4BEC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 4 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_6584(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_14A4(&qword_10AE0, &qword_8038);
    v3 = sub_7708();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_4BEC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_6674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_14A4(&qword_10AD0, &qword_8030);
    v3 = sub_7708();
    v4 = a1 + 32;

    while (1)
    {
      sub_735C(v4, &v13, &qword_10AC8, &qword_8028);
      v5 = v13;
      v6 = v14;
      result = sub_4C8C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_73C4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_67A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_14A4(&qword_10AB0, &qword_8010);
    v3 = sub_7708();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_4C8C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_68A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v6 + 32) = sub_6494(&_swiftEmptyArrayStorage);
  v12 = sub_6584(&_swiftEmptyArrayStorage);
  *(v6 + 72) = 0;
  *(v6 + 40) = v12;
  *(v6 + 48) = a1;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  v13 = a1;

  [v13 serviceID];
  sub_6E24();
  v15._countAndFlagsBits = sub_75B8();
  sub_7598(v15);

  *(v6 + 80) = 30768;
  *(v6 + 88) = 0xE200000000000000;
  return v6;
}

id sub_6998(void *a1, int a2)
{
  sub_14A4(&qword_10AC0, &qword_8020);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_7F40;
  *(inited + 32) = 0x65756C6176;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a2;
  *(inited + 72) = &type metadata for UInt32;
  *(inited + 80) = 0x697463616E497369;
  *(inited + 88) = 0xEA00000000006576;
  v6 = (*(*v2 + 160))();
  if (*(v6 + 16) && (v7 = sub_4BEC(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + v7);
  }

  else
  {

    v9 = 0;
  }

  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = v9;
  sub_6674(inited);
  swift_setDeallocating();
  sub_14A4(&qword_10AC8, &qword_8028);
  swift_arrayDestroy();
  result = [a1 uuid];
  if (result)
  {
    v11 = result;
    sub_7548();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_6B48(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_6340(0, v3, 0);
    v4 = &_swiftEmptyArrayStorage;
    v5 = v2 + 64;
    v6 = -1 << *(v2 + 32);
    v7 = sub_7678();
    v8 = 0;
    v33 = *(v2 + 36);
    v28 = v2 + 72;
    v29 = v3;
    v30 = v2 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_22;
      }

      if (v33 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v32 = v8;
      v11 = *(*(v2 + 56) + 4 * v7);
      v12 = *(*(v2 + 48) + 8 * v7);
      v13 = a2();
      v15 = v14;

      v16 = v4;
      v34 = v4;
      v17 = v2;
      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        sub_6340((v18 > 1), v19 + 1, 1);
        v16 = v34;
      }

      v16[2] = v19 + 1;
      v20 = &v16[2 * v19];
      v20[4] = v13;
      v20[5] = v15;
      v9 = 1 << *(v17 + 32);
      if (v7 >= v9)
      {
        goto LABEL_24;
      }

      v5 = v30;
      v21 = *(v30 + 8 * v10);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v17;
      v4 = v16;
      if (v33 != *(v2 + 36))
      {
        goto LABEL_26;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (v28 + 8 * v10);
        while (v24 < (v9 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_72EC(v7, v33, 0);
            v9 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_72EC(v7, v33, 0);
      }

LABEL_4:
      v8 = v32 + 1;
      v7 = v9;
      if (v32 + 1 == v29)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

unint64_t sub_6DBC()
{
  result = qword_107E8;
  if (!qword_107E8)
  {
    sub_73D4(255, &qword_107D8, NSString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_107E8);
  }

  return result;
}

unint64_t sub_6E24()
{
  result = qword_10820;
  if (!qword_10820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10820);
  }

  return result;
}

uint64_t sub_6E9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_6EDC(int a1, int a2, uint64_t a3, unint64_t a4)
{
  v9 = *(v4 + 16);
  v21 = *(v4 + 24);
  if (qword_10B60 != -1)
  {
    swift_once();
  }

  v10 = sub_7518();
  sub_10DC(v10, qword_10B68);
  v11 = v9;

  v12 = sub_74F8();
  v13 = sub_75F8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v14 = 136316162;
    *(v14 + 4) = sub_4644(*&v11[OBJC_IVAR___HIDSensorControlFilter_serviceIDStr], *&v11[OBJC_IVAR___HIDSensorControlFilter_serviceIDStr + 8], &v23);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_4644(a3, a4, &v23);
    *(v14 + 22) = 1024;
    *(v14 + 24) = a2;
    *(v14 + 28) = 1024;
    *(v14 + 30) = a1;
    *(v14 + 34) = 2112;
    v16 = *&v11[OBJC_IVAR___HIDSensorControlFilter_service];
    if (!v16)
    {

      __break(1u);
      return;
    }

    v17 = v16;

    isa = [v17 eventStatistics];
    if (isa)
    {
      sub_7558();

      isa = sub_7548().super.isa;

      v19 = isa;
    }

    else
    {
      v19 = 0;
    }

    *(v14 + 36) = isa;
    *v15 = v19;
    _os_log_impl(&dword_0, v12, v13, "%s: set property:%s with new value:%u current value:%u event stats:%@", v14, 0x2Cu);
    sub_72FC(v15, &qword_10AA8, &qword_8008);

    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = sub_7768().super.super.isa;
  v20 = sub_7568();
  [v21 setProperty:v22 forKey:v20];
}

uint64_t sub_7204(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_7214()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_725C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_72A0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_72EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_72FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_14A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_735C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_14A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_73C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_73D4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_741C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_7478(uint64_t a1, uint64_t *a2)
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