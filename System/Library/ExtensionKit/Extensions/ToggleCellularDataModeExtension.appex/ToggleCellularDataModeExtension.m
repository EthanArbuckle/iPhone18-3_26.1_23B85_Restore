uint64_t sub_100001544()
{
  v0 = sub_1000016F0(&qword_10000C168, &unk_100003900);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v6 - v3;
  sub_100001738();
  sub_1000035A4();
  sub_10000178C();
  sub_100003574();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001670();
  sub_100003554();
  return 0;
}

unint64_t sub_100001670()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

uint64_t sub_1000016F0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001738()
{
  result = qword_10000C170;
  if (!qword_10000C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C170);
  }

  return result;
}

unint64_t sub_10000178C()
{
  result = qword_10000C178;
  if (!qword_10000C178)
  {
    sub_1000017F0(&qword_10000C168, &unk_100003900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C178);
  }

  return result;
}

uint64_t sub_1000017F0(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001838()
{
  sub_1000017F0(&qword_10000C168, &unk_100003900);
  sub_10000178C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000018A0()
{
  result = qword_10000C190;
  if (!qword_10000C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C190);
  }

  return result;
}

unint64_t sub_1000018F8()
{
  result = qword_10000C198;
  if (!qword_10000C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C198);
  }

  return result;
}

uint64_t sub_10000194C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v1 = sub_100003544();
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  __chkstk_darwin();
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000016F0(&qword_10000C2C8, &qword_100003B98);
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v43 - v8;
  v10 = sub_1000016F0(&qword_10000C2D0, &qword_100003BA0);
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = v43 - v13;
  v15 = sub_1000016F0(&qword_10000C2D8, &qword_100003BA8);
  v16 = *(v15 - 8);
  v50 = v15;
  v51 = v16;
  v17 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v44 = v43 - v18;
  v19 = sub_1000016F0(&qword_10000C2E0, &qword_100003BB0);
  v20 = *(v19 - 8);
  v54 = v19;
  v55 = v20;
  v21 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v45 = v43 - v22;
  v43[1] = qword_10000C180;
  type metadata accessor for ToggleCellularDataStateProvider();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;

  v24 = sub_100003634();
  v25 = _CTServerConnectionCreateWithIdentifier();

  *(v23 + 16) = v25;
  v59 = v23;
  sub_1000016F0(&qword_10000C2E8, &qword_100003BB8);
  v26 = sub_1000017F0(&qword_10000C2F0, &qword_100003BC0);
  v27 = sub_1000017F0(&qword_10000C2F8, &qword_100003BC8);
  v28 = sub_100003240(&qword_10000C300, &qword_10000C2F8, &qword_100003BC8);
  v57 = v27;
  v58 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v26;
  v58 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1000031EC();
  sub_100003624();
  sub_100003534();
  v30 = sub_100003240(&qword_10000C310, &qword_10000C2C8, &qword_100003B98);
  v31 = v46;
  sub_1000035C4();
  v32 = v53;
  v33 = *(v52 + 8);
  v33(v4, v53);
  (*(v47 + 8))(v9, v31);
  sub_100003534();
  v57 = v31;
  v58 = v30;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = v44;
  v36 = v48;
  sub_1000035B4();
  v33(v4, v32);
  (*(v49 + 8))(v14, v36);
  v57 = v36;
  v58 = v34;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v45;
  v39 = v50;
  sub_1000035D4();
  (*(v51 + 8))(v35, v39);
  v40 = sub_100003634();
  MGGetBoolAnswer();

  v57 = v39;
  v58 = v37;
  swift_getOpaqueTypeConformance2();
  v41 = v54;
  sub_1000035E4();
  return (*(v55 + 8))(v38, v41);
}

uint64_t sub_100001FBC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = sub_1000016F0(&qword_10000C2F8, &qword_100003BC8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = v17 - v6;
  v17[0] = sub_1000016F0(&qword_10000C2F0, &qword_100003BC0);
  v8 = *(v17[0] - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v17 - v10;
  LODWORD(v10) = *a1;
  v12 = a1[1];
  v18 = sub_100002D90();
  v19 = v13;
  sub_1000016F0(&qword_10000C318, &unk_100003BD0);
  sub_100003240(&qword_10000C320, &qword_10000C318, &unk_100003BD0);
  sub_100003288();
  sub_100003614();
  sub_1000035F4();
  v14 = sub_100003240(&qword_10000C300, &qword_10000C2F8, &qword_100003BC8);
  sub_100003584();

  (*(v4 + 8))(v7, v3);
  v18 = v3;
  v19 = v14;
  swift_getOpaqueTypeConformance2();
  v15 = v17[0];
  sub_100003594();
  return (*(v8 + 8))(v11, v15);
}

uint64_t sub_100002270()
{
  v0 = sub_100003564();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000022E4()
{
  if (*(v0 + 16))
  {
    _CTServerConnectionGetCellularDataIsEnabled();
    if (*(v0 + 16))
    {
      _CTServerConnectionGetCellularDataSettings();
    }

    return 256;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000024A4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000022E4();
  *a1 = result & 1;
  a1[1] = result > 0xFFu;
  return result;
}

uint64_t sub_1000024E4(_BYTE *a1)
{
  v4 = *v1;
  v5 = sub_1000022E4();
  *a1 = v5 & 1;
  a1[1] = v5 > 0xFFu;
  v6 = *(v2 + 8);

  return v6();
}

uint64_t sub_100002564()
{
  v0 = sub_100003544();
  sub_10000315C(v0, qword_10000C750);
  sub_100003124(v0, qword_10000C750);
  return sub_100003534();
}

uint64_t sub_1000025D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000025F8, 0, 0);
}

uint64_t sub_1000025F8()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    sub_1000034F4();
    v2 = *(v0 + 40);
    _CTServerConnectionSetCellularDataIsEnabled();
    sub_1000016F0(&qword_10000C2C0, &unk_100003B30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100003910;
    sub_100003664(28);

    sub_1000034F4();
    if (*(v0 + 40))
    {
      v4._countAndFlagsBits = 1702195828;
    }

    else
    {
      v4._countAndFlagsBits = 0x65736C6166;
    }

    if (*(v0 + 40))
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    v4._object = v5;
    sub_100003644(v4);

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = 0xD00000000000001ALL;
    *(v3 + 40) = 0x8000000100004380;
    sub_100003674();
  }

  v6 = *(v0 + 16);
  sub_1000034D4();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100002770@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000034F4();
  *a1 = v5;
  return result;
}

uint64_t sub_1000027AC(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100003504();
}

void (*sub_1000027E4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_1000034E4();
  return sub_100002858;
}

void sub_100002858(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000028A8()
{
  result = qword_10000C1A0;
  if (!qword_10000C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A0);
  }

  return result;
}

unint64_t sub_100002900()
{
  result = qword_10000C1A8;
  if (!qword_10000C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1A8);
  }

  return result;
}

uint64_t sub_1000029C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C158 != -1)
  {
    swift_once();
  }

  v2 = sub_100003544();
  v3 = sub_100003124(v2, qword_10000C750);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100002A84(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100002B30;

  return sub_1000025D4(a1, v5, v4);
}

uint64_t sub_100002B30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002C24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002D90();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002C4C(uint64_t a1)
{
  v2 = sub_1000018A0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100002CAC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002CB8(uint64_t *a1, int a2)
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

uint64_t sub_100002D00(uint64_t result, int a2, int a3)
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

uint64_t sub_100002D90()
{
  v0 = sub_100003524();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*(*(sub_1000016F0(&qword_10000C2A0, &qword_100003B08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v22[-v6];
  v8 = (*(*(sub_1000016F0(&qword_10000C2A8, &qword_100003B10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v22[-v9];
  v11 = (*(*(sub_1000016F0(&qword_10000C2B0, &qword_100003B18) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v22[-v12];
  v14 = sub_100003544();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  sub_1000016F0(&qword_10000C2B8, &qword_100003B20);
  sub_100003534();
  (*(v15 + 56))(v13, 1, 1, v14);
  v22[15] = 2;
  v17 = sub_100003654();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = sub_1000034C4();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v0);
  v19 = sub_100003514();
  v20 = sub_100003634();
  _CTServerConnectionCreateWithIdentifier();

  return v19;
}

uint64_t sub_100003124(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000315C(uint64_t a1, uint64_t *a2)
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

unint64_t sub_1000031EC()
{
  result = qword_10000C308;
  if (!qword_10000C308)
  {
    type metadata accessor for ToggleCellularDataStateProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C308);
  }

  return result;
}

uint64_t sub_100003240(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000017F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003288()
{
  result = qword_10000C328;
  if (!qword_10000C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C328);
  }

  return result;
}

uint64_t sub_1000032DC()
{
  sub_1000017F0(&qword_10000C2E0, &qword_100003BB0);
  sub_1000017F0(&qword_10000C2D8, &qword_100003BA8);
  sub_1000017F0(&qword_10000C2D0, &qword_100003BA0);
  sub_1000017F0(&qword_10000C2C8, &qword_100003B98);
  sub_100003240(&qword_10000C310, &qword_10000C2C8, &qword_100003B98);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}