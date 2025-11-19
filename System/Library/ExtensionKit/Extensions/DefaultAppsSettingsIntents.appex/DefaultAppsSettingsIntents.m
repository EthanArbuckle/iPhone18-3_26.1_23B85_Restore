unint64_t sub_100001234()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_10000128C()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

uint64_t sub_1000012E0()
{
  v0 = sub_100005C34();
  sub_100004A84(v0, qword_10000C180);
  sub_100004A4C(v0, qword_10000C180);
  return sub_100005C24();
}

uint64_t sub_100001344@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100005AD4();
  *a1 = v5;
  return result;
}

uint64_t sub_100001380(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100005AE4();
}

void (*sub_1000013B8(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100005AC4();
  return sub_10000142C;
}

void sub_10000142C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100001478()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

uint64_t sub_1000014CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056C0();
  v5 = sub_100004AE8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10000153C()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_100001594()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

unint64_t sub_1000015EC()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

uint64_t sub_1000016E0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000056C0();
  v7 = sub_100005714();
  v8 = sub_100004AE8();
  *v5 = v2;
  v5[1] = sub_1000017AC;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000017AC()
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

uint64_t sub_1000018B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004D64();
  *a1 = result;
  return result;
}

uint64_t sub_1000018DC(uint64_t a1)
{
  v2 = sub_100001478();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100001918()
{
  v0 = sub_1000049A0(&qword_10000C118, &qword_100006648);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_100005C34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100005BF4();
  sub_100004A84(v7, qword_10000C198);
  sub_100004A4C(v7, qword_10000C198);
  sub_100005C24();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100005BE4();
}

unint64_t sub_100001A8C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000011;
    v7 = 0x6C746361746E6F43;
    if (a1 != 10)
    {
      v7 = 0x6472616F6279654BLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x697461676976614ELL;
    v9 = 0x41726573776F7242;
    if (a1 != 7)
    {
      v9 = 0x74616C736E617254;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1953460082;
    v2 = 0x6E6967617373654DLL;
    v3 = 0x676E696C6C6143;
    if (a1 != 4)
    {
      v3 = 0x746C69466C6C6143;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6174736E49707041;
    if (a1 != 1)
    {
      v4 = 0x6C69616D45;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100001C3C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100001A8C(*a1);
  v5 = v4;
  if (v3 == sub_100001A8C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100005C84();
  }

  return v8 & 1;
}

unint64_t sub_100001CC8()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

Swift::Int sub_100001D1C()
{
  v1 = *v0;
  sub_100005C94();
  sub_100001A8C(v1);
  sub_100005C64();

  return sub_100005CA4();
}

uint64_t sub_100001D80()
{
  sub_100001A8C(*v0);
  sub_100005C64();
}

Swift::Int sub_100001DD4()
{
  v1 = *v0;
  sub_100005C94();
  sub_100001A8C(v1);
  sub_100005C64();

  return sub_100005CA4();
}

uint64_t sub_100001E34@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005060(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100001E64@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100001A8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100001ED4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001F48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100005060(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100001F94()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100001FEC()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_100002040()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100002094(unsigned __int8 a1)
{
  v2 = sub_1000049A0(&qword_10000C110, &qword_100006640);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v56 - v4;
  v6 = sub_1000049A0(&qword_10000C118, &qword_100006648);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v56 - v8;
  v10 = sub_100005C34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  if (a1 > 5u)
  {
    if (a1 <= 8u)
    {
      goto LABEL_23;
    }

    if (a1 == 9)
    {
      sub_100005C24();
      sub_100005C24();
      v40 = *(v11 + 56);
      v39 = v11 + 56;
      v40(v9, 0, 1, v10);
      sub_100005B04();
      v41 = sub_100005B14();
      (*(*(v41 - 8) + 56))(v5, 0, 1, v41);
      sub_1000049A0(&qword_10000C120, &qword_100006650);
      v42 = *(v39 + 16);
      v43 = (*(v39 + 24) + 32) & ~*(v39 + 24);
      *(swift_allocObject() + 16) = xmmword_100005E80;
      sub_100005C24();
      goto LABEL_24;
    }

    if (a1 != 10)
    {
LABEL_23:
      sub_100005C24();
      sub_100005C24();
      (*(v11 + 56))(v9, 0, 1, v10);
      sub_100005B04();
      v54 = sub_100005B14();
      (*(*(v54 - 8) + 56))(v5, 0, 1, v54);
      goto LABEL_24;
    }

    sub_100005C24();
    sub_100005C24();
    v25 = *(v11 + 56);
    v24 = v11 + 56;
    v25(v9, 0, 1, v10);
    sub_100005B04();
    v26 = sub_100005B14();
    (*(*(v26 - 8) + 56))(v5, 0, 1, v26);
    sub_1000049A0(&qword_10000C120, &qword_100006650);
    v27 = *(v24 + 16);
    v28 = (*(v24 + 24) + 32) & ~*(v24 + 24);
    *(swift_allocObject() + 16) = xmmword_100005E70;
    sub_100005C24();
    sub_100005C24();
  }

  else if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_100005C24();
      sub_100005C24();
      v35 = *(v11 + 56);
      v34 = v11 + 56;
      v35(v9, 0, 1, v10);
      sub_100005B04();
      v36 = sub_100005B14();
      (*(*(v36 - 8) + 56))(v5, 0, 1, v36);
      sub_1000049A0(&qword_10000C120, &qword_100006650);
      v37 = *(v34 + 16);
      v38 = (*(v34 + 24) + 32) & ~*(v34 + 24);
      *(swift_allocObject() + 16) = xmmword_100005E90;
      sub_100005C24();
      sub_100005C24();
      sub_100005C24();
    }

    else
    {
      sub_100005C24();
      sub_100005C24();
      if (a1 == 4)
      {
        v20 = *(v11 + 56);
        v19 = v11 + 56;
        v20(v9, 0, 1, v10);
        sub_100005B04();
        v21 = sub_100005B14();
        (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
        sub_1000049A0(&qword_10000C120, &qword_100006650);
        v22 = *(v19 + 16);
        v23 = (*(v19 + 24) + 32) & ~*(v19 + 24);
        *(swift_allocObject() + 16) = xmmword_100005E90;
        sub_100005C24();
        sub_100005C24();
      }

      else
      {
        v50 = *(v11 + 56);
        v49 = v11 + 56;
        v50(v9, 0, 1, v10);
        sub_100005B04();
        v51 = sub_100005B14();
        (*(*(v51 - 8) + 56))(v5, 0, 1, v51);
        sub_1000049A0(&qword_10000C120, &qword_100006650);
        v52 = *(v49 + 16);
        v53 = (*(v49 + 24) + 32) & ~*(v49 + 24);
        *(swift_allocObject() + 16) = xmmword_100005E80;
      }

      sub_100005C24();
    }
  }

  else if (a1)
  {
    sub_100005C24();
    sub_100005C24();
    if (a1 == 1)
    {
      v15 = *(v11 + 56);
      v14 = v11 + 56;
      v15(v9, 0, 1, v10);
      sub_100005B04();
      v16 = sub_100005B14();
      (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
      sub_1000049A0(&qword_10000C120, &qword_100006650);
      v17 = *(v14 + 16);
      v18 = (*(v14 + 24) + 32) & ~*(v14 + 24);
      *(swift_allocObject() + 16) = xmmword_100005E90;
      sub_100005C24();
    }

    else
    {
      v45 = *(v11 + 56);
      v44 = v11 + 56;
      v45(v9, 0, 1, v10);
      sub_100005B04();
      v46 = sub_100005B14();
      (*(*(v46 - 8) + 56))(v5, 0, 1, v46);
      sub_1000049A0(&qword_10000C120, &qword_100006650);
      v47 = *(v44 + 16);
      v48 = (*(v44 + 24) + 32) & ~*(v44 + 24);
      *(swift_allocObject() + 16) = xmmword_100005E70;
    }

    sub_100005C24();
    sub_100005C24();
  }

  else
  {
    sub_100005C24();
    sub_100005C24();
    (*(v11 + 56))(v9, 0, 1, v10);
    if (qword_10000C010 != -1)
    {
      swift_once();
    }

    v29 = sub_100005B14();
    v30 = sub_100004A4C(v29, qword_10000C018);
    v31 = *(v29 - 8);
    (*(v31 + 16))(v5, v30, v29);
    (*(v31 + 56))(v5, 0, 1, v29);
    sub_1000049A0(&qword_10000C120, &qword_100006650);
    v32 = *(v11 + 72);
    v33 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_100005EA0;
    v56[1] = 0xD000000000000010;
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
    sub_100005C24();
  }

LABEL_24:
  sub_100005C24();
  return sub_100005B24();
}

uint64_t sub_1000035FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005790;

  return sub_1000051CC(a1);
}

uint64_t sub_1000036A4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000576C;

  return sub_1000053A8();
}

uint64_t sub_100003748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003808;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100003808(uint64_t a1)
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

unint64_t sub_100003908()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

uint64_t sub_10000395C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003A00;

  return sub_1000050AC();
}

uint64_t sub_100003A00(uint64_t a1)
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

unint64_t sub_100003B18()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100003B6C()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_100003BC4()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    sub_100001ED4(&qword_10000C0B0, qword_100006208);
    sub_100003B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

uint64_t sub_100003C48(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100003908();
  *v6 = v2;
  v6[1] = sub_100003CFC;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100003CFC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003DF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100003E94;

  return sub_10000557C();
}

uint64_t sub_100003E94(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

unint64_t sub_100003FB0()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

uint64_t sub_100004004()
{
  v0 = sub_1000049A0(&qword_10000C130, &qword_100006658);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_1000049A0(&qword_10000C138, &qword_100006660);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100002040();
  sub_100005BA4();
  v9._object = 0x80000001000071B0;
  v9._countAndFlagsBits = 0xD000000000000052;
  sub_100005B94(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_100005B84();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_100005B94(v10);
  return sub_100005BB4();
}

unint64_t sub_1000041E8()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100004240()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_10000429C()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_1000042F0()
{
  sub_100004AE8();
  v1 = sub_100005B54();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100004360()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

unint64_t sub_1000043B8()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

unint64_t sub_100004414()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

unint64_t sub_10000446C()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

uint64_t sub_100004508@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100004A4C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000045F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001ED4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000463C(uint64_t a1)
{
  v2 = sub_100002040();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000468C()
{
  result = qword_10000C108;
  if (!qword_10000C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C108);
  }

  return result;
}

uint64_t sub_1000046E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003CFC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1000047AC(uint64_t a1)
{
  v2 = sub_100004414();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100004840(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000048D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000049A0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000049E8()
{
  v0 = sub_100005B14();
  sub_100004A84(v0, qword_10000C018);
  sub_100004A4C(v0, qword_10000C018);
  return sub_100005B04();
}

uint64_t sub_100004A4C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004A84(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100004AE8()
{
  result = qword_10000C128;
  if (!qword_10000C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C128);
  }

  return result;
}

char *sub_100004B3C(char *a1, int64_t a2, char a3)
{
  result = sub_100004B7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004B5C(char *a1, int64_t a2, char a3)
{
  result = sub_100004C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004B7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000049A0(&qword_10000C148, &qword_100006680);
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

char *sub_100004C70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000049A0(&qword_10000C140, &qword_100006670);
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

uint64_t sub_100004D64()
{
  v20 = sub_100005BC4();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_1000049A0(&qword_10000C150, &qword_100006698) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_1000049A0(&qword_10000C118, &qword_100006648);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_100005C34();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1000049A0(&qword_10000C158, &unk_1000066A0);
  sub_100005C24();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 12;
  v17 = sub_100005AB4();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100002040();
  return sub_100005AF4();
}

uint64_t sub_100005060(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100008778;
  v6._object = a2;
  v4 = sub_100005C74(v3, v6);

  if (v4 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000050C8()
{
  sub_100004B3C(0, 12, 0);
  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v3 = *(&_swiftEmptyArrayStorage + 2);
  do
  {
    v4 = *(&off_1000088B8 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100004B3C((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 12);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000051EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      if (!*v3++)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100004B5C(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
        }

        v5 = *(&_swiftEmptyArrayStorage + 2);
        v4 = *(&_swiftEmptyArrayStorage + 3);
        if (v5 >= v4 >> 1)
        {
          sub_100004B5C((v4 > 1), v5 + 1, 1);
        }

        *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
        *(&_swiftEmptyArrayStorage + v5 + 32) = 0;
      }

      --v2;
    }

    while (v2);
  }

  v7 = *(&_swiftEmptyArrayStorage + 2);
  if (v7)
  {
    sub_100004B3C(0, v7, 0);
    v8 = *(&_swiftEmptyArrayStorage + 2);
    v9 = 32;
    do
    {
      v10 = *(&_swiftEmptyArrayStorage + v9);
      v11 = *(&_swiftEmptyArrayStorage + 3);
      if (v8 >= v11 >> 1)
      {
        sub_100004B3C((v11 > 1), v8 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v8 + 1;
      *(&_swiftEmptyArrayStorage + v8 + 32) = v10;
      ++v9;
      ++v8;
      --v7;
    }

    while (v7);
  }

  v12 = *(v0 + 8);

  return v12(&_swiftEmptyArrayStorage);
}

uint64_t sub_1000053C4()
{
  for (i = 0; i != 12; ++i)
  {
    if (!*(&off_1000088B8 + i + 32))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100004B5C(0, *(&_swiftEmptyArrayStorage + 2) + 1, 1);
      }

      v3 = *(&_swiftEmptyArrayStorage + 2);
      v2 = *(&_swiftEmptyArrayStorage + 3);
      if (v3 >= v2 >> 1)
      {
        sub_100004B5C((v2 > 1), v3 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v3 + 1;
      *(&_swiftEmptyArrayStorage + v3 + 32) = 0;
    }
  }

  v4 = *(&_swiftEmptyArrayStorage + 2);
  if (v4)
  {
    sub_100004B3C(0, v4, 0);
    v5 = *(&_swiftEmptyArrayStorage + 2);
    v6 = 32;
    do
    {
      v7 = *(&_swiftEmptyArrayStorage + v6);
      v8 = *(&_swiftEmptyArrayStorage + 3);
      if (v5 >= v8 >> 1)
      {
        sub_100004B3C((v8 > 1), v5 + 1, 1);
      }

      *(&_swiftEmptyArrayStorage + 2) = v5 + 1;
      *(&_swiftEmptyArrayStorage + v5 + 32) = v7;
      ++v6;
      ++v5;
      --v4;
    }

    while (v4);
  }

  v9 = *(v0 + 8);

  return v9(&_swiftEmptyArrayStorage);
}

uint64_t sub_100005598()
{
  for (i = 0; i != 12; ++i)
  {
    if (!*(&off_1000088B8 + i + 32))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100004B5C(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v3 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      if (v3 >= v2 >> 1)
      {
        sub_100004B5C((v2 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      *(&_swiftEmptyArrayStorage[4] + v3) = 0;
    }
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v4 = LOBYTE(_swiftEmptyArrayStorage[4]);
  }

  else
  {
    v4 = 12;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

unint64_t sub_1000056C0()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

unint64_t sub_100005714()
{
  result = qword_10000C168;
  if (!qword_10000C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C168);
  }

  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000584C();
  sub_100005C44();
  return 0;
}

unint64_t sub_10000584C()
{
  result = qword_10000C170;
  if (!qword_10000C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C170);
  }

  return result;
}

unint64_t sub_1000058CC()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C178);
  }

  return result;
}

__n128 sub_100005920(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000592C(uint64_t a1, int a2)
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

uint64_t sub_100005974(uint64_t result, int a2, int a3)
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