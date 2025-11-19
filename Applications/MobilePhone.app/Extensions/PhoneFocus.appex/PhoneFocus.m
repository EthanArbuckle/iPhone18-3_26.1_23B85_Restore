void sub_100001628()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_10000B0C0();
    v4 = v3;

    qword_100014558 = v2;
    unk_100014560 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000016B4()
{
  v0 = sub_10000B010();
  sub_10000561C(v0, qword_100014568);
  sub_100001BDC(v0, qword_100014568);
  if (qword_100014260 != -1)
  {
    swift_once();
  }

  return sub_10000B000();
}

id sub_100001770()
{
  result = [objc_allocWithZone(TUCallProviderManager) init];
  qword_100014580 = result;
  return result;
}

void *sub_1000017A4(uint64_t a1)
{
  v7 = &_swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_10000B1F0();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1000055BC(i, v6);
    sub_100005680();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_10000B1D0();
    v4 = v7[2];
    sub_10000B200();
    sub_10000B210();
    sub_10000B1E0();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_100001890()
{
  v0 = (*(*(sub_100001F24(&qword_1000142C8, &qword_10000B7B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = v14 - v1;
  v14[0] = sub_10000AF10();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10000AFA0() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(sub_10000B0A0() - 8) + 64);
  __chkstk_darwin();
  v9 = sub_10000AF20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = sub_10000AEC0();
  sub_10000561C(v12, static SimFocusAccountEntity.typeDisplayRepresentation);
  sub_100001BDC(v12, static SimFocusAccountEntity.typeDisplayRepresentation);
  sub_10000B040();
  sub_10000AF90();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  sub_10000AF40();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_10000AEB0();
}

uint64_t SimFocusAccountEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_100014278 != -1)
  {
    swift_once();
  }

  v0 = sub_10000AEC0();

  return sub_100001BDC(v0, static SimFocusAccountEntity.typeDisplayRepresentation);
}

uint64_t sub_100001BDC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static SimFocusAccountEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014278 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AEC0();
  v3 = sub_100001BDC(v2, static SimFocusAccountEntity.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SimFocusAccountEntity.displayRepresentation.getter(void *a1)
{
  v2 = (*(*(sub_100001F24(&qword_1000142C0, &qword_10000B7B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v4 = &v19 - v3;
  v5 = (*(*(sub_100001F24(&qword_1000142C8, &qword_10000B7B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v7 = &v19 - v6;
  v8 = sub_10000AF20();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = (__chkstk_darwin)();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = [a1 name];
  sub_10000B0C0();

  sub_10000AF00();
  (*(v9 + 16))(v13, v15, v8);
  (*(v9 + 56))(v7, 1, 1, v8);
  v17 = sub_10000AE50();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  sub_10000AE60();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_100001F24(uint64_t *a1, uint64_t *a2)
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

uint64_t SimFocusAccountEntity.id.getter(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_10000B0C0();

  return v2;
}

void sub_100001FC0(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_10000B0C0();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_10000201C(uint64_t a1)
{
  v2 = sub_100004BFC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100002068()
{
  v1 = sub_100001F24(&qword_1000142C0, &qword_10000B7B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v20 - v3;
  v5 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v20 - v7;
  v9 = sub_10000AF20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  v17 = [*v0 name];
  sub_10000B0C0();

  sub_10000AF00();
  (*(v10 + 16))(v14, v16, v9);
  (*(v10 + 56))(v8, 1, 1, v9);
  v18 = sub_10000AE50();
  (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
  sub_10000AE60();
  return (*(v10 + 8))(v16, v9);
}

uint64_t sub_1000022C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000238C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000238C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002480(uint64_t a1)
{
  v2 = sub_100004EC8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t SimFocusAccountEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005894;

  return sub_100003E40(a1);
}

uint64_t SimFocusAccountEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100005894;

  return (sub_100004438)(a1, a2);
}

uint64_t SimFocusAccountEntityQuery.suggestedEntities()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005894;

  return sub_10000496C();
}

uint64_t sub_1000026C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100002780;

  return (sub_100004438)(a2, a3);
}

uint64_t sub_100002780(uint64_t a1)
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

uint64_t sub_100002890(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005878;

  return sub_10000496C();
}

uint64_t sub_100002934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000029F4;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000029F4(uint64_t a1)
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

uint64_t sub_100002AF4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100004D5C();
  *v6 = v2;
  v6[1] = sub_10000238C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100002BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100005874;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_100002C60(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005878;

  return sub_10000524C();
}

uint64_t variable initialization expression of PhoneFocusFilterAction._accounts()
{
  v0 = sub_10000AE90();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100001F24(&qword_1000142D0, &unk_10000B7F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v28 - v7;
  v9 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_10000AF10();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000AFA0();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_10000B0A0();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_10000AF20();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28[1] = sub_100001F24(&qword_1000142D8, &unk_10000C240);
  sub_10000B040();
  sub_10000AF90();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_10000AF30();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 0;
  v25 = sub_10000ADD0();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_100004BA8();
  sub_100004BFC();
  return sub_10000AE00();
}

uint64_t variable initialization expression of PhoneFocusFilterAction._keychain()
{
  sub_100001F24(&qword_1000142F0, &qword_10000B800);
  sub_10000AD10();
  sub_10000AD00();
  return sub_10000ACE0();
}

uint64_t sub_100003200()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10000AFD0();
}

uint64_t sub_10000324C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_10000AFC0();
}

Swift::Int sub_1000032A4()
{
  sub_10000B2C0();
  v1 = *v0;
  swift_getWitnessTable();
  sub_10000AFC0();
  return sub_10000B2D0();
}

uint64_t sub_10000330C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_10000AFB0();
}

uint64_t sub_100003378(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100003444(v11, 0, 0, 1, a1, a2);
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
    sub_1000055BC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005570(v11);
  return v7;
}

unint64_t sub_100003444(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003550(a5, a6);
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
    result = sub_10000B1C0();
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

char *sub_100003550(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000359C(a1, a2);
  sub_1000036CC(&off_100010B08);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10000359C(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000037B8(v5, 0);
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

  result = sub_10000B1C0();
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
        v10 = sub_10000B0E0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000037B8(v10, 0);
        result = sub_10000B1A0();
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

uint64_t sub_1000036CC(uint64_t result)
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

  result = sub_10000382C(result, v12, 1, v3);
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

void *sub_1000037B8(uint64_t a1, uint64_t a2)
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

  sub_100001F24(&qword_100014380, &qword_10000BCB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000382C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F24(&qword_100014380, &qword_10000BCB8);
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

uint64_t sub_100003920(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_1000039CC()
{
  v39 = sub_10000AF80();
  v0 = *(v39 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v39);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100014270 != -1)
  {
    swift_once();
  }

  v3 = [qword_100014580 telephonyProvider];
  v4 = [v3 prioritizedSenderIdentities];

  v5 = [v4 array];
  v6 = sub_10000B110();

  v7 = sub_1000017A4(v6);

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &_swiftEmptyArrayStorage;
  }

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 > 1)
    {
      v41 = &_swiftEmptyArrayStorage;
      goto LABEL_9;
    }

LABEL_31:

    return &_swiftEmptyArrayStorage;
  }

  if (sub_10000B220() <= 1)
  {
    goto LABEL_31;
  }

  v41 = &_swiftEmptyArrayStorage;
  v34 = sub_10000B220();
  if (!v34)
  {
    goto LABEL_31;
  }

  v9 = v34;
  if (v34 < 1)
  {
    __break(1u);
    goto LABEL_31;
  }

LABEL_9:
  v10 = 0;
  v40 = v8 & 0xC000000000000001;
  v36 = (v0 + 8);
  v11 = &_swiftEmptyArrayStorage;
  v12 = &KeyChainSIMData;
  v37 = v9;
  do
  {
    if (v40)
    {
      v13 = sub_10000B1B0();
    }

    else
    {
      v13 = *(v8 + 8 * v10 + 32);
    }

    v14 = v13;
    v15 = [v13 v12[4].name];
    v16 = sub_10000B0C0();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = v12;
      v21 = v8;
      v22 = [v14 accountUUID];
      v23 = v38;
      sub_10000AF70();

      sub_10000AF60();
      (*v36)(v23, v39);
      v12 = v20;
      v24 = [v14 v20[4].name];
      if (!v24)
      {
        sub_10000B0C0();
        v24 = sub_10000B0B0();
      }

      v25 = [v14 handle];
      if (v25)
      {
        v26 = v25;
        v27 = [v25 normalizedValue];

        if (v27)
        {
          sub_10000B0C0();
        }
      }

      v28 = objc_allocWithZone(TUSIMFocusState);
      v29 = sub_10000B0B0();

      v30 = sub_10000B0B0();

      v31 = [v28 initWithIdentifier:v29 name:v24 phNumber:v30 focusAllowCalls:0];

      v32 = v31;
      sub_10000B0F0();
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10000B130();
      }

      sub_10000B140();

      v11 = v41;
      v8 = v21;
      v9 = v37;
    }

    else
    {
    }

    ++v10;
  }

  while (v9 != v10);

  return v11;
}

uint64_t sub_100003E60()
{
  v53 = v0;
  v1 = sub_1000039CC();
  v2 = v1;
  v52[0] = &_swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_17:
    v3 = sub_10000B220();
    v50 = v2;
    v51 = v0;
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v49 = v2 & 0xC000000000000001;
      v47 = v0 + 2;
      v48 = v2 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v49)
        {
          v6 = sub_10000B1B0();
        }

        else
        {
          if (v4 >= *(v48 + 16))
          {
            goto LABEL_16;
          }

          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        v2 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v0 = v3;
        v8 = v51[4];
        v9 = [v6 identifier];
        v10 = sub_10000B0C0();
        v12 = v11;

        v51[2] = v10;
        v51[3] = v12;
        v13 = swift_task_alloc();
        *(v13 + 16) = v47;
        LOBYTE(v8) = sub_100003920(sub_100005720, v13, v8);

        if (v8)
        {
          sub_10000B1D0();
          v14 = *(v52[0] + 16);
          sub_10000B200();
          sub_10000B210();
          sub_10000B1E0();
        }

        else
        {
        }

        v3 = v0;
        ++v4;
        v5 = v2 == v0;
        v2 = v50;
      }

      while (!v5);
      v0 = v51;
      v15 = v52[0];
      if ((v52[0] & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v50 = v1;
    v51 = v0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v15 = &_swiftEmptyArrayStorage;
  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v15 & 0x4000000000000000) == 0)
    {
      v16 = *(v15 + 16);
      goto LABEL_21;
    }
  }

LABEL_41:
  v16 = sub_10000B220();
LABEL_21:
  v17 = &_swiftEmptyArrayStorage;
  if (v16)
  {
    v52[0] = &_swiftEmptyArrayStorage;
    result = sub_10000B1F0();
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v19 = 0;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        sub_10000B1B0();
      }

      else
      {
        v21 = *(v15 + 8 * v19 + 32);
      }

      if (qword_100014268 != -1)
      {
        swift_once();
      }

      v22 = sub_10000B010();
      sub_100001BDC(v22, qword_100014568);
      v23 = sub_10000AFF0();
      v24 = sub_10000B160();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "simFocus: init with account", v25, 2u);
      }

      ++v19;
      sub_10000B1D0();
      v20 = *(v52[0] + 16);
      sub_10000B200();
      sub_10000B210();
      sub_10000B1E0();
    }

    while (v16 != v19);
    v0 = v51;
    v17 = v52[0];
  }

  if (qword_100014268 != -1)
  {
    swift_once();
  }

  v26 = v0[4];
  v27 = sub_10000B010();
  sub_100001BDC(v27, qword_100014568);

  v28 = sub_10000AFF0();
  v29 = sub_10000B160();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = v0[4];
    v31 = swift_slowAlloc();
    v52[0] = swift_slowAlloc();
    *v31 = 136315906;
    v32 = sub_10000B120();
    v34 = sub_100003378(v32, v33, v52);

    *(v31 + 4) = v34;
    *(v31 + 12) = 2080;
    sub_10000B170();
    v35 = sub_10000B120();
    v37 = v36;

    v38 = sub_100003378(v35, v37, v52);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2080;
    v39 = sub_10000B120();
    v41 = v40;

    v42 = sub_100003378(v39, v41, v52);

    *(v31 + 24) = v42;
    *(v31 + 32) = 2080;
    v0 = v51;
    v43 = sub_10000B120();
    v45 = sub_100003378(v43, v44, v52);

    *(v31 + 34) = v45;
    _os_log_impl(&_mh_execute_header, v28, v29, "entities for identifiers: %s all %s found %s result %s", v31, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
  }

  v46 = v0[1];

  return v46(v17);
}

uint64_t sub_100004438(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_100004458, 0, 0);
}

uint64_t sub_100004458()
{
  v46 = v0;
  v1 = sub_1000039CC();
  v2 = v1;
  v45 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10000B220())
  {
    v4 = _swiftEmptyArrayStorage;
    v44 = v0;
    if (!i)
    {
      break;
    }

    v5 = 0;
    v42 = v2 & 0xFFFFFFFFFFFFFF8;
    v43 = v2 & 0xC000000000000001;
    v41 = i;
    while (1)
    {
      if (v43)
      {
        v6 = sub_10000B1B0();
      }

      else
      {
        if (v5 >= *(v42 + 16))
        {
          goto LABEL_33;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = v2;
      v0 = v44;
      v10 = v44[6];
      v11 = v44[7];
      v12 = [v6 name];
      v13 = sub_10000B0C0();
      v15 = v14;

      v44[2] = v13;
      v44[3] = v15;
      v44[4] = v10;
      v44[5] = v11;
      sub_1000056CC();
      LOBYTE(v12) = sub_10000B190();

      if (v12)
      {
        sub_10000B1D0();
        v16 = v45[2];
        sub_10000B200();
        sub_10000B210();
        sub_10000B1E0();
      }

      else
      {
      }

      v2 = v9;
      ++v5;
      if (v8 == v41)
      {
        v0 = v44;
        v4 = v45;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_15:
  if (qword_100014268 != -1)
  {
    swift_once();
  }

  v17 = v0[7];
  v18 = sub_10000B010();
  sub_100001BDC(v18, qword_100014568);

  v19 = sub_10000AFF0();
  v20 = sub_10000B160();

  if (os_log_type_enabled(v19, v20))
  {
    v22 = v0[6];
    v21 = v0[7];
    v23 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v23 = 136315650;
    *(v23 + 4) = sub_100003378(v22, v21, &v45);
    *(v23 + 12) = 2080;
    sub_10000B170();
    v24 = sub_10000B120();
    v26 = v25;

    v27 = sub_100003378(v24, v26, &v45);

    *(v23 + 14) = v27;
    *(v23 + 22) = 2080;
    v28 = sub_10000B120();
    v30 = sub_100003378(v28, v29, &v45);

    *(v23 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "simFocus: entities matching: %s all %s found %s", v23, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if ((v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    v31 = sub_10000B220();
    if (v31)
    {
      goto LABEL_23;
    }

LABEL_36:

    v39 = _swiftEmptyArrayStorage;
    goto LABEL_37;
  }

  v31 = *(v4 + 16);
  if (!v31)
  {
    goto LABEL_36;
  }

LABEL_23:
  v45 = _swiftEmptyArrayStorage;
  result = sub_10000B1F0();
  if (v31 < 0)
  {
    __break(1u);
    return result;
  }

  v33 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      sub_10000B1B0();
    }

    else
    {
      v35 = *(v4 + 8 * v33 + 32);
    }

    v36 = sub_10000AFF0();
    v37 = sub_10000B160();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "simFocus: init with account", v38, 2u);
    }

    ++v33;
    sub_10000B1D0();
    v34 = v45[2];
    sub_10000B200();
    sub_10000B210();
    sub_10000B1E0();
  }

  while (v31 != v33);

  v39 = v45;
LABEL_37:
  v40 = v44[1];

  return v40(v39);
}

uint64_t sub_100004988()
{
  v1 = sub_1000039CC();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_10000B220();
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  result = sub_10000B1F0();
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_10000B1B0();
    }

    else
    {
      v7 = *(v2 + 8 * v5 + 32);
    }

    if (qword_100014268 != -1)
    {
      swift_once();
    }

    v8 = sub_10000B010();
    sub_100001BDC(v8, qword_100014568);
    v9 = sub_10000AFF0();
    v10 = sub_10000B160();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "simFocus: init with account", v11, 2u);
    }

    ++v5;
    sub_10000B1D0();
    v6 = _swiftEmptyArrayStorage[2];
    sub_10000B200();
    sub_10000B210();
    sub_10000B1E0();
  }

  while (v3 != v5);
LABEL_15:

  v12 = *(v0 + 8);

  return v12(_swiftEmptyArrayStorage);
}

unint64_t sub_100004BA8()
{
  result = qword_1000142E0;
  if (!qword_1000142E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142E0);
  }

  return result;
}

unint64_t sub_100004BFC()
{
  result = qword_1000142E8;
  if (!qword_1000142E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142E8);
  }

  return result;
}

unint64_t sub_100004C54()
{
  result = qword_1000142F8;
  if (!qword_1000142F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142F8);
  }

  return result;
}

unint64_t sub_100004CAC()
{
  result = qword_100014300;
  if (!qword_100014300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014300);
  }

  return result;
}

unint64_t sub_100004D04()
{
  result = qword_100014308;
  if (!qword_100014308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014308);
  }

  return result;
}

unint64_t sub_100004D5C()
{
  result = qword_100014310;
  if (!qword_100014310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014310);
  }

  return result;
}

unint64_t sub_100004DC0()
{
  result = qword_100014318;
  if (!qword_100014318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014318);
  }

  return result;
}

unint64_t sub_100004E18()
{
  result = qword_100014320;
  if (!qword_100014320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014320);
  }

  return result;
}

unint64_t sub_100004E70()
{
  result = qword_100014328;
  if (!qword_100014328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014328);
  }

  return result;
}

unint64_t sub_100004EC8()
{
  result = qword_100014330;
  if (!qword_100014330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014330);
  }

  return result;
}

unint64_t sub_100004F2C()
{
  result = qword_100014338;
  if (!qword_100014338)
  {
    sub_100004F90(&qword_100014340, &qword_10000B950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014338);
  }

  return result;
}

uint64_t sub_100004F90(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100004FDC()
{
  result = qword_100014348;
  if (!qword_100014348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014348);
  }

  return result;
}

unint64_t sub_100005034()
{
  result = qword_100014350;
  if (!qword_100014350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014350);
  }

  return result;
}

unint64_t sub_10000508C()
{
  result = qword_100014358;
  if (!qword_100014358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014358);
  }

  return result;
}

unint64_t sub_1000050E8()
{
  result = qword_100014360;
  if (!qword_100014360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014360);
  }

  return result;
}

unint64_t sub_100005140()
{
  result = qword_100014368;
  if (!qword_100014368)
  {
    sub_100004F90(&qword_100014370, qword_10000BAC8);
    sub_100004E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014368);
  }

  return result;
}

unint64_t sub_1000051C8()
{
  result = qword_100014378;
  if (!qword_100014378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014378);
  }

  return result;
}

uint64_t sub_100005268()
{
  v21 = v0;
  v1 = sub_1000039CC();
  if (qword_100014268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000B010();
  sub_100001BDC(v2, qword_100014568);

  v3 = sub_10000AFF0();
  v4 = sub_10000B160();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    sub_10000B170();
    v7 = sub_10000B120();
    v9 = sub_100003378(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "simFocus: All SIM accounts: %s", v5, 0xCu);
    sub_100005570(v6);
  }

  if (v1 >> 62)
  {
    v10 = sub_10000B220();
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_17:

    v18 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_7:
  v20 = _swiftEmptyArrayStorage;
  result = sub_10000B1F0();
  if (v10 < 0)
  {
    __break(1u);
    return result;
  }

  v12 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_10000B1B0();
    }

    else
    {
      v14 = *(v1 + 8 * v12 + 32);
    }

    v15 = sub_10000AFF0();
    v16 = sub_10000B160();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "simFocus: init with account", v17, 2u);
    }

    ++v12;
    sub_10000B1D0();
    v13 = v20[2];
    sub_10000B200();
    sub_10000B210();
    sub_10000B1E0();
  }

  while (v10 != v12);

  v18 = v20;
LABEL_18:
  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_100005570(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000055BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_10000561C(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100005680()
{
  result = qword_100014388;
  if (!qword_100014388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014388);
  }

  return result;
}

unint64_t sub_1000056CC()
{
  result = qword_100014390;
  if (!qword_100014390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014390);
  }

  return result;
}

uint64_t sub_100005720(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000B260() & 1;
  }
}

void type metadata accessor for CFString()
{
  if (!qword_100014398)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100014398);
    }
  }
}

uint64_t sub_100005830(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100005898()
{
  sub_100006B9C();
  result = sub_10000B180();
  qword_1000145A0 = result;
  return result;
}

uint64_t sub_1000058DC()
{
  sub_100006B9C();
  result = sub_10000B180();
  qword_1000145A8 = result;
  return result;
}

uint64_t sub_100005964(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100001F24(&qword_100014458, &qword_10000BDE0);
  result = sub_10000B240();
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
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_100006B38(v22, v34);
      }

      else
      {
        sub_1000055BC(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_10000B2C0();
      type metadata accessor for CFString();
      sub_100005830(&qword_100014460);
      sub_10000AFC0();
      result = sub_10000B2D0();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_100006B38(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_100005C30(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10000A6B8(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100005DD8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100005964(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_10000A6B8(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString();
      result = sub_10000B270();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_100005570(v20);

    return sub_100006B38(a1, v20);
  }

  else
  {
    sub_100005D70(v8, a2, a1, v19);

    return a2;
  }
}

_OWORD *sub_100005D70(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100006B38(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

id sub_100005DD8()
{
  v1 = v0;
  sub_100001F24(&qword_100014458, &qword_10000BDE0);
  v2 = *v0;
  v3 = sub_10000B230();
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
        sub_1000055BC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100006B38(v19, (*(v4 + 56) + 32 * v17));
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

unint64_t sub_100005F58()
{
  sub_100001F24(&qword_100014468, &qword_10000BDE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000BDA0;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString();
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v1;
  *(inited + 72) = kSecAttrService;
  v2 = qword_100014288;
  v3 = kSecClass;
  v4 = kSecClassGenericPassword;
  v5 = kSecAttrService;
  if (v2 != -1)
  {
    swift_once();
  }

  v6 = qword_1000145A8;
  v7 = sub_100006B9C();
  *(inited + 80) = v6;
  *(inited + 104) = v7;
  *(inited + 112) = kSecAttrAccessGroup;
  v8 = qword_100014280;
  v9 = v6;
  v10 = kSecAttrAccessGroup;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_1000145A0;
  *(inited + 144) = v7;
  *(inited + 120) = v11;
  v12 = v11;
  v13 = sub_10000A948(inited);
  swift_setDeallocating();
  sub_100001F24(&qword_100014478, &qword_10000C2A0);
  swift_arrayDestroy();
  return v13;
}

void sub_1000060E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_100005F58();
  type metadata accessor for CFString();
  v26 = v5;
  *&v25 = kSecAttrAccessibleAfterFirstUnlock;
  sub_100006B38(&v25, v24);
  v6 = kSecAttrAccessibleAfterFirstUnlock;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v4;
  sub_100005C30(v24, kSecAttrAccessible, isUniquelyReferenced_nonNull_native);
  v8 = v27;
  v26 = &type metadata for Data;
  *&v25 = a1;
  *(&v25 + 1) = a2;
  sub_100006B38(&v25, v24);
  sub_100006A7C(a1, a2);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v8;
  sub_100005C30(v24, kSecValueData, v9);
  sub_100005830(&qword_1000143A0);
  isa = sub_10000B030().super.isa;

  v11 = SecItemAdd(isa, 0);

  if (v11 == sub_10000B020())
  {
    if (qword_100014268 != -1)
    {
      swift_once();
    }

    v12 = sub_10000B010();
    sub_100001BDC(v12, qword_100014568);
    v13 = sub_10000AFF0();
    v14 = sub_10000B150();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "simFocus: Successfully added item to keychain", v15, 2u);
    }
  }

  else
  {
    if (qword_100014268 != -1)
    {
      swift_once();
    }

    v16 = sub_10000B010();
    sub_100001BDC(v16, qword_100014568);
    v17 = sub_10000AFF0();
    v18 = sub_10000B150();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      sub_100006B48();
      swift_allocError();
      *v21 = v11;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&_mh_execute_header, v17, v18, "simFocus: failed adding item to key chain, error: %@", v19, 0xCu);
      sub_100006AD0(v20);
    }

    sub_100006B48();
    swift_allocError();
    *v23 = v11;
    swift_willThrow();
  }
}

void sub_100006440(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    a2.n128_u64[0] = 138412802;
    v43 = a2;
    do
    {
      v18 = *v3;
      v19 = [v18 identifier];
      if (!v19)
      {
        sub_10000B0C0();
        v19 = sub_10000B0B0();
      }

      v20 = [v18 name];
      if (!v20)
      {
        sub_10000B0C0();
        v20 = sub_10000B0B0();
      }

      v21 = [v18 phNumber];
      if (!v21)
      {
        sub_10000B0C0();
        v21 = sub_10000B0B0();
      }

      v22 = [objc_allocWithZone(TUSIMFocusState) initWithIdentifier:v19 name:v20 phNumber:v21 focusAllowCalls:1];

      v23 = v22;
      sub_10000B0F0();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = v3;
        v30 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10000B130();
        v3 = v29;
      }

      sub_10000B140();
      if (qword_100014268 != -1)
      {
        swift_once();
      }

      v24 = sub_10000B010();
      sub_100001BDC(v24, qword_100014568);
      v25 = v18;
      v26 = v23;
      v27 = sub_10000AFF0();
      v28 = sub_10000B150();

      if (os_log_type_enabled(v27, v28))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v4 = v43.n128_u32[0];
        *(v4 + 4) = v26;
        *v5 = v26;
        *(v4 + 12) = 2080;
        v44 = v26;
        v6 = v2;
        v7 = [v25 phNumber];
        v45 = v3;
        v8 = sub_10000B0C0();
        v10 = v9;

        v11 = sub_100003378(v8, v10, &v46);

        *(v4 + 14) = v11;
        *(v4 + 22) = 2080;
        v12 = [v25 name];
        v13 = sub_10000B0C0();
        v15 = v14;

        v16 = v13;
        v2 = v6;
        v17 = sub_100003378(v16, v15, &v46);

        *(v4 + 24) = v17;
        v3 = v45;
        _os_log_impl(&_mh_execute_header, v27, v28, "simFocus: Add simFocusState to keychain: %@ with phNUmber: %s, name: %s", v4, 0x20u);
        sub_100006AD0(v5);

        swift_arrayDestroy();
      }

      else
      {
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  v31 = objc_opt_self();
  sub_10000B170();
  isa = sub_10000B100().super.isa;
  v46 = 0;
  v33 = [v31 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v46];

  v34 = v46;
  if (v33)
  {
    v35 = sub_10000AF50();
    v37 = v36;

    sub_100006A7C(v35, v37);

    sub_1000060E0(v35, v37);
    sub_100006A28(v35, v37);
    sub_100006A28(v35, v37);
  }

  else
  {
    v38 = v34;

    sub_10000AEF0();

    swift_willThrow();
    if (qword_100014268 != -1)
    {
      swift_once();
    }

    v39 = sub_10000B010();
    sub_100001BDC(v39, qword_100014568);
    v40 = sub_10000AFF0();
    v41 = sub_10000B150();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "simFocus: Error while serializing SimAccounts array to data", v42, 2u);
    }

    sub_100006A14(0, 0xF000000000000000);
  }
}

uint64_t sub_100006A14(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100006A28(a1, a2);
  }

  return a1;
}

uint64_t sub_100006A28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100006A7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100006AD0(uint64_t a1)
{
  v2 = sub_100001F24(&qword_100014448, &qword_10000BDD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_100006B38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_100006B48()
{
  result = qword_100014450;
  if (!qword_100014450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014450);
  }

  return result;
}

unint64_t sub_100006B9C()
{
  result = qword_100014470;
  if (!qword_100014470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014470);
  }

  return result;
}

void sub_100006BE8()
{
  sub_100005F58();
  type metadata accessor for CFString();
  sub_100005830(&qword_1000143A0);
  isa = sub_10000B030().super.isa;

  v1 = SecItemDelete(isa);

  if (v1)
  {
    if (qword_100014268 != -1)
    {
      swift_once();
    }

    v2 = sub_10000B010();
    sub_100001BDC(v2, qword_100014568);
    v3 = sub_10000AFF0();
    v4 = sub_10000B150();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      sub_100006B48();
      swift_allocError();
      *v7 = v1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v8;
      *v6 = v8;
      _os_log_impl(&_mh_execute_header, v3, v4, "simFocus: failed deleting item from key chain, error: %@", v5, 0xCu);
      sub_100006AD0(v6);

LABEL_10:
    }
  }

  else
  {
    if (qword_100014268 != -1)
    {
      swift_once();
    }

    v9 = sub_10000B010();
    sub_100001BDC(v9, qword_100014568);
    v3 = sub_10000AFF0();
    v10 = sub_10000B150();
    if (os_log_type_enabled(v3, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v3, v10, "simFocus: deleted item from keychain", v11, 2u);
      goto LABEL_10;
    }
  }
}

uint64_t getEnumTagSinglePayload for KeyChainSIMData.KeychainError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for KeyChainSIMData.KeychainError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_100006EA8()
{
  result = qword_100014480;
  if (!qword_100014480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014480);
  }

  return result;
}

unint64_t sub_100006F00()
{
  result = qword_100014488;
  if (!qword_100014488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014488);
  }

  return result;
}

unint64_t sub_100006FC0()
{
  result = qword_100014490;
  if (!qword_100014490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014490);
  }

  return result;
}

uint64_t sub_100007068()
{
  v1 = *(v0 + 16);
  sub_10000ADE0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000070CC(uint64_t a1)
{
  v2 = sub_100006FC0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10000711C()
{
  result = qword_100014498;
  if (!qword_100014498)
  {
    sub_100004F90(&qword_1000144A0, &unk_10000BF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014498);
  }

  return result;
}

uint64_t sub_100007180@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for KeyChainSIMData();
  result = swift_initStaticObject();
  *a1 = result;
  return result;
}

uint64_t sub_1000071B8(uint64_t a1)
{
  v2 = sub_10000730C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100007264();
  sub_10000AFE0();
  return 0;
}

unint64_t sub_100007264()
{
  result = qword_1000144A8;
  if (!qword_1000144A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144A8);
  }

  return result;
}

unint64_t sub_10000730C()
{
  result = qword_1000144B0;
  if (!qword_1000144B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144B0);
  }

  return result;
}

void sub_100007370()
{
  v0 = sub_10000B010();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AD10();
  sub_10000AD00();
  type metadata accessor for KeyChainSIMData();
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  sub_10000ACF0();

  sub_100007584(v10);
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {

    sub_10000B000();
    v7 = sub_10000AFF0();
    v8 = sub_10000B150();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "PhoneFocus App AppIntents Extension launched", v9, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100007584(uint64_t a1)
{
  v2 = sub_100001F24(&qword_1000144B8, qword_10000BFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PhoneFocusFilterAction.perform()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_10000B010();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000076CC, 0, 0);
}

void sub_1000076CC()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = v0[12];
  sub_10000B0C0();

  sub_10000B000();
  v5 = sub_10000AFF0();
  v6 = sub_10000B150();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "simFocus: Perform called", v7, 2u);
  }

  v8 = v0[12];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[7];

  v12 = *(v10 + 8);
  v12(v8, v9);
  sub_10000ACD0();
  v13 = v0[2];
  sub_100006BE8();
  v14 = v0[6];

  sub_10000ADF0();
  v15 = v0[3];
  if (!v15)
  {
    v28 = [v1 mainBundle];
    v29 = [v28 bundleIdentifier];

    if (v29)
    {
      v30 = v0[10];
      sub_10000B0C0();

      sub_10000B000();
      v31 = sub_10000AFF0();
      v32 = sub_10000B150();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "simFocus: focus disabled", v33, 2u);
      }

      v35 = v0[9];
      v34 = v0[10];
      v36 = v0[8];

      v12(v34, v36);
      if (qword_1000142A0 != -1)
      {
        swift_once();
      }

      sub_10000A498(0);
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    return;
  }

  v16 = [v1 mainBundle];
  v17 = [v16 bundleIdentifier];

  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v0[11];
  sub_10000B0C0();

  sub_10000B000();
  v19 = sub_10000AFF0();
  v20 = sub_10000B150();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "simFocus: focus enabled", v21, 2u);
  }

  v22 = v0[11];
  v23 = v0[8];
  v24 = v0[9];

  v12(v22, v23);
  if (qword_1000142A0 != -1)
  {
    swift_once();
  }

  v25 = v0[7];
  sub_10000A498(1);
  sub_10000ACD0();
  v26 = v0[4];
  sub_100006440(v15, v27);

LABEL_17:
  v37 = v0[11];
  v38 = v0[12];
  v39 = v0[10];
  v40 = v0[5];
  sub_10000ADE0();

  v41 = v0[1];

  v41();
}

uint64_t sub_100007BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to static SetFocusFilterIntent.suggestedFocusFilters(for:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100007C60;

  return static SetFocusFilterIntent.suggestedFocusFilters(for:)(a1, a2, a3);
}

uint64_t sub_100007C60(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t static PhoneFocusFilterAction.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014290 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AF20();
  v3 = sub_100001BDC(v2, static PhoneFocusFilterAction.title);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static PhoneFocusFilterAction.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014298 != -1)
  {
    swift_once();
  }

  v2 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  v3 = sub_100001BDC(v2, static PhoneFocusFilterAction.description);
  swift_beginAccess();
  return sub_100009CC4(v3, a1);
}

uint64_t sub_100007EB4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000238C;

  return PhoneFocusFilterAction.perform()(a1, v5, v4);
}

void sub_100007F60(void *a1@<X8>)
{
  _s10PhoneFocus0aB12FilterActionVACycfC_0();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100007F88@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return PhoneFocusFilterAction.displayRepresentation.getter(a1);
}

uint64_t PhoneFocusFilterAction.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v22[0] = a1;
  v1 = sub_100001F24(&qword_1000142C0, &qword_10000B7B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v22 - v3;
  v5 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v22 - v7;
  v9 = sub_10000AF10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000AFA0();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_10000B0A0();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_10000AF20();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  sub_10000B040();
  sub_10000AF90();
  (*(v10 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v9);
  sub_10000AF40();
  sub_100008EC4(v8);
  v20 = sub_10000AE50();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  return sub_10000AE60();
}

uint64_t sub_1000082A4(uint64_t a1)
{
  v2 = sub_100009E10();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000082E0(uint64_t a1)
{
  v2 = sub_100009E68();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t static PhoneFocusFilterAction.typeDisplayRepresentation.getter()
{
  v0 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_10000AF10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10000AFA0();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10000B0A0();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10000AF20();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000B040();
  sub_10000AF90();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_10000AF40();
  (*(v14 + 56))(v3, 1, 1, v13);
  return sub_10000AEB0();
}

uint64_t sub_1000085F0()
{
  v0 = sub_10000AF10();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000AFA0();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10000B0A0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10000AF20();
  sub_10000561C(v9, static PhoneFocusFilterAction.title);
  sub_100001BDC(v9, static PhoneFocusFilterAction.title);
  sub_10000B040();
  sub_10000AF90();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10000AF40();
}

uint64_t PhoneFocusFilterAction.title.unsafeMutableAddressor()
{
  if (qword_100014290 != -1)
  {
    swift_once();
  }

  v0 = sub_10000AF20();

  return sub_100001BDC(v0, static PhoneFocusFilterAction.title);
}

uint64_t static PhoneFocusFilterAction.title.setter(uint64_t a1)
{
  if (qword_100014290 != -1)
  {
    swift_once();
  }

  v2 = sub_10000AF20();
  v3 = sub_100001BDC(v2, static PhoneFocusFilterAction.title);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static PhoneFocusFilterAction.title.modify())()
{
  if (qword_100014290 != -1)
  {
    swift_once();
  }

  v0 = sub_10000AF20();
  sub_100001BDC(v0, static PhoneFocusFilterAction.title);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1000089CC()
{
  v0 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v19 - v2;
  v19[0] = sub_10000AF10();
  v4 = *(v19[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v19[0]);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000AFA0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000B0A0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10000AF20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  sub_10000561C(v15, static PhoneFocusFilterAction.description);
  v16 = sub_100001BDC(v15, static PhoneFocusFilterAction.description);
  sub_10000B040();
  sub_10000AF90();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v19[0]);
  sub_10000AF40();
  (*(v13 + 56))(v3, 1, 1, v12);
  sub_10000AE20();
  v17 = sub_10000AE10();
  return (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
}

uint64_t PhoneFocusFilterAction.description.unsafeMutableAddressor()
{
  if (qword_100014298 != -1)
  {
    swift_once();
  }

  v0 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);

  return sub_100001BDC(v0, static PhoneFocusFilterAction.description);
}

uint64_t static PhoneFocusFilterAction.description.setter(uint64_t a1)
{
  if (qword_100014298 != -1)
  {
    swift_once();
  }

  v2 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  v3 = sub_100001BDC(v2, static PhoneFocusFilterAction.description);
  swift_beginAccess();
  sub_100009D34(a1, v3);
  swift_endAccess();
  return sub_100009DA4(a1);
}

uint64_t (*static PhoneFocusFilterAction.description.modify())()
{
  if (qword_100014298 != -1)
  {
    swift_once();
  }

  v0 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  sub_100001BDC(v0, static PhoneFocusFilterAction.description);
  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_100008EC4(uint64_t a1@<X8>)
{
  v2 = sub_10000AF10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000AFA0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000B0A0();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000B080();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v46 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000ADF0();
  v18 = v47;
  if (!v47)
  {
    if (qword_1000142A0 != -1)
    {
      swift_once();
    }

    sub_10000A164(0);
    sub_10000B040();
    sub_10000AF90();
    (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
    sub_10000AF40();
    goto LABEL_22;
  }

  v45 = v14;
  v19 = v47[2];
  if (v19)
  {
    v40 = v3;
    v41 = v2;
    v42 = v10;
    v43 = v6;
    v44 = a1;
    v47 = _swiftEmptyArrayStorage;
    sub_100009528(0, v19, 0);
    v20 = 4;
    v21 = v47;
    v39 = v19;
    v22 = v19;
    do
    {
      v23 = v18[v20];
      v24 = [v23 name];
      v25 = sub_10000B0C0();
      v27 = v26;

      v47 = v21;
      v29 = v21[2];
      v28 = v21[3];
      if (v29 >= v28 >> 1)
      {
        sub_100009528((v28 > 1), v29 + 1, 1);
        v21 = v47;
      }

      v21[2] = v29 + 1;
      v30 = &v21[2 * v29];
      v30[4] = v25;
      v30[5] = v27;
      ++v20;
      --v22;
    }

    while (v22);

    v6 = v43;
    a1 = v44;
    v2 = v41;
    v19 = v39;
    v3 = v40;
  }

  else
  {

    v21 = _swiftEmptyArrayStorage;
  }

  if (qword_1000142A0 != -1)
  {
    swift_once();
  }

  sub_10000A164(1);
  if (v19 == 1)
  {
    sub_10000B070();
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    sub_10000B060(v53);
    if (v21[2])
    {
      v35 = v21[4];
      v36 = v21[5];

      v54._countAndFlagsBits = v35;
      v54._object = v36;
      sub_10000B050(v54);

      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      sub_10000B060(v55);
      sub_10000B090();
      sub_10000AF90();
      (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
      goto LABEL_21;
    }
  }

  else
  {
    if (v19 != 2)
    {
      v38 = sub_10000AF20();
      (*(*(v38 - 8) + 56))(a1, 1, 1, v38);

      return;
    }

    sub_10000B070();
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    sub_10000B060(v48);
    if (v21[2])
    {
      v31 = v21[4];
      v32 = v21[5];

      v49._countAndFlagsBits = v31;
      v49._object = v32;
      sub_10000B050(v49);

      v50._countAndFlagsBits = 8236;
      v50._object = 0xE200000000000000;
      sub_10000B060(v50);
      if (v21[2] >= 2uLL)
      {
        v33 = v21[6];
        v34 = v21[7];

        v51._countAndFlagsBits = v33;
        v51._object = v34;
        sub_10000B050(v51);

        v52._countAndFlagsBits = 0;
        v52._object = 0xE000000000000000;
        sub_10000B060(v52);
        sub_10000B090();
        sub_10000AF90();
        (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
LABEL_21:
        sub_10000AF30();
LABEL_22:
        v37 = sub_10000AF20();
        (*(*(v37 - 8) + 56))(a1, 0, 1, v37);
        return;
      }

      goto LABEL_26;
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

char *sub_100009528(char *a1, int64_t a2, char a3)
{
  result = sub_100009548(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100009548(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F24(&qword_1000144F8, &unk_10000C230);
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
    v10 = _swiftEmptyArrayStorage;
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

void _s10PhoneFocus0aB12FilterActionVACycfC_0()
{
  v0 = sub_10000B010();
  v37 = *(v0 - 8);
  v38 = v0;
  v1 = *(v37 + 64);
  __chkstk_darwin(v0);
  v36 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000AE90();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  __chkstk_darwin(v3);
  v41 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001F24(&qword_1000142D0, &unk_10000B7F0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = sub_100001F24(&qword_1000142C8, &qword_10000B7B8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v36 - v14;
  v16 = sub_10000AF10();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000AFA0();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v23 = sub_10000B0A0();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v25 = sub_10000AF20();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v39 = sub_100001F24(&qword_1000142D8, &unk_10000C240);
  sub_10000B040();
  sub_10000AF90();
  (*(v17 + 104))(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v16);
  sub_10000AF30();
  (*(v26 + 56))(v15, 1, 1, v25);
  *&v44 = 0;
  v28 = sub_10000ADD0();
  v29 = *(*(v28 - 8) + 56);
  v29(v11, 1, 1, v28);
  v29(v40, 1, 1, v28);
  (*(v42 + 104))(v41, enum case for InputConnectionBehavior.default(_:), v43);
  sub_100004BA8();
  sub_100004BFC();
  sub_10000AE00();
  sub_100001F24(&qword_1000142F0, &qword_10000B800);
  sub_10000AD10();
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  sub_10000AD00();
  sub_10000ACE0();
  v30 = [objc_opt_self() mainBundle];
  v31 = [v30 bundleIdentifier];

  if (v31)
  {
    sub_10000B0C0();

    v32 = v36;
    sub_10000B000();
    v33 = sub_10000AFF0();
    v34 = sub_10000B150();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "simFocus: init called", v35, 2u);
    }

    (*(v37 + 8))(v32, v38);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100009CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009DA4(uint64_t a1)
{
  v2 = sub_100001F24(&qword_1000144C0, &unk_10000BFE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100009E10()
{
  result = qword_1000144C8;
  if (!qword_1000144C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144C8);
  }

  return result;
}

unint64_t sub_100009E68()
{
  result = qword_1000144D0;
  if (!qword_1000144D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144D0);
  }

  return result;
}

unint64_t sub_100009EC0()
{
  result = qword_1000144D8;
  if (!qword_1000144D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144D8);
  }

  return result;
}

unint64_t sub_100009F18()
{
  result = qword_1000144E0;
  if (!qword_1000144E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144E0);
  }

  return result;
}

unint64_t sub_100009FDC()
{
  result = qword_1000144E8;
  if (!qword_1000144E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144E8);
  }

  return result;
}

unint64_t sub_10000A034()
{
  result = qword_1000144F0;
  if (!qword_1000144F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144F0);
  }

  return result;
}

__n128 sub_10000A088(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000A094(uint64_t *a1, int a2)
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

uint64_t sub_10000A0DC(uint64_t result, int a2, int a3)
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

id sub_10000A134()
{
  result = [objc_allocWithZone(type metadata accessor for PhoneFocusMetrics()) init];
  qword_1000145E0 = result;
  return result;
}

void sub_10000A164(char a1)
{
  sub_100001F24(&qword_100014530, &qword_10000C278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000C250;
  *(inited + 32) = 0xD000000000000020;
  *(inited + 40) = 0x800000010000CA90;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  v4 = sub_10000AA50(inited);
  swift_setDeallocating();
  sub_10000AB54(inited + 32);
  v5 = *(v1 + OBJC_IVAR____TtC10PhoneFocus17PhoneFocusMetrics_analyticsLogger);
  v6 = sub_10000B0B0();
  sub_10000A2B8(v4);

  sub_10000ABBC();
  isa = sub_10000B030().super.isa;

  [v5 logEvent:v6 withCoreAnalyticsDictionary:isa];
}

void sub_10000A2B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001F24(&qword_100014548, &qword_10000C288);
    v2 = sub_10000B250();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_10000A73C(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_10000A498(char a1)
{
  sub_100001F24(&qword_100014530, &qword_10000C278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000C250;
  *(inited + 32) = 0xD00000000000002ALL;
  *(inited + 40) = 0x800000010000CB00;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  v4 = sub_10000AA50(inited);
  swift_setDeallocating();
  sub_10000AB54(inited + 32);
  v5 = *(v1 + OBJC_IVAR____TtC10PhoneFocus17PhoneFocusMetrics_analyticsLogger);
  v6 = sub_10000B0B0();
  sub_10000A2B8(v4);

  sub_10000ABBC();
  isa = sub_10000B030().super.isa;

  [v5 logEvent:v6 withCoreAnalyticsDictionary:isa];
}

id sub_10000A650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhoneFocusMetrics();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000A6B8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10000B2C0();
  type metadata accessor for CFString();
  sub_10000AC08();
  sub_10000AFC0();
  v4 = sub_10000B2D0();

  return sub_10000A7B4(a1, v4);
}

unint64_t sub_10000A73C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000B2C0();
  sub_10000B0D0();
  v6 = sub_10000B2D0();

  return sub_10000A890(a1, a2, v6);
}

unint64_t sub_10000A7B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_10000AC08();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10000AFB0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10000A890(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000B260())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000A948(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001F24(&qword_100014458, &qword_10000BDE0);
    v3 = sub_10000B250();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000AC60(v4, &v11);
      v5 = v11;
      result = sub_10000A6B8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100006B38(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_10000AA50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001F24(&qword_100014550, &unk_10000C290);
    v3 = sub_10000B250();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10000A73C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_10000AB54(uint64_t a1)
{
  v2 = sub_100001F24(&qword_100014538, &qword_10000C280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000ABBC()
{
  result = qword_100014540;
  if (!qword_100014540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014540);
  }

  return result;
}

unint64_t sub_10000AC08()
{
  result = qword_100014460;
  if (!qword_100014460)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014460);
  }

  return result;
}

uint64_t sub_10000AC60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F24(&qword_100014478, &qword_10000C2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}