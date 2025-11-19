uint64_t sub_10001A574(uint64_t result, int a2, int a3)
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

uint64_t sub_10001A648()
{
  v0 = sub_100003930(&qword_100068EB0, &unk_100047120);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_100041728();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003930(&qword_100068630, &qword_100042F70);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100003930(&qword_100068608, &qword_100042F30);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_1000417D8();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100003930(&qword_100068EB8, &qword_100047130);
  sub_1000417B8();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_100041548();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_100019648();
  v28 = sub_1000415C8();
  sub_100003930(&qword_100068EC0, &qword_100047138);
  sub_1000417B8();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_100042038();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_1000415D8();
  return v28;
}

uint64_t sub_10001AAB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003930(&qword_100068EF8, &qword_100047198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10001AB44()
{
  sub_100042108();
  sub_100042008();

  return sub_100042128();
}

unint64_t sub_10001AC54()
{
  result = qword_100068F00;
  if (!qword_100068F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F00);
  }

  return result;
}

uint64_t sub_10001ACB0()
{
  *v0;
  *v0;
  sub_100042008();
}

uint64_t sub_10001AD9C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001C6A4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001ADCC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE000000000000000;
  v4 = 0x800000010004DA80;
  v5 = 0x800000010004DAA0;
  v6 = 0xD000000000000021;
  if (v2 != 4)
  {
    v6 = 0xD000000000000042;
    v5 = 0x800000010004DAD0;
  }

  if (v2 == 3)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v4 = v5;
  }

  v7 = 0x800000010004DA40;
  v8 = 0xD00000000000001FLL;
  if (v2 == 1)
  {
    v8 = 0xD00000000000001BLL;
  }

  else
  {
    v7 = 0x800000010004DA60;
  }

  if (*v1)
  {
    v3 = v7;
  }

  else
  {
    v8 = *v1;
  }

  if (*v1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v4;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10001AED4()
{
  v1 = *v0;
  v2 = 0xD000000000000021;
  if (v1 != 4)
  {
    v2 = 0xD000000000000042;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  v3 = 0xD00000000000001FLL;
  if (v1 == 1)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (!*v0)
  {
    v3 = *v0;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10001AF84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10001C6A4(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10001AFD0()
{
  result = qword_100068F18;
  if (!qword_100068F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F18);
  }

  return result;
}

unint64_t sub_10001B024()
{
  result = qword_100068F20;
  if (!qword_100068F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F20);
  }

  return result;
}

uint64_t sub_10001B078()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A238);
  sub_1000038F8(v0, qword_10006A238);
  return sub_1000417B8();
}

void (*sub_10001B0DC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_10001B150()
{
  result = qword_100068F28;
  if (!qword_100068F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F28);
  }

  return result;
}

uint64_t sub_10001B1A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001D324();
  v5 = sub_10001C650();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10001B214()
{
  result = qword_100068F30;
  if (!qword_100068F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F30);
  }

  return result;
}

unint64_t sub_10001B26C()
{
  result = qword_100068F38;
  if (!qword_100068F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F38);
  }

  return result;
}

uint64_t sub_10001B348(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001D324();
  v7 = sub_10001D378();
  v8 = sub_10001C650();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10001B414@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001C6F0();
  *a1 = result;
  return result;
}

uint64_t sub_10001B43C(uint64_t a1)
{
  v2 = sub_10001B150();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001B47C()
{
  result = qword_100068F40;
  if (!qword_100068F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F40);
  }

  return result;
}

unint64_t sub_10001B4D4()
{
  result = qword_100068F48;
  if (!qword_100068F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F48);
  }

  return result;
}

unint64_t sub_10001B52C()
{
  result = qword_100068F50;
  if (!qword_100068F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F50);
  }

  return result;
}

uint64_t sub_10001B580()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A250);
  sub_1000038F8(v7, qword_10006A250);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_10001B6F0()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_10001B988(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_10001CC2C(a1);
}

uint64_t sub_10001BA30(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_10001CEE0();
}

unint64_t sub_10001BAD8()
{
  result = qword_100068F58;
  if (!qword_100068F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F58);
  }

  return result;
}

uint64_t sub_10001BB2C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_10001C9EC();
}

unint64_t sub_10001BBD4()
{
  result = qword_100068F60;
  if (!qword_100068F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F60);
  }

  return result;
}

unint64_t sub_10001BC2C()
{
  result = qword_100068F68;
  if (!qword_100068F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F68);
  }

  return result;
}

unint64_t sub_10001BC84()
{
  result = qword_100068F70;
  if (!qword_100068F70)
  {
    sub_100003830(&qword_100068F78, qword_1000474F8);
    sub_10001BC2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F70);
  }

  return result;
}

uint64_t sub_10001BD08(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001BAD8();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10001BDBC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_10001D194();
}

unint64_t sub_10001BE64()
{
  result = qword_100068F80;
  if (!qword_100068F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F80);
  }

  return result;
}

uint64_t sub_10001BEB8()
{
  v0 = sub_100003930(&qword_100068FE0, &qword_1000478F0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100068FE8, &qword_1000478F8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10001B52C();
  sub_100041708();
  v9._object = 0x800000010004F170;
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_10001C084()
{
  result = qword_100068F88;
  if (!qword_100068F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F88);
  }

  return result;
}

unint64_t sub_10001C0DC()
{
  result = qword_100068F90;
  if (!qword_100068F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F90);
  }

  return result;
}

unint64_t sub_10001C134()
{
  result = qword_100068F98;
  if (!qword_100068F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068F98);
  }

  return result;
}

uint64_t sub_10001C188()
{
  sub_10001C650();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10001C1F8()
{
  result = qword_100068FA0;
  if (!qword_100068FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068FA0);
  }

  return result;
}

unint64_t sub_10001C250()
{
  result = qword_100068FA8;
  if (!qword_100068FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068FA8);
  }

  return result;
}

unint64_t sub_10001C2A8()
{
  result = qword_100068FB0;
  if (!qword_100068FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068FB0);
  }

  return result;
}

unint64_t sub_10001C300()
{
  result = qword_100068FB8;
  if (!qword_100068FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068FB8);
  }

  return result;
}

uint64_t sub_10001C3D0(uint64_t a1)
{
  v2 = sub_10001B52C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001C420()
{
  result = qword_100068FD0;
  if (!qword_100068FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068FD0);
  }

  return result;
}

uint64_t sub_10001C47C(uint64_t a1)
{
  v2 = sub_10001C2A8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001C500(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10001C590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001C650()
{
  result = qword_100068FD8;
  if (!qword_100068FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068FD8);
  }

  return result;
}

uint64_t sub_10001C6A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100062080;
  v6._object = a2;
  v4 = sub_1000420C8(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001C6F0()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100068FF0, &qword_100047928);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 6;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10001B52C();
  return sub_1000415C8();
}

uint64_t sub_10001CA08()
{
  sub_100040124(0, 6, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_100040124((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_100040124((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_100040124((v1 > 1), v2 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 2;
  v7 = _swiftEmptyArrayStorage[3];
  v8 = v7 >> 1;
  v9 = v2 + 4;
  if ((v7 >> 1) < (v2 + 4))
  {
    sub_100040124((v7 > 1), v2 + 4, 1);
    v7 = _swiftEmptyArrayStorage[3];
    v8 = v7 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v9;
  *(&_swiftEmptyArrayStorage[4] + v6) = 3;
  v10 = v2 + 5;
  if (v8 < (v2 + 5))
  {
    sub_100040124((v7 > 1), v2 + 5, 1);
    v7 = _swiftEmptyArrayStorage[3];
    v8 = v7 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v10;
  *(&_swiftEmptyArrayStorage[4] + v9) = 4;
  if (v8 < (v2 + 6))
  {
    sub_100040124((v7 > 1), v2 + 6, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 6;
  *(&_swiftEmptyArrayStorage[4] + v10) = 5;
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10001CC4C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = objc_opt_self();
    v5 = &DisplayBrightnessDataModel;
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = [v4 sharedInstance];
      v9 = [v8 getActiveDevice];

      if (v9)
      {
        if ([v9 *&v5[4].ivar_base_size])
        {
        }

        else if ((v6 - 4) >= 2)
        {
          if (v6 != 2)
          {

LABEL_14:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100040154(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v13 = _swiftEmptyArrayStorage[2];
            v12 = _swiftEmptyArrayStorage[3];
            if (v13 >= v12 >> 1)
            {
              sub_100040154((v12 > 1), v13 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v13 + 1;
            *(&_swiftEmptyArrayStorage[4] + v13) = v6;
            v5 = &DisplayBrightnessDataModel;
            goto LABEL_4;
          }

          v11 = [v9 supportsCapability:252543419];

          if (v11)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v10 = [v9 supportsCapability:1789638251];

          if (v10)
          {
            goto LABEL_14;
          }
        }
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  v14 = _swiftEmptyArrayStorage[2];
  if (v14)
  {
    sub_100040124(0, v14, 0);
    v15 = _swiftEmptyArrayStorage[2];
    v16 = 32;
    do
    {
      v17 = *(_swiftEmptyArrayStorage + v16);
      v18 = _swiftEmptyArrayStorage[3];
      if (v15 >= v18 >> 1)
      {
        sub_100040124((v18 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      *(&_swiftEmptyArrayStorage[4] + v15) = v17;
      ++v16;
      ++v15;
      --v14;
    }

    while (v14);
  }

  v19 = *(v21 + 8);

  return v19(_swiftEmptyArrayStorage);
}

uint64_t sub_10001CEFC()
{
  v0 = objc_opt_self();
  v1 = 0;
  v2 = &DisplayBrightnessDataModel;
  do
  {
    v3 = *(&off_100062158 + v1 + 32);
    v4 = [v0 sharedInstance];
    v5 = [v4 getActiveDevice];

    if (!v5)
    {
      goto LABEL_3;
    }

    if ([v5 *&v2[4].ivar_base_size])
    {

      goto LABEL_3;
    }

    if ((v3 - 4) >= 2)
    {
      if (v3 == 2)
      {
        v7 = [v5 supportsCapability:252543419];

        if ((v7 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      else
      {
      }
    }

    else
    {
      v6 = [v5 supportsCapability:1789638251];

      if (!v6)
      {
        goto LABEL_3;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100040154(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v9 = _swiftEmptyArrayStorage[2];
    v8 = _swiftEmptyArrayStorage[3];
    if (v9 >= v8 >> 1)
    {
      sub_100040154((v8 > 1), v9 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v9 + 1;
    *(&_swiftEmptyArrayStorage[4] + v9) = v3;
    v2 = &DisplayBrightnessDataModel;
LABEL_3:
    ++v1;
  }

  while (v1 != 6);
  v10 = _swiftEmptyArrayStorage[2];
  if (v10)
  {
    sub_100040124(0, v10, 0);
    v11 = _swiftEmptyArrayStorage[2];
    v12 = 32;
    do
    {
      v13 = *(_swiftEmptyArrayStorage + v12);
      v14 = _swiftEmptyArrayStorage[3];
      if (v11 >= v14 >> 1)
      {
        sub_100040124((v14 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *(&_swiftEmptyArrayStorage[4] + v11) = v13;
      ++v12;
      ++v11;
      --v10;
    }

    while (v10);
  }

  v15 = *(v17 + 8);

  return v15(_swiftEmptyArrayStorage);
}

uint64_t sub_10001D1B0()
{
  v0 = 0;
  while (1)
  {
    v1 = *(&off_100062180 + v0 + 32);
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 getActiveDevice];

    if (!v3)
    {
      goto LABEL_3;
    }

    if (![v3 isAltAccount])
    {
      break;
    }

LABEL_3:
    if (++v0 == 6)
    {
      v1 = 6;
      goto LABEL_13;
    }
  }

  if ((v1 - 4) < 2)
  {
    v4 = [v3 supportsCapability:1789638251];

    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_3;
  }

  if (v1 == 2)
  {
    v5 = [v3 supportsCapability:252543419];

    if (v5)
    {
      v1 = 2;
      goto LABEL_13;
    }

    goto LABEL_3;
  }

LABEL_13:
  v6 = *(v8 + 8);

  return v6(v1);
}

unint64_t sub_10001D324()
{
  result = qword_100068FF8;
  if (!qword_100068FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100068FF8);
  }

  return result;
}

unint64_t sub_10001D378()
{
  result = qword_100069000;
  if (!qword_100069000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069000);
  }

  return result;
}

__n128 sub_10001D3EC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001D400(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10001D444(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_10001D4C0@<X0>(uint64_t a1@<X8>, double a2@<D0>, __n128 a3@<Q1>)
{
  v31 = a3;
  v5 = sub_100003930(&qword_100069030, &unk_100047AC0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = sub_100041D78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100041D98();
  (*(v13 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v12);
  v29 = sub_100041D88();

  (*(v13 + 8))(v16, v12);
  sub_100041DC8();
  sub_1000419E8();
  *&v32[3] = *&v32[27];
  *&v32[11] = *&v32[35];
  *&v32[19] = *&v32[43];
  v35 = xmmword_100047950;
  swift_getKeyPath();
  v17 = swift_allocObject();
  v18 = v31.n128_u64[0];
  *(v17 + 16) = a2;
  *(v17 + 24) = v18;
  sub_100003930(&qword_100069038, &qword_100047AE8);
  sub_100003930(&qword_100069040, &qword_100047AF0);
  sub_10001E0E0();
  sub_10001E1C0();
  sub_100041DB8();
  sub_100041DC8();
  sub_1000419E8();
  v19 = &v11[*(v6 + 44)];
  v20 = *&v32[59];
  *v19 = *&v32[51];
  *(v19 + 1) = v20;
  *(v19 + 2) = *&v32[67];
  v21 = v30;
  sub_10001E390(v11, v30, &qword_100069030, &unk_100047AC0);
  v22 = v29;
  v33[0] = v29;
  v33[1] = 0;
  *v34 = 1;
  *&v34[2] = *v32;
  *&v34[18] = *&v32[8];
  *&v34[34] = *&v32[16];
  *&v34[48] = *&v32[23];
  v23 = v29;
  v24 = *v34;
  v25 = *&v34[16];
  v26 = *&v34[32];
  *(a1 + 64) = *&v32[23];
  *(a1 + 32) = v25;
  *(a1 + 48) = v26;
  *a1 = v23;
  *(a1 + 16) = v24;
  v27 = a1 + *(sub_100003930(&qword_100069090, &qword_100047B10) + 48);
  sub_10001E390(v21, v27, &qword_100069030, &unk_100047AC0);
  sub_10001E390(v33, &v35, &qword_100069098, &qword_100047B18);
  sub_10001E3F8(v11, &qword_100069030, &unk_100047AC0);
  sub_10001E3F8(v21, &qword_100069030, &unk_100047AC0);
  v35 = v22;
  v36 = 1;
  v37 = *v32;
  v38 = *&v32[8];
  v39[0] = *&v32[16];
  *(v39 + 14) = *&v32[23];
  return sub_10001E3F8(&v35, &qword_100069098, &qword_100047B18);
}

uint64_t *sub_10001D958@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v6 = a3 * 60.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *result;
  if (*result >= v6)
  {
    sub_100041CD8();
    v8 = sub_100041D28();
  }

  else
  {
    v8 = sub_100041D08();
  }

  sub_100041DC8();
  sub_1000419E8();
  *&v11[6] = v12;
  *&v11[22] = v13;
  *&v11[38] = v14;
  result = sub_100041DE8();
  *(a2 + 10) = *v11;
  *a2 = v8;
  *(a2 + 8) = 256;
  *(a2 + 26) = *&v11[16];
  *(a2 + 42) = *&v11[32];
  *(a2 + 56) = *(&v14 + 1);
  *(a2 + 64) = 0;
  *(a2 + 72) = round(a4 * 55.0 * 100.0) / -100.0;
  *(a2 + 80) = v7 * 6.0 * 0.0174532925;
  *(a2 + 88) = v9;
  *(a2 + 96) = v10;
  return result;
}

uint64_t sub_10001DB0C(uint64_t a1)
{
  v2 = sub_100041A18();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100041A68();
}

uint64_t sub_10001DBF8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  *a1 = sub_100041DC8();
  a1[1] = v5;
  v6 = sub_100003930(&qword_100069018, &qword_100047A78);
  v7.n128_u64[0] = v4;
  sub_10001D4C0(a1 + *(v6 + 44), v3, v7);
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(sub_100003930(&qword_100069020, &qword_100047AB0) + 36));
  v10 = *(sub_100003930(&qword_100069028, &qword_100047AB8) + 28);
  v11 = enum case for LayoutDirection.leftToRight(_:);
  v12 = sub_100041A18();
  result = (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = KeyPath;
  return result;
}

double sub_10001DCEC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_100041CF8();
  sub_1000419F8();
  v7 = *(a1 + 32);
  v9 = v8 * *(a1 + 24);
  sub_1000419F8();
  sub_100041DC8();
  sub_1000419E8();
  *&v20[6] = v21;
  *&v20[22] = v22;
  *&v20[38] = v23;
  v10 = sub_100041DC8();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = *(a1 + 16);
  *(v13 + 24) = *a1;
  *(v13 + 40) = v14;
  *(v13 + 49) = *(a1 + 25);

  sub_1000419F8();
  v15 = *(a1 + 16);
  v17 = v16 * *(a1 + 8);
  sub_1000419F8();
  result = v15 * v18;
  *(a3 + 10) = *v20;
  *a3 = v6;
  *(a3 + 8) = 256;
  *(a3 + 26) = *&v20[16];
  *(a3 + 42) = *&v20[32];
  *(a3 + 56) = *(&v23 + 1);
  *(a3 + 64) = sub_10001E024;
  *(a3 + 72) = v13;
  *(a3 + 80) = v10;
  *(a3 + 88) = v12;
  *(a3 + 96) = v17;
  *(a3 + 104) = v15 * v18;
  return result;
}

uint64_t sub_10001DE38@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  sub_1000419F8();
  v7 = v6;
  swift_beginAccess();
  v8 = v7 * *(a1 + 16);
  sub_1000419F8();
  if (v9 / 116.0 >= v8 / 116.0)
  {
    v10 = v8 / 116.0;
  }

  else
  {
    v10 = v9 / 116.0;
  }

  v11 = *a2;
  sub_1000419F8();
  v13 = v12 * 0.5;
  sub_1000419F8();
  v15 = v14 * 0.5;
  result = sub_100041DE8();
  *a3 = v11;
  *(a3 + 8) = 0x3FF0000000000000;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  *(a3 + 32) = v10;
  *(a3 + 40) = v10;
  *(a3 + 48) = v17;
  *(a3 + 56) = v18;
  return result;
}

__n128 sub_10001DEF8@<Q0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *(v1 + 40);
  v4 = swift_allocObject();
  v5 = v4;
  v6 = 0.85;
  if (!v3)
  {
    v6 = 1.0;
  }

  *(v4 + 16) = v6;
  v7 = swift_allocObject();
  result = *v1;
  v9 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v9;
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 56) = v3;
  *(v7 + 64) = v5;
  *a1 = sub_10001DFE0;
  a1[1] = v7;
  return result;
}

uint64_t sub_10001DFA8()
{
  v1 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001DFEC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 65, 7);
}

unint64_t sub_10001E0E0()
{
  result = qword_100069048;
  if (!qword_100069048)
  {
    sub_100003830(&qword_100069038, &qword_100047AE8);
    sub_10001E16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069048);
  }

  return result;
}

unint64_t sub_10001E16C()
{
  result = qword_100069050;
  if (!qword_100069050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069050);
  }

  return result;
}

unint64_t sub_10001E1C0()
{
  result = qword_100069058;
  if (!qword_100069058)
  {
    sub_100003830(&qword_100069040, &qword_100047AF0);
    sub_10001E24C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069058);
  }

  return result;
}

unint64_t sub_10001E24C()
{
  result = qword_100069060;
  if (!qword_100069060)
  {
    sub_100003830(&qword_100069068, &qword_100047AF8);
    sub_10001E2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069060);
  }

  return result;
}

unint64_t sub_10001E2D8()
{
  result = qword_100069070;
  if (!qword_100069070)
  {
    sub_100003830(&qword_100069078, &qword_100047B00);
    sub_100003D80(&qword_100069080, &qword_100069088, &qword_100047B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069070);
  }

  return result;
}

uint64_t sub_10001E390(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003930(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001E3F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003930(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10001E45C()
{
  result = qword_1000690A0;
  if (!qword_1000690A0)
  {
    sub_100003830(&qword_100069020, &qword_100047AB0);
    sub_100003D80(&qword_1000690A8, &qword_1000690B0, &unk_100047B20);
    sub_100003D80(&qword_1000690B8, &qword_100069028, &qword_100047AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000690A0);
  }

  return result;
}

unint64_t sub_10001E54C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD00000000000003BLL;
    v5 = 0xD000000000000034;
    if (a1 != 8)
    {
      v5 = 0xD00000000000002ELL;
    }

    if (a1 != 7)
    {
      v4 = v5;
    }

    v6 = 0xD00000000000002FLL;
    if (a1 == 5)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = a1;
    v2 = 0xD000000000000026;
    if (a1 == 3)
    {
      v2 = 0xD000000000000018;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000019;
    }

    if (a1)
    {
      v1 = 0xD000000000000016;
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

uint64_t sub_10001E690(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10001E54C(*a1);
  v5 = v4;
  if (v3 == sub_10001E54C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000420D8();
  }

  return v8 & 1;
}

unint64_t sub_10001E71C()
{
  result = qword_1000690C0;
  if (!qword_1000690C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000690C0);
  }

  return result;
}

Swift::Int sub_10001E770()
{
  v1 = *v0;
  sub_100042108();
  sub_10001E54C(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10001E7D4()
{
  sub_10001E54C(*v0);
  sub_100042008();
}

Swift::Int sub_10001E828()
{
  v1 = *v0;
  sub_100042108();
  sub_10001E54C(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10001E888@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002013C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10001E8B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10001E54C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10001E954@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10002013C(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_10001E9A0()
{
  result = qword_1000690D8;
  if (!qword_1000690D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000690D8);
  }

  return result;
}

unint64_t sub_10001E9F4()
{
  result = qword_1000690E0;
  if (!qword_1000690E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000690E0);
  }

  return result;
}

uint64_t sub_10001EA48()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A268);
  sub_1000038F8(v0, qword_10006A268);
  return sub_1000417B8();
}

void (*sub_10001EAAC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_10001EB20()
{
  result = qword_1000690E8;
  if (!qword_1000690E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000690E8);
  }

  return result;
}

uint64_t sub_10001EB74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002113C();
  v5 = sub_1000200E8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10001EBE4()
{
  result = qword_1000690F0;
  if (!qword_1000690F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000690F0);
  }

  return result;
}

unint64_t sub_10001EC3C()
{
  result = qword_1000690F8;
  if (!qword_1000690F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000690F8);
  }

  return result;
}

uint64_t sub_10001ED18(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002113C();
  v7 = sub_100021190();
  v8 = sub_1000200E8();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10001EDE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100020188();
  *a1 = result;
  return result;
}

uint64_t sub_10001EE0C(uint64_t a1)
{
  v2 = sub_10001EB20();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001EE4C()
{
  result = qword_100069100;
  if (!qword_100069100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069100);
  }

  return result;
}

unint64_t sub_10001EEA4()
{
  result = qword_100069108;
  if (!qword_100069108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069108);
  }

  return result;
}

unint64_t sub_10001EEFC()
{
  result = qword_100069110;
  if (!qword_100069110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069110);
  }

  return result;
}

uint64_t sub_10001EF50()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A280);
  sub_1000038F8(v7, qword_10006A280);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_10001F0C0()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_10001F420(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_1000205AC(a1);
}

uint64_t sub_10001F4C8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_1000209E0();
}

unint64_t sub_10001F570()
{
  result = qword_100069118;
  if (!qword_100069118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069118);
  }

  return result;
}

uint64_t sub_10001F5C4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_10002048C();
}

unint64_t sub_10001F66C()
{
  result = qword_100069120;
  if (!qword_100069120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069120);
  }

  return result;
}

unint64_t sub_10001F6C4()
{
  result = qword_100069128;
  if (!qword_100069128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069128);
  }

  return result;
}

unint64_t sub_10001F71C()
{
  result = qword_100069130;
  if (!qword_100069130)
  {
    sub_100003830(&qword_100069138, qword_100047E88);
    sub_10001F6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069130);
  }

  return result;
}

uint64_t sub_10001F7A0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10001F570();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10001F854(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_100020E14();
}

unint64_t sub_10001F8FC()
{
  result = qword_100069140;
  if (!qword_100069140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069140);
  }

  return result;
}

uint64_t sub_10001F950()
{
  v0 = sub_100003930(&qword_1000691A0, &qword_100048268);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_1000691A8, &qword_100048270);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10001EEFC();
  sub_100041708();
  v9._object = 0x800000010004F270;
  v9._countAndFlagsBits = 0xD000000000000022;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_10001FB1C()
{
  result = qword_100069148;
  if (!qword_100069148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069148);
  }

  return result;
}

unint64_t sub_10001FB74()
{
  result = qword_100069150;
  if (!qword_100069150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069150);
  }

  return result;
}

unint64_t sub_10001FBCC()
{
  result = qword_100069158;
  if (!qword_100069158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069158);
  }

  return result;
}

uint64_t sub_10001FC20()
{
  sub_1000200E8();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10001FC90()
{
  result = qword_100069160;
  if (!qword_100069160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069160);
  }

  return result;
}

unint64_t sub_10001FCE8()
{
  result = qword_100069168;
  if (!qword_100069168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069168);
  }

  return result;
}

unint64_t sub_10001FD40()
{
  result = qword_100069170;
  if (!qword_100069170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069170);
  }

  return result;
}

unint64_t sub_10001FD98()
{
  result = qword_100069178;
  if (!qword_100069178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069178);
  }

  return result;
}

uint64_t sub_10001FE68(uint64_t a1)
{
  v2 = sub_10001EEFC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001FEB8()
{
  result = qword_100069190;
  if (!qword_100069190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069190);
  }

  return result;
}

uint64_t sub_10001FF14(uint64_t a1)
{
  v2 = sub_10001FD40();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10001FF98(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100020028(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000200E8()
{
  result = qword_100069198;
  if (!qword_100069198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069198);
  }

  return result;
}

uint64_t sub_10002013C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000621A8;
  v6._object = a2;
  v4 = sub_1000420C8(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100020188()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_1000691B0, &unk_1000482A0);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 10;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10001EEFC();
  return sub_1000415C8();
}

uint64_t sub_1000204A8()
{
  sub_100040184(0, 10, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_1000622B8 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100040184((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 10);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000205CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = objc_opt_self();
    v5 = &DisplayBrightnessDataModel;
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = [v4 sharedInstance];
      v9 = [v8 getActiveDevice];

      if (v9)
      {
        if (![v9 *&v5[4].ivar_base_size] && (objc_msgSend(v9, "supportsCapability:", 4033372590) & 1) != 0)
        {
          if (AFAssistantRestricted())
          {
            v10 = 1;
            if (v6 > 9)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v11 = [objc_opt_self() sharedPreferences];
            v12 = [v11 nanoAssistantEnabled];

            v10 = v12 ^ 1;
            v5 = &DisplayBrightnessDataModel;
            if (v6 > 9)
            {
              goto LABEL_24;
            }
          }

          if (((1 << v6) & 0x1A0) != 0)
          {
            if (!v10)
            {
              v15 = [v9 supportsCapability:918374353];

              if (!v15)
              {
                goto LABEL_37;
              }

              goto LABEL_32;
            }
          }

          else if (((1 << v6) & 0x240) != 0)
          {
            if (!v10 && [v9 supportsCapability:918374353])
            {
              v13 = [objc_opt_self() sharedPreferences];
              v14 = [v13 nanoLanguageCode];

              LOBYTE(v13) = AFGryphonAssetsExistForLanguage();
              if ((v13 & 1) == 0)
              {
LABEL_37:
                v5 = &DisplayBrightnessDataModel;
                goto LABEL_4;
              }

LABEL_32:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1000401B4(0, _swiftEmptyArrayStorage[2] + 1, 1);
              }

              v21 = _swiftEmptyArrayStorage[2];
              v20 = _swiftEmptyArrayStorage[3];
              if (v21 >= v20 >> 1)
              {
                sub_1000401B4((v20 > 1), v21 + 1, 1);
              }

              _swiftEmptyArrayStorage[2] = v21 + 1;
              *(&_swiftEmptyArrayStorage[4] + v21) = v6;
              goto LABEL_37;
            }
          }

          else
          {
            if (v6 != 4)
            {
LABEL_24:
              if (v6 == 1)
              {
                v18 = [objc_opt_self() sharedPreferences];
                v19 = [v18 nanoJSSupported];

                if ((v19 & 1) == 0)
                {
                  goto LABEL_37;
                }

                goto LABEL_32;
              }

              if (v6 != 2)
              {

                goto LABEL_32;
              }

              v16 = [v9 supportsCapability:1760154287];
              goto LABEL_27;
            }

            if ((v10 & 1) == 0)
            {
              v16 = [v9 supportsCapability:911267110];
LABEL_27:
              v17 = v16;

              if ((v17 & 1) == 0)
              {
                goto LABEL_37;
              }

              goto LABEL_32;
            }
          }
        }
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  v22 = _swiftEmptyArrayStorage[2];
  if (v22)
  {
    sub_100040184(0, v22, 0);
    v23 = _swiftEmptyArrayStorage[2];
    v24 = 32;
    do
    {
      v25 = *(_swiftEmptyArrayStorage + v24);
      v26 = _swiftEmptyArrayStorage[3];
      if (v23 >= v26 >> 1)
      {
        sub_100040184((v26 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      *(&_swiftEmptyArrayStorage[4] + v23) = v25;
      ++v24;
      ++v23;
      --v22;
    }

    while (v22);
  }

  v27 = *(v29 + 8);

  return v27(_swiftEmptyArrayStorage);
}

uint64_t sub_1000209FC()
{
  v0 = objc_opt_self();
  v1 = 0;
  v2 = &DisplayBrightnessDataModel;
  do
  {
    v3 = *(&off_1000622B8 + v1 + 32);
    v4 = [v0 sharedInstance];
    v5 = [v4 getActiveDevice];

    if (!v5)
    {
      goto LABEL_3;
    }

    if ([v5 *&v2[4].ivar_base_size] || (objc_msgSend(v5, "supportsCapability:", 4033372590) & 1) == 0)
    {
LABEL_2:

      goto LABEL_3;
    }

    if (AFAssistantRestricted())
    {
      v6 = 1;
      if (v3 > 9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v7 = [objc_opt_self() sharedPreferences];
      v8 = [v7 nanoAssistantEnabled];

      v6 = v8 ^ 1;
      v2 = &DisplayBrightnessDataModel;
      if (v3 > 9)
      {
        goto LABEL_23;
      }
    }

    if (((1 << v3) & 0x1A0) != 0)
    {
      if (v6)
      {
        goto LABEL_2;
      }

      v11 = [v5 supportsCapability:918374353];

      if (!v11)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    if (((1 << v3) & 0x240) != 0)
    {
      if (v6 || ![v5 supportsCapability:918374353])
      {
        goto LABEL_2;
      }

      v9 = [objc_opt_self() sharedPreferences];
      v10 = [v9 nanoLanguageCode];

      LOBYTE(v9) = AFGryphonAssetsExistForLanguage();
      if ((v9 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_31;
    }

    if (v3 == 4)
    {
      if (v6)
      {
        goto LABEL_2;
      }

      v12 = [v5 supportsCapability:911267110];
LABEL_26:
      v13 = v12;

      if (v13)
      {
        goto LABEL_31;
      }

      goto LABEL_36;
    }

LABEL_23:
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        v12 = [v5 supportsCapability:1760154287];
        goto LABEL_26;
      }

LABEL_31:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000401B4(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000401B4((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v17 + 1;
      *(&_swiftEmptyArrayStorage[4] + v17) = v3;
      goto LABEL_36;
    }

    v14 = [objc_opt_self() sharedPreferences];
    v15 = [v14 nanoJSSupported];

    if (v15)
    {
      goto LABEL_31;
    }

LABEL_36:
    v2 = &DisplayBrightnessDataModel;
LABEL_3:
    ++v1;
  }

  while (v1 != 10);
  v18 = _swiftEmptyArrayStorage[2];
  if (v18)
  {
    sub_100040184(0, v18, 0);
    v19 = _swiftEmptyArrayStorage[2];
    v20 = 32;
    do
    {
      v21 = *(_swiftEmptyArrayStorage + v20);
      v22 = _swiftEmptyArrayStorage[3];
      if (v19 >= v22 >> 1)
      {
        sub_100040184((v22 > 1), v19 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v19 + 1;
      *(&_swiftEmptyArrayStorage[4] + v19) = v21;
      ++v20;
      ++v19;
      --v18;
    }

    while (v18);
  }

  v23 = *(v25 + 8);

  return v23(_swiftEmptyArrayStorage);
}

uint64_t sub_100020E30()
{
  v0 = 0;
  v1 = &DisplayBrightnessDataModel;
  while (1)
  {
    v2 = *(&off_1000622B8 + v0 + 32);
    v3 = [objc_opt_self() sharedInstance];
    v4 = [v3 getActiveDevice];

    if (!v4)
    {
      goto LABEL_3;
    }

    if ([v4 isAltAccount] & 1) == 0 && (objc_msgSend(v4, v1[3].base_prots, 4033372590))
    {
      break;
    }

LABEL_2:

LABEL_3:
    if (++v0 == 10)
    {
      v2 = 10;
      goto LABEL_31;
    }
  }

  if (AFAssistantRestricted())
  {
    v5 = 1;
    if (v2 > 9)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v6 = [objc_opt_self() sharedPreferences];
    v7 = [v6 nanoAssistantEnabled];

    v5 = v7 ^ 1;
    v1 = &DisplayBrightnessDataModel;
    if (v2 > 9)
    {
      goto LABEL_24;
    }
  }

  if (((1 << v2) & 0x1A0) != 0)
  {
    if ((v5 & 1) == 0)
    {
      v10 = [v4 v1[3].base_prots];

      if (v10)
      {
        goto LABEL_31;
      }

      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (((1 << v2) & 0x240) != 0)
  {
    if ((v5 & 1) == 0 && [v4 v1[3].base_prots])
    {
      v8 = [objc_opt_self() sharedPreferences];
      v9 = [v8 nanoLanguageCode];

      LOBYTE(v8) = AFGryphonAssetsExistForLanguage();
      v1 = &DisplayBrightnessDataModel;
      if (v8)
      {
        goto LABEL_31;
      }

      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (v2 == 4)
  {
    if ((v5 & 1) == 0)
    {
      v11 = [v4 v1[3].base_prots];

      if (v11)
      {
        v2 = 4;
        goto LABEL_31;
      }

      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_24:
  if (v2 == 1)
  {
    v13 = [objc_opt_self() sharedPreferences];
    v14 = [v13 nanoJSSupported];

    if (v14)
    {
      v2 = 1;
      goto LABEL_31;
    }

    goto LABEL_3;
  }

  if (v2 == 2)
  {
    v12 = [v4 v1[3].base_prots];

    if (v12)
    {
      v2 = 2;
      goto LABEL_31;
    }

    goto LABEL_3;
  }

LABEL_31:
  v15 = *(v17 + 8);

  return v15(v2);
}

unint64_t sub_10002113C()
{
  result = qword_1000691B8;
  if (!qword_1000691B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000691B8);
  }

  return result;
}

unint64_t sub_100021190()
{
  result = qword_1000691C0;
  if (!qword_1000691C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000691C0);
  }

  return result;
}

uint64_t sub_100021230@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_100003930(&qword_1000691C8, &qword_100048308);
  v19 = *(v1 - 8);
  v2 = *(v19 + 64);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = sub_100003930(&qword_1000691D0, &qword_100048310);
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  v9 = sub_100003930(&qword_1000691D8, &qword_100048318);
  v10 = *(v9 - 8);
  v21 = v9;
  v22 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  swift_getKeyPath();
  sub_100019DF4();
  sub_100041EF8();
  sub_100041B08();
  v14 = sub_1000217A4();
  sub_100041B58();

  (*(v19 + 8))(v4, v1);
  sub_100041B08();
  v24 = v1;
  v25 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100041B38();

  (*(v20 + 8))(v8, v5);
  v24 = v5;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v16 = v21;
  sub_100041B68();
  return (*(v22 + 8))(v13, v16);
}

uint64_t sub_10002161C@<X0>(uint64_t a1@<X8>)
{
  sub_100041B08();
  result = sub_100041C58();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100021694@<X0>(uint64_t a1@<X8>)
{
  sub_100041B08();
  result = sub_100041C58();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10002170C@<X0>(uint64_t a1@<X8>)
{
  sub_100041B08();
  result = sub_100041C58();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_1000217A4()
{
  result = qword_1000691E0;
  if (!qword_1000691E0)
  {
    sub_100003830(&qword_1000691C8, &qword_100048308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000691E0);
  }

  return result;
}

uint64_t sub_100021808()
{
  sub_100003830(&qword_1000691D8, &qword_100048318);
  sub_100003830(&qword_1000691D0, &qword_100048310);
  sub_100003830(&qword_1000691C8, &qword_100048308);
  sub_1000217A4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000218FC()
{
  result = qword_1000691E8;
  if (!qword_1000691E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000691E8);
  }

  return result;
}

Swift::Int sub_100021950()
{
  v1 = *v0;
  sub_100042108();
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_100021A20()
{
  *v0;
  sub_100042008();
}

Swift::Int sub_100021ADC()
{
  v1 = *v0;
  sub_100042108();
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_100021BA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000238A8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100021BD8(unint64_t *a1@<X8>)
{
  v2 = 0xE000000000000000;
  v3 = 0x800000010004DCC0;
  v4 = 0xD00000000000001ALL;
  if (*v1 != 2)
  {
    v4 = 0x736547646E61482FLL;
    v3 = 0xED00007365727574;
  }

  v5 = 0x45435F4D4F4F5A23;
  if (*v1)
  {
    v2 = 0xED000044495F4C4CLL;
  }

  else
  {
    v5 = *v1;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100021CB8()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v1 = 0x736547646E61482FLL;
  }

  v2 = 0x45435F4D4F4F5A23;
  if (!*v0)
  {
    v2 = *v0;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100021D40@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_1000238A8(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100021D8C()
{
  result = qword_100069200;
  if (!qword_100069200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069200);
  }

  return result;
}

unint64_t sub_100021DE0()
{
  result = qword_100069208;
  if (!qword_100069208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069208);
  }

  return result;
}

uint64_t sub_100021E34()
{
  v0 = sub_1000417C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100041858();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100041FC8();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000417D8();
  sub_100003A7C(v9, qword_10006A298);
  sub_1000038F8(v9, qword_10006A298);
  sub_100041FB8();
  sub_100041848();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000417E8();
}

void (*sub_100022024(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_100022098()
{
  result = qword_100069210;
  if (!qword_100069210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069210);
  }

  return result;
}

uint64_t sub_1000220EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024664();
  v5 = sub_100023854();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10002215C()
{
  result = qword_100069218;
  if (!qword_100069218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069218);
  }

  return result;
}

unint64_t sub_1000221B4()
{
  result = qword_100069220;
  if (!qword_100069220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069220);
  }

  return result;
}

uint64_t sub_100022290(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100024664();
  v7 = sub_1000246B8();
  v8 = sub_100023854();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10002235C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000238F4();
  *a1 = result;
  return result;
}

uint64_t sub_100022384(uint64_t a1)
{
  v2 = sub_100022098();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000223C4()
{
  result = qword_100069228;
  if (!qword_100069228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069228);
  }

  return result;
}

unint64_t sub_10002241C()
{
  result = qword_100069230;
  if (!qword_100069230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069230);
  }

  return result;
}

unint64_t sub_100022474()
{
  result = qword_100069238;
  if (!qword_100069238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069238);
  }

  return result;
}

uint64_t sub_1000224C8()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000417C8();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100041858();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100041FC8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000417D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100041768();
  sub_100003A7C(v15, qword_10006A2B0);
  sub_1000038F8(v15, qword_10006A2B0);
  sub_100041FB8();
  sub_100041848();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000417E8();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100041758();
}

uint64_t sub_1000227B0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v22 - v3;
  v5 = sub_100003930(&qword_100068608, &qword_100042F30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v23 = &v22 - v7;
  v8 = sub_1000417C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100041858();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100041FC8();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = sub_1000417D8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100041FB8();
  sub_100041848();
  (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_1000417E8();
  (*(v18 + 56))(v23, 1, 1, v17);
  sub_100041658();
  v20 = sub_100041668();
  (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
  return sub_100041678();
}

uint64_t sub_100022B8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_100023DAC(a1);
}

uint64_t sub_100022C34(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_100024010();
}

unint64_t sub_100022CDC()
{
  result = qword_100069240;
  if (!qword_100069240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069240);
  }

  return result;
}

uint64_t sub_100022D30(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_100023BF8();
}

unint64_t sub_100022DD8()
{
  result = qword_100069248;
  if (!qword_100069248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069248);
  }

  return result;
}

unint64_t sub_100022E30()
{
  result = qword_100069250;
  if (!qword_100069250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069250);
  }

  return result;
}

unint64_t sub_100022E88()
{
  result = qword_100069258;
  if (!qword_100069258)
  {
    sub_100003830(&qword_100069260, qword_1000486A8);
    sub_100022E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069258);
  }

  return result;
}

uint64_t sub_100022F0C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100022CDC();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100022FC0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_10002440C();
}

unint64_t sub_100023068()
{
  result = qword_100069268;
  if (!qword_100069268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069268);
  }

  return result;
}

uint64_t sub_1000230BC()
{
  v0 = sub_100003930(&qword_1000692C8, &qword_100048A88);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_1000692D0, &qword_100048A90);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100022474();
  sub_100041708();
  v9._object = 0x800000010004F320;
  v9._countAndFlagsBits = 0xD000000000000029;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_100023288()
{
  result = qword_100069270;
  if (!qword_100069270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069270);
  }

  return result;
}

unint64_t sub_1000232E0()
{
  result = qword_100069278;
  if (!qword_100069278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069278);
  }

  return result;
}

unint64_t sub_100023338()
{
  result = qword_100069280;
  if (!qword_100069280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069280);
  }

  return result;
}

uint64_t sub_10002338C()
{
  sub_100023854();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000233FC()
{
  result = qword_100069288;
  if (!qword_100069288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069288);
  }

  return result;
}

unint64_t sub_100023454()
{
  result = qword_100069290;
  if (!qword_100069290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069290);
  }

  return result;
}

unint64_t sub_1000234AC()
{
  result = qword_100069298;
  if (!qword_100069298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069298);
  }

  return result;
}

unint64_t sub_100023504()
{
  result = qword_1000692A0;
  if (!qword_1000692A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000692A0);
  }

  return result;
}

uint64_t sub_1000235D4(uint64_t a1)
{
  v2 = sub_100022474();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100023624()
{
  result = qword_1000692B8;
  if (!qword_1000692B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000692B8);
  }

  return result;
}

uint64_t sub_100023680(uint64_t a1)
{
  v2 = sub_1000234AC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100023704(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_100023794(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100023854()
{
  result = qword_1000692C0;
  if (!qword_1000692C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000692C0);
  }

  return result;
}

uint64_t sub_1000238A8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000622E8;
  v6._object = a2;
  v4 = sub_1000420C8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000238F4()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_1000692D8, &unk_100048AC0);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 4;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100022474();
  return sub_1000415C8();
}

uint64_t sub_100023C14()
{
  sub_1000401E4(0, 4, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1000401E4((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_1000401E4((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  v6 = v2 + 3;
  if (v3 < (v2 + 3))
  {
    sub_1000401E4((v1 > 1), v2 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 2;
  v7 = _swiftEmptyArrayStorage[3];
  if ((v2 + 4) > (v7 >> 1))
  {
    sub_1000401E4((v7 > 1), v2 + 4, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 4;
  *(&_swiftEmptyArrayStorage[4] + v6) = 3;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100023DCC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = objc_opt_self();
    do
    {
      v8 = *v3++;
      v7 = v8;
      v9 = [v4 sharedInstance];
      v10 = [v9 getActiveDevice];

      if (v10)
      {
        if (v7 != 3)
        {

LABEL_12:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100040214(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v6 = _swiftEmptyArrayStorage[2];
          v5 = _swiftEmptyArrayStorage[3];
          if (v6 >= v5 >> 1)
          {
            sub_100040214((v5 > 1), v6 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v6 + 1;
          *(&_swiftEmptyArrayStorage[4] + v6) = v7;
          goto LABEL_6;
        }

        v11 = [objc_opt_self() isZoomGreyFeatureOn];

        if (v11)
        {
          goto LABEL_12;
        }
      }

LABEL_6:
      --v2;
    }

    while (v2);
  }

  v12 = _swiftEmptyArrayStorage[2];
  if (v12)
  {
    sub_1000401E4(0, v12, 0);
    v13 = _swiftEmptyArrayStorage[2];
    v14 = 32;
    do
    {
      v15 = *(_swiftEmptyArrayStorage + v14);
      v16 = _swiftEmptyArrayStorage[3];
      if (v13 >= v16 >> 1)
      {
        sub_1000401E4((v16 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      *(&_swiftEmptyArrayStorage[4] + v13) = v15;
      ++v14;
      ++v13;
      --v12;
    }

    while (v12);
  }

  v17 = *(v19 + 8);

  return v17(_swiftEmptyArrayStorage);
}

uint64_t sub_10002402C()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 getActiveDevice];

  if (v3)
  {

    sub_100040214(0, 1, 1);
    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    if (v5 >= v4 >> 1)
    {
      sub_100040214((v4 > 1), v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v5 + 1;
    *(&_swiftEmptyArrayStorage[4] + v5) = 0;
  }

  v6 = [v1 sharedInstance];
  v7 = [v6 getActiveDevice];

  if (v7)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100040214(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v9 = _swiftEmptyArrayStorage[2];
    v8 = _swiftEmptyArrayStorage[3];
    if (v9 >= v8 >> 1)
    {
      sub_100040214((v8 > 1), v9 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v9 + 1;
    *(&_swiftEmptyArrayStorage[4] + v9) = 1;
  }

  v10 = [v1 sharedInstance];
  v11 = [v10 getActiveDevice];

  if (v11)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100040214(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      sub_100040214((v12 > 1), v13 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v13 + 1;
    *(&_swiftEmptyArrayStorage[4] + v13) = 2;
  }

  v14 = [v1 sharedInstance];
  v15 = [v14 getActiveDevice];

  if (v15)
  {
    v16 = [objc_opt_self() isZoomGreyFeatureOn];

    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100040214(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_100040214((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      *(&_swiftEmptyArrayStorage[4] + v18) = 3;
    }
  }

  v19 = _swiftEmptyArrayStorage[2];
  if (v19)
  {
    sub_1000401E4(0, v19, 0);
    v20 = _swiftEmptyArrayStorage[2];
    v21 = 32;
    do
    {
      v22 = *(_swiftEmptyArrayStorage + v21);
      v23 = _swiftEmptyArrayStorage[3];
      if (v20 >= v23 >> 1)
      {
        sub_1000401E4((v23 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      *(&_swiftEmptyArrayStorage[4] + v20) = v22;
      ++v21;
      ++v20;
      --v19;
    }

    while (v19);
  }

  v24 = *(v0 + 8);

  return v24(_swiftEmptyArrayStorage);
}

uint64_t sub_100024428()
{
  v1 = 0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 getActiveDevice];

  if (v3)
  {
    goto LABEL_7;
  }

  v1 = 1;
  v4 = [objc_opt_self() sharedInstance];
  v3 = [v4 getActiveDevice];

  if (v3 || (v1 = 2, v5 = [objc_opt_self() sharedInstance], v3 = objc_msgSend(v5, "getActiveDevice"), v5, v3))
  {
LABEL_7:
  }

  else
  {
    v6 = [objc_opt_self() sharedInstance];
    v7 = [v6 getActiveDevice];

    if (v7 && (v8 = [objc_opt_self() isZoomGreyFeatureOn], v7, (v8 & 1) != 0))
    {
      v1 = 3;
    }

    else
    {
      v1 = 4;
    }
  }

  v9 = *(v0 + 8);

  return v9(v1);
}

unint64_t sub_100024664()
{
  result = qword_1000692E0;
  if (!qword_1000692E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000692E0);
  }

  return result;
}

unint64_t sub_1000246B8()
{
  result = qword_1000692E8;
  if (!qword_1000692E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000692E8);
  }

  return result;
}

__n128 sub_10002472C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100024738(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100024780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000247EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = sub_100041DC8();
  v16 = v11;
  v17 = v10;
  sub_100024B68(a1, a2, &v60);
  v36 = v60;
  v37 = v61;
  v38 = v62;
  v39 = v63;
  v40[0] = v60;
  v40[1] = v61;
  v40[2] = v62;
  v41 = v63;
  sub_10001E390(&v36, v52, &qword_1000692F8, &qword_100048B78);
  sub_10001E3F8(v40, &qword_1000692F8, &qword_100048B78);
  v32 = v36;
  v33 = v37;
  v34 = v38;
  v35 = v39;
  sub_100041DC8();
  sub_1000419E8();
  v12 = sub_100041DC8();
  v14 = v13;
  sub_100024B68(a3, a4, &v60);
  v42 = v60;
  v43 = v61;
  v44 = v62;
  v45 = v63;
  v46[0] = v60;
  v46[1] = v61;
  v46[2] = v62;
  v47 = v63;
  sub_10001E390(&v42, v52, &qword_1000692F8, &qword_100048B78);
  sub_10001E3F8(v46, &qword_1000692F8, &qword_100048B78);
  v25 = v42;
  v26 = v43;
  v27 = v44;
  v28 = v45;
  sub_100041DC8();
  sub_1000419E8();
  *v49 = v35;
  *&v49[40] = v31;
  *&v49[24] = v30;
  *&v49[8] = v29;
  *v21 = *(&v31 + 1);
  *v51 = v28;
  *&v48[0] = v17;
  *(&v48[0] + 1) = v16;
  v48[2] = v33;
  v48[3] = v34;
  v48[1] = v32;
  v19 = *&v49[16];
  v20 = *&v49[32];
  v18 = *v49;
  *&v50[0] = v12;
  *(&v50[0] + 1) = v14;
  v50[3] = v27;
  v50[2] = v26;
  v50[1] = v25;
  *&v51[40] = v24;
  *&v51[8] = v22;
  *&v51[24] = v23;
  *&v21[56] = v27;
  *&v21[40] = v26;
  *&v21[24] = v25;
  *&v21[8] = v50[0];
  *&v21[104] = *&v51[32];
  *&v21[120] = *(&v24 + 1);
  *&v21[88] = *&v51[16];
  *&v21[72] = *v51;
  *a5 = v48[0];
  a5[1] = v32;
  a5[4] = v18;
  a5[5] = v19;
  a5[2] = v33;
  a5[3] = v34;
  a5[8] = *&v21[16];
  a5[9] = *&v21[32];
  a5[6] = v20;
  a5[7] = *v21;
  a5[13] = *&v21[96];
  a5[14] = *&v21[112];
  a5[11] = *&v21[64];
  a5[12] = *&v21[80];
  a5[10] = *&v21[48];
  v53 = v25;
  v54 = v26;
  v52[0] = v12;
  v52[1] = v14;
  v55 = v27;
  v56 = v28;
  v57 = v22;
  v58 = v23;
  v59 = v24;
  sub_10001E390(v48, &v60, &qword_100069300, &qword_100048B80);
  sub_10001E390(v50, &v60, &qword_100069300, &qword_100048B80);
  sub_10001E3F8(v52, &qword_100069300, &qword_100048B80);
  *&v60 = v17;
  *(&v60 + 1) = v16;
  v61 = v32;
  v62 = v33;
  v63 = v34;
  v64 = v35;
  v65 = v29;
  v66 = v30;
  v67 = v31;
  return sub_10001E3F8(&v60, &qword_100069300, &qword_100048B80);
}

uint64_t sub_100024B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003930(&qword_100069308, &qword_100048B88);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v27 - v8;
  v28 = sub_100041D18();
  v29 = a1;
  v30 = a2;
  sub_100024FB4();

  v10 = sub_100041C68();
  v12 = v11;
  v14 = v13;
  v15 = sub_100041BE8();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_100041C08();
  sub_10001E3F8(v9, &qword_100069308, &qword_100048B88);
  v16 = sub_100041C48();
  v18 = v17;
  LOBYTE(v9) = v19;

  sub_100003E0C(v10, v12, v14 & 1);

  sub_100041BF8();
  v20 = sub_100041C28();
  v22 = v21;
  LOBYTE(v12) = v23;
  v25 = v24;
  sub_100003E0C(v16, v18, v9 & 1);

  LOBYTE(v29) = v12 & 1;
  *a3 = v28;
  *(a3 + 8) = 256;
  *(a3 + 16) = v20;
  *(a3 + 24) = v22;
  *(a3 + 32) = v12 & 1;
  *(a3 + 40) = v25;
  *(a3 + 48) = 0x3FE0000000000000;

  sub_100003E1C(v20, v22, v12 & 1);

  sub_100003E0C(v20, v22, v12 & 1);
}

double sub_100024DAC@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = sub_100041AF8();
  v34 = 1;
  sub_1000247EC(v3, v4, v5, v6, &v18);
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v50[12] = v30;
  v50[13] = v31;
  v50[14] = v32;
  v50[8] = v26;
  v50[9] = v27;
  v50[11] = v29;
  v50[10] = v28;
  v50[4] = v22;
  v50[5] = v23;
  v50[7] = v25;
  v50[6] = v24;
  v50[0] = v18;
  v50[1] = v19;
  v50[2] = v20;
  v50[3] = v21;
  sub_10001E390(&v35, &v17, &qword_1000692F0, &qword_100048B70);
  sub_10001E3F8(v50, &qword_1000692F0, &qword_100048B70);
  *&v33[183] = v46;
  *&v33[199] = v47;
  *&v33[215] = v48;
  *&v33[231] = v49;
  *&v33[119] = v42;
  *&v33[135] = v43;
  *&v33[151] = v44;
  *&v33[167] = v45;
  *&v33[55] = v38;
  *&v33[71] = v39;
  *&v33[87] = v40;
  *&v33[103] = v41;
  *&v33[7] = v35;
  *&v33[23] = v36;
  *&v33[39] = v37;
  v8 = *&v33[208];
  *(a1 + 209) = *&v33[192];
  *(a1 + 225) = v8;
  *(a1 + 241) = *&v33[224];
  v9 = *&v33[144];
  *(a1 + 145) = *&v33[128];
  *(a1 + 161) = v9;
  v10 = *&v33[176];
  *(a1 + 177) = *&v33[160];
  *(a1 + 193) = v10;
  v11 = *&v33[80];
  *(a1 + 81) = *&v33[64];
  *(a1 + 97) = v11;
  v12 = *&v33[112];
  *(a1 + 113) = *&v33[96];
  *(a1 + 129) = v12;
  v13 = *&v33[16];
  *(a1 + 17) = *v33;
  *(a1 + 33) = v13;
  result = *&v33[32];
  v15 = *&v33[48];
  *(a1 + 49) = *&v33[32];
  v16 = v34;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v16;
  *(a1 + 256) = *&v33[239];
  *(a1 + 65) = v15;
  return result;
}

unint64_t sub_100024FB4()
{
  result = qword_100069310;
  if (!qword_100069310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069310);
  }

  return result;
}

unint64_t sub_10002500C()
{
  result = qword_100069318;
  if (!qword_100069318)
  {
    sub_100003830(&qword_100069320, &unk_100048B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069318);
  }

  return result;
}

Swift::Int sub_100025070()
{
  sub_100042108();
  sub_100042118(0);
  return sub_100042128();
}

Swift::Int sub_1000250DC()
{
  sub_100042108();
  sub_100042118(0);
  return sub_100042128();
}

unint64_t sub_100025144(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000014;
    if (a1 != 8)
    {
      v4 = 0xD000000000000023;
    }

    if (a1 == 7)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = v4;
    }

    v6 = 0xD000000000000023;
    if (a1 != 5)
    {
      v6 = 0xD000000000000026;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = a1;
    v2 = 0xD00000000000001CLL;
    if (a1 != 3)
    {
      v2 = 0xD00000000000001BLL;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000024;
    }

    if (a1)
    {
      v1 = 0xD00000000000001DLL;
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

uint64_t sub_100025284(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100025144(*a1);
  v5 = v4;
  if (v3 == sub_100025144(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000420D8();
  }

  return v8 & 1;
}

unint64_t sub_100025310()
{
  result = qword_100069328;
  if (!qword_100069328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069328);
  }

  return result;
}

Swift::Int sub_100025364()
{
  v1 = *v0;
  sub_100042108();
  sub_100025144(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_1000253C8()
{
  sub_100025144(*v0);
  sub_100042008();
}

Swift::Int sub_10002541C()
{
  v1 = *v0;
  sub_100042108();
  sub_100025144(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10002547C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100026BA4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000254AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100025144(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100025548@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100026BA4(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100025594()
{
  result = qword_100069340;
  if (!qword_100069340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069340);
  }

  return result;
}

unint64_t sub_1000255E8()
{
  result = qword_100069348;
  if (!qword_100069348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069348);
  }

  return result;
}

uint64_t sub_10002563C()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A2C8);
  sub_1000038F8(v0, qword_10006A2C8);
  return sub_1000417B8();
}

void (*sub_1000256A0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_100025714()
{
  result = qword_100069350;
  if (!qword_100069350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069350);
  }

  return result;
}

uint64_t sub_100025768(uint64_t a1, uint64_t a2)
{
  v4 = sub_100028394();
  v5 = sub_100026B50();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000257D8()
{
  result = qword_100069358;
  if (!qword_100069358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069358);
  }

  return result;
}

unint64_t sub_100025830()
{
  result = qword_100069360;
  if (!qword_100069360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069360);
  }

  return result;
}

uint64_t sub_10002590C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100028394();
  v7 = sub_1000283E8();
  v8 = sub_100026B50();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000259D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100026BF0();
  *a1 = result;
  return result;
}

uint64_t sub_100025A00(uint64_t a1)
{
  v2 = sub_100025714();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100025A40()
{
  result = qword_100069368;
  if (!qword_100069368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069368);
  }

  return result;
}

unint64_t sub_100025A98()
{
  result = qword_100069370;
  if (!qword_100069370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069370);
  }

  return result;
}

unint64_t sub_100025AF0()
{
  result = qword_100069378;
  if (!qword_100069378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069378);
  }

  return result;
}

uint64_t sub_100025B44()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A2E0);
  sub_1000038F8(v7, qword_10006A2E0);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_100025CBC()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_100025FD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_10002700C(a1);
}

uint64_t sub_100026078(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_100027690();
}

unint64_t sub_100026120()
{
  result = qword_100069380;
  if (!qword_100069380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069380);
  }

  return result;
}

uint64_t sub_100026174(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_100026EEC();
}

unint64_t sub_10002621C()
{
  result = qword_100069388;
  if (!qword_100069388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069388);
  }

  return result;
}

unint64_t sub_100026274()
{
  result = qword_100069390;
  if (!qword_100069390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069390);
  }

  return result;
}

unint64_t sub_1000262CC()
{
  result = qword_100069398;
  if (!qword_100069398)
  {
    sub_100003830(&qword_1000693A0, qword_100048EF8);
    sub_100026274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069398);
  }

  return result;
}

uint64_t sub_100026350(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100026120();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100026404(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_100027CD4();
}

unint64_t sub_1000264AC()
{
  result = qword_1000693A8;
  if (!qword_1000693A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693A8);
  }

  return result;
}

uint64_t sub_100026500()
{
  v0 = sub_100003930(&qword_100069408, &qword_1000492E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100069410, &qword_1000492F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100025AF0();
  sub_100041708();
  v9._object = 0x800000010004F480;
  v9._countAndFlagsBits = 0xD000000000000016;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_1000266CC()
{
  result = qword_1000693B0;
  if (!qword_1000693B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693B0);
  }

  return result;
}

unint64_t sub_100026724()
{
  result = qword_1000693B8;
  if (!qword_1000693B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693B8);
  }

  return result;
}

unint64_t sub_10002677C()
{
  result = qword_1000693C0;
  if (!qword_1000693C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693C0);
  }

  return result;
}

uint64_t sub_1000267D0()
{
  sub_100026B50();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100026840()
{
  result = qword_1000693C8;
  if (!qword_1000693C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693C8);
  }

  return result;
}

unint64_t sub_100026898()
{
  result = qword_1000693D0;
  if (!qword_1000693D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693D0);
  }

  return result;
}

unint64_t sub_1000268F0()
{
  result = qword_1000693D8;
  if (!qword_1000693D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693D8);
  }

  return result;
}

unint64_t sub_100026948()
{
  result = qword_1000693E0;
  if (!qword_1000693E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693E0);
  }

  return result;
}

uint64_t sub_100026A18(uint64_t a1)
{
  v2 = sub_100025AF0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100026A68()
{
  result = qword_1000693F8;
  if (!qword_1000693F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000693F8);
  }

  return result;
}

uint64_t sub_100026AC4(uint64_t a1)
{
  v2 = sub_1000268F0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100026B50()
{
  result = qword_100069400;
  if (!qword_100069400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069400);
  }

  return result;
}

uint64_t sub_100026BA4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000623B8;
  v6._object = a2;
  v4 = sub_1000420C8(v3, v6);

  if (v4 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100026BF0()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100069428, &unk_100049320);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 10;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100025AF0();
  return sub_1000415C8();
}

uint64_t sub_100026F08()
{
  sub_100040244(0, 10, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_1000624C8 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100040244((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 10);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10002700C(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_100041938();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000270E4, 0, 0);
}

uint64_t sub_1000270E4()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v4 = (v1 + 32);
    v5 = objc_opt_self();
    v41 = HKFeatureIdentifierRespiratoryRateMeasurements;
    v42 = (v3 + 8);
    v40 = HKFeatureIdentifierOxygenSaturationRecording;
    v39 = HKFeatureIdentifierSleepingWristTemperatureMeasurements;
    v6 = &DisplayBrightnessDataModel;
    v7 = &DisplayBrightnessDataModel;
    while (1)
    {
      v9 = *v4++;
      v8 = v9;
      v10 = [v5 v6[3].name];
      v11 = [v10 v7[3].base_meths];

      if (!v11)
      {
        goto LABEL_4;
      }

      if ([v11 isAltAccount])
      {
LABEL_3:

        goto LABEL_4;
      }

      if (v8 <= 4)
      {
        break;
      }

      if (v8 <= 6)
      {
        if (v8 == 5)
        {
          v12 = [v11 supportsCapability:961923716];
        }

        else
        {
          v12 = [v11 supportsCapability:4123187920];
        }

LABEL_22:
        v18 = v12;

        if (v18)
        {
          goto LABEL_29;
        }

        goto LABEL_4;
      }

      if (v8 != 7)
      {
        if (v8 != 8)
        {
LABEL_20:

LABEL_29:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100040274(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v25 = _swiftEmptyArrayStorage[2];
          v24 = _swiftEmptyArrayStorage[3];
          if (v25 >= v24 >> 1)
          {
            sub_100040274((v24 > 1), v25 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v25 + 1;
          *(&_swiftEmptyArrayStorage[4] + v25) = v8;
          v7 = &DisplayBrightnessDataModel;
          goto LABEL_4;
        }

        v12 = [v11 supportsCapability:3204985122];
        goto LABEL_22;
      }

      if (([v11 supportsCapability:19502965] & 1) == 0)
      {
        goto LABEL_3;
      }

      v0[5] = &type metadata for PrivacyFeatureFlags;
      v0[6] = sub_1000282F4();
      v19 = sub_100041868();

      sub_1000039EC(v0 + 2);
      if ((v19 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_4:
      if (!--v2)
      {
        goto LABEL_34;
      }
    }

    switch(v8)
    {
      case 2:
        v16 = v0[11];
        v43 = [objc_allocWithZone(HKHealthStore) init];
        v14 = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureIdentifier:v40 healthStore:v43];
        sub_100028348();
        sub_100041958();
        v15 = v0[11];
        break;
      case 3:
        v20 = v0[12];
        v44 = [objc_allocWithZone(HKHealthStore) init];
        v21 = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureIdentifier:v39 healthStore:v44];
        sub_100028348();
        sub_100041958();
        v22 = v0[12];
        v38 = v0[8];
        v23 = sub_100041948();
        v36 = [v23 areAllRequirementsSatisfied];

        (*v42)(v22, v38);
LABEL_28:

        v6 = &DisplayBrightnessDataModel;
        v7 = &DisplayBrightnessDataModel;
        if (v36)
        {
          goto LABEL_29;
        }

        goto LABEL_4;
      case 4:
        v13 = v0[10];
        v43 = [objc_allocWithZone(HKHealthStore) init];
        v14 = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureIdentifier:v41 healthStore:v43];
        sub_100028348();
        sub_100041958();
        v15 = v0[10];
        break;
      default:
        goto LABEL_20;
    }

    v37 = v0[8];
    v17 = sub_100041948();
    v36 = [v17 areAllRequirementsSatisfied];

    (*v42)(v15, v37);
    goto LABEL_28;
  }

LABEL_34:
  v26 = _swiftEmptyArrayStorage[2];
  if (v26)
  {
    sub_100040244(0, v26, 0);
    v27 = _swiftEmptyArrayStorage[2];
    v28 = 32;
    do
    {
      v29 = *(_swiftEmptyArrayStorage + v28);
      v30 = _swiftEmptyArrayStorage[3];
      if (v27 >= v30 >> 1)
      {
        sub_100040244((v30 > 1), v27 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v27 + 1;
      *(&_swiftEmptyArrayStorage[4] + v27) = v29;
      ++v28;
      ++v27;
      --v26;
    }

    while (v26);
  }

  v32 = v0[11];
  v31 = v0[12];
  v33 = v0[10];

  v34 = v0[1];

  return v34(_swiftEmptyArrayStorage);
}

uint64_t sub_100027690()
{
  v1 = sub_100041938();
  v0[7] = v1;
  v2 = *(v1 - 8);
  v0[8] = v2;
  v3 = *(v2 + 64) + 15;
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();

  return _swift_task_switch(sub_100027764, 0, 0);
}

uint64_t sub_100027764()
{
  v1 = v0[8];
  v2 = objc_opt_self();
  v3 = 0;
  v36 = HKFeatureIdentifierRespiratoryRateMeasurements;
  v37 = (v1 + 8);
  v35 = HKFeatureIdentifierOxygenSaturationRecording;
  v34 = HKFeatureIdentifierSleepingWristTemperatureMeasurements;
  v4 = &DisplayBrightnessDataModel;
  v5 = &DisplayBrightnessDataModel;
  do
  {
    v6 = *(&off_1000624C8 + v3 + 32);
    v7 = [v2 v4[3].name];
    v8 = [v7 v5[3].base_meths];

    if (!v8)
    {
      goto LABEL_3;
    }

    if ([v8 isAltAccount])
    {
      goto LABEL_2;
    }

    if (v6 <= 4)
    {
      switch(v6)
      {
        case 2:
          v14 = v0[10];
          v11 = [objc_allocWithZone(HKHealthStore) init];
          v12 = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureIdentifier:v35 healthStore:v11];
          sub_100028348();
          sub_100041958();
          v13 = v0[10];
          break;
        case 3:
          v17 = v0[11];
          v11 = [objc_allocWithZone(HKHealthStore) init];
          v12 = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureIdentifier:v34 healthStore:v11];
          sub_100028348();
          sub_100041958();
          v13 = v0[11];
          break;
        case 4:
          v10 = v0[9];
          v11 = [objc_allocWithZone(HKHealthStore) init];
          v12 = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureIdentifier:v36 healthStore:v11];
          sub_100028348();
          sub_100041958();
          v13 = v0[9];
          break;
        default:
          goto LABEL_18;
      }

      v33 = v0[7];
      v18 = v0;
      v19 = sub_100041948();
      v32 = [v19 areAllRequirementsSatisfied];

      v0 = v18;
      (*v37)(v13, v33);

      v4 = &DisplayBrightnessDataModel;
      v5 = &DisplayBrightnessDataModel;
      if ((v32 & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_27;
    }

    if (v6 <= 6)
    {
      if (v6 == 5)
      {
        v9 = [v8 supportsCapability:961923716];
      }

      else
      {
        v9 = [v8 supportsCapability:4123187920];
      }

LABEL_20:
      v15 = v9;

      if ((v15 & 1) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_27;
    }

    if (v6 != 7)
    {
      if (v6 == 8)
      {
        v9 = [v8 supportsCapability:3204985122];
        goto LABEL_20;
      }

LABEL_18:

LABEL_27:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100040274(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (v21 >= v20 >> 1)
      {
        sub_100040274((v20 > 1), v21 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v21 + 1;
      *(&_swiftEmptyArrayStorage[4] + v21) = v6;
      v5 = &DisplayBrightnessDataModel;
      goto LABEL_3;
    }

    if (([v8 supportsCapability:19502965] & 1) == 0)
    {
LABEL_2:

      goto LABEL_3;
    }

    v0[5] = &type metadata for PrivacyFeatureFlags;
    v0[6] = sub_1000282F4();
    v16 = sub_100041868();

    sub_1000039EC(v0 + 2);
    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_3:
    ++v3;
  }

  while (v3 != 10);
  v22 = _swiftEmptyArrayStorage[2];
  if (v22)
  {
    sub_100040244(0, v22, 0);
    v23 = _swiftEmptyArrayStorage[2];
    v24 = 32;
    do
    {
      v25 = *(_swiftEmptyArrayStorage + v24);
      v26 = _swiftEmptyArrayStorage[3];
      if (v23 >= v26 >> 1)
      {
        sub_100040244((v26 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      *(&_swiftEmptyArrayStorage[4] + v23) = v25;
      ++v24;
      ++v23;
      --v22;
    }

    while (v22);
  }

  v28 = v0[10];
  v27 = v0[11];
  v29 = v0[9];

  v30 = v0[1];

  return v30(_swiftEmptyArrayStorage);
}

uint64_t sub_100027CD4()
{
  v1 = sub_100041938();
  v0[7] = v1;
  v2 = *(v1 - 8);
  v0[8] = v2;
  v3 = *(v2 + 64) + 15;
  v0[9] = swift_task_alloc();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();

  return _swift_task_switch(sub_100027DA8, 0, 0);
}

uint64_t sub_100027DA8()
{
  v1 = 0;
  v41 = HKFeatureIdentifierRespiratoryRateMeasurements;
  v42 = (v0[8] + 8);
  v39 = HKFeatureIdentifierSleepingWristTemperatureMeasurements;
  v40 = HKFeatureIdentifierOxygenSaturationRecording;
  v2 = &off_1000624C8;
  while (1)
  {
    v6 = *(v2 + v1 + 32);
    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 getActiveDevice];

    if (!v8)
    {
      goto LABEL_4;
    }

    if ([v8 isAltAccount])
    {
      goto LABEL_3;
    }

    if (v6 > 4)
    {
      break;
    }

    switch(v6)
    {
      case 2:
        v19 = v0[10];
        v20 = [objc_allocWithZone(HKHealthStore) init];
        v21 = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureIdentifier:v40 healthStore:v20];
        sub_100028348();
        sub_100041958();
        v22 = v0[10];
        v37 = v0[7];
        v23 = v2;
        v24 = sub_100041948();
        v34 = [v24 areAllRequirementsSatisfied];

        v2 = v23;
        (*v42)(v22, v37);

        if (v34)
        {
          v6 = 2;
          goto LABEL_31;
        }

        break;
      case 3:
        v3 = v0[11];
        v4 = [objc_allocWithZone(HKHealthStore) init];
        v5 = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureIdentifier:v39 healthStore:v4];
        sub_100028348();
        sub_100041958();
        v25 = v0[11];
        v38 = v0[7];
        v26 = v2;
        v27 = sub_100041948();
        v35 = [v27 areAllRequirementsSatisfied];

        v2 = v26;
        (*v42)(v25, v38);

        if (v35)
        {
          v6 = 3;
          goto LABEL_31;
        }

        break;
      case 4:
        v10 = v0[9];
        v11 = [objc_allocWithZone(HKHealthStore) init];
        v12 = [objc_allocWithZone(HKFeatureStatusManager) initWithFeatureIdentifier:v41 healthStore:v11];
        sub_100028348();
        sub_100041958();
        v13 = v0[9];
        v36 = v0[7];
        v14 = v2;
        v15 = sub_100041948();
        v33 = [v15 areAllRequirementsSatisfied];

        v2 = v14;
        (*v42)(v13, v36);

        if (v33)
        {
          v6 = 4;
          goto LABEL_31;
        }

        break;
      default:
        goto LABEL_34;
    }

LABEL_4:
    if (++v1 == 10)
    {
      v6 = 10;
      goto LABEL_31;
    }
  }

  if (v6 <= 6)
  {
    if (v6 == 5)
    {
      v17 = [v8 supportsCapability:961923716];

      if (v17)
      {
        v6 = 5;
        goto LABEL_31;
      }
    }

    else
    {
      v9 = [v8 supportsCapability:4123187920];

      if (v9)
      {
        v6 = 6;
        goto LABEL_31;
      }
    }

    goto LABEL_4;
  }

  if (v6 == 7)
  {
    if ([v8 supportsCapability:19502965])
    {
      v0[5] = &type metadata for PrivacyFeatureFlags;
      v0[6] = sub_1000282F4();
      v18 = sub_100041868();

      sub_1000039EC(v0 + 2);
      if ((v18 & 1) == 0)
      {
        v6 = 7;
        goto LABEL_31;
      }

      goto LABEL_4;
    }

LABEL_3:

    goto LABEL_4;
  }

  if (v6 == 8)
  {
    v16 = [v8 supportsCapability:3204985122];

    if (v16)
    {
      v6 = 8;
      goto LABEL_31;
    }

    goto LABEL_4;
  }

LABEL_34:

LABEL_31:
  v29 = v0[10];
  v28 = v0[11];
  v30 = v0[9];

  v31 = v0[1];

  return v31(v6);
}

unint64_t sub_1000282F4()
{
  result = qword_100069418;
  if (!qword_100069418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069418);
  }

  return result;
}

unint64_t sub_100028348()
{
  result = qword_100069420;
  if (!qword_100069420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100069420);
  }

  return result;
}

unint64_t sub_100028394()
{
  result = qword_100069430;
  if (!qword_100069430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069430);
  }

  return result;
}

unint64_t sub_1000283E8()
{
  result = qword_100069438;
  if (!qword_100069438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069438);
  }

  return result;
}

unint64_t sub_100028450()
{
  result = qword_100069440;
  if (!qword_100069440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069440);
  }

  return result;
}

uint64_t sub_1000284BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = a1;
  v4 = 0xE000000000000000;
  v5 = 0x800000010004DAA0;
  v6 = 0xD000000000000021;
  if (a1 != 4)
  {
    v6 = 0xD000000000000042;
    v5 = 0x800000010004DAD0;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000018;
    v7 = 0x800000010004DA80;
  }

  else
  {
    v7 = v5;
  }

  v8 = 0x800000010004DA40;
  v9 = 0xD00000000000001BLL;
  if (v2 != 1)
  {
    v9 = 0xD00000000000001FLL;
    v8 = 0x800000010004DA60;
  }

  if (v2)
  {
    v3 = v9;
    v4 = v8;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x800000010004DA80;
      if (v10 != 0xD000000000000018)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x800000010004DAA0;
      if (v10 != 0xD000000000000021)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x800000010004DAD0;
      if (v10 != 0xD000000000000042)
      {
LABEL_34:
        v13 = sub_1000420D8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0x800000010004DA40;
      if (v10 != 0xD00000000000001BLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x800000010004DA60;
      if (v10 != 0xD00000000000001FLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE000000000000000;
    if (v10 != a2)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_100028660(unint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      a1 = 0xD00000000000001BLL;
    }

    else
    {
      a1 = a1;
    }

    if (v2)
    {
      v3 = 0x800000010004D690;
    }

    else
    {
      v3 = 0xE000000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x800000010004D6B0;
    a1 = 0xD00000000000001DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0x800000010004D6D0;
    a1 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0x800000010004D6F0;
    a1 = 0xD000000000000018;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD00000000000001BLL;
    }

    else
    {
      v6 = a2;
    }

    if (a2)
    {
      v5 = 0x800000010004D690;
    }

    else
    {
      v5 = 0xE000000000000000;
    }

    if (a1 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x800000010004D6B0;
    if (a1 != 0xD00000000000001DLL)
    {
LABEL_34:
      v7 = sub_1000420D8();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v4 = 0xD00000000000001CLL;
    }

    else
    {
      v4 = 0xD000000000000018;
    }

    if (a2 == 3)
    {
      v5 = 0x800000010004D6D0;
    }

    else
    {
      v5 = 0x800000010004D6F0;
    }

    if (a1 != v4)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1000287F4(unint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0x800000010004DE60;
    v9 = 0xD000000000000013;
    if (a1 != 1)
    {
      v9 = 0xD000000000000028;
      v8 = 0x800000010004DE80;
    }

    if (a1)
    {
      a1 = v9;
    }

    else
    {
      a1 = a1;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE000000000000000;
    }
  }

  else
  {
    v3 = 0x800000010004DF10;
    v4 = 0xD000000000000011;
    if (a1 == 5)
    {
      v4 = 0xD000000000000028;
    }

    else
    {
      v3 = 0x800000010004DF40;
    }

    v5 = 0x800000010004DEB0;
    v6 = 0xD000000000000025;
    if (a1 != 3)
    {
      v6 = 0xD000000000000027;
      v5 = 0x800000010004DEE0;
    }

    if (a1 <= 4u)
    {
      a1 = v6;
    }

    else
    {
      a1 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v10 = 0xE000000000000000;
      if (a1 != a2)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    if (a2 == 1)
    {
      v10 = 0x800000010004DE60;
      if (a1 != 0xD000000000000013)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v11 = "&path=DOUBLE_TAP_ID#DOUBLE_TAP_SWITCH_ID";
LABEL_35:
    v10 = (v11 - 32) | 0x8000000000000000;
    if (a1 != 0xD000000000000028)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v10 = 0x800000010004DEB0;
      if (a1 != 0xD000000000000025)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v10 = 0x800000010004DEE0;
      if (a1 != 0xD000000000000027)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_40;
  }

  if (a2 == 5)
  {
    v11 = "&path=DOUBLE_TAP_ID#IGNORE_DOUBLE_TAP_ID";
    goto LABEL_35;
  }

  v10 = 0x800000010004DF40;
  if (a1 != 0xD000000000000011)
  {
LABEL_42:
    v12 = sub_1000420D8();
    goto LABEL_43;
  }

LABEL_40:
  if (v7 != v10)
  {
    goto LABEL_42;
  }

  v12 = 1;
LABEL_43:

  return v12 & 1;
}

uint64_t sub_100028A04(unint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      a1 = 0xD00000000000001ALL;
      v3 = 0x800000010004DCC0;
    }

    else
    {
      a1 = 0x736547646E61482FLL;
      v3 = 0xED00007365727574;
    }
  }

  else
  {
    if (a1)
    {
      a1 = 0x45435F4D4F4F5A23;
    }

    else
    {
      a1 = a1;
    }

    if (v2)
    {
      v3 = 0xED000044495F4C4CLL;
    }

    else
    {
      v3 = 0xE000000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0x800000010004DCC0;
      if (a1 != 0xD00000000000001ALL)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v5 = 0xED00007365727574;
      if (a1 != 0x736547646E61482FLL)
      {
LABEL_26:
        v6 = sub_1000420D8();
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (a2)
    {
      v4 = 0x45435F4D4F4F5A23;
    }

    else
    {
      v4 = a2;
    }

    if (a2)
    {
      v5 = 0xED000044495F4C4CLL;
    }

    else
    {
      v5 = 0xE000000000000000;
    }

    if (a1 != v4)
    {
      goto LABEL_26;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_26;
  }

  v6 = 1;
LABEL_27:

  return v6 & 1;
}

Swift::Int sub_100028B88()
{
  sub_100042108();
  sub_100042008();

  return sub_100042128();
}

Swift::Int sub_100028CB0()
{
  sub_100042108();
  sub_100042008();

  return sub_100042128();
}

unint64_t sub_100028DBC()
{
  result = qword_100069448;
  if (!qword_100069448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069448);
  }

  return result;
}

uint64_t sub_100028E1C()
{
  *v0;
  sub_100042008();
}

uint64_t sub_100028F34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002A8D4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100028F64(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (*v1 <= 2u)
  {
    v9 = 0xE000000000000000;
    v10 = 0x800000010004DE60;
    v11 = 0xD000000000000013;
    if (v2 != 1)
    {
      v11 = 0xD000000000000028;
      v10 = 0x800000010004DE80;
    }

    if (*v1)
    {
      v2 = v11;
      v9 = v10;
    }

    *a1 = v2;
    a1[1] = v9;
  }

  else
  {
    v3 = 0x800000010004DF10;
    v4 = 0xD000000000000011;
    if (v2 == 5)
    {
      v4 = 0xD000000000000028;
    }

    else
    {
      v3 = 0x800000010004DF40;
    }

    v5 = 0x800000010004DEB0;
    v6 = 0xD000000000000027;
    if (v2 == 3)
    {
      v6 = 0xD000000000000025;
    }

    else
    {
      v5 = 0x800000010004DEE0;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v3;
    }

    *a1 = v7;
    a1[1] = v8;
  }
}

unint64_t sub_10002909C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000013;
    if (v1 != 1)
    {
      v5 = 0xD000000000000028;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return *v0;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    if (v1 == 5)
    {
      v2 = 0xD000000000000028;
    }

    v3 = 0xD000000000000027;
    if (v1 == 3)
    {
      v3 = 0xD000000000000025;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100029178@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10002A8D4(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1000291C4()
{
  result = qword_100069460;
  if (!qword_100069460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069460);
  }

  return result;
}

unint64_t sub_100029218()
{
  result = qword_100069468;
  if (!qword_100069468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069468);
  }

  return result;
}

uint64_t sub_10002926C()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A2F8);
  sub_1000038F8(v0, qword_10006A2F8);
  return sub_1000417B8();
}

void (*sub_1000292D0(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_100029344()
{
  result = qword_100069470;
  if (!qword_100069470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069470);
  }

  return result;
}

uint64_t sub_100029398(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002B510();
  v5 = sub_10002A880();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100029408()
{
  result = qword_100069478;
  if (!qword_100069478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069478);
  }

  return result;
}

unint64_t sub_100029460()
{
  result = qword_100069480;
  if (!qword_100069480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069480);
  }

  return result;
}

uint64_t sub_10002953C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002B510();
  v7 = sub_10002B564();
  v8 = sub_10002A880();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100029608@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002A920();
  *a1 = result;
  return result;
}

uint64_t sub_100029630(uint64_t a1)
{
  v2 = sub_100029344();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100029670()
{
  result = qword_100069488;
  if (!qword_100069488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069488);
  }

  return result;
}

unint64_t sub_1000296C8()
{
  result = qword_100069490;
  if (!qword_100069490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069490);
  }

  return result;
}

unint64_t sub_100029720()
{
  result = qword_100069498;
  if (!qword_100069498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069498);
  }

  return result;
}

uint64_t sub_100029774()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A310);
  sub_1000038F8(v7, qword_10006A310);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_1000298EC()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_100029BB8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_10002AED8(a1);
}

uint64_t sub_100029C60(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_10002B148();
}

unint64_t sub_100029D08()
{
  result = qword_1000694A0;
  if (!qword_1000694A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694A0);
  }

  return result;
}

uint64_t sub_100029D5C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_10002AC1C();
}

unint64_t sub_100029E04()
{
  result = qword_1000694A8;
  if (!qword_1000694A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694A8);
  }

  return result;
}

unint64_t sub_100029E5C()
{
  result = qword_1000694B0;
  if (!qword_1000694B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694B0);
  }

  return result;
}

unint64_t sub_100029EB4()
{
  result = qword_1000694B8;
  if (!qword_1000694B8)
  {
    sub_100003830(&qword_1000694C0, qword_100049738);
    sub_100029E5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694B8);
  }

  return result;
}

uint64_t sub_100029F38(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100029D08();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100029FEC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_10002B3B8();
}

unint64_t sub_10002A094()
{
  result = qword_1000694C8;
  if (!qword_1000694C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694C8);
  }

  return result;
}

uint64_t sub_10002A0E8()
{
  v0 = sub_100003930(&qword_100069528, "܀");
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100069530, &qword_100049B30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100029720();
  sub_100041708();
  v9._object = 0x800000010004F570;
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_10002A2B4()
{
  result = qword_1000694D0;
  if (!qword_1000694D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694D0);
  }

  return result;
}

unint64_t sub_10002A30C()
{
  result = qword_1000694D8;
  if (!qword_1000694D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694D8);
  }

  return result;
}

unint64_t sub_10002A364()
{
  result = qword_1000694E0;
  if (!qword_1000694E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694E0);
  }

  return result;
}

uint64_t sub_10002A3B8()
{
  sub_10002A880();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10002A428()
{
  result = qword_1000694E8;
  if (!qword_1000694E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694E8);
  }

  return result;
}

unint64_t sub_10002A480()
{
  result = qword_1000694F0;
  if (!qword_1000694F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694F0);
  }

  return result;
}

unint64_t sub_10002A4D8()
{
  result = qword_1000694F8;
  if (!qword_1000694F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000694F8);
  }

  return result;
}

unint64_t sub_10002A530()
{
  result = qword_100069500;
  if (!qword_100069500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069500);
  }

  return result;
}

uint64_t sub_10002A600(uint64_t a1)
{
  v2 = sub_100029720();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002A650()
{
  result = qword_100069518;
  if (!qword_100069518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069518);
  }

  return result;
}

uint64_t sub_10002A6AC(uint64_t a1)
{
  v2 = sub_10002A4D8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10002A730(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002A7C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002A880()
{
  result = qword_100069520;
  if (!qword_100069520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069520);
  }

  return result;
}

uint64_t sub_10002A8D4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000624F8;
  v6._object = a2;
  v4 = sub_1000420C8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002A920()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100069538, &unk_100049B60);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 7;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100029720();
  return sub_1000415C8();
}

uint64_t sub_10002AC38()
{
  sub_1000402A4(0, 7, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1000402A4((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 <= v4)
  {
    sub_1000402A4((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  v6 = v2 + 3;
  if (v3 <= v5)
  {
    sub_1000402A4((v1 > 1), v2 + 3, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v6;
  *(&_swiftEmptyArrayStorage[4] + v5) = 2;
  v7 = v2 + 4;
  if (v3 <= v6)
  {
    sub_1000402A4((v1 > 1), v2 + 4, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v7;
  *(&_swiftEmptyArrayStorage[4] + v6) = 3;
  v8 = v2 + 5;
  if (v3 <= v7)
  {
    sub_1000402A4((v1 > 1), v2 + 5, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v8;
  *(&_swiftEmptyArrayStorage[4] + v7) = 4;
  v9 = v2 + 6;
  if (v3 <= v8)
  {
    sub_1000402A4((v1 > 1), v2 + 6, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v9;
  *(&_swiftEmptyArrayStorage[4] + v8) = 5;
  if (v3 <= v9)
  {
    sub_1000402A4((v1 > 1), v2 + 7, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 7;
  *(&_swiftEmptyArrayStorage[4] + v9) = 6;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10002AEF8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    while (1)
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 - 1) > 4)
      {
        break;
      }

      v6 = [objc_opt_self() sharedInstance];
      v7 = [v6 getActiveDevice];

      if (v7)
      {
        if ([v7 isAltAccount])
        {
        }

        else
        {
          v8 = [v7 supportsCapability:240655905];

          if (v8)
          {
            break;
          }
        }
      }

LABEL_4:
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000402D4(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_1000402D4((v9 > 1), v10 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v4;
    goto LABEL_4;
  }

LABEL_14:
  v11 = _swiftEmptyArrayStorage[2];
  if (v11)
  {
    sub_1000402A4(0, v11, 0);
    v12 = _swiftEmptyArrayStorage[2];
    v13 = 32;
    do
    {
      v14 = *(_swiftEmptyArrayStorage + v13);
      v15 = _swiftEmptyArrayStorage[3];
      if (v12 >= v15 >> 1)
      {
        sub_1000402A4((v15 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      *(&_swiftEmptyArrayStorage[4] + v12) = v14;
      ++v13;
      ++v12;
      --v11;
    }

    while (v11);
  }

  v16 = *(v18 + 8);

  return v16(_swiftEmptyArrayStorage);
}

uint64_t sub_10002B164()
{
  for (i = 0; i != 7; ++i)
  {
    v1 = *(&off_1000625C0 + i + 32);
    if ((v1 - 1) > 4)
    {
      goto LABEL_8;
    }

    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 getActiveDevice];

    if (v3)
    {
      if ([v3 isAltAccount])
      {

        continue;
      }

      v4 = [v3 supportsCapability:240655905];

      if (v4)
      {
LABEL_8:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000402D4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v6 = _swiftEmptyArrayStorage[2];
        v5 = _swiftEmptyArrayStorage[3];
        if (v6 >= v5 >> 1)
        {
          sub_1000402D4((v5 > 1), v6 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v6 + 1;
        *(&_swiftEmptyArrayStorage[4] + v6) = v1;
      }
    }
  }

  v7 = _swiftEmptyArrayStorage[2];
  if (v7)
  {
    sub_1000402A4(0, v7, 0);
    v8 = _swiftEmptyArrayStorage[2];
    v9 = 32;
    do
    {
      v10 = *(_swiftEmptyArrayStorage + v9);
      v11 = _swiftEmptyArrayStorage[3];
      if (v8 >= v11 >> 1)
      {
        sub_1000402A4((v11 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      *(&_swiftEmptyArrayStorage[4] + v8) = v10;
      ++v9;
      ++v8;
      --v7;
    }

    while (v7);
  }

  v12 = *(v14 + 8);

  return v12(_swiftEmptyArrayStorage);
}

uint64_t sub_10002B3D4()
{
  v0 = 0;
  while (1)
  {
    v1 = *(&off_1000625C0 + v0 + 32);
    if ((v1 - 1) > 4)
    {
      break;
    }

    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 getActiveDevice];

    if (v3)
    {
      if ([v3 isAltAccount])
      {
      }

      else
      {
        v4 = [v3 supportsCapability:240655905];

        if (v4)
        {
          break;
        }
      }
    }

    if (++v0 == 7)
    {
      v1 = 7;
      break;
    }
  }

  v5 = *(v7 + 8);

  return v5(v1);
}

unint64_t sub_10002B510()
{
  result = qword_100069540;
  if (!qword_100069540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069540);
  }

  return result;
}

unint64_t sub_10002B564()
{
  result = qword_100069548;
  if (!qword_100069548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069548);
  }

  return result;
}

unint64_t sub_10002B5D8(unint64_t result)
{
  result = result;
  switch(result)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x526863656570532FLL;
      break;
    case 4:
      result = 0x6F526F696475412FLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x656C6C696172422FLL;
      break;
    case 7:
      result = 0x72616F6279654B2FLL;
      break;
    case 8:
      result = 0x73746E694823;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0x436E656572635323;
      break;
    case 13:
      result = 0x65536B616570532FLL;
      break;
    case 14:
      result = 0x736547646E61482FLL;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10002B834(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10002B5D8(*a1);
  v5 = v4;
  if (v3 == sub_10002B5D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000420D8();
  }

  return v8 & 1;
}

unint64_t sub_10002B8C0()
{
  result = qword_100069550;
  if (!qword_100069550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069550);
  }

  return result;
}

Swift::Int sub_10002B914()
{
  v1 = *v0;
  sub_100042108();
  sub_10002B5D8(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10002B978()
{
  sub_10002B5D8(*v0);
  sub_100042008();
}

Swift::Int sub_10002B9CC()
{
  v1 = *v0;
  sub_100042108();
  sub_10002B5D8(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10002BA2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10002D8A8();
  *a2 = result;
  return result;
}

unint64_t sub_10002BA5C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10002B5D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002BAF8@<X0>(_BYTE *a1@<X8>)
{

  result = sub_10002D8A8();
  *a1 = result;
  return result;
}

unint64_t sub_10002BB44()
{
  result = qword_100069568;
  if (!qword_100069568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069568);
  }

  return result;
}

unint64_t sub_10002BB98()
{
  result = qword_100069570;
  if (!qword_100069570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069570);
  }

  return result;
}

uint64_t sub_10002BBEC()
{
  v0 = sub_1000417C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100041858();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100041FC8();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000417D8();
  sub_100003A7C(v9, qword_10006A328);
  sub_1000038F8(v9, qword_10006A328);
  sub_100041FB8();
  sub_100041848();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000417E8();
}

void (*sub_10002BDDC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_10002BE50()
{
  result = qword_100069578;
  if (!qword_100069578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069578);
  }

  return result;
}

uint64_t sub_10002BEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002E808();
  v5 = sub_10002D854();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10002BF14()
{
  result = qword_100069580;
  if (!qword_100069580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069580);
  }

  return result;
}

unint64_t sub_10002BF6C()
{
  result = qword_100069588;
  if (!qword_100069588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069588);
  }

  return result;
}

uint64_t sub_10002C048(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10002E808();
  v7 = sub_10002E85C();
  v8 = sub_10002D854();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10002C114@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002DBB0();
  *a1 = result;
  return result;
}

uint64_t sub_10002C13C(uint64_t a1)
{
  v2 = sub_10002BE50();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10002C17C()
{
  result = qword_100069590;
  if (!qword_100069590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069590);
  }

  return result;
}

unint64_t sub_10002C1D4()
{
  result = qword_100069598;
  if (!qword_100069598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069598);
  }

  return result;
}

unint64_t sub_10002C22C()
{
  result = qword_1000695A0;
  if (!qword_1000695A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000695A0);
  }

  return result;
}

uint64_t sub_10002C280()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000417C8();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100041858();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100041FC8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000417D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100041768();
  sub_100003A7C(v15, qword_10006A340);
  sub_1000038F8(v15, qword_10006A340);
  sub_100041FB8();
  sub_100041848();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000417E8();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100041758();
}

uint64_t sub_10002C570@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v24 - v5;
  v7 = sub_100003930(&qword_100068608, &qword_100042F30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v24 - v9;
  v11 = sub_1000417C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100041858();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_100041FC8();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v25 = sub_1000417D8();
  v20 = *(v25 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v25);
  switch(a1)
  {
    case 5:
    case 9:
    case 10:
    case 11:
    case 15:
    case 16:
      sub_100041FB8();
      v24 = "OPEN_EMERGENCY_SOS_SETTINGS";
      sub_100041848();
      (*(v12 + 104))(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
      sub_1000417E8();
      break;
    default:
      sub_100041FB8();
      sub_100041848();
      (*(v12 + 104))(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
      sub_1000417E8();
      break;
  }

  (*(v20 + 56))(v10, 1, 1, v25);
  sub_100041658();
  v22 = sub_100041668();
  (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  return sub_100041678();
}

uint64_t sub_10002CB8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_10002DFCC(a1);
}

uint64_t sub_10002CC34(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_10002E2CC();
}

unint64_t sub_10002CCDC()
{
  result = qword_1000695A8;
  if (!qword_1000695A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000695A8);
  }

  return result;
}

uint64_t sub_10002CD30(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_10002DEAC();
}

unint64_t sub_10002CDD8()
{
  result = qword_1000695B0;
  if (!qword_1000695B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000695B0);
  }

  return result;
}

unint64_t sub_10002CE30()
{
  result = qword_1000695B8;
  if (!qword_1000695B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000695B8);
  }

  return result;
}

unint64_t sub_10002CE88()
{
  result = qword_1000695C0;
  if (!qword_1000695C0)
  {
    sub_100003830(&qword_1000695C8, qword_100049EC8);
    sub_10002CE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000695C0);
  }

  return result;
}

uint64_t sub_10002CF0C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10002CCDC();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10002CFC0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_10002E5CC();
}

unint64_t sub_10002D068()
{
  result = qword_1000695D0;
  if (!qword_1000695D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000695D0);
  }

  return result;
}

uint64_t sub_10002D0BC()
{
  v0 = sub_100003930(&qword_100069630, &qword_10004A2B8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100069638, &qword_10004A2C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10002C22C();
  sub_100041708();
  v9._object = 0x800000010004F670;
  v9._countAndFlagsBits = 0xD00000000000002ELL;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_10002D288()
{
  result = qword_1000695D8;
  if (!qword_1000695D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000695D8);
  }

  return result;
}

unint64_t sub_10002D2E0()
{
  result = qword_1000695E0;
  if (!qword_1000695E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000695E0);
  }

  return result;
}

unint64_t sub_10002D338()
{
  result = qword_1000695E8;
  if (!qword_1000695E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000695E8);
  }

  return result;
}

uint64_t sub_10002D38C()
{
  sub_10002D854();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10002D3FC()
{
  result = qword_1000695F0;
  if (!qword_1000695F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000695F0);
  }

  return result;
}

unint64_t sub_10002D454()
{
  result = qword_1000695F8;
  if (!qword_1000695F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000695F8);
  }

  return result;
}

unint64_t sub_10002D4AC()
{
  result = qword_100069600;
  if (!qword_100069600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069600);
  }

  return result;
}

unint64_t sub_10002D504()
{
  result = qword_100069608;
  if (!qword_100069608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069608);
  }

  return result;
}

uint64_t sub_10002D5D4(uint64_t a1)
{
  v2 = sub_10002C22C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10002D624()
{
  result = qword_100069620;
  if (!qword_100069620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069620);
  }

  return result;
}

uint64_t sub_10002D680(uint64_t a1)
{
  v2 = sub_10002D4AC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10002D704(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10002D794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002D854()
{
  result = qword_100069628;
  if (!qword_100069628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069628);
  }

  return result;
}

uint64_t sub_10002D8A8()
{
  v0 = sub_1000420E8();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

BOOL sub_10002D8FC()
{
  v0 = objc_allocWithZone(NPSDomainAccessor);
  v1 = sub_100041FD8();
  v2 = [v0 initWithDomain:v1];

  if (v2)
  {
    v3 = v2;
    v4 = sub_100041FD8();
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      sub_100042088();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15 = v13;
    v16 = v14;
    if (*(&v14 + 1))
    {
      swift_dynamicCast();
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  sub_100007320(&v15);
LABEL_9:
  v6 = objc_allocWithZone(NSLocale);
  v7 = sub_100041FD8();

  v8 = [v6 initWithLocaleIdentifier:v7];

  if ([v8 objectForKey:NSLocaleLanguageCode])
  {
    sub_100042088();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = objc_opt_self();
      v10 = sub_100041FD8();

      v11 = [v9 characterDirectionForLanguage:v10];

      return v11 == 1;
    }
  }

  else
  {

    sub_100007320(&v15);
  }

  return 0;
}

uint64_t sub_10002DBB0()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100069640, &qword_10004A2F8);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 17;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10002C22C();
  return sub_1000415C8();
}

uint64_t sub_10002DEC8()
{
  sub_100040304(0, 17, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_1000627A0 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100040304((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 17);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10002DFEC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = objc_opt_self();
    do
    {
      v8 = *v3++;
      v7 = v8;
      v9 = [v4 sharedInstance];
      v10 = [v9 getActiveDevice];

      if (v10)
      {
        if (v7 > 13)
        {
          switch(v7)
          {
            case 14:
              v11 = [objc_opt_self() isVoiceOverGreyFeatureOn];
              break;
            case 15:
              v11 = [v10 supportsCapability:2843101132];
              break;
            case 16:
              v11 = [v10 supportsCapability:375545786];
              break;
            default:
LABEL_19:

LABEL_23:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_100040334(0, _swiftEmptyArrayStorage[2] + 1, 1);
              }

              v6 = _swiftEmptyArrayStorage[2];
              v5 = _swiftEmptyArrayStorage[3];
              if (v6 >= v5 >> 1)
              {
                sub_100040334((v5 > 1), v6 + 1, 1);
              }

              _swiftEmptyArrayStorage[2] = v6 + 1;
              *(&_swiftEmptyArrayStorage[4] + v6) = v7;
              goto LABEL_6;
          }
        }

        else
        {
          switch(v7)
          {
            case 5:
              v11 = sub_10002D8FC();
              break;
            case 6:
              v11 = [v10 supportsCapability:2250298453];
              break;
            case 11:
              v11 = [v10 supportsCapability:361186117];
              break;
            default:
              goto LABEL_19;
          }
        }

        v12 = v11;

        if (v12)
        {
          goto LABEL_23;
        }
      }

LABEL_6:
      --v2;
    }

    while (v2);
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    sub_100040304(0, v13, 0);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 32;
    do
    {
      v16 = *(_swiftEmptyArrayStorage + v15);
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_100040304((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  v18 = *(v20 + 8);

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_10002E2E8()
{
  v0 = objc_opt_self();
  for (i = 0; i != 17; ++i)
  {
    v4 = *(&off_1000627A0 + i + 32);
    v5 = [v0 sharedInstance];
    v6 = [v5 getActiveDevice];

    if (!v6)
    {
      continue;
    }

    if (v4 > 13)
    {
      switch(v4)
      {
        case 14:
          v7 = [objc_opt_self() isVoiceOverGreyFeatureOn];
          break;
        case 15:
          v7 = [v6 supportsCapability:2843101132];
          break;
        case 16:
          v7 = [v6 supportsCapability:375545786];
          break;
        default:
          goto LABEL_18;
      }

LABEL_21:
      v8 = v7;

      if ((v8 & 1) == 0)
      {
        continue;
      }

      goto LABEL_22;
    }

    switch(v4)
    {
      case 5:
        v7 = sub_10002D8FC();
        goto LABEL_21;
      case 6:
        v7 = [v6 supportsCapability:2250298453];
        goto LABEL_21;
      case 11:
        v7 = [v6 supportsCapability:361186117];
        goto LABEL_21;
    }

LABEL_18:

LABEL_22:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100040334(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v3 = _swiftEmptyArrayStorage[2];
    v2 = _swiftEmptyArrayStorage[3];
    if (v3 >= v2 >> 1)
    {
      sub_100040334((v2 > 1), v3 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v3 + 1;
    *(&_swiftEmptyArrayStorage[4] + v3) = v4;
  }

  v9 = _swiftEmptyArrayStorage[2];
  if (v9)
  {
    sub_100040304(0, v9, 0);
    v10 = _swiftEmptyArrayStorage[2];
    v11 = 32;
    do
    {
      v12 = *(_swiftEmptyArrayStorage + v11);
      v13 = _swiftEmptyArrayStorage[3];
      if (v10 >= v13 >> 1)
      {
        sub_100040304((v13 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v12;
      ++v11;
      ++v10;
      --v9;
    }

    while (v9);
  }

  v14 = *(v16 + 8);

  return v14(_swiftEmptyArrayStorage);
}

uint64_t sub_10002E5E8()
{
  v1 = 0;
  while (1)
  {
    v3 = *(&off_1000627A0 + v1 + 32);
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 getActiveDevice];

    if (!v5)
    {
      goto LABEL_3;
    }

    if (v3 <= 13)
    {
      switch(v3)
      {
        case 5:
          v8 = sub_10002D8FC();

          if (v8)
          {
            v3 = 5;
            goto LABEL_23;
          }

          break;
        case 6:
          v9 = [v5 supportsCapability:2250298453];

          if (v9)
          {
            v3 = 6;
            goto LABEL_23;
          }

          break;
        case 0xB:
          v6 = [v5 supportsCapability:361186117];

          if (v6)
          {
            v3 = 11;
            goto LABEL_23;
          }

          break;
        default:
          goto LABEL_26;
      }

      goto LABEL_3;
    }

    if (v3 == 14)
    {
      break;
    }

    if (v3 == 15)
    {
      v10 = [v5 supportsCapability:2843101132];

      if (v10)
      {
        v3 = 15;
        goto LABEL_23;
      }
    }

    else
    {
      if (v3 != 16)
      {
LABEL_26:

        goto LABEL_23;
      }

      v7 = [v5 supportsCapability:375545786];

      if (v7)
      {
        v3 = 16;
        goto LABEL_23;
      }
    }

LABEL_3:
    if (++v1 == 17)
    {
      v3 = 17;
      goto LABEL_23;
    }
  }

  v2 = [objc_opt_self() isVoiceOverGreyFeatureOn];

  if ((v2 & 1) == 0)
  {
    goto LABEL_3;
  }

  v3 = 14;
LABEL_23:
  v11 = *(v0 + 8);

  return v11(v3);
}

unint64_t sub_10002E808()
{
  result = qword_100069648;
  if (!qword_100069648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069648);
  }

  return result;
}

unint64_t sub_10002E85C()
{
  result = qword_100069650;
  if (!qword_100069650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069650);
  }

  return result;
}

Swift::Int sub_10002E8E8()
{
  v1 = *v0;
  sub_100042108();
  sub_100042118(v1);
  return sub_100042128();
}

Swift::Int sub_10002E95C()
{
  v1 = *v0;
  sub_100042108();
  sub_100042118(v1);
  return sub_100042128();
}

const char *sub_10002E9B4()
{
  if (*v0)
  {
    return "GizmoColorFilters";
  }

  else
  {
    return "LiveSpeech";
  }
}

unint64_t sub_10002E9E4(unint64_t result)
{
  result = result;
  switch(result)
  {
    case 1:
    case 11:
      result = 0xD000000000000013;
      break;
    case 2:
    case 28:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 23:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD000000000000024;
      break;
    case 6:
    case 20:
      result = 0xD000000000000012;
      break;
    case 7:
      v1 = 5;
      goto LABEL_17;
    case 8:
    case 19:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0xD00000000000002ALL;
      break;
    case 10:
      result = 0xD000000000000027;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      v1 = 17;
LABEL_17:
      result = v1 | 0xD00000000000002ALL;
      break;
    case 14:
      result = 0xD00000000000002ALL;
      break;
    case 15:
      result = 0xD00000000000002ALL;
      break;
    case 16:
      result = 0xD000000000000037;
      break;
    case 17:
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 21:
      result = 0x54523D6874617026;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0xD000000000000019;
      break;
    case 25:
      result = 0xD000000000000025;
      break;
    case 26:
      result = 0xD000000000000018;
      break;
    case 27:
      result = 0xD000000000000020;
      break;
    case 29:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10002ED90(char a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 getActiveDevice];

  if (v3)
  {
    switch(a1)
    {
      case 3:
        v4 = [v3 supportsCapability:361186117];
        goto LABEL_24;
      case 4:
        v12 = &type metadata for AccessibilityFeatureFlags;
        v13 = sub_100031E9C();
        LOBYTE(v11[0]) = 1;
        v5 = sub_100041868();

        sub_1000039EC(v11);
        return v5 & 1;
      case 5:
        if (AXRuntimeCheck_SupportsIncreaseBrightnessFloor())
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      case 8:
      case 9:
      case 10:
        v4 = [v3 supportsCapability:2028046364];
        goto LABEL_24;
      case 11:
        if (![v3 supportsCapability:2481586517])
        {
          goto LABEL_22;
        }

        v6 = [v3 supportsCapability:240655905];

        v5 = v6 ^ 1;
        return v5 & 1;
      case 12:
        v4 = sub_1000312D8(v3);
        goto LABEL_24;
      case 13:
      case 14:
      case 15:
      case 16:
      case 27:
        v4 = [v3 supportsCapability:2289945074];
        goto LABEL_24;
      case 17:
      case 26:
        v4 = [v3 supportsCapability:3036402057];
        goto LABEL_24;
      case 18:
        if (![v3 supportsCapability:674176742])
        {
          goto LABEL_22;
        }

        v4 = BPSIsWalkieTalkieAppInstalled();
        goto LABEL_24;
      case 19:
LABEL_19:
        v4 = [v3 supportsCapability:375545786];
        goto LABEL_24;
      case 20:
        v7 = [objc_opt_self() sharedPreferences];
        v8 = [v7 nanoAssistantEnabled];

        if (!v8)
        {
          goto LABEL_22;
        }

        v4 = [v3 supportsCapability:250604333];
        goto LABEL_24;
      case 21:
        v4 = [objc_opt_self() isRTTSupported];
        goto LABEL_24;
      case 24:
        v4 = sub_100031440();
        goto LABEL_24;
      case 28:
        v12 = &type metadata for AccessibilityFeatureFlags;
        v13 = sub_100031E9C();
        LOBYTE(v11[0]) = 0;
        v9 = sub_100041868();
        sub_1000039EC(v11);
        if (v9)
        {
          v4 = [v3 supportsCapability:2592169205];
LABEL_24:
          v5 = v4;
        }

        else
        {
LABEL_22:

          v5 = 0;
        }

        break;
      default:

        v5 = 1;
        return v5 & 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10002F0C8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10002E9E4(*a1);
  v5 = v4;
  if (v3 == sub_10002E9E4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000420D8();
  }

  return v8 & 1;
}

unint64_t sub_10002F154()
{
  result = qword_100069658;
  if (!qword_100069658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069658);
  }

  return result;
}

Swift::Int sub_10002F1A8()
{
  v1 = *v0;
  sub_100042108();
  sub_10002E9E4(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10002F20C()
{
  sub_10002E9E4(*v0);
  sub_100042008();
}

Swift::Int sub_10002F260()
{
  v1 = *v0;
  sub_100042108();
  sub_10002E9E4(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10002F2C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100031284();
  *a2 = result;
  return result;
}

unint64_t sub_10002F2F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10002E9E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10002F378@<X0>(_BYTE *a1@<X8>)
{

  result = sub_100031284();
  *a1 = result;
  return result;
}

unint64_t sub_10002F3C4()
{
  result = qword_100069670;
  if (!qword_100069670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069670);
  }

  return result;
}

unint64_t sub_10002F418()
{
  result = qword_100069678;
  if (!qword_100069678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069678);
  }

  return result;
}

uint64_t sub_10002F46C()
{
  v0 = sub_1000417C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100041858();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100041FC8();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000417D8();
  sub_100003A7C(v9, qword_10006A358);
  sub_1000038F8(v9, qword_10006A358);
  sub_100041FB8();
  sub_100041848();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000417E8();
}

void (*sub_10002F65C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_10002F6D0()
{
  result = qword_100069680;
  if (!qword_100069680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069680);
  }

  return result;
}

uint64_t sub_10002F724(uint64_t a1, uint64_t a2)
{
  v4 = sub_100031F3C();
  v5 = sub_100031230();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10002F794()
{
  result = qword_100069688;
  if (!qword_100069688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069688);
  }

  return result;
}

unint64_t sub_10002F7EC()
{
  result = qword_100069690;
  if (!qword_100069690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069690);
  }

  return result;
}

uint64_t sub_10002F8C8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100031F3C();
  v7 = sub_100031F90();
  v8 = sub_100031230();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10002F994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000315F8();
  *a1 = result;
  return result;
}

uint64_t sub_10002F9BC(uint64_t a1)
{
  v2 = sub_10002F6D0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10002F9FC()
{
  result = qword_100069698;
  if (!qword_100069698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069698);
  }

  return result;
}

unint64_t sub_10002FA54()
{
  result = qword_1000696A0;
  if (!qword_1000696A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000696A0);
  }

  return result;
}

unint64_t sub_10002FAAC()
{
  result = qword_1000696A8;
  if (!qword_1000696A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000696A8);
  }

  return result;
}

uint64_t sub_10002FB00()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000417C8();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100041858();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100041FC8();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000417D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100041768();
  sub_100003A7C(v15, qword_10006A370);
  sub_1000038F8(v15, qword_10006A370);
  sub_100041FB8();
  sub_100041848();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000417E8();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100041758();
}

uint64_t sub_10002FDEC@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v21 - v3;
  v5 = sub_100003930(&qword_100068608, &qword_100042F30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v23 = &v21 - v7;
  v8 = sub_1000417C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100041858();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100041FC8();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v22 = sub_1000417D8();
  v17 = *(v22 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v22);
  sub_100041FB8();
  sub_100041848();
  (*(v9 + 104))(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_1000417E8();
  (*(v17 + 56))(v23, 1, 1, v22);
  sub_100041658();
  v19 = sub_100041668();
  (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
  return sub_100041678();
}

uint64_t sub_100030568(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_100031A14(a1);
}

uint64_t sub_100030610(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_100031C00();
}

unint64_t sub_1000306B8()
{
  result = qword_1000696B0;
  if (!qword_1000696B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000696B0);
  }

  return result;
}

uint64_t sub_10003070C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_1000318F4();
}

unint64_t sub_1000307B4()
{
  result = qword_1000696B8;
  if (!qword_1000696B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000696B8);
  }

  return result;
}

unint64_t sub_10003080C()
{
  result = qword_1000696C0;
  if (!qword_1000696C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000696C0);
  }

  return result;
}

unint64_t sub_100030864()
{
  result = qword_1000696C8;
  if (!qword_1000696C8)
  {
    sub_100003830(&qword_1000696D0, qword_10004A658);
    sub_10003080C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000696C8);
  }

  return result;
}

uint64_t sub_1000308E8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000306B8();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10003099C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_100031DE4();
}

unint64_t sub_100030A44()
{
  result = qword_1000696D8;
  if (!qword_1000696D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000696D8);
  }

  return result;
}

uint64_t sub_100030A98()
{
  v0 = sub_100003930(&qword_100069738, &qword_10004AA50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100069740, &qword_10004AA58);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10002FAAC();
  sub_100041708();
  v9._object = 0x800000010004F900;
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_100030C64()
{
  result = qword_1000696E0;
  if (!qword_1000696E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000696E0);
  }

  return result;
}

unint64_t sub_100030CBC()
{
  result = qword_1000696E8;
  if (!qword_1000696E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000696E8);
  }

  return result;
}

unint64_t sub_100030D14()
{
  result = qword_1000696F0;
  if (!qword_1000696F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000696F0);
  }

  return result;
}

uint64_t sub_100030D68()
{
  sub_100031230();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100030DD8()
{
  result = qword_1000696F8;
  if (!qword_1000696F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000696F8);
  }

  return result;
}

unint64_t sub_100030E30()
{
  result = qword_100069700;
  if (!qword_100069700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069700);
  }

  return result;
}

unint64_t sub_100030E88()
{
  result = qword_100069708;
  if (!qword_100069708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069708);
  }

  return result;
}

unint64_t sub_100030EE0()
{
  result = qword_100069710;
  if (!qword_100069710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069710);
  }

  return result;
}

uint64_t sub_100030FB0(uint64_t a1)
{
  v2 = sub_10002FAAC();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}