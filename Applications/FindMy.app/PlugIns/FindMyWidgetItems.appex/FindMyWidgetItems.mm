Swift::Int KoreaFeatureFlag.hashValue.getter()
{
  sub_10003A9F8();
  sub_10003AA08(0);
  return sub_10003AA18();
}

Swift::Int sub_100001A0C()
{
  sub_10003A9F8();
  sub_10003AA08(0);
  return sub_10003AA18();
}

uint64_t sub_100001A4C(__int128 *a1)
{
  v2 = *a1;
  if (sub_1000388A0(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100001AC0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_1000388A0(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100001B2C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001B74(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001BBC()
{
  result = qword_10004C3A0;
  if (!qword_10004C3A0)
  {
    sub_100001B74(&qword_10004C398, &qword_10003BC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C3A0);
  }

  return result;
}

unint64_t sub_100001C24()
{
  result = qword_10004C3A8;
  if (!qword_10004C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C3A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KoreaFeatureFlag(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for KoreaFeatureFlag(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100001D70(uint64_t a1, id *a2)
{
  result = sub_10003A688();
  *a2 = 0;
  return result;
}

uint64_t sub_100001DE8(uint64_t a1, id *a2)
{
  v3 = sub_10003A698();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001E68@<X0>(void *a1@<X8>)
{
  sub_10003A6A8();
  v2 = sub_10003A678();

  *a1 = v2;
  return result;
}

uint64_t sub_100001EAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10003A6A8();
  v6 = v5;
  if (v4 == sub_10003A6A8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10003A998();
  }

  return v9 & 1;
}

uint64_t sub_100001F34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10003A678();

  *a2 = v5;
  return result;
}

uint64_t sub_100001F7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10003A6A8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100001FA8(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_10004C3D0);
  v3 = sub_1000021C0(&qword_10004C3D8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002040()
{
  v1 = *v0;
  sub_10003A6A8();
  v2 = sub_10003A708();

  return v2;
}

uint64_t sub_10000207C()
{
  v1 = *v0;
  sub_10003A6A8();
  sub_10003A6C8();
}

Swift::Int sub_1000020D0()
{
  v1 = *v0;
  sub_10003A6A8();
  sub_10003A9F8();
  sub_10003A6C8();
  v2 = sub_10003AA18();

  return v2;
}

uint64_t sub_1000021C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SPBeaconType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for AnnotationPin.Style(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_100002258(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002264(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002284(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AnnotationPin.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnnotationPin.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_100002320(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100002394()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  v6 = (*(v1 + 112) + **(v1 + 112));
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_100002480;

  return v6();
}

uint64_t sub_100002480(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = *(v4 + 16);

    return _swift_task_switch(sub_1000025D0, v7, 0);
  }

  else
  {
    v8 = *(v6 + 8);

    return v8(a1 & 1);
  }
}

uint64_t sub_1000025D0()
{
  v1 = v0[4];
  v2 = v0[2];
  swift_errorRetain();
  v3 = sub_100039978();
  v4 = sub_10003A848();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error: %{public}@", v6, 0xCu);
    sub_100002928(v7);
  }

  v9 = v0[4];

  sub_1000028D4();
  swift_willThrowTypedImpl();

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_10000274C()
{
  v1 = *(v0 + 120);

  v2 = OBJC_IVAR____TtC17FindMyWidgetItems12AccountStore_logger;
  v3 = sub_100039998();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AccountStore()
{
  result = qword_10004C428;
  if (!qword_10004C428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002820()
{
  result = sub_100039998();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000028D4()
{
  result = qword_10004C4C8;
  if (!qword_10004C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C4C8);
  }

  return result;
}

uint64_t sub_100002928(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_10004C4D0, &qword_10003E020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccountStore.AccountInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountStore.AccountInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100002B10()
{
  result = qword_10004C4D8;
  if (!qword_10004C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C4D8);
  }

  return result;
}

uint64_t sub_100002B64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100002BAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100002BF8(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_100001B2C(&qword_10004C4E0, &qword_10003C0A8);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return _swift_task_switch(sub_100002CC4, 0, 0);
}

uint64_t sub_100002CC4()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_100002E90;
  swift_continuation_init();
  v1[17] = v8;
  v9 = sub_100003094(v1 + 14);
  sub_100001B2C(&qword_10004C4E8, &qword_10003C0B0);
  sub_100001B2C(&qword_10004C4F0, &qword_10003C0B8);
  sub_10003A768();
  (*(v7 + 32))(v9, v6, v8);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000030F8;
  v1[13] = &unk_10004A7B0;
  [v11 aa_primaryAppleAccountWithCompletion:v4];
  (*(v7 + 8))(v9, v8);

  return _swift_continuation_await(v3);
}

uint64_t sub_100002E90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_10000301C;
  }

  else
  {
    v3 = sub_100002FA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100002FA0()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v2 != 0;

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_10000301C()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3(0);
}

uint64_t *sub_100003094(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_1000030F8(uint64_t a1, void *a2, void *a3)
{
  sub_100003260((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    sub_100001B2C(&qword_10004C4E0, &qword_10003C0A8);
    sub_10003A778();
  }

  else
  {
    v6 = a2;
    sub_100001B2C(&qword_10004C4E0, &qword_10003C0A8);
    sub_10003A788();
  }
}

uint64_t sub_1000031B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003214(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100003260(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_1000032A4()
{
  v31 = sub_10003A078();
  v0 = *(v31 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v31);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10003A088();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A0F8();
  type metadata accessor for CGPoint(0);
  sub_100039A78();

  v8 = v34;
  v9 = v35;
  sub_10003A0E8();
  sub_100003610();
  v10 = sub_10003A7F8();
  if (!v10)
  {
    (*(v4 + 8))(v7, v3);
    return &_swiftEmptyArrayStorage;
  }

  v11 = v10;
  v33 = &_swiftEmptyArrayStorage;
  sub_100025E04(0, v10 & ~(v10 >> 63), 0);
  v12 = v33;
  result = sub_10003A7E8();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v29 = v4;
    v14 = (v0 + 16);
    v15 = (v0 + 8);
    v16 = v7;
    do
    {
      v17 = sub_10003A818();
      v18 = v30;
      v19 = v3;
      v20 = v31;
      (*v14)(v30);
      v17(v32, 0);
      sub_10003A068();
      (*v15)(v18, v20);
      v21 = v34;
      v22 = v35;
      v23 = v36;
      v24 = v37;
      v25 = v38;
      v33 = v12;
      v27 = v12[2];
      v26 = v12[3];
      if (v27 >= v26 >> 1)
      {
        sub_100025E04((v26 > 1), v27 + 1, 1);
        v12 = v33;
      }

      v12[2] = v27 + 1;
      v28 = &v12[4 * v27];
      v28[4] = v8 + v21;
      v28[5] = v9 + v22 - v24;
      *(v28 + 6) = v23;
      v28[7] = v24 + v25;
      sub_10003A808();
      --v11;
      v3 = v19;
    }

    while (v11);
    (*(v29 + 8))(v16, v19);
    return v12;
  }

  __break(1u);
  return result;
}

unint64_t sub_100003610()
{
  result = qword_10004C4F8;
  if (!qword_10004C4F8)
  {
    sub_10003A088();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C4F8);
  }

  return result;
}

unint64_t sub_10000366C()
{
  result = qword_10004C500;
  if (!qword_10004C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C500);
  }

  return result;
}

unint64_t sub_1000036C4()
{
  result = qword_10004C508;
  if (!qword_10004C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C508);
  }

  return result;
}

unint64_t sub_10000371C()
{
  result = qword_10004C510;
  if (!qword_10004C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C510);
  }

  return result;
}

unint64_t sub_100003774()
{
  result = qword_10004C518;
  if (!qword_10004C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C518);
  }

  return result;
}

uint64_t sub_100003818@<X0>(uint64_t *a1@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_10003A258();

  *a1 = v2;
  return result;
}

uint64_t sub_1000038AC()
{
  v0 = sub_100039F48();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(sub_100001B2C(&qword_10004C528, &qword_10003C270) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7[0] = sub_10003A248();
  sub_100039F38();
  sub_10003A3D8();
  sub_10003A1B8();
  (*(v1 + 8))(v4, v0);

  v7[0] = &type metadata for Color;
  v7[1] = &type metadata for Color;
  v7[2] = &protocol witness table for Color;
  v7[3] = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  return sub_10003A388();
}

uint64_t sub_100003A88()
{
  v0 = sub_100039678();
  sub_100004650(v0, qword_100050148);
  sub_100004618(v0, qword_100050148);
  return sub_100039658();
}

uint64_t sub_100003AEC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10004C308 != -1)
  {
    swift_once();
  }

  v2 = sub_100039678();
  v3 = sub_100004618(v2, qword_100050148);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003BAC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000045C4();
  *v5 = v2;
  v5[1] = sub_100003C58;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_100003C58()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_100003D60(uint64_t a1)
{
  v2 = sub_10000366C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100003DD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000396E8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100003E48@<X0>(uint64_t a1@<X8>)
{
  sub_1000396C8();
  result = type metadata accessor for WidgetPreviewWrapper.Provider.Entry();
  v3 = (a1 + *(result + 20));
  *v3 = 0x6C6F686563616C70;
  v3[1] = 0xEB00000000726564;
  return result;
}

uint64_t sub_100003EBC()
{
  v1 = *(v0 + 16);
  sub_1000396C8();
  v2 = (v1 + *(type metadata accessor for WidgetPreviewWrapper.Provider.Entry() + 20));
  *v2 = 0x746F687370616E73;
  v2[1] = 0xE800000000000000;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100003F48(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_10003A518() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1000396E8();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100004034, 0, 0);
}

uint64_t sub_100004034()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  sub_100001B2C(&qword_10004C5E0, &qword_10003C360);
  v6 = type metadata accessor for WidgetPreviewWrapper.Provider.Entry();
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10003C0C0;
  v10 = v9 + v8;
  sub_1000396C8();
  (*(v2 + 32))(v10, v1, v4);
  v11 = (v10 + *(v6 + 20));
  *v11 = 0x656E696C656D6974;
  v11[1] = 0xE800000000000000;
  sub_10003A508();
  sub_100004994();
  sub_10003A5E8();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000041C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000427C;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10000427C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100004370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000049F0;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10000443C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_100004570();

  return sub_10003A528();
}

uint64_t sub_100004508()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100004540@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

unint64_t sub_100004570()
{
  result = qword_10004C520;
  if (!qword_10004C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C520);
  }

  return result;
}

unint64_t sub_1000045C4()
{
  result = qword_10004C530;
  if (!qword_10004C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C530);
  }

  return result;
}

uint64_t sub_100004618(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004650(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000046D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000396E8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000047AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000396E8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for WidgetPreviewWrapper.Provider.Entry()
{
  result = qword_10004C590;
  if (!qword_10004C590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000048B4()
{
  result = sub_1000396E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10000492C()
{
  result = qword_10004C5C8;
  if (!qword_10004C5C8)
  {
    sub_100001B74(&qword_10004C5D0, &qword_10003C288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C5C8);
  }

  return result;
}

unint64_t sub_100004994()
{
  result = qword_10004C5D8;
  if (!qword_10004C5D8)
  {
    type metadata accessor for WidgetPreviewWrapper.Provider.Entry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C5D8);
  }

  return result;
}

uint64_t sub_100004A08(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000398C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_100039798();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 254)
  {
    v15 = *(a1 + a3[6]);
    if (v15 >= 2)
    {
      return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v16 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_5;
  }

  v17 = sub_100001B2C(&qword_10004C5F0, "r%");
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_100004BFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000398C8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100039798();
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[5];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6]) = a2 + 1;
    return result;
  }

  v16 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_5;
  }

  v17 = sub_100001B2C(&qword_10004C5F0, "r%");
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for AnnotationPin()
{
  result = qword_10004C650;
  if (!qword_10004C650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100004E18()
{
  sub_1000398C8();
  if (v0 <= 0x3F)
  {
    sub_100039798();
    if (v1 <= 0x3F)
    {
      sub_100004F84(319, &qword_10004C660, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        sub_100004F34();
        if (v3 <= 0x3F)
        {
          sub_100004F84(319, &qword_10004C670, &type metadata accessor for WidgetRenderingMode);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100004F34()
{
  if (!qword_10004C668)
  {
    v0 = sub_1000399D8();
    if (!v1)
    {
      atomic_store(v0, &qword_10004C668);
    }
  }
}

void sub_100004F84(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000399D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100005004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = type metadata accessor for AnnotationPin();
  v3 = *(v47 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v47);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100001B2C(&qword_10004C6C0, &qword_10003C438);
  v6 = *(*(v46 - 8) + 64);
  v7 = __chkstk_darwin(v46);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = (&v40 - v9);
  sub_10003A7A8();
  v48 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100006D8C(a1, &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v45 = swift_allocObject();
  sub_100006E00(&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v45 + v11);
  v44 = sub_10003A3D8();
  v43 = v12;
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100006D8C(a1, &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = swift_allocObject();
  sub_100006E00(&v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v11);

  v41 = sub_10003A3C8();
  v40 = v13;
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = v10 + *(v46 + 36);
  sub_100006D8C(a1, &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_100006E00(v5, v15 + v11);
  v57 = sub_1000070AC;
  v58 = v15;
  sub_100001B2C(&qword_10004C6D8, &qword_10003C450);
  sub_1000073FC(&qword_10004C6E0, &qword_10004C6D8, &qword_10003C450);
  sub_10003A148();

  v16 = &v14[*(sub_100001B2C(&qword_10004C6E8, &qword_10003C458) + 36)];
  v17 = v40;
  *v16 = v41;
  v16[1] = v17;
  v18 = v45;
  *v10 = sub_100006E64;
  v10[1] = v18;
  v19 = v42;
  v10[2] = sub_100006E7C;
  v10[3] = v19;
  v20 = v43;
  v10[4] = v44;
  v10[5] = v20;
  if (*(a1 + *(v47 + 24)) == 1)
  {
    sub_10003A3D8();
    sub_100039A48();
    v47 = v69;
    LOBYTE(v23) = v70;
    v46 = v71;
    v21 = v72;
    v45 = v73;
    v44 = v74;
    v22 = sub_100039DD8();
    LOBYTE(v57) = v23;
    LOBYTE(v51) = v21;
    v23 = v23;
    v24 = v21;
    v43 = sub_100039CF8();
    v42 = sub_100006CE0;
    v25 = sub_100006CB8;
  }

  else
  {
    v47 = 0;
    v46 = 0;
    v45 = 0;
    v44 = 0;
    v22 = 0;
    v25 = 0;
    v43 = 0;
    v42 = 0;
    v24 = 0;
    v23 = 0;
  }

  v40 = v23;
  v41 = v24;
  v26 = v50;
  sub_100007158(v10, v50);
  v27 = v49;
  sub_100007158(v26, v49);
  v28 = (v27 + *(sub_100001B2C(&qword_10004C6F0, &qword_10003C460) + 48));
  v29 = v47;
  *&v51 = v47;
  *(&v51 + 1) = v23;
  v30 = v46;
  *&v52 = v46;
  *(&v52 + 1) = v24;
  v31 = v45;
  *&v53 = v45;
  v32 = v44;
  *(&v53 + 1) = v44;
  *&v54 = v22;
  *(&v54 + 1) = v25;
  *&v55 = 0;
  v33 = v43;
  v34 = v10;
  v35 = v42;
  *(&v55 + 1) = v43;
  v56 = v42;
  v36 = v52;
  *v28 = v51;
  v28[1] = v36;
  v37 = v54;
  v28[2] = v53;
  v28[3] = v37;
  v38 = v56;
  v28[4] = v55;
  v28[5] = v38;
  sub_1000071C8(&v51, &v57);
  sub_100007238(v34);
  v57 = v29;
  v58 = v40;
  v59 = v30;
  v60 = v41;
  v61 = v31;
  v62 = v32;
  v63 = v22;
  v64 = v25;
  v65 = 0;
  v66 = v33;
  v67 = v35;
  v68 = 0;
  sub_1000072A0(&v57);
  sub_100007238(v26);
}

uint64_t sub_1000056AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(*(sub_100039ED8() - 8) + 64);
  __chkstk_darwin();
  v5 = sub_100039CE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_1000059CC(0.0);
  sub_100039A58();
  v11 = type metadata accessor for AnnotationPin();
  v12 = *(a1 + *(v11 + 28) + 8);
  v13 = a1 + *(v11 + 36);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    v15 = *v13;
  }

  else
  {

    sub_10003A858();
    v16 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    sub_100006DF4(v14, 0);
    (*(v6 + 8))(v9, v5);
  }

  v17 = sub_100039F98();
  sub_1000399A8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_100039EC8();
  v26 = a2 + *(sub_100001B2C(&qword_10004C758, &qword_10003C4A8) + 36);
  sub_100039F68();
  *a2 = v10;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19;
  *(a2 + 24) = v21;
  *(a2 + 32) = v23;
  *(a2 + 40) = v25;
  *(a2 + 48) = 0;
  v27 = *(sub_100001B2C(&qword_10004C760, &qword_10003C4B0) + 36);
  v28 = enum case for BlendMode.destinationOut(_:);
  v29 = sub_10003A3F8();
  (*(*(v29 - 8) + 104))(a2 + v27, v28, v29);
}

uint64_t sub_1000059CC(double a1)
{
  v33 = sub_100039778();
  v31 = *(v33 - 8);
  v3 = *(v31 + 64);
  __chkstk_darwin();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100001B2C(&qword_10004C720, &qword_10003C490);
  v6 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v30 = &v30 - v7;
  v8 = sub_100039738();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100001B2C(&qword_10004C728, &qword_10003C498);
  v14 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v16 = &v30 - v15;
  v17 = sub_100039798();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AnnotationPin();
  (*(v18 + 16))(v21, v1 + *(v22 + 20), v17);
  v23 = (*(v18 + 88))(v21, v17);
  if (v23 == enum case for IconAndPlatter.Shape.circle(_:))
  {
    sub_100039718();
    sub_100039728();
    (*(v9 + 8))(v12, v8);
    v24 = &v16[*(v13 + 36)];
    *v24 = a1;
    v24[1] = a1;
    sub_1000073FC(&qword_10004C730, &qword_10004C728, &qword_10003C498);
    return sub_10003A398();
  }

  else if (v23 == enum case for IconAndPlatter.Shape.rectangle(_:))
  {
    sub_100039758();
    sub_100039748();
    v26 = v30;
    sub_100039768();
    (*(v31 + 8))(v5, v33);
    v27 = &v26[*(v32 + 36)];
    *v27 = a1;
    v27[1] = a1;
    sub_1000073FC(&qword_10004C738, &qword_10004C720, &qword_10003C490);
    return sub_10003A398();
  }

  else
  {
    sub_100039718();
    sub_100039728();
    (*(v9 + 8))(v12, v8);
    v28 = &v16[*(v13 + 36)];
    *v28 = a1;
    v28[1] = a1;
    sub_1000073FC(&qword_10004C730, &qword_10004C728, &qword_10003C498);
    v29 = sub_10003A398();
    (*(v18 + 8))(v21, v17);
    return v29;
  }
}

uint64_t sub_100005E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a3;
  v4 = sub_100039798();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000398C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v10 + 16))(v13, a2, v9);
  v14 = type metadata accessor for AnnotationPin();
  (*(v5 + 16))(v8, a2 + *(v14 + 20), v4);
  v15 = v30;
  sub_100039788();
  sub_100039A58();
  v17 = v16 * *(a2 + *(v14 + 28) + 8);
  v18 = sub_100039F98();
  sub_1000399A8();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  result = sub_100001B2C(&qword_10004C750, &qword_10003C4A0);
  v28 = v15 + *(result + 36);
  *v28 = v18;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_1000060D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100039CE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_100006324();
  sub_100039A58();
  v11 = v10;
  v12 = type metadata accessor for AnnotationPin();
  v13 = *(a1 + *(v12 + 28) + 8);
  v14 = a1 + *(v12 + 36);
  v15 = *v14;
  if (*(v14 + 8) == 1)
  {
    v16 = *v14;
  }

  else
  {

    sub_10003A858();
    v17 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    sub_100006DF4(v15, 0);
    (*(v5 + 8))(v8, v4);
    v16 = *&v21[1];
  }

  v18 = sub_1000059CC(v11 * v13 + v16);
  v19 = sub_100001B2C(&qword_10004C700, &qword_10003C470);
  sub_100006608(a2 + *(v19 + 52));

  *a2 = v9;
  *(a2 + 8) = v18;
  *(a2 + 16) = 0;
  *(a2 + *(v19 + 56)) = 256;
  return result;
}

uint64_t sub_100006324()
{
  v1 = sub_100039808();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = sub_1000397C8();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_100039798();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnnotationPin();
  (*(v6 + 16))(v9, v0 + *(v10 + 20), v5);
  v11 = (*(v6 + 88))(v9, v5);
  if (v11 == enum case for IconAndPlatter.Shape.circle(_:))
  {
    v12 = *(v0 + *(v10 + 24));
    sub_1000397B8();
    sub_100007370(&qword_10004C740, &type metadata accessor for PinCircleShape);
    return sub_10003A398();
  }

  else
  {
    v14 = v11;
    v15 = *(v0 + *(v10 + 24));
    if (v14 == enum case for IconAndPlatter.Shape.rectangle(_:))
    {
      sub_1000397F8();
      sub_100007370(&qword_10004C748, &type metadata accessor for PinRectangleShape);
      return sub_10003A398();
    }

    else
    {
      sub_1000397B8();
      sub_100007370(&qword_10004C740, &type metadata accessor for PinCircleShape);
      v16 = sub_10003A398();
      (*(v6 + 8))(v9, v5);
      return v16;
    }
  }
}

uint64_t sub_100006608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v48 = sub_1000399C8();
  v3 = *(v48 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v48);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v41 - v8;
  v56 = sub_1000399F8();
  v51 = *(v56 - 8);
  v10 = *(v51 + 64);
  v11 = __chkstk_darwin(v56);
  v49 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v47 = v41 - v14;
  __chkstk_darwin(v13);
  v16 = v41 - v15;
  v17 = sub_100039938();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100001B2C(&qword_10004C708, &qword_10003C478);
  v22 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v44 = (v41 - v23);
  v45 = sub_100001B2C(&qword_10004C710, &qword_10003C480);
  v24 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v46 = v41 - v25;
  if (qword_10004C348 != -1)
  {
    swift_once();
  }

  v26 = sub_100004618(v17, qword_1000501D8);
  (*(v18 + 16))(v21, v26, v17);
  v42 = sub_10003A288();
  sub_10003A268();
  v27 = type metadata accessor for AnnotationPin();
  v53 = *(v27 + 32);
  sub_100017688(v9);
  v55 = enum case for ColorScheme.dark(_:);
  v28 = v3[13];
  v52 = v3 + 13;
  v54 = v28;
  v29 = v48;
  v28(v7);
  sub_1000399B8();
  v30 = v3[1];
  v30(v7, v29);
  v30(v9, v29);
  sub_10003A278();

  v31 = *(v2 + *(v27 + 24));
  v41[1] = v2;
  sub_1000399E8();

  v32 = v44;
  v33 = *(v43 + 36);
  v51 = *(v51 + 32);
  (v51)(v44 + v33, v16, v56);
  *v32 = v42;
  sub_10003A268();
  sub_100017688(v9);
  v54(v7, v55, v29);
  sub_1000399B8();
  v30(v7, v29);
  v30(v9, v29);
  sub_10003A278();

  v34 = v47;
  sub_1000399E8();

  v35 = v32;
  v36 = v46;
  sub_100007308(v35, v46, &qword_10004C708, &qword_10003C478);
  (v51)(v36 + *(v45 + 36), v34, v56);
  sub_10003A268();
  sub_100017688(v9);
  v54(v7, v55, v29);
  sub_1000399B8();
  v30(v7, v29);
  v30(v9, v29);
  sub_10003A278();

  v37 = v49;
  sub_1000399E8();

  v38 = v50;
  sub_100007308(v36, v50, &qword_10004C710, &qword_10003C480);
  v39 = sub_100001B2C(&qword_10004C718, &qword_10003C488);
  return (v51)(v38 + *(v39 + 36), v37, v56);
}

uint64_t sub_100006D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 28));
  *a2 = sub_100039DE8();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = sub_100001B2C(&qword_10004C6B8, &qword_10003C430);
  return sub_100005004(v2, a2 + *(v5 + 44));
}

uint64_t sub_100006D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationPin();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006DF4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100006E00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnnotationPin();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006E94()
{
  v1 = type metadata accessor for AnnotationPin();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = sub_1000398C8();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[5];
  v6 = sub_100039798();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = v1[8];
  sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000399C8();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
    v9 = *(v3 + v7);
  }

  sub_100006DF4(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v10 = v1[10];
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10003A458();
    (*(*(v11 - 8) + 8))(v3 + v10, v11);
  }

  else
  {
    v12 = *(v3 + v10);
  }

  return swift_deallocObject();
}

uint64_t sub_1000070C4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AnnotationPin() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_100007158(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C6C0, &qword_10003C438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000071C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C6F8, &qword_10003C468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007238(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_10004C6C0, &qword_10003C438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000072A0(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_10004C6F8, &qword_10003C468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B2C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000073FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001B74(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007460(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C780, "P*");
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = sub_100001B2C(&qword_10004C5F0, "r%");
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_100007658(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C780, "P*");
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = sub_100001B2C(&qword_10004C5F0, "r%");
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_10000785C()
{
  sub_1000079F8();
  if (v0 <= 0x3F)
  {
    sub_100007A48(319, &qword_10004C800, &type metadata accessor for FindMyRelativeDate, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100007A48(319, &qword_10004C808, &type metadata accessor for Symbol, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100007A48(319, &qword_10004C810, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100007A48(319, &qword_10004C670, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000079F8()
{
  if (!qword_10004C7F8)
  {
    v0 = sub_10003A888();
    if (!v1)
    {
      atomic_store(v0, &qword_10004C7F8);
    }
  }
}

void sub_100007A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100007AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_100001B2C(&qword_10004C858, &qword_10003C558);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  v9 = sub_100001B2C(&qword_10004C860, &qword_10003C560);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  v11 = __chkstk_darwin(v9);
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  v15 = sub_100001B2C(&qword_10004C868, &qword_10003C568);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v38 - v20;
  sub_10003A7A8();
  v42 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v21 = sub_100039D18();
  *(v21 + 1) = 0x4010000000000000;
  v21[16] = 0;
  v22 = sub_100001B2C(&qword_10004C870, &qword_10003C570);
  sub_1000084E0(a1, &v21[*(v22 + 44)]);
  v23 = sub_100039FE8();
  KeyPath = swift_getKeyPath();
  v25 = &v21[*(sub_100001B2C(&qword_10004C878, &qword_10003C5A8) + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = swift_getKeyPath();
  v27 = &v21[*(v15 + 36)];
  *v27 = v26;
  *(v27 + 1) = 1;
  v27[16] = 0;
  v39 = v14;
  sub_100007F1C();
  sub_1000080E4(v8);
  v40 = v19;
  sub_100009AB0(v21, v19, &qword_10004C868, &qword_10003C568);
  v28 = v44;
  v29 = v45;
  v30 = v8;
  v31 = *(v44 + 16);
  v31(v45, v14, v9);
  v32 = v41;
  sub_100009AB0(v30, v41, &qword_10004C858, &qword_10003C558);
  v33 = v43;
  sub_100009AB0(v19, v43, &qword_10004C868, &qword_10003C568);
  v34 = v9;
  v35 = sub_100001B2C(&qword_10004C880, &qword_10003C5E0);
  v31((v33 + *(v35 + 48)), v29, v34);
  sub_100009AB0(v32, v33 + *(v35 + 64), &qword_10004C858, &qword_10003C558);
  sub_100009B18(v30, &qword_10004C858, &qword_10003C558);
  v36 = *(v28 + 8);
  v36(v39, v34);
  sub_100009B18(v21, &qword_10004C868, &qword_10003C568);
  sub_100009B18(v32, &qword_10004C858, &qword_10003C558);
  v36(v29, v34);
  sub_100009B18(v40, &qword_10004C868, &qword_10003C568);
}

uint64_t sub_100007F1C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];

  v5 = sub_10003A128();
  v7 = v6;
  LOBYTE(v2) = v8;
  sub_100039FF8();
  v9 = sub_10003A058();
  v11 = v10;
  v13 = v12;

  sub_100009880(v5, v7, v2 & 1);

  sub_100039FC8();
  v14 = sub_10003A038();
  v16 = v15;
  LOBYTE(v5) = v17;
  sub_100009880(v9, v11, v13 & 1);

  swift_getKeyPath();
  sub_100039EF8();
  sub_100001B2C(&qword_10004C890, &qword_10003C5E8);
  sub_1000098E8();
  sub_10003A148();
  sub_100009880(v14, v16, v5 & 1);
}

uint64_t sub_1000080E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10003A4A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v41[-v9];
  v11 = sub_100001B2C(&qword_10004C860, &qword_10003C560);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v16 = &v41[-v15];
  if (*(v1 + 40))
  {
    v17 = *(v1 + 56);
    v47 = v13;
    v48 = a1;
    v18 = *(v1 + 48);
    v19 = *(v1 + 32);
    v49 = v14;
    v46 = v16;

    v20 = sub_10003A128();
    v22 = v21;
    LOBYTE(v19) = v23;
    sub_100039FE8();
    v24 = sub_10003A058();
    v43 = v25;
    v44 = v24;
    v42 = v26;
    v45 = v27;

    sub_100009880(v20, v22, v19 & 1);

    v28 = v1 + *(type metadata accessor for LabelsModule(0) + 32);
    sub_1000176B0(v10);
    (*(v4 + 104))(v8, enum case for WidgetFamily.systemSmall(_:), v3);
    sub_100009890();
    sub_10003A718();
    sub_10003A718();
    v29 = *(v4 + 8);
    v29(v8, v3);
    v29(v10, v3);
    if (v50 == v59)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }

    KeyPath = swift_getKeyPath();
    v32 = sub_100039EF8();
    v33 = v42 & 1;
    LOBYTE(v59) = v42 & 1;
    v58 = 0;
    v35 = v43;
    v34 = v44;
    v50 = v44;
    v51 = v43;
    v52 = v42 & 1;
    v53 = v45;
    v54 = KeyPath;
    v55 = v30;
    v56 = 0;
    v57 = v32;
    sub_100001B2C(&qword_10004C890, &qword_10003C5E8);
    sub_1000098E8();
    v36 = v46;
    sub_10003A148();
    sub_100009880(v34, v35, v33);

    v37 = v48;
    v38 = v47;
    (*(v49 + 32))(v48, v36, v47);
    return (*(v49 + 56))(v37, 0, 1, v38);
  }

  else
  {
    v40 = *(v14 + 56);

    return v40(a1, 1, 1);
  }
}

uint64_t sub_1000084E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a1;
  v116 = a2;
  v105 = sub_10003A458();
  v97 = *(v105 - 8);
  v2 = *(v97 + 64);
  v3 = __chkstk_darwin(v105);
  v104 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v103 = &v93 - v5;
  v6 = type metadata accessor for LabelsModule.WidgetRelativeDateText(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v115 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001B2C(&qword_10004C8D0, &qword_10003C608);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v102 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v101 = &v93 - v14;
  v15 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v111 = &v93 - v17;
  v18 = sub_100039128();
  v117 = *(v18 - 8);
  v118 = v18;
  v19 = *(v117 + 64);
  __chkstk_darwin(v18);
  v112 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100001B2C(&qword_10004C8D8, &qword_10003C610);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v114 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v113 = &v93 - v25;
  v26 = sub_100039AB8();
  v100 = *(v26 - 8);
  v27 = *(v100 + 64);
  __chkstk_darwin(v26);
  v99 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100039D98();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v31 = sub_100001B2C(&qword_10004C8E0, &qword_10003C618);
  v107 = *(v31 - 8);
  v108 = v31;
  v32 = *(v107 + 64);
  __chkstk_darwin(v31);
  v98 = &v93 - v33;
  v34 = sub_100001B2C(&qword_10004C780, "P*");
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v93 - v36;
  v38 = sub_100039398();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v93 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100001B2C(&qword_10004C8E8, &qword_10003C620);
  v44 = *(*(v43 - 8) + 64);
  v45 = __chkstk_darwin(v43 - 8);
  v110 = &v93 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v120 = &v93 - v47;
  sub_10003A7A8();
  v109 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v106 = type metadata accessor for LabelsModule(0);
  v48 = v119;
  sub_100009AB0(v119 + *(v106 + 28), v37, &qword_10004C780, "P*");
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_100009B18(v37, &qword_10004C780, "P*");
    v49 = 1;
    v50 = v117;
    v51 = v120;
    v52 = v107;
    v53 = v108;
  }

  else
  {
    v54 = *(v39 + 32);
    v94 = v42;
    v54(v42, v37, v38);
    sub_100039D88();
    v125._countAndFlagsBits = 0;
    v125._object = 0xE000000000000000;
    v95 = v38;
    sub_100039D78(v125);
    sub_100039388();
    sub_10003A2C8();
    sub_100039D58();

    v126._countAndFlagsBits = 0;
    v126._object = 0xE000000000000000;
    sub_100039D78(v126);
    sub_100039DB8();
    v55 = sub_10003A128();
    v57 = v56;
    v59 = v58;
    LODWORD(v121) = sub_100039EF8();
    v60 = sub_10003A048();
    v96 = v10;
    v61 = v60;
    v93 = v26;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    sub_100009880(v55, v57, v59 & 1);

    v121 = v61;
    v122 = v63;
    LOBYTE(v55) = v65 & 1;
    v123 = v65 & 1;
    v124 = v67;
    v68 = v99;
    sub_100039AA8();
    v69 = v98;
    sub_10003A198();
    (*(v100 + 8))(v68, v93);
    v70 = v61;
    v10 = v96;
    sub_100009880(v70, v63, v55);
    v48 = v119;

    (*(v39 + 8))(v94, v95);
    v52 = v107;
    v51 = v120;
    v71 = v69;
    v53 = v108;
    (*(v107 + 32))(v120, v71, v108);
    v49 = 0;
    v50 = v117;
  }

  (*(v52 + 56))(v51, v49, 1, v53);
  v72 = v106;
  v73 = v111;
  sub_100009AB0(v48 + *(v106 + 24), v111, &qword_10004C778, &unk_10003C4D0);
  v74 = v118;
  if ((*(v50 + 48))(v73, 1, v118) == 1)
  {
    sub_100009B18(v73, &qword_10004C778, &unk_10003C4D0);
    v75 = 1;
    v76 = v113;
  }

  else
  {
    (*(v50 + 32))(v112, v73, v74);
    sub_100039118();
    v77 = v48 + *(v72 + 36);
    v78 = v103;
    sub_1000178D8(v103);
    v79 = v104;
    sub_10003A448();
    v80 = sub_10003A438();
    v81 = *(v97 + 8);
    v82 = v105;
    v81(v79, v105);
    v81(v78, v82);
    if (v80)
    {
      v83 = sub_100039F08();
    }

    else
    {
      v83 = sub_100039EF8();
    }

    v84 = v83;
    v76 = v113;
    (*(v117 + 8))(v112, v118);
    v85 = v102;
    sub_100009B78(v115, v102);
    *(v85 + *(v9 + 36)) = v84;
    v86 = v101;
    sub_100009BDC(v85, v101);
    sub_100009BDC(v86, v76);
    v75 = 0;
  }

  (*(v10 + 56))(v76, v75, 1, v9);
  v87 = v120;
  v88 = v110;
  sub_100009AB0(v120, v110, &qword_10004C8E8, &qword_10003C620);
  v89 = v114;
  sub_100009AB0(v76, v114, &qword_10004C8D8, &qword_10003C610);
  v90 = v116;
  sub_100009AB0(v88, v116, &qword_10004C8E8, &qword_10003C620);
  v91 = sub_100001B2C(&qword_10004C8F0, &qword_10003C628);
  sub_100009AB0(v89, v90 + *(v91 + 48), &qword_10004C8D8, &qword_10003C610);
  sub_100009B18(v76, &qword_10004C8D8, &qword_10003C610);
  sub_100009B18(v87, &qword_10004C8E8, &qword_10003C620);
  sub_100009B18(v89, &qword_10004C8D8, &qword_10003C610);
  sub_100009B18(v88, &qword_10004C8E8, &qword_10003C620);
}

double sub_10000902C@<D0>(_OWORD *a1@<X8>)
{
  v61 = a1;
  v55 = sub_10003A0D8();
  v54 = *(v55 - 8);
  v1 = *(v54 + 64);
  __chkstk_darwin(v55);
  v53 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100039D98();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v57 = sub_1000396E8();
  v5 = *(v57 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v57);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10003A098();
  v9 = *(v56 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v56);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10003A0B8();
  v59 = *(v13 - 8);
  v60 = v13;
  v14 = *(v59 + 64);
  __chkstk_darwin(v13);
  v58 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_opt_self() mainBundle];
  v51._countAndFlagsBits = 0xE000000000000000;
  v69._countAndFlagsBits = 0x6F6741656D6954;
  v69._object = 0xE700000000000000;
  v78.value._countAndFlagsBits = 0;
  v78.value._object = 0;
  v17.super.isa = v16;
  v79._countAndFlagsBits = 0;
  v79._object = 0xE000000000000000;
  v18 = sub_100039648(v69, v78, v17, v79, v51);
  v20 = v19;

  v70._countAndFlagsBits = 1076113701;
  v70._object = 0xE400000000000000;
  v21 = sub_10003A6F8(v70);
  *&v65 = v18;
  *(&v65 + 1) = v20;
  *&v62 = 1076113701;
  *(&v62 + 1) = 0xE400000000000000;
  sub_100009E1C();
  v22 = sub_10003A898();

  v23 = *(v22 + 16);
  if (v21)
  {
    if (v23)
    {
      v24 = (v22 + 16 + 16 * v23);
      v25 = (v24 + 1);
LABEL_6:
      v26 = *v24;
      v27 = *v25;

      goto LABEL_8;
    }
  }

  else if (v23)
  {
    v24 = (v22 + 32);
    v25 = (v22 + 40);
    goto LABEL_6;
  }

  v26 = 0;
  v27 = 0xE000000000000000;
LABEL_8:

  (*(v9 + 104))(v12, enum case for Text.DateStyle.UnitsConfiguration.Style.brief(_:), v56);
  v28 = v58;
  sub_10003A0A8();
  sub_1000396D8();
  sub_1000396A8();
  v30 = v29;
  (*(v5 + 8))(v8, v57);
  sub_1000396A8();
  if (v30 - v31 >= 60.0)
  {
    sub_100039D88();
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    sub_100039D78(v71);
    if (!v21)
    {
      v75._countAndFlagsBits = v26;
      v75._object = v27;
      sub_100039D68(v75);

      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      sub_100039D78(v76);
      v42 = v53;
      sub_10003A0C8();
      sub_100039D48();
      (*(v54 + 8))(v42, v55);
      v77._countAndFlagsBits = 0;
      v77._object = 0xE000000000000000;
      sub_100039D78(v77);
      sub_100039DB8();
      *&v62 = sub_10003A128();
      *(&v62 + 1) = v43;
      *&v63 = v44 & 1;
      *(&v63 + 1) = v45;
      v64 = 256;
      sub_100001B2C(&qword_10004C9A0, &qword_10003C6A0);
      sub_100009E70();
      sub_100039EA8();
      goto LABEL_14;
    }

    v39 = v53;
    sub_10003A0C8();
    sub_100039D48();
    (*(v54 + 8))(v39, v55);
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    sub_100039D78(v72);
    v73._countAndFlagsBits = v26;
    v73._object = v27;
    sub_100039D68(v73);

    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    sub_100039D78(v74);
    sub_100039DB8();
    v32 = sub_10003A128();
    v34 = v32;
    v35 = v33;
    v37 = v40 & 1;
    *&v62 = v32;
    *(&v62 + 1) = v33;
    *&v63 = v40 & 1;
    *(&v63 + 1) = v41;
    LOBYTE(v64) = 1;
  }

  else
  {

    sub_100039DA8();
    v32 = sub_10003A128();
    v34 = v32;
    v35 = v33;
    *&v62 = v32;
    *(&v62 + 1) = v33;
    v37 = v36 & 1;
    *&v63 = v36 & 1;
    *(&v63 + 1) = v38;
    LOBYTE(v64) = 0;
  }

  sub_100009EEC(v32, v33, v37);

  sub_100039EA8();
  v62 = v65;
  v63 = v66;
  v64 = v67;
  sub_100001B2C(&qword_10004C9A0, &qword_10003C6A0);
  sub_100009E70();
  sub_100039EA8();
  sub_100009880(v34, v35, v37);

LABEL_14:
  (*(v59 + 8))(v28, v60);
  result = *&v65;
  v47 = v66;
  v48 = v67;
  v49 = v68;
  v50 = v61;
  *v61 = v65;
  v50[1] = v47;
  *(v50 + 32) = v48;
  *(v50 + 33) = v49;
  return result;
}

double sub_100009784@<D0>(uint64_t a1@<X8>)
{
  sub_10000902C(v6);
  v2 = v7;
  v3 = v8;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

uint64_t sub_1000097CC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100039DF8();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v3 = sub_100001B2C(&qword_10004C850, &qword_10003C550);
  return sub_100007AC8(v1, a1 + *(v3 + 44));
}

uint64_t sub_100009820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100039C68();
  *a1 = result;
  return result;
}

uint64_t sub_10000984C(uint64_t *a1)
{
  v1 = *a1;

  return sub_100039C78();
}

uint64_t sub_100009880(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100009890()
{
  result = qword_10004C888;
  if (!qword_10004C888)
  {
    sub_10003A4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C888);
  }

  return result;
}

unint64_t sub_1000098E8()
{
  result = qword_10004C898;
  if (!qword_10004C898)
  {
    sub_100001B74(&qword_10004C890, &qword_10003C5E8);
    sub_1000099A0();
    sub_1000073FC(&qword_10004C8C0, &qword_10004C8C8, &qword_10003C600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C898);
  }

  return result;
}

unint64_t sub_1000099A0()
{
  result = qword_10004C8A0;
  if (!qword_10004C8A0)
  {
    sub_100001B74(&qword_10004C8A8, &qword_10003C5F0);
    sub_1000073FC(&qword_10004C8B0, &qword_10004C8B8, &qword_10003C5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C8A0);
  }

  return result;
}

uint64_t sub_100009A78(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009AB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001B2C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100009B18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001B2C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009B78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabelsModule.WidgetRelativeDateText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004C8D0, &qword_10003C608);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000396E8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100009CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000396E8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100009D50()
{
  result = sub_1000396E8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100009E1C()
{
  result = qword_10004C998;
  if (!qword_10004C998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C998);
  }

  return result;
}

unint64_t sub_100009E70()
{
  result = qword_10004C9A8;
  if (!qword_10004C9A8)
  {
    sub_100001B74(&qword_10004C9A0, &qword_10003C6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C9A8);
  }

  return result;
}

uint64_t sub_100009EEC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100009F00()
{
  result = qword_10004C9B0;
  if (!qword_10004C9B0)
  {
    sub_100001B74(qword_10004C9B8, &qword_10003C6A8);
    sub_100009E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004C9B0);
  }

  return result;
}

void sub_100009FA0()
{
  sub_10000A1F0();
  if (v0 <= 0x3F)
  {
    sub_10000A240();
    if (v1 <= 0x3F)
    {
      sub_10000A298();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10000A058(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 76);

    return v9(v10, a2, v8);
  }
}

void *sub_10000A128(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 76);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_10000A1F0()
{
  result = qword_10004CA40;
  if (!qword_10004CA40)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10004CA40);
  }

  return result;
}

void sub_10000A240()
{
  if (!qword_10004C810)
  {
    sub_10003A4A8();
    v0 = sub_1000399D8();
    if (!v1)
    {
      atomic_store(v0, &qword_10004C810);
    }
  }
}

void sub_10000A298()
{
  if (!qword_10004CA48)
  {
    v0 = sub_1000399D8();
    if (!v1)
    {
      atomic_store(v0, &qword_10004CA48);
    }
  }
}

uint64_t sub_10000A2E8(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000A370(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v20 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v23 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v24 = (v6 + 32);
    v25 = a2;
    do
    {
      if (a2 == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = *v24;
      }

      v28 = *v23++;
      v27 = v28;
      v29 = *v5++;
      (*(*(v27 - 8) + 16))(&v22[v26], v29);
      v24 += 4;
      --v25;
    }

    while (v25);
  }

  return sub_10003A418();
}

uint64_t sub_10000A540(uint64_t a1, uint64_t a2)
{
  v4 = sub_100039E98();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_100039EA8();
}

uint64_t sub_10000A638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100039E98();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_100039EA8();
}

double sub_10000A730(uint64_t a1, double a2)
{
  v5 = sub_100039CE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 80);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);
  v14 = *(v10 + 24);
  if (*(v10 + 32) == 1)
  {
    v15 = *(v10 + 8);
    v16 = *(v10 + 24);
    v17 = *v10;
    v18 = *(v10 + 16);
  }

  else
  {

    sub_10003A858();
    v19 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    sub_10000D78C(v11, v12, v13, v14, 0);
    v20 = *(v6 + 8);
    v20(v9, v5);
    v15 = *&v25[1];

    sub_10003A858();
    v21 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    sub_10000D78C(v11, v12, v13, v14, 0);
    v20(v9, v5);
    v16 = *&v25[3];

    sub_10003A858();
    v22 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    sub_10000D78C(v11, v12, v13, v14, 0);
    v20(v9, v5);

    sub_10003A858();
    v23 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    sub_10000D78C(v11, v12, v13, v14, 0);
    v20(v9, v5);
  }

  return v15 + a2 + v16;
}

uint64_t sub_10000AA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v44 = a1;
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  v7 = sub_10003A4A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v15 = v3 + *(v4 + 84);
  sub_1000176B0(&v42 - v13);
  (*(v8 + 104))(v12, enum case for WidgetFamily.systemSmall(_:), v7);
  sub_100009890();
  sub_10003A718();
  sub_10003A718();
  v16 = *(v8 + 8);
  v16(v12, v7);
  v16(v14, v7);
  v17 = v3;
  v18 = v44;
  if (v59 == v64)
  {
    (*(v5 + 16))(&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v44);
    v19 = (*(v5 + 80) + 64) & ~*(v5 + 80);
    v20 = swift_allocObject();
    v21 = *(v18 + 24);
    *(v20 + 16) = *(v18 + 16);
    *(v20 + 24) = v21;
    v22 = *(v18 + 48);
    v42 = *(v18 + 32);
    *(v20 + 32) = v42;
    *(v20 + 48) = v22;
    (*(v5 + 32))(v20 + v19, &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    sub_100039B68();
    swift_getTupleTypeMetadata3();
    sub_10003A408();
    swift_getWitnessTable();
    sub_10003A358();
    sub_100039B68();
    sub_100039B68();
    swift_getTupleTypeMetadata2();
    sub_10003A408();
    swift_getWitnessTable();
    sub_10003A378();
    sub_100039B68();
    WitnessTable = swift_getWitnessTable();
    v48 = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
    *&v59 = sub_100039A88();
    *(&v59 + 1) = v23;
    v24 = sub_100039A98();
    *&v42 = swift_getWitnessTable();
    v25 = *(*(v24 - 8) + 16);
    v25(&v64, &v59, v24);

    v59 = v64;
    v25(&v60, &v59, v24);
    v57 = v60;
    v58 = v61;
    sub_100039B68();
    sub_100039B68();
    swift_getTupleTypeMetadata2();
    sub_10003A408();
    swift_getWitnessTable();
    sub_10003A338();
    sub_100039B68();
    v45 = swift_getWitnessTable();
    v46 = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
    sub_100039A98();
    swift_getWitnessTable();
    sub_10000A540(&v57, v24);
  }

  else
  {
    (*(v5 + 16))(&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17, v44);
    v26 = (*(v5 + 80) + 64) & ~*(v5 + 80);
    v27 = swift_allocObject();
    v28 = *(v18 + 24);
    *(v27 + 16) = *(v18 + 16);
    *(v27 + 24) = v28;
    v29 = *(v18 + 48);
    v42 = *(v18 + 32);
    *(v27 + 32) = v42;
    *(v27 + 48) = v29;
    (*(v5 + 32))(v27 + v26, &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    sub_100039B68();
    swift_getTupleTypeMetadata3();
    sub_10003A408();
    swift_getWitnessTable();
    sub_10003A358();
    sub_100039B68();
    sub_100039B68();
    sub_100039B68();
    swift_getTupleTypeMetadata2();
    sub_10003A408();
    swift_getWitnessTable();
    sub_10003A338();
    sub_100039B68();
    v62 = swift_getWitnessTable();
    v63 = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
    *&v59 = sub_100039A88();
    *(&v59 + 1) = v30;
    v31 = sub_100039A98();
    *&v42 = swift_getWitnessTable();
    v32 = *(*(v31 - 8) + 16);
    v32(&v64, &v59, v31);

    v59 = v64;
    v32(&v60, &v59, v31);
    v57 = v60;
    v58 = v61;
    sub_100039B68();
    swift_getTupleTypeMetadata2();
    sub_10003A408();
    swift_getWitnessTable();
    sub_10003A378();
    sub_100039B68();
    v55 = swift_getWitnessTable();
    v56 = &protocol witness table for _FrameLayout;
    swift_getWitnessTable();
    v33 = sub_100039A98();
    swift_getWitnessTable();
    sub_10000A638(&v57, v33, v31);
  }

  v42 = v59;
  v34 = v44;
  v36 = *(v44 + 16);
  v35 = *(v44 + 24);
  sub_100039B68();
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A358();
  v37 = *(v34 + 32);
  sub_100039B68();
  sub_100039B68();
  swift_getTupleTypeMetadata2();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A378();
  sub_100039B68();
  v53 = swift_getWitnessTable();
  v54 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  sub_100039A98();
  sub_100039B68();
  sub_100039B68();
  swift_getTupleTypeMetadata2();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A338();
  sub_100039B68();
  v51 = swift_getWitnessTable();
  v52 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  sub_100039A98();
  v38 = sub_100039EB8();
  v39 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v49 = v39;
  v50 = v40;
  swift_getWitnessTable();
  (*(*(v38 - 8) + 16))(v43, &v59, v38);
  return sub_10000D7B0();
}

uint64_t sub_10000B710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v41 = a7;
  v42 = a8;
  v39 = a2;
  v40 = a6;
  v43 = a9;
  v37 = a4;
  sub_100039B68();
  v36 = a3;
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A358();
  v38 = a5;
  sub_100039B68();
  sub_100039B68();
  swift_getTupleTypeMetadata2();
  sub_10003A408();
  swift_getWitnessTable();
  v12 = sub_10003A378();
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  __chkstk_darwin(v12);
  v15 = v33 - v14;
  v16 = sub_100039B68();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v34 = v33 - v22;
  sub_10003A7A8();
  v33[1] = sub_10003A798();
  sub_10003A758();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  v24 = v37;
  v33[-8] = v36;
  v33[-7] = v24;
  v26 = v40;
  v25 = v41;
  v33[-6] = v38;
  v33[-5] = v26;
  v33[-4] = v25;
  v27 = v39;
  v33[-3] = v42;
  v33[-2] = v27;
  v33[-1] = a1;
  sub_10003A3D8();
  sub_10003A368();
  sub_100039A58();
  sub_100039A58();
  sub_10003A3D8();
  WitnessTable = swift_getWitnessTable();
  sub_10003A1D8();
  (*(v35 + 8))(v15, v12);
  v44 = WitnessTable;
  v45 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  v29 = v17[2];
  v30 = v34;
  v29(v34, v21, v16);
  v31 = v17[1];
  v31(v21, v16);
  v29(v43, v30, v16);
  v31(v30, v16);
}

uint64_t sub_10000BB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v61 = a8;
  v64 = a7;
  v63 = a6;
  v65 = a2;
  v75 = a9;
  v69 = *(a5 - 8);
  v13 = *(v69 + 64);
  __chkstk_darwin(a1);
  v62 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100039B68();
  v72 = *(v15 - 8);
  v16 = *(v72 + 64);
  __chkstk_darwin(v15);
  v66 = &v55 - v17;
  v70 = v18;
  v74 = sub_100039B68();
  v71 = *(v74 - 8);
  v19 = *(v71 + 64);
  v20 = __chkstk_darwin(v74);
  v68 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v73 = &v55 - v22;
  sub_100039B68();
  v23 = a3;
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  v24 = sub_10003A358();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = __chkstk_darwin(v24);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v55 - v30;
  sub_10003A7A8();
  v67 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v79 = v23;
  v80 = a4;
  v81 = a5;
  v82 = v63;
  v32 = v61;
  v83 = v64;
  v84 = v61;
  v33 = type metadata accessor for LoadedOverlayTemplate();
  sub_10000C29C(v33);
  WitnessTable = swift_getWitnessTable();
  v56 = v24;
  v34 = v29;
  v55 = v29;
  v35 = v32;
  v36 = v25[2];
  v57 = v25 + 2;
  v58 = v36;
  v59 = v31;
  v36(v31, v34, v24);
  v63 = v25[1];
  v64 = v25 + 1;
  v37 = (v63)(v34, v24);
  v38 = *(a1 + 40);
  v39 = v62;
  (*(a1 + 32))(v37);
  sub_100039A58();
  sub_10000A730(v33, v40);
  sub_10003A3D8();
  v41 = v66;
  sub_10003A1D8();
  (*(v69 + 8))(v39, a5);
  sub_10003A3B8();
  v78[4] = v35;
  v78[5] = &protocol witness table for _FrameLayout;
  v53 = v70;
  v54 = swift_getWitnessTable();
  v42 = v68;
  sub_10003A1E8();
  (*(v72 + 8))(v41, v53);
  v78[2] = v54;
  v78[3] = &protocol witness table for _FlexFrameLayout;
  v43 = v74;
  v72 = swift_getWitnessTable();
  v44 = v71;
  v45 = *(v71 + 16);
  v46 = v73;
  v45(v73, v42, v43);
  v47 = *(v44 + 8);
  v47(v42, v43);
  v48 = v55;
  v49 = v59;
  v50 = v56;
  v58(v55, v59, v56);
  v79 = v48;
  v45(v42, v46, v43);
  v80 = v42;
  v78[0] = v50;
  v78[1] = v43;
  v76 = WitnessTable;
  v77 = v72;
  sub_10000A370(&v79, 2uLL, v78);
  v47(v46, v43);
  v51 = v63;
  v63(v49, v50);
  v47(v42, v43);
  v51(v48, v50);
}

uint64_t sub_10000C29C(uint64_t a1)
{
  sub_100039DF8();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  sub_100039B68();
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  return sub_10003A348();
}

uint64_t sub_10000C394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v41 = a7;
  v42 = a8;
  v39 = a2;
  v40 = a6;
  v43 = a9;
  v37 = a4;
  sub_100039B68();
  v36 = a3;
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A358();
  v38 = a5;
  sub_100039B68();
  sub_100039B68();
  sub_100039B68();
  swift_getTupleTypeMetadata2();
  sub_10003A408();
  swift_getWitnessTable();
  v12 = sub_10003A338();
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  __chkstk_darwin(v12);
  v15 = v33 - v14;
  v16 = sub_100039B68();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = __chkstk_darwin(v16);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v34 = v33 - v22;
  sub_10003A7A8();
  v33[1] = sub_10003A798();
  sub_10003A758();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  v24 = v37;
  v33[-8] = v36;
  v33[-7] = v24;
  v26 = v40;
  v25 = v41;
  v33[-6] = v38;
  v33[-5] = v26;
  v33[-4] = v25;
  v27 = v39;
  v33[-3] = v42;
  v33[-2] = v27;
  v33[-1] = a1;
  sub_100039D28();
  sub_10003A328();
  sub_100039A58();
  sub_100039A58();
  sub_10003A3E8();
  WitnessTable = swift_getWitnessTable();
  sub_10003A1D8();
  (*(v35 + 8))(v15, v12);
  v44 = WitnessTable;
  v45 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  v29 = v17[2];
  v30 = v34;
  v29(v34, v21, v16);
  v31 = v17[1];
  v31(v21, v16);
  v29(v43, v30, v16);
  v31(v30, v16);
}

uint64_t sub_10000C810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v99 = a8;
  v88 = a7;
  v101 = a2;
  v100 = a1;
  v97 = a9;
  v93 = sub_100039CE8();
  v91 = *(v93 - 8);
  v13 = *(v91 + 64);
  v14 = __chkstk_darwin(v93);
  v89 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a5 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100039B68();
  v83 = *(v20 - 8);
  v21 = *(v83 + 64);
  __chkstk_darwin(v20);
  v98 = &v78 - v22;
  v84 = v23;
  v24 = sub_100039B68();
  v90 = *(v24 - 8);
  v25 = *(v90 + 64);
  __chkstk_darwin(v24);
  v104 = &v78 - v26;
  v92 = v27;
  v87 = sub_100039B68();
  v96 = *(v87 - 8);
  v28 = *(v96 + 64);
  v29 = __chkstk_darwin(v87);
  v95 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v86 = &v78 - v32;
  __chkstk_darwin(v31);
  v94 = &v78 - v33;
  v34 = a4;
  sub_100039B68();
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  v35 = sub_10003A358();
  v36 = *(v35 - 8);
  v37 = v36[8];
  v38 = __chkstk_darwin(v35);
  v103 = &v78 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v102 = &v78 - v40;
  sub_10003A7A8();
  v85 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v108 = a3;
  v109 = v34;
  v110 = a5;
  v111 = a6;
  v112 = v88;
  v113 = v99;
  v41 = type metadata accessor for LoadedOverlayTemplate();
  v42 = v103;
  v43 = v100;
  sub_10000C29C(v41);
  WitnessTable = swift_getWitnessTable();
  v44 = v36[2];
  v80 = v36 + 2;
  v79 = v44;
  v44(v102, v42, v35);
  v45 = v36[1];
  v88 = v36 + 1;
  v82 = v45;
  v46 = (v45)(v42, v35);
  v47 = *(v43 + 40);
  (*(v43 + 32))(v46);
  sub_100039A58();
  sub_10000A730(v41, v48);
  sub_10003A3D8();
  sub_10003A1D8();
  (*(v16 + 8))(v19, a5);
  sub_100039F88();
  v49 = v43 + *(v41 + 80);
  v50 = *v49;
  v51 = *(v49 + 8);
  v52 = *(v49 + 16);
  v53 = *(v49 + 24);
  v54 = *(v49 + 32);
  if ((v54 & 1) == 0)
  {
    v55 = *v49;

    sub_10003A858();
    v56 = sub_100039F78();
    sub_100039968();

    v57 = v89;
    sub_100039CD8();
    swift_getAtKeyPath();
    sub_10000D78C(v50, v51, v52, v53, 0);
    (*(v91 + 8))(v57, v93);
  }

  v78 = v52;
  v107[6] = v99;
  v107[7] = &protocol witness table for _FrameLayout;
  v58 = v84;
  v59 = swift_getWitnessTable();
  v60 = v98;
  sub_10003A208();
  (*(v83 + 8))(v60, v58);
  sub_100039A58();
  sub_10000A730(v41, v61);
  if (!v54)
  {

    sub_10003A858();
    v62 = sub_100039F78();
    sub_100039968();

    v63 = v89;
    sub_100039CD8();
    swift_getAtKeyPath();
    sub_10000D78C(v50, v51, v78, v53, 0);
    (*(v91 + 8))(v63, v93);
  }

  sub_10003A3A8();
  v107[4] = v59;
  v107[5] = &protocol witness table for _PaddingLayout;
  v76 = v92;
  v77 = swift_getWitnessTable();
  v64 = v86;
  v65 = v104;
  sub_10003A1E8();
  (*(v90 + 8))(v65, v76);
  v107[2] = v77;
  v107[3] = &protocol witness table for _FlexFrameLayout;
  v66 = v87;
  v104 = swift_getWitnessTable();
  v67 = v96;
  v68 = *(v96 + 16);
  v69 = v94;
  v68(v94, v64, v66);
  v70 = *(v67 + 8);
  v70(v64, v66);
  v71 = v102;
  v72 = v103;
  v79(v103, v102, v35);
  v108 = v72;
  v73 = v95;
  v68(v95, v69, v66);
  v109 = v73;
  v107[0] = v35;
  v107[1] = v66;
  v105 = WitnessTable;
  v106 = v104;
  sub_10000A370(&v108, 2uLL, v107);
  v70(v69, v66);
  v74 = v82;
  v82(v71, v35);
  v70(v73, v66);
  v74(v72, v35);
}

uint64_t sub_10000D2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v44 = a5;
  v50 = a4;
  v51 = a6;
  WitnessTable = *(a3 - 8);
  v8 = *(WitnessTable + 64);
  __chkstk_darwin(a1);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v11;
  v49 = sub_100039B68();
  v46 = *(v49 - 8);
  v13 = *(v46 + 64);
  v14 = __chkstk_darwin(v49);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v47 = &v39 - v18;
  v19 = *(a2 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v17);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v39 - v24;
  sub_10003A7A8();
  v48 = sub_10003A798();
  sub_10003A758();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v27 = *(a1 + 8);
  (*a1)(isCurrentExecutor);
  v40 = v23;
  v41 = v19[2];
  v52 = v25;
  v41(v25, v23, a2);
  v42 = v19[1];
  v43 = v19 + 1;
  v28 = v42(v23, a2);
  v29 = *(a1 + 24);
  (*(a1 + 16))(v28);
  sub_100039DF8();
  sub_100039D08();
  v30 = v44;
  sub_10003A1E8();
  (*(WitnessTable + 8))(v10, v12);
  v59[3] = v30;
  v59[4] = &protocol witness table for _FlexFrameLayout;
  v31 = v49;
  WitnessTable = swift_getWitnessTable();
  v33 = v46;
  v32 = v47;
  v34 = *(v46 + 16);
  v34(v47, v16, v31);
  v35 = *(v33 + 8);
  v35(v16, v31);
  v36 = v40;
  v41(v40, v52, a2);
  v57 = 0;
  v58 = 1;
  v59[0] = v36;
  v59[1] = &v57;
  v34(v16, v32, v31);
  v59[2] = v16;
  v56[0] = a2;
  v56[1] = &type metadata for Spacer;
  v56[2] = v31;
  v53 = v50;
  v54 = &protocol witness table for Spacer;
  v55 = WitnessTable;
  sub_10000A370(v59, 3uLL, v56);
  v35(v32, v31);
  v37 = v42;
  v42(v52, a2);
  v35(v16, v31);
  v37(v36, a2);
}

uint64_t sub_10000D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10000D7B8()
{
  v12 = v0[1];
  v13 = v0[2];
  v14 = v0[3];
  v1 = type metadata accessor for LoadedOverlayTemplate();
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80));
  v4 = *(v3 + 1);

  v5 = *(v3 + 3);

  v6 = *(v3 + 5);

  v7 = *(v1 + 76);
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10003A4A8();
    (*(*(v8 - 8) + 8))(&v3[v7], v8);
  }

  else
  {
    v9 = *&v3[v7];
  }

  v10 = &v3[*(v1 + 80)];
  sub_10000D78C(*v10, *(v10 + 1), *(v10 + 2), *(v10 + 3), v10[32]);
  return swift_deallocObject();
}

uint64_t sub_10000D930(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = *(type metadata accessor for LoadedOverlayTemplate() - 8);
  v11 = v2 + ((*(v10 + 80) + 64) & ~*(v10 + 80));

  return a2(a1, v11, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10000DA28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[7];
  return sub_10000D2AC(v1[8], v1[2], v1[3], v1[5], v1[6], a1);
}

uint64_t sub_10000DA70(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  sub_100039B68();
  swift_getTupleTypeMetadata3();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A358();
  sub_100039B68();
  sub_100039B68();
  swift_getTupleTypeMetadata2();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A378();
  sub_100039B68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100039A98();
  sub_100039B68();
  sub_100039B68();
  swift_getTupleTypeMetadata2();
  sub_10003A408();
  swift_getWitnessTable();
  sub_10003A338();
  sub_100039B68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100039A98();
  sub_100039EB8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10000DD64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000DEB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for CenteredInformationView()
{
  result = qword_10004CAB0;
  if (!qword_10004CAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000E03C()
{
  sub_1000079F8();
  if (v0 <= 0x3F)
  {
    sub_10000E128(319, &qword_10004C810, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      sub_10000E128(319, &qword_10004C660, &type metadata accessor for ColorScheme);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000E128(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000399D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for CenteredInformationView.Style(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CenteredInformationView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CenteredInformationView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_10000E208@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v32 = sub_100039F48();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin(v32);
  v29 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10003A4A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v25[-v11];
  v13 = sub_100039DE8();
  v27 = v1[8];
  v28 = v13;
  v54 = 0;
  sub_10000E6C8(&v39);
  v62 = v45;
  v63 = v46;
  v64 = v47;
  v58 = v41;
  v59 = v42;
  v60 = v43;
  v61 = v44;
  v56 = v39;
  v57 = v40;
  v65[6] = v45;
  v65[7] = v46;
  v65[8] = v47;
  v65[2] = v41;
  v65[3] = v42;
  v65[4] = v43;
  v65[5] = v44;
  v65[0] = v39;
  v65[1] = v40;
  sub_100009AB0(&v56, &v34, &qword_10004CAF8, &qword_10003C7B8);
  sub_100009B18(v65, &qword_10004CAF8, &qword_10003C7B8);
  *&v53[87] = v61;
  *&v53[103] = v62;
  *&v53[119] = v63;
  *&v53[135] = v64;
  *&v53[23] = v57;
  *&v53[39] = v58;
  *&v53[55] = v59;
  *&v53[71] = v60;
  *&v53[7] = v56;
  v26 = v54;
  v14 = sub_100039F88();
  v15 = v1[9];
  v16 = v1[10];
  v17 = v1 + *(type metadata accessor for CenteredInformationView() + 28);
  sub_1000176B0(v12);
  (*(v6 + 104))(v10, enum case for WidgetFamily.systemSmall(_:), v5);
  sub_10000EEBC(&qword_10004CB00, &type metadata accessor for WidgetFamily);
  sub_10003A608();
  v18 = *(v6 + 8);
  v18(v10, v5);
  v18(v12, v5);
  sub_1000399A8();
  *(&v35[6] + 1) = *&v53[96];
  *(&v35[7] + 1) = *&v53[112];
  *(&v35[8] + 1) = *&v53[128];
  *(&v35[2] + 1) = *&v53[32];
  *(&v35[3] + 1) = *&v53[48];
  *(&v35[4] + 1) = *&v53[64];
  *(&v35[5] + 1) = *&v53[80];
  *(v35 + 1) = *v53;
  v55 = 0;
  *&v34 = v28;
  *(&v34 + 1) = v27;
  LOBYTE(v35[0]) = v26;
  *&v35[9] = *&v53[143];
  *(&v35[1] + 1) = *&v53[16];
  BYTE8(v35[9]) = v14;
  *&v36 = v19;
  *(&v36 + 1) = v20;
  *&v37 = v21;
  *(&v37 + 1) = v22;
  v38 = 0;
  v23 = v29;
  sub_100039F38();
  v33 = v2;
  sub_10003A3D8();
  sub_100001B2C(&qword_10004CB08, &unk_10003C7C0);
  sub_100001B2C(&qword_10004CB10, &unk_10003C950);
  sub_10000ED1C();
  sub_10000EDD4();
  sub_10003A1B8();
  (*(v30 + 8))(v23, v32);
  v49 = v35[9];
  v50 = v36;
  v51 = v37;
  v45 = v35[5];
  v46 = v35[6];
  v52 = v38;
  v47 = v35[7];
  v48 = v35[8];
  v41 = v35[1];
  v42 = v35[2];
  v43 = v35[3];
  v44 = v35[4];
  v39 = v34;
  v40 = v35[0];
  return sub_100009B18(&v39, &qword_10004CB08, &unk_10003C7C0);
}

uint64_t sub_10000E6C8@<X0>(_OWORD *a1@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000E8C0(&v12);
  sub_10000EA70(&v17);
  v9 = v14;
  v10 = v15;
  v2 = v13;
  v7 = v12;
  v8 = v13;
  v26[2] = v19;
  v26[3] = v20;
  v26[0] = v17;
  v26[1] = v18;
  v11 = v16;
  v27 = v21;
  v23 = v16;
  *v6 = v16;
  v22[2] = v14;
  v22[3] = v15;
  v22[0] = v12;
  v22[1] = v13;
  v24[2] = v19;
  v24[3] = v20;
  v25 = v21;
  v24[0] = v17;
  v24[1] = v18;
  *&v6[8] = v17;
  *&v6[72] = v21;
  *&v6[56] = v20;
  *&v6[40] = v19;
  *&v6[24] = v18;
  v3 = v12;
  v4 = v15;
  a1[2] = v14;
  a1[3] = v4;
  *a1 = v3;
  a1[1] = v2;
  a1[7] = *&v6[48];
  a1[8] = *&v6[64];
  a1[5] = *&v6[16];
  a1[6] = *&v6[32];
  a1[4] = *v6;
  sub_100009AB0(v22, v28, &qword_10004CB50, &qword_10003C848);
  sub_100009AB0(v24, v28, &qword_10004CB58, &qword_10003C850);
  sub_100009B18(v26, &qword_10004CB58, &qword_10003C850);
  v28[2] = v9;
  v28[3] = v10;
  v29 = v11;
  v28[0] = v7;
  v28[1] = v8;
  sub_100009B18(v28, &qword_10004CB50, &qword_10003C848);
}

uint64_t sub_10000E8C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];

  v7 = sub_10003A128();
  v9 = v8;
  LOBYTE(v4) = v10;
  sub_100039FF8();
  sub_100039FC8();
  sub_100039FD8();

  v11 = sub_10003A058();
  v13 = v12;
  v15 = v14;

  sub_100009880(v7, v9, v4 & 1);

  sub_100039FA8();
  v16 = sub_10003A058();
  v18 = v17;
  LOBYTE(v5) = v19;
  v21 = v20;

  sub_100009880(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  result = sub_100039EF8();
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 3;
  *(a1 + 48) = 0;
  *(a1 + 56) = v23;
  *(a1 + 64) = 1;
  *(a1 + 68) = result;
  return result;
}

void sub_10000EA70(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    v4 = *(v1 + 56);
    v5 = *(v1 + 48);
    v6 = *(v1 + 32);

    v7 = sub_10003A128();
    v9 = v8;
    v11 = v10;
    sub_100039FE8();
    v12 = sub_10003A058();
    v3 = v13;
    v15 = v14;
    v17 = v16;

    sub_100009880(v7, v9, v11 & 1);

    KeyPath = swift_getKeyPath();
    v19 = swift_getKeyPath();
    v20 = v15 & 1;
    v21 = (sub_100039F08() << 32) | 1;
    v22 = 4;
  }

  else
  {
    v12 = 0;
    v17 = 0;
    KeyPath = 0;
    v22 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0;
  }

  *a1 = v12;
  a1[1] = v3;
  a1[2] = v20;
  a1[3] = v17;
  a1[4] = KeyPath;
  a1[5] = v22;
  a1[6] = 0;
  a1[7] = v19;
  a1[8] = v21;
}

uint64_t sub_10000EBE4@<X0>(uint64_t *a1@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();
  v2 = *(type metadata accessor for CenteredInformationView() + 32);
  v3 = (a1 + *(sub_100001B2C(&qword_10004CB10, &unk_10003C950) + 36));
  v4 = sub_100001B2C(&qword_10004CB48, &qword_10003C7D8);
  sub_100017688(v3 + *(v4 + 28));
  KeyPath = swift_getKeyPath();

  *v3 = KeyPath;
  return result;
}

unint64_t sub_10000ED1C()
{
  result = qword_10004CB18;
  if (!qword_10004CB18)
  {
    sub_100001B74(&qword_10004CB08, &unk_10003C7C0);
    sub_1000073FC(&qword_10004CB20, &qword_10004CB28, &qword_10003C7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CB18);
  }

  return result;
}

unint64_t sub_10000EDD4()
{
  result = qword_10004CB30;
  if (!qword_10004CB30)
  {
    sub_100001B74(&qword_10004CB10, &unk_10003C950);
    sub_10000EEBC(&qword_10004CB38, type metadata accessor for WidgetBlurBackground);
    sub_1000073FC(&qword_10004CB40, &qword_10004CB48, &qword_10003C7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CB30);
  }

  return result;
}

uint64_t sub_10000EEBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EF24()
{
  sub_100001B74(&qword_10004CB08, &unk_10003C7C0);
  sub_100001B74(&qword_10004CB10, &unk_10003C950);
  sub_10000ED1C();
  sub_10000EDD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000EFC8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100039958();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_10000F160(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100039958();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for EmptyStateView()
{
  result = qword_10004CBB8;
  if (!qword_10004CBB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F330()
{
  sub_100039958();
  if (v0 <= 0x3F)
  {
    sub_10000E128(319, &qword_10004C810, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      sub_10000A298();
      if (v2 <= 0x3F)
      {
        sub_10000E128(319, &qword_10004C660, &type metadata accessor for ColorScheme);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

double sub_10000F460@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_100039DE8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100001B2C(&qword_10004CC10, &qword_10003C9C8);
  sub_10000F59C(a1, a2 + *(v4 + 44));
  sub_100039A58();
  sub_100039A58();
  sub_10003A3D8();
  sub_100039A48();

  v5 = (a2 + *(sub_100001B2C(&qword_10004CC18, &qword_10003C9D0) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_10000F59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003A4A8();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  v6 = __chkstk_darwin(v4);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v69 = &v61 - v8;
  v9 = sub_100039CE8();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  __chkstk_darwin(v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100001B2C(&qword_10004CC20, &qword_10003C9D8);
  v13 = *(*(v68 - 8) + 64);
  v14 = __chkstk_darwin(v68);
  v74 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = (&v61 - v16);
  sub_10003A7A8();
  v73 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100039A58();
  *v17 = sub_10003A3D8();
  v17[1] = v18;
  v19 = sub_100001B2C(&qword_10004CC28, &qword_10003C9E0);
  sub_10000FFCC(a1, v17 + *(v19 + 44));
  v20 = v17 + *(sub_100001B2C(&qword_10004CC30, &qword_10003C9E8) + 36);
  *v20 = 0;
  *(v20 + 4) = 1;
  v21 = type metadata accessor for EmptyStateView();
  v67 = (a1 + v21[6]);
  v22 = *v67;
  v23 = a1 + v21[8];
  v24 = *v23;
  v25 = *(v23 + 8);
  v27 = *(v23 + 16);
  v26 = *(v23 + 24);
  if (*(v23 + 32) == 1)
  {
    v105 = *v23;
    v106 = v25;
    v107 = v27;
    v108 = v26;
  }

  else
  {

    sub_10003A858();
    v63 = a1;
    v28 = sub_100039F78();
    v64 = a2;
    v29 = v28;
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    sub_10000D78C(v24, v25, v27, v26, 0);
    v61 = v21;
    v62 = v17;
    v30 = *(v65 + 8);
    v65 = v26;
    v31 = v66;
    v30(v12, v66);

    sub_10003A858();
    v32 = sub_100039F78();
    a2 = v64;
    sub_100039968();

    a1 = v63;
    sub_100039CD8();
    swift_getAtKeyPath();
    sub_10000D78C(v24, v25, v27, v65, 0);
    v30(v12, v31);
    v21 = v61;
    v17 = v62;
  }

  sub_10003A3D8();
  sub_100039A48();
  v33 = (v17 + *(v68 + 36));
  v34 = v110;
  *v33 = v109;
  v33[1] = v34;
  v33[2] = v111;
  sub_10000FCE0(v96);
  v102 = v96[2];
  v103 = v96[3];
  v104[0] = v97[0];
  *(v104 + 12) = *(v97 + 12);
  v100 = v96[0];
  v101 = v96[1];
  LODWORD(v68) = sub_100039F88();
  v35 = v67[1];
  v36 = v67[2];
  v37 = a1 + v21[7];
  v38 = v69;
  sub_1000176B0(v69);
  v40 = v70;
  v39 = v71;
  v41 = v72;
  (*(v71 + 104))(v70, enum case for WidgetFamily.systemSmall(_:), v72);
  sub_100011518(&qword_10004CB00, &type metadata accessor for WidgetFamily);
  sub_10003A608();
  v42 = *(v39 + 8);
  v42(v40, v41);
  v42(v38, v41);
  sub_1000399A8();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v77 = v102;
  v78 = v103;
  v79[0] = v104[0];
  *(v79 + 12) = *(v104 + 12);
  v75 = v100;
  v76 = v101;
  v98 = 0;
  v51 = v74;
  sub_100009AB0(v17, v74, &qword_10004CC20, &qword_10003C9D8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v52 = sub_100001B2C(&qword_10004CC38, &qword_10003C9F0);
  sub_100009AB0(v51, a2 + v52[12], &qword_10004CC20, &qword_10003C9D8);
  v53 = a2 + v52[16];
  *v53 = 0;
  *(v53 + 8) = 0;
  v54 = (a2 + v52[20]);
  v82 = v77;
  v83 = v78;
  v80 = v75;
  v81 = v76;
  v84 = v79[0];
  v85 = v79[1];
  LOBYTE(v38) = v68;
  LOBYTE(v86) = v68;
  *(&v86 + 1) = *v99;
  DWORD1(v86) = *&v99[3];
  *(&v86 + 1) = v44;
  *&v87[0] = v46;
  *(&v87[0] + 1) = v48;
  *&v87[1] = v50;
  BYTE8(v87[1]) = 0;
  v55 = v78;
  v54[2] = v77;
  v54[3] = v55;
  v56 = v85;
  v54[4] = v84;
  v54[5] = v56;
  v57 = v81;
  *v54 = v80;
  v54[1] = v57;
  *(v54 + 121) = *(v87 + 9);
  v58 = v87[0];
  v54[6] = v86;
  v54[7] = v58;
  v59 = a2 + v52[24];
  *v59 = 0;
  *(v59 + 8) = 0;
  sub_100011560(&v80, v88);
  sub_100009B18(v17, &qword_10004CC20, &qword_10003C9D8);
  v88[2] = v77;
  v88[3] = v78;
  v88[4] = v79[0];
  v88[5] = v79[1];
  v88[0] = v75;
  v88[1] = v76;
  v89 = v38;
  *v90 = *v99;
  *&v90[3] = *&v99[3];
  v91 = v44;
  v92 = v46;
  v93 = v48;
  v94 = v50;
  v95 = 0;
  sub_100009B18(v88, &qword_10004CC40, &qword_10003C9F8);
  sub_100009B18(v51, &qword_10004CC20, &qword_10003C9D8);
}

uint64_t sub_10000FCE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];

  v7 = sub_10003A128();
  v9 = v8;
  LOBYTE(v4) = v10;
  sub_100039FF8();
  sub_100039FB8();

  v11 = sub_10003A058();
  v13 = v12;
  v15 = v14;

  sub_100009880(v7, v9, v4 & 1);

  sub_100039FA8();
  v16 = sub_10003A058();
  v18 = v17;
  LOBYTE(v5) = v19;
  v21 = v20;

  sub_100009880(v11, v13, v15 & 1);

  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  LOBYTE(v13) = v5 & 1;
  v24 = swift_getKeyPath();
  result = sub_100039EF8();
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v13;
  *(a1 + 24) = v21;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 3;
  *(a1 + 48) = 0;
  *(a1 + 56) = v23;
  *(a1 + 64) = 1;
  *(a1 + 72) = v24;
  *(a1 + 80) = 0x3FE0000000000000;
  *(a1 + 88) = result;
  return result;
}

uint64_t sub_10000FEA0@<X0>(uint64_t *a1@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();
  v2 = *(type metadata accessor for EmptyStateView() + 36);
  v3 = (a1 + *(sub_100001B2C(&qword_10004CB10, &unk_10003C950) + 36));
  v4 = sub_100001B2C(&qword_10004CB48, &qword_10003C7D8);
  sub_100017688(v3 + *(v4 + 28));
  KeyPath = swift_getKeyPath();

  *v3 = KeyPath;
  return result;
}

uint64_t sub_10000FFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a1;
  v113 = a2;
  v110 = sub_100039938();
  v109 = *(v110 - 8);
  v2 = *(v109 + 64);
  __chkstk_darwin(v110);
  v108 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001B2C(&qword_10004CC48, &qword_10003CA90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v104 = &v95 - v6;
  v106 = sub_100001B2C(&qword_10004CC50, &qword_10003CA98);
  v7 = *(*(v106 - 8) + 64);
  v8 = __chkstk_darwin(v106);
  v112 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v111 = &v95 - v10;
  v103 = sub_1000399C8();
  v102 = *(v103 - 8);
  v11 = *(v102 + 64);
  v12 = __chkstk_darwin(v103);
  v100 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v95 - v14;
  v16 = sub_100001B2C(&qword_10004CC58, &qword_10003CAA0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v95 - v18;
  v117 = sub_10003A2A8();
  v20 = *(v117 - 8);
  v21 = v20[8];
  __chkstk_darwin(v117);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100039958();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_100001B2C(&qword_10004CC60, &qword_10003CAA8);
  v120 = *(v122 - 8);
  v29 = *(v120 + 64);
  v30 = __chkstk_darwin(v122);
  v107 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v121 = &v95 - v33;
  v34 = __chkstk_darwin(v32);
  v118 = &v95 - v35;
  v36 = __chkstk_darwin(v34);
  v131 = &v95 - v37;
  __chkstk_darwin(v36);
  v39 = &v95 - v38;
  v99 = sub_100001B2C(&qword_10004CC68, &qword_10003CAB0);
  v40 = *(*(v99 - 8) + 64);
  v41 = __chkstk_darwin(v99);
  v119 = &v95 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v97 = &v95 - v44;
  __chkstk_darwin(v43);
  v130 = &v95 - v45;
  sub_10003A7A8();
  v105 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_10004C368 != -1)
  {
    swift_once();
  }

  v46 = sub_100004618(v24, qword_100050238);
  v47 = *(v25 + 16);
  v114 = v24;
  v129 = v47;
  v98 = v25 + 16;
  v47(v28, v46, v24);
  v96 = v28;
  sub_10003A318();
  v48 = v20[13];
  v49 = v23;
  v128 = enum case for Image.ResizingMode.stretch(_:);
  v50 = v117;
  v126 = v48;
  v127 = v20 + 13;
  v48(v23);
  sub_10003A308();

  v52 = v20[1];
  v51 = v20 + 1;
  v125 = v52;
  v52(v23, v50);
  sub_10003A488();
  v53 = sub_10003A498();
  v54 = (*(v53 - 8) + 56);
  v115 = *v54;
  v116 = v53;
  v124 = v54;
  v115(v19, 0, 1);
  v55 = v39;
  sub_10003A2F8();

  sub_100009B18(v19, &qword_10004CC58, &qword_10003CAA0);
  v101 = type metadata accessor for EmptyStateView();
  v56 = v123 + *(v101 + 36);
  v57 = v15;
  sub_100017688(v15);
  v58 = v102;
  v59 = v100;
  v60 = v103;
  (*(v102 + 104))(v100, enum case for ColorScheme.light(_:), v103);
  LOBYTE(v56) = sub_1000399B8();
  v61 = *(v58 + 8);
  v61(v59, v60);
  v61(v57, v60);
  if (v56)
  {
    v62 = 0.3;
  }

  else
  {
    v62 = 1.0;
  }

  v63 = v97;
  (*(v120 + 32))(v97, v55, v122);
  *(v63 + *(v99 + 36)) = v62;
  sub_1000116DC(v63, v130);
  if (qword_10004C360 != -1)
  {
    swift_once();
  }

  v64 = v114;
  v65 = sub_100004618(v114, qword_100050220);
  v66 = v96;
  v129(v96, v65, v64);
  sub_10003A318();
  v67 = v117;
  v126(v49, v128, v117);
  sub_10003A308();

  v125(v49, v67);
  sub_10003A488();
  (v115)(v19, 0, 1, v116);
  sub_10003A2F8();

  sub_100009B18(v19, &qword_10004CC58, &qword_10003CAA0);
  v68 = v49;
  if (qword_10004C358 != -1)
  {
    swift_once();
  }

  v69 = sub_100004618(v64, qword_100050208);
  v129(v66, v69, v64);
  sub_10003A318();
  v126(v49, v128, v67);
  sub_10003A308();

  v125(v49, v67);
  v70 = enum case for Image.TemplateRenderingMode.template(_:);
  v71 = sub_10003A2D8();
  v103 = v51;
  v72 = v67;
  v73 = v66;
  v74 = v71;
  v75 = v68;
  v76 = *(v71 - 8);
  v77 = v104;
  (*(v76 + 104))(v104, v70, v71);
  (*(v76 + 56))(v77, 0, 1, v74);
  sub_10003A2B8();

  sub_100009B18(v77, &qword_10004CC48, &qword_10003CA90);
  sub_10003A478();
  v79 = v115;
  v78 = v116;
  (v115)(v19, 0, 1, v116);
  v80 = v111;
  sub_10003A2F8();

  sub_100009B18(v19, &qword_10004CC58, &qword_10003CAA0);
  if (qword_10004C348 != -1)
  {
    swift_once();
  }

  v81 = v110;
  v82 = sub_100004618(v110, qword_1000501D8);
  (*(v109 + 16))(v108, v82, v81);
  *(v80 + *(v106 + 36)) = sub_10003A288();
  v129(v73, v123 + *(v101 + 20), v114);
  sub_10003A318();
  v126(v75, v128, v72);
  sub_10003A308();

  v125(v75, v72);
  sub_10003A488();
  v79(v19, 0, 1, v78);
  v83 = v118;
  sub_10003A2F8();

  sub_100009B18(v19, &qword_10004CC58, &qword_10003CAA0);
  v84 = v119;
  sub_100009AB0(v130, v119, &qword_10004CC68, &qword_10003CAB0);
  v86 = v120;
  v85 = v121;
  v87 = *(v120 + 16);
  v88 = v122;
  v87(v121, v131, v122);
  v89 = v112;
  sub_100009AB0(v80, v112, &qword_10004CC50, &qword_10003CA98);
  v90 = v107;
  v87(v107, v83, v88);
  v91 = v113;
  sub_100009AB0(v84, v113, &qword_10004CC68, &qword_10003CAB0);
  v92 = sub_100001B2C(&qword_10004CC70, &qword_10003CAB8);
  v87((v91 + v92[12]), v85, v88);
  sub_100009AB0(v89, v91 + v92[16], &qword_10004CC50, &qword_10003CA98);
  v87((v91 + v92[20]), v90, v88);
  v93 = *(v86 + 8);
  v93(v118, v88);
  sub_100009B18(v80, &qword_10004CC50, &qword_10003CA98);
  v93(v131, v88);
  sub_100009B18(v130, &qword_10004CC68, &qword_10003CAB0);
  v93(v90, v88);
  sub_100009B18(v89, &qword_10004CC50, &qword_10003CA98);
  v93(v121, v88);
  sub_100009B18(v119, &qword_10004CC68, &qword_10003CAB0);
}

uint64_t sub_100010EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v4 = sub_100039F48();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001110C(v2, v12);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_100011364(v12, v14 + v13);
  v18 = sub_1000113C8;
  v19 = v14;
  sub_100039F38();
  v17 = v2;
  sub_10003A3D8();
  sub_100001B2C(&qword_10004CC00, &qword_10003C948);
  sub_100001B2C(&qword_10004CB10, &unk_10003C950);
  sub_1000073FC(&qword_10004CC08, &qword_10004CC00, &qword_10003C948);
  sub_10000EDD4();
  sub_10003A1B8();
  (*(v5 + 8))(v9, v4);
}

uint64_t sub_10001110C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011170()
{
  v1 = type metadata accessor for EmptyStateView();
  v2 = *(*(v1 - 1) + 64);
  v3 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = v1[5];
  v7 = sub_100039958();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = v1[7];
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10003A4A8();
    (*(*(v9 - 8) + 8))(v3 + v8, v9);
  }

  else
  {
    v10 = *(v3 + v8);
  }

  v11 = v3 + v1[8];
  sub_10000D78C(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32));
  v12 = v1[9];
  sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000399C8();
    (*(*(v13 - 8) + 8))(v3 + v12, v13);
  }

  else
  {
    v14 = *(v3 + v12);
  }

  return swift_deallocObject();
}

uint64_t sub_100011364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmptyStateView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1000113C8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EmptyStateView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10000F460(v4, a1);
}

uint64_t sub_100011458@<X0>(uint64_t a1@<X8>)
{
  result = sub_100039CB8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10001148C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100039CC8();
}

uint64_t sub_1000114BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100039C48();
  *a1 = result;
  return result;
}

uint64_t sub_100011518(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100011560(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004CC40, &qword_10003C9F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000115D0@<X0>(uint64_t a1@<X8>)
{
  result = sub_100039CB8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100011604(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100039CC8();
}

uint64_t sub_100011634@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100039C48();
  *a1 = result;
  return result;
}

uint64_t sub_100011688@<X0>(void *a1@<X8>)
{
  result = sub_100039C28();
  *a1 = v3;
  return result;
}

uint64_t sub_1000116DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004CC68, &qword_10003CAB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001174C()
{
  sub_100001B74(&qword_10004CC00, &qword_10003C948);
  sub_100001B74(&qword_10004CB10, &unk_10003C950);
  sub_1000073FC(&qword_10004CC08, &qword_10004CC00, &qword_10003C948);
  sub_10000EDD4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100011808(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10001182C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100011880(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1000118DC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_100011920(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001B2C(&qword_10004C780, "P*");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000119F0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001B2C(&qword_10004C780, "P*");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100011AC0()
{
  sub_100011B74();
  if (v0 <= 0x3F)
  {
    sub_100018448(319, &qword_10004C808, &type metadata accessor for Symbol, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100011B74()
{
  result = qword_10004CCE0;
  if (!qword_10004CCE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004CCE0);
  }

  return result;
}

uint64_t sub_100011BE4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C780, "P*");
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v13 = type metadata accessor for LoadedView.Callout(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v14 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[12];
    goto LABEL_15;
  }

  v15 = sub_100001B2C(&qword_10004C5F0, "r%");
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[13];
    goto LABEL_15;
  }

  v17 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[16];

  return v18(v19, a2, v17);
}

uint64_t sub_100011E78(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100001B2C(&qword_10004C778, &unk_10003C4D0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100001B2C(&qword_10004C780, "P*");
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for LoadedView.Callout(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v14 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[12];
    goto LABEL_13;
  }

  v15 = sub_100001B2C(&qword_10004C5F0, "r%");
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[13];
    goto LABEL_13;
  }

  v17 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[16];

  return v18(v19, a2, a2, v17);
}

void sub_100012118()
{
  sub_10001243C(319, &qword_10004C7F8, &type metadata for LocalizedStringKey, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100018448(319, &qword_10004C800, &type metadata accessor for FindMyRelativeDate, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100018448(319, &qword_10004C808, &type metadata accessor for Symbol, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10001243C(319, &qword_10004CD78, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          type metadata accessor for LoadedView.Callout(319);
          if (v4 <= 0x3F)
          {
            sub_100018448(319, &qword_10004C810, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_100018448(319, &qword_10004C670, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                sub_1000123D8();
                if (v7 <= 0x3F)
                {
                  sub_10001243C(319, &qword_10004CA48, &type metadata for EdgeInsets, &type metadata accessor for Environment);
                  if (v8 <= 0x3F)
                  {
                    sub_100018448(319, &qword_10004C660, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000123D8()
{
  if (!qword_10004CD80)
  {
    sub_100001B74(&unk_10004CD88, &qword_10003CB70);
    v0 = sub_1000399D8();
    if (!v1)
    {
      atomic_store(v0, &qword_10004CD80);
    }
  }
}

void sub_10001243C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000124A8(void (*a1)(__int128 *__return_ptr, _OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v21 = &_swiftEmptyArrayStorage;
  sub_100025E04(0, v4, 0);
  v5 = &_swiftEmptyArrayStorage;
  for (i = (a3 + 48); ; i += 2)
  {
    v9 = *i;
    v18[0] = *(i - 1);
    v18[1] = v9;
    a1(&v19, v18);
    if (v3)
    {
      break;
    }

    v10 = v19;
    v11 = v20;
    v21 = v5;
    v13 = v5[2];
    v12 = v5[3];
    if (v13 >= v12 >> 1)
    {
      v16 = v20;
      v17 = v19;
      sub_100025E04((v12 > 1), v13 + 1, 1);
      v11 = v16;
      v10 = v17;
      v5 = v21;
    }

    v5[2] = v13 + 1;
    v14 = &v5[4 * v13];
    *(v14 + 2) = v10;
    *(v14 + 3) = v11;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000125BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100039CE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for LoadedView(0);
  sub_100009AB0(v1 + *(v12 + 52), v11, &qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10003A458();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10003A858();
    v16 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1000127C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v23 = sub_100039F48();
  v21 = *(v23 - 8);
  v3 = *(v21 + 64);
  __chkstk_darwin(v23);
  v20 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LoadedView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = sub_100001B2C(&qword_10004CDE8, &qword_10003CBC8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v20 - v10);
  sub_100017DE4(v1, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadedView);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_100017088(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_100017DE4(v2, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadedView);
  v14 = swift_allocObject();
  sub_100017088(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12);
  sub_100017DE4(v2, &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadedView);
  v15 = swift_allocObject();
  sub_100017088(&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v12);
  *v11 = sub_1000170EC;
  v11[1] = v13;
  v11[2] = sub_10001A284;
  v11[3] = v14;
  v11[4] = sub_100017550;
  v11[5] = v15;
  v16 = *(v8 + 76);
  *(v11 + v16) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v17 = v11 + *(v8 + 80);
  *v17 = swift_getKeyPath();
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v17[32] = 0;
  v18 = v20;
  sub_100039F38();
  v24 = v2;
  sub_10003A3D8();
  sub_100001B2C(&qword_10004CDF0, &qword_10003CC38);
  sub_1000073FC(&qword_10004CDF8, &qword_10004CDE8, &qword_10003CBC8);
  sub_1000179B0();
  sub_10003A1B8();
  (*(v21 + 8))(v18, v23);
  return sub_100009B18(v11, &qword_10004CDE8, &qword_10003CBC8);
}

uint64_t sub_100012B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100039CE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100012E44(a2);
  KeyPath = swift_getKeyPath();
  v10 = type metadata accessor for LoadedView(0);
  v11 = a1 + *(v10 + 56);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (*(v11 + 16) != 1)
  {

    sub_10003A858();
    v23 = v10;
    v14 = sub_100039F78();
    v22 = v4;
    v15 = v14;
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();
    sub_10001707C(v12, v13, 0);
    v10 = v23;
    (*(v5 + 8))(v8, v22);
    v12 = v24;
    v13 = v25;
  }

  v16 = (a2 + *(sub_100001B2C(&qword_10004CE10, &qword_10003CC40) + 36));
  *v16 = KeyPath;
  v16[1] = v12;
  v16[2] = v13;
  v17 = swift_getKeyPath();
  v18 = *(v10 + 64);
  v19 = (a2 + *(sub_100001B2C(&qword_10004CDF0, &qword_10003CC38) + 36));
  v20 = sub_100001B2C(&qword_10004CB48, &qword_10003C7D8);
  sub_1000176D8(&qword_10004C6C8, &unk_10003C440, &type metadata accessor for ColorScheme, v19 + *(v20 + 28));

  *v19 = v17;
  return result;
}

uint64_t sub_100012E44@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v56 = type metadata accessor for WidgetGridBackground();
  v2 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v4 = (&v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = type metadata accessor for WidgetBlurBackground();
  v5 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = sub_100001B2C(&qword_10004CE60, &qword_10003CCD0);
  v8 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v54 = &v45 - v9;
  v47 = sub_100001B2C(&qword_10004CE68, &unk_10003CCD8);
  v10 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v49 = &v45 - v11;
  v53 = sub_100001B2C(&qword_10004CE30, &qword_10003CC50);
  v12 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v51 = &v45 - v13;
  v48 = sub_100001B2C(&qword_10004CE40, &qword_10003CC58);
  v14 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v45 = (&v45 - v15);
  v16 = sub_100001B2C(&qword_10004CC58, &qword_10003CAA0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v45 - v18;
  v20 = sub_10003A2A8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100001B2C(&qword_10004CE70, &qword_10003CCE8);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v45 - v27;
  v29 = *(type metadata accessor for LoadedView(0) + 40);
  v46 = v1;
  v30 = *(v1 + v29);
  if (!v30)
  {
    *v7 = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
    swift_storeEnumTagMultiPayload();
    sub_100017DE4(v7, v49, type metadata accessor for WidgetBlurBackground);
    swift_storeEnumTagMultiPayload();
    sub_1000073FC(&qword_10004CE38, &qword_10004CE40, &qword_10003CC58);
    sub_100018930(&qword_10004CB38, type metadata accessor for WidgetBlurBackground);
    v33 = v51;
    sub_100039EA8();
    sub_100009AB0(v33, v54, &qword_10004CE30, &qword_10003CC50);
    swift_storeEnumTagMultiPayload();
    sub_100017BDC();
    sub_100018930(&qword_10004CE48, type metadata accessor for WidgetGridBackground);
    sub_100039EA8();
    sub_100009B18(v33, &qword_10004CE30, &qword_10003CC50);
    v31 = type metadata accessor for WidgetBlurBackground;
    v32 = v7;
    return sub_100017E4C(v32, v31);
  }

  if (v30 == 1)
  {
    *v4 = swift_getKeyPath();
    sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
    swift_storeEnumTagMultiPayload();
    sub_100017DE4(v4, v54, type metadata accessor for WidgetGridBackground);
    swift_storeEnumTagMultiPayload();
    sub_100017BDC();
    sub_100018930(&qword_10004CE48, type metadata accessor for WidgetGridBackground);
    sub_100039EA8();
    v31 = type metadata accessor for WidgetGridBackground;
    v32 = v4;
    return sub_100017E4C(v32, v31);
  }

  sub_100017EAC(*(v1 + v29));
  v35 = v30;
  sub_10003A298();
  (*(v21 + 104))(v24, enum case for Image.ResizingMode.stretch(_:), v20);
  sub_10003A308();

  (*(v21 + 8))(v24, v20);
  sub_10003A468();
  v36 = sub_10003A498();
  (*(*(v36 - 8) + 56))(v19, 0, 1, v36);
  sub_10003A2F8();

  sub_100009B18(v19, &qword_10004CC58, &qword_10003CAA0);
  v37 = &v28[*(sub_100001B2C(&qword_10004CE78, &qword_10003CD20) + 36)];
  *v37 = 0;
  *(v37 + 4) = 257;
  sub_10003A3D8();
  sub_100039A48();
  v38 = &v28[*(v25 + 36)];
  v39 = v58;
  *v38 = v57;
  *(v38 + 1) = v39;
  *(v38 + 2) = v59;
  v40 = sub_10003A3D8();
  v41 = v45;
  *v45 = v40;
  *(v41 + 8) = v42;
  v43 = sub_100001B2C(&qword_10004CE80, &qword_10003CD28);
  sub_100013B30(v46, v28, v41 + *(v43 + 44));
  sub_100009AB0(v41, v49, &qword_10004CE40, &qword_10003CC58);
  swift_storeEnumTagMultiPayload();
  sub_1000073FC(&qword_10004CE38, &qword_10004CE40, &qword_10003CC58);
  sub_100018930(&qword_10004CB38, type metadata accessor for WidgetBlurBackground);
  v44 = v51;
  sub_100039EA8();
  sub_100009AB0(v44, v54, &qword_10004CE30, &qword_10003CC50);
  swift_storeEnumTagMultiPayload();
  sub_100017BDC();
  sub_100018930(&qword_10004CE48, type metadata accessor for WidgetGridBackground);
  sub_100039EA8();
  sub_100017EBC(v30);
  sub_100009B18(v44, &qword_10004CE30, &qword_10003CC50);
  sub_100009B18(v41, &qword_10004CE40, &qword_10003CC58);
  return sub_100009B18(v28, &qword_10004CE70, &qword_10003CCE8);
}

uint64_t sub_100013748@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100039BE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100013774(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_100039BF8();
}

uint64_t sub_1000137F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003A458();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = (a1 + *(type metadata accessor for LoadedView(0) + 32));
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
    v15 = v12[1];

    v13 = sub_10003A2C8();
    sub_1000125BC(v11);
    sub_10003A448();
    v16 = sub_10003A438();
    v17 = *(v5 + 8);
    v17(v9, v4);
    v17(v11, v4);
    if (v16)
    {
      result = sub_100039F08();
    }

    else
    {
      result = sub_100039EF8();
    }
  }

  else
  {
    result = 0;
  }

  *a2 = v13;
  *(a2 + 8) = result;
  return result;
}

double sub_100013968@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_100001B2C(&qword_10004CED8, &qword_10003CDB0) + 48);
  v5 = type metadata accessor for LoadedView(0);
  v6 = *(a1 + *(v5 + 36));
  sub_1000398B8();
  *(a2 + v4) = 0;
  v7 = enum case for Icon.image(_:);
  v8 = sub_1000398C8();
  (*(*(v8 - 8) + 104))(a2, v7, v8);
  v9 = type metadata accessor for AnnotationPin();
  v10 = v9[5];
  v11 = enum case for IconAndPlatter.Shape.circle(_:);
  v12 = sub_100039798();
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  LOBYTE(a1) = *(a1 + *(v5 + 40)) > 1uLL;
  v13 = v9[8];
  *(a2 + v13) = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
  swift_storeEnumTagMultiPayload();
  v14 = a2 + v9[9];
  *v14 = swift_getKeyPath();
  *(v14 + 8) = 0;
  v15 = v9[10];
  *(a2 + v15) = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();
  *(a2 + v9[6]) = a1;
  result = 0.0;
  *(a2 + v9[7]) = xmmword_10003CAC0;
  return result;
}

uint64_t sub_100013B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a3;
  v79 = a2;
  v82 = a1;
  *&v81 = type metadata accessor for LoadedView(0);
  v72 = *(v81 - 8);
  v3 = *(v72 + 64);
  __chkstk_darwin(v81);
  v73 = v4;
  v74 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100039CE8();
  v68 = *(v69 - 8);
  v5 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100001B2C(&qword_10004CE88, &qword_10003CD30);
  v7 = *(*(v70 - 8) + 64);
  v8 = __chkstk_darwin(v70);
  v77 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v66 - v10;
  v11 = sub_100001B2C(&qword_10004CE90, &qword_10003CD38);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v66 - v14;
  v16 = sub_10003A458();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v66 - v22;
  v24 = sub_100001B2C(&qword_10004CE98, &qword_10003CD40);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v75 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v66 - v28;
  sub_10003A7A8();
  v71 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000125BC(v23);
  sub_10003A448();
  v30 = sub_10003A438();
  v31 = *(v17 + 8);
  v31(v21, v16);
  v31(v23, v16);
  if (v30)
  {
    sub_10003A428();
    v33 = v32;
    v35 = v34;
    v36 = &v15[*(sub_100001B2C(&qword_10004CEB8, &qword_10003CD90) + 36)];
    v37 = v79;
    sub_100009AB0(v79, v36, &qword_10004CE70, &qword_10003CCE8);
    v38 = (v36 + *(sub_100001B2C(&qword_10004CEC0, &qword_10003CD98) + 36));
    *v38 = vdupq_n_s64(0x3FF6666666666666uLL);
    v38[1].i64[0] = v33;
    v38[1].i64[1] = v35;
    v39 = sub_10003A3D8();
    v41 = v40;
    v42 = (v36 + *(sub_100001B2C(&qword_10004CEC8, &qword_10003CDA0) + 36));
    *v42 = v39;
    v42[1] = v41;
    sub_100009AB0(v37, v15, &qword_10004CE70, &qword_10003CCE8);
    v43 = &v15[*(v11 + 36)];
    *v43 = 0x4034000000000000;
    v43[8] = 0;
    sub_100017F70(v15, v29);
    v44 = 0;
  }

  else
  {
    v44 = 1;
  }

  (*(v12 + 56))(v29, v44, 1, v11);
  v45 = (v82 + *(v81 + 60));
  v47 = *v45;
  v46 = v45[1];
  LODWORD(v45) = *(v45 + 32);
  v80 = v47;
  v81 = v46;
  if (v45 != 1)
  {
    v48 = v47;

    sub_10003A858();
    v49 = sub_100039F78();
    sub_100039968();

    v50 = v67;
    sub_100039CD8();
    swift_getAtKeyPath();
    sub_10000D78C(v48, *(&v80 + 1), v81, *(&v81 + 1), 0);
    (*(v68 + 8))(v50, v69);
    v80 = v83;
    v81 = v84;
  }

  v51 = v74;
  sub_100017DE4(v82, v74, type metadata accessor for LoadedView);
  v52 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v53 = swift_allocObject();
  sub_100017088(v51, v53 + v52);
  KeyPath = swift_getKeyPath();
  v55 = v76;
  v56 = &v76[*(v70 + 36)];
  v57 = sub_100001B2C(&qword_10004CEA0, &qword_10003CD48);
  *(v56 + v57[9]) = KeyPath;
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();
  *v56 = swift_getKeyPath();
  sub_100001B2C(&qword_10004CEA8, &qword_10003CD80);
  swift_storeEnumTagMultiPayload();
  v58 = (v56 + v57[10]);
  v59 = v81;
  *v58 = v80;
  v58[1] = v59;
  v60 = (v56 + v57[11]);
  *v60 = sub_100017ECC;
  v60[1] = v53;
  sub_100009AB0(v79, v55, &qword_10004CE70, &qword_10003CCE8);
  v61 = v75;
  sub_100009AB0(v29, v75, &qword_10004CE98, &qword_10003CD40);
  v62 = v77;
  sub_100009AB0(v55, v77, &qword_10004CE88, &qword_10003CD30);
  v63 = v78;
  sub_100009AB0(v61, v78, &qword_10004CE98, &qword_10003CD40);
  v64 = sub_100001B2C(&qword_10004CEB0, &qword_10003CD88);
  sub_100009AB0(v62, v63 + *(v64 + 48), &qword_10004CE88, &qword_10003CD30);
  sub_100009B18(v55, &qword_10004CE88, &qword_10003CD30);
  sub_100009B18(v29, &qword_10004CE98, &qword_10003CD40);
  sub_100009B18(v62, &qword_10004CE88, &qword_10003CD30);
  sub_100009B18(v61, &qword_10004CE98, &qword_10003CD40);
}

uint64_t sub_100014340@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t@<X8>)@<X8>)
{
  v4 = type metadata accessor for LoadedView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_100017DE4(a1, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LoadedView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_100017088(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a2 = sub_10001A280;
  a2[1] = 0;
  a2[2] = sub_100017FE0;
  a2[3] = v8;
  a2[4] = sub_10001A280;
  a2[5] = 0;
  v9 = sub_100001B2C(&qword_10004CED0, &qword_10003CDA8);
  v10 = *(v9 + 76);
  *(a2 + v10) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v11 = a2 + *(v9 + 80);
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v11[32] = 0;
  return result;
}

uint64_t sub_1000144E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 16);
  v5 = a1[3];
  v4 = a1[4];
  v7 = a1[5];
  v6 = a1[6];
  v8 = a1[7];
  v9 = type metadata accessor for LoadedView(0);
  v10 = *(v9 + 24);
  v11 = type metadata accessor for LabelsModule(0);
  sub_100009AB0(a1 + v10, a2 + v11[6], &qword_10004C778, &unk_10003C4D0);
  sub_100009AB0(a1 + *(v9 + 28), a2 + v11[7], &qword_10004C780, "P*");
  *a2 = v17;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16;
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  *(a2 + 40) = v7;
  *(a2 + 48) = v6;
  *(a2 + 56) = v8;
  v12 = v11[8];
  *(a2 + v12) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v13 = v11[9];
  *(a2 + v13) = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();

  return sub_100018048(v4, v7);
}

uint64_t sub_100014688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100039CE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v18 - v12);
  sub_100009AB0(v2 + *(a1 + 36), &v18 - v12, &qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10003A458();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_10003A858();
    v17 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_10001488C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a3;
  swift_getWitnessTable();
  v7 = sub_100039EE8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  v15 = __chkstk_darwin(v14);
  v16 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, v4, a2, v15);
  (*(v8 + 16))(v11, a1, v7);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = (v13 + v17 + *(v8 + 80)) & ~*(v8 + 80);
  v19 = swift_allocObject();
  v21 = *(a2 + 16);
  v38 = *(a2 + 24);
  v20 = v38;
  *(v19 + 16) = v21;
  *(v19 + 24) = v20;
  v22 = v19 + v17;
  v23 = v19;
  (*(v12 + 32))(v22, v16, a2);
  (*(v8 + 32))(v23 + v18, v11, v7);
  sub_100039F28();
  sub_100039B68();
  sub_100039B68();
  v37 = sub_10003A118();
  sub_100001B74(&qword_10004CF70, &qword_10003CE60);
  sub_100039B68();
  WitnessTable = swift_getWitnessTable();
  v48 = v7;
  v49 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v25 = sub_100039EB8();
  v26 = sub_1000073FC(&qword_10004CF78, &qword_10004CF70, &qword_10003CE60);
  v54 = WitnessTable;
  v55 = v26;
  v27 = swift_getWitnessTable();
  v48 = v7;
  v49 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v27;
  v53 = OpaqueTypeConformance2;
  v29 = swift_getWitnessTable();
  v48 = v37;
  v49 = v25;
  v50 = &protocol witness table for Text.LayoutKey;
  v51 = v29;
  sub_100039F58();
  sub_100039B68();
  v30 = sub_100018930(&qword_10004CF80, &type metadata accessor for SafeAreaPaddingModifier);
  v46 = v38;
  v47 = v30;
  v44 = swift_getWitnessTable();
  v45 = &protocol witness table for _OpacityEffect;
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v42 = v31;
  v43 = v32;
  swift_getWitnessTable();
  v40 = sub_100039A88();
  v41 = v33;
  v34 = sub_100039A98();
  v35 = swift_getWitnessTable();
  sub_10000DD48(&v40, v34, v35);

  v40 = v48;
  v41 = v49;
  sub_10000DD48(&v40, v34, v35);
}

uint64_t sub_100014D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a3;
  v88 = a2;
  v86 = a1;
  v92 = a6;
  v91 = a5;
  v7 = type metadata accessor for LoadedView.OverlayBlur();
  swift_getWitnessTable();
  v8 = sub_100039EE8();
  v90 = *(v8 - 8);
  v85 = *(v90 + 64);
  __chkstk_darwin(v8);
  v97 = v66 - v9;
  v93 = v7;
  v87 = *(v7 - 8);
  v82 = *(v87 + 64);
  __chkstk_darwin(v10);
  v96 = v66 - v11;
  v83 = sub_100039A68();
  v81 = *(v83 - 8);
  v12 = *(v81 + 64);
  __chkstk_darwin(v83);
  v78 = v13;
  v95 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = *(a4 - 8);
  v14 = v72[8];
  __chkstk_darwin(v15);
  v70 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039F28();
  v98 = a4;
  v17 = sub_100039B68();
  v75 = *(v17 - 8);
  v18 = *(v75 + 64);
  __chkstk_darwin(v17);
  v71 = v66 - v19;
  v20 = sub_100039B68();
  v79 = *(v20 - 8);
  v21 = *(v79 + 64);
  __chkstk_darwin(v20);
  v94 = v66 - v22;
  v23 = sub_10003A118();
  sub_100001B74(&qword_10004CF70, &qword_10003CE60);
  sub_100039B68();
  WitnessTable = swift_getWitnessTable();
  v105 = v8;
  v106 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v25 = sub_100039EB8();
  v26 = sub_1000073FC(&qword_10004CF78, &qword_10004CF70, &qword_10003CE60);
  v111 = WitnessTable;
  v112 = v26;
  v27 = swift_getWitnessTable();
  v84 = v8;
  v105 = v8;
  v106 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v109 = v27;
  v110 = OpaqueTypeConformance2;
  v29 = swift_getWitnessTable();
  v77 = v23;
  v105 = v23;
  v106 = v25;
  v76 = v25;
  v107 = &protocol witness table for Text.LayoutKey;
  v108 = v29;
  v66[1] = v29;
  v30 = sub_100039F58();
  v80 = v20;
  v68 = v30;
  v74 = sub_100039B68();
  v73 = *(v74 - 8);
  v31 = *(v73 + 64);
  __chkstk_darwin(v74);
  v67 = v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v69 = v66 - v34;
  sub_10003A7A8();
  v66[2] = sub_10003A798();
  sub_10003A758();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v36 = v93;
  v37 = v88;
  v38 = v88 + *(v93 + 44);
  v39 = *(v38 + 8);
  v40 = v70;
  (*v38)(isCurrentExecutor);
  v41 = v71;
  v42 = v98;
  v43 = v91;
  sub_1000157D0(*(v37 + *(v36 + 40)), *(v37 + *(v36 + 40) + 8), *(v37 + *(v36 + 40) + 16), *(v37 + *(v36 + 40) + 24));
  (v72[1])(v40, v42);
  v44 = sub_100018930(&qword_10004CF80, &type metadata accessor for SafeAreaPaddingModifier);
  v103 = v43;
  v104 = v44;
  v72 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v70 = swift_getWitnessTable();
  sub_10003A1F8();
  (*(v75 + 8))(v41, v17);
  v75 = sub_10003A3D8();
  v71 = v45;
  v46 = v81;
  v47 = v83;
  (*(v81 + 16))(v95, v86, v83);
  v48 = v87;
  (*(v87 + 16))(v96, v37, v36);
  v49 = v90;
  v50 = v84;
  (*(v90 + 16))(v97, v89, v84);
  v51 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v52 = v43;
  v53 = (v78 + *(v48 + 80) + v51) & ~*(v48 + 80);
  v54 = (v82 + *(v49 + 80) + v53) & ~*(v49 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v98;
  *(v55 + 24) = v52;
  (*(v46 + 32))(v55 + v51, v95, v47);
  (*(v48 + 32))(v55 + v53, v96, v93);
  (*(v49 + 32))(v55 + v54, v97, v50);
  v101 = v70;
  v102 = &protocol witness table for _OpacityEffect;
  v56 = v80;
  v57 = swift_getWitnessTable();
  v58 = v67;
  v59 = v94;
  sub_10003A1C8();

  (*(v79 + 8))(v59, v56);
  v60 = swift_getWitnessTable();
  v99 = v57;
  v100 = v60;
  v61 = v74;
  v62 = swift_getWitnessTable();
  v63 = v69;
  sub_10000DD48(v58, v61, v62);
  v64 = *(v73 + 8);
  v64(v58, v61);
  sub_10000DD48(v63, v61, v62);
  v64(v63, v61);
}

uint64_t sub_1000157D0(double a1, double a2, double a3, double a4)
{
  v8 = sub_100039F28();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039F98();
  *&v14[1] = a1;
  *&v14[2] = a2;
  *&v14[3] = a3;
  *&v14[4] = a4;
  v15 = 0;
  sub_100039F18();
  sub_10003A218();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1000158FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v75 = a4;
  v74 = a3;
  v72 = a2;
  v82 = a7;
  v70 = a5;
  v71 = a6;
  v8 = type metadata accessor for LoadedView.OverlayBlur();
  swift_getWitnessTable();
  v73 = v8;
  v9 = sub_100039EE8();
  *&v97[0] = v9;
  *(&v97[0] + 1) = swift_getWitnessTable();
  v81 = *(&v97[0] + 1);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v68 = *(OpaqueTypeMetadata2 - 8);
  v11 = *(v68 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v67 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v62 - v14;
  sub_100001B74(&qword_10004CF70, &qword_10003CE60);
  v83 = v9;
  v15 = sub_100039B68();
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  __chkstk_darwin(v15);
  v64 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v63 = &v62 - v19;
  v69 = sub_10003A458();
  v20 = *(v69 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v69);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v62 - v25;
  v80 = OpaqueTypeMetadata2;
  v79 = sub_100039EB8();
  v78 = *(v79 - 8);
  v27 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = &v62 - v28;
  v29 = sub_100039D38();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v62 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  sub_10003A7A8();
  v76 = sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000162EC(v34, v72, v74, v70, v71, &v94);
  sub_100039A58();
  v35 = swift_allocObject();
  v36 = v95;
  *(v35 + 16) = v94;
  *(v35 + 32) = v36;
  *(v35 + 48) = v96;
  (*(v30 + 104))(v33, enum case for ColorRenderingMode.nonLinear(_:), v29);
  v97[0] = v94;
  v97[1] = v95;
  v98 = v96;
  sub_100018E4C(v97, &v92);
  sub_10003A2E8();
  sub_100014688(v73, v26);
  sub_10003A448();
  v37 = sub_10003A438();
  v38 = *(v20 + 8);
  v39 = v23;
  v40 = v69;
  v38(v39, v69);
  v38(v26, v40);
  if (v37)
  {
    sub_10003A3D8();
    v41 = v64;
    v42 = v83;
    v43 = v81;
    sub_10003A138();
    v44 = sub_1000073FC(&qword_10004CF78, &qword_10004CF70, &qword_10003CE60);
    v84 = v43;
    v85 = v44;
    WitnessTable = swift_getWitnessTable();
    v46 = v63;
    sub_10000DD48(v41, v15, WitnessTable);
    v47 = *(v65 + 8);
    v47(v41, v15);
    sub_10000DD48(v46, v15, WitnessTable);
    v92 = v42;
    v93 = v43;
    swift_getOpaqueTypeConformance2();
    v48 = v77;
    sub_10000A540(v41, v15);

    sub_100018EA8(&v94);
    v47(v41, v15);
    v47(v46, v15);
  }

  else
  {
    v49 = v67;
    v50 = v83;
    v43 = v81;
    sub_10003A188();
    v92 = v50;
    v93 = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v52 = v66;
    v53 = v80;
    sub_10000DD48(v49, v80, OpaqueTypeConformance2);
    v54 = *(v68 + 8);
    v54(v49, v53);
    sub_10000DD48(v52, v53, OpaqueTypeConformance2);
    v55 = sub_1000073FC(&qword_10004CF78, &qword_10004CF70, &qword_10003CE60);
    v90 = v43;
    v91 = v55;
    swift_getWitnessTable();
    v48 = v77;
    sub_10000A638(v49, v15, v53);

    sub_100018EA8(&v94);
    v54(v49, v53);
    v54(v52, v53);
  }

  v56 = sub_1000073FC(&qword_10004CF78, &qword_10004CF70, &qword_10003CE60);
  v88 = v43;
  v89 = v56;
  v57 = swift_getWitnessTable();
  v92 = v83;
  v93 = v43;
  v58 = swift_getOpaqueTypeConformance2();
  v86 = v57;
  v87 = v58;
  v59 = v79;
  v60 = swift_getWitnessTable();
  sub_10000DD48(v48, v59, v60);
  (*(v78 + 8))(v48, v59);
}

uint64_t sub_1000162EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a2;
  v10 = sub_100016820(sub_100018F08, v68, a1);
  v65 = a4;
  v66 = a5;
  v67 = a3;
  v11 = sub_1000124A8(sub_100018F24, v64, v10);

  if (!*(v11 + 16))
  {

    result = sub_10003A018();
    v46 = v81;
    v45 = v82;
    v48 = v83;
    v47 = v84;
    v49 = v85;
LABEL_30:
    *a6 = v46;
    *(a6 + 8) = v45;
    *(a6 + 16) = v48;
    *(a6 + 24) = v47;
    *(a6 + 32) = v49;
    return result;
  }

  v81 = v11;

  sub_100018F48(&v81);
  v59 = a6;

  v12 = v81;
  v13 = *(v81 + 2);
  if (!v13)
  {

    v15 = &_swiftEmptyArrayStorage;
LABEL_26:
    sub_10003A018();
    v46 = v70;
    v45 = v71;
    v48 = v72;
    v47 = v73;
    v49 = v74;
    v50 = *(v15 + 2);
    if (v50)
    {
      v51 = (v15 + 56);
      do
      {
        rectb = v49;
        v60 = v47;
        v52 = v48;
        v53 = v45;
        v54 = v46;
        v81 = v46;
        v82 = v45;
        v83 = v48;
        v84 = v47;
        v85 = v49;
        v55 = *(v51 - 3);
        v56 = *(v51 - 2);
        v57 = *(v51 - 1);
        v58 = *v51;
        sub_10003A028();
        sub_10003A008();
        v46 = v76;
        v45 = v77;
        v48 = v78;
        v47 = v79;
        v49 = v80;
        sub_100018EA8(v75);
        sub_100018E2C(v54, v53, v52, v60, rectb);
        v51 += 4;
        --v50;
      }

      while (v50);
    }

    a6 = v59;
    goto LABEL_30;
  }

  v81 = &_swiftEmptyArrayStorage;

  sub_100025E04(0, v13, 0);
  v14 = *(v12 + 2);
  v15 = v81;
  sub_10003A7A8();
  v16 = 0;
  v17 = (v12 + 48);
  while (v14 != v16)
  {
    if (v16 >= *(v12 + 2))
    {
      goto LABEL_32;
    }

    v19 = *(v17 - 2);
    v18 = *(v17 - 1);
    v20 = *v17;
    v21 = v17[1];
    sub_10003A798();
    sub_10003A758();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v16)
    {
      if (v16 > *(v12 + 2))
      {
        goto LABEL_33;
      }

      v22 = *(v17 - 6);
      v23 = *(v17 - 5);
      v24 = *(v17 - 4);
      recta = *(v17 - 3);
      v86.origin.x = v19;
      v86.origin.y = v18;
      v86.size.width = v20;
      v86.size.height = v21;
      MinY = CGRectGetMinY(v86);
      v87.origin.x = v22;
      v87.origin.y = v23;
      v87.size.width = v24;
      v87.size.height = recta;
      MaxY = CGRectGetMaxY(v87);
      if (MaxY < MinY)
      {
        MinY = MaxY;
      }

      v88.origin.x = v19;
      v88.origin.y = v18;
      v88.size.width = v20;
      v88.size.height = v21;
      v27 = CGRectGetMaxY(v88);
      v89.origin.x = v19;
      v89.origin.y = MinY;
      v89.size.width = v20;
      v89.size.height = v21;
      v21 = v27 - CGRectGetMinY(v89);
      v18 = MinY;
    }

    v28 = v16 + 1;
    if (v16 >= v14 - 1)
    {

      v29 = v15;
    }

    else
    {
      if (v28 >= *(v12 + 2))
      {
        goto LABEL_34;
      }

      v29 = v15;
      v30 = v17[2];
      v31 = v17[3];
      v32 = v17[4];
      v33 = v17[5];
      v90.origin.x = v19;
      v90.origin.y = v18;
      v90.size.width = v20;
      v90.size.height = v21;
      rect = v21;
      v34 = v18;
      v35 = v20;
      v36 = v19;
      v37 = CGRectGetMaxY(v90);
      v91.origin.x = v30;
      v91.origin.y = v31;
      v91.size.width = v32;
      v91.size.height = v33;
      v38 = CGRectGetMinY(v91);
      if (v37 > v38)
      {
        v39 = v37;
      }

      else
      {
        v39 = v38;
      }

      v19 = v36;
      v20 = v35;
      v18 = v34;
      v92.origin.x = v19;
      v92.origin.y = v34;
      v92.size.width = v20;
      v92.size.height = rect;
      v40 = CGRectGetMinY(v92);

      v21 = v39 - v40;
    }

    v81 = v29;
    v42 = *(v29 + 2);
    v41 = *(v29 + 3);
    if (v42 >= v41 >> 1)
    {
      sub_100025E04((v41 > 1), v42 + 1, 1);
      v29 = v81;
    }

    *(v29 + 2) = v42 + 1;
    v15 = v29;
    v43 = &v29[32 * v42];
    v43[4] = v19;
    v43[5] = v18;
    v43[6] = v20;
    v43[7] = v21;
    v17 += 4;
    v16 = v28;
    if (v13 == v28)
    {

      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100016760@<X0>(void *a1@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1000032A4();

  *a1 = v2;
  return result;
}

char *sub_100016820(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = *(sub_10003A108() - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v19 = *(v6 + 72);
  v8 = &_swiftEmptyArrayStorage;
  while (1)
  {
    result = a1(&v21, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v21;
    v11 = *(v21 + 16);
    v12 = *(v8 + 2);
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= *(v8 + 3) >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v14 = v12 + v11;
      }

      else
      {
        v14 = v12;
      }

      result = sub_10002AB0C(result, v14, 1, v8);
      v8 = result;
      if (*(v10 + 16))
      {
LABEL_15:
        v15 = *(v8 + 2);
        if ((*(v8 + 3) >> 1) - v15 < v11)
        {
          goto LABEL_24;
        }

        memcpy(&v8[32 * v15 + 32], (v10 + 32), 32 * v11);

        if (v11)
        {
          v16 = *(v8 + 2);
          v17 = __OFADD__(v16, v11);
          v18 = v16 + v11;
          if (v17)
          {
            goto LABEL_25;
          }

          *(v8 + 2) = v18;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v19;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_1000169E8(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for LoadedView.OverlayBlur();
  v7 = sub_100016B24(v3, v4, v5, v6);
  v9 = v8;

  *a2 = sub_100019F40(v3, v4, v5, v6, v7, v9);
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
}

CGFloat sub_100016B24(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_100039B58();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = (__chkstk_darwin)(v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  v16 = CGRectGetHeight(v23) * -0.6;
  v22 = &type metadata accessor for LayoutDirection;
  sub_1000176D8(&qword_10004CEA8, &qword_10003CD80, &type metadata accessor for LayoutDirection, v15);
  v17 = enum case for LayoutDirection.leftToRight(_:);
  v18 = v9[13];
  v18(v13, enum case for LayoutDirection.leftToRight(_:), v8);
  sub_100039B48();
  v19 = v9[1];
  v19(v13, v8);
  v19(v15, v8);
  sub_1000176D8(&qword_10004CEA8, &qword_10003CD80, v22, v15);
  v18(v13, v17, v8);
  sub_100039B48();
  v19(v13, v8);
  v19(v15, v8);
  return v16;
}

uint64_t sub_100016D74(uint64_t *a1, uint64_t a2)
{
  v22 = a2;
  v19 = a1;
  v21 = sub_10003A238();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v21);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100039B28();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v20);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100039B08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100039AF8();
  v15 = v19;
  sub_100039B38();
  (*(v11 + 8))(v14, v10);
  v16 = *v15;
  v17 = v21;
  (*(v2 + 104))(v5, enum case for Color.RGBColorSpace.sRGB(_:), v21);
  sub_100039B18();
  (*(v2 + 8))(v5, v17);
  sub_100039AE8();
  (*(v6 + 8))(v9, v20);
}

uint64_t sub_10001707C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100017088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoadedView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000170EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LoadedView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000137F0(v4, a1);
}

uint64_t sub_10001715C()
{
  v1 = type metadata accessor for LoadedView(0);
  v28 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));
  v3 = *(v2 + 1);

  v4 = *(v2 + 3);

  if (*(v2 + 5))
  {

    v5 = *(v2 + 7);
  }

  v6 = v1[6];
  v7 = sub_100039128();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v2[v6], 1, v7))
  {
    (*(v8 + 8))(&v2[v6], v7);
  }

  v9 = v1[7];
  v10 = sub_100039398();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(&v2[v9], 1, v10))
  {
    (*(v11 + 8))(&v2[v9], v10);
  }

  v13 = *&v2[v1[8] + 8];

  v14 = &v2[v1[9]];

  v15 = *(type metadata accessor for LoadedView.Callout(0) + 20);
  if (!v12(v14 + v15, 1, v10))
  {
    (*(v11 + 8))(v14 + v15, v10);
  }

  v16 = *&v2[v1[10]];
  if (v16 >= 2)
  {
  }

  v17 = v1[12];
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_10003A4A8();
    (*(*(v18 - 8) + 8))(&v2[v17], v18);
  }

  else
  {
    v19 = *&v2[v17];
  }

  v20 = v1[13];
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_10003A458();
    (*(*(v21 - 8) + 8))(&v2[v20], v21);
  }

  else
  {
    v22 = *&v2[v20];
  }

  sub_10001707C(*&v2[v1[14]], *&v2[v1[14] + 8], v2[v1[14] + 16]);
  v23 = &v2[v1[15]];
  sub_10000D78C(*v23, *(v23 + 1), *(v23 + 2), *(v23 + 3), v23[32]);
  v24 = v1[16];
  sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_1000399C8();
    (*(*(v25 - 8) + 8))(&v2[v24], v25);
  }

  else
  {
    v26 = *&v2[v24];
  }

  return swift_deallocObject();
}

uint64_t sub_1000175B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1000176D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_100039CE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100001B2C(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_100009AB0(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_10003A858();
    v22 = sub_100039F78();
    sub_100039968();

    sub_100039CD8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_100017948@<X0>(void *a1@<X8>)
{
  result = sub_100039CA8();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_100017978@<X0>(void *a1@<X8>)
{
  result = sub_100039CA8();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

unint64_t sub_1000179B0()
{
  result = qword_10004CE00;
  if (!qword_10004CE00)
  {
    sub_100001B74(&qword_10004CDF0, &qword_10003CC38);
    sub_100017A68();
    sub_1000073FC(&qword_10004CB40, &qword_10004CB48, &qword_10003C7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CE00);
  }

  return result;
}

unint64_t sub_100017A68()
{
  result = qword_10004CE08;
  if (!qword_10004CE08)
  {
    sub_100001B74(&qword_10004CE10, &qword_10003CC40);
    sub_100017B20();
    sub_1000073FC(&qword_10004CE50, &qword_10004CE58, &unk_10003CC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CE08);
  }

  return result;
}

unint64_t sub_100017B20()
{
  result = qword_10004CE18;
  if (!qword_10004CE18)
  {
    sub_100001B74(&qword_10004CE20, &qword_10003CC48);
    sub_100017BDC();
    sub_100018930(&qword_10004CE48, type metadata accessor for WidgetGridBackground);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CE18);
  }

  return result;
}

unint64_t sub_100017BDC()
{
  result = qword_10004CE28;
  if (!qword_10004CE28)
  {
    sub_100001B74(&qword_10004CE30, &qword_10003CC50);
    sub_1000073FC(&qword_10004CE38, &qword_10004CE40, &qword_10003CC58);
    sub_100018930(&qword_10004CB38, type metadata accessor for WidgetBlurBackground);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004CE28);
  }

  return result;
}

uint64_t sub_100017CC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100039BE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100017CF0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_100039BF8();
}

uint64_t sub_100017DE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100017E4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100017EAC(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_100017EBC(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_100017EE4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LoadedView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100017F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001B2C(&qword_10004CE90, &qword_10003CD38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018048(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10001808C@<X0>(void *a1@<X8>)
{
  result = sub_100039BB8();
  *a1 = v3;
  return result;
}

void sub_1000180C0()
{
  sub_100018448(319, &qword_10004CF68, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100018448(319, &qword_10004C670, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10000A1F0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000181D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001B2C(qword_10004CEE0, &qword_10003CDE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001B2C(&qword_10004C5F0, "r%");
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100018310(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001B2C(qword_10004CEE0, &qword_10003CDE8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100001B2C(&qword_10004C5F0, "r%");
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 44)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

void sub_100018448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000184AC()
{
  sub_100001B74(&qword_10004CDE8, &qword_10003CBC8);
  sub_100001B74(&qword_10004CDF0, &qword_10003CC38);
  sub_1000073FC(&qword_10004CDF8, &qword_10004CDE8, &qword_10003CBC8);
  sub_1000179B0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000185AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for LoadedView.OverlayBlur();
  v4 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v17 = *(*(v3 - 8) + 64);
  swift_getWitnessTable();
  v5 = sub_100039EE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v0 + v4);
  sub_100001B2C(&qword_10004CEA8, &qword_10003CD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_100039B58();
    (*(*(v10 - 8) + 8))(v0 + v4, v10);
  }

  else
  {
    v11 = *v9;
  }

  v12 = *(v3 + 36);
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10003A458();
    (*(*(v13 - 8) + 8))(&v9[v12], v13);
  }

  else
  {
    v14 = *&v9[v12];
  }

  v15 = *&v9[*(v3 + 44) + 8];

  (*(v6 + 8))(v0 + ((v4 + v17 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_100018804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for LoadedView.OverlayBlur() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  swift_getWitnessTable();
  v10 = *(sub_100039EE8() - 8);
  v11 = v2 + ((v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_100014D78(a1, v2 + v8, v11, v5, v6, a2);
}

uint64_t sub_100018930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100018978()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_100039A68();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = type metadata accessor for LoadedView.OverlayBlur();
  v8 = *(*(v7 - 8) + 80);
  v9 = (v6 + v8) & ~v8;
  v22 = *(*(v7 - 8) + 64);
  swift_getWitnessTable();
  v21 = sub_100039EE8();
  v10 = *(v21 - 8);
  v11 = *(v10 + 80);
  v20 = *(v10 + 64);
  (*(v4 + 8))(v0 + v5, v3);
  v12 = (v0 + v9);
  sub_100001B2C(&qword_10004CEA8, &qword_10003CD80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100039B58();
    (*(*(v13 - 8) + 8))(v0 + v9, v13);
  }

  else
  {
    v14 = *v12;
  }

  v15 = *(v7 + 36);
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_10003A458();
    (*(*(v16 - 8) + 8))(&v12[v15], v16);
  }

  else
  {
    v17 = *&v12[v15];
  }

  v18 = *&v12[*(v7 + 44) + 8];

  (*(v10 + 8))(v0 + ((v9 + v22 + v11) & ~v11), v21);

  return swift_deallocObject();
}

uint64_t sub_100018C5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_100039A68() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(type metadata accessor for LoadedView.OverlayBlur() - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  swift_getWitnessTable();
  v13 = *(sub_100039EE8() - 8);
  v14 = v2 + ((v12 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_1000158FC(a1, v2 + v8, v2 + v11, v14, v5, v6, a2);
}

uint64_t sub_100018DEC()
{
  sub_100018E2C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_100018E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 <= 3)
  {
  }

  return result;
}

void sub_100018F24(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_1000169E8(a1, a2);
}

Swift::Int sub_100018F48(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100019F28(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_100018FB4(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100018FB4(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_10003A978(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CGRect(0);
        v5 = sub_10003A748();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100019228(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000190B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000190B0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_10003A7A8();
    v7 = v6 + 32 * v4 - 32;
    v8 = v5 - v4;
LABEL_5:
    v9 = (v6 + 32 * v4);
    v11 = *v9;
    v10 = v9[1];
    v21 = v8;
    v22 = v7;
    while (1)
    {
      v23 = v11;
      v24 = v10;
      v12 = *v7;
      v13 = *(v7 + 8);
      v14 = *(v7 + 16);
      v15 = *(v7 + 24);
      sub_10003A798();
      sub_10003A758();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      *&v25.origin.x = v23;
      *&v25.size.width = v24;
      v25.origin.y = *(&v23 + 1);
      v25.size.height = *(&v24 + 1);
      MinY = CGRectGetMinY(v25);
      v26.origin.x = v12;
      v26.origin.y = v13;
      v26.size.width = v14;
      v26.size.height = v15;
      v17 = CGRectGetMinY(v26);

      if (MinY >= v17)
      {
LABEL_4:
        ++v4;
        v7 = v22 + 32;
        v8 = v21 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v7 + 32);
      v10 = *(v7 + 48);
      v18 = *(v7 + 16);
      *(v7 + 32) = *v7;
      *(v7 + 48) = v18;
      *v7 = v11;
      *(v7 + 16) = v10;
      v7 -= 32;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100019228(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v122 = result;
  v7 = *(a3 + 1);
  if (v7 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_94:
    v8 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_100019E10(v9);
      v9 = result;
    }

    v111 = *(v9 + 2);
    if (v111 >= 2)
    {
      while (*v6)
      {
        v112 = *&v9[16 * v111];
        v113 = *&v9[16 * v111 + 24];
        sub_100019A14((*v6 + 32 * v112), (*v6 + 32 * *&v9[16 * v111 + 16]), (*v6 + 32 * v113), v8);
        if (v5)
        {
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100019E10(v9);
        }

        if (v111 - 2 >= *(v9 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v9[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        result = sub_100019D84(v111 - 1);
        v111 = *(v9 + 2);
        if (v111 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v125 = v7;
      v116 = v9;
      v118 = v5;
      v11 = *v6;
      v12 = *v6 + 32 * v8;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *v6 + 32 * v10;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v5 = sub_10003A7A8();
      sub_10003A798();
      sub_10003A758();
      v8 = v22;
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v131.origin.x = v13;
      v131.origin.y = v14;
      v131.size.width = v15;
      v131.size.height = v16;
      MinY = CGRectGetMinY(v131);
      v132.origin.x = v18;
      v132.origin.y = v19;
      v132.size.width = v20;
      v132.size.height = v21;
      v127 = CGRectGetMinY(v132);

      v23 = 0;
      v24 = v10 + 2;
      v120 = v10;
      v6 = (32 * v10);
      v25 = v11 + 32 * v10 + 48;
      v26 = v6;
      do
      {
        v29 = v23;
        v9 = v26;
        v30 = v24;
        if (v24 >= v125)
        {
          break;
        }

        v31 = *(v25 + 16);
        v32 = *(v25 + 24);
        v33 = *(v25 + 32);
        v34 = *(v25 + 40);
        v35 = *(v25 - 16);
        v36 = *(v25 - 8);
        v37 = *v25;
        v38 = *(v25 + 8);
        sub_10003A798();
        v8 = sub_10003A758();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v5 = MinY < v127;
        v133.origin.x = v31;
        v133.origin.y = v32;
        v133.size.width = v33;
        v133.size.height = v34;
        v27 = CGRectGetMinY(v133);
        v134.origin.x = v35;
        v134.origin.y = v36;
        v134.size.width = v37;
        v134.size.height = v38;
        v28 = CGRectGetMinY(v134);

        v24 = v30 + 1;
        v25 += 32;
        v23 = v29 + 1;
        v26 = v9 + 32;
      }

      while (MinY < v127 != v27 >= v28);
      if (MinY >= v127)
      {
        v9 = v116;
        v5 = v118;
        v6 = a3;
        v8 = v30;
        v10 = v120;
      }

      else
      {
        v10 = v120;
        if (v30 < v120)
        {
          goto LABEL_123;
        }

        v8 = v30;
        if (v120 < v30)
        {
          v39 = 0;
          do
          {
            if (v120 + v39 != v120 + v29 + 1)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v40 = &v6[v45];
              v41 = &v9[v45];
              v42 = *v40;
              v43 = *(v40 + 1);
              v44 = *(v41 + 3);
              *v40 = *(v41 + 2);
              *(v40 + 1) = v44;
              *(v41 + 2) = v42;
              *(v41 + 3) = v43;
            }

            --v29;
            ++v39;
            v9 -= 32;
            v6 += 32;
          }

          while (v39 + v120 < v120 + v29 + 2);
        }

        v9 = v116;
        v5 = v118;
        v6 = a3;
      }
    }

    v46 = *(v6 + 1);
    if (v8 < v46)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_122;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_124;
        }

        if (v10 + a4 >= v46)
        {
          v47 = *(v6 + 1);
        }

        else
        {
          v47 = v10 + a4;
        }

        if (v47 < v10)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v8 != v47)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v8 < v10)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100019E24(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v65 = *(v9 + 2);
    v64 = *(v9 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      result = sub_100019E24((v64 > 1), v65 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v66;
    v67 = &v9[16 * v65];
    *(v67 + 4) = v10;
    *(v67 + 5) = v8;
    v68 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    if (v65)
    {
      while (1)
      {
        v69 = v66 - 1;
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v70 = *(v9 + 4);
          v71 = *(v9 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_63:
          if (v73)
          {
            goto LABEL_110;
          }

          v86 = &v9[16 * v66];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_113;
          }

          v92 = &v9[16 * v69 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_117;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              v69 = v66 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v96 = &v9[16 * v66];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_77:
        if (v91)
        {
          goto LABEL_112;
        }

        v99 = &v9[16 * v69];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_115;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_84:
        v107 = v69 - 1;
        if (v69 - 1 >= v66)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v6)
        {
          goto LABEL_128;
        }

        v108 = *&v9[16 * v107 + 32];
        v109 = *&v9[16 * v69 + 40];
        sub_100019A14((*v6 + 32 * v108), (*v6 + 32 * *&v9[16 * v69 + 32]), (*v6 + 32 * v109), v68);
        if (v5)
        {
        }

        if (v109 < v108)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100019E10(v9);
        }

        if (v107 >= *(v9 + 2))
        {
          goto LABEL_107;
        }

        v110 = &v9[16 * v107];
        *(v110 + 4) = v108;
        *(v110 + 5) = v109;
        result = sub_100019D84(v69);
        v66 = *(v9 + 2);
        if (v66 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v9[16 * v66 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_108;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_109;
      }

      v81 = &v9[16 * v66];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_111;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_114;
      }

      if (v85 >= v77)
      {
        v103 = &v9[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_118;
        }

        if (v72 < v106)
        {
          v69 = v66 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v7 = *(v6 + 1);
    if (v8 >= v7)
    {
      goto LABEL_94;
    }
  }

  v117 = v9;
  v119 = v5;
  v48 = *v6;
  sub_10003A7A8();
  v49 = v48 + 32 * v8 - 32;
  v121 = v10;
  v50 = v10 - v8;
  v124 = v47;
LABEL_34:
  v126 = v8;
  v51 = (v48 + 32 * v8);
  v53 = *v51;
  v52 = v51[1];
  v54 = v50;
  v55 = v49;
  while (1)
  {
    v128 = v53;
    v130 = v52;
    v56 = *v55;
    v57 = *(v55 + 8);
    v58 = *(v55 + 16);
    v59 = *(v55 + 24);
    sub_10003A798();
    sub_10003A758();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    *&v135.origin.x = v128;
    *&v135.size.width = v130;
    v135.origin.y = *(&v128 + 1);
    v135.size.height = *(&v130 + 1);
    v60 = CGRectGetMinY(v135);
    v136.origin.x = v56;
    v136.origin.y = v57;
    v136.size.width = v58;
    v136.size.height = v59;
    v61 = CGRectGetMinY(v136);

    if (v60 >= v61)
    {
LABEL_33:
      ++v8;
      v49 += 32;
      --v50;
      if (v126 + 1 != v124)
      {
        goto LABEL_34;
      }

      v8 = v124;
      v9 = v117;
      v5 = v119;
      v6 = a3;
      v10 = v121;
      goto LABEL_43;
    }

    if (!v48)
    {
      break;
    }

    v53 = *(v55 + 32);
    v52 = *(v55 + 48);
    v62 = *(v55 + 16);
    *(v55 + 32) = *v55;
    *(v55 + 48) = v62;
    *v55 = v53;
    *(v55 + 16) = v52;
    v55 -= 32;
    if (__CFADD__(v54++, 1))
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100019A14(double *__dst, double *__src, _OWORD *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __src || &__src[4 * v13] <= a4)
    {
      memmove(a4, __src, 32 * v13);
    }

    v14 = &v4[4 * v13];
    if (v11 >= 32 && v6 > v7)
    {
      sub_10003A7A8();
LABEL_29:
      v43 = v6 - 4;
      v5 -= 2;
      v28 = v14;
      do
      {
        v29 = *(v28 - 32);
        v30 = *(v28 - 24);
        v28 -= 32;
        v31 = *(v28 + 16);
        v32 = *(v28 + 24);
        v33 = *(v6 - 4);
        v34 = *(v6 - 3);
        v35 = *(v6 - 2);
        v36 = *(v6 - 1);
        sub_10003A798();
        sub_10003A758();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v46.origin.x = v29;
        v46.origin.y = v30;
        v46.size.width = v31;
        v46.size.height = v32;
        MinY = CGRectGetMinY(v46);
        v47.origin.x = v33;
        v47.origin.y = v34;
        v47.size.width = v35;
        v47.size.height = v36;
        v38 = CGRectGetMinY(v47);

        v39 = v5 + 2;
        if (MinY < v38)
        {
          if (v39 != v6)
          {
            v41 = *(v6 - 1);
            *v5 = *v43;
            v5[1] = v41;
          }

          if (v14 <= v4 || (v6 -= 4, v43 <= v7))
          {
            v6 = v43;
            goto LABEL_42;
          }

          goto LABEL_29;
        }

        if (v39 != v14)
        {
          v40 = *(v28 + 16);
          *v5 = *v28;
          v5[1] = v40;
        }

        v5 -= 2;
        v14 = v28;
      }

      while (v28 > v4);
      v14 = v28;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      sub_10003A7A8();
      while (1)
      {
        v15 = *v6;
        v16 = v6[1];
        v17 = v6[2];
        v18 = v6[3];
        v19 = *v4;
        v20 = v4[1];
        v21 = v4[2];
        v22 = v4[3];
        sub_10003A798();
        sub_10003A758();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v44.origin.x = v15;
        v44.origin.y = v16;
        v44.size.width = v17;
        v44.size.height = v18;
        v23 = CGRectGetMinY(v44);
        v45.origin.x = v19;
        v45.origin.y = v20;
        v45.size.width = v21;
        v45.size.height = v22;
        v24 = CGRectGetMinY(v45);

        if (v23 >= v24)
        {
          break;
        }

        v25 = v6;
        v26 = v7 == v6;
        v6 += 4;
        if (!v26)
        {
          goto LABEL_19;
        }

LABEL_20:
        v7 += 4;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_22;
        }
      }

      v25 = v4;
      v26 = v7 == v4;
      v4 += 4;
      if (v26)
      {
        goto LABEL_20;
      }

LABEL_19:
      v27 = *(v25 + 1);
      *v7 = *v25;
      *(v7 + 1) = v27;
      goto LABEL_20;
    }

LABEL_22:
    v6 = v7;
  }

LABEL_42:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_100019D84(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100019E10(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100019E24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001B2C(&qword_10004CF88, &qword_10003CE68);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_100019F8C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_100039F28();
  sub_100039B68();
  sub_100039B68();
  sub_10003A118();
  type metadata accessor for LoadedView.OverlayBlur();
  swift_getWitnessTable();
  sub_100039EE8();
  sub_100001B74(&qword_10004CF70, &qword_10003CE60);
  sub_100039B68();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_100039EB8();
  sub_1000073FC(&qword_10004CF78, &qword_10004CF70, &qword_10003CE60);
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_100039F58();
  sub_100039B68();
  sub_100018930(&qword_10004CF80, &type metadata accessor for SafeAreaPaddingModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100039A98();
  return swift_getWitnessTable();
}

uint64_t sub_10001A29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100001B2C(&qword_10004C5F0, "r%");
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10001A414(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100001B2C(&qword_10004C5F0, "r%");
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for PlaceholderView()
{
  result = qword_10004CFE8;
  if (!qword_10004CFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001A5D0()
{
  sub_10001A6C0(319, &qword_10004C810, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_10001A6C0(319, &qword_10004C660, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_10001A6C0(319, &qword_10004C670, &type metadata accessor for WidgetRenderingMode);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001A6C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000399D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10001A730()
{
  v0 = sub_10003A4A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v10 - v6;
  sub_1000176B0(v10 - v6);
  (*(v1 + 104))(v4, enum case for WidgetFamily.systemSmall(_:), v0);
  sub_10001BA84(&qword_10004C888, &type metadata accessor for WidgetFamily);
  sub_10003A718();
  sub_10003A718();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v7, v0);
  if (v10[1] == v10[0])
  {
    return 0x1000000000000012;
  }

  else
  {
    return 0x1000000000000024;
  }
}

uint64_t sub_10001A8F0()
{
  v0 = sub_10003A4A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v10 - v6;
  sub_1000176B0(v10 - v6);
  (*(v1 + 104))(v4, enum case for WidgetFamily.systemSmall(_:), v0);
  sub_10001BA84(&qword_10004C888, &type metadata accessor for WidgetFamily);
  sub_10003A718();
  sub_10003A718();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v7, v0);
  if (v10[1] == v10[0])
  {
    return 0x100000000000001ELL;
  }

  else
  {
    return 0x100000000000003CLL;
  }
}

uint64_t sub_10001AAB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v34 = sub_100039F48();
  v32 = *(v34 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v34);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100039B88();
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PlaceholderView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100001B2C(&qword_10004D028, &qword_10003CED8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (&v29 - v15);
  v29 = sub_100001B2C(&qword_10004D030, &unk_10003CEE0);
  v17 = *(v29 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v29);
  v20 = &v29 - v19;
  sub_10001B478(v2, v12);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_10001B6D8(v12, v22 + v21);
  *v16 = nullsub_1;
  v16[1] = 0;
  v16[2] = sub_10001B73C;
  v16[3] = v22;
  v16[4] = sub_10001B0F8;
  v16[5] = 0;
  v23 = *(v13 + 76);
  *(v16 + v23) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v24 = v16 + *(v13 + 80);
  *v24 = swift_getKeyPath();
  *(v24 + 1) = 0;
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v24[32] = 0;
  sub_100039B78();
  v25 = sub_1000073FC(&qword_10004D038, &qword_10004D028, &qword_10003CED8);
  sub_10003A228();
  (*(v5 + 8))(v8, v30);
  sub_10001B7B4(v16);
  v26 = v31;
  sub_100039F38();
  v35 = v2;
  sub_10003A3D8();
  sub_100001B2C(&qword_10004D040, &qword_10003CF50);
  v36 = v13;
  v37 = v25;
  swift_getOpaqueTypeConformance2();
  sub_10001B824();
  v27 = v29;
  sub_10003A1B8();
  (*(v32 + 8))(v26, v34);
  return (*(v17 + 8))(v20, v27);
}

uint64_t sub_10001AF50@<X0>(uint64_t a1@<X8>)
{
  sub_10001A730();
  v2 = sub_100039DC8();
  v4 = v3;
  v6 = v5;
  v23 = v7;
  sub_10001A8F0();
  v8 = sub_100039DC8();
  v10 = v9;
  v12 = v11;
  v14 = v13 & 1;
  v15 = type metadata accessor for LabelsModule(0);
  v16 = v15[6];
  v17 = sub_100039128();
  (*(*(v17 - 8) + 56))(a1 + v16, 1, 1, v17);
  v18 = v15[7];
  v19 = sub_100039398();
  (*(*(v19 - 8) + 56))(a1 + v18, 1, 1, v19);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v23;
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  v20 = v15[8];
  *(a1 + v20) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v21 = v15[9];
  *(a1 + v21) = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10001B104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_100001B2C(&qword_10004D058, &qword_10003CF58);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  __chkstk_darwin(v3);
  v28 = &v28 - v5;
  v6 = sub_10003A458();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_100001B2C(&qword_10004D040, &qword_10003CF50);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v28 - v16;
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = type metadata accessor for PlaceholderView();
  v19 = a1 + *(v18 + 24);
  sub_1000178D8(v13);
  sub_10003A448();
  sub_10001BA84(&qword_10004D070, &type metadata accessor for WidgetRenderingMode);
  LOBYTE(v19) = sub_10003A628();
  v20 = *(v7 + 8);
  v20(v10, v6);
  v20(v13, v6);
  if (v19)
  {
    v21 = *(v18 + 20);
    v22 = v30;
    v23 = v28;
    v24 = &v28[*(v30 + 36)];
    v25 = sub_100001B2C(&qword_10004CB48, &qword_10003C7D8);
    sub_100017688(v24 + *(v25 + 28));
    *v24 = swift_getKeyPath();
    *v23 = 256;
    sub_100007308(v23, v17, &qword_10004D058, &qword_10003CF58);
    v26 = 0;
  }

  else
  {
    v26 = 1;
    v22 = v30;
  }

  (*(v29 + 56))(v17, v26, 1, v22);
  sub_100007308(v17, v31, &qword_10004D040, &qword_10003CF50);
}

uint64_t sub_10001B478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B4DC()
{
  v1 = type metadata accessor for PlaceholderView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v0 + v2);
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_10003A4A8();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
  }

  else
  {
    v6 = *v4;
  }

  v7 = *(v1 + 20);
  sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1000399C8();
    (*(*(v8 - 8) + 8))(&v4[v7], v8);
  }

  else
  {
    v9 = *&v4[v7];
  }

  v10 = *(v1 + 24);
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10003A458();
    (*(*(v11 - 8) + 8))(&v4[v10], v11);
  }

  else
  {
    v12 = *&v4[v10];
  }

  return swift_deallocObject();
}

uint64_t sub_10001B6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B73C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for PlaceholderView() - 8) + 80);

  return sub_10001AF50(a1);
}

uint64_t sub_10001B7B4(uint64_t a1)
{
  v2 = sub_100001B2C(&qword_10004D028, &qword_10003CED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001B824()
{
  result = qword_10004D048;
  if (!qword_10004D048)
  {
    sub_100001B74(&qword_10004D040, &qword_10003CF50);
    sub_10001B8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D048);
  }

  return result;
}

unint64_t sub_10001B8A8()
{
  result = qword_10004D050;
  if (!qword_10004D050)
  {
    sub_100001B74(&qword_10004D058, &qword_10003CF58);
    sub_1000073FC(&qword_10004D060, &qword_10004D068, &unk_10003CF60);
    sub_1000073FC(&qword_10004CB40, &qword_10004CB48, &qword_10003C7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004D050);
  }

  return result;
}

uint64_t sub_10001B9B0(uint64_t a1)
{
  v2 = sub_1000399C8();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_100039BA8();
}

uint64_t sub_10001BA84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001BACC()
{
  sub_100001B74(&qword_10004D030, &unk_10003CEE0);
  sub_100001B74(&qword_10004D040, &qword_10003CF50);
  sub_100001B74(&qword_10004D028, &qword_10003CED8);
  sub_1000073FC(&qword_10004D038, &qword_10004D028, &qword_10003CED8);
  swift_getOpaqueTypeConformance2();
  sub_10001B824();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001BBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10001BD30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100001B2C(&qword_10004C788, &unk_10003C4E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100001B2C(&qword_10004C5E8, &unk_10003C3A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for TemplateInformationView()
{
  result = qword_10004D0D0;
  if (!qword_10004D0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001BEB8()
{
  sub_10000E128(319, &qword_10004C810, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_10000E128(319, &qword_10004C660, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10001BFA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[1] = a1;
  v3 = sub_100039F48();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TemplateInformationView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = sub_100001B2C(&qword_10004D110, &qword_10003D038);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v20 - v13);
  sub_10001C580(v1, v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_10001C784(v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *v14 = nullsub_1;
  v14[1] = 0;
  v14[2] = sub_10001C7E8;
  v14[3] = v16;
  v14[4] = sub_10001C43C;
  v14[5] = 0;
  v17 = *(v11 + 76);
  *(v14 + v17) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v18 = v14 + *(v11 + 80);
  *v18 = swift_getKeyPath();
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v18[32] = 0;
  sub_100039F38();
  v20[4] = v2;
  sub_10003A3D8();
  sub_100001B2C(&qword_10004D118, &unk_10003D0A0);
  sub_1000073FC(&qword_10004D120, &qword_10004D110, &qword_10003D038);
  sub_10001C868();
  sub_10003A1B8();
  (*(v4 + 8))(v7, v3);
  return sub_10001C978(v14);
}

uint64_t sub_10001C2C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v6 = a1[3];
  v7 = type metadata accessor for LabelsModule(0);
  v8 = v7[6];
  v9 = sub_100039128();
  (*(*(v9 - 8) + 56))(a2 + v8, 1, 1, v9);
  v10 = v7[7];
  v11 = sub_100039398();
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  v12 = v7[8];
  *(a2 + v12) = swift_getKeyPath();
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  swift_storeEnumTagMultiPayload();
  v13 = v7[9];
  *(a2 + v13) = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_10001C450@<X0>(uint64_t *a1@<X8>)
{
  sub_10003A7A8();
  sub_10003A798();
  sub_10003A758();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = swift_getKeyPath();
  sub_100001B2C(&qword_10004C6D0, &qword_10003C810);
  swift_storeEnumTagMultiPayload();
  v2 = *(type metadata accessor for TemplateInformationView() + 24);
  v3 = (a1 + *(sub_100001B2C(&qword_10004D118, &unk_10003D0A0) + 36));
  v4 = sub_100001B2C(&qword_10004CB48, &qword_10003C7D8);
  sub_100017688(v3 + *(v4 + 28));
  KeyPath = swift_getKeyPath();

  *v3 = KeyPath;
  return result;
}

uint64_t sub_10001C580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemplateInformationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C5E4()
{
  v1 = type metadata accessor for TemplateInformationView();
  v2 = *(*(v1 - 8) + 64);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 24);

  v6 = *(v1 + 20);
  sub_100001B2C(&qword_10004CA50, &qword_10003CBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10003A4A8();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    v8 = *(v3 + v6);
  }

  v9 = *(v1 + 24);
  sub_100001B2C(&qword_10004C6C8, &unk_10003C440);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1000399C8();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
    v11 = *(v3 + v9);
  }

  return swift_deallocObject();
}