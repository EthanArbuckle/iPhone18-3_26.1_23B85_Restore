uint64_t sub_100001320(uint64_t a1)
{
  v2 = sub_100001474();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000013CC();
  sub_100004CD8();
  return 0;
}

unint64_t sub_1000013CC()
{
  result = qword_10000C1C0;
  if (!qword_10000C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C0);
  }

  return result;
}

unint64_t sub_100001474()
{
  result = qword_10000C1C8;
  if (!qword_10000C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C8);
  }

  return result;
}

unint64_t sub_1000014DC()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

uint64_t sub_100001530()
{
  v0 = sub_100002DDC(&qword_10000C340, "2\b");
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100004CB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100004C78();
  sub_100002ECC(v7, qword_10000D500);
  sub_100002E94(v7, qword_10000D500);
  sub_100004CA8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100004C68();
}

uint64_t sub_1000016A0()
{
  v1 = (*(*(sub_100002DDC(&qword_10000C338, "2\b") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v3 = &v24 - v2;
  v4 = *(*(sub_100002DDC(&qword_10000C340, "2\b") - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = sub_100004CB8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v24 - v16;
  v18 = *v0;
  sub_100004CA8();
  (*(v11 + 32))(v17, v15, v10);
  if (v18)
  {
    sub_100004CA8();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v11 + 56))(v7, v19, 1, v10);
  sub_100002E24(v7, v9);
  v20 = *(type metadata accessor for LocalCaptureSettingsDeepLink() + 20);
  v21 = sub_100004B98();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v3, &v0[v20], v21);
  (*(v22 + 56))(v3, 0, 1, v21);
  return sub_100004BA8();
}

uint64_t sub_1000019C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000314C(&off_1000087A8, 1);
  if (v2[2])
  {
    v3 = v2;
    v4 = type metadata accessor for LocalCaptureSettingsDeepLink();
    v11 = *(v4 - 8);
    sub_100003430(v3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), a1);

    v5 = *(v11 + 56);
    v6 = a1;
    v7 = 0;
    v8 = v4;
  }

  else
  {

    v9 = type metadata accessor for LocalCaptureSettingsDeepLink();
    v5 = *(*(v9 - 8) + 56);
    v8 = v9;
    v6 = a1;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

uint64_t sub_100001AD0(void *a1)
{
  *a1 = sub_10000314C(&off_1000087D0, 0);
  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_100001B4C()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

unint64_t sub_100001BA4()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

uint64_t type metadata accessor for LocalCaptureSettingsDeepLink()
{
  result = qword_10000C300;
  if (!qword_10000C300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001C78(uint64_t a1)
{
  v2 = sub_10000314C(a1, 1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100001CDC(void *a1)
{
  *a1 = sub_10000314C(&off_1000087F8, 1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100001D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100001E10;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100001E10(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_100001F14()
{
  result = qword_10000C200;
  if (!qword_10000C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C200);
  }

  return result;
}

unint64_t sub_100001FA0()
{
  result = qword_10000C210;
  if (!qword_10000C210)
  {
    sub_100002040(&qword_10000C218, qword_100005128);
    sub_100002F30(&qword_10000C208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C210);
  }

  return result;
}

uint64_t sub_100002040(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002088(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000014DC();
  *v6 = v2;
  v6[1] = sub_10000213C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000213C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002230(uint64_t a1)
{
  sub_1000019C4(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1000022CC()
{
  v0 = sub_100002DDC(&qword_10000C350, "2\b");
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100002DDC(&qword_10000C358, &qword_100005510);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100002F30(&qword_10000C1F8);
  sub_100004C28();
  v9._object = 0x8000000100005A10;
  v9._countAndFlagsBits = 0xD00000000000003ELL;
  sub_100004C18(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100004C08();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100004C18(v10);
  return sub_100004C38();
}

uint64_t sub_1000024AC()
{
  v0 = qword_10000C1D0;

  return v0;
}

unint64_t sub_100002584()
{
  result = qword_10000C240;
  if (!qword_10000C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C240);
  }

  return result;
}

uint64_t sub_1000025D8()
{
  sub_100002F30(&qword_10000C348);
  v1 = sub_100004BD8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002700()
{
  result = qword_10000C260;
  if (!qword_10000C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C260);
  }

  return result;
}

uint64_t sub_100002760@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C1A8 != -1)
  {
    swift_once();
  }

  v2 = sub_100004C78();
  v3 = sub_100002E94(v2, qword_10000D500);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000280C()
{
  result = qword_10000C268;
  if (!qword_10000C268)
  {
    sub_100002040(&qword_10000C270, &qword_1000053C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C268);
  }

  return result;
}

uint64_t sub_100002870(uint64_t a1)
{
  v2 = sub_100002F30(&qword_10000C1F8);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100002910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000213C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000029D4(uint64_t a1)
{
  v2 = sub_100002F30(&qword_10000C258);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

id sub_100002A3C()
{
  result = [objc_allocWithZone(type metadata accessor for Features()) init];
  qword_10000D518 = result;
  return result;
}

Swift::Int sub_100002A74()
{
  sub_100004D18();
  sub_100004D28(0);
  return sub_100004D38();
}

Swift::Int sub_100002AE0()
{
  sub_100004D18();
  sub_100004D28(0);
  return sub_100004D38();
}

id sub_100002B88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Features();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100002BF8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100004B98();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_100002CB0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_100004B98();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100002D50()
{
  result = sub_100004B98();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100002DDC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002DDC(&qword_10000C340, "2\b");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002E94(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002ECC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100002F30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LocalCaptureSettingsDeepLink();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_100002F74(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002DDC(&qword_10000C368, &qword_100005518);
  v10 = *(type metadata accessor for LocalCaptureSettingsDeepLink() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for LocalCaptureSettingsDeepLink() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10000314C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for LocalCaptureSettingsDeepLink();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v27[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27[-1] - v10;
  if (qword_10000C1B0 != -1)
  {
    swift_once();
  }

  v27[3] = &type metadata for Features.LocalCapure;
  v27[4] = sub_100003494();
  v12 = sub_100004CC8();
  sub_1000034E8(v27);
  if ((v12 & 1) == 0)
  {
    return &_swiftEmptyArrayStorage;
  }

  v13 = *(a1 + 16);
  if (a2)
  {
    if (v13)
    {
      v14 = (a1 + 32);
      v15 = &_swiftEmptyArrayStorage;
      do
      {
        v16 = *v14++;
        *v11 = v16;
        v17 = &v11[*(v4 + 20)];
        sub_100004B88();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100002F74(0, v15[2] + 1, 1, v15);
        }

        v19 = v15[2];
        v18 = v15[3];
        if (v19 >= v18 >> 1)
        {
          v15 = sub_100002F74(v18 > 1, v19 + 1, 1, v15);
        }

        v15[2] = v19 + 1;
        sub_100003534(v11, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19);
        --v13;
      }

      while (v13);
      return v15;
    }

    return &_swiftEmptyArrayStorage;
  }

  if (!v13)
  {
    return &_swiftEmptyArrayStorage;
  }

  v20 = (a1 + 32);
  v15 = &_swiftEmptyArrayStorage;
  do
  {
    v21 = *v20++;
    *v9 = v21;
    v22 = &v9[*(v4 + 20)];
    sub_100004B88();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_100002F74(0, v15[2] + 1, 1, v15);
    }

    v24 = v15[2];
    v23 = v15[3];
    if (v24 >= v23 >> 1)
    {
      v15 = sub_100002F74(v23 > 1, v24 + 1, 1, v15);
    }

    v15[2] = v24 + 1;
    sub_100003534(v9, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24);
    --v13;
  }

  while (v13);
  return v15;
}

uint64_t sub_100003430(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalCaptureSettingsDeepLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100003494()
{
  result = qword_10000C360;
  if (!qword_10000C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C360);
  }

  return result;
}

uint64_t sub_1000034E8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100003534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalCaptureSettingsDeepLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for Features.LocalCapure(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Features.LocalCapure(_WORD *result, int a2, int a3)
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

unint64_t sub_10000368C()
{
  result = qword_10000C370;
  if (!qword_10000C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C370);
  }

  return result;
}

uint64_t sub_1000036F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6C5F6576617323;
  v4 = 0xEE006E6F69746163;
  if (v2 != 1)
  {
    v3 = 0x6F5F6F6964756123;
    v4 = 0xEB00000000796C6ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 47;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0x6F6C5F6576617323;
  v8 = 0xEE006E6F69746163;
  if (*a2 != 1)
  {
    v7 = 0x6F5F6F6964756123;
    v8 = 0xEB00000000796C6ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 47;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100004D08();
  }

  return v11 & 1;
}

unint64_t sub_10000381C()
{
  result = qword_10000C378;
  if (!qword_10000C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C378);
  }

  return result;
}

Swift::Int sub_100003870()
{
  v1 = *v0;
  sub_100004D18();
  sub_100004CE8();

  return sub_100004D38();
}

uint64_t sub_10000391C()
{
  *v0;
  *v0;
  sub_100004CE8();
}

Swift::Int sub_1000039B4()
{
  v1 = *v0;
  sub_100004D18();
  sub_100004CE8();

  return sub_100004D38();
}

uint64_t sub_100003A5C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100003D84(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100003A8C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xEE006E6F69746163;
  v5 = 0x6F6C5F6576617323;
  if (v2 != 1)
  {
    v5 = 0x6F5F6F6964756123;
    v4 = 0xEB00000000796C6ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 47;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100003AF8()
{
  result = qword_10000C380;
  if (!qword_10000C380)
  {
    sub_100002040(&qword_10000C388, qword_100005670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C380);
  }

  return result;
}

uint64_t sub_100003B6C()
{
  v1 = 0x6F6C5F6576617323;
  if (*v0 != 1)
  {
    v1 = 0x6F5F6F6964756123;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 47;
  }
}

uint64_t sub_100003BD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100003D84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LocalCaptureSettingsDeepLinkDestination(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LocalCaptureSettingsDeepLinkDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100003D84(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008820;
  v6._object = a2;
  v4 = sub_100004CF8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100003DD4()
{
  result = qword_10000C390;
  if (!qword_10000C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C390);
  }

  return result;
}

uint64_t sub_100003E5C()
{
  v0 = sub_100004CB8();
  sub_100002ECC(v0, qword_10000D520);
  sub_100002E94(v0, qword_10000D520);
  return sub_100004CA8();
}

uint64_t sub_100003EE4(uint64_t a1)
{
  v3 = type metadata accessor for LocalCaptureSettingsDeepLink();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_100003430(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100004B68();
  return sub_100004A04(a1);
}

void (*sub_100003F74(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100004B48();
  return sub_100003FE8;
}

void sub_100003FE8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100004038()
{
  result = qword_10000C398;
  if (!qword_10000C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C398);
  }

  return result;
}

uint64_t sub_10000408C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000495C();
  v5 = sub_100002F30(&qword_10000C348);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100004114()
{
  result = qword_10000C3A0;
  if (!qword_10000C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C3A0);
  }

  return result;
}

unint64_t sub_10000416C()
{
  result = qword_10000C3A8;
  if (!qword_10000C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C3A8);
  }

  return result;
}

unint64_t sub_1000041C4()
{
  result = qword_10000C3B0;
  if (!qword_10000C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C3B0);
  }

  return result;
}

uint64_t sub_100004268@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C1B8 != -1)
  {
    swift_once();
  }

  v2 = sub_100004CB8();
  v3 = sub_100002E94(v2, qword_10000D520);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100004310(uint64_t a1)
{
  v2 = sub_10000495C();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_10000435C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000495C();
  v7 = sub_1000049B0();
  v8 = sub_100002F30(&qword_10000C348);
  *v5 = v2;
  v5[1] = sub_100004444;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100004444()
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

uint64_t sub_10000454C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000045C0();
  *a1 = result;
  return result;
}

uint64_t sub_100004574(uint64_t a1)
{
  v2 = sub_100004038();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000045C0()
{
  v27 = sub_100004C48();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002DDC(&qword_10000C3B8, &qword_100005928);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_100002DDC(&qword_10000C3C0, &unk_100005930);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_100002DDC(&qword_10000C340, "2\b");
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_100004CB8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_100002DDC(&qword_10000C3C8, qword_100005940);
  sub_100004CA8();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for LocalCaptureSettingsDeepLink();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100004B38();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_100002F30(&qword_10000C1F8);
  return sub_100004B78();
}

unint64_t sub_10000495C()
{
  result = qword_10000C3D0;
  if (!qword_10000C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C3D0);
  }

  return result;
}

unint64_t sub_1000049B0()
{
  result = qword_10000C3D8;
  if (!qword_10000C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C3D8);
  }

  return result;
}

uint64_t sub_100004A04(uint64_t a1)
{
  v2 = type metadata accessor for LocalCaptureSettingsDeepLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}