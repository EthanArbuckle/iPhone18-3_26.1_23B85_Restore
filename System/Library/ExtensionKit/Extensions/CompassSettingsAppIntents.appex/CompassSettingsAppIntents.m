uint64_t sub_1000010D8(uint64_t a1)
{
  v2 = sub_10000122C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001184();
  sub_100004E0C();
  return 0;
}

unint64_t sub_100001184()
{
  result = qword_10000C010;
  if (!qword_10000C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C010);
  }

  return result;
}

unint64_t sub_10000122C()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_100001294()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

uint64_t sub_1000012E8()
{
  v0 = sub_100002E40(&qword_10000C168, &qword_1000055B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100004DFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100004DBC();
  sub_100002EC0(v7, qword_10000D190);
  sub_100002E88(v7, qword_10000D190);
  sub_100004DEC();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100004DAC();
}

uint64_t sub_100001458@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = (*(*(sub_100002E40(&qword_10000C160, &qword_1000055A8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v27 = &v26 - v3;
  v4 = (*(*(sub_100002E40(&qword_10000C168, &qword_1000055B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v6 = &v26 - v5;
  v7 = sub_100004DFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - v14;
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v28 = v1;
  v18 = *v1;
  sub_100004DEC();
  v19 = *(v8 + 32);
  v19(v17, v15, v7);
  sub_100004DEC();
  v19(v6, v12, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v20 = *(type metadata accessor for CompassSettingsDeepLink() + 20);
  v21 = sub_100004CDC();
  v22 = *(v21 - 8);
  v23 = &v28[v20];
  v24 = v27;
  (*(v22 + 16))(v27, v23, v21);
  (*(v22 + 56))(v24, 0, 1, v21);
  return sub_100004CEC();
}

uint64_t sub_100001770(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100001814;

  return sub_100003160();
}

uint64_t sub_100001814(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = a1;

  if (v1)
  {

    v4 = sub_100001A58;
  }

  else
  {
    v4 = sub_100001930;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100001930()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for CompassSettingsDeepLink();
    v4 = *(v3 - 8);
    sub_1000033C8(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v5 = 0;
  }

  else
  {
    v6 = v0[4];

    v3 = type metadata accessor for CompassSettingsDeepLink();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);
  v7 = v0[1];

  return v7();
}

uint64_t sub_100001A58()
{
  v1 = type metadata accessor for CompassSettingsDeepLink();
  (*(*(v1 - 8) + 56))(*(v0 + 16), 1, 1, v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100001AF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100001B94;

  return sub_1000036AC();
}

uint64_t sub_100001B94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_100001CAC()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_100001D04()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

uint64_t type metadata accessor for CompassSettingsDeepLink()
{
  result = qword_10000C128;
  if (!qword_10000C128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001DD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003930;

  return sub_100003494(a1);
}

uint64_t sub_100001E80(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003918;

  return sub_100003160();
}

uint64_t sub_100001F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100001FE4;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100001FE4(uint64_t a1)
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

unint64_t sub_1000020E8()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

unint64_t sub_100002174()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    sub_100002214(&qword_10000C068, qword_1000051E8);
    sub_100002F24(&qword_10000C058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

uint64_t sub_100002214(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10000225C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100001294();
  *v6 = v2;
  v6[1] = sub_100002310;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100002310()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002404(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002310;

  return sub_100001770(a1);
}

uint64_t sub_1000024D8()
{
  v0 = sub_100002E40(&qword_10000C178, &qword_1000055B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100002E40(&qword_10000C180, &qword_1000055C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100002F24(&qword_10000C048);
  sub_100004D6C();
  v9._object = 0x8000000100005A10;
  v9._countAndFlagsBits = 0xD00000000000003FLL;
  sub_100004D5C(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100004D4C();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100004D5C(v10);
  return sub_100004D7C();
}

uint64_t sub_1000026B8()
{
  v0 = qword_10000C020;

  return v0;
}

unint64_t sub_100002790()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

uint64_t sub_1000027E4()
{
  sub_100002F24(&qword_10000C170);
  v1 = sub_100004D1C();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10000290C()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_10000296C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_100004DBC();
  v3 = sub_100002E88(v2, qword_10000D190);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100002A18()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    sub_100002214(&qword_10000C0C0, &qword_100005488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_100002A7C(uint64_t a1)
{
  v2 = sub_100002F24(&qword_10000C048);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100002B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003914;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100002BE0(uint64_t a1)
{
  v2 = sub_100002F24(&qword_10000C0A8);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100002C5C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100004CDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_100002D14(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_100004CDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100002DB4()
{
  result = sub_100004CDC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100002E40(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002E88(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002EC0(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100002F24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CompassSettingsDeepLink();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_100002F68(size_t a1, int64_t a2, char a3)
{
  result = sub_100002F88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100002F88(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100002E40(&qword_10000C188, &qword_1000055D8);
  v10 = *(type metadata accessor for CompassSettingsDeepLink() - 8);
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
  v15 = *(type metadata accessor for CompassSettingsDeepLink() - 8);
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

uint64_t sub_100003160()
{
  v1 = type metadata accessor for CompassSettingsDeepLink();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10000321C, 0, 0);
}

uint64_t sub_10000321C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_100002F68(0, 2, 0);
  *v1 = 0;
  v4 = &v1[*(v3 + 20)];
  sub_100004CCC();
  v6 = _swiftEmptyArrayStorage[2];
  v5 = _swiftEmptyArrayStorage[3];
  if (v6 >= v5 >> 1)
  {
    sub_100002F68(v5 > 1, v6 + 1, 1);
  }

  v7 = v0[4];
  _swiftEmptyArrayStorage[2] = v6 + 1;
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = *(v2 + 72);
  sub_10000342C(v7, _swiftEmptyArrayStorage + v8 + v9 * v6);
  *v7 = 1;
  v10 = &v7[*(v3 + 20)];
  sub_100004CCC();
  v12 = _swiftEmptyArrayStorage[2];
  v11 = _swiftEmptyArrayStorage[3];
  if (v12 >= v11 >> 1)
  {
    sub_100002F68(v11 > 1, v12 + 1, 1);
  }

  v13 = v0[4];
  _swiftEmptyArrayStorage[2] = v12 + 1;
  sub_10000342C(v13, _swiftEmptyArrayStorage + v8 + v12 * v9);

  v14 = v0[1];

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_1000033C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompassSettingsDeepLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000342C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompassSettingsDeepLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003494(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for CompassSettingsDeepLink();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100003554, 0, 0);
}

uint64_t sub_100003554()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = v0[3];
    v3 = v0[4];
    sub_100002F68(0, v2, 0);
    v5 = (v1 + 32);
    do
    {
      *v0[5] = *v5;
      v6 = *(v4 + 20);
      sub_100004CCC();
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_100002F68(v7 > 1, v8 + 1, 1);
      }

      v9 = v0[5];
      _swiftEmptyArrayStorage[2] = v8 + 1;
      sub_10000342C(v9, _swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8);
      ++v5;
      --v2;
    }

    while (v2);
  }

  v10 = v0[5];

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_1000036AC()
{
  v1 = type metadata accessor for CompassSettingsDeepLink();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_100003768, 0, 0);
}

uint64_t sub_100003768()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_100002F68(0, 2, 0);
  *v1 = 0;
  v4 = &v1[*(v3 + 20)];
  sub_100004CCC();
  v6 = _swiftEmptyArrayStorage[2];
  v5 = _swiftEmptyArrayStorage[3];
  if (v6 >= v5 >> 1)
  {
    sub_100002F68(v5 > 1, v6 + 1, 1);
  }

  v7 = v0[4];
  _swiftEmptyArrayStorage[2] = v6 + 1;
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = *(v2 + 72);
  sub_10000342C(v7, _swiftEmptyArrayStorage + v8 + v9 * v6);
  *v7 = 1;
  v10 = &v7[*(v3 + 20)];
  sub_100004CCC();
  v12 = _swiftEmptyArrayStorage[2];
  v11 = _swiftEmptyArrayStorage[3];
  if (v12 >= v11 >> 1)
  {
    sub_100002F68(v11 > 1, v12 + 1, 1);
  }

  v13 = v0[4];
  _swiftEmptyArrayStorage[2] = v12 + 1;
  sub_10000342C(v13, _swiftEmptyArrayStorage + v8 + v12 * v9);

  v14 = v0[1];

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_100003934(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x5552545F45535523;
  }

  else
  {
    v4 = 47;
  }

  if (v3)
  {
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = 0xEF4854524F4E5F45;
  }

  if (*a2)
  {
    v6 = 0x5552545F45535523;
  }

  else
  {
    v6 = 47;
  }

  if (*a2)
  {
    v7 = 0xEF4854524F4E5F45;
  }

  else
  {
    v7 = 0xE100000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100004E3C();
  }

  return v9 & 1;
}

unint64_t sub_1000039E0()
{
  result = qword_10000C190;
  if (!qword_10000C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C190);
  }

  return result;
}

Swift::Int sub_100003A34()
{
  v1 = *v0;
  sub_100004E4C();
  sub_100004E1C();

  return sub_100004E5C();
}

uint64_t sub_100003AB8()
{
  *v0;
  sub_100004E1C();
}

Swift::Int sub_100003B28()
{
  v1 = *v0;
  sub_100004E4C();
  sub_100004E1C();

  return sub_100004E5C();
}

uint64_t sub_100003BA8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000087E8;
  v8._object = v3;
  v5 = sub_100004E2C(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100003C08(uint64_t *a1@<X8>)
{
  v2 = 47;
  if (*v1)
  {
    v2 = 0x5552545F45535523;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xEF4854524F4E5F45;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100003C4C()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    sub_100002214(&qword_10000C1A0, qword_1000056A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

uint64_t sub_100003CC0()
{
  if (*v0)
  {
    result = 0x5552545F45535523;
  }

  else
  {
    result = 47;
  }

  *v0;
  return result;
}

uint64_t sub_100003CFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{

  v6._rawValue = &off_1000087E8;
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  v7 = sub_100004E2C(v6, v10);

  if (v7 == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (!v7)
  {
    v9 = 0;
  }

  *a3 = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for CompassSettingsDeepLinkDestination(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CompassSettingsDeepLinkDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100003EE4()
{
  result = qword_10000C1B8;
  if (!qword_10000C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B8);
  }

  return result;
}

uint64_t sub_100003F6C()
{
  v0 = sub_100004DFC();
  sub_100002EC0(v0, qword_10000D1A8);
  sub_100002E88(v0, qword_10000D1A8);
  return sub_100004DEC();
}

uint64_t sub_100003FF4(uint64_t a1)
{
  v3 = type metadata accessor for CompassSettingsDeepLink();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_1000033C8(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100004CAC();
  return sub_100004B5C(a1);
}

void (*sub_100004084(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100004C8C();
  return sub_1000040F8;
}

void sub_1000040F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100004144()
{
  result = qword_10000C1C0;
  if (!qword_10000C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C0);
  }

  return result;
}

uint64_t sub_100004198(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004AB4();
  v5 = sub_100002F24(&qword_10000C170);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100004224()
{
  v0 = qword_10000C1A8;

  return v0;
}

unint64_t sub_100004264()
{
  result = qword_10000C1C8;
  if (!qword_10000C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C8);
  }

  return result;
}

unint64_t sub_1000042BC()
{
  result = qword_10000C1D0;
  if (!qword_10000C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D0);
  }

  return result;
}

unint64_t sub_100004314()
{
  result = qword_10000C1D8;
  if (!qword_10000C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D8);
  }

  return result;
}

uint64_t sub_1000043B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C008 != -1)
  {
    swift_once();
  }

  v2 = sub_100004DFC();
  v3 = sub_100002E88(v2, qword_10000D1A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100004460(uint64_t a1)
{
  v2 = sub_100004AB4();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1000044B4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100004AB4();
  v7 = sub_100004B08();
  v8 = sub_100002F24(&qword_10000C170);
  *v5 = v2;
  v5[1] = sub_10000459C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10000459C()
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

uint64_t sub_1000046A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004718();
  *a1 = result;
  return result;
}

uint64_t sub_1000046CC(uint64_t a1)
{
  v2 = sub_100004144();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100004718()
{
  v27 = sub_100004D8C();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002E40(&qword_10000C1E0, &qword_100005990);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_100002E40(&qword_10000C1E8, &unk_100005998);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_100002E40(&qword_10000C168, &qword_1000055B0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_100004DFC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_100002E40(&qword_10000C1F0, &qword_1000059A8);
  sub_100004DEC();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for CompassSettingsDeepLink();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100004C7C();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_100002F24(&qword_10000C048);
  return sub_100004CBC();
}

unint64_t sub_100004AB4()
{
  result = qword_10000C1F8;
  if (!qword_10000C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F8);
  }

  return result;
}

unint64_t sub_100004B08()
{
  result = qword_10000C200;
  if (!qword_10000C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C200);
  }

  return result;
}

uint64_t sub_100004B5C(uint64_t a1)
{
  v2 = type metadata accessor for CompassSettingsDeepLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}