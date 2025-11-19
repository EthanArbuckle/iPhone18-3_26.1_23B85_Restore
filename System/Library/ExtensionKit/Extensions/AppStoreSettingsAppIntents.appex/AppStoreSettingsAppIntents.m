unint64_t sub_1000010DC()
{
  result = qword_10000C010;
  if (!qword_10000C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C010);
  }

  return result;
}

unint64_t sub_100001134()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_1000011F4()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_10000129C()
{
  v1 = *(v0 + 16);
  sub_100004DB4();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100001304(uint64_t a1)
{
  v2 = sub_1000011F4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100001354()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    sub_1000013B8(&qword_10000C030, &unk_100005810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

uint64_t sub_1000013B8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001400(uint64_t a1)
{
  v2 = sub_100001550();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000014A8();
  sub_100004F44();
  return 0;
}

unint64_t sub_1000014A8()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_100001550()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_1000015B4()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

uint64_t sub_100001608()
{
  v0 = sub_1000030B8(&qword_10000C190, &qword_100005D28);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100004F34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100004EF4();
  sub_1000031A8(v7, qword_10000D330);
  sub_100003170(v7, qword_10000D330);
  sub_100004F24();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100004EE4();
}

uint64_t sub_100001778()
{
  v1 = (*(*(sub_1000030B8(&qword_10000C188, &qword_100005D20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v3 = &v18 - v2;
  v4 = *(*(sub_1000030B8(&qword_10000C190, &qword_100005D28) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = sub_100004F34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = *v0;
  sub_100003820();
  sub_100004F24();
  (*(v11 + 56))(v7, 0, 1, v10);
  sub_100003100(v7, v9);
  v14 = *(type metadata accessor for AppStoreSettingsDeepLink() + 20);
  v15 = sub_100004E14();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v3, &v0[v14], v15);
  (*(v16 + 56))(v3, 0, 1, v15);
  return sub_100004E24();
}

uint64_t sub_1000019F8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100001A98;

  return sub_100003428(&off_1000087C0, 1);
}

uint64_t sub_100001A98(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100001B98, 0, 0);
}

uint64_t sub_100001B98()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for AppStoreSettingsDeepLink();
    v4 = *(v3 - 8);
    sub_100003738(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v5 = 0;
  }

  else
  {
    v6 = v0[4];

    v3 = type metadata accessor for AppStoreSettingsDeepLink();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);
  v7 = v0[1];

  return v7();
}

uint64_t sub_100001CC0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100001D60;

  return sub_100003428(&off_1000087C0, 0);
}

uint64_t sub_100001D60(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100001E7C()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100001ED4()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

uint64_t type metadata accessor for AppStoreSettingsDeepLink()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001F74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000200C;

  return sub_100003428(a1, 1);
}

uint64_t sub_10000200C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_10000210C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003808;

  return sub_100003428(&off_1000087C0, 1);
}

uint64_t sub_1000021AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000226C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10000226C(uint64_t a1)
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

unint64_t sub_100002370()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_1000023C8()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    sub_1000013B8(&qword_10000C090, qword_100005978);
    sub_10000320C(&qword_10000C080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100002468(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000015B4();
  *v6 = v2;
  v6[1] = sub_10000251C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000251C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002610(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003804;

  return sub_1000019F8(a1);
}

uint64_t sub_100002714()
{
  v0 = sub_1000030B8(&qword_10000C1A0, &qword_100005D30);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_1000030B8(&qword_10000C1A8, &qword_100005D38);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10000320C(&qword_10000C070);
  sub_100004EA4();
  v9._object = 0x8000000100005260;
  v9._countAndFlagsBits = 0xD000000000000040;
  sub_100004E94(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100004E84();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100004E94(v10);
  return sub_100004EB4();
}

uint64_t sub_1000028F4()
{
  v0 = qword_10000C048;

  return v0;
}

unint64_t sub_1000029D0()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_100002A24()
{
  sub_10000320C(&qword_10000C198);
  v1 = sub_100004E54();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002B80()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_100002BE4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_100004EF4();
  v3 = sub_100003170(v2, qword_10000D330);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100002C90()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    sub_1000013B8(&qword_10000C0E8, &qword_100005C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

uint64_t sub_100002CF4(uint64_t a1)
{
  v2 = sub_10000320C(&qword_10000C070);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100002D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000251C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100002E58(uint64_t a1)
{
  v2 = sub_10000320C(&qword_10000C0D0);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100002ED4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 246)
  {
    v4 = *a1;
    if (v4 >= 0xA)
    {
      return v4 - 9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100004E14();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_100002F8C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 246)
  {
    *result = a2 + 9;
  }

  else
  {
    v7 = sub_100004E14();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000302C()
{
  result = sub_100004E14();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000030B8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000030B8(&qword_10000C190, &qword_100005D28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003170(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000031A8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000320C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AppStoreSettingsDeepLink();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_100003250(size_t result, int64_t a2, char a3, void *a4)
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

  sub_1000030B8(&qword_10000C1B0, &unk_100005D50);
  v10 = *(type metadata accessor for AppStoreSettingsDeepLink() - 8);
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
  v15 = *(type metadata accessor for AppStoreSettingsDeepLink() - 8);
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

uint64_t sub_100003428(uint64_t a1, char a2)
{
  *(v2 + 56) = a2;
  *(v2 + 16) = a1;
  v3 = type metadata accessor for AppStoreSettingsDeepLink();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000034F8, 0, 0);
}

uint64_t sub_1000034F8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (*(v0 + 56) == 1)
  {
    if (v2)
    {
      v4 = *(v0 + 24);
      v3 = *(v0 + 32);
      v5 = (v1 + 32);
      v6 = &_swiftEmptyArrayStorage;
      do
      {
        v7 = *v5++;
        **(v0 + 48) = v7;
        v8 = *(v4 + 20);
        sub_100004E04();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_100003250(0, v6[2] + 1, 1, v6);
        }

        v10 = v6[2];
        v9 = v6[3];
        if (v10 >= v9 >> 1)
        {
          v6 = sub_100003250(v9 > 1, v10 + 1, 1, v6);
        }

        v11 = *(v0 + 48);
        v6[2] = v10 + 1;
        sub_10000379C(v11, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10);
        --v2;
      }

      while (v2);
      goto LABEL_19;
    }

LABEL_18:
    v6 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  if (!v2)
  {
    goto LABEL_18;
  }

  v13 = *(v0 + 24);
  v12 = *(v0 + 32);
  v14 = (v1 + 32);
  v6 = &_swiftEmptyArrayStorage;
  do
  {
    v15 = *v14++;
    **(v0 + 40) = v15;
    v16 = *(v13 + 20);
    sub_100004E04();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100003250(0, v6[2] + 1, 1, v6);
    }

    v18 = v6[2];
    v17 = v6[3];
    if (v18 >= v17 >> 1)
    {
      v6 = sub_100003250(v17 > 1, v18 + 1, 1, v6);
    }

    v19 = *(v0 + 40);
    v6[2] = v18 + 1;
    sub_10000379C(v19, v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18);
    --v2;
  }

  while (v2);
LABEL_19:
  v21 = *(v0 + 40);
  v20 = *(v0 + 48);

  v22 = *(v0 + 8);

  return v22(v6);
}

uint64_t sub_100003738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSettingsDeepLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000379C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreSettingsDeepLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100003998(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x61527070416E4923;
    v6 = 0xD000000000000019;
    if (a1 == 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000015;
    if (a1 != 5)
    {
      v7 = 0x75416F656469562FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 47;
    v2 = 0x6164705570704123;
    v3 = 0x6F437070416E4923;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6E776F4470704123;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100003B0C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100003998(*a1);
  v5 = v4;
  if (v3 == sub_100003998(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100004F74();
  }

  return v8 & 1;
}

unint64_t sub_100003B98()
{
  result = qword_10000C1B8;
  if (!qword_10000C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B8);
  }

  return result;
}

Swift::Int sub_100003BEC()
{
  v1 = *v0;
  sub_100004F84();
  sub_100003998(v1);
  sub_100004F54();

  return sub_100004F94();
}

uint64_t sub_100003C50()
{
  sub_100003998(*v0);
  sub_100004F54();
}

Swift::Int sub_100003CA4()
{
  v1 = *v0;
  sub_100004F84();
  sub_100003998(v1);
  sub_100004F54();

  return sub_100004F94();
}

uint64_t sub_100003D04@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100003FAC(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100003D34@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100003998(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100003D64()
{
  result = qword_10000C1C0;
  if (!qword_10000C1C0)
  {
    sub_1000013B8(&qword_10000C1C8, qword_100005E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C0);
  }

  return result;
}

uint64_t sub_100003DF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100003FAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreSettingsDeepLinkDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreSettingsDeepLinkDestination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100003FAC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000087F0;
  v6._object = a2;
  v4 = sub_100004F64(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100003FFC()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

uint64_t sub_100004084()
{
  v0 = sub_100004F34();
  sub_1000031A8(v0, qword_10000D348);
  sub_100003170(v0, qword_10000D348);
  return sub_100004F24();
}

uint64_t sub_10000410C(uint64_t a1)
{
  v3 = type metadata accessor for AppStoreSettingsDeepLink();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  sub_100003738(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100004DE4();
  return sub_100004C64(a1);
}

void (*sub_10000419C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100004DC4();
  return sub_100004210;
}

void sub_100004210(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100004260()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

uint64_t sub_1000042B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004BBC();
  v5 = sub_10000320C(&qword_10000C198);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000433C()
{
  v0 = qword_10000C1D0;

  return v0;
}

unint64_t sub_10000437C()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

unint64_t sub_1000043D4()
{
  result = qword_10000C1F8;
  if (!qword_10000C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F8);
  }

  return result;
}

unint64_t sub_10000442C()
{
  result = qword_10000C200;
  if (!qword_10000C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C200);
  }

  return result;
}

uint64_t sub_1000044D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C008 != -1)
  {
    swift_once();
  }

  v2 = sub_100004F34();
  v3 = sub_100003170(v2, qword_10000D348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100004578(uint64_t a1)
{
  v2 = sub_100004BBC();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1000045BC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100004BBC();
  v7 = sub_100004C10();
  v8 = sub_10000320C(&qword_10000C198);
  *v5 = v2;
  v5[1] = sub_1000046A4;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000046A4()
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

uint64_t sub_1000047AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004820();
  *a1 = result;
  return result;
}

uint64_t sub_1000047D4(uint64_t a1)
{
  v2 = sub_100004260();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100004820()
{
  v27 = sub_100004EC4();
  v0 = *(v27 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000030B8(&qword_10000C208, &qword_1000060B8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v26 - v9;
  v11 = sub_1000030B8(&qword_10000C210, &unk_1000060C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v15 = sub_1000030B8(&qword_10000C190, &qword_100005D28);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v26 - v17;
  v19 = sub_100004F34();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v26 = sub_1000030B8(&qword_10000C218, &unk_1000060D0);
  sub_100004F24();
  (*(v20 + 56))(v18, 1, 1, v19);
  v22 = type metadata accessor for AppStoreSettingsDeepLink();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = sub_100004DA4();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, 1, 1, v23);
  v24(v8, 1, 1, v23);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v27);
  sub_10000320C(&qword_10000C070);
  return sub_100004DF4();
}

unint64_t sub_100004BBC()
{
  result = qword_10000C220;
  if (!qword_10000C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C220);
  }

  return result;
}

unint64_t sub_100004C10()
{
  result = qword_10000C228;
  if (!qword_10000C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C228);
  }

  return result;
}

uint64_t sub_100004C64(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreSettingsDeepLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}