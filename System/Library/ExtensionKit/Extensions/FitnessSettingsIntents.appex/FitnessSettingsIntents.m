unint64_t sub_1000010D8()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_10000112C()
{
  v0 = (*(*(sub_100002C44(&qword_10000C158, &qword_100005018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = sub_100004978();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = sub_100004938();
  sub_100002CC4(v6, qword_10000C228);
  sub_100002C8C(v6, qword_10000C228);
  sub_100004968();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_100004928();
}

uint64_t sub_10000129C()
{
  v1 = v0;
  v2 = (*(*(sub_100002C44(&qword_10000C150, &qword_100005010) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v17 - v3;
  v5 = (*(*(sub_100002C44(&qword_10000C158, &qword_100005018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = sub_100004978();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  sub_100004968();
  sub_100004968();
  v11 = *(v9 + 56);
  v9 += 56;
  v11(v7, 0, 1, v8);
  v12 = sub_100004858();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4, v1, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  sub_100002C44(&qword_10000C160, &qword_100005020);
  v14 = *(v9 + 16);
  v15 = (*(v9 + 24) + 32) & ~*(v9 + 24);
  *(swift_allocObject() + 16) = xmmword_100004B80;
  sub_100004968();
  sub_100004968();
  sub_100004968();
  sub_100004968();
  sub_100004968();
  return sub_100004868();
}

uint64_t sub_1000015AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000164C;

  return sub_100002F44(&off_100008780, 1);
}

uint64_t sub_10000164C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10000174C, 0, 0);
}

uint64_t sub_10000174C()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    v3 = type metadata accessor for FitnessSettingsDeepLink();
    v4 = *(v3 - 8);
    sub_100003220(v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2);

    v5 = 0;
  }

  else
  {
    v6 = v0[4];

    v3 = type metadata accessor for FitnessSettingsDeepLink();
    v4 = *(v3 - 8);
    v5 = 1;
  }

  (*(v4 + 56))(v0[2], v5, 1, v3);
  v7 = v0[1];

  return v7();
}

uint64_t sub_100001874(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100001914;

  return sub_100002F44(&off_1000087A8, 0);
}

uint64_t sub_100001914(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100001A30()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

unint64_t sub_100001A88()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

uint64_t type metadata accessor for FitnessSettingsDeepLink()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001B2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001BC4;

  return sub_100002F44(a1, 1);
}

uint64_t sub_100001BC4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100001CC4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000032F0;

  return sub_100002F44(&off_1000087D0, 1);
}

uint64_t sub_100001D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100001E24;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100001E24(uint64_t a1)
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

unint64_t sub_100001F28()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_100001F80()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    sub_100002020(&qword_10000C058, qword_100004C48);
    sub_100002D28(&qword_10000C048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_100002020(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002068(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000010D8();
  *v6 = v2;
  v6[1] = sub_10000211C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000211C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002210(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000032EC;

  return sub_1000015AC(a1);
}

uint64_t sub_100002314()
{
  v0 = sub_100002C44(&qword_10000C170, &qword_100005028);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = (*(*(sub_100002C44(&qword_10000C178, &qword_100005030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_100002D28(&qword_10000C038);
  sub_1000048E8();
  v8._object = 0x80000001000055E0;
  v8._countAndFlagsBits = 0xD00000000000003FLL;
  sub_1000048D8(v8);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000048C8();
  (*(v1 + 8))(v4, v0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_1000048D8(v9);
  return sub_1000048F8();
}

uint64_t sub_1000024F4()
{
  v0 = qword_10000C008;

  return v0;
}

unint64_t sub_1000025D0()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_100002624()
{
  sub_100002D28(&qword_10000C168);
  v1 = sub_100004898();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100002780()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_1000027D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_100004938();
  v3 = sub_100002C8C(v2, qword_10000C228);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100002884()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    sub_100002020(&qword_10000C0B0, &qword_100004EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_1000028E8(uint64_t a1)
{
  v2 = sub_100002D28(&qword_10000C038);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100002988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000211C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100002A4C(uint64_t a1)
{
  v2 = sub_100002D28(&qword_10000C098);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100002AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004858();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100002B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004858();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100002BB8()
{
  result = sub_100004858();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100002C44(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002C8C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002CC4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100002D28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FitnessSettingsDeepLink();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_100002D6C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100002C44(&qword_10000C180, qword_100005048);
  v10 = *(type metadata accessor for FitnessSettingsDeepLink() - 8);
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
  v15 = *(type metadata accessor for FitnessSettingsDeepLink() - 8);
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

uint64_t sub_100002F44(uint64_t a1, char a2)
{
  *(v2 + 48) = a2;
  *(v2 + 16) = a1;
  v3 = *(type metadata accessor for FitnessSettingsDeepLink() - 8);
  *(v2 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_100003010, 0, 0);
}

uint64_t sub_100003010()
{
  v1 = *(*(v0 + 16) + 16);
  if (*(v0 + 48) == 1)
  {
    if (v1)
    {
      v2 = *(v0 + 24);
      v3 = &_swiftEmptyArrayStorage;
      do
      {
        v4 = *(v0 + 40);
        sub_100004848();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100002D6C(0, v3[2] + 1, 1, v3);
        }

        v6 = v3[2];
        v5 = v3[3];
        if (v6 >= v5 >> 1)
        {
          v3 = sub_100002D6C(v5 > 1, v6 + 1, 1, v3);
        }

        v7 = *(v0 + 40);
        v3[2] = v6 + 1;
        sub_100003284(v7, v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v6);
        --v1;
      }

      while (v1);
      goto LABEL_19;
    }

LABEL_18:
    v3 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  if (!v1)
  {
    goto LABEL_18;
  }

  v8 = *(v0 + 24);
  v3 = &_swiftEmptyArrayStorage;
  do
  {
    v9 = *(v0 + 32);
    sub_100004848();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_100002D6C(0, v3[2] + 1, 1, v3);
    }

    v11 = v3[2];
    v10 = v3[3];
    if (v11 >= v10 >> 1)
    {
      v3 = sub_100002D6C(v10 > 1, v11 + 1, 1, v3);
    }

    v12 = *(v0 + 32);
    v3[2] = v11 + 1;
    sub_100003284(v12, v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11);
    --v1;
  }

  while (v1);
LABEL_19:
  v14 = *(v0 + 32);
  v13 = *(v0 + 40);

  v15 = *(v0 + 8);

  return v15(v3);
}

uint64_t sub_100003220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessSettingsDeepLink();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessSettingsDeepLink();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100003314()
{
  result = qword_10000C188;
  if (!qword_10000C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C188);
  }

  return result;
}

Swift::Int sub_100003368()
{
  sub_1000049B8();
  sub_100004998();
  return sub_1000049C8();
}

Swift::Int sub_1000033BC()
{
  sub_1000049B8();
  sub_100004998();
  return sub_1000049C8();
}

uint64_t sub_100003400@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000087F8;
  v7._object = v3;
  v5 = sub_1000049A8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100003468()
{
  result = qword_10000C190;
  if (!qword_10000C190)
  {
    sub_100002020(&qword_10000C198, qword_100005100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C190);
  }

  return result;
}

Swift::Int sub_1000034E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v6._object = a2;
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_100008858;
  result = sub_1000049A8(v4, v6);
  *a3 = result != 0;
  return result;
}

uint64_t getEnumTagSinglePayload for FitnessSettingsDeepLinkDestination(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FitnessSettingsDeepLinkDestination(_WORD *result, int a2, int a3)
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

unint64_t sub_100003618()
{
  result = qword_10000C1A0;
  if (!qword_10000C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A0);
  }

  return result;
}

unint64_t sub_100003670()
{
  result = qword_10000C1A8;
  if (!qword_10000C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A8);
  }

  return result;
}

unint64_t sub_100003730()
{
  result = qword_10000C1B0;
  if (!qword_10000C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B0);
  }

  return result;
}

uint64_t sub_1000037D8()
{
  v1 = *(v0 + 16);
  sub_1000047F8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000383C(uint64_t a1)
{
  v2 = sub_100003730();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000388C()
{
  result = qword_10000C1B8;
  if (!qword_10000C1B8)
  {
    sub_100002020(&qword_10000C1C0, &qword_1000052C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1B8);
  }

  return result;
}

uint64_t sub_1000038F0(uint64_t a1)
{
  v2 = sub_100003A40();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003998();
  sub_100004988();
  return 0;
}

unint64_t sub_100003998()
{
  result = qword_10000C1C8;
  if (!qword_10000C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1C8);
  }

  return result;
}

unint64_t sub_100003A40()
{
  result = qword_10000C1D0;
  if (!qword_10000C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D0);
  }

  return result;
}

unint64_t sub_100003AA8()
{
  result = qword_10000C1D8;
  if (!qword_10000C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1D8);
  }

  return result;
}

uint64_t sub_100003B30()
{
  v0 = sub_100004978();
  sub_100002CC4(v0, qword_10000C240);
  sub_100002C8C(v0, qword_10000C240);
  return sub_100004968();
}

uint64_t sub_100003BB8(uint64_t a1)
{
  v3 = *(*(type metadata accessor for FitnessSettingsDeepLink() - 8) + 64);
  __chkstk_darwin();
  v5 = *v1;
  sub_100003220(a1, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100004828();
  return sub_1000046C8(a1);
}

void (*sub_100003C48(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100004808();
  return sub_100003CBC;
}

void sub_100003CBC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100003D0C()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

uint64_t sub_100003D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004620();
  v5 = sub_100002D28(&qword_10000C168);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100003DE8()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

unint64_t sub_100003E40()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

unint64_t sub_100003E98()
{
  result = qword_10000C1F8;
  if (!qword_10000C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F8);
  }

  return result;
}

uint64_t sub_100003F3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C018 != -1)
  {
    swift_once();
  }

  v2 = sub_100004978();
  v3 = sub_100002C8C(v2, qword_10000C240);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003FE4(uint64_t a1)
{
  v2 = sub_100004620();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_100004020(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100004620();
  v7 = sub_100004674();
  v8 = sub_100002D28(&qword_10000C168);
  *v5 = v2;
  v5[1] = sub_100004108;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100004108()
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

uint64_t sub_100004210@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004284();
  *a1 = result;
  return result;
}

uint64_t sub_100004238(uint64_t a1)
{
  v2 = sub_100003D0C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100004284()
{
  v26 = sub_100004908();
  v0 = *(v26 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100002C44(&qword_10000C200, &qword_100005578) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = sub_100002C44(&qword_10000C208, &unk_100005580);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v25 - v12;
  v14 = sub_100002C44(&qword_10000C158, &qword_100005018);
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v14 - 8);
  v17 = &v25 - v16;
  v18 = sub_100004978();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v25 = sub_100002C44(&qword_10000C210, &unk_100005590);
  sub_100004968();
  (*(v19 + 56))(v17, 1, 1, v18);
  v21 = type metadata accessor for FitnessSettingsDeepLink();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_1000047E8();
  v23 = *(*(v22 - 8) + 56);
  v23(v9, 1, 1, v22);
  v23(v7, 1, 1, v22);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v26);
  sub_100002D28(&qword_10000C038);
  return sub_100004838();
}

unint64_t sub_100004620()
{
  result = qword_10000C218;
  if (!qword_10000C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C218);
  }

  return result;
}

unint64_t sub_100004674()
{
  result = qword_10000C220;
  if (!qword_10000C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C220);
  }

  return result;
}

uint64_t sub_1000046C8(uint64_t a1)
{
  v2 = type metadata accessor for FitnessSettingsDeepLink();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}