uint64_t sub_1000012C8(void *a1)
{
  v1 = a1;

  return sub_1000062F8(v1);
}

uint64_t sub_1000012F4(void *a1)
{
  v2 = (*(*(sub_1000015CC(&qword_10001C038, &unk_1000105B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = (*(*(sub_1000015CC(&qword_10001C040, qword_100012720) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = sub_10000F864();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = *(*(sub_10000F8F4() - 8) + 64);
  __chkstk_darwin();
  sub_10000F8E4();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  sub_10000F8D4(v20);
  v12 = [a1 fullName];
  if (v12)
  {
    v13 = v12;
    v14 = sub_10000F904();
    v16 = v15;
  }

  else
  {
    v16 = 0xE100000000000000;
    v14 = 45;
  }

  v21._countAndFlagsBits = v14;
  v21._object = v16;
  sub_10000F8C4(v21);

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_10000F8D4(v22);
  sub_10000F854();
  sub_10000F844();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_10000F714();
  v17 = sub_10000F724();
  (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
  return sub_10000F734();
}

uint64_t sub_1000015CC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001614()
{
  v0 = sub_1000015CC(&qword_10001C048, &qword_1000105C0);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = (*(*(sub_1000015CC(&qword_10001C050, &qword_1000105C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_1000017DC();
  sub_10000F7D4();
  v8._object = 0x8000000100012800;
  v8._countAndFlagsBits = 0xD000000000000044;
  sub_10000F7C4(v8);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10000F7B4();
  (*(v1 + 8))(v4, v0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_10000F7C4(v9);
  return sub_10000F7E4();
}

unint64_t sub_1000017DC()
{
  result = qword_10001C058;
  if (!qword_10001C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C058);
  }

  return result;
}

uint64_t sub_100001830()
{
  result = nullsub_1();
  qword_10001FED8 = &type metadata for FamilyQuery;
  unk_10001FEE0 = &off_100018AE8;
  qword_10001FEE8 = 0;
  return result;
}

uint64_t sub_100001868@<X0>(void *a1@<X8>)
{
  result = nullsub_1();
  a1[3] = &type metadata for FamilyQuery;
  a1[4] = &off_100018AE8;
  a1[5] = 0;
  return result;
}

void *sub_1000018A4()
{
  if (qword_10001C4C0 != -1)
  {
    swift_once();
  }

  return &unk_10001FEC0;
}

uint64_t sub_1000018F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001C4C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_100001FE0(&unk_10001FEC0, a1);
}

uint64_t sub_100001974(uint64_t a1)
{
  if (qword_10001C4C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100002018(a1, &unk_10001FEC0);
  swift_endAccess();
  return sub_100002050(a1);
}

uint64_t (*sub_100001A04())()
{
  if (qword_10001C4C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100001A94()
{
  v0 = sub_1000015CC(&qword_10001C048, &qword_1000105C0);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v7 - v3;
  v5 = (*(*(sub_1000015CC(&qword_10001C050, &qword_1000105C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  sub_1000017DC();
  sub_10000F7D4();
  v8._object = 0x8000000100012800;
  v8._countAndFlagsBits = 0xD000000000000044;
  sub_10000F7C4(v8);
  (*(v1 + 104))(v4, enum case for _EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_10000F7B4();
  (*(v1 + 8))(v4, v0);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_10000F7C4(v9);
  return sub_10000F7E4();
}

uint64_t sub_100001C58()
{
  sub_100003C74();
  v1 = sub_10000F774();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100001CC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000062F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100001CF8()
{
  sub_1000044F4();

  return sub_10000F49C();
}

uint64_t sub_100001D44(uint64_t a1)
{
  v2 = sub_1000017DC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100001D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100001E5C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100001E5C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001F50(uint64_t a1)
{
  v2 = sub_100003FE8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100001FB0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1000020E4(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_100002080(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000020E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000020FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = nullsub_1();
  a2[3] = &type metadata for FamilyQuery;
  a2[4] = &off_100018AE8;
  a2[5] = a1;
  return result;
}

uint64_t sub_10000215C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000254C(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100002280;

  return v8(v2, v3);
}

uint64_t sub_100002280(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_1000023B4, 0, 0);
  }
}

uint64_t sub_1000023B4()
{
  v1 = [*(v0 + 32) members];
  sub_100002590();
  v2 = sub_10000F934();

  if (v2 >> 62)
  {
    v3 = sub_10000F9B4();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:
    v8 = *(v0 + 32);

    goto LABEL_12;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  result = sub_10000F984();
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
      sub_10000F954();
    }

    else
    {
      v7 = *(v2 + 8 * v5 + 32);
    }

    ++v5;
    sub_10000F964();
    v6 = _swiftEmptyArrayStorage[2];
    sub_10000F994();
    sub_10000F9A4();
    sub_10000F974();
  }

  while (v3 != v5);

LABEL_12:
  v9 = *(v0 + 8);

  return v9(_swiftEmptyArrayStorage);
}

void *sub_10000254C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100002590()
{
  result = qword_10001C060;
  if (!qword_10001C060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001C060);
  }

  return result;
}

uint64_t sub_1000025DC()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000266C;

  return sub_10000213C();
}

uint64_t sub_10000266C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;
  *(*v2 + 32) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_1000027BC, 0, 0);
  }
}

uint64_t sub_1000027BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  sub_100002958(sub_100002870, v4, v1);
  v6 = v5;

  v7 = v0[1];

  return v7(v6);
}

BOOL sub_10000288C(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_10000F9E4();
  sub_10000F9F4(a1);
  v5 = sub_10000FA04();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

void sub_100002958(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v12 = _swiftEmptyArrayStorage;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = 0;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 8 * v7 + 32);
      v8 = v11;
      v9 = a1(&v11);
      if (v3)
      {

        return;
      }

      if (v9)
      {
        sub_10000F964();
        v10 = v12[2];
        sub_10000F994();
        sub_10000F9A4();
        sub_10000F974();
      }

      else
      {
      }

      if (v5 == ++v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

uint64_t sub_100002A80(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  v3[1] = sub_100002B10;

  return sub_10000213C();
}

uint64_t sub_100002B10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 64) = a1;

    return _swift_task_switch(sub_100002C60, 0, 0);
  }
}

void sub_100002C60()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  sub_100002958(sub_1000045A0, v4, v1);
  v6 = v5;

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    while (v8 < *(v6 + 16))
    {
      v9 = v0[4];
      v10 = *(v6 + 32 + 8 * v8);
      v0[2] = sub_1000062F8(v10);
      v0[3] = v11;
      v12 = swift_task_alloc();
      *(v12 + 16) = v0 + 2;
      LOBYTE(v9) = sub_100003ACC(sub_100003BD8, v12, v9);

      if (v9)
      {
        sub_10000F964();
        v13 = _swiftEmptyArrayStorage[2];
        sub_10000F994();
        sub_10000F9A4();
        sub_10000F974();
      }

      else
      {
      }

      if (v7 == ++v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    v14 = v0[1];

    v14(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100002E1C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = swift_task_alloc();
  v3[9] = v4;
  *v4 = v3;
  v4[1] = sub_100002EB0;

  return sub_10000213C();
}

uint64_t sub_100002EB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 88) = a1;

    return _swift_task_switch(sub_100003000, 0, 0);
  }
}

void sub_100003000()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  sub_100002958(sub_1000045A0, v4, v1);
  v6 = v5;

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    while (v8 < *(v6 + 16))
    {
      v9 = *(v6 + 32 + 8 * v8);
      v10 = [v9 fullName];
      if (!v10)
      {
        goto LABEL_3;
      }

      v12 = v0[6];
      v11 = v0[7];
      v13 = v10;
      v14 = sub_10000F904();
      v16 = v15;

      v0[2] = v14;
      v0[3] = v16;
      v0[4] = v12;
      v0[5] = v11;
      sub_100003BF8();
      LOBYTE(v13) = sub_10000F944();

      if (v13)
      {
        sub_10000F964();
        v17 = _swiftEmptyArrayStorage[2];
        sub_10000F994();
        sub_10000F9A4();
        sub_10000F974();
      }

      else
      {
LABEL_3:
      }

      if (v7 == ++v8)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    v18 = v0[1];

    v18(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000031E0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000459C;

  return sub_10000213C();
}

uint64_t sub_100003274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10000331C;

  return sub_100002E1C(a2, a3);
}

uint64_t sub_10000331C(uint64_t a1)
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

uint64_t sub_10000342C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000045D0;

  return sub_100002A80(a1);
}

uint64_t sub_1000034C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_100003550;

  return sub_10000213C();
}

uint64_t sub_100003550(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return _swift_task_switch(sub_1000036A0, 0, 0);
  }
}

uint64_t sub_1000036A0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  sub_100002958(sub_1000045A0, v5, v1);
  v7 = v6;

  *v4 = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_100003754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003814;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100003814(uint64_t a1)
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

uint64_t sub_100003914(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100003E30();
  *v6 = v2;
  v6[1] = sub_100001E5C;

  return EntityQuery.results()(a1, a2, v7);
}

Swift::Int sub_1000039E4()
{
  v1 = *v0;
  sub_10000F9E4();
  sub_10000F9F4(v1);
  return sub_10000FA04();
}

Swift::Int sub_100003A58()
{
  v1 = *v0;
  sub_10000F9E4();
  sub_10000F9F4(v1);
  return sub_10000FA04();
}

void *sub_100003AB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003ACC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_100003B78(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  sub_100004548();
  return sub_10000F8B4() & 1;
}

unint64_t sub_100003BF8()
{
  result = qword_10001C068;
  if (!qword_10001C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C068);
  }

  return result;
}

unint64_t sub_100003C4C(uint64_t a1)
{
  result = sub_100003C74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003C74()
{
  result = qword_10001C070;
  if (!qword_10001C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C070);
  }

  return result;
}

unint64_t sub_100003CD0()
{
  result = qword_10001C078;
  if (!qword_10001C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C078);
  }

  return result;
}

unint64_t sub_100003D28()
{
  result = qword_10001C080;
  if (!qword_10001C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C080);
  }

  return result;
}

unint64_t sub_100003D80()
{
  result = qword_10001C088;
  if (!qword_10001C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C088);
  }

  return result;
}

unint64_t sub_100003DD8()
{
  result = qword_10001C090;
  if (!qword_10001C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C090);
  }

  return result;
}

unint64_t sub_100003E30()
{
  result = qword_10001C098;
  if (!qword_10001C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C098);
  }

  return result;
}

unint64_t sub_100003E88()
{
  result = qword_10001C0A0;
  if (!qword_10001C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C0A0);
  }

  return result;
}

unint64_t sub_100003EE0()
{
  result = qword_10001C0A8;
  if (!qword_10001C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C0A8);
  }

  return result;
}

unint64_t sub_100003F38()
{
  result = qword_10001C0B0;
  if (!qword_10001C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C0B0);
  }

  return result;
}

unint64_t sub_100003F90()
{
  result = qword_10001C0B8;
  if (!qword_10001C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C0B8);
  }

  return result;
}

unint64_t sub_100003FE8()
{
  result = qword_10001C0C0;
  if (!qword_10001C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C0C0);
  }

  return result;
}

unint64_t sub_100004040()
{
  result = qword_10001C0C8;
  if (!qword_10001C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C0C8);
  }

  return result;
}

unint64_t sub_100004098()
{
  result = qword_10001C0D0;
  if (!qword_10001C0D0)
  {
    sub_1000040FC(&qword_10001C0D8, &qword_1000107C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C0D0);
  }

  return result;
}

uint64_t sub_1000040FC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100004148()
{
  result = qword_10001C0E0;
  if (!qword_10001C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C0E0);
  }

  return result;
}

unint64_t sub_1000041A0()
{
  result = qword_10001C0E8;
  if (!qword_10001C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C0E8);
  }

  return result;
}

unint64_t sub_1000041F8()
{
  result = qword_10001C0F0;
  if (!qword_10001C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C0F0);
  }

  return result;
}

unint64_t sub_100004250()
{
  result = qword_10001C0F8;
  if (!qword_10001C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C0F8);
  }

  return result;
}

unint64_t sub_1000042A8()
{
  result = qword_10001C100;
  if (!qword_10001C100)
  {
    sub_1000040FC(&qword_10001C108, qword_100010980);
    sub_100003F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C100);
  }

  return result;
}

__n128 sub_10000433C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100004350(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100004398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for FAMemberType()
{
  if (!qword_10001C110)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10001C110);
    }
  }
}

unint64_t sub_100004448()
{
  result = qword_10001C118;
  if (!qword_10001C118)
  {
    type metadata accessor for FAMemberType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C118);
  }

  return result;
}

unint64_t sub_1000044F4()
{
  result = qword_10001C120;
  if (!qword_10001C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C120);
  }

  return result;
}

unint64_t sub_100004548()
{
  result = qword_10001C128;
  if (!qword_10001C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C128);
  }

  return result;
}

uint64_t sub_1000045D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003814;

  return sub_1000047EC();
}

uint64_t sub_100004674(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000254C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000015CC(&qword_10001C138, &qword_100010C18);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10000474C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000045D0;

  return sub_1000047EC();
}

uint64_t sub_100004808()
{
  v1 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100004940;
  v2 = swift_continuation_init();
  v0[17] = sub_1000015CC(&qword_10001C130, &qword_100010C10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100004674;
  v0[13] = &unk_100018B18;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100004940()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_100004AB8;
  }

  else
  {
    v3 = sub_100004A50;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100004A50()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100004AB8()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_100004B48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004BAC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100004BF8()
{
  v0 = sub_10000F864();
  sub_100005C7C(v0, qword_10001FEF0);
  sub_100004CC0(v0, qword_10001FEF0);
  return sub_10000F844();
}

uint64_t sub_100004C5C()
{
  if (qword_10001CF50 != -1)
  {
    swift_once();
  }

  v0 = sub_10000F864();

  return sub_100004CC0(v0, qword_10001FEF0);
}

uint64_t sub_100004CC0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100004CF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001CF50 != -1)
  {
    swift_once();
  }

  v2 = sub_10000F864();
  v3 = sub_100004CC0(v2, qword_10001FEF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100004DA0()
{
  v0 = sub_1000015CC(&qword_10001C140, &qword_100010C28);
  sub_100005C7C(v0, qword_10001FF08);
  v1 = sub_100004CC0(v0, qword_10001FF08);
  sub_10000F6F4();
  v2 = sub_10000F704();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100004E60()
{
  if (qword_10001CF58 != -1)
  {
    swift_once();
  }

  v0 = sub_1000015CC(&qword_10001C140, &qword_100010C28);

  return sub_100004CC0(v0, qword_10001FF08);
}

uint64_t sub_100004ED0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001CF58 != -1)
  {
    swift_once();
  }

  v2 = sub_1000015CC(&qword_10001C140, &qword_100010C28);
  v3 = sub_100004CC0(v2, qword_10001FF08);

  return sub_100004F54(v3, a1);
}

uint64_t sub_100004F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000015CC(&qword_10001C140, &qword_100010C28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*sub_100005034(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10000F694();
  return sub_100005CE4;
}

unint64_t sub_1000050A8()
{
  result = qword_10001C158;
  if (!qword_10001C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C158);
  }

  return result;
}

uint64_t (*sub_100005184(uint64_t *a1))()
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
  *(v3 + 32) = sub_10000F694();
  return sub_1000051F8;
}

void sub_1000051FC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100005248(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005B80();
  v5 = sub_100005C28();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000052BC(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100005B80();
  v8 = sub_100005BD4();
  v9 = sub_100005C28();
  *v6 = v2;
  v6[1] = sub_100005390;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100005390()
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

uint64_t sub_100005498@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005540();
  *a1 = result;
  return result;
}

unint64_t sub_1000054C4()
{
  sub_100005B2C();

  return sub_100007968();
}

uint64_t sub_100005504(uint64_t a1)
{
  v2 = sub_1000058F0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100005540()
{
  v20 = sub_10000F764();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_1000015CC(&qword_10001C148, &unk_1000110D0) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_1000015CC(&qword_10001C040, qword_100012720);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_10000F864();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1000015CC(&qword_10001C150, &qword_100010C30);
  sub_10000F844();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 1;
  v17 = sub_10000F684();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_1000050A8();
  return sub_10000F6E4();
}

unint64_t sub_100005844()
{
  result = qword_10001C160;
  if (!qword_10001C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C160);
  }

  return result;
}

unint64_t sub_10000589C()
{
  result = qword_10001C168;
  if (!qword_10001C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C168);
  }

  return result;
}

unint64_t sub_1000058F0()
{
  result = qword_10001C170;
  if (!qword_10001C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C170);
  }

  return result;
}

unint64_t sub_100005944()
{
  result = qword_10001C178;
  if (!qword_10001C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C178);
  }

  return result;
}

unint64_t sub_100005998(uint64_t a1)
{
  result = sub_1000059C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000059C0()
{
  result = qword_10001C180;
  if (!qword_10001C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C180);
  }

  return result;
}

unint64_t sub_100005A18()
{
  result = qword_10001C188;
  if (!qword_10001C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C188);
  }

  return result;
}

unint64_t sub_100005A70()
{
  result = qword_10001C190;
  if (!qword_10001C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C190);
  }

  return result;
}

unint64_t sub_100005B2C()
{
  result = qword_10001C198;
  if (!qword_10001C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C198);
  }

  return result;
}

unint64_t sub_100005B80()
{
  result = qword_10001C1A0;
  if (!qword_10001C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1A0);
  }

  return result;
}

unint64_t sub_100005BD4()
{
  result = qword_10001C1A8;
  if (!qword_10001C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1A8);
  }

  return result;
}

unint64_t sub_100005C28()
{
  result = qword_10001C1B0;
  if (!qword_10001C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1B0);
  }

  return result;
}

uint64_t *sub_100005C7C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100005CF0(char a1)
{
  if (!a1)
  {
    return 0x6553796C696D6166;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0xD000000000000013;
}

uint64_t sub_100005D54(uint64_t a1, void *a2)
{

  v4._rawValue = &off_100018B78;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v5 = sub_10000F9C4(v4, v7);

  if (v5 >= 3)
  {
    return 3;
  }

  else
  {
    return v5;
  }
}

BOOL sub_100005DB0(void *a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = [a1 members];
  sub_100002590();
  v4 = sub_10000F934();

  v5 = v4 >> 62;
  if (v2)
  {
    if (v5)
    {
      v6 = sub_10000F9B4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v6 != 0;
  }

  else
  {
    if (v5)
    {
      v8 = sub_10000F9B4();
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v8 == 0;
  }
}

uint64_t sub_100005E8C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = 0x80000001000128E0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001000128E0;
  }

  else
  {
    v6 = 0x8000000100012900;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6553796C696D6166;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEB00000000707574;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000013;
    v4 = 0x8000000100012900;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6553796C696D6166;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000707574;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10000F9D4();
  }

  return v11 & 1;
}

Swift::Int sub_100005F70()
{
  v1 = *v0;
  sub_10000F9E4();
  sub_10000F914();

  return sub_10000FA04();
}

uint64_t sub_100006020()
{
  *v0;
  *v0;
  sub_10000F914();
}

Swift::Int sub_1000060BC()
{
  v1 = *v0;
  sub_10000F9E4();
  sub_10000F914();

  return sub_10000FA04();
}

uint64_t sub_100006168@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000064F0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100006198(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000707574;
  v4 = 0xD000000000000011;
  v5 = 0x80000001000128E0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000013;
    v5 = 0x8000000100012900;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6553796C696D6166;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100006214()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6553796C696D6166;
  }
}

uint64_t sub_10000627C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_1000064F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000062F8(void *a1)
{
  v2 = [a1 altDSID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_10000F904();
  }

  else
  {

    return 0x6E776F6E6B6E75;
  }

  return v4;
}

uint64_t sub_100006374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_10000F9D4();
  }
}

Swift::Int sub_100006398()
{
  sub_10000F9E4();
  sub_10000F914();
  return sub_10000FA04();
}

uint64_t sub_1000063E8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_100006418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

Swift::Int sub_100006424()
{
  v1 = *v0;
  v2 = v0[1];
  sub_10000F9E4();
  sub_10000F914();
  return sub_10000FA04();
}

uint64_t sub_100006470()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_10000F914();
}

Swift::Int sub_100006478()
{
  v1 = *v0;
  v2 = v0[1];
  sub_10000F9E4();
  sub_10000F914();
  return sub_10000FA04();
}

uint64_t sub_1000064C0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000F9D4();
  }
}

uint64_t sub_1000064F0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100018B78;
  v6._object = a2;
  v4 = sub_10000F9C4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100006540()
{
  result = qword_10001C1B8;
  if (!qword_10001C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1B8);
  }

  return result;
}

unint64_t sub_100006598()
{
  result = qword_10001C1C0;
  if (!qword_10001C1C0)
  {
    sub_1000040FC(&qword_10001C1C8, qword_100010F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LinkDestinationID(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LinkDestinationID(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_100006770(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000677C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000067C4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10000681C()
{
  v0 = sub_10000F864();
  sub_100005C7C(v0, qword_10001FF20);
  sub_100004CC0(v0, qword_10001FF20);
  return sub_10000F844();
}

uint64_t sub_100006880()
{
  if (qword_10001D7E0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000F864();

  return sub_100004CC0(v0, qword_10001FF20);
}

uint64_t sub_1000068E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001D7E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000F864();
  v3 = sub_100004CC0(v2, qword_10001FF20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000698C()
{
  v0 = sub_1000015CC(&qword_10001C140, &qword_100010C28);
  sub_100005C7C(v0, qword_10001FF38);
  v1 = sub_100004CC0(v0, qword_10001FF38);
  sub_10000F6F4();
  v2 = sub_10000F704();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100006A4C()
{
  if (qword_10001D7E8 != -1)
  {
    swift_once();
  }

  v0 = sub_1000015CC(&qword_10001C140, &qword_100010C28);

  return sub_100004CC0(v0, qword_10001FF38);
}

uint64_t sub_100006ABC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001D7E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000015CC(&qword_10001C140, &qword_100010C28);
  v3 = sub_100004CC0(v2, qword_10001FF38);

  return sub_100004F54(v3, a1);
}

void sub_100006B8C(void *a1)
{
  v1 = a1;
  sub_10000F6B4();
}

uint64_t (*sub_100006BCC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10000F694();
  return sub_100005CE4;
}

uint64_t sub_100006C40()
{
  v21[0] = sub_10000F764();
  v0 = *(v21[0] - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21[0]);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000015CC(&qword_10001C148, &unk_1000110D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_1000015CC(&qword_10001C040, qword_100012720);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v21 - v13;
  v15 = sub_10000F864();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000015CC(&qword_10001C1D0, &qword_1000110E0);
  sub_10000F844();
  (*(v16 + 56))(v14, 1, 1, v15);
  v21[1] = 0;
  v18 = sub_10000F684();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21[0]);
  sub_1000017DC();
  return sub_10000F6E4();
}

uint64_t sub_100006F4C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_10000F6A4();
  *a1 = v5;
  return result;
}

void sub_100006F88(id *a1)
{
  v2 = *v1;
  v3 = *a1;
  sub_10000F6B4();
}

uint64_t (*sub_100006FCC(uint64_t *a1))()
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
  *(v3 + 32) = sub_10000F694();
  return sub_1000051F8;
}

uint64_t sub_100007040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000078BC();
  v5 = sub_100003C74();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000070A8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000078BC();
  v8 = sub_100007910();
  v9 = sub_100003C74();
  *v6 = v2;
  v6[1] = sub_100005390;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10000717C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007220(0);
  *a1 = result;
  return result;
}

unint64_t sub_1000071A8()
{
  sub_100007868();

  return sub_100007968();
}

uint64_t sub_1000071E4(uint64_t a1)
{
  v2 = sub_100007684();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100007220(uint64_t a1)
{
  v30 = a1;
  v32 = sub_10000F764();
  v1 = *(v32 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v32);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000015CC(&qword_10001C148, &unk_1000110D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v24 - v10;
  v12 = sub_1000015CC(&qword_10001C040, qword_100012720);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v24 - v14;
  v16 = sub_10000F864();
  v28 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v31 = sub_1000015CC(&qword_10001C1D0, &qword_1000110E0);
  sub_10000F844();
  v27 = *(v17 + 56);
  v27(v15, 1, 1, v16);
  v33[0] = 0;
  v19 = sub_10000F684();
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v20(v9, 1, 1, v19);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v21 = *(v1 + 104);
  v24 = v1 + 104;
  v25 = v21;
  v21(v4);
  sub_1000017DC();
  v29 = sub_10000F6E4();
  sub_10000F844();
  v27(v15, 1, 1, v28);
  v33[6] = 0;
  v20(v11, 1, 1, v19);
  v20(v9, 1, 1, v19);
  sub_1000020FC(v30, v33);
  v25(v4, v26, v32);
  sub_100003E30();
  v22 = sub_10000F6D4();

  return v22;
}

unint64_t sub_100007630()
{
  result = qword_10001C1D8;
  if (!qword_10001C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1D8);
  }

  return result;
}

unint64_t sub_100007684()
{
  result = qword_10001C1E0;
  if (!qword_10001C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1E0);
  }

  return result;
}

unint64_t sub_1000076D8(uint64_t a1)
{
  result = sub_100007700();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100007700()
{
  result = qword_10001C1E8;
  if (!qword_10001C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1E8);
  }

  return result;
}

unint64_t sub_100007758()
{
  result = qword_10001C1F0;
  if (!qword_10001C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1F0);
  }

  return result;
}

unint64_t sub_1000077B0()
{
  result = qword_10001C1F8;
  if (!qword_10001C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C1F8);
  }

  return result;
}

unint64_t sub_100007868()
{
  result = qword_10001C200;
  if (!qword_10001C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C200);
  }

  return result;
}

unint64_t sub_1000078BC()
{
  result = qword_10001C208;
  if (!qword_10001C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C208);
  }

  return result;
}

unint64_t sub_100007910()
{
  result = qword_10001C210;
  if (!qword_10001C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C210);
  }

  return result;
}

unint64_t sub_1000079C0()
{
  result = qword_10001C218;
  if (!qword_10001C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C218);
  }

  return result;
}

uint64_t sub_100007A14(uint64_t a1)
{
  v2 = sub_100007B10();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000079C0();
  sub_10000F8A4();
  return 0;
}

unint64_t sub_100007B10()
{
  result = qword_10001C220;
  if (!qword_10001C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C220);
  }

  return result;
}

uint64_t sub_100007B74()
{
  v0 = sub_10000F864();
  sub_100005C7C(v0, qword_10001FF50);
  sub_100004CC0(v0, qword_10001FF50);
  return sub_10000F844();
}

uint64_t sub_100007BD8()
{
  if (qword_10001DCF0 != -1)
  {
    swift_once();
  }

  v0 = sub_10000F864();

  return sub_100004CC0(v0, qword_10001FF50);
}

uint64_t sub_100007C3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001DCF0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000F864();
  v3 = sub_100004CC0(v2, qword_10001FF50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100007CE4()
{
  v0 = sub_1000015CC(&qword_10001C140, &qword_100010C28);
  sub_100005C7C(v0, qword_10001FF68);
  v1 = sub_100004CC0(v0, qword_10001FF68);
  sub_10000F6F4();
  v2 = sub_10000F704();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100007DA4()
{
  if (qword_10001DCF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1000015CC(&qword_10001C140, &qword_100010C28);

  return sub_100004CC0(v0, qword_10001FF68);
}

uint64_t sub_100007E14@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001DCF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000015CC(&qword_10001C140, &qword_100010C28);
  v3 = sub_100004CC0(v2, qword_10001FF68);

  return sub_100004F54(v3, a1);
}

uint64_t (*sub_100007EB0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10000F694();
  return sub_100005CE4;
}

unint64_t sub_100007F24()
{
  result = qword_10001C230;
  if (!qword_10001C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C230);
  }

  return result;
}

uint64_t (*sub_100007F94(uint64_t *a1))()
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
  *(v3 + 32) = sub_10000F694();
  return sub_1000051F8;
}

uint64_t sub_100008008(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000087CC();
  v5 = sub_100008874();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100008070(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000087CC();
  v8 = sub_100008820();
  v9 = sub_100008874();
  *v6 = v2;
  v6[1] = sub_100005390;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100008144@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000081E4();
  *a1 = result;
  return result;
}

unint64_t sub_10000816C()
{
  sub_100008778();

  return sub_100007968();
}

uint64_t sub_1000081A8(uint64_t a1)
{
  v2 = sub_100008594();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000081E4()
{
  v21 = sub_10000F764();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000015CC(&qword_10001C148, &unk_1000110D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1000015CC(&qword_10001C040, qword_100012720);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10000F864();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000015CC(&qword_10001C228, &qword_100011420);
  sub_10000F844();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_10000F684();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100007F24();
  return sub_10000F6E4();
}

unint64_t sub_1000084E8()
{
  result = qword_10001C238;
  if (!qword_10001C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C238);
  }

  return result;
}

unint64_t sub_100008540()
{
  result = qword_10001C240;
  if (!qword_10001C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C240);
  }

  return result;
}

unint64_t sub_100008594()
{
  result = qword_10001C248;
  if (!qword_10001C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C248);
  }

  return result;
}

unint64_t sub_1000085E8(uint64_t a1)
{
  result = sub_100008610();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100008610()
{
  result = qword_10001C250;
  if (!qword_10001C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C250);
  }

  return result;
}

unint64_t sub_100008668()
{
  result = qword_10001C258;
  if (!qword_10001C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C258);
  }

  return result;
}

unint64_t sub_1000086C0()
{
  result = qword_10001C260;
  if (!qword_10001C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C260);
  }

  return result;
}

unint64_t sub_100008778()
{
  result = qword_10001C268;
  if (!qword_10001C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C268);
  }

  return result;
}

unint64_t sub_1000087CC()
{
  result = qword_10001C270;
  if (!qword_10001C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C270);
  }

  return result;
}

unint64_t sub_100008820()
{
  result = qword_10001C278;
  if (!qword_10001C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C278);
  }

  return result;
}

unint64_t sub_100008874()
{
  result = qword_10001C280;
  if (!qword_10001C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C280);
  }

  return result;
}

uint64_t sub_1000088D0()
{
  v0 = sub_1000015CC(&qword_10001C038, &unk_1000105B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_1000015CC(&qword_10001C040, qword_100012720);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_10000F864();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000F844();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_10000F714();
  v11 = sub_10000F724();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_10000F734();
}

uint64_t sub_100008AD4()
{
  v0 = sub_10000F894();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v13 = 0;
  v6 = [v5 urlDestinationTo:1 error:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = v6;
    sub_10000F884();
    v9 = v7;

    sub_10000F874();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v10 = v13;
    sub_10000F834();

    swift_willThrow();
  }

  sub_100007F24();
  return sub_10000F7F4();
}

uint64_t sub_100008C70()
{
  result = nullsub_1();
  qword_10001FF98 = &type metadata for FamilyQuery;
  unk_10001FFA0 = &off_100018AE8;
  return result;
}

uint64_t sub_100008CA4@<X0>(uint64_t a1@<X8>)
{
  result = nullsub_1();
  *(a1 + 24) = &type metadata for FamilyQuery;
  *(a1 + 32) = &off_100018AE8;
  return result;
}

void *sub_100008CDC()
{
  if (qword_10001E100 != -1)
  {
    swift_once();
  }

  return &unk_10001FF80;
}

uint64_t sub_100008D2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001E100 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_10000902C(&unk_10001FF80, a1);
}

uint64_t sub_100008DAC(uint64_t a1)
{
  if (qword_10001E100 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100009064(a1, &unk_10001FF80);
  swift_endAccess();
  return sub_10000909C(a1);
}

uint64_t (*sub_100008E3C())()
{
  if (qword_10001E100 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100008EC8()
{
  sub_100008874();
  v1 = sub_10000F774();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100008F40()
{
  sub_10000A998();

  return sub_10000F49C();
}

uint64_t sub_100008F8C(uint64_t a1)
{
  v2 = sub_100007F24();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100008FD8(uint64_t a1)
{
  v2 = sub_10000A5D8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000090EC()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000254C(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100009210;

  return v8(v2, v3);
}

uint64_t sub_100009210(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_10000935C, 0, 0);
  }
}

uint64_t sub_10000935C()
{
  v1 = *(v0 + 32);
  v2 = sub_100005DB0(v1, 1u);

  if (v2)
  {
    v3 = &off_100018DD0;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_100009408(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_100009498;

  return sub_1000097E8();
}

uint64_t sub_100009498(char a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 66) = a1;

  return _swift_task_switch(sub_100009598, 0, 0);
}

uint64_t sub_100009598()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    sub_100009B20();
    while (1)
    {
      v7 = *v3++;
      v6 = v7;
      *(v0 + 64) = v7;
      *(v0 + 65) = 1;
      sub_10000F924();
      sub_10000F924();
      if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
      {
        break;
      }

      v9 = *(v0 + 24);
      v10 = *(v0 + 40);
      v11 = sub_10000F9D4();

      if (v11)
      {
        goto LABEL_14;
      }

LABEL_6:
      if (!--v2)
      {
        goto LABEL_16;
      }
    }

    v12 = *(v0 + 40);

LABEL_14:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000A2C8(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    if (v5 >= v4 >> 1)
    {
      sub_10000A2C8((v4 > 1), v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v5 + 1;
    *(&_swiftEmptyArrayStorage[4] + v5) = v6;
    goto LABEL_6;
  }

LABEL_16:
  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    v14 = _swiftEmptyArrayStorage;
    do
    {
      if ((*(v0 + 66) & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_10000A1D4(0, *(v14 + 2) + 1, 1, v14);
        }

        v16 = *(v14 + 2);
        v15 = *(v14 + 3);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v14 = sub_10000A1D4((v15 > 1), v16 + 1, 1, v14);
        }

        *(v14 + 2) = v17;
      }

      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  v18 = *(v0 + 8);

  return v18(v14);
}

uint64_t sub_100009808()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000254C(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_10000992C;

  return v8(v2, v3);
}

uint64_t sub_10000992C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {

    v7 = *(v6 + 8);

    return v7(1);
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_100009A84, 0, 0);
  }
}

uint64_t sub_100009A84()
{
  v1 = *(v0 + 32);
  v2 = sub_100005DB0(v1, 1u);

  v3 = _swiftEmptyArrayStorage[2];

  v4 = *(v0 + 8);

  return v4((v3 == 0) & ~v2);
}

unint64_t sub_100009B20()
{
  result = qword_10001C288;
  if (!qword_10001C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C288);
  }

  return result;
}

uint64_t sub_100009BBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000045D0;

  return sub_100009408(a1);
}

uint64_t sub_100009C50(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100009C70, 0, 0);
}

uint64_t sub_100009C70()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000254C(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_100009D94;

  return v8(v2, v3);
}

uint64_t sub_100009D94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100009EE0, 0, 0);
  }
}

uint64_t sub_100009EE0()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_100005DB0(v1, 1u);

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v4 = &off_100018DD0;
  }

  *v2 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_100009F7C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000A420();
  *v6 = v2;
  v6[1] = sub_100001E5C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000A030(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A0C0;

  return sub_1000097E8();
}

uint64_t sub_10000A0C0(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1 & 1;
  v5 = *(v7 + 8);

  return v5();
}

char *sub_10000A1D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000015CC(&qword_10001C330, qword_100011B28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10000A2C8(char *a1, int64_t a2, char a3)
{
  result = sub_10000A9EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_10000A2E8(uint64_t a1)
{
  result = sub_100008874();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000A318()
{
  result = qword_10001C290;
  if (!qword_10001C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C290);
  }

  return result;
}

unint64_t sub_10000A370()
{
  result = qword_10001C298;
  if (!qword_10001C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C298);
  }

  return result;
}

unint64_t sub_10000A3C8()
{
  result = qword_10001C2A0;
  if (!qword_10001C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2A0);
  }

  return result;
}

unint64_t sub_10000A420()
{
  result = qword_10001C2A8;
  if (!qword_10001C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2A8);
  }

  return result;
}

unint64_t sub_10000A478()
{
  result = qword_10001C2B0;
  if (!qword_10001C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2B0);
  }

  return result;
}

unint64_t sub_10000A4D0()
{
  result = qword_10001C2B8;
  if (!qword_10001C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2B8);
  }

  return result;
}

unint64_t sub_10000A528()
{
  result = qword_10001C2C0;
  if (!qword_10001C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2C0);
  }

  return result;
}

unint64_t sub_10000A580()
{
  result = qword_10001C2C8;
  if (!qword_10001C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2C8);
  }

  return result;
}

unint64_t sub_10000A5D8()
{
  result = qword_10001C2D0;
  if (!qword_10001C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2D0);
  }

  return result;
}

unint64_t sub_10000A630()
{
  result = qword_10001C2D8;
  if (!qword_10001C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2D8);
  }

  return result;
}

unint64_t sub_10000A688()
{
  result = qword_10001C2E0;
  if (!qword_10001C2E0)
  {
    sub_1000040FC(&qword_10001C2E8, &qword_100011870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2E0);
  }

  return result;
}

unint64_t sub_10000A6F0()
{
  result = qword_10001C2F0;
  if (!qword_10001C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2F0);
  }

  return result;
}

unint64_t sub_10000A748()
{
  result = qword_10001C2F8;
  if (!qword_10001C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C2F8);
  }

  return result;
}

unint64_t sub_10000A7A0()
{
  result = qword_10001C300;
  if (!qword_10001C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C300);
  }

  return result;
}

unint64_t sub_10000A7F8()
{
  result = qword_10001C308;
  if (!qword_10001C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C308);
  }

  return result;
}

unint64_t sub_10000A850()
{
  result = qword_10001C310;
  if (!qword_10001C310)
  {
    sub_1000040FC(&qword_10001C318, qword_1000119F0);
    sub_10000A580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C310);
  }

  return result;
}

__n128 sub_10000A8E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000A8F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000A940(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000A998()
{
  result = qword_10001C320;
  if (!qword_10001C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C320);
  }

  return result;
}

char *sub_10000A9EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000015CC(&qword_10001C328, &qword_100011B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10000AAF4()
{
  v0 = sub_1000015CC(&qword_10001C038, &unk_1000105B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_1000015CC(&qword_10001C040, qword_100012720);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_10000F864();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000F844();
  sub_10000F844();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_10000F714();
  v11 = sub_10000F724();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_10000F734();
}

uint64_t sub_10000AD14()
{
  v0 = sub_10000F894();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v13 = 0;
  v6 = [v5 urlDestinationTo:6 error:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = v6;
    sub_10000F884();
    v9 = v7;

    sub_10000F874();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v10 = v13;
    sub_10000F834();

    swift_willThrow();
  }

  sub_1000050A8();
  return sub_10000F7F4();
}

uint64_t sub_10000AEB0()
{
  result = nullsub_1();
  qword_10001FFC0 = &type metadata for FamilyQuery;
  *algn_10001FFC8 = &off_100018AE8;
  return result;
}

void *sub_10000AEE4()
{
  if (qword_10001E990 != -1)
  {
    swift_once();
  }

  return &unk_10001FFA8;
}

uint64_t sub_10000AF34@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001E990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_10000B228(&unk_10001FFA8, a1);
}

uint64_t sub_10000AFB4(uint64_t a1)
{
  if (qword_10001E990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10000B260(a1, &unk_10001FFA8);
  swift_endAccess();
  return sub_10000B298(a1);
}

uint64_t (*sub_10000B044())()
{
  if (qword_10001E990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10000B0D0()
{
  sub_100005C28();
  v1 = sub_10000F774();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10000B144()
{
  sub_10000C8B4();

  return sub_10000F49C();
}

uint64_t sub_10000B190(uint64_t a1)
{
  v2 = sub_1000050A8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10000B1DC(uint64_t a1)
{
  v2 = sub_10000C5E4();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000B2E8()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000254C(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_10000B40C;

  return v8(v2, v3);
}

uint64_t sub_10000B40C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_10000B558, 0, 0);
  }
}

uint64_t sub_10000B558()
{
  v1 = *(v0 + 32);
  v2 = sub_100005DB0(v1, 0);

  if (v2)
  {
    v3 = &off_100018F20;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10000B604(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_10000B694;

  return sub_10000B9E0();
}

uint64_t sub_10000B694(char a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 66) = a1;

  return _swift_task_switch(sub_10000B794, 0, 0);
}

uint64_t sub_10000B794()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    sub_100009B20();
    while (1)
    {
      v7 = *v3++;
      v6 = v7;
      *(v0 + 64) = v7;
      *(v0 + 65) = 0;
      sub_10000F924();
      sub_10000F924();
      if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
      {
        break;
      }

      v9 = *(v0 + 24);
      v10 = *(v0 + 40);
      v11 = sub_10000F9D4();

      if (v11)
      {
        goto LABEL_14;
      }

LABEL_6:
      if (!--v2)
      {
        goto LABEL_16;
      }
    }

    v12 = *(v0 + 40);

LABEL_14:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000A2C8(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    if (v5 >= v4 >> 1)
    {
      sub_10000A2C8((v4 > 1), v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v5 + 1;
    *(&_swiftEmptyArrayStorage[4] + v5) = v6;
    goto LABEL_6;
  }

LABEL_16:
  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    v14 = _swiftEmptyArrayStorage;
    do
    {
      if ((*(v0 + 66) & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_10000C264(0, *(v14 + 2) + 1, 1, v14);
        }

        v16 = *(v14 + 2);
        v15 = *(v14 + 3);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v14 = sub_10000C264((v15 > 1), v16 + 1, 1, v14);
        }

        *(v14 + 2) = v17;
      }

      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  v18 = *(v0 + 8);

  return v18(v14);
}

uint64_t sub_10000BA00()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000254C(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_10000BB24;

  return v8(v2, v3);
}

uint64_t sub_10000BB24(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {

    v7 = *(v6 + 8);

    return v7(1);
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_10000BC7C, 0, 0);
  }
}

uint64_t sub_10000BC7C()
{
  v1 = *(v0 + 32);
  v2 = sub_100005DB0(v1, 0);

  v3 = _swiftEmptyArrayStorage[2];

  v4 = *(v0 + 8);

  return v4((v3 == 0) & ~v2);
}

uint64_t sub_10000BD60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000045D0;

  return sub_10000B604(a1);
}

uint64_t sub_10000BDF4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10000BE14, 0, 0);
}

uint64_t sub_10000BE14()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000254C(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_10000BF38;

  return v8(v2, v3);
}

uint64_t sub_10000BF38(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_10000C084, 0, 0);
  }
}

uint64_t sub_10000C084()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_100005DB0(v1, 0);

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v4 = &off_100018F20;
  }

  *v2 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_10000C120(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000C488();
  *v6 = v2;
  v6[1] = sub_100001E5C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000C1D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A0C0;

  return sub_10000B9E0();
}

char *sub_10000C264(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000015CC(&qword_10001C3C0, &qword_100011FE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_10000C358(uint64_t a1)
{
  result = sub_100005C28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000C384()
{
  result = qword_10001C338;
  if (!qword_10001C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C338);
  }

  return result;
}

unint64_t sub_10000C3DC()
{
  result = qword_10001C340;
  if (!qword_10001C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C340);
  }

  return result;
}

unint64_t sub_10000C434()
{
  result = qword_10001C348;
  if (!qword_10001C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C348);
  }

  return result;
}

unint64_t sub_10000C488()
{
  result = qword_10001C350;
  if (!qword_10001C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C350);
  }

  return result;
}

unint64_t sub_10000C4E0()
{
  result = qword_10001C358;
  if (!qword_10001C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C358);
  }

  return result;
}

unint64_t sub_10000C538()
{
  result = qword_10001C360;
  if (!qword_10001C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C360);
  }

  return result;
}

unint64_t sub_10000C58C()
{
  result = qword_10001C368;
  if (!qword_10001C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C368);
  }

  return result;
}

unint64_t sub_10000C5E4()
{
  result = qword_10001C370;
  if (!qword_10001C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C370);
  }

  return result;
}

unint64_t sub_10000C63C()
{
  result = qword_10001C378;
  if (!qword_10001C378)
  {
    sub_1000040FC(&qword_10001C380, &qword_100011D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C378);
  }

  return result;
}

unint64_t sub_10000C6A4()
{
  result = qword_10001C388;
  if (!qword_10001C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C388);
  }

  return result;
}

unint64_t sub_10000C700()
{
  result = qword_10001C390;
  if (!qword_10001C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C390);
  }

  return result;
}

unint64_t sub_10000C758()
{
  result = qword_10001C398;
  if (!qword_10001C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C398);
  }

  return result;
}

unint64_t sub_10000C7B4()
{
  result = qword_10001C3A0;
  if (!qword_10001C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3A0);
  }

  return result;
}

unint64_t sub_10000C810()
{
  result = qword_10001C3A8;
  if (!qword_10001C3A8)
  {
    sub_1000040FC(&qword_10001C3B0, qword_100011EB0);
    sub_10000C58C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3A8);
  }

  return result;
}

unint64_t sub_10000C8B4()
{
  result = qword_10001C3B8;
  if (!qword_10001C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3B8);
  }

  return result;
}

uint64_t sub_10000C918()
{
  v0 = sub_10000F864();
  sub_100005C7C(v0, qword_10001FFD0);
  sub_100004CC0(v0, qword_10001FFD0);
  return sub_10000F844();
}

uint64_t sub_10000C97C()
{
  if (qword_10001F220 != -1)
  {
    swift_once();
  }

  v0 = sub_10000F864();

  return sub_100004CC0(v0, qword_10001FFD0);
}

uint64_t sub_10000C9E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001F220 != -1)
  {
    swift_once();
  }

  v2 = sub_10000F864();
  v3 = sub_100004CC0(v2, qword_10001FFD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000CA88()
{
  v0 = sub_1000015CC(&qword_10001C140, &qword_100010C28);
  sub_100005C7C(v0, qword_10001FFE8);
  v1 = sub_100004CC0(v0, qword_10001FFE8);
  sub_10000F6F4();
  v2 = sub_10000F704();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10000CB48()
{
  if (qword_10001F228 != -1)
  {
    swift_once();
  }

  v0 = sub_1000015CC(&qword_10001C140, &qword_100010C28);

  return sub_100004CC0(v0, qword_10001FFE8);
}

uint64_t sub_10000CBB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001F228 != -1)
  {
    swift_once();
  }

  v2 = sub_1000015CC(&qword_10001C140, &qword_100010C28);
  v3 = sub_100004CC0(v2, qword_10001FFE8);

  return sub_100004F54(v3, a1);
}

uint64_t (*sub_10000CC54(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10000F694();
  return sub_100005CE4;
}

unint64_t sub_10000CCC8()
{
  result = qword_10001C3D0;
  if (!qword_10001C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3D0);
  }

  return result;
}

uint64_t (*sub_10000CD38(uint64_t *a1))()
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
  *(v3 + 32) = sub_10000F694();
  return sub_1000051F8;
}

uint64_t sub_10000CDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000D564();
  v5 = sub_10000D60C();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_10000CE14(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000D564();
  v8 = sub_10000D5B8();
  v9 = sub_10000D60C();
  *v6 = v2;
  v6[1] = sub_100005390;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_10000CEE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000CF88();
  *a1 = result;
  return result;
}

unint64_t sub_10000CF10()
{
  sub_10000D510();

  return sub_100007968();
}

uint64_t sub_10000CF4C(uint64_t a1)
{
  v2 = sub_10000D32C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000CF88()
{
  v21 = sub_10000F764();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000015CC(&qword_10001C148, &unk_1000110D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_1000015CC(&qword_10001C040, qword_100012720);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10000F864();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000015CC(&qword_10001C3C8, &qword_100012000);
  sub_10000F844();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_10000F684();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10000CCC8();
  return sub_10000F6E4();
}

unint64_t sub_10000D280()
{
  result = qword_10001C3D8;
  if (!qword_10001C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3D8);
  }

  return result;
}

unint64_t sub_10000D2D8()
{
  result = qword_10001C3E0;
  if (!qword_10001C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3E0);
  }

  return result;
}

unint64_t sub_10000D32C()
{
  result = qword_10001C3E8;
  if (!qword_10001C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3E8);
  }

  return result;
}

unint64_t sub_10000D380(uint64_t a1)
{
  result = sub_10000D3A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000D3A8()
{
  result = qword_10001C3F0;
  if (!qword_10001C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3F0);
  }

  return result;
}

unint64_t sub_10000D400()
{
  result = qword_10001C3F8;
  if (!qword_10001C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C3F8);
  }

  return result;
}

unint64_t sub_10000D458()
{
  result = qword_10001C400;
  if (!qword_10001C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C400);
  }

  return result;
}

unint64_t sub_10000D510()
{
  result = qword_10001C408;
  if (!qword_10001C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C408);
  }

  return result;
}

unint64_t sub_10000D564()
{
  result = qword_10001C410;
  if (!qword_10001C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C410);
  }

  return result;
}

unint64_t sub_10000D5B8()
{
  result = qword_10001C418;
  if (!qword_10001C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C418);
  }

  return result;
}

unint64_t sub_10000D60C()
{
  result = qword_10001C420;
  if (!qword_10001C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C420);
  }

  return result;
}

uint64_t sub_10000D670()
{
  v0 = sub_1000015CC(&qword_10001C038, &unk_1000105B0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_1000015CC(&qword_10001C040, qword_100012720);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_10000F864();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000F844();
  sub_10000F844();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_10000F714();
  v11 = sub_10000F724();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_10000F734();
}

uint64_t sub_10000D890()
{
  v0 = sub_10000F894();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v13 = 0;
  v6 = [v5 urlDestinationTo:3 error:&v13];
  v7 = v13;
  if (v6)
  {
    v8 = v6;
    sub_10000F884();
    v9 = v7;

    sub_10000F874();
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v10 = v13;
    sub_10000F834();

    swift_willThrow();
  }

  sub_10000CCC8();
  return sub_10000F7F4();
}

uint64_t sub_10000DA2C()
{
  result = nullsub_1();
  qword_100020018 = &type metadata for FamilyQuery;
  unk_100020020 = &off_100018AE8;
  return result;
}

void *sub_10000DA60()
{
  if (qword_10001F630 != -1)
  {
    swift_once();
  }

  return &unk_100020000;
}

uint64_t sub_10000DAB0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10001F630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_10000DDA8(&unk_100020000, a1);
}

uint64_t sub_10000DB30(uint64_t a1)
{
  if (qword_10001F630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_10000DDE0(a1, &unk_100020000);
  swift_endAccess();
  return sub_10000DE18(a1);
}

uint64_t (*sub_10000DBC0())()
{
  if (qword_10001F630 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10000DC4C()
{
  sub_10000D60C();
  v1 = sub_10000F774();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10000DCC4()
{
  sub_10000F438();

  return sub_10000F49C();
}

uint64_t sub_10000DD10(uint64_t a1)
{
  v2 = sub_10000CCC8();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10000DD5C(uint64_t a1)
{
  v2 = sub_10000F174();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000DE68()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000254C(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_10000DF8C;

  return v8(v2, v3);
}

uint64_t sub_10000DF8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_10000E0D8, 0, 0);
  }
}

uint64_t sub_10000E0D8()
{
  v1 = *(v0 + 32);
  v2 = sub_100005DB0(v1, 2u);

  if (v2)
  {
    v3 = &off_1000190A8;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_10000E184(uint64_t a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_10000E214;

  return sub_10000E564();
}

uint64_t sub_10000E214(char a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 66) = a1;

  return _swift_task_switch(sub_10000E314, 0, 0);
}

uint64_t sub_10000E314()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    sub_100009B20();
    while (1)
    {
      v7 = *v3++;
      v6 = v7;
      *(v0 + 64) = v7;
      *(v0 + 65) = 2;
      sub_10000F924();
      sub_10000F924();
      if (*(v0 + 16) == *(v0 + 32) && *(v0 + 24) == *(v0 + 40))
      {
        break;
      }

      v9 = *(v0 + 24);
      v10 = *(v0 + 40);
      v11 = sub_10000F9D4();

      if (v11)
      {
        goto LABEL_14;
      }

LABEL_6:
      if (!--v2)
      {
        goto LABEL_16;
      }
    }

    v12 = *(v0 + 40);

LABEL_14:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10000A2C8(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    if (v5 >= v4 >> 1)
    {
      sub_10000A2C8((v4 > 1), v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v5 + 1;
    *(&_swiftEmptyArrayStorage[4] + v5) = v6;
    goto LABEL_6;
  }

LABEL_16:
  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    v14 = _swiftEmptyArrayStorage;
    do
    {
      if ((*(v0 + 66) & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_10000EDE8(0, *(v14 + 2) + 1, 1, v14);
        }

        v16 = *(v14 + 2);
        v15 = *(v14 + 3);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v14 = sub_10000EDE8((v15 > 1), v16 + 1, 1, v14);
        }

        *(v14 + 2) = v17;
      }

      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = _swiftEmptyArrayStorage;
  }

  v18 = *(v0 + 8);

  return v18(v14);
}

uint64_t sub_10000E584()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000254C(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_10000E6A8;

  return v8(v2, v3);
}

uint64_t sub_10000E6A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {

    v7 = *(v6 + 8);

    return v7(1);
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_10000E800, 0, 0);
  }
}

uint64_t sub_10000E800()
{
  v1 = *(v0 + 32);
  v2 = sub_100005DB0(v1, 2u);

  v3 = _swiftEmptyArrayStorage[2];

  v4 = *(v0 + 8);

  return v4((v3 == 0) & ~v2);
}

uint64_t sub_10000E8E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000045D0;

  return sub_10000E184(a1);
}

uint64_t sub_10000E978(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10000E998, 0, 0);
}

uint64_t sub_10000E998()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000254C(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_10000EABC;

  return v8(v2, v3);
}

uint64_t sub_10000EABC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 40) = a1;

    return _swift_task_switch(sub_10000EC08, 0, 0);
  }
}

uint64_t sub_10000EC08()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_100005DB0(v1, 2u);

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v4 = &off_1000190A8;
  }

  *v2 = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_10000ECA4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000F014();
  *v6 = v2;
  v6[1] = sub_100001E5C;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000ED58(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A0C0;

  return sub_10000E564();
}

char *sub_10000EDE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000015CC(&unk_10001C4B0, &unk_100012710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_10000EEDC(uint64_t a1)
{
  result = sub_10000D60C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000EF0C()
{
  result = qword_10001C428;
  if (!qword_10001C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C428);
  }

  return result;
}

unint64_t sub_10000EF64()
{
  result = qword_10001C430;
  if (!qword_10001C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C430);
  }

  return result;
}

unint64_t sub_10000EFBC()
{
  result = qword_10001C438;
  if (!qword_10001C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C438);
  }

  return result;
}

unint64_t sub_10000F014()
{
  result = qword_10001C440;
  if (!qword_10001C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C440);
  }

  return result;
}

unint64_t sub_10000F06C()
{
  result = qword_10001C448;
  if (!qword_10001C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C448);
  }

  return result;
}

unint64_t sub_10000F0C4()
{
  result = qword_10001C450;
  if (!qword_10001C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C450);
  }

  return result;
}

unint64_t sub_10000F11C()
{
  result = qword_10001C458;
  if (!qword_10001C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C458);
  }

  return result;
}

unint64_t sub_10000F174()
{
  result = qword_10001C460;
  if (!qword_10001C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C460);
  }

  return result;
}

unint64_t sub_10000F1CC()
{
  result = qword_10001C468;
  if (!qword_10001C468)
  {
    sub_1000040FC(&qword_10001C470, &qword_100012450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C468);
  }

  return result;
}

unint64_t sub_10000F234()
{
  result = qword_10001C478;
  if (!qword_10001C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C478);
  }

  return result;
}

unint64_t sub_10000F28C()
{
  result = qword_10001C480;
  if (!qword_10001C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C480);
  }

  return result;
}

unint64_t sub_10000F2E4()
{
  result = qword_10001C488;
  if (!qword_10001C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C488);
  }

  return result;
}

unint64_t sub_10000F33C()
{
  result = qword_10001C490;
  if (!qword_10001C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C490);
  }

  return result;
}

unint64_t sub_10000F394()
{
  result = qword_10001C498;
  if (!qword_10001C498)
  {
    sub_1000040FC(&qword_10001C4A0, qword_1000125D0);
    sub_10000F11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C498);
  }

  return result;
}

unint64_t sub_10000F438()
{
  result = qword_10001C4A8;
  if (!qword_10001C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001C4A8);
  }

  return result;
}

uint64_t sub_10000F49C()
{
  v0 = (*(*(sub_1000015CC(&qword_10001C040, qword_100012720) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = sub_10000F864();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  sub_10000F844();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10000F804();
}