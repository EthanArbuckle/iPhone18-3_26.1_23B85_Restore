unint64_t sub_100017A74()
{
  result = qword_100029990;
  if (!qword_100029990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029990);
  }

  return result;
}

uint64_t sub_100017AC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001DFC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t *sub_100017B30(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_100017B80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017BC8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017C08()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100017C48(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_100012E70(a1, *(v1 + 16));
}

uint64_t sub_100017C7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100017CC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000028E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReportViewController.ClientError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReportViewController.ClientError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100017E6C()
{
  result = qword_100029A38;
  if (!qword_100029A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029A38);
  }

  return result;
}

uint64_t sub_100017FD0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v15[4] = sub_1000181B0;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_1000180F0;
  v15[3] = &unk_100025818;
  v11 = _Block_copy(v15);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v13 = [ObjCClassFromMetadata scheduledTimerWithTimeInterval:a1 & 1 repeats:v11 block:a5];
  _Block_release(v11);

  *a4 = v13;
  return result;
}

void sub_1000180F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100018178()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000181B0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1000181E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100018200()
{
  v0 = sub_10001AAB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  sub_10001AAA4();
  v8 = objc_allocWithZone(type metadata accessor for TokenCoder());
  (*(v1 + 16))(v5, v7, v0);
  v9 = sub_10001A24C(0x656C707041, 0xE500000000000000, v5, v8);
  result = (*(v1 + 8))(v7, v0);
  qword_100029BB8 = v9;
  return result;
}

id sub_100018398()
{
  v0 = sub_10001AAB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &token - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &token - v6;
  v8 = [objc_opt_self() currentConnection];
  if (!v8)
  {
    if (qword_1000291C8 != -1)
    {
      swift_once();
    }

    v17 = sub_10001AB64();
    sub_10000BDA0(v17, qword_100029BA0);
    v18 = sub_10001AB44();
    v19 = sub_10001AD94();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get the current XPC connection", v20, 2u);
    }

    goto LABEL_14;
  }

  v9 = v8;
  [v8 auditToken];
  v10 = SecTaskCreateWithAuditToken(0, &token);
  if (!v10 || (v11 = sub_100018694(), !v12))
  {
    sub_10001AC44();
    v15 = os_variant_allows_internal_security_policies();

    if (v15)
    {
      v13 = sub_100018878();
      v14 = v16;

      goto LABEL_7;
    }

LABEL_14:
    v13 = 0;
    v14 = 0;
    goto LABEL_15;
  }

  v13 = v11;
  v14 = v12;
LABEL_7:

LABEL_15:
  sub_10001AAA4();
  v21 = objc_allocWithZone(type metadata accessor for TokenCoder());
  (*(v1 + 16))(v5, v7, v0);
  v22 = sub_10001A24C(v13, v14, v5, v21);
  (*(v1 + 8))(v7, v0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v22;
}

uint64_t sub_100018694()
{
  v14 = 0;
  v0 = SecTaskCopyTeamIdentifier();
  if (v0)
  {
    v1 = v0;
    v2 = sub_10001AC24();
  }

  else
  {
    if (qword_1000291C8 != -1)
    {
      swift_once();
    }

    v3 = sub_10001AB64();
    sub_10000BDA0(v3, qword_100029BA0);
    v4 = v14;
    v5 = sub_10001AB44();
    v6 = sub_10001ADB4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      sub_100001DFC(&qword_100029B28, &qword_10001C398);
      v9 = sub_10001AE34();
      v11 = sub_100019C94(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to extract team identifier from SecTask: %{public}s", v7, 0xCu);
      sub_10000BF9C(v8);
    }

    else
    {
    }

    return 0;
  }

  return v2;
}

uint64_t sub_100018878()
{
  v1 = sub_10001ABF4();
  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    sub_10001AE54();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_10001A470(v11);
  }

  if (qword_1000291C8 != -1)
  {
    swift_once();
  }

  v4 = sub_10001AB64();
  sub_10000BDA0(v4, qword_100029BA0);
  v5 = sub_10001AB44();
  v6 = sub_10001ADB4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to extract team identifier from connection entitlements", v7, 2u);
  }

  return 0;
}

Class sub_100018A64(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  sub_10000BC30();
  v6 = sub_10001AD54();
  v7 = a1;
  sub_100018B28(v6, v7, a4);

  v8.super.isa = sub_10001AD44().super.isa;

  return v8.super.isa;
}

uint64_t sub_100018B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *))
{
  v15 = &_swiftEmptySetSingleton;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; i = v12)
  {
    v12 = i;
LABEL_8:
    v14 = *(*(a1 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
    sub_10000BC84(v14, *(&v14 + 1));
    sub_100018C70(&v15, &v14, a2, a3);
    v9 &= v9 - 1;
    sub_10000BCD8(v14, *(&v14 + 1));
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return v15;
    }

    v9 = *(v6 + 8 * v12);
    ++i;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_10000BCD8(v14, *(&v14 + 1));

  __break(1u);
  return result;
}

uint64_t sub_100018C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v8 = sub_100001DFC(&qword_100029B18, &unk_10001C380);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  sub_10000BC84(*a2, *(a2 + 8));
  sub_10001AA94();
  if (!*(a3 + OBJC_IVAR____TtC27DeviceActivityReportService10TokenCoder_decoder))
  {
    if (qword_1000291C8 != -1)
    {
      swift_once();
    }

    v25 = sub_10001AB64();
    sub_10000BDA0(v25, qword_100029BA0);
    v26 = sub_10001AB44();
    v27 = sub_10001AD94();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to create token decoder", v28, 2u);

      return (*(v9 + 8))(v12, v8);
    }

    return (*(v9 + 8))(v12, v8);
  }

  v13 = *(a3 + OBJC_IVAR____TtC27DeviceActivityReportService10TokenCoder_decoder);

  v14 = a4(v12);
  if (!v4)
  {
    sub_100007040(v31, v14, v15);

    return (*(v9 + 8))(v12, v8);
  }

  if (qword_1000291C8 != -1)
  {
    swift_once();
  }

  v16 = sub_10001AB64();
  sub_10000BDA0(v16, qword_100029BA0);
  swift_errorRetain();
  v17 = sub_10001AB44();
  v18 = sub_10001AD94();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31[0] = v29;
    *v19 = 136446210;
    v31[3] = v4;
    swift_errorRetain();
    sub_100001DFC(&qword_100029920, &qword_10001BD00);
    v20 = sub_10001AC34();
    v30 = v8;
    v22 = v9;
    v23 = sub_100019C94(v20, v21, v31);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v17, v18, "Failed to decode token: %{public}s", v19, 0xCu);
    sub_10000BF9C(v29);

    return (*(v22 + 8))(v12, v30);
  }

  else
  {

    return (*(v9 + 8))(v12, v8);
  }
}

Class sub_1000190D4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_10001AD54();
  v7 = a1;
  a4(v6);

  sub_10000BC30();
  v8.super.isa = sub_10001AD44().super.isa;

  return v8.super.isa;
}

uint64_t sub_100019194(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v25 = &_swiftEmptyArrayStorage;
  if (!v8)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
      v14 = *v13;
      v15 = v13[1];

      v16 = sub_10001946C(v14, v15, v2, a2);
      v18 = v17;

      if (v18 >> 60 != 15)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_6;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100019B04(0, *(v25 + 2) + 1, 1, v25);
      v25 = result;
    }

    v21 = *(v25 + 2);
    v20 = *(v25 + 3);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      result = sub_100019B04((v20 > 1), v21 + 1, 1, v25);
      v22 = v21 + 1;
      v25 = result;
    }

    *(v25 + 2) = v22;
    v23 = &v25[16 * v21];
    *(v23 + 4) = v16;
    *(v23 + 5) = v18;
  }

  while (v8);
LABEL_6:
  while (1)
  {
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v19 >= v9)
    {

      v24 = sub_10000AD88(v25);

      return v24;
    }

    v8 = *(v5 + 8 * v19);
    ++v11;
    if (v8)
    {
      v11 = v19;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

Class sub_1000193B4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = sub_10001AC24();
  v8 = v7;
  v9 = a1;
  v10 = sub_10001946C(v6, v8, v9, a4);
  v12 = v11;

  if (v12 >> 60 == 15)
  {
    v13 = 0;
  }

  else
  {
    isa = sub_10001A734().super.isa;
    sub_10000BF2C(v10, v12);
    v13 = isa;
  }

  return v13;
}

uint64_t sub_10001946C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v8 = sub_100001DFC(&qword_100029B18, &unk_10001C380);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  if (*(a3 + OBJC_IVAR____TtC27DeviceActivityReportService10TokenCoder_encoder))
  {

    a4(a1, a2);
    v17 = sub_10001AA84();

    (*(v9 + 8))(v12, v8);
    return v17;
  }

  else
  {
    if (qword_1000291C8 != -1)
    {
      swift_once();
    }

    v13 = sub_10001AB64();
    sub_10000BDA0(v13, qword_100029BA0);
    v14 = sub_10001AB44();
    v15 = sub_10001AD94();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to create token encoder", v16, 2u);
    }

    return 0;
  }
}

id sub_1000197D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TokenCoder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10001988C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

size_t sub_100019928(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100001DFC(a5, a6);
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

char *sub_100019B04(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DFC(&qword_1000299E0, &qword_10001C208);
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

uint64_t sub_100019C38(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100019C94(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100019C94(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100019D60(v11, 0, 0, 1, a1, a2);
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
    sub_10000BF40(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000BF9C(v11);
  return v7;
}

unint64_t sub_100019D60(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100019E6C(a5, a6);
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
    result = sub_10001AED4();
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

char *sub_100019E6C(uint64_t a1, unint64_t a2)
{
  v4 = sub_100019EB8(a1, a2);
  sub_100019FE8(&off_100024D18);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100019EB8(uint64_t a1, unint64_t a2)
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

  v6 = sub_10001A0D4(v5, 0);
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

  result = sub_10001AED4();
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
        v10 = sub_10001AC74();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10001A0D4(v10, 0);
        result = sub_10001AEA4();
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

uint64_t sub_100019FE8(uint64_t result)
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

  result = sub_10001A148(result, v12, 1, v3);
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

void *sub_10001A0D4(uint64_t a1, uint64_t a2)
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

  sub_100001DFC(&qword_100029B20, &qword_10001C390);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001A148(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001DFC(&qword_100029B20, &qword_10001C390);
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

_BYTE **sub_10001A23C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

id sub_10001A24C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = sub_10001AAB4();
  v27[3] = v8;
  v27[4] = &protocol witness table for KeyRetriever;
  v9 = sub_10000F158(v27);
  (*(*(v8 - 8) + 32))(v9, a3, v8);
  v10 = &a4[OBJC_IVAR____TtC27DeviceActivityReportService10TokenCoder_teamIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  if (a2)
  {
    sub_10000EB64(v27, v25);
    v11 = sub_10001AAD4();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    *&a4[OBJC_IVAR____TtC27DeviceActivityReportService10TokenCoder_decoder] = sub_10001AAC4();
    sub_10000EB64(v27, v25);
    v14 = sub_10001AAF4();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = sub_10001AAE4();
  }

  else
  {
    if (qword_1000291C8 != -1)
    {
      swift_once();
    }

    v18 = sub_10001AB64();
    sub_10000BDA0(v18, qword_100029BA0);
    v19 = sub_10001AB44();
    v20 = sub_10001AD94();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to create token coder with nil team identifier", v21, 2u);
    }

    v17 = 0;
    *&a4[OBJC_IVAR____TtC27DeviceActivityReportService10TokenCoder_decoder] = 0;
  }

  *&a4[OBJC_IVAR____TtC27DeviceActivityReportService10TokenCoder_encoder] = v17;
  v22 = type metadata accessor for TokenCoder();
  v26.receiver = a4;
  v26.super_class = v22;
  v23 = objc_msgSendSuper2(&v26, "init");
  sub_10000BF9C(v27);
  return v23;
}

uint64_t sub_10001A470(uint64_t a1)
{
  v2 = sub_100001DFC(&qword_100029B30, &qword_10001C3A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10001A4D8()
{
  v0 = [swift_getObjCClassFromMetadata() currentConnection];

  return v0;
}